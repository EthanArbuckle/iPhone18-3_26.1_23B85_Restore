uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n > 10)
  {
    if (__n == 11)
    {
      if (!memcmp(__s1, "param_decls", 0xBuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 13)
    {
      if (!memcmp(__s1, "function_type", 0xDuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 14 && !memcmp(__s1, "safeTransforms", 0xEuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n == 8)
  {
    if (!memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      return *a2;
    }

    if (!memcmp(__s1, "no_inline", 9uLL))
    {
      return a2[3];
    }

    if (!memcmp(__s1, "res_attrs", 9uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n != 10 || memcmp(__s1, "externAttr", 0xAuLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 10)
  {
    switch(a3)
    {
      case 11:
        result = memcmp(__s1, "param_decls", 0xBuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[4] = v8;
          }

          else
          {
            v5[4] = 0;
          }
        }

        break;
      case 13:
        result = memcmp(__s1, "function_type", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v12 = a4;
            }

            else
            {
              v12 = 0;
            }

            v5[2] = v12;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
      case 14:
        result = memcmp(__s1, "safeTransforms", 0xEuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
            {
              v6 = a4;
            }

            else
            {
              v6 = 0;
            }

            v5[6] = v6;
          }

          else
          {
            v5[6] = 0;
          }
        }

        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 8:
        result = memcmp(__s1, "sym_name", 8uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
            {
              v7 = a4;
            }

            else
            {
              v7 = 0;
            }

            v5[7] = v7;
          }

          else
          {
            v5[7] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            *result = v14;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "no_inline", 9uLL);
          if (result)
          {
            result = memcmp(__s1, "res_attrs", 9uLL);
            if (!result)
            {
              if (a4)
              {
                if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
                {
                  v11 = a4;
                }

                else
                {
                  v11 = 0;
                }

                v5[5] = v11;
              }

              else
              {
                v5[5] = 0;
              }
            }
          }

          else if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            v5[3] = v15;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
      case 10:
        result = memcmp(__s1, "externAttr", 0xAuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[1] = v13;
          }

          else
          {
            v5[1] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "arg_attrs", 9, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "externAttr", 10, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "function_type", 13, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "no_inline", 9, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "param_decls", 11, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "res_attrs", 9, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "safeTransforms", 14, v10);
  }

  v11 = a2[7];
  if (v11)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(v9, "externAttr", 0xA, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v10, "function_type", 0xD, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "no_inline", 9, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v12, "param_decls", 0xB, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v13, "res_attrs", 9, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v14, "safeTransforms", 0xE, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v15, "sym_name", 8, a3, a4) & 1) != 0)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: ";
        v29 = 32;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: dictionary of named attribute values";
        v29 = 68;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x40uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::ODIE::Compiler::CoreML::FuncOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ExternAttr>(a1, v3 + 1) && (mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 2) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && (mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v3 + 4) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DictionaryAttr>(a1, v3 + 6))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 7) & 1;
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ExternAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExternAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ExternAttr]";
  v38 = 90;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DictionaryAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DictionaryAttr]";
  v38 = 70;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96) = result;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::FuncOp *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  v5 = v2[2];
  if (v5)
  {
    v6 = v2[4];
    if (v6)
    {
      v7 = v2[7];
      if (v7)
      {
        v9 = v2[1];
        v10 = v2[3];
        v11 = v2[5];
        v12 = v2[6];
        v37[0] = *this;
        if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37) & 1) != 0 && (v37[0] = *this, (mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v5, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "param_decls", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v10, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(v9, "externAttr", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(v12, "safeTransforms", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v11, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)))
        {
          return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(*this, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40), "bodyRegion", 10, 0) & 1;
        }

        else
        {
          return 0;
        }
      }

      v35[0] = "requires attribute 'sym_name'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v43;
          v30 = __p;
          if (v43 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v43 = v28;
          operator delete(v30);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v31 = v41;
        v19 = v40;
        if (v41 == v40)
        {
LABEL_63:
          v41 = v17;
          operator delete(v19);
LABEL_64:
          if (v38 != &v39)
          {
            free(v38);
          }

          return v13;
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
LABEL_62:
        v19 = v40;
        goto LABEL_63;
      }
    }

    else
    {
      v35[0] = "requires attribute 'param_decls'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v43;
          v24 = __p;
          if (v43 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v43 = v22;
          operator delete(v24);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v25 = v41;
        v19 = v40;
        if (v41 == v40)
        {
          goto LABEL_63;
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
        goto LABEL_62;
      }
    }
  }

  else
  {
    v35[0] = "requires attribute 'function_type'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v43;
        v16 = __p;
        if (v43 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v43 = v14;
        operator delete(v16);
      }

      v17 = v40;
      if (!v40)
      {
        goto LABEL_64;
      }

      v18 = v41;
      v19 = v40;
      if (v41 == v40)
      {
        goto LABEL_63;
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
      goto LABEL_62;
    }
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  if (v5 == a2 || *(v5 + 8) == a2)
  {
    return 1;
  }

  v33 = "region #";
  v34 = 259;
  mlir::Operation::emitOpError(a1, &v33, &v38);
  if (v38)
  {
    LODWORD(v31[0]) = 5;
    v31[1] = a5;
    v9 = v31;
    v10 = v40;
    if (v41 >= v42)
    {
      if (v40 <= v31 && v40 + 24 * v41 > v31)
      {
        v27 = v31 - v40;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v10 = v40;
        v9 = v40 + v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
        v9 = v31;
        v10 = v40;
      }
    }

    v11 = &v10[24 * v41];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v41;
  }

  if (a4)
  {
    v30 = 1283;
    v29[0] = " ('";
    v29[2] = a3;
    v29[3] = a4;
    v31[0] = v29;
    v31[2] = "') ";
    v32 = 770;
    if (!v38)
    {
      goto LABEL_14;
    }

LABEL_11:
    mlir::Diagnostic::operator<<(&v39, v31);
    if (v38)
    {
      v35 = 3;
      v36 = "failed to verify constraint: region with at most 1 blocks";
      v37 = 57;
      v14 = &v35;
      v15 = v40;
      if (v41 >= v42)
      {
        if (v40 <= &v35 && v40 + 24 * v41 > &v35)
        {
          v28 = &v35 - v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v15 = v40;
          v14 = (v40 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v43, v41 + 1, 24);
          v14 = &v35;
          v15 = v40;
        }
      }

      v16 = &v15[24 * v41];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v41;
    }

    goto LABEL_14;
  }

  v31[0] = " ";
  v32 = 259;
  if (v38)
  {
    goto LABEL_11;
  }

LABEL_14:
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    mlir::InFlightDiagnostic::report(&v38);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v47;
      v20 = __p;
      if (v47 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v47 = v18;
      operator delete(v20);
    }

    v21 = v44;
    if (v44)
    {
      v22 = v45;
      v23 = v44;
      if (v45 != v44)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            operator delete[](v24);
          }
        }

        while (v22 != v21);
        v23 = v44;
      }

      v45 = v21;
      operator delete(v23);
    }

    if (v40 != v43)
    {
      free(v40);
    }
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "approximate";
  v56.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 56;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "approximate", 11, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::GELUOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x6D69786F72707061 ? (v4 = *(a3 + 3) == 0x6574616D69786F72) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::GELUOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x6D69786F72707061 && *(a2 + 3) == 0x6574616D69786F72)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GELUOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "approximate", 11, *a2);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: The gelu approximation algorithm to use: 'none' | 'tanh' | 'sigmoid'";
        v29 = 100;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
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
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::ODIE::Compiler::CoreML::GELUOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(a1, *(a2 + 256));
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ODIE::Compiler::CoreML::ApproximateAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ApproximateAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ApproximateAttr]";
  v38 = 95;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

