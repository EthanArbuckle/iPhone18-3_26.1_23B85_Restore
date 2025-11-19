uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps35(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 2;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 3)
          {
            break;
          }

          continue;
        }

        if (v29 > 2)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 3)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: CoordinateMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps36(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 2;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 2)
          {
            break;
          }

          continue;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: NormalizedCoordinateRange elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps37(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 2;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 2)
          {
            break;
          }

          continue;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: CoordinateType elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 1;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 2)
          {
            break;
          }

          continue;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: WarpCoordinateMode elements attribute of shape {1}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps39(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 2;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 2)
          {
            break;
          }

          continue;
        }

        if (v29 > 1)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 2)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: SamplingGridMethod elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 2;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 9)
          {
            break;
          }

          continue;
        }

        if (v29 > 8)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 9)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: PaddingMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps10(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v50[0] = a2;
    v50[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v50);
    if (mlir::Type::isF16(&isSplat) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 8))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v43 = a2;
      v44 = v11;
      if (mlir::CallOpInterface::getArgOperands(&v43))
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v48 = a2;
        v49 = v12;
        mlir::CallableOpInterface::getArgAttrsAttr(&v48);
        if (v13 == 4)
        {
          return 1;
        }

        v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v46[0] = a2;
        v46[1] = v14;
        mlir::CallableOpInterface::getArgAttrsAttr(v46);
        if (v15 == 5)
        {
          return 1;
        }
      }
    }
  }

  v45 = 261;
  v43 = a3;
  v44 = a4;
  mlir::Operation::emitOpError(a1, &v43, v50);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, " #");
  if (*v17)
  {
    v18 = *(v17 + 24);
    LODWORD(v48) = 5;
    v49 = a5;
    v19 = *(v17 + 32);
    v20 = &v48;
    if (v19 >= *(v17 + 36))
    {
      if (v18 <= &v48 && v18 + 24 * v19 > &v48)
      {
        v40 = &v48 - v18;
        v41 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v19 + 1, 24);
        v17 = v41;
        v18 = *(v41 + 24);
        v20 = &v40[v18];
      }

      else
      {
        v39 = v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, v17 + 40, v19 + 1, 24);
        v17 = v39;
        v18 = *(v39 + 24);
        v20 = &v48;
      }
    }

    v21 = v18 + 24 * *(v17 + 32);
    v22 = *v20;
    *(v21 + 16) = *(v20 + 2);
    *v21 = v22;
    ++*(v17 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v17, " must be 4D/5D memref of 16-bit float or 8-bit unsigned integer or 8-bit signed integer values, but got ");
  if (*v23)
  {
    v24 = &v48;
    v25 = v23;
    mlir::DiagnosticArgument::DiagnosticArgument(&v48, a2);
    v23 = v25;
    v26 = *(v25 + 24);
    v27 = *(v25 + 32);
    if (v27 >= *(v25 + 36))
    {
      if (v26 <= &v48 && v26 + 24 * v27 > &v48)
      {
        v42 = &v48 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, v25 + 40, v27 + 1, 24);
        v23 = v25;
        v26 = *(v25 + 24);
        v24 = &v42[v26];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, v25 + 40, v27 + 1, 24);
        v23 = v25;
        v26 = *(v25 + 24);
        v24 = &v48;
      }
    }

    v28 = v26 + 24 * *(v23 + 32);
    v29 = *v24;
    *(v28 + 16) = *(v24 + 2);
    *v28 = v29;
    ++*(v23 + 32);
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v56;
      v32 = __p;
      if (v56 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v56 = v30;
      operator delete(v32);
    }

    v33 = v53;
    if (v53)
    {
      v34 = v54;
      v35 = v53;
      if (v54 != v53)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            operator delete[](v36);
          }
        }

        while (v34 != v33);
        v35 = v53;
      }

      v54 = v33;
      operator delete(v35);
    }

    if (v51 != &v52)
    {
      free(v51);
    }
  }

  return v16;
}

uint64_t mlir::anec::Reshape::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v6, 1);
  v2 = v6;
  v3 = *a1;
  v4 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v4 + 1), "anec.reshape", 12, v2, v3, 0, 0);
  *v4 = &unk_1F5B34230;
  v4[12] = mlir::anec::Reshape::canonicalize;
  v7 = v4;
  mlir::RewritePatternSet::add(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::anec::Resize::getScaleFactorXAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::Resize::getScaleFactorYAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 48), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resize>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::Resize::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::Resize::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v40 = a3;
  mlir::OperationState::addOperands(a2, &v40, 1uLL);
  v16 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v16, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  v19 = *(*(*(a2 + 8) + 96) + 40);
  v20 = mlir::Builder::getIntegerType(a1, 64, 0);
  v21 = mlir::Builder::getIntegerAttr(a1, v20, a5);
  mlir::NamedAttribute::NamedAttribute(&__src, v19, v21);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  v22 = *(*(*(a2 + 8) + 96) + 24);
  F32Type = mlir::Builder::getF32Type(a1, v23);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  mlir::NamedAttribute::NamedAttribute(&__src, v22, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  v26 = *(*(*(a2 + 8) + 96) + 32);
  v28 = mlir::Builder::getF32Type(a1, v27);
  v29 = mlir::Builder::getFloatAttr(a1, v28, a7);
  mlir::NamedAttribute::NamedAttribute(&__src, v26, v29);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a8);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 16), a9);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v44);
  __src = v45;
  v44 = 0x200000000;
  v30 = *a1;
  v31 = *a2;
  mlir::ValueRange::ValueRange(v42, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v34 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v41, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Resize>::inferReturnTypes(v30, v31, 1, v42[0], v42[1], Dictionary, v34, v35, v41[0], v41[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v36 = __src;
  v37 = v44;
  v38 = *(a2 + 72);
  v39 = v38 + v44;
  if (v39 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v39, 8);
    LODWORD(v38) = *(a2 + 72);
  }

  if (v37)
  {
    memcpy((*(a2 + 64) + 8 * v38), v36, 8 * v37);
    LODWORD(v38) = *(a2 + 72);
  }

  *(a2 + 72) = v38 + v37;
  if (__src != v45)
  {
    free(__src);
  }
}

uint64_t mlir::anec::Resize::populateDefaultAttrs(mlir::anec::Resize *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[3]))
  {
    v6 = v4[3];
    F32Type = mlir::Builder::getF32Type(&Context, v5);
    FloatAttr = mlir::Builder::getFloatAttr(-1.0, &Context, F32Type);
    mlir::NamedAttribute::NamedAttribute(&v15, v6, FloatAttr);
    mlir::NamedAttrList::push_back(a2, v15, v16);
  }

  result = mlir::NamedAttrList::get(a2, v4[4]);
  if (!result)
  {
    v11 = v4[4];
    v12 = mlir::Builder::getF32Type(&Context, v10);
    v13 = mlir::Builder::getFloatAttr(-1.0, &Context, v12);
    mlir::NamedAttribute::NamedAttribute(&v15, v11, v13);
    return mlir::NamedAttrList::push_back(a2, v15, v16);
  }

  return result;
}

BOOL mlir::anec::Resize::verifyInvariantsImpl(mlir::Operation **this)
{
  v56 = *MEMORY[0x1E69E9840];
  v47[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v47);
  if (v3)
  {
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

    if (v5)
    {
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

      v22 = 0;
      v23 = *(v4 + 1);
      while (1)
      {
        v24 = (v4 + v22);
        if (mlir::CallGraphNode::getCallableRegion((v4 + v22)) == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        v22 += 16;
        if (v5 == v22)
        {
          v45[0] = "requires attribute 'sampling_modes'";
          v46 = 259;
          mlir::OpState::emitOpError(this, v45, v47);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
          if (v47[0])
          {
            mlir::InFlightDiagnostic::report(v47);
          }

          if (v55 != 1)
          {
            return v6;
          }

          if (v54 != &v55)
          {
            free(v54);
          }

          v25 = __p;
          if (__p)
          {
            v26 = v53;
            v27 = __p;
            if (v53 != __p)
            {
              do
              {
                v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
              }

              while (v26 != v25);
              v27 = __p;
            }

            v53 = v25;
            operator delete(v27);
          }

          v10 = v50;
          if (!v50)
          {
            goto LABEL_86;
          }

          v28 = v51;
          v12 = v50;
          if (v51 == v50)
          {
            goto LABEL_85;
          }

          do
          {
            v30 = *--v28;
            v29 = v30;
            *v28 = 0;
            if (v30)
            {
              operator delete[](v29);
            }
          }

          while (v28 != v10);
          goto LABEL_84;
        }
      }

      v31 = v5 - v22;
      if (v5 != v22)
      {
        v32 = 0;
        v33 = 0;
        v34 = *(v24 + 1);
        while (mlir::CallGraphNode::getCallableRegion(v24) != *(*(*(*this + 6) + 96) + 40))
        {
          if (mlir::CallGraphNode::getCallableRegion(v24) == *(*(*(*this + 6) + 96) + 24))
          {
            v32 = *(v24 + 1);
          }

          else if (mlir::CallGraphNode::getCallableRegion(v24) == *(*(*(*this + 6) + 96) + 32))
          {
            v33 = *(v24 + 1);
          }

          v24 = (v24 + 16);
          v31 -= 16;
          if (!v31)
          {
            goto LABEL_68;
          }
        }

        v42 = *(v24 + 1);
        if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v15, "height", 6) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v42, "width", 5) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v32, "scale_factor_x", 0xE) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v33, "scale_factor_y", 0xE) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps39(*this, v23, "sampling_methods", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps41(*this, v34, "sampling_modes", 14) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
        {
          return 0;
        }

        if (*(*this + 9))
        {
          v43 = *this - 16;
        }

        else
        {
          v43 = 0;
        }

        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v43, 0);
        return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
      }

LABEL_68:
      v45[0] = "requires attribute 'width'";
      v46 = 259;
      mlir::OpState::emitOpError(this, v45, v47);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v55 != 1)
      {
        return v6;
      }

      if (v54 != &v55)
      {
        free(v54);
      }

      v35 = __p;
      if (__p)
      {
        v36 = v53;
        v37 = __p;
        if (v53 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v53 = v35;
        operator delete(v37);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v38 = v51;
      v12 = v50;
      if (v51 == v50)
      {
        goto LABEL_85;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          operator delete[](v39);
        }
      }

      while (v38 != v10);
      goto LABEL_84;
    }

LABEL_25:
    v45[0] = "requires attribute 'sampling_methods'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v53;
        v18 = __p;
        if (v53 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v53 = v16;
        operator delete(v18);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v19 = v51;
      v12 = v50;
      if (v51 == v50)
      {
        goto LABEL_85;
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
      goto LABEL_84;
    }
  }

  else
  {
LABEL_5:
    v45[0] = "requires attribute 'height'";
    v46 = 259;
    mlir::OpState::emitOpError(this, v45, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v53;
        v9 = __p;
        if (v53 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v53 = v7;
        operator delete(v9);
      }

      v10 = v50;
      if (!v50)
      {
        goto LABEL_86;
      }

      v11 = v51;
      v12 = v50;
      if (v51 == v50)
      {
LABEL_85:
        v51 = v10;
        operator delete(v12);
LABEL_86:
        if (v48 != &v49)
        {
          free(v48);
        }

        return v6;
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
LABEL_84:
      v12 = v50;
      goto LABEL_85;
    }
  }

  return v6;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps41(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v32[0] = a2;
  v32[1] = v8;
  Type = mlir::ElementsAttr::getType(v32);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v33[0] = v10;
  v33[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v33);
  v49 = 2;
  if (v12 == 1 && *ArgAttrsAttr == v49)
  {
    v31 = a2;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, a2, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v31);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v34, a2, NumElements);
    v40 = v37;
    *v41 = v38;
    v26 = v34[2];
    for (i = v38; ; i = ++v41[0])
    {
      if (i == v26)
      {
        return 1;
      }

      mlir::DenseElementsAttr::IntElementIterator::operator*(&v40, &v35);
      v28 = v36;
      v36 = 0;
      if (v28 > 0x40)
      {
        v29 = *v35;
        if (!v35)
        {
          goto LABEL_27;
        }

        operator delete[](v35);
        if (v36 >= 0x41 && v35)
        {
          operator delete[](v35);
LABEL_27:
          if (v29 >= 6)
          {
            break;
          }

          continue;
        }

        if (v29 > 5)
        {
          break;
        }
      }

      else if (v28 && ((v35 << -v28) >> -v28) >= 6)
      {
        break;
      }
    }
  }

  v39 = 257;
  mlir::Operation::emitOpError(a1, &v37, &v40);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v40, "attribute '");
  if (*v13)
  {
    v39 = 261;
    *&v37 = a3;
    *(&v37 + 1) = a4;
    v14 = v13;
    mlir::Diagnostic::operator<<((v13 + 1), &v37);
    v13 = v14;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, "' failed to satisfy constraint: SamplingGridMode elements attribute of shape {2}");
  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v40)
  {
    mlir::InFlightDiagnostic::report(&v40);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v46;
      v19 = __p;
      if (v46 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v46 = v17;
      operator delete(v19);
    }

    v20 = v43;
    if (v43)
    {
      v21 = v44;
      v22 = v43;
      if (v44 != v43)
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
        v22 = v43;
      }

      v44 = v20;
      operator delete(v22);
    }

    if (v41[1] != &v42)
    {
      free(v41[1]);
    }
  }

  return v16;
}

void mlir::anec::RingBufferReader::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::NamedAttribute::NamedAttribute(&v17, *(*(*(a2 + 8) + 96) + 8), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  mlir::NamedAttribute::NamedAttribute(&v17, **(*(a2 + 8) + 96), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  mlir::NamedAttribute::NamedAttribute(&v17, *(*(*(a2 + 8) + 96) + 16), a7);
  mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  v15 = *(a2 + 72);
  if (v15 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15 + 1, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v15) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferReader>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = v37;
  v36 = 0x600000000;
  v33 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v33, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v36;
      if (v36 >= HIDWORD(v36))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v36;
      }

      *(v35 + v19) = RankPromotionTypeForANE;
      v20 = (v36 + 1);
      LODWORD(v36) = v36 + 1;
      v15 = v34 + 1;
      v34 = v15;
      if (v15 == a5)
      {
        v24 = v35;
        goto LABEL_13;
      }
    }

    v22.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v22, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v24 = v37;