mlir::MLIRContext *mlir::ODIE::Compiler::CoreML::GELUOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v4 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v4);
  if (!*a2)
  {
    result = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(result, 0);
    *a2 = result;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GELUOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::GELUOp *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v29 = v2;
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(v3, "approximate", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v29) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v4 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps10(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    v26 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v29 = mlir::Type::cast<mlir::ShapedType>(&v26);
    v30 = v7;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v29);
    v10 = v9;
    v25 = (*(*this - 8) & 0xFFFFFFFFFFFFFFF8);
    v27[0] = mlir::Type::cast<mlir::ShapedType>(&v25);
    v27[1] = v11;
    v12 = mlir::CallableOpInterface::getArgAttrsAttr(v27);
    if (v10 == v13 && !memcmp(ArgAttrsAttr, v12, 8 * v10))
    {
      return 1;
    }

    v27[0] = "failed to verify that Result 0 and operand 0 must have the same shape.";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &v29);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
    if (v29)
    {
      v15 = result;
      mlir::InFlightDiagnostic::report(&v29);
      result = v15;
    }

    if (v38 == 1)
    {
      v16 = result;
      mlir::Diagnostic::~Diagnostic(&v30);
      return v16;
    }
  }

  else
  {
    v27[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v28 = 259;
    mlir::OpState::emitOpError(this, v27, &v29);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
    v16 = result;
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
      result = v16;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
        result = v16;
      }

      v17 = __p;
      if (__p)
      {
        v18 = v36;
        v19 = __p;
        if (v36 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v36 = v17;
        operator delete(v19);
        result = v16;
      }

      v20 = v33;
      if (v33)
      {
        v21 = v34;
        v22 = v33;
        if (v34 != v33)
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
          v22 = v33;
        }

        v34 = v20;
        operator delete(v22);
        result = v16;
      }

      if (v31 != &v32)
      {
        free(v31);
        return v16;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::GatherNdOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps21(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps21(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(a2, a1))
  {
    goto LABEL_24;
  }

  v12 = *a2;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v55 = v12;
    mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_19;
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
    goto LABEL_21;
  }

LABEL_19:
  v22 = 0;
LABEL_21:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isSignedInteger(v56, 16) || mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

LABEL_24:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v24 = &v58;
    v25 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v25 = v62;
        v24 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v24 = &v58;
        v25 = v62;
      }
    }

    v26 = &v25[24 * v63];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v29 = &v58;
      v30 = v62;
      if (v28 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v28 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v28 + 1, 24);
          v30 = v62;
          v29 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v28 + 1, 24);
          v29 = &v58;
          v30 = v62;
        }
      }

      v31 = &v30[24 * v63];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be CoreML Tensor of Index type. values, but got ";
        v60 = 54;
        v34 = &v58;
        v35 = v62;
        if (v33 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v33 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v33 + 1, 24);
            v35 = v62;
            v34 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v33 + 1, 24);
            v34 = &v58;
            v35 = v62;
          }
        }

        v36 = &v35[24 * v63];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v63;
        if (v61[0])
        {
          v38 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v39 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v39 = v62;
              v38 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v38 = &v58;
              v39 = v62;
            }
          }

          v40 = &v39[24 * v63];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v63;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
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

    v42 = __p;
    if (__p)
    {
      v43 = v69;
      v44 = __p;
      if (v69 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v69 = v42;
      operator delete(v44);
    }

    v45 = v66;
    if (v66)
    {
      v46 = v67;
      v47 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v66;
      }

      v67 = v45;
      operator delete(v47);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v12[0] = v13;
  v12[1] = 1;
  v10[1] = 1;
  v11 = 0;
  v9 = 0;
  v10[0] = &v11;
  v8[0] = &v9;
  v8[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v16, 1) & 1) != 0 && (v19 = 257, ((*(*a1 + 400))(a1, "at", 2, v18)) && (v5 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v13, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && ((*(*a1 + 280))(a1) & 1) != 0 && (v18[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v18)) && (v11 = v18[0], ((*(*a1 + 120))(a1)) && (v18[0] = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, v18)) && (v9 = v18[0], ((*(*a1 + 296))(a1)) && (v19 = 257, ((*(*a1 + 400))(a1, "to", 2, v18)) && (v7 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7)) && (v18[0] = v7, (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (mlir::OperationState::addTypes(a2, v18, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v10, v4, a2 + 16)))
  {
    return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v12, v8, v5, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::ODIE::Compiler::CoreML::GatherNdOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] - v9 > 1uLL)
  {
    *v9 = 29793;
    v8[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v8, "at", 2uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, "(", 1uLL);
  }

  else
  {
    *v19 = 40;
    ++v18[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ",", 1uLL);
  }

  else
  {
    *v21 = 44;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ")", 1uLL);
  }

  else
  {
    *v25 = 41;
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
  if (v28[3] - v29 > 1uLL)
  {
    *v29 = 28532;
    v28[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v28, "to", 2uLL);
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  if (*(*this + 9))
  {
    v32 = *this - 16;
  }

  else
  {
    v32 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v32, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v37 = v39;
  v38 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v35, v37, v38);
  if (v37 != v39)
  {
    free(v37);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::GetShapeOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::GetShapeOp *this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v77 = v6;
  if (!v6)
  {
    a3(&v81, a4);
    if (v81)
    {
      LODWORD(v78) = 3;
      v79 = "expected DictionaryAttr to set properties";
      v80 = 41;
      v26 = &v78;
      v27 = v83;
      if (v84 >= v85)
      {
        if (v83 <= &v78 && v83 + 24 * v84 > &v78)
        {
          v70 = &v78 - v83;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v27 = v83;
          v26 = (v83 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
          v26 = &v78;
          v27 = v83;
        }
      }

      v28 = &v27[24 * v84];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v84;
      if (v81)
      {
        mlir::InFlightDiagnostic::report(&v81);
      }
    }

    if (v92 != 1)
    {
      return 0;
    }

    if (v91 != &v92)
    {
      free(v91);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v90;
      v32 = __p;
      if (v90 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v90 = v30;
      operator delete(v32);
    }

    v21 = v87;
    if (!v87)
    {
      goto LABEL_70;
    }

    v33 = v88;
    v23 = v87;
    if (v88 == v87)
    {
LABEL_69:
      v88 = v21;
      operator delete(v23);
LABEL_70:
      if (v83 != v86)
      {
        free(v83);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v87;
    goto LABEL_69;
  }

  v94.var0 = "arg_attrs";
  v94.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v77, v94);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 54;
        v10 = &v78;
        v11 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v71 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v11 = v83;
            v10 = (v83 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v10 = &v78;
            v11 = v83;
          }
        }

        v12 = &v11[24 * v84];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v84;
        if (v81)
        {
          v14 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v9);
          v15 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v72 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v15 = v83;
              v14 = (v83 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v14 = &v78;
              v15 = v83;
            }
          }

          v16 = &v15[24 * v84];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if ((v92 & 1) == 0)
      {
        return 0;
      }

      if (v91 != &v92)
      {
        free(v91);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v90;
        v20 = __p;
        if (v90 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v90 = v18;
        operator delete(v20);
      }

      v21 = v87;
      if (!v87)
      {
        goto LABEL_70;
      }

      v22 = v88;
      v23 = v87;
      if (v88 == v87)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v95.var0 = "externalize";
  v95.var1 = 11;
  v36 = mlir::DictionaryAttr::get(&v77, v95);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v37 = v36;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 56;
        v38 = &v78;
        v39 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v73 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v39 = v83;
            v38 = (v83 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v38 = &v78;
            v39 = v83;
          }
        }

        v40 = &v39[24 * v84];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v84;
        if (v81)
        {
          v42 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v37);
          v43 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v74 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v43 = v83;
              v42 = (v83 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v42 = &v78;
              v43 = v83;
            }
          }

          v44 = &v43[24 * v84];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if ((v92 & 1) == 0)
      {
        return 0;
      }

      if (v91 != &v92)
      {
        free(v91);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v90;
        v48 = __p;
        if (v90 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v90 = v46;
        operator delete(v48);
      }

      v21 = v87;
      if (!v87)
      {
        goto LABEL_70;
      }

      v49 = v88;
      v23 = v87;
      if (v88 == v87)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v96.var0 = "function_type";
  v96.var1 = 13;
  v52 = mlir::DictionaryAttr::get(&v77, v96);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v53 = v52;
      a3(&v81, a4);
      if (v81)
      {
        LODWORD(v78) = 3;
        v80 = 58;
        v54 = &v78;
        v55 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v78 && v83 + 24 * v84 > &v78)
          {
            v75 = &v78 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v55 = v83;
            v54 = (v83 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v54 = &v78;
            v55 = v83;
          }
        }

        v56 = &v55[24 * v84];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v84;
        if (v81)
        {
          v58 = &v78;
          mlir::DiagnosticArgument::DiagnosticArgument(&v78, v53);
          v59 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v78 && v83 + 24 * v84 > &v78)
            {
              v76 = &v78 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v59 = v83;
              v58 = (v83 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v58 = &v78;
              v59 = v83;
            }
          }

          v60 = &v59[24 * v84];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v84;
          if (v81)
          {
            mlir::InFlightDiagnostic::report(&v81);
          }
        }
      }

      if (v92 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v82);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v97.var0 = "no_inline";
  v97.var1 = 9;
  v62 = mlir::DictionaryAttr::get(&v77, v97);
  v78 = v62;
  if (!v62)
  {
LABEL_89:
    v98.var0 = "param_decls";
    v98.var1 = 11;
    v65 = mlir::DictionaryAttr::get(&v77, v98);
    v78 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_104;
      }

      a1[4] = v65;
    }

    v99.var0 = "priv";
    v99.var1 = 4;
    v66 = mlir::DictionaryAttr::get(&v77, v99);
    v78 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_104;
      }

      a1[5] = v66;
    }

    v100.var0 = "res_attrs";
    v100.var1 = 9;
    v67 = mlir::DictionaryAttr::get(&v77, v100);
    v78 = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_87;
      }

      a1[6] = v67;
    }

    v101.var0 = "sym_name";
    v101.var1 = 8;
    v68 = mlir::DictionaryAttr::get(&v77, v101);
    v78 = v68;
    if (v68)
    {
      if (*(*v68 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        a3(&v81, a4);
        goto LABEL_104;
      }

      a1[7] = v68;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_89;
  }

  a3(&v81, a4);
LABEL_87:
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v81, v63);
LABEL_104:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v78);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v81);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v65[6] = *MEMORY[0x1E69E9840];
  v62 = a1;
  v63 = v65;
  v64 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v62, "arg_attrs", 9, *a2);
  v5 = v64;
  if (v64 >= HIDWORD(v64))
  {
    v46 = NamedAttr;
    v47 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
    v4 = v47;
    NamedAttr = v46;
    v5 = v64;
  }

  v6 = (v63 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v64 + 1;
  LODWORD(v64) = v64 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v62, "externalize", 11, v8);
    v11 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v48 = v9;
      v49 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v10 = v49;
      v9 = v48;
      v11 = v64;
    }

    v12 = (v63 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v62, "function_type", 13, v13);
    v16 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v50 = v14;
      v51 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v15 = v51;
      v14 = v50;
      v16 = v64;
    }

    v17 = (v63 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v62, "no_inline", 9, v18);
    v21 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v52 = v19;
      v53 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v20 = v53;
      v19 = v52;
      v21 = v64;
    }

    v22 = (v63 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v62, "param_decls", 11, v23);
    v26 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v54 = v24;
      v55 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v25 = v55;
      v24 = v54;
      v26 = v64;
    }

    v27 = (v63 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v62, "priv", 4, v28);
    v31 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v56 = v29;
      v57 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v30 = v57;
      v29 = v56;
      v31 = v64;
    }

    v32 = (v63 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v62, "res_attrs", 9, v33);
    v36 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v58 = v34;
      v59 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v35 = v59;
      v34 = v58;
      v36 = v64;
    }

    v37 = (v63 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v62, "sym_name", 8, v38);
    v41 = v64;
    if (v64 >= HIDWORD(v64))
    {
      v60 = v39;
      v61 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 16);
      v40 = v61;
      v39 = v60;
      v41 = v64;
    }

    v42 = (v63 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    v7 = v64 + 1;
    LODWORD(v64) = v64 + 1;
  }

  v43 = v63;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v63 == v65)
    {
      return DictionaryAttr;
    }

    goto LABEL_36;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v62, v63, v7);
  v43 = v63;
  if (v63 != v65)
  {
LABEL_36:
    free(v43);
  }

  return DictionaryAttr;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 8)
  {
    if (__n == 4)
    {
      if (!memcmp(__s1, "priv", 4uLL))
      {
        return a2[5];
      }
    }

    else if (__n == 8 && !memcmp(__s1, "sym_name", 8uLL))
    {
      return a2[7];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "function_type", 0xDuLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n == 11)
  {
    if (!memcmp(__s1, "externalize", 0xBuLL))
    {
      return a2[1];
    }

    if (!memcmp(__s1, "param_decls", 0xBuLL))
    {
      return a2[4];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (!memcmp(__s1, "no_inline", 9uLL))
  {
    return a2[3];
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[6];
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 8)
  {
    if (a3 == 4)
    {
      result = memcmp(__s1, "priv", 4uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[5] = v12;
        }

        else
        {
          v5[5] = 0;
        }
      }
    }

    else if (a3 == 8)
    {
      result = memcmp(__s1, "sym_name", 8uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
          {
            v15 = a4;
          }

          else
          {
            v15 = 0;
          }

          v5[7] = v15;
        }

        else
        {
          v5[7] = 0;
        }
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 13:
        result = memcmp(__s1, "function_type", 0xDuLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v9 = a4;
            }

            else
            {
              v9 = 0;
            }

            v5[2] = v9;
          }

          else
          {
            v5[2] = 0;
          }
        }

        break;
      case 11:
        result = memcmp(__s1, "externalize", 0xBuLL);
        if (result)
        {
          result = memcmp(__s1, "param_decls", 0xBuLL);
          if (!result)
          {
            if (a4)
            {
              if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
              {
                v11 = a4;
              }

              else
              {
                v11 = 0;
              }

              v5[4] = v11;
            }

            else
            {
              v5[4] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v13 = a4;
          }

          else
          {
            v13 = 0;
          }

          v5[1] = v13;
        }

        else
        {
          v5[1] = 0;
        }

        break;
      case 9:
        if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
            {
              v14 = a4;
            }

            else
            {
              v14 = 0;
            }

            *result = v14;
          }

          else
          {
            *result = 0;
          }
        }

        else
        {
          result = memcmp(__s1, "no_inline", 9uLL);
          if (result)
          {
            result = memcmp(__s1, "res_attrs", 9uLL);
            if (!result)
            {
              if (a4)
              {
                if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
                {
                  v8 = a4;
                }

                else
                {
                  v8 = 0;
                }

                v5[6] = v8;
              }

              else
              {
                v5[6] = 0;
              }
            }
          }

          else if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v16 = a4;
            }

            else
            {
              v16 = 0;
            }

            v5[3] = v16;
          }

          else
          {
            v5[3] = 0;
          }
        }

        break;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "arg_attrs", 9, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "externalize", 11, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "function_type", 13, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "no_inline", 9, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "param_decls", 11, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "priv", 4, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "res_attrs", 9, v10);
  }

  v11 = a2[7];
  if (v11)
  {

    mlir::NamedAttrList::append(a3, "sym_name", 8, v11);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "externalize", 0xB, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v10, "function_type", 0xD, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v11, "no_inline", 9, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v12, "param_decls", 0xB, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v13, "priv", 4, a3, a4) & 1) != 0)
            {
              v14 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 48));
              if (!v14 || (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v14, "res_attrs", 9, a3, a4) & 1) != 0)
              {
                v15 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 56));
                if (!v15 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v15, "sym_name", 8, a3, a4) & 1) != 0)
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setFunctionType(uint64_t a1, uint64_t a2)
{
  result = mlir::TypeAttr::get(a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80) = result;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  v5 = v2[2];
  if (v5)
  {
    v6 = v2[4];
    if (v6)
    {
      v7 = v2[7];
      if (v7)
      {
        v9 = v2[1];
        v10 = v2[3];
        v12 = v2[5];
        v11 = v2[6];
        v37[0] = *this;
        if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v7, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37) & 1) != 0 && (v37[0] = *this, (mlir::func::__mlir_ods_local_attr_constraint_FuncOps3(v5, "function_type", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(v6, "param_decls", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v12, "priv", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v9, "externalize", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v10, "no_inline", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v3, "arg_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)) && (v37[0] = *this, (mlir::func::__mlir_ods_local_attr_constraint_FuncOps4(v11, "res_attrs", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v37)))
        {
          return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(*this, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40), "bodyRegion", 10, 0) & 1;
        }

        else
        {
          return 0;
        }
      }

      v35[0] = "requires attribute 'sym_name'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v28 = __p;
        if (__p)
        {
          v29 = v43;
          v30 = __p;
          if (v43 != __p)
          {
            do
            {
              v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
            }

            while (v29 != v28);
            v30 = __p;
          }

          v43 = v28;
          operator delete(v30);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v31 = v41;
        v19 = v40;
        if (v41 == v40)
        {
LABEL_63:
          v41 = v17;
          operator delete(v19);
LABEL_64:
          if (v38 != &v39)
          {
            free(v38);
          }

          return v13;
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
LABEL_62:
        v19 = v40;
        goto LABEL_63;
      }
    }

    else
    {
      v35[0] = "requires attribute 'param_decls'";
      v36 = 259;
      mlir::OpState::emitOpError(this, v35, v37);
      v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
      if (v37[0])
      {
        mlir::InFlightDiagnostic::report(v37);
      }

      if (v45 == 1)
      {
        if (v44 != &v45)
        {
          free(v44);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v43;
          v24 = __p;
          if (v43 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v43 = v22;
          operator delete(v24);
        }

        v17 = v40;
        if (!v40)
        {
          goto LABEL_64;
        }

        v25 = v41;
        v19 = v40;
        if (v41 == v40)
        {
          goto LABEL_63;
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
        goto LABEL_62;
      }
    }
  }

  else
  {
    v35[0] = "requires attribute 'function_type'";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v43;
        v16 = __p;
        if (v43 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v43 = v14;
        operator delete(v16);
      }

      v17 = v40;
      if (!v40)
      {
        goto LABEL_64;
      }

      v18 = v41;
      v19 = v40;
      if (v41 == v40)
      {
        goto LABEL_63;
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
      goto LABEL_62;
    }
  }

  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::IfOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::IfOp *this)
{
  if (!mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*this + 36);
  v4 = *(*this + 36) ? *this - 16 : 0;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  if (mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(v2, ((v2 + 16 * ((*(v2 + 44) >> 23) & 1) + ((*(v2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 40), "thenRegion", 10, 0))
  {
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps2(*this, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 24, "elseRegion", 10, 1u) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ImaginaryPartOp *this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps18(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps17(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v7))
  {
    return 0;
  }

  v9 = v7;
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v7 = v6;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  mlir::OperationState::addTypes(a2, &v7, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v10, v8, v4, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if (v12[3] == v13)
  {
    llvm::raw_ostream::write(v12, "(", 1uLL);
  }

  else
  {
    *v13 = 40;
    ++v12[4];
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ")", 1uLL);
  }

  else
  {
    *v15 = 41;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = v18[4];
  if (v18[3] - v19 > 1uLL)
  {
    *v19 = 15917;
    v18[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "->", 2uLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
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
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = v29;
  v28 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v25, v27, v28);
  if (v27 != v29)
  {
    free(v27);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v70 = v6;
  if (!v6)
  {
    a3(&v74, a4);
    if (v74)
    {
      v71 = 3;
      v72 = "expected DictionaryAttr to set properties";
      v73 = 41;
      v26 = &v71;
      v27 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v27 = v76;
          v26 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v26 = &v71;
          v27 = v76;
        }
      }

      v28 = &v27[24 * v77];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }

    if (v85 != 1)
    {
      return 0;
    }

    if (v84 != &v85)
    {
      free(v84);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v83;
      v32 = __p;
      if (v83 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v83 = v30;
      operator delete(v32);
    }

    v21 = v80;
    if (!v80)
    {
      goto LABEL_70;
    }

    v33 = v81;
    v23 = v80;
    if (v81 == v80)
    {
LABEL_69:
      v81 = v21;
      operator delete(v23);
LABEL_70:
      if (v76 != v79)
      {
        free(v76);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
LABEL_68:
    v23 = v80;
    goto LABEL_69;
  }

  v87.var0 = "path";
  v87.var1 = 4;
  v8 = mlir::DictionaryAttr::get(&v70, v87);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v9 = v8;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 49;
        v10 = &v71;
        v11 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v11 = v76;
            v10 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v10 = &v71;
            v11 = v76;
          }
        }

        v12 = &v11[24 * v77];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v77;
        if (v74)
        {
          v14 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v15 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v65 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v15 = v76;
              v14 = (v76 + v65);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v14 = &v71;
              v15 = v76;
            }
          }

          v16 = &v15[24 * v77];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v83;
        v20 = __p;
        if (v83 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v83 = v18;
        operator delete(v20);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v22 = v81;
      v23 = v80;
      if (v81 == v80)
      {
        goto LABEL_69;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v88.var0 = "sym_name";
  v88.var1 = 8;
  v36 = mlir::DictionaryAttr::get(&v70, v88);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v37 = v36;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 53;
        v38 = &v71;
        v39 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v66 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v39 = v76;
            v38 = (v76 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v38 = &v71;
            v39 = v76;
          }
        }

        v40 = &v39[24 * v77];
        v41 = *v38;
        *(v40 + 2) = *(v38 + 2);
        *v40 = v41;
        ++v77;
        if (v74)
        {
          v42 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v37);
          v43 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v67 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v43 = v76;
              v42 = (v76 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v42 = &v71;
              v43 = v76;
            }
          }

          v44 = &v43[24 * v77];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
          ++v77;
          if (v74)
          {
            mlir::InFlightDiagnostic::report(&v74);
          }
        }
      }

      if ((v85 & 1) == 0)
      {
        return 0;
      }

      if (v84 != &v85)
      {
        free(v84);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v83;
        v48 = __p;
        if (v83 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v83 = v46;
        operator delete(v48);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v49 = v81;
      v23 = v80;
      if (v81 == v80)
      {
        goto LABEL_69;
      }

      do
      {
        v51 = *--v49;
        v50 = v51;
        *v49 = 0;
        if (v51)
        {
          operator delete[](v50);
        }
      }

      while (v49 != v21);
      goto LABEL_68;
    }

    a1[1] = v36;
  }

  v89.var0 = "toImport";
  v89.var1 = 8;
  v53 = mlir::DictionaryAttr::get(&v70, v89);
  if (!v53)
  {
    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    a1[2] = v53;
    return 1;
  }

  v54 = v53;
  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 53;
    v55 = &v71;
    v56 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v68 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v56 = v76;
        v55 = (v76 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v55 = &v71;
        v56 = v76;
      }
    }

    v57 = &v56[24 * v77];
    v58 = *v55;
    *(v57 + 2) = *(v55 + 2);
    *v57 = v58;
    ++v77;
    if (v74)
    {
      v59 = &v71;
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v54);
      v60 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v69 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v60 = v76;
          v59 = (v76 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v59 = &v71;
          v60 = v76;
        }
      }

      v61 = &v60[24 * v77];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
      ++v77;
      if (v74)
      {
        mlir::InFlightDiagnostic::report(&v74);
      }
    }
  }

  if (v85 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v75);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "path", 4, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "sym_name", 8, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "toImport", 8, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::ImportOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 4 && *a3 == 1752457584)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 == 0x656D616E5F6D7973)
  {
    return a2[1];
  }

  if (*a3 != 0x74726F706D496F74)
  {
    return 0;
  }

  return a2[2];
}

void *mlir::ODIE::Compiler::CoreML::ImportOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }

    else if (*a2 == 0x74726F706D496F74)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          v4 = a4;
        }

        else
        {
          v4 = 0;
        }

        result[2] = v4;
      }

      else
      {
        result[2] = 0;
      }
    }
  }

  else if (a3 == 4 && *a2 == 1752457584)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ImportOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "path", 4, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "toImport", 8, v6);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v8, "path", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(v10, "toImport", 8, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::ODIE::Compiler::CoreML::ImportOp::parse();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::StringAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, v3 + 2) & 1;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImportOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::ImportOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::ImportOp *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v2 = v1 + 64;
  if (v4)
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      v25[0] = *this;
      if ((mlir::pdl_interp::__mlir_ods_local_attr_constraint_PDLInterpOps11(v5, "toImport", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) == 0)
      {
        return 0;
      }

      v25[0] = *this;
      if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v4, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1) == 0)
      {
        return 0;
      }

      v25[0] = *this;
      return mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v3, "path", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) & 1;
    }

    v23[0] = "requires attribute 'toImport'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v16 = __p;
      if (__p)
      {
        v17 = v31;
        v18 = __p;
        if (v31 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v31 = v16;
        operator delete(v18);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_40:
        v29 = v11;
        operator delete(v13);
LABEL_41:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v7;
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

      while (v19 != v11);
LABEL_39:
      v13 = v28;
      goto LABEL_40;
    }
  }

  else
  {
    v23[0] = "requires attribute 'sym_name'";
    v24 = 259;
    mlir::OpState::emitOpError(this, v23, v25);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_41;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_40;
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
      goto LABEL_39;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "delegate_id";
  v56.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 56;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "delegate_id", 11, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 11 && (*a3 == 0x65746167656C6564 ? (v4 = *(a3 + 3) == 0x64695F6574616765) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11 && *a2 == 0x65746167656C6564 && *(a2 + 3) == 0x64695F6574616765)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "delegate_id", 11, *a2);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  v11 = *(a2 + 256);
  if (!v11)
  {
    v12 = operator new(8uLL);
    *v12 = 0;
    *(a2 + 256) = v12;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v17;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v16;
    {
      mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v11 = *(a2 + 256);
  }

  *v11 = a7;
  mlir::OperationState::addRegion(a2);
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

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::IsolatedGroupOp *this)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v39 = v2;
    if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v3, "delegate_id", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v39))
    {
      v4 = *this;
      v5 = *(*this + 36);
      if (*(*this + 36))
      {
        v6 = *this - 16;
      }

      else
      {
        v6 = 0;
      }

      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v6, i);
        }

        v4 = *this;
      }

      if ((*(v4 + 44) & 0x800000) != 0)
      {
        v8 = *(v4 + 72);
        v9 = *(v4 + 68);
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      v36 = v8;
      v37 = v9;
      mlir::OperandRange::getTypes(&v36, &v39);
      mlir::ValueRange::ValueRange(&v36, v39 + 32 * v40, v41 - v40);
      mlir::TypeRange::TypeRange(&v34, v36, v37);
      v10 = *(*this + 36);
      v11 = (*this - 16);
      if (!v10)
      {
        v11 = 0;
      }

      v36 = v11;
      v37 = v10;
      mlir::OperandRange::getTypes(&v36, &v39);
      NextResultAtOffset = v39;
      v13 = v40;
      v14 = v41;
      if (v40)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v39, v40);
      }

      mlir::ValueRange::ValueRange(&v36, NextResultAtOffset, v14 - v13);
      mlir::TypeRange::TypeRange(v33, v36, v37);
      v15 = v35;
      v16 = v33[0];
      v17 = v33[1];
      v18 = 0;
      if (v35)
      {
        v19 = 0;
        v20 = v34;
        do
        {
          if (*(*mlir::TypeRange::dereference_iterator(v20, v19) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
          {
            ++v18;
          }

          ++v19;
        }

        while (v15 != v19);
      }

      v21 = 0;
      if (v17)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*(*mlir::TypeRange::dereference_iterator(v16, j) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
          {
            ++v21;
          }
        }
      }

      if (v18 == v21)
      {
        return mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(*this, ((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40), "group", 5, 0) & 1;
      }

      else
      {
        v36 = "failed to verify that number of handle inputs must match number of token outputs";
        v38 = 259;
        mlir::OpState::emitOpError(this, &v36, &v39);
        v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v48 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v40);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v36 = "requires attribute 'delegate_id'";
    v38 = 259;
    mlir::OpState::emitOpError(this, &v36, &v39);
    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
    if (v39)
    {
      mlir::InFlightDiagnostic::report(&v39);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v46;
        v26 = __p;
        if (v46 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v46 = v24;
        operator delete(v26);
      }

      v27 = v43;
      if (v43)
      {
        v28 = v44;
        v29 = v43;
        if (v44 != v43)
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
          v29 = v43;
        }

        v44 = v27;
        operator delete(v29);
      }

      if (v41 != &v42)
      {
        free(v41);
      }
    }
  }

  return v23;
}