LABEL_13:
    v25 = mlir::ValueRange::ValueRange(&v33, v24, v20);
    result = mlir::anec::RingBufferReader::inferPromotedReturnTypes(v25, v26, v27, v28, v29, a6, v30, v31, v33, v34, a11);
  }

  if (v35 != v37)
  {
    v32 = result;
    free(v35);
    return v32;
  }

  return result;
}

BOOL mlir::anec::RingBufferReader::verifyInvariantsImpl(mlir::Operation **this)
{
  v60 = *MEMORY[0x1E69E9840];
  v51[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v51);
  if (!v3)
  {
LABEL_5:
    v49[0] = "requires attribute 'is_dynamic_offsets'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v57;
      v9 = __p;
      if (v57 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v57 = v7;
      operator delete(v9);
    }

    v10 = v54;
    if (v54)
    {
      v11 = v55;
      v12 = v54;
      if (v55 == v54)
      {
        goto LABEL_62;
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
LABEL_61:
      v12 = v54;
LABEL_62:
      v55 = v10;
      operator delete(v12);
    }

LABEL_63:
    if (v52 != &v53)
    {
      free(v52);
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
    v49[0] = "requires attribute 'offsets'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v57;
      v20 = __p;
      if (v57 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v57 = v18;
      operator delete(v20);
    }

    v10 = v54;
    if (v54)
    {
      v21 = v55;
      v12 = v54;
      if (v55 == v54)
      {
        goto LABEL_62;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          operator delete[](v22);
        }
      }

      while (v21 != v10);
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v15 = 0;
  v16 = *(v4 + 1);
  while (1)
  {
    v17 = (v4 + v15);
    if (mlir::CallGraphNode::getCallableRegion((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    v15 += 16;
    if (v5 == v15)
    {
      goto LABEL_25;
    }
  }

  v24 = v5 - v15;
  if (!v24)
  {
LABEL_45:
    v49[0] = "requires attribute 'slice_size'";
    v50 = 259;
    mlir::OpState::emitOpError(this, v49, v51);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return v6;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v57;
      v28 = __p;
      if (v57 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v57 = v26;
      operator delete(v28);
    }

    v10 = v54;
    if (v54)
    {
      v29 = v55;
      v12 = v54;
      if (v55 == v54)
      {
        goto LABEL_62;
      }

      do
      {
        v31 = *--v29;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          operator delete[](v30);
        }
      }

      while (v29 != v10);
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  v25 = *(v17 + 1);
  while (mlir::CallGraphNode::getCallableRegion(v17) != *(*(*(*this + 6) + 96) + 16))
  {
    v17 = (v17 + 16);
    v24 -= 16;
    if (!v24)
    {
      goto LABEL_45;
    }
  }

  v33 = *(v17 + 1);
  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v25, "offsets", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v16, "is_dynamic_offsets", 0x12) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, v33, "slice_size", 10) & 1) == 0)
  {
    return 0;
  }

  ODSOperands = mlir::anec::RingBufferReader::getODSOperands(this, 0, v34, v35);
  if (v37)
  {
    v40 = v37;
    v41 = 0;
    v42 = ODSOperands + 24;
    while ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*v42 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41) & 1) != 0)
    {
      ++v41;
      v42 += 32;
      if (v40 == v41)
      {
        goto LABEL_76;
      }
    }

    return 0;
  }

  LODWORD(v41) = 0;
LABEL_76:
  v43 = mlir::anec::RingBufferReader::getODSOperands(this, 1u, v38, v39);
  if (v44)
  {
    v45 = v44;
    v46 = v43 + 24;
    while ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(*this, (*(*v46 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v41) & 1) != 0)
    {
      LODWORD(v41) = v41 + 1;
      v46 += 32;
      if (!--v45)
      {
        goto LABEL_80;
      }
    }

    return 0;
  }

LABEL_80:
  if (*(*this + 9))
  {
    v47 = *this - 16;
  }

  else
  {
    v47 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v47, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v38);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v34);
  if (v15 == 1)
  {
LABEL_36:
    v30 = a2;
    v31[0] = mlir::ArrayAttr::getValue(&v30);
    v31[1] = v16;
    isSplat = mlir::ElementsAttr::isSplat(v31);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_11:
  v37 = 257;
  mlir::Operation::emitOpError(a1, &v35, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, "' failed to satisfy constraint: ui64 elements attribute of rank 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

  return v17;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(uint64_t a1, void *a2, void *a3, const char *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v40 = a2;
  v41 = v8;
  Type = mlir::ElementsAttr::getType(&v40);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v44[0] = v10;
  v44[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v44);
  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v38[0] = a2;
  v38[1] = v12;
  v13 = mlir::ElementsAttr::getType(v38);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v39[0] = v14;
  v39[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v39);
  if (v15 == 1)
  {
LABEL_42:
    v35 = a2;
    v36[0] = mlir::ArrayAttr::getValue(&v35);
    v36[1] = v16;
    isSplat = mlir::ElementsAttr::isSplat(v36);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      return 1;
    }
  }

LABEL_11:
  v43 = 257;
  mlir::Operation::emitOpError(a1, &v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "attribute '");
  if (*v18)
  {
    v43 = 261;
    v40 = a3;
    v41 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<(v18 + 8, &v40);
    v18 = v19;
    if (*v19)
    {
      v20 = *(v19 + 24);
      LODWORD(v40) = 3;
      v41 = "' failed to satisfy constraint: ui8 elements attribute of rank 0/1";
      v42 = 66;
      v21 = *(v19 + 32);
      v22 = &v40;
      if (v21 >= *(v19 + 36))
      {
        if (v20 <= &v40 && v20 + 24 * v21 > &v40)
        {
          v34 = &v40 - v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
          v18 = v19;
          v20 = *(v19 + 24);
          v22 = &v34[v20];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
          v18 = v19;
          v20 = *(v19 + 24);
          v22 = &v40;
        }
      }

      v23 = v20 + 24 * *(v18 + 32);
      v24 = *v22;
      *(v23 + 16) = *(v22 + 2);
      *v23 = v24;
      ++*(v18 + 32);
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v50;
      v27 = __p;
      if (v50 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v50 = v25;
      operator delete(v27);
    }

    v28 = v47;
    if (v47)
    {
      v29 = v48;
      v30 = v47;
      if (v48 != v47)
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
        v30 = v47;
      }

      v48 = v28;
      operator delete(v30);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v17;
}

uint64_t mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v59[0] = a2;
    v59[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v59);
    if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
    {
      v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v51 = a2;
      v52 = v38;
      if (mlir::CallOpInterface::getArgOperands(&v51))
      {
        v39 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v56 = a2;
        v57 = v39;
        mlir::CallableOpInterface::getArgAttrsAttr(&v56);
        if (v40 == 4)
        {
          return 1;
        }

        v41 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v54[0] = a2;
        v54[1] = v41;
        mlir::CallableOpInterface::getArgAttrsAttr(v54);
        if (v42 == 5)
        {
          return 1;
        }
      }
    }
  }

  v53 = 261;
  v51 = a3;
  v52 = a4;
  mlir::Operation::emitOpError(a1, &v51, v59);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, " #");
  if (*v11)
  {
    v13 = v11 + 24;
    v12 = *(v11 + 24);
    LODWORD(v56) = 5;
    v57 = a5;
    v14 = *(v11 + 32);
    v15 = &v56;
    if (v14 >= *(v11 + 36))
    {
      if (v12 <= &v56 && v12 + 24 * v14 > &v56)
      {
        v46 = &v56 - v12;
        v47 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v14 + 1, 24);
        v11 = v47;
        v12 = *(v47 + 24);
        v15 = &v46[v12];
      }

      else
      {
        v44 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v14 + 1, 24);
        v11 = v44;
        v12 = *(v44 + 24);
        v15 = &v56;
      }
    }

    v16 = v12 + 24 * *(v11 + 32);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 2);
    *v16 = v17;
    v18 = (*(v11 + 32) + 1);
    *(v11 + 32) = v18;
    if (*v11)
    {
      LODWORD(v56) = 3;
      v57 = " must be variadic of 4D/5D memref of 32-bit signed integer or 64-bit signed integer values, but got ";
      v58 = 100;
      v19 = *(v11 + 24);
      v20 = &v56;
      if (v18 >= *(v11 + 36))
      {
        if (v19 <= &v56 && v19 + 24 * v18 > &v56)
        {
          v48 = &v56 - v19;
          v49 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 40, v18 + 1, 24);
          v11 = v49;
          v19 = *(v49 + 24);
          v20 = &v48[v19];
        }

        else
        {
          v45 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 40, v18 + 1, 24);
          v11 = v45;
          v19 = *(v45 + 24);
          v20 = &v56;
        }
      }

      v21 = v19 + 24 * *(v11 + 32);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 2);
      *v21 = v22;
      ++*(v11 + 32);
      if (*v11)
      {
        v23 = &v56;
        v24 = v11;
        mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
        v11 = v24;
        v25 = *(v24 + 32);
        v26 = *(v24 + 24);
        if (v25 >= *(v24 + 36))
        {
          if (v26 <= &v56 && v26 + 24 * v25 > &v56)
          {
            v50 = &v56 - v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v24 + 40, v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v50[v26];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v24 + 40, v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v56;
          }
        }

        v27 = v26 + 24 * *(v11 + 32);
        v28 = *v23;
        *(v27 + 16) = *(v23 + 2);
        *v27 = v28;
        ++*(v11 + 32);
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v65;
      v32 = __p;
      if (v65 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v65 = v30;
      operator delete(v32);
    }

    v33 = v62;
    if (v62)
    {
      v34 = v63;
      v35 = v62;
      if (v63 != v62)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            operator delete[](v36);
          }
        }

        while (v34 != v33);
        v35 = v62;
      }

      v63 = v33;
      operator delete(v35);
    }

    if (v60 != &v61)
    {
      free(v60);
    }
  }

  return v29;
}

void mlir::anec::RingBufferReader::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v7 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v7;
  }

  v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
  }

  else
  {
    v3 = *a2 + 40 * v2;
    v4 = v10;
    v5 = v9;
    *v3 = v11;
    *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v4;
    *(v3 + 36) = v5;
    ++*(a2 + 8);
  }
}

uint64_t mlir::anec::RingBufferWriter::getOffsets(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
}

uint64_t mlir::anec::RingBufferWriter::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = a4;
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::NamedAttribute::NamedAttribute(&v16, *(*(*(a2 + 8) + 96) + 8), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
  mlir::NamedAttribute::NamedAttribute(&v16, **(*(a2 + 8) + 96), a6);
  return mlir::NamedAttrList::push_back(a2 + 112, v16, v17);
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::RingBufferWriter>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, unint64_t a4, uint64_t a5)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = v23;
  v22 = 0x600000000;
  v19 = a4;
  if (a5)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(mlir::ValueRange::dereference_iterator(&v19, v8) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8))
      {
        break;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      if (!v9)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v9, v10);
      v12 = v22;
      if (v22 >= HIDWORD(v22))
      {
        v14 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 8);
        RankPromotionTypeForANE = v14;
        v12 = v22;
      }

      *(v21 + v12) = RankPromotionTypeForANE;
      v13 = (v22 + 1);
      LODWORD(v22) = v22 + 1;
      v8 = v20 + 1;
      v20 = v8;
      if (v8 == a5)
      {
        v17 = v21;
        goto LABEL_13;
      }
    }

    v15.var0.var0 = a3;
    v16 = mlir::emitOptionalError<char const(&)[39]>(a2, v15, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v13 = 0;
    v17 = v23;
LABEL_13:
    mlir::ValueRange::ValueRange(&v19, v17, v13);
    v16 = 1;
  }

  if (v21 != v23)
  {
    free(v21);
  }

  return v16;
}

BOOL mlir::anec::RingBufferWriter::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x1E69E9840];
  v32[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v32);
  if (!v3)
  {
LABEL_5:
    v30[0] = "requires attribute 'is_dynamic_offsets'";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, v32);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 != 1)
    {
      return v6;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v38;
      v9 = __p;
      if (v38 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v38 = v7;
      operator delete(v9);
    }

    v10 = v35;
    if (v35)
    {
      v11 = v36;
      v12 = v35;
      if (v36 == v35)
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
      v12 = v35;
LABEL_42:
      v36 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v33 != &v34)
    {
      free(v33);
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
    v30[0] = "requires attribute 'offsets'";
    v31 = 259;
    mlir::OpState::emitOpError(this, v30, v32);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 != 1)
    {
      return v6;
    }

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

    v10 = v35;
    if (v35)
    {
      v19 = v36;
      v12 = v35;
      if (v36 == v35)
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

  if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps42(*this, *(v4 + 1), "offsets", 7) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v15, "is_dynamic_offsets", 0x12) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    ODSOperands = mlir::anec::RingBufferWriter::getODSOperands(this, 2u, v22, v23);
    if (!v26)
    {
      return 1;
    }

    v27 = v26;
    v28 = ODSOperands + 24;
    v29 = 2;
    while ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps11(*this, (*(*v28 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v29) & 1) != 0)
    {
      ++v29;
      v28 += 32;
      v6 = 1;
      if (!--v27)
      {
        return v6;
      }
    }
  }

  return 0;
}

void mlir::anec::RingBufferWriter::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::anec::RingBufferWriter::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v7 = a2;
    mlir::anec::RingBufferReader::getEffects();
    a2 = v7;
  }

  v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
  }

  else
  {
    v3 = *a2 + 40 * v2;
    v4 = v10;
    v5 = v9;
    *v3 = v11;
    *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = v4;
    *(v3 + 36) = v5;
    ++*(a2 + 8);
  }
}

void mlir::anec::Rsqrt::build(mlir::Float16Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v7 = **(*(a2 + 8) + 96);
  F16Type = mlir::Builder::getF16Type(a1, v8);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F16Type, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v7, FloatAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v25);
  __src = v26;
  v25 = 0x200000000;
  v11 = *a1;
  v12 = *a2;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v15 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Ceil>::inferReturnTypes(v11, v12, 1, v23[0], v23[1], Dictionary, v15, v16, v22[0], v22[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = __src;
  v18 = v25;
  v19 = *(a2 + 72);
  v20 = v19 + v25;
  if (v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20, 8);
    LODWORD(v19) = *(a2 + 72);
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v19), v17, 8 * v18);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v26)
  {
    free(__src);
  }
}

void mlir::anec::ScaledDotProductAttention::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v22 = a4;
  v23 = a3;
  v20 = a6;
  v21 = a5;
  v19 = a7;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  __src = v28;
  v27 = 0x200000000;
  v9 = *a1;
  v10 = *a2;
  mlir::ValueRange::ValueRange(v25, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledDotProductAttention>::inferReturnTypes(v9, v10, 1, v25[0], v25[1], Dictionary, v13, v14, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = __src;
  v16 = v27;
  v17 = *(a2 + 72);
  v18 = v17 + v27;
  if (v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  if (v16)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v16);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v28)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledDotProductAttention>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[6] = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = v37;
  v36 = 0x600000000;
  v33 = a4;
  if (a5)
  {
    v14 = 0;
    while (1)
    {
      v15 = (*(mlir::ValueRange::dereference_iterator(&v33, v14) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8))
      {
        break;
      }

      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
      if (!v15)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v15, v16);
      v18 = v36;
      if (v36 >= HIDWORD(v36))
      {
        v20 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
        RankPromotionTypeForANE = v20;
        v18 = v36;
      }

      *(v35 + v18) = RankPromotionTypeForANE;
      v19 = (v36 + 1);
      LODWORD(v36) = v36 + 1;
      v14 = v34 + 1;
      v34 = v14;
      if (v14 == a5)
      {
        v23 = v35;
        goto LABEL_13;
      }
    }

    v21.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v21, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v19 = 0;
    v23 = v37;
LABEL_13:
    v24 = mlir::ValueRange::ValueRange(&v33, v23, v19);
    result = mlir::anec::ScaledDotProductAttention::inferPromotedReturnTypes(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, a11);
  }

  if (v35 != v37)
  {
    v32 = result;
    free(v35);
    return v32;
  }

  return result;
}

uint64_t mlir::anec::ScaledDotProductAttention::verifyInvariantsImpl(mlir::anec::ScaledDotProductAttention *this)
{
  if ((mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0)
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
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::ScaledElementWise::getPreScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::getScaleAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::getBiasAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

void *mlir::anec::ScaledElementWise::getNegateSrc1Attr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (result)
  {
    v6 = result;
    if (mlir::BoolAttr::classof(result))
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

void *mlir::anec::ScaledElementWise::getNegateSrc2Attr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if (result)
  {
    v6 = result;
    if (mlir::BoolAttr::classof(result))
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

void mlir::anec::ScaledElementWise::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = a5;
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&v19, *(*(*(a2 + 8) + 96) + 8), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  if (a7)
  {
    mlir::NamedAttribute::NamedAttribute(&v19, *(*(*(a2 + 8) + 96) + 32), a7);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a8)
  {
    mlir::NamedAttribute::NamedAttribute(&v19, *(*(*(a2 + 8) + 96) + 40), a8);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a9)
  {
    mlir::NamedAttribute::NamedAttribute(&v19, **(*(a2 + 8) + 96), a9);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a10)
  {
    mlir::NamedAttribute::NamedAttribute(&v19, *(*(*(a2 + 8) + 96) + 16), a10);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  if (a11)
  {
    mlir::NamedAttribute::NamedAttribute(&v19, *(*(*(a2 + 8) + 96) + 24), a11);
    mlir::NamedAttrList::push_back(a2 + 112, v19, v20);
  }

  v16 = *(a2 + 72);
  if (v16 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16 + 1, 8);
    LODWORD(v16) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v16) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::ScaledElementWise>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38[6] = *MEMORY[0x1E69E9840];
  v35 = 0;
  v36 = v38;
  v37 = 0x600000000;
  v34 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v34, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v37;
      if (v37 >= HIDWORD(v37))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v37 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v37;
      }

      *(v36 + v19) = RankPromotionTypeForANE;
      v20 = (v37 + 1);
      LODWORD(v37) = v37 + 1;
      v15 = v35 + 1;
      v35 = v15;
      if (v15 == a5)
      {
        v24 = v36;
        goto LABEL_13;
      }
    }

    v22.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v22, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v24 = v38;
LABEL_13:
    v25 = mlir::ValueRange::ValueRange(&v34, v24, v20);
    result = mlir::anec::ScaledElementWise::inferPromotedReturnTypes(v25, v26, v27, a4, a5, v28, v29, v30, v32, v33, a11);
  }

  if (v36 != v38)
  {
    v31 = result;
    free(v36);
    return v31;
  }

  return result;
}

uint64_t mlir::anec::ScaledElementWise::populateDefaultAttrs(mlir::anec::ScaledElementWise *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[4]))
  {
    v6 = v4[4];
    F32Type = mlir::Builder::getF32Type(&Context, v5);
    FloatAttr = mlir::Builder::getFloatAttr(1.0, &Context, F32Type);
    mlir::NamedAttribute::NamedAttribute(&v23, v6, FloatAttr);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  if (!mlir::NamedAttrList::get(a2, v4[5]))
  {
    v10 = v4[5];
    v11 = mlir::Builder::getF32Type(&Context, v9);
    v12 = mlir::Builder::getFloatAttr(1.0, &Context, v11);
    mlir::NamedAttribute::NamedAttribute(&v23, v10, v12);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  if (!mlir::NamedAttrList::get(a2, *v4))
  {
    v14 = *v4;
    v15 = mlir::Builder::getF32Type(&Context, v13);
    v16 = mlir::Builder::getFloatAttr(0.0, &Context, v15);
    mlir::NamedAttribute::NamedAttribute(&v23, v14, v16);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  if (!mlir::NamedAttrList::get(a2, v4[2]))
  {
    v17 = v4[2];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v23, v17, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  result = mlir::NamedAttrList::get(a2, v4[3]);
  if (!result)
  {
    v20 = v4[3];
    v21 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v23, v20, v21);
    return mlir::NamedAttrList::push_back(a2, v23, v24);
  }

  return result;
}

BOOL mlir::anec::ScaledElementWise::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x1E69E9840];
  v32[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v32);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v8 = *this;
      if (CallableRegion == *(*(*(*this + 6) + 96) + 8))
      {
        break;
      }

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

    v18 = *(v4 + 1);
    if (v6)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = mlir::CallGraphNode::getCallableRegion(v4);
        v8 = *this;
        if (v23 == *(*(*(*this + 6) + 96) + 16))
        {
          v19 = *(v4 + 1);
        }

        else
        {
          v24 = mlir::CallGraphNode::getCallableRegion(v4);
          v8 = *this;
          if (v24 == *(*(*(*this + 6) + 96) + 24))
          {
            v20 = *(v4 + 1);
          }

          else
          {
            v25 = mlir::CallGraphNode::getCallableRegion(v4);
            v8 = *this;
            if (v25 == *(*(*(*this + 6) + 96) + 32))
            {
              v21 = *(v4 + 1);
            }

            else
            {
              v26 = mlir::CallGraphNode::getCallableRegion(v4);
              v8 = *this;
              if (v26 == *(*(*(*this + 6) + 96) + 40))
              {
                v22 = *(v4 + 1);
              }
            }
          }
        }

        v4 = (v4 + 16);
        v6 -= 16;
      }

      while (v6);
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v20 = 0;
      v19 = 0;
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps1(v8, v18, "mode", 4) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v21, "pre_scale", 9) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v22, "scale", 5) & 1) != 0 && (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps11(*this, v5, "bias", 4) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v19, "negate_src1", 0xB) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v20, "negate_src2", 0xB) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v27 = *this - 16;
      }

      else
      {
        v27 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_7:
    v30 = "requires attribute 'mode'";
    v31 = 259;
    mlir::OpState::emitOpError(this, &v30, v32);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v32);
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

      v10 = __p;
      if (__p)
      {
        v11 = v38;
        v12 = __p;
        if (v38 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v38 = v10;
        operator delete(v12);
      }

      v13 = v35;
      if (v35)
      {
        v14 = v36;
        v15 = v35;
        if (v36 != v35)
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
          v15 = v35;
        }

        v36 = v13;
        operator delete(v15);
      }

      if (v33 != &v34)
      {
        free(v33);
      }
    }
  }

  return v9;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Softmax>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = v31;
  v30 = 0x600000000;
  v32 = a4;
  v33 = 0;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v32, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v30;
      }

      *(v29 + v19) = RankPromotionTypeForANE;
      v20 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      v15 = v33 + 1;
      v33 = v15;
      if (v15 == a5)
      {
        v24 = v29;
        goto LABEL_13;
      }
    }

    v22.var0.var0 = a3;
    v23 = mlir::emitOptionalError<char const(&)[39]>(a2, v22, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v24 = v31;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v24, v20);
    v32 = a4;
    v33 = a5;
    v25 = (*(mlir::ValueRange::dereference_iterator(&v32, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8))
    {
      mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
      LODWORD(v26) = *(a11 + 8);
    }

    *(*a11 + 8 * v26) = v25;
    ++*(a11 + 8);
    v23 = 1;
  }

  if (v29 != v31)
  {
    free(v29);
  }

  return v23;
}

void mlir::anec::Softmax::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v22 = a3;
  mlir::OperationState::addOperands(a2, &v22, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  if (a5)
  {
    v10 = *(*(*(a2 + 8) + 96) + 8);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v9);
    mlir::NamedAttribute::NamedAttribute(&__src, v10, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v26);
  }

  __src = v27;
  v26 = 0x200000000;
  v12 = *a1;
  v13 = *a2;
  mlir::ValueRange::ValueRange(v24, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v23, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Softmax>::inferReturnTypes(v12, v13, 1, v24[0], v24[1], Dictionary, v16, v17, v23[0], v23[1], &__src))
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

BOOL mlir::anec::Softmax::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x1E69E9840];
  v25[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v25);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    for (i = 0; v5; v5 -= 16)
    {
      v21 = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (v21 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps34(v7, v17, "axes", 4) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, i, "subtractMax", 0xB) & 1) != 0 && (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v19 = *this - 16;
      }

      else
      {
        v19 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v19, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v23 = "requires attribute 'axes'";
    v24 = 259;
    mlir::OpState::emitOpError(this, &v23, v25);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
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
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  return v8;
}

void mlir::anec::SpaceToBatch::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  __src = v22;
  v21 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToBatch>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v21;
  v15 = *(a2 + 72);
  v16 = v15 + v21;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToBatch>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::SpaceToBatch::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::SpaceToChannel::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  __src = v22;
  v21 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToChannel>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v21;
  v15 = *(a2 + 72);
  v16 = v15 + v21;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::SpaceToChannel>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::SpaceToChannel::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

void mlir::anec::TensorBufferToTensor::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&v12, *(*(*(a2 + 8) + 96) + 8), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v13);
  mlir::NamedAttribute::NamedAttribute(&v12, **(*(a2 + 8) + 96), a6);
  mlir::NamedAttrList::push_back(a2 + 112, v12, v13);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::TensorBufferToTensor>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[6] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = v33;
  v32 = 0x600000000;
  v29 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v29, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v32;
      if (v32 >= HIDWORD(v32))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v32;
      }

      *(v31 + v19) = RankPromotionTypeForANE;
      v20 = (v32 + 1);
      LODWORD(v32) = v32 + 1;
      v15 = v30 + 1;
      v30 = v15;
      if (v15 == a5)
      {
        v24 = v31;
        goto LABEL_13;
      }
    }

    v22.var0.var0 = a3;
    v23 = mlir::emitOptionalError<char const(&)[39]>(a2, v22, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v24 = v33;
LABEL_13:
    mlir::ValueRange::ValueRange(&v29, v24, v20);
    PromotedReturnTypeForTensorBuffer = mlir::anec::getPromotedReturnTypeForTensorBuffer(v29, v30, a6, 1);
    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
      v28 = PromotedReturnTypeForTensorBuffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
      PromotedReturnTypeForTensorBuffer = v28;
      LODWORD(v26) = *(a11 + 8);
    }

    *(*a11 + 8 * v26) = PromotedReturnTypeForTensorBuffer;
    ++*(a11 + 8);
    v23 = 1;
  }

  if (v31 != v33)
  {
    free(v31);
  }

  return v23;
}

BOOL mlir::anec::TensorBufferToTensor::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'interleave'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 == v30)
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
      v12 = v30;
LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
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
    v25[0] = "requires attribute 'strides'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 == v30)
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

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps45(*this, *(v4 + 1), "strides", 7) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps43(*this, v15, "interleave", 0xA) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::__mlir_ods_local_attr_constraint_ANECOps45(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_11;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v35 = a2;
  v36 = v8;
  Type = mlir::ElementsAttr::getType(&v35);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v38[0] = v10;
  v38[1] = Type;
  mlir::CallableOpInterface::getArgAttrsAttr(v38);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v33[0] = a2;
  v33[1] = v12;
  v13 = mlir::ElementsAttr::getType(v33);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  v34[0] = v14;
  v34[1] = v13;
  mlir::CallableOpInterface::getArgAttrsAttr(v34);
  if (v15 == 1)
  {
LABEL_36:
    v30 = a2;
    v31[0] = mlir::ArrayAttr::getValue(&v30);
    v31[1] = v16;
    isSplat = mlir::ElementsAttr::isSplat(v31);
    if (mlir::Type::isSignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_11:
  v37 = 257;
  mlir::Operation::emitOpError(a1, &v35, v38);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "attribute '");
  if (*v18)
  {
    v37 = 261;
    v35 = a3;
    v36 = a4;
    v19 = v18;
    mlir::Diagnostic::operator<<((v18 + 1), &v35);
    v18 = v19;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, "' failed to satisfy constraint: ui64 elements attribute of rank 0/1");
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

  return v17;
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::TensorToTensorBuffer>::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[6] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = v33;
  v32 = 0x600000000;
  v29 = a4;
  if (a5)
  {
    v15 = 0;
    while (1)
    {
      v16 = (*(mlir::ValueRange::dereference_iterator(&v29, v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        break;
      }

      v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      if (!v16)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v16, v17);
      v19 = v32;
      if (v32 >= HIDWORD(v32))
      {
        v21 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 8);
        RankPromotionTypeForANE = v21;
        v19 = v32;
      }

      *(v31 + v19) = RankPromotionTypeForANE;
      v20 = (v32 + 1);
      LODWORD(v32) = v32 + 1;
      v15 = v30 + 1;
      v30 = v15;
      if (v15 == a5)
      {
        v24 = v31;
        goto LABEL_13;
      }
    }

    v22.var0.var0 = a3;
    v23 = mlir::emitOptionalError<char const(&)[39]>(a2, v22, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v20 = 0;
    v24 = v33;
LABEL_13:
    mlir::ValueRange::ValueRange(&v29, v24, v20);
    PromotedReturnTypeForTensorBuffer = mlir::anec::getPromotedReturnTypeForTensorBuffer(v29, v30, a6, 0);
    v26 = *(a11 + 8);
    if (v26 >= *(a11 + 12))
    {
      v28 = PromotedReturnTypeForTensorBuffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
      PromotedReturnTypeForTensorBuffer = v28;
      LODWORD(v26) = *(a11 + 8);
    }

    *(*a11 + 8 * v26) = PromotedReturnTypeForTensorBuffer;
    ++*(a11 + 8);
    v23 = 1;
  }

  if (v31 != v33)
  {
    free(v31);
  }

  return v23;
}

void mlir::anec::Tile::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  __src = v22;
  v21 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if (!mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Tile>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v21;
  v15 = *(a2 + 72);
  v16 = v15 + v21;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Tile>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = v34;
  v33 = 0x600000000;
  v30 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v30, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v33;
      if (v33 >= HIDWORD(v33))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v33 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v33;
      }

      *(v32 + v21) = RankPromotionTypeForANE;
      v22 = (v33 + 1);
      LODWORD(v33) = v33 + 1;
      v17 = v31 + 1;
      v31 = v17;
      if (v17 == a5)
      {
        v26 = v32;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v34;
LABEL_13:
    mlir::ValueRange::ValueRange(&v30, v26, v22);
    result = mlir::anec::Tile::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v32 != v34)
  {
    v27 = result;
    free(v32);
    return v27;
  }

  return result;
}

BOOL mlir::anec::Tile::verifyInvariantsImpl(mlir::Operation **this)
{
  v53 = *MEMORY[0x1E69E9840];
  v44[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v44);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_27;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      v41 = v17;
      v42 = v18;
      Type = mlir::ElementsAttr::getType(&v41);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v44[0] = v20;
      v44[1] = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(v44);
      if (v21 != 1 || (v38 = v17, v39[0] = mlir::ArrayAttr::getValue(&v38), v39[1] = v22, isSplat = mlir::ElementsAttr::isSplat(v39), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_27:
        v43 = 257;
        mlir::Operation::emitOpError(v7, &v41, v44);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, "attribute '");
        if (*v23)
        {
          v43 = 261;
          v41 = "multipliers";
          v42 = 11;
          v24 = v23;
          mlir::Diagnostic::operator<<((v23 + 1), &v41);
          v23 = v24;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, "' failed to satisfy constraint: ui64 elements attribute of rank 1");
        v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
        if (v44[0])
        {
          mlir::InFlightDiagnostic::report(v44);
        }

        if (v52 == 1)
        {
          if (v51 != &v52)
          {
            free(v51);
          }

          v27 = __p;
          if (__p)
          {
            v28 = v50;
            v29 = __p;
            if (v50 != __p)
            {
              do
              {
                v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
              }

              while (v28 != v27);
              v29 = __p;
            }

            v50 = v27;
            operator delete(v29);
          }

          v30 = v47;
          if (v47)
          {
            v31 = v48;
            v32 = v47;
            if (v48 != v47)
            {
              do
              {
                v34 = *--v31;
                v33 = v34;
                *v31 = 0;
                if (v34)
                {
                  operator delete[](v33);
                }
              }

              while (v31 != v30);
              v32 = v47;
            }

            v48 = v30;
            operator delete(v32);
          }

          if (v45 != v46)
          {
            free(v45);
          }
        }

        if (!v26)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v35 = *this - 16;
      }

      else
      {
        v35 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v41 = "requires attribute 'multipliers'";
    v43 = 259;
    mlir::OpState::emitOpError(this, &v41, v44);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
    if (v44[0])
    {
      mlir::InFlightDiagnostic::report(v44);
    }

    if (v52 == 1)
    {
      if (v51 != &v52)
      {
        free(v51);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v50;
        v11 = __p;
        if (v50 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v50 = v9;
        operator delete(v11);
      }

      v12 = v47;
      if (v47)
      {
        v13 = v48;
        v14 = v47;
        if (v48 != v47)
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
          v14 = v47;
        }

        v48 = v12;
        operator delete(v14);
      }

      if (v45 != v46)
      {
        free(v45);
      }
    }
  }

  return v8;
}

void mlir::anec::Transpose::build(uint64_t **this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x500000000;
  if ((2 * a5) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, 2 * a5, 8);
  }

  if (a5)
  {
    v10 = &a4[2 * a5];
    v11 = v22;
    do
    {
      v12 = *a4;
      if (v11 >= HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v11 + 1, 8);
        v11 = v22;
      }

      *(v21 + v11) = v12;
      v13 = (v22 + 1);
      LODWORD(v22) = v13;
      v14 = a4[1];
      if (v13 >= HIDWORD(v22))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v13 + 1, 8);
        LODWORD(v13) = v22;
      }

      *(v21 + v13) = v14;
      v11 = v22 + 1;
      LODWORD(v22) = v22 + 1;
      a4 += 2;
    }

    while (a4 != v10);
  }

  v20[0] = a5;
  v20[1] = 2;
  IntegerType = mlir::Builder::getIntegerType(this, 64, 0);
  v16 = mlir::RankedTensorType::get(v20, 2, IntegerType, 0);
  if (v16)
  {
    v17 = v16;
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
    v16 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::DenseElementsAttr::getFromRawBuffer(v16, v18, v21, 8 * v22, 8, 1, 0);
  mlir::anec::Transpose::build(this, a2, a3, v19);
  if (v21 != v23)
  {
    free(v21);
  }
}

void mlir::anec::Transpose::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v17 = a3;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  __src = v22;
  v21 = 0x200000000;
  v7 = *a1;
  v8 = *a2;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Transpose>::inferReturnTypes(v7, v8, 1, v19[0], v19[1], Dictionary, v11, v12, v18[0], v18[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v21;
  v15 = *(a2 + 72);
  v16 = v15 + v21;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v22)
  {
    free(__src);
  }
}

void mlir::anec::Transpose::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = a4;
  v5[1] = a5;
  v5[2] = a5;
  v5[3] = a4;
  mlir::anec::Transpose::build(a1, a2, a3, v5, 2);
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Transpose>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::Transpose::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::Transpose::verifyInvariantsImpl(mlir::Operation **this)
{
  v63 = *MEMORY[0x1E69E9840];
  v54[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v54);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        break;
      }

      v4 = (v4 + 16);
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v4 + 1);
    if (v17)
    {
      if (!mlir::DenseIntElementsAttr::classof(v17))
      {
        goto LABEL_30;
      }

      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
      v50 = v17;
      v51 = v18;
      Type = mlir::ElementsAttr::getType(&v50);
      v20 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v54[0] = v20;
      v54[1] = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(v54);
      if (v21 != 2)
      {
        goto LABEL_30;
      }

      v48 = v17;
      v22 = mlir::ArrayAttr::getValue(&v48);
      v23 = v22;
      if (v22)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
      }

      v49[0] = v23;
      v49[1] = v22;
      if (*(mlir::CallableOpInterface::getArgAttrsAttr(v49) + 8) != 2 || (v45 = v17, v46[0] = mlir::ArrayAttr::getValue(&v45), v46[1] = v24, isSplat = mlir::ElementsAttr::isSplat(v46), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_30:
        v53 = 257;
        mlir::Operation::emitOpError(v7, &v50, v54);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, "attribute '");
        if (*v25)
        {
          v53 = 261;
          v50 = "transpose_list";
          v51 = 14;
          v26 = v25;
          mlir::Diagnostic::operator<<(v25 + 8, &v50);
          v25 = v26;
          if (*v26)
          {
            v27 = *(v26 + 24);
            LODWORD(v50) = 3;
            v51 = "' failed to satisfy constraint: list of 64-bits unsigned integer pairs";
            v52 = 70;
            v28 = *(v26 + 32);
            v29 = &v50;
            if (v28 >= *(v26 + 36))
            {
              if (v27 <= &v50 && v27 + 24 * v28 > &v50)
              {
                v44 = &v50 - v27;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 24, v26 + 40, v28 + 1, 24);
                v25 = v26;
                v27 = *(v26 + 24);
                v29 = &v44[v27];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v26 + 24, v26 + 40, v28 + 1, 24);
                v25 = v26;
                v27 = *(v26 + 24);
                v29 = &v50;
              }
            }

            v30 = v27 + 24 * *(v25 + 32);
            v31 = *v29;
            *(v30 + 16) = v29[2];
            *v30 = v31;
            ++*(v25 + 32);
          }
        }

        v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

          v33 = __p;
          if (__p)
          {
            v34 = v60;
            v35 = __p;
            if (v60 != __p)
            {
              do
              {
                v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
              }

              while (v34 != v33);
              v35 = __p;
            }

            v60 = v33;
            operator delete(v35);
          }

          v36 = v57;
          if (v57)
          {
            v37 = v58;
            v38 = v57;
            if (v58 != v57)
            {
              do
              {
                v40 = *--v37;
                v39 = v40;
                *v37 = 0;
                if (v40)
                {
                  operator delete[](v39);
                }
              }

              while (v37 != v36);
              v38 = v57;
            }

            v58 = v36;
            operator delete(v38);
          }

          if (v55 != v56)
          {
            free(v55);
          }
        }

        if (!v32)
        {
          return 0;
        }
      }
    }

    if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v41 = *this - 16;
      }

      else
      {
        v41 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0);
      return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v50 = "requires attribute 'transpose_list'";
    v53 = 259;
    mlir::OpState::emitOpError(this, &v50, v54);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
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

      v9 = __p;
      if (__p)
      {
        v10 = v60;
        v11 = __p;
        if (v60 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v60 = v9;
        operator delete(v11);
      }

      v12 = v57;
      if (v57)
      {
        v13 = v58;
        v14 = v57;
        if (v58 != v57)
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
          v14 = v57;
        }

        v58 = v12;
        operator delete(v14);
      }

      if (v55 != v56)
      {
        free(v55);
      }
    }
  }

  return v8;
}

uint64_t mlir::anec::Transpose::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v6, 1);
  v2 = v6;
  v3 = *a1;
  v4 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v4 + 1), "anec.transpose", 14, v2, v3, 0, 0);
  *v4 = &unk_1F5B342B0;
  v4[12] = mlir::anec::Transpose::canonicalize;
  v7 = v4;
  mlir::RewritePatternSet::add(a1, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void mlir::anec::Unflatten::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v23);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a5);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v23);
  __src = v24;
  v23 = 0x200000000;
  v9 = *a1;
  v10 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v20, *(a2 + 224), *(a2 + 232));
  if ((mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Unflatten>::inferReturnTypes(v9, v10, 1, v21[0], v21[1], Dictionary, v13, v14, v20[0], v20[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = __src;
  v16 = v23;
  v17 = *(a2 + 72);
  v18 = v17 + v23;
  if (v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  if (v16)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v16);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::anec::detail::InferReturnTypesInterfaceTrait<mlir::anec::Unflatten>::inferReturnTypes(mlir::UnknownLoc *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = v32;
  v31 = 0x600000000;
  v28 = a4;
  if (a5)
  {
    v17 = 0;
    while (1)
    {
      v18 = (*(mlir::ValueRange::dereference_iterator(&v28, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
      {
        break;
      }

      v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
      if (!v18)
      {
        break;
      }

      RankPromotionTypeForANE = mlir::getRankPromotionTypeForANE(v18, v19);
      v21 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v23 = RankPromotionTypeForANE;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 8);
        RankPromotionTypeForANE = v23;
        v21 = v31;
      }

      *(v30 + v21) = RankPromotionTypeForANE;
      v22 = (v31 + 1);
      LODWORD(v31) = v31 + 1;
      v17 = v29 + 1;
      v29 = v17;
      if (v17 == a5)
      {
        v26 = v30;
        goto LABEL_13;
      }
    }

    v24.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[39]>(a2, v24, "expected a ShapedType for inferReturnTypes");
  }

  else
  {
    v22 = 0;
    v26 = v32;
LABEL_13:
    mlir::ValueRange::ValueRange(&v28, v26, v22);
    result = mlir::anec::Unflatten::inferPromotedReturnTypes(a1, a2, a3, a4, a5, a6, a9, a10, v28, v29, a11);
  }

  if (v30 != v32)
  {
    v27 = result;
    free(v30);
    return v27;
  }

  return result;
}

BOOL mlir::anec::Unflatten::verifyInvariantsImpl(mlir::Operation **this)
{
  v36 = *MEMORY[0x1E69E9840];
  v27[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v27);
  if (!v3)
  {
LABEL_5:
    v25[0] = "requires attribute 'destination_size'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v33;
      v9 = __p;
      if (v33 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v33 = v7;
      operator delete(v9);
    }

    v10 = v30;
    if (v30)
    {
      v11 = v31;
      v12 = v30;
      if (v31 == v30)
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
      v12 = v30;
LABEL_42:
      v31 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v28 != &v29)
    {
      free(v28);
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
    v25[0] = "requires attribute 'flatten_mode'";
    v26 = 259;
    mlir::OpState::emitOpError(this, v25, v27);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
    }

    if (v35 != 1)
    {
      return v6;
    }

    if (v34 != &v35)
    {
      free(v34);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v33;
      v18 = __p;
      if (v33 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v33 = v16;
      operator delete(v18);
    }

    v10 = v30;
    if (v30)
    {
      v19 = v31;
      v12 = v30;
      if (v31 == v30)
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

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps26(*this, *(v4 + 1), "flatten_mode", 0xC) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps8(*this, v15, "destination_size", 16) & 1) == 0 || (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0);
  return mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::anec::UnrealizedConversionCast::verifyInvariantsImpl(mlir::anec::UnrealizedConversionCast *this)
{
  v56 = *MEMORY[0x1E69E9840];
  if (mlir::anec::__mlir_ods_local_type_constraint_ANECOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(*this + 36))
    {
      v2 = *this - 16;
    }

    else
    {
      v2 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
    v4 = *this;
    v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
      v47[0] = v5;
      v47[1] = v6;
      mlir::ElementsAttr::isSplat(v47);
      return 1;
    }

    v43 = 261;
    v42[0] = "result";
    v42[1] = 6;
    mlir::Operation::emitOpError(v4, v42, v47);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v47, " #");
    if (*v7)
    {
      v9 = v7 + 24;
      v8 = *(v7 + 24);
      v44 = 5;
      v45 = 0;
      v10 = *(v7 + 32);
      v11 = &v44;
      if (v10 >= *(v7 + 36))
      {
        if (v8 <= &v44 && v8 + 24 * v10 > &v44)
        {
          v37 = &v44 - v8;
          v38 = v7;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v10 + 1, 24);
          v7 = v38;
          v8 = *(v38 + 24);
          v11 = &v37[v8];
        }

        else
        {
          v35 = v7;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v10 + 1, 24);
          v7 = v35;
          v8 = *(v35 + 24);
          v11 = &v44;
        }
      }

      v12 = v8 + 24 * *(v7 + 32);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      v14 = (*(v7 + 32) + 1);
      *(v7 + 32) = v14;
      if (*v7)
      {
        v44 = 3;
        v45 = " must be shaped of any type values, but got ";
        v46 = 44;
        v15 = *(v7 + 24);
        v16 = &v44;
        if (v14 >= *(v7 + 36))
        {
          if (v15 <= &v44 && v15 + 24 * v14 > &v44)
          {
            v39 = &v44 - v15;
            v40 = v7;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 40, v14 + 1, 24);
            v7 = v40;
            v15 = *(v40 + 24);
            v16 = &v39[v15];
          }

          else
          {
            v36 = v7;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v7 + 40, v14 + 1, 24);
            v7 = v36;
            v15 = *(v36 + 24);
            v16 = &v44;
          }
        }

        v17 = v15 + 24 * *(v7 + 32);
        v18 = *v16;
        *(v17 + 16) = *(v16 + 2);
        *v17 = v18;
        ++*(v7 + 32);
        if (*v7)
        {
          v19 = &v44;
          v20 = v7;
          mlir::DiagnosticArgument::DiagnosticArgument(&v44, v5);
          v21 = *(v20 + 32);
          v22 = *(v20 + 24);
          if (v21 >= *(v20 + 36))
          {
            if (v22 <= &v44 && v22 + 24 * v21 > &v44)
            {
              v41 = &v44 - v22;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v20 + 40, v21 + 1, 24);
              v7 = v20;
              v22 = *(v20 + 24);
              v19 = &v41[v22];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v20 + 40, v21 + 1, 24);
              v7 = v20;
              v22 = *(v20 + 24);
              v19 = &v44;
            }
          }

          else
          {
            v7 = v20;
          }

          v23 = v22 + 24 * *(v7 + 32);
          v24 = *v19;
          *(v23 + 16) = *(v19 + 2);
          *v23 = v24;
          ++*(v7 + 32);
        }
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v7);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v53;
        v28 = __p;
        if (v53 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v53 = v26;
        operator delete(v28);
      }

      v29 = v50;
      if (v50)
      {
        v30 = v51;
        v31 = v50;
        if (v51 != v50)
        {
          do
          {
            v33 = *--v30;
            v32 = v33;
            *v30 = 0;
            if (v33)
            {
              operator delete[](v32);
            }
          }

          while (v30 != v29);
          v31 = v50;
        }

        v51 = v29;
        operator delete(v31);
      }

      if (v48 != &v49)
      {
        free(v48);
      }
    }

    if (v25)
    {
      return 1;
    }
  }

  return 0;
}