uint64_t mlir::ODIE::Compiler::CoreML::JoinTokenOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this)
{
  v62 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    v5 = 32;
LABEL_5:
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = *(*(v5 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        v9 = *this;
        v47 = 261;
        v46[0] = "operand";
        v46[1] = 7;
        mlir::Operation::emitOpError(v9, v46, v51);
        if (v51[0])
        {
          v48 = 3;
          v49 = " #";
          v50 = 2;
          v10 = v52;
          if (v53 >= v54)
          {
            if (v52 <= &v48 && v52 + 24 * v53 > &v48)
            {
              v37 = &v48 - v52;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
              v10 = v52;
              v11 = (v52 + v37);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
              v11 = &v48;
              v10 = v52;
            }
          }

          else
          {
            v11 = &v48;
          }

          v12 = &v10[24 * v53];
          v13 = *v11;
          *(v12 + 2) = *(v11 + 2);
          *v12 = v13;
          v14 = ++v53;
          if (v51[0])
          {
            v48 = 5;
            v49 = v7;
            v15 = v52;
            if (v14 >= v54)
            {
              if (v52 <= &v48 && v52 + 24 * v14 > &v48)
              {
                v38 = &v48 - v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v14 + 1, 24);
                v15 = v52;
                v16 = (v52 + v38);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v14 + 1, 24);
                v16 = &v48;
                v15 = v52;
              }
            }

            else
            {
              v16 = &v48;
            }

            v17 = &v15[24 * v53];
            v18 = *v16;
            *(v17 + 2) = *(v16 + 2);
            *v17 = v18;
            v19 = ++v53;
            if (v51[0])
            {
              v48 = 3;
              v49 = " must be variadic of , but got ";
              v50 = 31;
              v20 = v52;
              if (v19 >= v54)
              {
                if (v52 <= &v48 && v52 + 24 * v19 > &v48)
                {
                  v39 = &v48 - v52;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v19 + 1, 24);
                  v20 = v52;
                  v21 = (v52 + v39);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v19 + 1, 24);
                  v21 = &v48;
                  v20 = v52;
                }
              }

              else
              {
                v21 = &v48;
              }

              v22 = &v20[24 * v53];
              v23 = *v21;
              *(v22 + 2) = *(v21 + 2);
              *v22 = v23;
              ++v53;
              if (v51[0])
              {
                v24 = &v48;
                mlir::DiagnosticArgument::DiagnosticArgument(&v48, v8);
                v25 = v52;
                if (v53 >= v54)
                {
                  if (v52 <= &v48 && v52 + 24 * v53 > &v48)
                  {
                    v40 = &v48 - v52;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                    v25 = v52;
                    v24 = (v52 + v40);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                    v24 = &v48;
                    v25 = v52;
                  }
                }

                v26 = &v25[24 * v53];
                v27 = *v24;
                *(v26 + 2) = *(v24 + 2);
                *v26 = v27;
                ++v53;
              }
            }
          }
        }

        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v51);
        if (v51[0])
        {
          mlir::InFlightDiagnostic::report(v51);
        }

        if (v61 == 1)
        {
          if (v60 != &v61)
          {
            free(v60);
          }

          v29 = __p;
          if (__p)
          {
            v30 = v59;
            v31 = __p;
            if (v59 != __p)
            {
              do
              {
                v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
              }

              while (v30 != v29);
              v31 = __p;
            }

            v59 = v29;
            operator delete(v31);
          }

          v32 = v56;
          if (v56)
          {
            v33 = v57;
            v34 = v56;
            if (v57 != v56)
            {
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
              v34 = v56;
            }

            v57 = v32;
            operator delete(v34);
          }

          if (v52 != v55)
          {
            free(v52);
          }
        }

        if (!v28)
        {
          return 0;
        }
      }

      ++v7;
      if (++v6 == v4)
      {
        v2 = *this;
        goto LABEL_60;
      }
    }
  }

  v3 = *(v2 + 68);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = *(v2 + 72) + 32;
    goto LABEL_5;
  }

LABEL_60:
  v42 = *(v2 + 36);
  v43 = v2 - 16;
  if (v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0);
  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps19(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::MaxPool2dOp *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps3(*this, (*(*(*(*this + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0 || !mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps4(*this, (*(*(*(*this + 72) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u))
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps5(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
  {
    return 1;
  }

  v15 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v16 = 259;
  mlir::OpState::emitOpError(this, &v15, v17);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
  v6 = result;
  if (v17[0])
  {
    mlir::InFlightDiagnostic::report(v17);
    result = v6;
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v18 != &v19)
    {
      free(v18);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v72 = v6;
  if (!v6)
  {
    a3(&v76, a4);
    if (v76)
    {
      v73 = 3;
      v74 = "expected DictionaryAttr to set properties";
      v75 = 41;
      v26 = &v73;
      v27 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v27 = v78;
          v26 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v26 = &v73;
          v27 = v78;
        }
      }

      v28 = &v27[24 * v79];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }

    if (v87 != 1)
    {
      return 0;
    }

    if (v86 != &v87)
    {
      free(v86);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v85;
      v32 = __p;
      if (v85 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v85 = v30;
      operator delete(v32);
    }

    v21 = v82;
    if (!v82)
    {
      goto LABEL_70;
    }

    v33 = v83;
    v23 = v82;
    if (v83 == v82)
    {
      goto LABEL_69;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_68;
  }

  v89.var0 = "sym_name";
  v89.var1 = 8;
  v8 = mlir::DictionaryAttr::get(&v72, v89);
  if (!v8)
  {
LABEL_46:
    v90.var0 = "type";
    v90.var1 = 4;
    v36 = mlir::DictionaryAttr::get(&v72, v90);
    if (v36)
    {
      if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v37 = v36;
        a3(&v76, a4);
        if (v76)
        {
          v73 = 3;
          v75 = 49;
          v38 = &v73;
          v39 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v68 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v39 = v78;
              v38 = (v78 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v38 = &v73;
              v39 = v78;
            }
          }

          v40 = &v39[24 * v79];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v79;
          if (v76)
          {
            v42 = &v73;
            mlir::DiagnosticArgument::DiagnosticArgument(&v73, v37);
            v43 = v78;
            if (v79 >= v80)
            {
              if (v78 <= &v73 && v78 + 24 * v79 > &v73)
              {
                v69 = &v73 - v78;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
                v43 = v78;
                v42 = (v78 + v69);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
                v42 = &v73;
                v43 = v78;
              }
            }

            v44 = &v43[24 * v79];
            v45 = *v42;
            *(v44 + 2) = *(v42 + 2);
            *v44 = v45;
            ++v79;
            if (v76)
            {
              mlir::InFlightDiagnostic::report(&v76);
            }
          }
        }

        if ((v87 & 1) == 0)
        {
          return 0;
        }

        if (v86 != &v87)
        {
          free(v86);
        }

        v46 = __p;
        if (__p)
        {
          v47 = v85;
          v48 = __p;
          if (v85 != __p)
          {
            do
            {
              v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
            }

            while (v47 != v46);
            v48 = __p;
          }

          v85 = v46;
          operator delete(v48);
        }

        v21 = v82;
        if (!v82)
        {
          goto LABEL_70;
        }

        v49 = v83;
        v23 = v82;
        if (v83 == v82)
        {
          goto LABEL_69;
        }

        do
        {
          v51 = *--v49;
          v50 = v51;
          *v49 = 0;
          if (v51)
          {
            operator delete[](v50);
          }
        }

        while (v49 != v21);
        goto LABEL_68;
      }

      a1[1] = v36;
    }

    v91.var0 = "value";
    v91.var1 = 5;
    v53 = mlir::DictionaryAttr::get(&v72, v91);
    if (v53)
    {
      v54 = v53;
      v55 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v53);
      if (!v55)
      {
        a3(&v76, a4);
        if (v76)
        {
          v73 = 3;
          v75 = 50;
          v57 = &v73;
          v58 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v70 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v58 = v78;
              v57 = (v78 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v57 = &v73;
              v58 = v78;
            }
          }

          v59 = &v58[24 * v79];
          v60 = *v57;
          *(v59 + 2) = *(v57 + 2);
          *v59 = v60;
          ++v79;
          if (v76)
          {
            v61 = &v73;
            mlir::DiagnosticArgument::DiagnosticArgument(&v73, v54);
            v62 = v78;
            if (v79 >= v80)
            {
              if (v78 <= &v73 && v78 + 24 * v79 > &v73)
              {
                v71 = &v73 - v78;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
                v62 = v78;
                v61 = (v78 + v71);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
                v61 = &v73;
                v62 = v78;
              }
            }

            v63 = &v62[24 * v79];
            v64 = *v61;
            *(v63 + 2) = *(v61 + 2);
            *v63 = v64;
            ++v79;
            if (v76)
            {
              mlir::InFlightDiagnostic::report(&v76);
            }
          }
        }

        if (v87 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v77);
        }

        return 0;
      }

      a1[2] = v55;
      a1[3] = v56;
    }

    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    goto LABEL_46;
  }

  v9 = v8;
  a3(&v76, a4);
  if (v76)
  {
    v73 = 3;
    v75 = 53;
    v10 = &v73;
    v11 = v78;
    if (v79 >= v80)
    {
      if (v78 <= &v73 && v78 + 24 * v79 > &v73)
      {
        v66 = &v73 - v78;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
        v11 = v78;
        v10 = (v78 + v66);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
        v10 = &v73;
        v11 = v78;
      }
    }

    v12 = &v11[24 * v79];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v79;
    if (v76)
    {
      v14 = &v73;
      mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
      v15 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v67 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v15 = v78;
          v14 = (v78 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v14 = &v73;
          v15 = v78;
        }
      }

      v16 = &v15[24 * v79];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v79;
      if (v76)
      {
        mlir::InFlightDiagnostic::report(&v76);
      }
    }
  }

  if ((v87 & 1) == 0)
  {
    return 0;
  }

  if (v86 != &v87)
  {
    free(v86);
  }

  v18 = __p;
  if (__p)
  {
    v19 = v85;
    v20 = __p;
    if (v85 != __p)
    {
      do
      {
        v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
      }

      while (v19 != v18);
      v20 = __p;
    }

    v85 = v18;
    operator delete(v20);
  }

  v21 = v82;
  if (v82)
  {
    v22 = v83;
    v23 = v82;
    if (v83 == v82)
    {
      goto LABEL_69;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_68:
    v23 = v82;
LABEL_69:
    v83 = v21;
    operator delete(v23);
  }

LABEL_70:
  if (v78 != v81)
  {
    free(v78);
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v27 = a1;
  v28 = v30;
  v29 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "sym_name", 8, *a2);
  v5 = v29;
  if (v29 >= HIDWORD(v29))
  {
    v21 = NamedAttr;
    v22 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
    v4 = v22;
    NamedAttr = v21;
    v5 = v29;
  }

  v6 = (v28 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v29 + 1;
  LODWORD(v29) = v29 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v27, "type", 4, v8);
    v11 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v23 = v9;
      v24 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v10 = v24;
      v9 = v23;
      v11 = v29;
    }

    v12 = (v28 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v27, "value", 5, v13);
    v16 = v29;
    if (v29 >= HIDWORD(v29))
    {
      v25 = v14;
      v26 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 16);
      v15 = v26;
      v14 = v25;
      v16 = v29;
    }

    v17 = (v28 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v29 + 1;
    LODWORD(v29) = v29 + 1;
  }

  v18 = v28;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v28 == v30)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v27, v28, v7);
  v18 = v28;
  if (v28 != v30)
  {
LABEL_16:
    free(v18);
  }

  return DictionaryAttr;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::getInherentAttr(int a1, void *a2, void *__s1, size_t __n)
{
  if (__n == 4)
  {
    if (!memcmp(__s1, "type", 4uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 5)
  {
    if (!memcmp(__s1, "value", 5uLL))
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 8 || *__s1 != 0x656D616E5F6D7973)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 4)
  {
    result = memcmp(__s1, "type", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        v5[1] = v7;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else if (a3 == 5)
  {
    result = memcmp(__s1, "value", 5uLL);
    if (!result)
    {
      if (a4)
      {
        result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
        v5[2] = result;
        v5[3] = v6;
      }

      else
      {
        result = 0;
        v5[2] = 0;
        v5[3] = 0;
      }
    }
  }

  else if (a3 == 8 && *__s1 == 0x656D616E5F6D7973)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      *result = v8;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::MemberOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "sym_name", 8, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "type", 4, v5);
  }

  v6 = a2[2];
  if (v6)
  {

    mlir::NamedAttrList::append(a3, "value", 5, v6);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v8, "sym_name", 8, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "type", 4, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v10, "value", 5, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::ODIE::Compiler::CoreML::MemberOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1) == 0)
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypedAttr>(a1, v3 + 2);
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypedAttr>(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  if (!v36)
  {
    return 1;
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v36);
  *a2 = v4;
  a2[1] = v5;
  if (v4)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]";
  v38 = 65;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
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
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MemberOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 16))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::MemberOp *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v7 = *(v3 + 16);
      v26[0] = *this;
      if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v2, "sym_name", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) & 1) == 0)
      {
        return 0;
      }

      v26[0] = *this;
      if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v5, "type", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) & 1) == 0)
      {
        return 0;
      }

      v26[0] = *this;
      return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(v7, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) & 1;
    }

    v24[0] = "requires attribute 'type'";
    v25 = 259;
    mlir::OpState::emitOpError(this, v24, v26);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

      v17 = __p;
      if (__p)
      {
        v18 = v32;
        v19 = __p;
        if (v32 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v32 = v17;
        operator delete(v19);
      }

      v12 = v29;
      if (!v29)
      {
        goto LABEL_41;
      }

      v20 = v30;
      v14 = v29;
      if (v30 == v29)
      {
LABEL_40:
        v30 = v12;
        operator delete(v14);
LABEL_41:
        if (v27 != &v28)
        {
          free(v27);
        }

        return v8;
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
LABEL_39:
      v14 = v29;
      goto LABEL_40;
    }
  }

  else
  {
    v24[0] = "requires attribute 'sym_name'";
    v25 = 259;
    mlir::OpState::emitOpError(this, v24, v26);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

      v9 = __p;
      if (__p)
      {
        v10 = v32;
        v11 = __p;
        if (v32 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v32 = v9;
        operator delete(v11);
      }

      v12 = v29;
      if (!v29)
      {
        goto LABEL_41;
      }

      v13 = v30;
      v14 = v29;
      if (v30 == v29)
      {
        goto LABEL_40;
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
      goto LABEL_39;
    }
  }

  return v8;
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::NonZeroOp *this)
{
  v95 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
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
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v6 + 8);
      v36 = *(v6 + 16);
      if (!v36)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v44 = v6;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v35 = *(v44 + 8);
      v36 = *(v44 + 16);
      if (!v36)
      {
        goto LABEL_62;
      }
    }

    v37 = v35;
    v38 = v36;
    do
    {
      v39 = v38 >> 1;
      v40 = &v37[2 * (v38 >> 1)];
      v42 = *v40;
      v41 = v40 + 2;
      v38 += ~(v38 >> 1);
      if (v42 < v34)
      {
        v37 = v41;
      }

      else
      {
        v38 = v39;
      }
    }

    while (v38);
    if (v37 != &v35[2 * v36] && *v37 == v34)
    {
      v45 = v37[1];
      v83 = v5;
      v84 = v45;
      if (!mlir::CallOpInterface::getArgOperands(&v83))
      {
        goto LABEL_6;
      }

LABEL_65:
      v46 = *v5;
      {
        v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v48 = *(v46 + 8);
        v49 = *(v46 + 16);
        if (!v49)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v75 = v46;
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v48 = *(v75 + 8);
        v49 = *(v75 + 16);
        if (!v49)
        {
          goto LABEL_77;
        }
      }

      v50 = v48;
      v51 = v49;
      do
      {
        v52 = v51 >> 1;
        v53 = &v50[2 * (v51 >> 1)];
        v55 = *v53;
        v54 = v53 + 2;
        v51 += ~(v51 >> 1);
        if (v55 < v47)
        {
          v50 = v54;
        }

        else
        {
          v51 = v52;
        }
      }

      while (v51);
      if (v50 != &v48[2 * v49] && *v50 == v47)
      {
        v57 = v50[1];
        v76 = v5;
        v77 = v57;
        mlir::CallableOpInterface::getArgAttrsAttr(&v76);
        if (v58 != 2)
        {
          goto LABEL_6;
        }

LABEL_80:
        v59 = *v5;
        {
          v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v61 = *(v59 + 8);
          v62 = *(v59 + 16);
          if (!v62)
          {
            goto LABEL_94;
          }
        }

        else
        {
          v71 = v59;
          mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
          v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v61 = *(v71 + 8);
          v62 = *(v71 + 16);
          if (!v62)
          {
            goto LABEL_94;
          }
        }

        v63 = v61;
        v64 = v62;
        do
        {
          v65 = v64 >> 1;
          v66 = &v63[2 * (v64 >> 1)];
          v68 = *v66;
          v67 = v66 + 2;
          v64 += ~(v64 >> 1);
          if (v68 < v60)
          {
            v63 = v67;
          }

          else
          {
            v64 = v65;
          }
        }

        while (v64);
        if (v63 != &v61[2 * v62] && *v63 == v60)
        {
          v72 = v63[1];
          goto LABEL_96;
        }

LABEL_94:
        v72 = 0;
LABEL_96:
        v80 = v5;
        v81 = v72;
        isSplat = mlir::ElementsAttr::isSplat(&v80);
        if (mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32))
        {
          return 1;
        }

        goto LABEL_6;
      }