BOOL mlir::anec::calcStrides(void *a1, uint64_t a2, mlir *a3, AttributeStorage *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  v95 = a1;
  mlir::ArrayAttr::getValue(&v95);
  if (!v7.var0.var0)
  {
    if (a4)
    {
      mlir::emitError(a3, v7, v96);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v96, "calcStrides MemRef rank should not be 0");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
      if (v96[0])
      {
        mlir::InFlightDiagnostic::report(v96);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v102;
          v17 = __p;
          if (v102 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v102 = v15;
          operator delete(v17);
        }

        v18 = v99;
        if (v99)
        {
          v19 = v100;
          v20 = v99;
          if (v100 != v99)
          {
            do
            {
              v22 = *--v19;
              v21 = v22;
              *v19 = 0;
              if (v22)
              {
                operator delete[](v21);
              }
            }

            while (v19 != v18);
            v20 = v99;
          }

          v100 = v18;
          operator delete(v20);
        }

        if (v97 != v98)
        {
          free(v97);
        }
      }
    }

    return 0;
  }

  v96[0] = mlir::DenseElementsAttr::getRawStringData(&v95);
  v96[1] = v8;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v96);
  Results = mlir::AffineMap::getResults(&CallableForCallee);
  v10 = *Results;
  if (*Results && (v96[0] = *Results, mlir::arith::FastMathFlagsAttr::getValue(v96) < 5))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v11);
  CallableForCallee = v96[0];
  if (v96[0] && !mlir::arith::FastMathFlagsAttr::getValue(&CallableForCallee))
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
    if (RHS && (v34 = RHS, v96[0] = RHS, mlir::arith::FastMathFlagsAttr::getValue(v96) < 5))
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v35);
    v93 = v96[0];
    if (v96[0])
    {
      if (mlir::arith::FastMathFlagsAttr::getValue(&v93) == 2)
      {
        mlir::ArrayAttr::getValue(&v95);
        v46 = v45;
        v47 = *(a2 + 8);
        if (v45 != v47)
        {
          if (v45 >= v47)
          {
            if (v45 > *(a2 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v45, 8);
              v47 = *(a2 + 8);
            }

            if (v46 != v47)
            {
              bzero((*a2 + 8 * v47), 8 * (v46 - v47));
            }
          }

          *(a2 + 8) = v46;
        }

        if (v10 && (v96[0] = v10, mlir::arith::FastMathFlagsAttr::getValue(v96) < 5))
        {
          v48 = v10;
        }

        else
        {
          v48 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v48);
        CallableForCallee = v96[0];
        LHS = mlir::AffineBinaryOpExpr::getLHS(&CallableForCallee);
        if (LHS && (v53 = LHS, v96[0] = LHS, mlir::arith::FastMathFlagsAttr::getValue(v96) < 5))
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v54);
        CallableForCallee = v96[0];
        v55 = v46 - 1;
        if (v46 - 1 >= 1)
        {
          v56 = v55 & 0x7FFFFFFF;
          do
          {
            v59 = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
            if (v59 && (v60 = v59, v96[0] = v59, mlir::arith::FastMathFlagsAttr::getValue(v96) < 5))
            {
              v61 = v60;
            }

            else
            {
              v61 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v61);
            v93 = v96[0];
            v62 = mlir::AffineBinaryOpExpr::getRHS(&v93);
            if (v62 && (v63 = v62, v96[0] = v62, mlir::arith::FastMathFlagsAttr::getValue(v96) == 5))
            {
              v64 = v63;
            }

            else
            {
              v64 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v64);
            v92 = v96[0];
            *(*a2 + 8 * v56) = mlir::AffineBinaryOpExpr::getLHS(&v92);
            v65 = mlir::AffineBinaryOpExpr::getLHS(&CallableForCallee);
            if (v65 && (v66 = v65, v96[0] = v65, mlir::arith::FastMathFlagsAttr::getValue(v96) < 5))
            {
              v57 = v66;
            }

            else
            {
              v57 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v57);
            CallableForCallee = v96[0];
          }

          while (v56-- > 1);
        }

        v67 = mlir::AffineBinaryOpExpr::getRHS(&CallableForCallee);
        if (v67 && (v68 = v67, v96[0] = v67, mlir::arith::FastMathFlagsAttr::getValue(v96) == 5))
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(v96, v69);
        v93 = v96[0];
        **a2 = mlir::AffineBinaryOpExpr::getLHS(&v93);
        v96[0] = mlir::AffineBinaryOpExpr::getRHS(&v95);
        if (mlir::Type::getIntOrFloatBitWidth(v96) == 4)
        {
          if (v46 >= 2)
          {
            v70 = *a2;
            if (v46 > 4)
            {
              v71 = v55 & 0xFFFFFFFFFFFFFFFCLL;
              v82 = v70 + 1;
              v83 = v55 & 0xFFFFFFFFFFFFFFFCLL;
              do
              {
                v84 = vshrq_n_s64(vsraq_n_u64(*v82, *v82, 0x3FuLL), 1uLL);
                v82[-1] = vshrq_n_s64(vsraq_n_u64(v82[-1], v82[-1], 0x3FuLL), 1uLL);
                *v82 = v84;
                v82 += 2;
                v83 -= 4;
              }

              while (v83);
              if (v55 == v71)
              {
                return 1;
              }
            }

            else
            {
              v71 = 0;
            }

            v85 = &v70->i64[v71];
            v86 = ~v71 + v46;
            do
            {
              *v85++ /= 2;
              --v86;
            }

            while (v86);
          }
        }

        else
        {
          ElementTypeBitWidth = mlir::detail::ShapedTypeTrait<mlir::MemRefType>::getElementTypeBitWidth(&v95);
          if (v46 >= 2)
          {
            v79 = ElementTypeBitWidth >> 3;
            v80 = *a2;
            if (v46 == 2)
            {
              v81 = 0;
            }

            else
            {
              v81 = v55 & 0xFFFFFFFFFFFFFFFELL;
              v87 = &v80->i64[1];
              v88 = v55 & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                v89 = *v87 * v79;
                *(v87 - 1) *= v79;
                *v87 = v89;
                v87 += 2;
                v88 -= 2;
              }

              while (v88);
              if (v55 == v81)
              {
                return 1;
              }
            }

            v90 = &v80->i64[v81];
            v91 = ~v81 + v46;
            do
            {
              *v90++ *= v79;
              --v91;
            }

            while (v91);
          }
        }

        return 1;
      }
    }
  }

  if ((mlir::getStrideInBytes(v95, a2, 1) & 1) == 0)
  {
    if (a4)
    {
      mlir::emitError(a3, v12, v96);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v96, "Unable to get the stride in bytes!");
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
      v24 = result;
      if (v96[0])
      {
        mlir::InFlightDiagnostic::report(v96);
        result = v24;
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
          result = v24;
        }

        v25 = __p;
        if (__p)
        {
          v26 = v102;
          v27 = __p;
          if (v102 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v102 = v25;
          operator delete(v27);
          result = v24;
        }

        v28 = v99;
        if (v99)
        {
          v29 = v100;
          v30 = v99;
          if (v100 != v99)
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
            v30 = v99;
          }

          v100 = v28;
          operator delete(v30);
          result = v24;
        }

        if (v97 != v98)
        {
          free(v97);
          return v24;
        }
      }

      return result;
    }

    return 0;
  }

  if (*(a2 + 8))
  {
    return 1;
  }

  mlir::ArrayAttr::getValue(&v95);
  v37 = *(a2 + 8);
  if (v36 != v37)
  {
    if (v36 >= v37)
    {
      if (v36 > *(a2 + 12))
      {
        v38 = v36;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v36, 8);
        v36 = v38;
        v37 = *(a2 + 8);
      }

      if (v36 != v37)
      {
        v39 = v36;
        bzero((*a2 + 8 * v37), 8 * (v36 - v37));
        LODWORD(v36) = v39;
      }
    }

    *(a2 + 8) = v36;
  }

  Value = mlir::ArrayAttr::getValue(&v95);
  v42 = v41;
  v96[0] = mlir::AffineBinaryOpExpr::getRHS(&v95);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v96);
  if (IntOrFloatBitWidth == 4 || (IntOrFloatBitWidth & 7) == 0)
  {
    v49 = IntOrFloatBitWidth >> 3;
    mlir::ArrayAttr::getValue(&v95);
    v50 = *a2;
    if (v51 == 1)
    {
      *v50 = v49;
      return 1;
    }

    else
    {
      v72 = &v50[v42];
      *(v72 - 1) = v49;
      v73 = v42 - 2;
      if (v42 != 2)
      {
        v74 = *(v72 - 1);
        do
        {
          v75 = *(Value - 8 + 8 * v42) * v74;
          v74 = (v75 - (v75 != 0) + ((v75 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
          v50[v42-- - 2] = v74;
        }

        while (v42 != 2);
      }

      v76 = *(Value + 8) * v50[1];
      *v50 = (v76 - (v76 != 0) + ((v76 != 0) << 6)) & 0xFFFFFFFFFFFFFFC0;
      if ((v50[v73] & 0x3F) == 0)
      {
        return 1;
      }

      v77.var0.var0 = a4;
      return mlir::emitOptionalError<char const(&)[39]>(a3, v77, "Row stride should follow 64 byte alignment");
    }
  }

  else
  {
    v44.var0.var0 = a4;
    return mlir::emitOptionalError<char const(&)[66]>(a3, v44, "Type's bitwidth not byte aligned");
  }
}

void mlir::anec::calcANEIOInfo(void *a1@<X0>, mlir *a2@<X1>, AttributeStorage *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v25 = v27;
  v26 = 0x400000000;
  v28 = v30;
  v29 = 0x400000000;
  v31 = 1;
  if (!mlir::anec::calcStrides(a1, &v28, 0, 0))
  {
LABEL_18:
    v19 = 0;
    *a4 = 0;
    goto LABEL_25;
  }

  Value = mlir::ArrayAttr::getValue(&v21);
  v9 = v7;
  RHS = v24;
  v23 = 0x400000000;
  v10 = (8 * v7) >> 3;
  if (v10 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&RHS, v24, v10, 8);
    v11 = v23;
    v12 = 8 * v9;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v12 = 8 * v7;
  if (v7)
  {
LABEL_6:
    memcpy(RHS + 8 * v11, Value, v12);
    v11 = v23;
  }

LABEL_7:
  LODWORD(v23) = v11 + (v12 >> 3);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v25, &RHS);
  if (RHS != v24)
  {
    free(RHS);
  }

  if (v29)
  {
    v13 = (v28 + 8);
    v14 = 16;
    while (8 * v29 + v14 != 24)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v14 -= 8;
      ++v13;
      if (v15 < v16)
      {
        if (v14 + 8 * v29 == 8)
        {
          break;
        }

        if (v29 != 4)
        {
          v18.var0.var0 = a3;
          mlir::emitOptionalError<char const(&)[66]>(a2, v18, "incorrect number of strides");
          goto LABEL_18;
        }

        if (v14)
        {
          v17.var0.var0 = a3;
          mlir::emitOptionalError<char const(&)[66]>(a2, v17, "incorrect strides");
          goto LABEL_18;
        }

        v20 = *(v28 + v29 - 1);
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v21);
        v31 = v20 / (mlir::Type::getIntOrFloatBitWidth(&RHS) >> 3);
        *v28 = vextq_s8(*v28, *v28, 8uLL);
        break;
      }
    }
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x400000000;
  if (v26)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a4, &v25);
  }

  *(a4 + 48) = a4 + 64;
  *(a4 + 56) = 0x400000000;
  if (v29)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a4 + 48, &v28);
  }

  *(a4 + 96) = v31;
  v19 = 1;