LABEL_77:
      v76 = v5;
      v77 = 0;
      mlir::CallableOpInterface::getArgAttrsAttr(&v76);
      if (v56 != 2)
      {
        goto LABEL_6;
      }

      goto LABEL_80;
    }

LABEL_62:
    v83 = v5;
    v84 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v83))
    {
      goto LABEL_6;
    }

    goto LABEL_65;
  }

LABEL_6:
  v78 = 261;
  v76 = "result";
  v77 = 6;
  mlir::Operation::emitOpError(v4, &v76, &v83);
  if (v83)
  {
    LODWORD(v80) = 3;
    v81 = " #";
    v82 = 2;
    v7 = &v80;
    v8 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v80 && v85 + 24 * v86 > &v80)
      {
        v69 = &v80 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v8 = v85;
        v7 = (v85 + v69);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v7 = &v80;
        v8 = v85;
      }
    }

    v9 = &v8[24 * v86];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    v11 = ++v86;
    if (v83)
    {
      LODWORD(v80) = 5;
      v81 = 0;
      v12 = &v80;
      v13 = v85;
      if (v11 >= v87)
      {
        if (v85 <= &v80 && v85 + 24 * v11 > &v80)
        {
          v70 = &v80 - v85;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v11 + 1, 24);
          v13 = v85;
          v12 = (v85 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v11 + 1, 24);
          v12 = &v80;
          v13 = v85;
        }
      }

      v14 = &v13[24 * v86];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v16 = ++v86;
      if (v83)
      {
        LODWORD(v80) = 3;
        v81 = " must be 2D tensor of Index type. values, but got ";
        v82 = 50;
        v17 = &v80;
        v18 = v85;
        if (v16 >= v87)
        {
          if (v85 <= &v80 && v85 + 24 * v16 > &v80)
          {
            v73 = &v80 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v16 + 1, 24);
            v18 = v85;
            v17 = (v85 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v16 + 1, 24);
            v17 = &v80;
            v18 = v85;
          }
        }

        v19 = &v18[24 * v86];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        ++v86;
        if (v83)
        {
          v21 = &v80;
          mlir::DiagnosticArgument::DiagnosticArgument(&v80, v5);
          v22 = v85;
          if (v86 >= v87)
          {
            if (v85 <= &v80 && v85 + 24 * v86 > &v80)
            {
              v74 = &v80 - v85;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v22 = v85;
              v21 = (v85 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
              v21 = &v80;
              v22 = v85;
            }
          }

          v23 = &v22[24 * v86];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          ++v86;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v83);
  if (v83)
  {
    mlir::InFlightDiagnostic::report(&v83);
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v92;
      v28 = __p;
      if (v92 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v92 = v26;
      operator delete(v28);
    }

    v29 = v89;
    if (v89)
    {
      v30 = v90;
      v31 = v89;
      if (v90 != v89)
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
        v31 = v89;
      }

      v90 = v29;
      operator delete(v31);
    }

    if (v85 != v88)
    {
      free(v85);
    }
  }

  return v25;
}

BOOL mlir::ODIE::Compiler::CoreML::NotOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::NotOp *this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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
    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps2(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::OutputOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v10, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || v11 && (((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v8) & 1) == 0) || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0))
  {
    v5 = 0;
    v6 = v8[0];
    if (v8[0] == &v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v10, v8, v4, a2 + 16) & 1;
  v6 = v8[0];
  if (v8[0] != &v9)
  {
LABEL_9:
    free(v6);
  }

LABEL_10:
  if (v10 != v12)
  {
    free(v10);
  }

  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "opname";
  v56.var1 = 6;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 51;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "opname", 6, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6 && (*a3 == 1634627695 ? (v4 = *(a3 + 4) == 25965) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::PlaceholderOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 6 && *a2 == 1634627695 && *(a2 + 4) == 25965)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }

      *result = v5;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "opname", 6, *a2);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::ODIE::Compiler::CoreML::PlaceholderOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::PlaceholderOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::PlaceholderOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v18[0] = *this;
    if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v1, "opname", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18))
    {
      v3 = *(*this + 36);
      if (*(*this + 36))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'opname'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
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
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t *mlir::RewritePatternSet::add<mlir::ODIE::Compiler::CoreML::PlaceholderOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "coreml.llo.placeholder", 22, a3, v10, a4, a5);
  *v11 = &unk_1F5B3D3F0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::parse(uint64_t a1, void *a2)
{
  v24[16] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23[0] = v24;
  v23[1] = 0x400000000;
  Inputs = 0;
  v21 = 0;
  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v22, v6))
  {
    goto LABEL_17;
  }

  v7 = v22;
  if (v22)
  {
    v8 = a2[32];
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      a2[32] = v9;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v18;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v18;
      {
        mlir::ODIE::Compiler::CoreML::PlaceholderOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = a2[32];
      v7 = v22;
    }

    *v8 = v7;
  }

  if ((*(*a1 + 280))(a1) & 1) != 0 && (v10 = (*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v23, 0, 1, 0xFFFFFFFFLL)) && ((*(*a1 + 296))(a1) & 1) != 0 && (v19 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && ((v11 = a2[1], v18[0] = a1, v18[1] = &v19, v18[2] = a2, (v12 = mlir::NamedAttrList::get((a2 + 14), **(v11 + 96))) == 0) || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v12, "opname", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::PlaceholderOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v18[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v18)))
  {
    Inputs = mlir::FunctionType::getInputs(v18);
    v21 = v13;
    Results = mlir::FunctionType::getResults(v18);
    mlir::OperationState::addTypes(a2, Results, v15);
    v16 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v23, &Inputs, v10, (a2 + 2)) & 1;
  }

  else
  {
LABEL_17:
    v16 = 0;
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  return v16;
}