LABEL_25:
  *(a4 + 104) = v19;
  if (v28 != v30)
  {
    free(v28);
  }

  if (v25 != v27)
  {
    free(v25);
  }
}

uint64_t mlir::anec::getRegionOpFamily(mlir::anec *this, mlir::Operation *a2)
{
  v2 = *(*(this + 6) + 16);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id)
  {
    return 0;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id)
  {
    return 1;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id)
  {
    return 2;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id)
  {
    return 3;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id)
  {
    return 4;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id)
  {
    return 5;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id)
  {
    return 6;
  }

  return 7;
}

uint64_t mlir::anec::RegionReturn::addOpToNetwork(mlir::Block ***a1, uint64_t a2)
{
  v138 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    mlir::anec::RegionReturn::addOpToNetwork(a1, &__str);
    return __str.__r_.__value_.__s.__data_[0];
  }

  v3 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0 || !*(v3 + 17))
  {
    mlir::anec::RegionReturn::addOpToNetwork(a1);
    return 0;
  }

  while (1)
  {
    v5 = v3[2];
    if (!v5)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v5);
    if (!ParentOp)
    {
      break;
    }

    v3 = ParentOp;
    if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
    {
      mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v3);
      break;
    }
  }

  v7 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    return 1;
  }

  v107 = *(v7 + 17);
  if (!v107)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  v10 = v7[9];
  v102 = a1;
  while (1)
  {
    v11 = *(v10 + 4 * v9 + 3);
    v118 = v11;
    v12 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v12 = 0;
    }

    v117 = v12;
    if (!v12)
    {
      break;
    }

    ANECIRDataType = mlir::anec::getANECIRDataType(v11);
    if ((ANECIRDataType & 0x100000000) == 0)
    {
      v123 = 257;
      mlir::OpState::emitError(v102, &__p, &__str);
      if (__str.__r_.__value_.__r.__words[0])
      {
        mlir::anec::RegionReturn::addOpToNetwork(&__str);
      }

      if (v137 == 1)
      {
        if (v136 != &v137)
        {
          free(v136);
        }

        v96 = v134;
        if (v134)
        {
          v97 = v135;
          v98 = v134;
          if (v135 != v134)
          {
            do
            {
              v97 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v97 - 1);
            }

            while (v97 != v96);
            v98 = v134;
          }

          v135 = v96;
          operator delete(v98);
        }

        v91 = v132;
        if (!v132)
        {
          goto LABEL_203;
        }

        v99 = v133;
        v93 = v132;
        if (v133 == v132)
        {
LABEL_202:
          v133 = v91;
          operator delete(v93);
LABEL_203:
          if (v125 != &v127)
          {
            free(v125);
          }

          return 0;
        }

        do
        {
          v101 = *--v99;
          v100 = v101;
          *v99 = 0;
          if (v101)
          {
            operator delete[](v100);
          }
        }

        while (v99 != v91);
LABEL_201:
        v93 = v132;
        goto LABEL_202;
      }

      return 0;
    }

    v14 = ANECIRDataType;
    if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v116))
    {
      if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v116))
      {
        __str.__r_.__value_.__s.__data_[0] = 0;
        LOBYTE(v125) = 0;
        std::__throw_bad_optional_access[abi:nn200100]();
LABEL_208:
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v15 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 488), &v116);
      if (!v15)
      {
        abort();
      }

      if (*(v15 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, v15[5], v15[6]);
      }

      else
      {
        __str = *(v15 + 5);
      }

      LOBYTE(v125) = 1;
      std::string::operator=(&v116, &__str);
      if (v125 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v119[0] = v8;
    *&__p = "";
    *(&__p + 1) = 0;
    v122[0] = "__out:";
    v123 = 773;
    __str.__r_.__value_.__r.__words[0] = &__p;
    __str.__r_.__value_.__r.__words[2] = v119;
    v126 = 3330;
    llvm::Twine::str(&__str, &v115);
    *(&__str.__r_.__value_.__s + 23) = 0;
    __str.__r_.__value_.__s.__data_[0] = 0;
    HIBYTE(v122[0]) = 0;
    LOBYTE(__p) = 0;
    v16 = operator new(0xB0uLL);
    mlir::anec::ANECIROutput::ANECIROutput(v16, &v115, &v116, v14, &__str, &__p);
    v17 = operator new(0x20uLL);
    v17->__shared_owners_ = 0;
    v109 = v17;
    p_shared_owners = &v17->__shared_owners_;
    v17->__vftable = &unk_1F5B2EA18;
    v17->__shared_weak_owners_ = 0;
    v17[1].__vftable = v16;
    if (SHIBYTE(v122[0]) < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }

    else if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    operator delete(__str.__r_.__value_.__l.__data_);
LABEL_26:
    mlir::ArrayAttr::getValue(&v117);
    v19 = *(a2 + 568);
    v20 = *(a2 + 576);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v19)
    {
      v30 = v16;
      v31 = v18;
      DefiningOp = mlir::Value::getDefiningOp(&v118);
      if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::TensorToTensorBuffer,void>::id)
      {
        mlir::anec::getANEIOInfoFromTensorBuffer<mlir::anec::TensorToTensorBuffer,true>(DefiningOp, &__str);
        if (v131 == 1)
        {
          v41 = v30;
          v30[6].i8[0] = 1;
          if (v129 == 5)
          {
            v52 = *(v128 + 2);
            v51 = *(v128 + 3);
            v30[10] = vextq_s8(*v128, *v128, 8uLL);
          }

          else
          {
            v65 = v128 + 8 * v129;
            v51 = *(v65 - 2);
            v66 = -16;
            if (v129 > 2)
            {
              v66 = -24;
            }

            v52 = *&v65[v66];
          }

          v30[9].i64[0] = v51;
          v30[9].i64[1] = v52;
          v67 = v128;
          v30[6].i64[1] = v130[4];
          if (v67 != v130)
          {
            free(v67);
          }

          if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[2])
          {
            free(__str.__r_.__value_.__l.__data_);
          }

LABEL_74:
          v50 = 1;
          if (!v20)
          {
            goto LABEL_132;
          }

          goto LABEL_131;
        }

        v103 = 0;
      }

      else
      {
        *&__p = v122;
        *(&__p + 1) = 0x500000000;
        v104 &= 0xFFFFFFFFFFFFFF00;
        v105 &= 0xFFFFFFFFFFFFFF00;
        if (mlir::anec::calcStrides(v117, &__p, v104, v105))
        {
          if (v31 > 1)
          {
            v53 = __p + 8 * DWORD2(__p);
            if (DWORD2(__p))
            {
              v54 = 8 * DWORD2(__p);
              v55 = 8;
              do
              {
                v54 -= 8;
                if (!v54)
                {
                  goto LABEL_93;
                }

                v56 = *(__p + v55 - 8);
                v57 = *(__p + v55);
                v55 += 8;
              }

              while (v56 >= v57);
              if (v54 == -8)
              {
LABEL_93:
                if (DWORD2(__p) != 5)
                {
                  goto LABEL_95;
                }

                v61 = *(__p + 16);
                v62 = *(__p + 24);
                v30[10] = vextq_s8(*__p, *__p, 8uLL);
                goto LABEL_98;
              }

              if (DWORD2(__p) != 4)
              {
                v114 = 257;
                mlir::OpState::emitError(v102, v113, &__str);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__str, "Only have ");
                if (*v68)
                {
                  v69 = v68;
                  v72 = v68[3];
                  v70 = (v68 + 3);
                  v71 = v72;
                  LODWORD(v119[0]) = 5;
                  v119[1] = DWORD2(__p);
                  v73 = *(v70 + 8);
                  if (v73 >= *(v70 + 12))
                  {
                    if (v71 <= v119 && v71 + 24 * v73 > v119)
                    {
                      v86 = v119 - v71;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(v70, (v69 + 5), v73 + 1, 24);
                      v71 = v69[3];
                      v74 = &v86[v71];
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(v70, (v69 + 5), v73 + 1, 24);
                      v71 = v69[3];
                      v74 = v119;
                    }
                  }

                  else
                  {
                    v74 = v119;
                  }

                  v75 = v71 + 24 * *(v69 + 8);
                  v76 = *v74;
                  *(v75 + 16) = *(v74 + 2);
                  *v75 = v76;
                  ++*(v69 + 8);
                  if (*v69)
                  {
                    mlir::Diagnostic::append<char const(&)[7]>((v69 + 1), " stride elements for output ");
                    if (*v69)
                    {
                      v120 = 260;
                      v119[0] = &v116;
                      mlir::Diagnostic::operator<<((v69 + 1), v119);
                      if (*v69)
                      {
                        mlir::Diagnostic::append<char const(&)[7]>((v69 + 1), ", cannot handle interleave in this case. Aborting.");
                      }
                    }
                  }
                }

                if (__str.__r_.__value_.__r.__words[0])
                {
                  mlir::InFlightDiagnostic::report(&__str);
                }

                if (v137 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&__str.__r_.__value_.__r.__words[1]);
                }

                goto LABEL_124;
              }

              if (v55 != 24)
              {
                v120 = 257;
                mlir::OpState::emitError(v102, v119, &__str);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&__str, "Smallest stride dimension was not channels, it's likely there is an assumption being violated, aborting.");
                mlir::InFlightDiagnostic::~InFlightDiagnostic(&__str);
                goto LABEL_124;
              }

              v58 = *(v53 - 8);
              v30[6].i64[1] = v58 / (mlir::detail::ShapedTypeTrait<mlir::MemRefType>::getElementTypeBitWidth(&v117) >> 3);
              if (DWORD2(__p) == 5)
              {
                v60 = *(__p + 16);
                v59 = *(__p + 24);
                v30[10] = vextq_s8(*__p, *__p, 8uLL);
              }

              else
              {
                v83 = __p + 8 * DWORD2(__p);
                v59 = *(v83 - 16);
                v84 = -16;
                if (DWORD2(__p) > 2)
                {
                  v84 = -24;
                }

                v60 = *(v83 + v84);
              }

              v30[9].i64[0] = v59;
              v30[9].i64[1] = v60;
            }

            else
            {
LABEL_95:
              v62 = *(v53 - 16);
              v63 = -16;
              if (DWORD2(__p) > 2)
              {
                v63 = -24;
              }

              v61 = *(v53 + v63);
LABEL_98:
              v30[9].i64[0] = v62;
              v30[9].i64[1] = v61;
            }

            v64 = 1;
          }

          else
          {
            v119[0] = "ANE Output should have more than 1 dimension";
            v120 = 259;
            mlir::OpState::emitError(v102, v119, &__str);
            v103 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__str);
            if (__str.__r_.__value_.__r.__words[0])
            {
              mlir::InFlightDiagnostic::report(&__str);
            }

            if (v137 == 1)
            {
              if (v136 != &v137)
              {
                free(v136);
              }

              v33 = v134;
              if (v134)
              {
                v34 = v135;
                v35 = v134;
                if (v135 != v134)
                {
                  do
                  {
                    v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
                  }

                  while (v34 != v33);
                  v35 = v134;
                }

                v135 = v33;
                operator delete(v35);
              }

              v36 = v132;
              if (v132)
              {
                v37 = v133;
                v38 = v132;
                if (v133 != v132)
                {
                  do
                  {
                    v40 = *--v37;
                    v39 = v40;
                    *v37 = 0;
                    if (v40)
                    {
                      operator delete[](v39);
                    }
                  }

                  while (v37 != v36);
                  v38 = v132;
                }

                v133 = v36;
                operator delete(v38);
              }

              if (v125 != &v127)
              {
                free(v125);
              }
            }

            v64 = 0;
          }
        }

        else
        {
LABEL_124:
          v64 = 0;
          v103 = 0;
        }

        if (__p != v122)
        {
          free(__p);
        }

        if (v64)
        {
          v50 = 1;
          v41 = v30;
          goto LABEL_130;
        }
      }

      v41 = v30;
      v50 = 0;
LABEL_130:
      if (!v20)
      {
        goto LABEL_132;
      }

      goto LABEL_131;
    }

    v108 = v20;
    v21 = (*(v19 + 64) + 16 * v8);
    v23 = *v21;
    v22 = v21[1];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v16;
    v16[6].i8[0] = 1;
    v25 = *v23;
    if (!*v23)
    {
      memset(&__str, 0, sizeof(__str));
      v41 = v24;
      goto LABEL_65;
    }

    v26 = v10;
    v27 = v9;
    v28 = *(v23 + 8);
    if (v28 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_208;
    }

    v106 = v8;
    if (v28 >= 0x17)
    {
      if ((v28 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v28 | 7) + 1;
      }

      p_str = operator new(v42);
      __str.__r_.__value_.__l.__size_ = v28;
      __str.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
      __str.__r_.__value_.__r.__words[0] = p_str;
    }

    else
    {
      *(&__str.__r_.__value_.__s + 23) = *(v23 + 8);
      p_str = &__str;
      if (!v28)
      {
        goto LABEL_64;
      }
    }

    memmove(p_str, v25, v28);
LABEL_64:
    v41 = v24;
    *(p_str + v28) = 0;
    v8 = v106;
    v9 = v27;
    v10 = v26;
LABEL_65:
    v20 = v108;
    std::string::operator=(&v41->u64[1], &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v41[8].i32[2] = *(v23 + 120);
    v43 = *(v23 + 64);
    v44 = *(v23 + 72);
    if (v44 == 5)
    {
      v46 = v43[1].i64[0];
      v45 = v43[1].i64[1];
      v41[10] = vextq_s8(*v43, *v43, 8uLL);
    }

    else
    {
      v47 = &v43->i8[8 * v44];
      v45 = *(v47 - 2);
      v48 = v44 > 2;
      v49 = -16;
      if (v48)
      {
        v49 = -24;
      }

      v46 = *&v47[v49];
    }

    v41[9].i64[0] = v45;
    v41[9].i64[1] = v46;
    v41[6].i64[1] = *(v23 + 112);
    if (v22)
    {
      if (atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_74;
      }

      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      v50 = 1;
      if (!v108)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v50 = 1;
      if (!v108)
      {
        goto LABEL_132;
      }
    }

LABEL_131:
    if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_132:
      if (!v50)
      {
        goto LABEL_141;
      }

      goto LABEL_133;
    }

    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    if (!v50)
    {
      goto LABEL_141;
    }