BOOL mlir::ODIE::Compiler::CoreML::RangeOp::verifyInvariantsImpl(mlir::ODIE::Compiler::CoreML::RangeOp *this)
{
  v116 = *MEMORY[0x1E69E9840];
  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLOps24(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
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
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = v6;
      mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
      v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v8 = *(v16 + 8);
      v9 = *(v16 + 16);
      if (!v9)
      {
        goto LABEL_20;
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
      v17 = v10[1];
      v104 = v5;
      v105 = v17;
      if (!mlir::CallOpInterface::getArgOperands(&v104))
      {
        goto LABEL_65;
      }

LABEL_23:
      v18 = *v5;
      {
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        if (v21)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v92 = v18;
        mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v20 = *(v92 + 8);
        v21 = *(v92 + 16);
        if (v21)
        {
LABEL_25:
          v22 = v20;
          v23 = v21;
          do
          {
            v24 = v23 >> 1;
            v25 = &v22[2 * (v23 >> 1)];
            v27 = *v25;
            v26 = v25 + 2;
            v23 += ~(v23 >> 1);
            if (v27 < v19)
            {
              v22 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
LABEL_33:
          if (v22 != &v20[2 * v21] && *v22 == v19)
          {
            v28 = v22[1];
          }

          else
          {
            v28 = 0;
          }

          v93 = v5;
          v94 = v28;
          mlir::CallableOpInterface::getArgAttrsAttr(&v93);
          if (v29 != 1)
          {
            goto LABEL_65;
          }

          v30 = *v5;
          {
            v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v32 = *(v30 + 8);
            v33 = *(v30 + 16);
            if (v33)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v40 = v30;
            mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes();
            v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v32 = *(v40 + 8);
            v33 = *(v40 + 16);
            if (v33)
            {
LABEL_40:
              v34 = v32;
              v35 = v33;
              do
              {
                v36 = v35 >> 1;
                v37 = &v34[2 * (v35 >> 1)];
                v39 = *v37;
                v38 = v37 + 2;
                v35 += ~(v35 >> 1);
                if (v39 < v31)
                {
                  v34 = v38;
                }

                else
                {
                  v35 = v36;
                }
              }

              while (v35);
LABEL_48:
              if (v34 != &v32[2 * v33] && *v34 == v31)
              {
                v41 = v34[1];
              }

              else
              {
                v41 = 0;
              }

              v101 = v5;
              v102 = v41;
              isSplat = mlir::ElementsAttr::isSplat(&v101);
              if (mlir::Type::isF16(&isSplat))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isF32(&isSplat))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isSignedInteger(&isSplat, 4))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isSignedInteger(&isSplat, 8))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isSignedInteger(&isSplat, 16))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isSignedInteger(&isSplat, 32))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isSignedInteger(&isSplat, 64))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isUnsignedInteger(&isSplat, 4))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isUnsignedInteger(&isSplat, 8))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isUnsignedInteger(&isSplat, 16))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isUnsignedInteger(&isSplat, 32))
              {
                goto LABEL_95;
              }

              if (mlir::Type::isUnsignedInteger(&isSplat, 64))
              {
                goto LABEL_95;
              }

              if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
              {
                v98 = isSplat;
                Value = mlir::AffineMapAttr::getValue(&v98);
                if (mlir::Type::isF16(&Value))
                {
                  goto LABEL_95;
                }

                if (*(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
                {
                  v96 = isSplat;
                  v97 = mlir::AffineMapAttr::getValue(&v96);
                  if (mlir::Type::isF32(&v97))
                  {
                    goto LABEL_95;
                  }
                }
              }

              goto LABEL_65;
            }
          }

          v33 = 0;
          v34 = v32;
          goto LABEL_48;
        }
      }

      v21 = 0;
      v22 = v20;
      goto LABEL_33;
    }

LABEL_20:
    v104 = v5;
    v105 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v104))
    {
      goto LABEL_65;
    }

    goto LABEL_23;
  }

LABEL_65:
  v95 = 261;
  v93 = "result";
  v94 = 6;
  mlir::Operation::emitOpError(v4, &v93, &v104);
  if (v104)
  {
    LODWORD(v101) = 3;
    v102 = " #";
    v103 = 2;
    v42 = &v101;
    v43 = v106;
    if (v107 >= v108)
    {
      if (v106 <= &v101 && v106 + 24 * v107 > &v101)
      {
        v88 = &v101 - v106;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
        v43 = v106;
        v42 = (v106 + v88);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
        v42 = &v101;
        v43 = v106;
      }
    }

    v44 = &v43[24 * v107];
    v45 = *v42;
    *(v44 + 2) = v42[2];
    *v44 = v45;
    v46 = ++v107;
    if (v104)
    {
      LODWORD(v101) = 5;
      v102 = 0;
      v47 = &v101;
      v48 = v106;
      if (v46 >= v108)
      {
        if (v106 <= &v101 && v106 + 24 * v46 > &v101)
        {
          v89 = &v101 - v106;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v46 + 1, 24);
          v48 = v106;
          v47 = (v106 + v89);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v46 + 1, 24);
          v47 = &v101;
          v48 = v106;
        }
      }

      v49 = &v48[24 * v107];
      v50 = *v47;
      *(v49 + 2) = v47[2];
      *v49 = v50;
      v51 = ++v107;
      if (v104)
      {
        LODWORD(v101) = 3;
        v102 = " must be 1D tensor of 16-bit float or 32-bit float or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v103 = 225;
        v52 = &v101;
        v53 = v106;
        if (v51 >= v108)
        {
          if (v106 <= &v101 && v106 + 24 * v51 > &v101)
          {
            v90 = &v101 - v106;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v51 + 1, 24);
            v53 = v106;
            v52 = (v106 + v90);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v51 + 1, 24);
            v52 = &v101;
            v53 = v106;
          }
        }

        v54 = &v53[24 * v107];
        v55 = *v52;
        *(v54 + 2) = v52[2];
        *v54 = v55;
        ++v107;
        if (v104)
        {
          v56 = &v101;
          mlir::DiagnosticArgument::DiagnosticArgument(&v101, v5);
          v57 = v106;
          if (v107 >= v108)
          {
            if (v106 <= &v101 && v106 + 24 * v107 > &v101)
            {
              v91 = &v101 - v106;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
              v57 = v106;
              v56 = (v106 + v91);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
              v56 = &v101;
              v57 = v106;
            }
          }

          v58 = &v57[24 * v107];
          v59 = *v56;
          *(v58 + 2) = v56[2];
          *v58 = v59;
          ++v107;
        }
      }
    }
  }

  v60 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v104);
  if (v104)
  {
    mlir::InFlightDiagnostic::report(&v104);
  }

  if (v115 == 1)
  {
    if (v114 != &v115)
    {
      free(v114);
    }

    v61 = __p;
    if (__p)
    {
      v62 = v113;
      v63 = __p;
      if (v113 != __p)
      {
        do
        {
          v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
        }

        while (v62 != v61);
        v63 = __p;
      }

      v113 = v61;
      operator delete(v63);
    }

    v64 = v110;
    if (v110)
    {
      v65 = v111;
      v66 = v110;
      if (v111 != v110)
      {
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
        v66 = v110;
      }

      v111 = v64;
      operator delete(v66);
    }

    if (v106 != v109)
    {
      free(v106);
    }
  }

  if (!v60)
  {
    return 0;
  }

LABEL_95:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 72) + 56));
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)) && (v70 = mlir::getElementTypeOrSelf(*(*(*this + 72) + 88)), v70 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 56))))
  {
    v71 = mlir::getElementTypeOrSelf(*this - 16);
    if (v71 == mlir::getElementTypeOrSelf(*(*(*this + 72) + 24)))
    {
      return 1;
    }

    v93 = "failed to verify that Result 0 element type must match element type of operand 0.";
    v95 = 259;
    mlir::OpState::emitOpError(this, &v93, &v104);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v104);
    v73 = result;
    if (v104)
    {
      mlir::InFlightDiagnostic::report(&v104);
      result = v73;
    }

    if (v115 == 1)
    {
      if (v114 != &v115)
      {
        free(v114);
        result = v73;
      }

      v82 = __p;
      if (__p)
      {
        v83 = v113;
        v84 = __p;
        if (v113 != __p)
        {
          do
          {
            v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
          }

          while (v83 != v82);
          v84 = __p;
        }

        v113 = v82;
        operator delete(v84);
        result = v73;
      }

      v77 = v110;
      if (!v110)
      {
        goto LABEL_135;
      }

      v85 = v111;
      v79 = v110;
      if (v111 == v110)
      {
LABEL_134:
        v111 = v77;
        operator delete(v79);
        result = v73;
LABEL_135:
        if (v106 != v109)
        {
          free(v106);
          return v73;
        }

        return result;
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

      while (v85 != v77);
LABEL_133:
      v79 = v110;
      goto LABEL_134;
    }
  }

  else
  {
    v93 = "failed to verify that Operands should have same element type.";
    v95 = 259;
    mlir::OpState::emitOpError(this, &v93, &v104);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v104);
    v73 = result;
    if (v104)
    {
      mlir::InFlightDiagnostic::report(&v104);
      result = v73;
    }

    if (v115 == 1)
    {
      if (v114 != &v115)
      {
        free(v114);
        result = v73;
      }

      v74 = __p;
      if (__p)
      {
        v75 = v113;
        v76 = __p;
        if (v113 != __p)
        {
          do
          {
            v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
          }

          while (v75 != v74);
          v76 = __p;
        }

        v113 = v74;
        operator delete(v76);
        result = v73;
      }

      v77 = v110;
      if (!v110)
      {
        goto LABEL_135;
      }

      v78 = v111;
      v79 = v110;
      if (v111 == v110)
      {
        goto LABEL_134;
      }

      do
      {
        v81 = *--v78;
        v80 = v81;
        *v78 = 0;
        if (v81)
        {
          operator delete[](v80);
        }
      }

      while (v78 != v77);
      goto LABEL_133;
    }
  }

  return result;
}