LABEL_133:
    v111 = v41;
    v112 = v109;
    atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
    v77 = *(a2 + 112);
    v78 = *(a2 + 104);
    if (v77 >= *(a2 + 116))
    {
      if (v78 <= &v111 && v78 + 16 * v77 > &v111)
      {
        v85 = &v111 - v78;
        v78 = *(a2 + 104);
        v79 = &v85[v78];
        goto LABEL_135;
      }

      v78 = *(a2 + 104);
    }

    v79 = &v111;
LABEL_135:
    v80 = *(a2 + 112);
    v81 = *v79;
    *(v78 + 16 * v80) = *v79;
    if (*(&v81 + 1))
    {
      atomic_fetch_add_explicit((*(&v81 + 1) + 8), 1uLL, memory_order_relaxed);
      LODWORD(v80) = *(a2 + 112);
    }

    *(a2 + 112) = v80 + 1;
    v82 = v112;
    if (v112)
    {
      if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v82->__on_zero_shared)(v82);
        std::__shared_weak_count::__release_weak(v82);
      }
    }

    v8 = (v8 + 1);
LABEL_141:
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_143;
      }
    }

    else
    {
      (v109->__on_zero_shared)(v109);
      std::__shared_weak_count::__release_weak(v109);
      if ((SHIBYTE(v115.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_143:
        if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_144;
        }

        goto LABEL_148;
      }
    }

    operator delete(v115.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v116.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_144:
      if ((v50 & 1) == 0)
      {
        return v103;
      }

      goto LABEL_149;
    }

LABEL_148:
    operator delete(v116.__r_.__value_.__l.__data_);
    if ((v50 & 1) == 0)
    {
      return v103;
    }

LABEL_149:
    if (++v9 == v107)
    {
      return 1;
    }
  }

  v123 = 257;
  mlir::OpState::emitError(v102, &__p, &__str);
  if (__str.__r_.__value_.__r.__words[0])
  {
    mlir::anec::RegionReturn::addOpToNetwork(&__str);
  }

  if (v137 == 1)
  {
    if (v136 != &v137)
    {
      free(v136);
    }

    v88 = v134;
    if (v134)
    {
      v89 = v135;
      v90 = v134;
      if (v135 != v134)
      {
        do
        {
          v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
        }

        while (v89 != v88);
        v90 = v134;
      }

      v135 = v88;
      operator delete(v90);
    }

    v91 = v132;
    if (!v132)
    {
      goto LABEL_203;
    }

    v92 = v133;
    v93 = v132;
    if (v133 == v132)
    {
      goto LABEL_202;
    }

    do
    {
      v95 = *--v92;
      v94 = v95;
      *v92 = 0;
      if (v95)
      {
        operator delete[](v94);
      }
    }

    while (v92 != v91);
    goto LABEL_201;
  }

  return 0;
}

void mlir::anec::getANEIOInfoFromTensorBuffer<mlir::anec::TensorToTensorBuffer,true>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = v31;
  v30 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  v35 = 1;
  v26 = v28;
  v27 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), **(*(a1 + 48) + 96));
  mlir::getValues<long long>(v7, &v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v8 = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v9 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v11 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v8 + 16), (v9 + 16 * v10), *(*(*(a1 + 48) + 96) + 8));
  mlir::getValues<long long>(v11, &v32);
  if (!v27 || !v33)
  {
    v15 = 0;
    *a2 = 0;
    goto LABEL_22;
  }

  v35 = *v26;
  if (*(a1 + 36))
  {
    v12 = a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  v22[0] = v13;
  v22[1] = v14;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v22);
  v18 = v16;
  AttrDictionary = v25;
  v24 = 0x600000000;
  v19 = (8 * v16) >> 3;
  if (v19 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&AttrDictionary, v25, v19, 8);
    v20 = v24;
    v21 = 8 * v18;
    if (!v18)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = 0;
  v21 = 8 * v16;
  if (v16)
  {
LABEL_14:
    memcpy(AttrDictionary + 8 * v20, ArgAttrsAttr, v21);
    v20 = v24;
  }

LABEL_15:
  LODWORD(v24) = v20 + (v21 >> 3);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v29, &AttrDictionary);
  if (AttrDictionary != v25)
  {
    free(AttrDictionary);
  }

  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  if (v30)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a2, &v29);
  }

  *(a2 + 48) = a2 + 64;
  *(a2 + 56) = 0x400000000;
  if (v33)
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(a2 + 48, &v32);
  }

  *(a2 + 96) = v35;
  v15 = 1;
LABEL_22:
  *(a2 + 104) = v15;
  if (v26 != v28)
  {
    free(v26);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

void ZinIrEWUnitInfo::~ZinIrEWUnitInfo(ZinIrEWUnitInfo *this)
{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AEDE70;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(this + 6);
    v4 = *(this + 5);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 5);
    }

    *(this + 6) = v2;
    operator delete(v4);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

uint64_t mlir::anec::anonymous namespace::checkIO(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v43[0] = a2;
  v43[1] = a3;
  mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (!v4)
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
    if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v6) == 1)
    {
      return 1;
    }
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v43);
  v8 = v7;
  v9 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
  if (v8 == 4)
  {
    v11 = *v9;
    v12 = 24;
    v13 = 16;
    v14 = 8;
  }

  else
  {
    if (v10 != 5)
    {
      goto LABEL_30;
    }

    v11 = *mlir::CallableOpInterface::getArgAttrsAttr(v43);
    mlir::CallableOpInterface::getArgAttrsAttr(v43);
    v12 = 32;
    v13 = 24;
    v14 = 16;
  }

  v15 = *(mlir::CallableOpInterface::getArgAttrsAttr(v43) + v14);
  v16 = *(mlir::CallableOpInterface::getArgAttrsAttr(v43) + v13);
  v17 = *(mlir::CallableOpInterface::getArgAttrsAttr(v43) + v12);
  if (!v11 || !v15 || !v16 || !v17)
  {
LABEL_30:
    v41[0] = "Found unkown rank";
    v42 = 259;
    mlir::Operation::emitOpError(a1, v41, &v44);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v51;
        v29 = __p;
        if (v51 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v51 = v27;
        operator delete(v29);
      }

      v22 = v48;
      if (!v48)
      {
        goto LABEL_73;
      }

      v30 = v49;
      v24 = v48;
      if (v49 == v48)
      {
        goto LABEL_72;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          operator delete[](v31);
        }
      }

      while (v30 != v22);
      goto LABEL_71;
    }

    return v18;
  }

  if (v15 > 0x10000)
  {
    v41[0] = "Channel dimension must be less than 65536";
    v42 = 259;
    mlir::Operation::emitOpError(a1, v41, &v44);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
    }

    if (v53 == 1)
    {
      if (v52 != &v53)
      {
        free(v52);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v51;
        v21 = __p;
        if (v51 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v51 = v19;
        operator delete(v21);
      }

      v22 = v48;
      if (!v48)
      {
        goto LABEL_73;
      }

      v23 = v49;
      v24 = v48;
      if (v49 == v48)
      {
LABEL_72:
        v49 = v22;
        operator delete(v24);
LABEL_73:
        if (v46 != &v47)
        {
          free(v46);
        }

        return v18;
      }

      do
      {
        v26 = *--v23;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v23 != v22);
LABEL_71:
      v24 = v48;
      goto LABEL_72;
    }

    return v18;
  }

  if (v16 <= 0x4000 && v17 <= 0x4000)
  {
    if (!mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>(a1))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(v43);
      if (v33 == 5)
      {
        v41[0] = "5D-shaped tensors disallowed on A12 and A13-class ANE";
        v42 = 259;
        mlir::Operation::emitOpError(a1, v41, &v44);
        v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
        if (v44)
        {
          mlir::InFlightDiagnostic::report(&v44);
        }

        if (v53 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v45);
        }

        return v18;
      }
    }

    return 1;
  }

  v41[0] = "Height/Width dimensions must be less than 16384";
  v42 = 259;
  mlir::Operation::emitOpError(a1, v41, &v44);
  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
  if (v44)
  {
    mlir::InFlightDiagnostic::report(&v44);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v51;
      v36 = __p;
      if (v51 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v51 = v34;
      operator delete(v36);
    }

    v22 = v48;
    if (!v48)
    {
      goto LABEL_73;
    }

    v37 = v49;
    v24 = v48;
    if (v49 == v48)
    {
      goto LABEL_72;
    }

    do
    {
      v39 = *--v37;
      v38 = v39;
      *v37 = 0;
      if (v39)
      {
        operator delete[](v38);
      }
    }

    while (v37 != v22);
    goto LABEL_71;
  }

  return v18;
}

BOOL mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>(uint64_t a1)
{
  {
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
  }

  return ((*(**(a1 + 48) + 32))(*(a1 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(a1) != 0;
}

uint64_t mlir::Operation::hasTrait<mlir::OpTrait::RegionOp>(uint64_t a1)
{
  {
    v3 = a1;
    mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>();
    a1 = v3;
  }

  v1 = *(**(a1 + 48) + 32);

  return v1();
}

uint64_t mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(uint64_t ParentOp)
{
  while (1)
  {
    v2 = *(ParentOp + 16);
    if (!v2)
    {
      break;
    }

    ParentOp = mlir::Block::getParentOp(v2);
    if (ParentOp)
    {
      {
        mlir::Operation::getParentWithTrait<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>();
      }

      if (!(*(**(ParentOp + 48) + 32))(*(ParentOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        continue;
      }
    }

    return ParentOp;
  }

  return 0;
}

const char *llvm::getTypeName<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::anec::MinimumFamily<(mlir::anec::Family)2>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::anec::MinimumFamily<mlir::anec::Family::A14>::Impl<Empty>]";
  v6 = 122;
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

size_t llvm::formatv<long long &,long long &>@<X0>(char *__s@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (__s)
  {
    result = strlen(__s);
  }

  else
  {
    result = 0;
  }

  *a5 = __s;
  *(a5 + 8) = result;
  *(a5 + 72) = a5 + 40;
  *(a5 + 16) = a5 + 72;
  *(a5 + 24) = 2;
  *(a5 + 32) = a2;
  *(a5 + 40) = &unk_1F5B17218;
  *(a5 + 48) = a3;
  *(a5 + 56) = &unk_1F5B17218;
  *(a5 + 64) = a4;
  *(a5 + 80) = a5 + 56;
  return result;
}

size_t llvm::formatv<long long const&,long long &,long long &>@<X0>(char *__s@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (__s)
  {
    result = strlen(__s);
  }

  else
  {
    result = 0;
  }

  *a6 = __s;
  *(a6 + 8) = result;
  *(a6 + 88) = a6 + 40;
  *(a6 + 16) = a6 + 88;
  *(a6 + 24) = 3;
  *(a6 + 32) = a2;
  *(a6 + 40) = &unk_1F5B2E7C0;
  *(a6 + 48) = a3;
  *(a6 + 56) = &unk_1F5B17218;
  *(a6 + 64) = a4;
  *(a6 + 72) = &unk_1F5B17218;
  *(a6 + 80) = a5;
  *(a6 + 96) = a6 + 56;
  *(a6 + 104) = a6 + 72;
  return result;
}

uint64_t mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::anec::ANECompilerVerifierInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::anec::ANECompilerVerifierInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::anec::ANECompilerVerifierInterface,mlir::anec::detail::ANECompilerVerifierInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::anec::ANECompilerVerifierInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::anec::ANECompilerVerifierInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::anec::ANECompilerVerifierInterface]";
  v6 = 90;
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

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 24;
  v3 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 24);
  v9 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x1E12E59E0](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v2;
    v5 = *(a1 + 87);
    v6 = *(a1 + 96);
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
LABEL_3:
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

LABEL_4:
  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E12E56A0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E12E56B0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        v21 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v21) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (v21 >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      v17 = v16;
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

__CFString *mlir::anec::anonymous namespace::getANECNetFormat(uint64_t a1)
{
  v1 = *(*a1 + 136);
  if (v1 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v20 = a1;
    Signedness = mlir::IntegerType::getSignedness(&v20);
    result = @"Int8";
    if (Signedness != 1)
    {
      if (mlir::IntegerType::getSignedness(&v20))
      {
        return @"UInt8";
      }

      else
      {
        return @"Int8";
      }
    }
  }

  else if (v1 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v1 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v20 = a1;
    if (mlir::Type::isF16(&v20))
    {
      return @"Float16";
    }

    else
    {
      return @"Float32";
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::handleWeights(uint64_t a1, uint64_t a2, uint64_t a3, mlir *a4, void **a5, void *a6, BOOL *a7)
{
  v50 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v50);
  v14 = *(*(DefiningOp + 6) + 16);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    *a5 = mlir::anec::ANECIRWeightSerializer::lookupConstant(a3, DefiningOp);
    if (*(a3 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&__dst, *(a3 + 80), *(a3 + 88));
    }

    else
    {
      __dst = *(a3 + 80);
    }

    WeightFileIndex = mlir::anec::ANECIRNetwork::getWeightFileIndex(a2, &__dst, a6, a4);
    v24 = WeightFileIndex;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      if (v24)
      {
LABEL_22:
        *a7 = 0;
        return 1;
      }
    }

    else if (WeightFileIndex)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
  {
    v15 = DefiningOp;
  }

  else
  {
    v15 = 0;
  }

  v49 = v15;
  if (!*(v15 + 47) || (v51.var0 = "offset", v51.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(v15, v51), (v17 & 1) == 0))
  {
    v52.var0 = "offset";
    v52.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((v15 + 56), v52);
  }

  v48 = InherentAttr;
  *a5 = mlir::IntegerAttr::getUInt(&v48);
  mlir::pdl::OperationOp::getOpName(&v49, &__dst);
  if (__dst.__r_.__value_.__s.__data_[16] != 1 || (mlir::pdl::OperationOp::getOpName(&v49, &__len), (v18 = __len.__r_.__value_.__r.__words[0]) == 0))
  {
    v21 = 0;
    LODWORD(v22) = 0;
LABEL_29:
    v26 = 0;
    v22 = v22;
    goto LABEL_30;
  }

  size = __len.__r_.__value_.__l.__size_;
  if (__len.__r_.__value_.__l.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_86;
  }

  if (__len.__r_.__value_.__l.__size_ >= 0x17)
  {
    if ((__len.__r_.__value_.__l.__size_ | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (__len.__r_.__value_.__l.__size_ | 7) + 1;
    }

    p_dst = operator new(v25);
    __dst.__r_.__value_.__l.__size_ = size;
    __dst.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_27;
  }

  *(&__dst.__r_.__value_.__s + 23) = __len.__r_.__value_.__s.__data_[8];
  p_dst = &__dst;
  if (__len.__r_.__value_.__l.__size_)
  {
LABEL_27:
    memmove(p_dst, v18, size);
  }

  *(p_dst + size) = 0;
  v21 = __dst.__r_.__value_.__r.__words[0];
  LODWORD(v22) = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  v22 = __dst.__r_.__value_.__l.__size_;
  v26 = 1;
LABEL_30:
  *a7 = v22 != 0;
  Name = mlir::pdl_interp::ApplyRewriteOp::getName(&v49);
  if (!Name)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_42;
  }

  v29 = v28;
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_86:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v30 = Name;
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v28 | 7) + 1;
    }

    v31 = operator new(v35);
    __dst.__r_.__value_.__l.__size_ = v29;
    __dst.__r_.__value_.__r.__words[2] = v35 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v31;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v28;
    v31 = &__dst;
    if (!v28)
    {
      goto LABEL_41;
    }
  }

  memmove(v31, v30, v29);
LABEL_41:
  *(v31 + v29) = 0;
  v34 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v32 = __dst.__r_.__value_.__l.__size_;
  v33 = __dst.__r_.__value_.__r.__words[0];
LABEL_42:
  memset(&__len, 0, sizeof(__len));
  if ((v34 & 0x80u) == 0)
  {
    v36 = &__dst;
  }

  else
  {
    v36 = v33;
  }

  if ((v34 & 0x80u) == 0)
  {
    v32 = v34;
  }

  std::string::append[abi:nn200100]<char const*,0>(&__len, v36, (v36 + v32));
  if (std::__fs::filesystem::path::__root_directory(&__len).__size_)
  {
    goto LABEL_59;
  }

  if (*(a2 + 567) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 544), *(a2 + 552));
  }

  else
  {
    __p = *(a2 + 544);
  }

  v37 = *&__p.__r_.__value_.__l.__data_;
  v44[0] = __p.__r_.__value_.__r.__words[2];
  *(v44 + 3) = *(&__p.__r_.__value_.__r.__words[2] + 3);
  v38 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  if (v38 < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v37, *(&v37 + 1));
  }

  else
  {
    *&v45.__r_.__value_.__l.__data_ = v37;
    LODWORD(v45.__r_.__value_.__r.__words[2]) = v44[0];
    *(&v45.__r_.__value_.__r.__words[2] + 3) = *(v44 + 3);
    *(&v45.__r_.__value_.__s + 23) = v38;
  }

  if (!std::__fs::filesystem::path::__root_directory(&__len).__size_)
  {
    if (std::__fs::filesystem::path::__filename(&v45).__size_)
    {
      std::string::push_back(&v45, 47);
    }

    if ((__len.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_len = &__len;
    }

    else
    {
      p_len = __len.__r_.__value_.__r.__words[0];
    }

    if ((__len.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__len.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __len.__r_.__value_.__l.__size_;
    }

    std::string::append(&v45, p_len, v40);
    if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  std::string::operator=(&v45, &__len);
  if (SHIBYTE(__len.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_56:
    operator delete(__len.__r_.__value_.__l.__data_);
  }

LABEL_57:
  __len = v45;
  *(&v45.__r_.__value_.__s + 23) = 0;
  v45.__r_.__value_.__s.__data_[0] = 0;
  if ((v38 & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_72:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_73;
  }

  operator delete(v37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_72;
  }

LABEL_59:
  if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_60:
    v45 = __len;
    goto LABEL_74;
  }

LABEL_73:
  std::string::__init_copy_ctor_external(&v45, __len.__r_.__value_.__l.__data_, __len.__r_.__value_.__l.__size_);
LABEL_74:
  v41 = mlir::anec::ANECIRNetwork::getWeightFileIndex(a2, &v45, a6, a4);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_76:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_82;
    }
  }

  else if ((SHIBYTE(__len.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

  operator delete(__len.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_77:
    if (v26)
    {
      goto LABEL_78;
    }

    return (v41 & 1) != 0;
  }

LABEL_82:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (!v26)
  {
    return (v41 & 1) != 0;
  }

LABEL_78:
  operator delete(v21);
  return (v41 & 1) != 0;
}

uint64_t mlir::anec::anonymous namespace::fillPalettizedKernelInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = *MEMORY[0x1E69E9840];
  v51[0] = a2;
  v51[1] = a3;
  *&v50 = a4;
  *(&v50 + 1) = a5;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v50);
  if (v14 < 2 || (v15 = *ArgAttrsAttr, *ArgAttrsAttr == 1))
  {
    *&__src = a7;
    std::vector<long long>::__assign_with_size[abi:nn200100]<long long const*,long long const*>((a1 + 152), &__src, &__src + 8, 1uLL);
    LODWORD(__src) = a6;
    std::vector<int>::__assign_with_size[abi:nn200100]<int const*,int const*>((a1 + 128), &__src, &__src + 4, 1uLL);
    goto LABEL_4;
  }

  v21 = *(mlir::CallableOpInterface::getArgAttrsAttr(v51) + 8 * a9);
  v46 = a1;
  if (v21)
  {
    if (v21 >> 61)
    {
      goto LABEL_85;
    }

    v22 = operator new(8 * v21);
    v23 = &v22[8 * v21];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v45 = v21;
  if (v15 >= 1)
  {
    v26 = 0;
    v48 = v15;
    v49 = v21 / v15;
    v27 = v22;
    v47 = a8 / v15;
    while (1)
    {
      v28 = v49;
      if (v49 >= 1)
      {
        break;
      }

LABEL_44:
      a7 += v47;
      if (++v26 == v48)
      {
        goto LABEL_64;
      }
    }

    while (1)
    {
      while (v27 < v23)
      {
        *v27 = a7;
        v27 += 8;
        if (!--v28)
        {
          goto LABEL_44;
        }
      }

      v29 = v27 - v22;
      v30 = (v27 - v22) >> 3;
      v31 = v30 + 1;
      if ((v30 + 1) >> 61)
      {
        break;
      }

      if ((v23 - v22) >> 2 > v31)
      {
        v31 = (v23 - v22) >> 2;
      }

      if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
      {
        v32 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      if (v32)
      {
        if (v32 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        v33 = operator new(8 * v32);
      }

      else
      {
        v33 = 0;
      }

      v34 = &v33[8 * v30];
      v23 = &v33[8 * v32];
      *v34 = a7;
      v27 = v34 + 8;
      memcpy(v33, v22, v29);
      if (v22)
      {
        operator delete(v22);
      }

      v22 = v33;
      if (!--v28)
      {
        goto LABEL_44;
      }
    }

LABEL_85:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v27 = v22;
LABEL_64:
  a1 = v46;
  std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>((v46 + 152), v22, v27, (v27 - v22) >> 3);
  if (v21)
  {
    if (v21 >> 62)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v35 = operator new(4 * v21);
    v36 = v35;
    v37 = v35 + v21;
    v38 = (v45 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v39 = v35;
    if (v38 < 7)
    {
      goto LABEL_90;
    }

    v40 = v38 + 1;
    v39 = v35 + (v40 & 0x7FFFFFFFFFFFFFF8);
    v41 = vdupq_n_s32(a6);
    v42 = v35 + 1;
    v43 = v40 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v42[-1] = v41;
      *v42 = v41;
      v42 += 2;
      v43 -= 8;
    }

    while (v43);
    if (v40 != (v40 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_90:
      do
      {
        *v39++ = a6;
      }

      while (v39 != v37);
    }

    v44 = *(v46 + 128);
    if (!v44)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v37 = 0;
  v36 = 0;
  v44 = *(v46 + 128);
  if (v44)
  {
LABEL_72:
    *(v46 + 136) = v44;
    operator delete(v44);
  }

LABEL_73:
  *(v46 + 128) = v36;
  *(v46 + 136) = v37;
  *(v46 + 144) = v37;
  if (v22)
  {
    operator delete(v22);
  }

LABEL_4:
  *&__src = mlir::ElementsAttr::isSplat(v51);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&__src);
  __src = v50;
  isSplat = mlir::ElementsAttr::isSplat(&__src);
  v18 = *(*isSplat + 136);
  if (v18 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v18 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
    {
      v19 = 4;
    }

    else if (v18 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
    {
      v19 = 6;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_21;
  }

  v52 = isSplat;
  Width = mlir::IntegerType::getWidth(&v52);
  if (Width == 16)
  {
    if (mlir::IntegerType::getSignedness(&v52) == 1)
    {
      v19 = 3;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (Width != 8)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  if (mlir::IntegerType::getSignedness(&v52) == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

LABEL_21:
  result = 0;
  if (IntOrFloatBitWidth > 5)
  {
    if (IntOrFloatBitWidth == 6)
    {
      switch(v19)
      {
        case 4:
          v19 = 7;
          v25 = 25;
          goto LABEL_83;
        case 2:
          v19 = 7;
          v25 = 24;
          goto LABEL_83;
        case 1:
          v19 = 7;
          v25 = 23;
          goto LABEL_83;
      }
    }

    else
    {
      if (IntOrFloatBitWidth != 8)
      {
        return result;
      }

      if (v19 == 4)
      {
        v19 = 8;
        v25 = 27;
        goto LABEL_83;
      }
    }

    return 0;
  }

  if (IntOrFloatBitWidth == 2)
  {
    switch(v19)
    {
      case 4:
        v25 = 13;
        goto LABEL_83;
      case 2:
        v19 = 4;
        v25 = 12;
        goto LABEL_83;
      case 1:
        v19 = 4;
        v25 = 11;
        goto LABEL_83;
    }

    return 0;
  }

  if (IntOrFloatBitWidth != 4)
  {
    return result;
  }

  if (v19 == 4)
  {
    v19 = 6;
    v25 = 21;
    goto LABEL_83;
  }

  if (v19 == 2)
  {
    v19 = 6;
    v25 = 20;
    goto LABEL_83;
  }

  if (v19 != 1)
  {
    return 0;
  }

  v19 = 6;
  v25 = 19;
LABEL_83:
  *(a1 + 80) = v19;
  *(a1 + 84) = v25;
  return 1;
}

void ZinIrLinearUnitInfo::~ZinIrLinearUnitInfo(ZinIrLinearUnitInfo *this)
{
  *this = &unk_1F5B2E7F0;
  if (*(this + 320) == 1)
  {
    v2 = *(this + 37);
    if (v2)
    {
      *(this + 38) = v2;
      operator delete(v2);
    }

    v3 = *(this + 34);
    if (v3)
    {
      *(this + 35) = v3;
      operator delete(v3);
    }

    v4 = *(this + 31);
    if (v4)
    {
      *(this + 32) = v4;
      operator delete(v4);
    }
  }

  ZinIrKernelUnitInfo::~ZinIrKernelUnitInfo(this);
}

{
  *this = &unk_1F5B2E7F0;
  if (*(this + 320) == 1)
  {
    v2 = *(this + 37);
    if (v2)
    {
      *(this + 38) = v2;
      operator delete(v2);
    }

    v3 = *(this + 34);
    if (v3)
    {
      *(this + 35) = v3;
      operator delete(v3);
    }

    v4 = *(this + 31);
    if (v4)
    {
      *(this + 32) = v4;
      operator delete(v4);
    }
  }

  *this = &unk_1F5B2E810;
  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    *(this + 17) = v6;
    operator delete(v6);
  }

  *this = &unk_1F5AEDE70;
  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(this + 6);
    v9 = *(this + 5);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 5);
    }

    *(this + 6) = v7;
    operator delete(v9);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

void ZinIrKernelUnitInfo::~ZinIrKernelUnitInfo(ZinIrKernelUnitInfo *this)
{
  *this = &unk_1F5B2E810;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_1F5AEDE70;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5B2E810;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_1F5AEDE70;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

{
  *this = &unk_1F5B2E810;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  *this = &unk_1F5AEDE70;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = *(this + 6);
    v6 = *(this + 5);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 5);
    }

    *(this + 6) = v4;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *std::vector<long long>::__assign_with_size[abi:nn200100]<long long const*,long long const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 <= (v7 - *result) >> 3)
  {
    v17 = result[1];
    v18 = v17 - v8;
    if (a4 <= (v17 - v8) >> 3)
    {
      v21 = a3 - __src;
      if (v21)
      {
        result = memmove(*result, __src, v21);
      }

      v22 = v8 + v21;
      goto LABEL_28;
    }

    v19 = &__src[v18];
    if (v17 != v8)
    {
      result = memmove(*result, __src, v18);
    }

    v20 = v6[1];
    v23 = v20;
    if (v19 != a3)
    {
      v24 = &a3[v8] - &__src[v17] - 8;
      if (v24 >= 0x38)
      {
        v23 = v6[1];
        if (v8 + v20 - &__src[v17] >= 0x20)
        {
          v25 = (v24 >> 3) + 1;
          v26 = 8 * (v25 & 0x3FFFFFFFFFFFFFFCLL);
          v19 += v26;
          v23 = (v20 + v26);
          v27 = (v20 + 16);
          v28 = &__src[v17 - v8 + 16];
          v29 = v25 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = *v28;
            *(v27 - 1) = *(v28 - 1);
            *v27 = v30;
            v27 += 2;
            v28 += 32;
            v29 -= 4;
          }

          while (v29);
          if (v25 == (v25 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v23 = v6[1];
      }

      do
      {
        v31 = *v19;
        v19 += 8;
        *v23 = v31;
        v23 += 8;
      }

      while (v19 != a3);
    }

LABEL_27:
    v22 = v23;
LABEL_28:
    v6[1] = v22;
    return result;
  }

  if (v8)
  {
    result[1] = v8;
    v9 = v8;
    v10 = a4;
    operator delete(v9);
    a4 = v10;
    v7 = 0;
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  if (a4 >> 61)
  {
    goto LABEL_29;
  }

  v11 = v7 >> 2;
  if (v7 >> 2 <= a4)
  {
    v11 = a4;
  }

  v12 = v7 >= 0x7FFFFFFFFFFFFFF8;
  v13 = 0x1FFFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v13 = v11;
  }

  if (v13 >> 61)
  {
LABEL_29:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v14 = v13;
  result = operator new(8 * v13);
  v15 = result;
  *v6 = result;
  v6[2] = &result[v14];
  if (__src != a3)
  {
    v16 = ((a3 - __src - 8) & 0xFFFFFFFFFFFFFFF8) + 8;
    result = memcpy(result, __src, v16);
    v15 += v16;
  }

  v6[1] = v15;
  return result;
}