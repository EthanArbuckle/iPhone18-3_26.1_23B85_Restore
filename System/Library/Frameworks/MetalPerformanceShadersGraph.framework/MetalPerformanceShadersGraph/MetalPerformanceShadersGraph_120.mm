uint64_t mlir::mps_spi::StridedArrayViewOp::parse(uint64_t a1, void *a2)
{
  v44[16] = *MEMORY[0x1E69E9840];
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v31[0] = v32;
  v31[1] = 1;
  v42 = v44;
  v43 = 0x400000000;
  v29 = 0;
  v30 = 0;
  v39 = v41;
  v40 = 0x400000000;
  v36 = v38;
  v37 = 0x400000000;
  v27 = 0;
  v28 = 0;
  v26[0] = &v27;
  v26[1] = 1;
  v25 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v32, 1) & 1) == 0 || (v35 = 257, ((*(*a1 + 400))(a1, "to", 2, v34) & 1) == 0) || (v35 = 257, ((*(*a1 + 400))(a1, "offset", 6, v34) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), v34[0] = 0, !mlir::parseDynamicIndexList(a1, &v42, &v30, v34, 0)) || (v5 = mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2), *v5 = v30, ((*(*a1 + 120))(a1) & 1) == 0) || (v35 = 257, ((*(*a1 + 400))(a1, "sizes", 5, v34) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), v34[0] = 0, !mlir::parseDynamicIndexList(a1, &v39, &v29, v34, 0)) || (v6 = mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2), *(v6 + 8) = v29, ((*(*a1 + 120))(a1) & 1) == 0) || (v35 = 257, ((*(*a1 + 400))(a1, "strides", 7, v34) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), v34[0] = 0, !mlir::parseDynamicIndexList(a1, &v36, &v28, v34, 0)) || (v7 = mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2), *(v7 + 16) = v28, v24 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14) & 1) == 0) || (v8 = a2[1], v34[0] = a1, v34[1] = &v24, v34[2] = a2, !mlir::mps_spi::StridedArrayViewOp::verifyInherentAttrs(v8, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps_spi::StridedArrayViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v34)) || ((*(*a1 + 104))(a1) & 1) == 0 || (v34[0] = 0, !mlir::AsmParser::parseType<mlir::BaseMemRefType>(a1, v34)) || (v27 = v34[0], v35 = 257, ((*(*a1 + 400))(a1, "to", 2, v34) & 1) == 0) || (v34[0] = 0, !mlir::AsmParser::parseType<mlir::MemRefType>(a1, v34)) || (v25 = v34[0], v9 = v43, v10 = v40, v11 = v37, v12 = mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(a2), v12[6] = 1, v12[7] = v9, v12[8] = v10, v12[9] = v11, v13 = (*(*a1 + 32))(a1), IndexType = mlir::Builder::getIndexType(v13, v14), llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value*,void>((a2 + 8), &v25, v26), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v31, v26, v4, (a2 + 2)) & 1) == 0))
  {
LABEL_34:
    v22 = 0;
    goto LABEL_35;
  }

  if (v43)
  {
    v16 = v42;
    v17 = 32 * v43;
    while (((*(*a1 + 728))(a1, v16, IndexType, a2 + 2) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_34;
  }

LABEL_25:
  if (v40)
  {
    v18 = v39;
    v19 = 32 * v40;
    while (((*(*a1 + 728))(a1, v18, IndexType, a2 + 2) & 1) != 0)
    {
      v18 += 32;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_34;
  }

LABEL_29:
  if (v37)
  {
    v20 = v36;
    v21 = 32 * v37;
    while (((*(*a1 + 728))(a1, v20, IndexType, a2 + 2) & 1) != 0)
    {
      v20 += 32;
      v22 = 1;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_34;
  }

  v22 = 1;
LABEL_35:
  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  return v22;
}

uint64_t mlir::mps_spi::DeviceDescriptorOptionsAttr::get(mlir::MLIRContext *a1, uint64_t a2, int a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
  v15[1] = a1;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir7mps_spi6detail34DeviceDescriptorOptionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27DeviceDescriptorOptionsAttrEJNS1_10StringAttrEiSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v20[1] = v15;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  *&v21[4] = 0;
  *&v21[8] = a3;
  *&v21[12] = (a4 >> 4) ^ (a4 >> 9);
  v9 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v10 = __ROR8__(v9 - *&v21[8], 43);
  v11 = __ROR8__((0x9AE16A3B2F90404FLL * *&v21[12]) ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * *&v21[4];
  v12 = v9 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v21[12] + __ROR8__(*&v21[8] ^ 0xC949D7C7509E6557, 20) + 20;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v11 + v10) ^ v12)));
  v16 = &v17;
  *v21 = &v17;
  *&v21[8] = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v16, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t mlir::mps_spi::DeviceDescriptorOptionsAttr::get(mlir::StringAttr *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 261;
  v21[0] = a2;
  v21[1] = a3;
  v10 = mlir::StringAttr::get(a1, v21);
  v20 = 261;
  v19[0] = a5;
  v19[1] = a6;
  v11 = mlir::StringAttr::get(a1, v19);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v23[0] = &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
  v23[1] = a1;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir7mps_spi6detail34DeviceDescriptorOptionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27DeviceDescriptorOptionsAttrEJNS1_10StringAttrERiSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v28[1] = v23;
  v25 = v10;
  v26 = a4;
  v27 = v11;
  *&v29[4] = 0;
  *&v29[8] = a4;
  *&v29[12] = (v11 >> 4) ^ (v11 >> 9);
  v13 = 0xB492B66FBE98F273 * ((v10 >> 4) ^ (v10 >> 9));
  v14 = __ROR8__(v13 - *&v29[8], 43);
  v15 = __ROR8__((0x9AE16A3B2F90404FLL * *&v29[12]) ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * *&v29[4];
  v16 = __ROR8__(*&v29[8] ^ 0xC949D7C7509E6557, 20);
  v17 = 0x9DDFEA08EB382D69 * ((v13 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v29[12] + v16 + 20) ^ ((0x9DDFEA08EB382D69 * ((v15 + v14) ^ (v13 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v29[12] + v16 + 20))) >> 47) ^ (0x9DDFEA08EB382D69 * ((v15 + v14) ^ (v13 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v29[12] + v16 + 20))));
  v24 = &v25;
  *v29 = &v25;
  *&v29[8] = v28;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, -348639895 * ((v17 >> 47) ^ v17), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int &,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int &,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int &,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int &,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v29);
}

uint64_t mlir::mps_spi::DeviceDescriptorOptionsAttr::parse(mlir::AsmParser *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v28 = 257;
    if ((*(*a1 + 400))(a1, "architecture", 12, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7uLL);
      *v27 = 0;
      v3 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, v27, 0);
      v4 = *a1;
      if (!v3)
      {
        v15 = (*(v4 + 40))(a1);
        v28 = 259;
        (*(*a1 + 24))(v31, a1, v15, v27);
        if (v31[0])
        {
          mlir::InFlightDiagnostic::report(v31);
        }

        if (v39 == 1)
        {
          if (v38 != &v39)
          {
            free(v38);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v37;
            v18 = __p;
            if (v37 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v37 = v16;
            operator delete(v18);
          }

          v19 = v34;
          if (v34)
          {
            v20 = v35;
            v21 = v34;
            if (v35 != v34)
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
              v21 = v34;
            }

            v35 = v19;
            operator delete(v21);
          }

          if (v32 != &v33)
          {
            free(v32);
          }
        }

        return 0;
      }

      v5 = *v27;
      if ((*(v4 + 120))(a1))
      {
        v28 = 257;
        if ((*(*a1 + 400))(a1, "gpu_core_count", 14, v27) & 1) != 0 && ((*(*a1 + 136))(a1))
        {
          v27[0] = 0;
          v6 = mlir::AsmParser::parseInteger<int>(a1, v27);
          v7 = *a1;
          if (v6)
          {
            v8 = v27[0];
            if (((*(v7 + 120))(a1) & 1) == 0)
            {
              return 0;
            }

            v28 = 257;
            if (((*(*a1 + 400))(a1, "ane_options_json", 16, v27) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
            {
              return 0;
            }

            v9 = mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(a1);
            v10 = *a1;
            if (v11)
            {
              v12 = v9;
              if ((*(v10 + 168))(a1))
              {
                v13 = mlir::AsmParser::getContext(a1);
                return mlir::mps_spi::DeviceDescriptorOptionsAttr::get(v13, v5, v8, v12);
              }

              return 0;
            }

            v26 = (*(v10 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v29, a1, v26, v27);
            v25 = v29;
          }

          else
          {
            v24 = (*(v7 + 40))(a1);
            v28 = 259;
            (*(*a1 + 24))(v30, a1, v24, v27);
            v25 = v30;
          }

          mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::FieldParser<mlir::StringAttr,mlir::StringAttr>::parse(mlir::AsmParser *a1)
{
  Context = mlir::AsmParser::getContext(a1);
  mlir::MLIRContext::getOrLoadDialect(Context, "builtin", 7uLL);
  v6 = 0;
  v3 = mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v6, 0);
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void *mlir::mps_spi::DeviceDescriptorOptionsAttr::print(mlir::mps_spi::DeviceDescriptorOptionsAttr *this, mlir::AsmPrinter *a2)
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
  if ((v6[3] - v7) > 0xB)
  {
    *(v7 + 8) = 1701999988;
    *v7 = *"architecture";
    v6[4] += 12;
  }

  else
  {
    llvm::raw_ostream::write(v6, "architecture", 0xCuLL);
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

  (*(*a2 + 40))(a2, *(*this + 8));
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
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
  if (v18[3] - v19 > 0xDuLL)
  {
    qmemcpy(v19, "gpu_core_count", 14);
    v18[4] += 14;
  }

  else
  {
    llvm::raw_ostream::write(v18, "gpu_core_count", 0xEuLL);
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

  v22 = (*(*a2 + 16))(a2);
  v23 = v22[4];
  if (v22[3] == v23)
  {
    llvm::raw_ostream::write(v22, "=", 1uLL);
  }

  else
  {
    *v23 = 61;
    ++v22[4];
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (v25 >= *(v24 + 3))
  {
    llvm::raw_ostream::write(v24, 32);
  }

  else
  {
    *(v24 + 4) = v25 + 1;
    *v25 = 32;
  }

  v26 = *(*this + 16);
  v27 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v27, v26);
  v28 = (*(*a2 + 16))(a2);
  v29 = v28[4];
  if (v28[3] == v29)
  {
    llvm::raw_ostream::write(v28, ",", 1uLL);
  }

  else
  {
    *v29 = 44;
    ++v28[4];
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

  v32 = (*(*a2 + 16))(a2);
  v33 = v32[4];
  if (v32[3] - v33 > 0xFuLL)
  {
    *v33 = *"ane_options_json";
    v32[4] += 16;
  }

  else
  {
    llvm::raw_ostream::write(v32, "ane_options_json", 0x10uLL);
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (v35 >= *(v34 + 3))
  {
    llvm::raw_ostream::write(v34, 32);
  }

  else
  {
    *(v34 + 4) = v35 + 1;
    *v35 = 32;
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = v36[4];
  if (v36[3] == v37)
  {
    llvm::raw_ostream::write(v36, "=", 1uLL);
  }

  else
  {
    *v37 = 61;
    ++v36[4];
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (v39 >= *(v38 + 3))
  {
    llvm::raw_ostream::write(v38, 32);
  }

  else
  {
    *(v38 + 4) = v39 + 1;
    *v39 = 32;
  }

  (*(*a2 + 40))(a2, *(*this + 24));
  result = (*(*a2 + 16))(a2);
  v41 = result[4];
  if (result[3] == v41)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v41 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps_spi::MPSSPIDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v38[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v41[2] = 0;
  v39 = 0;
  v40 = 0;
  v38[1] = v5;
  v41[0] = 0;
  if (((*(*a2 + 640))(a2, &v39) & 1) == 0)
  {
    v6 = 0;
    *v41 = 256;
    if (v41[2])
    {
      v34 = "device_descriptor_options";
    }

    else
    {
      v41[2] = 1;
    }

    goto LABEL_21;
  }

  v34 = "device_descriptor_options";
  v35 = 25;
  if (v41[2])
  {
    v6 = 0;
LABEL_21:
    v7 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v7 = v40;
  if (v40)
  {
    if (v40 == 25)
    {
      v8 = *v39 == 0x645F656369766564 && *(v39 + 8) == 0x6F74706972637365;
      v9 = v8 && *(v39 + 16) == 0x6E6F6974706F5F72;
      if (v9 && *(v39 + 24) == 115)
      {
        v6 = mlir::mps_spi::DeviceDescriptorOptionsAttr::parse(a2);
        v41[0] = v6 != 0;
        *&v41[1] = 257;
        goto LABEL_21;
      }
    }
  }

  else
  {
    (*(*v38[0] + 648))(v38[0], &v34, 1);
    if (v41[2])
    {
      v7 = 0;
      v11 = 0;
      v6 = 0;
      goto LABEL_22;
    }

    v7 = v40;
  }

  v6 = 0;
  v11 = v39;
  *v41 = 0;
  v41[2] = 1;
LABEL_22:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v38) & 0x100) == 0)
  {
    v33 = 257;
    (*(*a2 + 24))(v38, a2, v4, v32);
    v13 = v12;
    if (*v12)
    {
      v37 = 261;
      v34 = v11;
      v35 = v7;
      mlir::Diagnostic::operator<<((v12 + 1), &v34);
      if (*v13)
      {
        v14 = v13 + 24;
        v15 = *(v13 + 24);
        LODWORD(v34) = 3;
        v36 = 14;
        v16 = *(v13 + 32);
        v17 = &v34;
        if (v16 >= *(v13 + 36))
        {
          if (v15 <= &v34 && v15 + 24 * v16 > &v34)
          {
            v31 = &v34 - v15;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v13 + 40, v16 + 1, 24);
            v15 = *(v13 + 24);
            v17 = &v31[v15];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v13 + 40, v16 + 1, 24);
            v15 = *(v13 + 24);
            v17 = &v34;
          }
        }

        v18 = v15 + 24 * *(v13 + 32);
        v19 = *v17;
        *(v18 + 16) = v17[2];
        *v18 = v19;
        ++*(v13 + 32);
        if (*v13)
        {
          v20 = *(a1 + 8);
          v21 = *(a1 + 16);
          v37 = 261;
          v34 = v20;
          v35 = v21;
          mlir::Diagnostic::operator<<(v13 + 8, &v34);
        }
      }
    }

    if (v38[0])
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v48 == 1)
    {
      if (v47 != &v48)
      {
        free(v47);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v46;
        v24 = __p;
        if (v46 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v46 = v22;
        operator delete(v24);
      }

      v25 = v43;
      if (v43)
      {
        v26 = v44;
        v27 = v43;
        if (v44 != v43)
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
          v27 = v43;
        }

        v44 = v25;
        operator delete(v27);
      }

      if (v40 != &v42)
      {
        free(v40);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::mps_spi::MPSSPIDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if (v6[3] - v7 > 0x18uLL)
    {
      qmemcpy(v7, "device_descriptor_options", 25);
      v6[4] += 25;
    }

    else
    {
      llvm::raw_ostream::write(v6, "device_descriptor_options", 0x19uLL);
    }

    mlir::mps_spi::DeviceDescriptorOptionsAttr::print(v8, a3);
  }
}

uint64_t mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    return 0;
  }

  v16[0] = &unk_1F5B17248;
  v16[1] = a5;
  v17 = v16;
  if (!a2)
  {
    v13 = 1;
    v12 = v16;
LABEL_16:
    (*(*v12 + 32))(v12);
    return v13;
  }

  v7 = 0;
  v8 = a2 - 1;
  do
  {
    v9 = mlir::TypeRange::dereference_iterator(a1, v7);
    v14 = mlir::TypeRange::dereference_iterator(a3, v7);
    v15 = v9;
    if (!v17)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    result = (*(*v17 + 48))(v17, &v15, &v14);
    if (result)
    {
      v11 = v8 == v7;
    }

    else
    {
      v11 = 1;
    }

    ++v7;
  }

  while (!v11);
  v12 = v17;
  if (v17 == v16)
  {
    v13 = result;
    goto LABEL_16;
  }

  if (!v17)
  {
    return result;
  }

  v13 = result;
  (*(*v17 + 40))(v17);
  return v13;
}

void *std::__function::__func<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B17248;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B17248;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0,std::allocator<mlir::mps_spi::anonymous namespace::areMoreSpecializedTypes(mlir::TypeRange,mlir::TypeRange,std::function<BOOL ()(mlir::Type,mlir::Type)>)::$_0>,BOOL ()(mlir::Type,mlir::Type)>::operator()(uint64_t a1, void **a2, void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(**a2 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v18[0] = v4;
  v18[1] = v6;
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  result = 0;
  v17[0] = v5;
  v17[1] = v7;
  if (v4 && v5)
  {
    v9 = *(a1 + 8);
    isSplat = mlir::ElementsAttr::isSplat(v18);
    v19 = mlir::ElementsAttr::isSplat(v17);
    v20 = isSplat;
    v11 = *(v9 + 24);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      JUMPOUT(0x1E0028BDCLL);
    }

    result = (*(*v11 + 48))(v11, &v20, &v19);
    if (result)
    {
      if (mlir::CallOpInterface::getArgOperands(v17))
      {
        result = mlir::CallOpInterface::getArgOperands(v18);
        if (result)
        {
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v18);
          v14 = v13;
          v15 = mlir::CallableOpInterface::getArgAttrsAttr(v17);
          return mlir::mps::isMoreSpecializedShape(ArgAttrsAttr, v14, v15, v16);
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps_spi::__mlir_ods_local_attr_constraint_MPSSPIOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void *mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mps_spi.rms_norm", 16, a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B172C0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::RMSNormOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::downgradeToVersion;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

const char *llvm::getTypeName<mlir::DowngraderInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DowngraderInterface]";
  v6 = 75;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a4;
  v16[1] = a5;
  if (a5)
  {
    v11 = *(mlir::ValueRange::dereference_iterator(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = mlir::Float32Type::get(a1, a2);
    v11 = mlir::UnrankedTensorType::get(v12);
  }

  v13 = *(a11 + 8);
  if (v13 >= *(a11 + 12))
  {
    v15 = v11;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v13 + 1, 8);
    v11 = v15;
    LODWORD(v13) = *(a11 + 8);
  }

  *(*a11 + 8 * v13) = v11;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B17518;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps_spi::RMSNormOp>::refineReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, AttributeStorage *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x400000000;
  v24 = a4;
  v25 = a5;
  if (a5)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(&v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v14 = mlir::Float32Type::get(a1, a2);
    v13 = mlir::UnrankedTensorType::get(v14);
  }

  *(v21 + v22) = v13;
  LODWORD(v22) = v22 + 1;
  mlir::ValueRange::ValueRange(v20, v21, v22);
  mlir::ValueRange::ValueRange(v19, *a11, *(a11 + 8));
  v24 = &unk_1F5B17518;
  v26 = &v24;
  if (v26 == &v24)
  {
    (*(*v26 + 4))(v26);
    if (isCompatibleReturnTypesDefaultImpl)
    {
LABEL_8:
      v16 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    if (v26)
    {
      (*(*v26 + 5))();
    }

    if (isCompatibleReturnTypesDefaultImpl)
    {
      goto LABEL_8;
    }
  }

  v24 = "mps_spi.rms_norm";
  v25 = 16;
  v17.var0.var0 = a3;
  v16 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v17, "'", &v24, "' op inferred type(s) ", &v21, " are incompatible with return type(s) of operation ", a11);
LABEL_11:
  if (v21 != v23)
  {
    free(v21);
  }

  return v16;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B17518;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v65;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v56 = v1;
    v66 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v56;
    a1 = v66;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v57 = v1;
    v67 = a1;
    v48 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v48;
    v1 = v57;
    a1 = v67;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v58 = v1;
    v68 = a1;
    v41 = v3;
    v49 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v35;
    v3 = v42;
    v2 = v50;
    v1 = v59;
    a1 = v69;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v60 = v1;
    v70 = a1;
    v43 = v3;
    v51 = v2;
    v30 = v5;
    v36 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v26;
    v5 = v31;
    v4 = v37;
    v3 = v44;
    v2 = v52;
    v1 = v61;
    a1 = v71;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v62 = v1;
    v72 = a1;
    v45 = v3;
    v53 = v2;
    v32 = v5;
    v38 = v4;
    v23 = v7;
    v27 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v7 = v23;
    v6 = v27;
    v5 = v32;
    v4 = v38;
    v3 = v45;
    v2 = v53;
    v1 = v62;
    a1 = v72;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  v9 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DowngraderInterface::Trait<Empty>]";
  v6 = 89;
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

BOOL mlir::Op<mlir::mps_spi::RMSNormOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 3) && (v7 = a1, mlir::mps_spi::RMSNormOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::mps_spi::RMSNormOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mps_spi.sdpa", 12, a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::ScaledDotProductAttentionOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B17388;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  a5(v15, a6);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "this operation does not support properties");
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v21;
      v8 = __p;
      if (v21 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v21 = v6;
      operator delete(v8);
    }

    v9 = v18;
    if (v18)
    {
      v10 = v19;
      v11 = v18;
      if (v19 != v18)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            operator delete[](v12);
          }
        }

        while (v10 != v9);
        v11 = v18;
      }

      v19 = v9;
      operator delete(v11);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::downgradeToVersion;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc(0x18uLL);
  v3 = v2;
  *v2 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::inferReturnTypes;
  v2[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::refineReturnTypes;
  v2[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::OpInterface<mlir::InferTypeOpInterface,mlir::detail::InferTypeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B17518;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps_spi::ScaledDotProductAttentionOp>::refineReturnTypes(mlir::Float32Type *a1, mlir *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x400000000;
  if (mlir::mps_spi::ScaledDotProductAttentionOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, &v21))
  {
    mlir::ValueRange::ValueRange(v20, v21, v22);
    mlir::ValueRange::ValueRange(v19, *a11, *(a11 + 8));
    v24[0] = &unk_1F5B17518;
    v25 = v24;
    if (v25 == v24)
    {
      (*(*v25 + 32))(v25);
      if (isCompatibleReturnTypesDefaultImpl)
      {
LABEL_6:
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      if (v25)
      {
        (*(*v25 + 40))(v25);
      }

      if (isCompatibleReturnTypesDefaultImpl)
      {
        goto LABEL_6;
      }
    }

    v24[0] = "mps_spi.sdpa";
    v24[1] = 12;
    v15.var0.var0 = a3;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v15, "'", v24, "' op inferred type(s) ", &v21, " are incompatible with return type(s) of operation ", a11);
  }

  else
  {
    v14 = 0;
  }

LABEL_10:
  if (v21 != v23)
  {
    free(v21);
  }

  return v14;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::placement::MemrefToTensor>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps_spi::ScaledDotProductAttentionOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F5B17518;
  v7 = v6;
  if (v7 == v6)
  {
    (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    (*(*v7 + 40))();
  }

  return isCompatibleReturnTypesDefaultImpl;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>(uint64_t a1)
{
  {
    v77 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v77;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v67 = v1;
    v78 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v67;
    a1 = v78;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v68 = v1;
    v79 = a1;
    v58 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v2 = v58;
    v1 = v68;
    a1 = v79;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v69 = v1;
    v80 = a1;
    v50 = v3;
    v59 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v50;
    v2 = v59;
    v1 = v69;
    a1 = v80;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v70 = v1;
    v81 = a1;
    v51 = v3;
    v60 = v2;
    v43 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v4 = v43;
    v3 = v51;
    v2 = v60;
    v1 = v70;
    a1 = v81;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v71 = v1;
    v82 = a1;
    v52 = v3;
    v61 = v2;
    v44 = v4;
    v37 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v5 = v37;
    v4 = v44;
    v3 = v52;
    v2 = v61;
    v1 = v71;
    a1 = v82;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v72 = v1;
    v83 = a1;
    v53 = v3;
    v62 = v2;
    v45 = v4;
    v32 = v6;
    v38 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v6 = v32;
    v5 = v38;
    v4 = v45;
    v3 = v53;
    v2 = v62;
    v1 = v72;
    a1 = v83;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v73 = v1;
    v84 = a1;
    v54 = v3;
    v63 = v2;
    v46 = v4;
    v33 = v6;
    v39 = v5;
    v28 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::CopyOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::OpTrait::SameOperandsShape,mlir::MemoryEffectOpInterface::Trait>();
    v7 = v28;
    v6 = v33;
    v5 = v39;
    v4 = v46;
    v3 = v54;
    v2 = v63;
    v1 = v73;
    a1 = v84;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsElementType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v74 = v1;
    v85 = a1;
    v55 = v3;
    v64 = v2;
    v47 = v4;
    v34 = v6;
    v40 = v5;
    v25 = v8;
    v29 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v8 = v25;
    v7 = v29;
    v6 = v34;
    v5 = v40;
    v4 = v47;
    v3 = v55;
    v2 = v64;
    v1 = v74;
    a1 = v85;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v75 = v1;
    v86 = a1;
    v56 = v3;
    v65 = v2;
    v48 = v4;
    v35 = v6;
    v41 = v5;
    v26 = v8;
    v30 = v7;
    v23 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v23;
    v8 = v26;
    v7 = v30;
    v6 = v35;
    v5 = v41;
    v4 = v48;
    v3 = v56;
    v2 = v65;
    v1 = v75;
    a1 = v86;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v76 = v1;
    v87 = a1;
    v57 = v3;
    v66 = v2;
    v49 = v4;
    v36 = v6;
    v42 = v5;
    v27 = v8;
    v31 = v7;
    v22 = v10;
    v24 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v10 = v22;
    v9 = v24;
    v8 = v27;
    v7 = v31;
    v6 = v36;
    v5 = v42;
    v4 = v49;
    v3 = v57;
    v2 = v66;
    v1 = v76;
    a1 = v87;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mps_spi::ScaledDotProductAttentionOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyNOperands(a1, 5) && (v8 = a1, (mlir::mps_spi::ScaledDotProductAttentionOp::verifyInvariantsImpl(&v8) & 1) != 0) && mlir::OpTrait::impl::verifySameOperandsElementType(a1, v5))
  {
    v8 = a1;
    return mlir::mps_spi::ScaledDotProductAttentionOp::verify(&v8);
  }

  else
  {
    return 0;
  }
}

void *mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::Model(void *a1, uint64_t a2)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(&v9);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(&v9);
  mlir::OperationName::Impl::Impl(a1, "mps_spi.strided_array_view", 26, a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id, &v9);
  v4 = v9;
  if (v10)
  {
    v5 = 16 * v10;
    v6 = (v9 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v9;
  }

  if (v4 != v11)
  {
    free(v4);
  }

  *a1 = &unk_1F5B17450;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::foldHook(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
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

BOOL mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

void mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::mps_spi::StridedArrayViewOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::memref::ReinterpretCastOp::populateInherentAttrs(Context, v6, a3);
}

double mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::mps_spi::StridedArrayViewOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps_spi::StridedArrayViewOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] != a2[1])
  {
    return 0;
  }

  if (a3[2] != a2[2])
  {
    return 0;
  }

  return a3[3] == a2[3] && a3[4] == a2[4];
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(uint64_t a1)
{
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::writeProperties;
  {
    v5 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(uint64_t a1)
{
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getAsmResultNames;
  v2[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getAsmBlockArgumentNames;
  v2[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getAsmBlockNames;
  v2[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getDefaultDialect;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);

  return a3(a4, NextResultAtOffset, "array_view", 10);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::downgradeToVersion;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::DowngraderInterfaceInterfaceTraits::Model<mlir::mps_spi::RMSNormOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getSpeculatability;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getEffects;
  {
    v5 = v2;
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(uint64_t a1)
{
  v2 = malloc(0xD0uLL);
  v3 = v2;
  *v2 = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getOffsetSizeAndStrideStartOperandIndex;
  v2[1] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getArrayAttrMaxRanks;
  v2[2] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getOffsets;
  v2[3] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getSizes;
  v2[4] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getStrides;
  v2[5] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getStaticOffsets;
  v2[6] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getStaticSizes;
  v2[7] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getStaticStrides;
  v2[8] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getMixedOffsets;
  v2[9] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getMixedSizes;
  v2[10] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getMixedStrides;
  v2[11] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::isDynamicOffset;
  v2[12] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::isDynamicSize;
  v2[13] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::isDynamicStride;
  v2[14] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getStaticOffset;
  v2[15] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getStaticSize;
  v2[16] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getStaticStride;
  v2[17] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getIndexOfDynamicOffset;
  v2[18] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getIndexOfDynamicSize;
  v2[19] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getIndexOfDynamicStride;
  v2[20] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getDynamicOffset;
  v2[21] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getDynamicSize;
  v2[22] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getDynamicStride;
  v2[23] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::isSameAs;
  v2[24] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::hasUnitStride;
  v2[25] = mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::hasZeroOffset;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getArrayAttrMaxRanks(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 36))
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  v5 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v5);
  return (v3 << 32) | 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v7 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v7);
  return mlir::detail::getNumDynamicEntriesUpToIdx(v4, v5, a3) + 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getIndexOfDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2 + 64;
  v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v9);
  return mlir::detail::getNumDynamicEntriesUpToIdx(v6, v7, a3) + *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 28) + 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getIndexOfDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2 + 64;
  v11 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v11);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(v6, v7, a3);
  v9 = v5 + 16 * ((*(a2 + 44) >> 23) & 1);
  return (NumDynamicEntriesUpToIdx + *(v9 + 28) + *(v9 + 32) + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v5 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v8);
  return *(*(a2 + 72) + 32 * (mlir::detail::getNumDynamicEntriesUpToIdx(v5, v6, a3) + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getDynamicSize(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2 + 64;
  v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v9);
  return *(*(a2 + 72) + 32 * (mlir::detail::getNumDynamicEntriesUpToIdx(v6, v7, a3) + *(v5 + 16 * ((*(a2 + 44) >> 23) & 1) + 28) + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2 + 64;
  v11 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + 16);
  v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v11);
  NumDynamicEntriesUpToIdx = mlir::detail::getNumDynamicEntriesUpToIdx(v6, v7, a3);
  v9 = v5 + 16 * ((*(a2 + 44) >> 23) & 1);
  return *(*(a2 + 72) + 32 * (NumDynamicEntriesUpToIdx + *(v9 + 28) + *(v9 + 32) + 1) + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::isSameAs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v6 = a2;
  if (a2)
  {
    v7 = a6;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v10;
    a4 = v9;
    a5 = v8;
    a6 = v7;
    a2 = InterfaceFor;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v6, a2, a3, a4, a5, a6);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::mps_spi::StridedArrayViewOp>::getMixedStrides(&v10, &v11);
  v2 = v11;
  if (v12)
  {
    v3 = 8 * v12 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 1;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v11;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v13)
  {
    free(v2);
  }

  return v7;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::mps_spi::StridedArrayViewOp>::getMixedOffsets(&v10, &v11);
  v2 = v11;
  if (v12)
  {
    v3 = 8 * v12 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 0;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v11;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v13)
  {
    free(v2);
  }

  return v7;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>>(uint64_t a1)
{
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ViewLikeOpInterfaceInterfaceTraits::Model<mlir::mps_spi::StridedArrayViewOp>::getViewSource;
  {
    v5 = v2;
    mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

BOOL mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::foldSingleResultHook<mlir::mps_spi::StridedArrayViewOp>(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 44);
  v9 = a1 + 16 * ((v8 >> 23) & 1);
  v10 = *(v9 + 80);
  v21 = *(v9 + 64);
  v22 = v10;
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v19[0] = a1;
  v19[1] = v11;
  v19[2] = v12;
  v20 = 1;
  v23 = *(v9 + 96);
  v13 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v14 = ((v9 + 64 + ((v8 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  mlir::ValueRange::ValueRange(v24, v14, v13);
  v24[2] = a2;
  v24[3] = a3;
  v15 = mlir::mps_spi::StridedArrayViewOp::fold(v19);
  if (v15 < 8 || a1 - 16 == (v15 & ((v15 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v15 > 7;
  }

  v16 = *(a4 + 8);
  if (v16 >= *(a4 + 12))
  {
    v18 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v16 + 1, 8);
    v15 = v18;
    LODWORD(v16) = *(a4 + 8);
  }

  *(*a4 + 8 * v16) = v15;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>(uint64_t a1)
{
  {
    v152 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v152;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v137 = v1;
    v153 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v1 = v137;
    a1 = v153;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v138 = v1;
    v154 = a1;
    v123 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::HostTypeConversion,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v2 = v123;
    v1 = v138;
    a1 = v154;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v139 = v1;
    v155 = a1;
    v110 = v3;
    v124 = v2;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v3 = v110;
    v2 = v124;
    v1 = v139;
    a1 = v155;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v140 = v1;
    v156 = a1;
    v111 = v3;
    v125 = v2;
    v98 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v4 = v98;
    v3 = v111;
    v2 = v125;
    v1 = v140;
    a1 = v156;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v141 = v1;
    v157 = a1;
    v112 = v3;
    v126 = v2;
    v87 = v5;
    v99 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v5 = v87;
    v4 = v99;
    v3 = v112;
    v2 = v126;
    v1 = v141;
    a1 = v157;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v142 = v1;
    v158 = a1;
    v113 = v3;
    v127 = v2;
    v88 = v5;
    v100 = v4;
    v77 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    v6 = v77;
    v5 = v88;
    v4 = v100;
    v3 = v113;
    v2 = v127;
    v1 = v142;
    a1 = v158;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v143 = v1;
    v159 = a1;
    v114 = v3;
    v128 = v2;
    v89 = v5;
    v101 = v4;
    v78 = v6;
    v68 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v7 = v68;
    v6 = v78;
    v5 = v89;
    v4 = v101;
    v3 = v114;
    v2 = v128;
    v1 = v143;
    a1 = v159;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v144 = v1;
    v160 = a1;
    v115 = v3;
    v129 = v2;
    v90 = v5;
    v102 = v4;
    v79 = v6;
    v60 = v8;
    v69 = v7;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v8 = v60;
    v7 = v69;
    v6 = v79;
    v5 = v90;
    v4 = v102;
    v3 = v115;
    v2 = v129;
    v1 = v144;
    a1 = v160;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v145 = v1;
    v161 = a1;
    v116 = v3;
    v130 = v2;
    v91 = v5;
    v103 = v4;
    v80 = v6;
    v61 = v8;
    v70 = v7;
    v53 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
    v9 = v53;
    v8 = v61;
    v7 = v70;
    v6 = v80;
    v5 = v91;
    v4 = v103;
    v3 = v116;
    v2 = v130;
    v1 = v145;
    a1 = v161;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DowngraderInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v146 = v1;
    v162 = a1;
    v117 = v3;
    v131 = v2;
    v92 = v5;
    v104 = v4;
    v81 = v6;
    v62 = v8;
    v71 = v7;
    v47 = v10;
    v54 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v10 = v47;
    v9 = v54;
    v8 = v62;
    v7 = v71;
    v6 = v81;
    v5 = v92;
    v4 = v104;
    v3 = v117;
    v2 = v131;
    v1 = v146;
    a1 = v162;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v147 = v1;
    v163 = a1;
    v118 = v3;
    v132 = v2;
    v93 = v5;
    v105 = v4;
    v82 = v6;
    v63 = v8;
    v72 = v7;
    v48 = v10;
    v55 = v9;
    v42 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v11 = v42;
    v10 = v48;
    v9 = v55;
    v8 = v63;
    v7 = v72;
    v6 = v82;
    v5 = v93;
    v4 = v105;
    v3 = v118;
    v2 = v132;
    v1 = v147;
    a1 = v163;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v148 = v1;
    v164 = a1;
    v119 = v3;
    v133 = v2;
    v94 = v5;
    v106 = v4;
    v83 = v6;
    v64 = v8;
    v73 = v7;
    v49 = v10;
    v56 = v9;
    v38 = v12;
    v43 = v11;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
    v12 = v38;
    v11 = v43;
    v10 = v49;
    v9 = v56;
    v8 = v64;
    v7 = v73;
    v6 = v83;
    v5 = v94;
    v4 = v106;
    v3 = v119;
    v2 = v133;
    v1 = v148;
    a1 = v164;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v149 = v1;
    v165 = a1;
    v120 = v3;
    v134 = v2;
    v95 = v5;
    v107 = v4;
    v84 = v6;
    v65 = v8;
    v74 = v7;
    v50 = v10;
    v57 = v9;
    v39 = v12;
    v44 = v11;
    v35 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
    v13 = v35;
    v12 = v39;
    v11 = v44;
    v10 = v50;
    v9 = v57;
    v8 = v65;
    v7 = v74;
    v6 = v84;
    v5 = v95;
    v4 = v107;
    v3 = v120;
    v2 = v134;
    v1 = v149;
    a1 = v165;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v150 = v1;
    v166 = a1;
    v121 = v3;
    v135 = v2;
    v96 = v5;
    v108 = v4;
    v85 = v6;
    v66 = v8;
    v75 = v7;
    v51 = v10;
    v58 = v9;
    v40 = v12;
    v45 = v11;
    v33 = v14;
    v36 = v13;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>();
    v14 = v33;
    v13 = v36;
    v12 = v40;
    v11 = v45;
    v10 = v51;
    v9 = v58;
    v8 = v66;
    v7 = v75;
    v6 = v85;
    v5 = v96;
    v4 = v108;
    v3 = v121;
    v2 = v135;
    v1 = v150;
    a1 = v166;
  }

  v15 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    v151 = v1;
    v167 = a1;
    v122 = v3;
    v136 = v2;
    v97 = v5;
    v109 = v4;
    v86 = v6;
    v67 = v8;
    v76 = v7;
    v52 = v10;
    v59 = v9;
    v41 = v12;
    v46 = v11;
    v34 = v14;
    v37 = v13;
    v32 = v15;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>();
    v15 = v32;
    v14 = v34;
    v13 = v37;
    v12 = v41;
    v11 = v46;
    v10 = v52;
    v9 = v59;
    v8 = v67;
    v7 = v76;
    v6 = v86;
    v5 = v97;
    v4 = v109;
    v3 = v122;
    v2 = v136;
    v1 = v151;
    a1 = v167;
  }

  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || v14 == a1 || v15 == a1 || mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ViewLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

BOOL mlir::Op<mlir::mps_spi::StridedArrayViewOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DowngraderInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::ViewLikeOpInterface::Trait>::verifyInvariants(mlir::Block **a1, mlir::Operation *a2)
{
  if (mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::OneResult<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::OpInvariants<mlir::mps_spi::StridedArrayViewOp>,mlir::BytecodeOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OpAsmOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::DowngraderInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::MemRefsNormalizable<mlir::mps_spi::StridedArrayViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::mps_spi::StridedArrayViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>>(a1, a2))
  {
    v5 = a1;
    return mlir::mps_spi::StridedArrayViewOp::verify(&v5);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::OneResult<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::OpInvariants<mlir::mps_spi::StridedArrayViewOp>,mlir::BytecodeOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OpAsmOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::DowngraderInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::MemRefsNormalizable<mlir::mps_spi::StridedArrayViewOp>,mlir::ConditionallySpeculatable::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::mps_spi::StridedArrayViewOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>,mlir::ViewLikeOpInterface::Trait<mlir::mps_spi::StridedArrayViewOp>>(mlir::Block **a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) && (mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) & 1) != 0 && (v7 = a1, mlir::mps_spi::StridedArrayViewOp::verifyInvariantsImpl(&v7)))
  {
    v5 = mlir::op_definition_impl::verifyTrait<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::memref::ReinterpretCastOp>>(a1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t *mlir::Dialect::addAttribute<mlir::mps_spi::DeviceDescriptorOptionsAttr>(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = mlir::detail::StorageUserBase<mlir::mps_spi::DeviceDescriptorOptionsAttr,mlir::Attribute,mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::detail::AttributeUniquer>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v18 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSD_6detail34DeviceDescriptorOptionsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_;
  v20 = &v12;
  v21 = _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSC_6detail34DeviceDescriptorOptionsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_;
  v22 = &v11;
  v23 = &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
  v24 = "mps_spi.device_descriptor_options";
  v25 = 33;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, &v13);
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
  return mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, 0, v9);
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSD_6detail34DeviceDescriptorOptionsAttrStorageENSB_16AttributeUniquerEJEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7mps_spi27DeviceDescriptorOptionsAttrES2_NSC_6detail34DeviceDescriptorOptionsAttrStorageENSA_16AttributeUniquerEJEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return mlir::detail::replaceImmediateSubElementsImpl<mlir::mps_spi::DeviceDescriptorOptionsAttr>(a2, v5);
}

uint64_t mlir::detail::replaceImmediateSubElementsImpl<mlir::mps_spi::DeviceDescriptorOptionsAttr>(uint64_t a1, uint64_t **a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v2 = *(a1 + 24);
  v3 = *a2;
  if (!*(a1 + 8))
  {
    v4 = 0;
    v6 = *(a1 + 16);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = *v3++;
  v4 = v5;
  v6 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *v3;
LABEL_6:
  Context = mlir::Attribute::getContext(&v16);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id;
  v17[1] = Context;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir7mps_spi6detail34DeviceDescriptorOptionsAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27DeviceDescriptorOptionsAttrEJNS1_10StringAttrEiSD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v22[1] = v17;
  v19 = v4;
  v20 = v6;
  v21 = v7;
  *&v23[4] = 0;
  *&v23[8] = v6;
  *&v23[12] = (v7 >> 4) ^ (v7 >> 9);
  v10 = 0xB492B66FBE98F273 * ((v4 >> 4) ^ (v4 >> 9));
  v11 = __ROR8__(v10 - *&v23[8], 43);
  v12 = __ROR8__((0x9AE16A3B2F90404FLL * *&v23[12]) ^ 0xFF51AFD7ED558CCDLL, 30) - 0x3C5A37A36834CED9 * *&v23[4];
  v13 = __ROR8__(*&v23[8] ^ 0xC949D7C7509E6557, 20);
  v14 = 0x9DDFEA08EB382D69 * ((v10 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v23[12] + v13 + 20) ^ ((0x9DDFEA08EB382D69 * ((v12 + v11) ^ (v10 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v23[12] + v13 + 20))) >> 47) ^ (0x9DDFEA08EB382D69 * ((v12 + v11) ^ (v10 - 0xAE502812AA7333 - 0x9AE16A3B2F90404FLL * *&v23[12] + v13 + 20))));
  v18 = &v19;
  *v23 = &v19;
  *&v23[8] = v22;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id, -348639895 * ((v14 >> 47) ^ v14), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
}

void *std::__function::__func<mlir::mps_spi::anonymous namespace::$_4,std::allocator<mlir::mps_spi::anonymous namespace::$_4>,BOOL ()(mlir::Type,mlir::Type)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B17518;
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps_spi::detail::StridedArrayViewOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps_spi::StridedArrayViewOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(v27);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v27, "'");
  v5 = v4;
  v23 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v23);
  if (*v5)
  {
    v26 = 261;
    v23 = AttrData;
    v24 = v7;
    mlir::Diagnostic::operator<<(v5 + 8, &v23);
    if (*v5)
    {
      v8 = v5 + 24;
      v9 = *(v5 + 24);
      LODWORD(v23) = 3;
      v24 = "' op ";
      v25 = 5;
      v10 = *(v5 + 32);
      v11 = &v23;
      if (v10 >= *(v5 + 36))
      {
        if (v9 <= &v23 && v9 + 24 * v10 > &v23)
        {
          v22 = &v23 - v9;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v5 + 40, v10 + 1, 24);
          v9 = *(v5 + 24);
          v11 = &v22[v9];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v5 + 40, v10 + 1, 24);
          v9 = *(v5 + 24);
          v11 = &v23;
        }
      }

      v12 = v9 + 24 * *(v5 + 32);
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      ++*(v5 + 32);
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, v5);
  if (v27[0])
  {
    mlir::InFlightDiagnostic::report(v27);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v33;
      v16 = __p;
      if (v33 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v33 = v14;
      operator delete(v16);
    }

    v17 = v30;
    if (v30)
    {
      v18 = v31;
      v19 = v30;
      if (v31 != v30)
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
        v19 = v30;
      }

      v31 = v17;
      operator delete(v19);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }
}

uint64_t llvm::SmallVectorImpl<mlir::DiagnosticArgument>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
LABEL_19:
      *v6 = 0;
      return result;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v11 = result;
        memmove(*result, *a2, 24 * v7);
        result = v11;
      }

      *(result + 8) = v7;
      goto LABEL_19;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v12 = a2;
        memmove(*result, *a2, 24 * v8);
        a2 = v12;
LABEL_16:
        v13 = *v6 - v8;
        if (v13)
        {
          memcpy((*v10 + 24 * v8), *a2 + 24 * v8, 24 * v13);
        }

        result = v10;
        *(v10 + 8) = v7;
        goto LABEL_19;
      }

      v10 = result;
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 24);
      a2 = v9;
    }

    v8 = 0;
    goto LABEL_16;
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = (*a1)[2];
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = Slow + 32;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v10;
  }

  else
  {
    *a2 = v6;
  }

  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 16) = v3;
  *(Slow + 24) = v4;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(v8[1], Slow);
  }

  return Slow;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage * mlir::StorageUniquer::get<mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage,mlir::StringAttr,int &,mlir::StringAttr>(llvm::function_ref<void ()(mlir::mps_spi::detail::DeviceDescriptorOptionsAttrStorage *)>,mlir::TypeID,mlir::StringAttr,int &,mlir::StringAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = (*a1)[2];
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = Slow + 32;
  if (*a2)
  {
    v7 = v6 > a2[1];
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v10;
  }

  else
  {
    *a2 = v6;
  }

  *Slow = 0;
  *(Slow + 8) = v2;
  *(Slow + 16) = v3;
  *(Slow + 24) = v4;
  v8 = a1[1];
  if (*v8)
  {
    (*v8)(v8[1], Slow);
  }

  return Slow;
}

uint64_t OUTLINED_FUNCTION_9_15@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = 28532;
  *(result + 32) += 2;
  return result;
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::writeAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::mps_spi::DeviceDescriptorOptionsAttr,void>::id)
  {
    return 0;
  }

  v10 = a2;
  if (!v8 || v8 == 1 && v9 < 2)
  {
    return 0;
  }

  (*(*a3 + 48))(a3, 0);
  Value = mlir::AffineMapAttr::getValue(&v10);
  (*(*a3 + 16))(a3, Value);
  Position = mlir::AffineDimExpr::getPosition(&v10);
  (*(*a3 + 56))(a3, Position);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v10);
  (*(*a3 + 16))(a3, RHS);
  return 1;
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::readAttribute(mlir::DialectInterface *a1, uint64_t a2)
{
  Context = mlir::DialectInterface::getContext(a1);
  v9 = 0;
  v4 = (*(*a2 + 72))(a2, &v9);
  result = 0;
  if ((v4 & 1) != 0 && !v9)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v8) & 1) != 0 && ((*(*a2 + 80))(a2, &v7) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a2, &v6))
    {
      return mlir::mps_spi::DeviceDescriptorOptionsAttr::get(Context, v8, v7, v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::mps_spi::MPSSPIBytecodeDialectInterface::~MPSSPIBytecodeDialectInterface(mlir::mps_spi::MPSSPIBytecodeDialectInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t mlir::BytecodeDialectInterface::readType(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v26 = 257;
  (*(*a2 + 16))(&v31, a2, v25);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "dialect ";
    v29 = 8;
    v3 = &v27;
    v4 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v23 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v4 = v33;
        v3 = v33 + v23;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v3 = &v27;
        v4 = v33;
      }
    }

    v5 = &v4[24 * v34];
    v6 = *v3;
    *(v5 + 2) = *(v3 + 2);
    *v5 = v6;
    ++v34;
    if (v31)
    {
      v7 = *(a1 + 8);
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
      v30 = 261;
      v27 = v9;
      v28 = v8;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = " does not support reading types from bytecode";
        v29 = 45;
        v10 = &v27;
        v11 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v24 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = v33;
            v10 = v33 + v24;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v10 = &v27;
            v11 = v33;
          }
        }

        v12 = &v11[24 * v34];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v34;
        if (v31)
        {
          mlir::InFlightDiagnostic::report(&v31);
        }
      }
    }
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v40;
      v16 = __p;
      if (v40 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v40 = v14;
      operator delete(v16);
    }

    v17 = v37;
    if (v37)
    {
      v18 = v38;
      v19 = v37;
      if (v38 != v37)
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
        v19 = v37;
      }

      v38 = v17;
      operator delete(v19);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return 0;
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::writeVersion(unsigned int *a1, uint64_t a2)
{
  (*(*a2 + 48))(a2, a1[8]);
  (*(*a2 + 48))(a2, a1[9]);
  v4 = a1[10];
  v5 = *(*a2 + 48);

  return v5(a2, v4);
}

_DWORD *mlir::mps_spi::MPSSPIBytecodeDialectInterface::readVersion@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if ((*(*a1 + 72))(a1, &v10) & 1) != 0 && ((*(*a1 + 72))(a1, &v9) & 1) != 0 && ((*(*a1 + 72))(a1, &v8))
  {
    result = operator new(0x18uLL);
    v6 = v9;
    v5 = v10;
    v7 = v8;
    *result = &unk_1F5B01238;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t mlir::mps_spi::MPSSPIBytecodeDialectInterface::upgradeFromVersion(uint64_t a1, mlir::Block **a2, _DWORD *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v34[0] = &unk_1F5B01238;
  v34[1] = 1;
  v35 = 3;
  v3 = a3[2];
  if (!v3)
  {
    goto LABEL_23;
  }

  if (v3 != 1 || a3[3])
  {
    goto LABEL_4;
  }

  v13 = a3[4];
  if (v13 == 3)
  {
    return 1;
  }

  if (v13 >= 4)
  {
LABEL_4:
    v23 = "current mps_spi dialect version is {0}, can't parse version {1}";
    v24 = 63;
    v25 = v31;
    v26 = 2;
    v27 = 1;
    v28 = &unk_1F5B175B8;
    v29 = v34;
    v30[0] = &unk_1F5B175B8;
    v30[1] = a3;
    v31[0] = &v28;
    v31[1] = v30;
    v33 = 263;
    v32[0] = &v23;
    mlir::Operation::emitError(a2, v32, v36);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v42;
        v7 = __p;
        if (v42 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v42 = v5;
        operator delete(v7);
      }

      v8 = v39;
      if (!v39)
      {
        goto LABEL_42;
      }

      v9 = v40;
      v10 = v39;
      if (v40 == v39)
      {
LABEL_41:
        v40 = v8;
        operator delete(v10);
LABEL_42:
        if (v37 != &v38)
        {
          free(v37);
        }

        return v4;
      }

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
LABEL_40:
      v10 = v39;
      goto LABEL_41;
    }
  }

  else
  {
LABEL_23:
    v22[0] = "mps_spi";
    v22[1] = 7;
    v4 = 1;
    if (!mlir::detail::upgradeFromVersion(a2, v22, a3))
    {
      v23 = "IR upgrade to version {0} failed";
      v24 = 32;
      v25 = v30;
      v26 = 1;
      v27 = 1;
      v28 = &unk_1F5B175B8;
      v29 = v34;
      v30[0] = &v28;
      v33 = 263;
      v32[0] = &v23;
      mlir::Operation::emitError(a2, v32, v36);
      v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
      if (v36[0])
      {
        mlir::InFlightDiagnostic::report(v36);
      }

      if (v44 == 1)
      {
        if (v43 != &v44)
        {
          free(v43);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v42;
          v17 = __p;
          if (v42 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v42 = v15;
          operator delete(v17);
        }

        v8 = v39;
        if (!v39)
        {
          goto LABEL_42;
        }

        v18 = v40;
        v10 = v39;
        if (v40 == v39)
        {
          goto LABEL_41;
        }

        do
        {
          v20 = *--v18;
          v19 = v20;
          *v18 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v18 != v8);
        goto LABEL_40;
      }
    }
  }

  return v4;
}

BOOL mlir::impl::verifyCastInterfaceOp(mlir::impl *this, mlir::Operation *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = *(this + 9);
  v4 = this - 16;
  if (!v3)
  {
    v4 = 0;
  }

  v82 = v4;
  v83[0] = v3;
  mlir::OperandRange::getTypes(&v82, &v73);
  if (v74 == v76)
  {
    v81 = 257;
    mlir::Operation::emitOpError(this, &v78, &v82);
    if (v82)
    {
      LODWORD(v69) = 3;
      v70 = "expected at least one result for cast operation";
      v71 = 47;
      v5 = &v69;
      v6 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v69 && v84 + 24 * v85 > &v69)
        {
          v61 = &v69 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v6 = v84;
          v5 = (v84 + v61);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v5 = &v69;
          v6 = v84;
        }
      }

      v7 = &v6[24 * v85];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      ++v85;
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
    if (v82)
    {
      mlir::InFlightDiagnostic::report(&v82);
    }

    if (v93 == 1)
    {
      if (v92 != &v93)
      {
        free(v92);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v91;
        v12 = __p;
        if (v91 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v91 = v10;
        operator delete(v12);
      }

      v13 = v88;
      if (!v88)
      {
        goto LABEL_72;
      }

      v14 = v89;
      v15 = v88;
      if (v89 == v88)
      {
LABEL_71:
        v89 = v13;
        operator delete(v15);
LABEL_72:
        if (v84 != v87)
        {
          free(v84);
        }

        return v9;
      }

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
LABEL_70:
      v15 = v88;
      goto LABEL_71;
    }

    return v9;
  }

  if ((*(this + 46) & 0x80) != 0)
  {
    v18 = *(this + 9);
    v19 = *(this + 17);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v82 = v18;
  v83[0] = v19;
  mlir::OperandRange::getTypes(&v82, &v69);
  InterfaceFor = mlir::OpInterface<mlir::CastOpInterface,mlir::detail::CastOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  mlir::ValueRange::ValueRange(&v82, v69 + 32 * v70, v72 - v70);
  mlir::TypeRange::TypeRange(&v78, v82, v83[0]);
  NextResultAtOffset = v73;
  v22 = v74;
  v23 = v76;
  if (v74)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v73, v74);
  }

  mlir::ValueRange::ValueRange(&v82, NextResultAtOffset, v23 - v22);
  mlir::TypeRange::TypeRange(v77, v82, v83[0]);
  if ((*InterfaceFor)(v78, v79, v77[0], v77[1]))
  {
    return 1;
  }

  v78 = "operand type";
  v81 = 259;
  mlir::Operation::emitOpError(this, &v78, &v82);
  if (v72 == v70)
  {
    if (!v82)
    {
      goto LABEL_54;
    }

    LODWORD(v78) = 3;
    v79 = "s []";
    v80 = 4;
    v24 = &v78;
    v25 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &v78 && v84 + 24 * v85 > &v78)
      {
        v63 = &v78 - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v25 = v84;
        v24 = (v84 + v63);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v24 = &v78;
        v25 = v84;
      }
    }

    v26 = &v25[24 * v85];
    v27 = *v24;
    v28 = v24[2];
LABEL_39:
    *(v26 + 2) = v28;
    *v26 = v27;
    ++v85;
    if (!v82)
    {
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  if (v72 - v70 == 1)
  {
    if (v82)
    {
      LODWORD(v78) = 3;
      v79 = " ";
      v80 = 1;
      v29 = &v78;
      v30 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v78 && v84 + 24 * v85 > &v78)
        {
          v65 = &v78 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v30 = v84;
          v29 = (v84 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v29 = &v78;
          v30 = v84;
        }
      }

      v31 = &v30[24 * v85];
      v32 = *v29;
      *(v31 + 2) = v29[2];
      *v31 = v32;
      ++v85;
      if (v82)
      {
        v33 = &v78;
        mlir::DiagnosticArgument::DiagnosticArgument(&v78, *(*(v69 + 32 * v70 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        v34 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v78 && v84 + 24 * v85 > &v78)
          {
            v67 = &v78 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v34 = v84;
            v33 = (v84 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v33 = &v78;
            v34 = v84;
          }
        }

        v26 = &v34[24 * v85];
        v27 = *v33;
        v28 = v33[2];
        goto LABEL_39;
      }
    }
  }

  else if (v82)
  {
    LODWORD(v78) = 3;
    v79 = "s ";
    v80 = 2;
    v50 = &v78;
    v51 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &v78 && v84 + 24 * v85 > &v78)
      {
        v66 = &v78 - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v51 = v84;
        v50 = (v84 + v66);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v50 = &v78;
        v51 = v84;
      }
    }

    v52 = &v51[24 * v85];
    v53 = *v50;
    *(v52 + 2) = v50[2];
    *v52 = v53;
    ++v85;
    if (v82)
    {
      v78 = ", ";
      llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::OperandRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::OperandRange>>(mlir::ValueTypeRange<mlir::OperandRange> const&,char const*)::{lambda(void)#1},void>(v69, v70, v71, v72, v83, v83, &v78);
      if (v82)
      {
LABEL_40:
        LODWORD(v78) = 3;
        v79 = " and result type";
        v80 = 16;
        v35 = &v78;
        v36 = v84;
        if (v85 >= v86)
        {
          if (v84 <= &v78 && v84 + 24 * v85 > &v78)
          {
            v62 = &v78 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v36 = v84;
            v35 = (v84 + v62);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
            v35 = &v78;
            v36 = v84;
          }
        }

        v37 = &v36[24 * v85];
        v38 = *v35;
        *(v37 + 2) = v35[2];
        *v37 = v38;
        v39 = ++v85;
        if (v82)
        {
          v40 = 1;
          v41 = "s ";
          if (v76 - v74 == 1)
          {
            v41 = " ";
          }

          else
          {
            v40 = 2;
          }

          LODWORD(v78) = 3;
          v79 = v41;
          v80 = v40;
          v42 = &v78;
          v43 = v84;
          if (v39 >= v86)
          {
            if (v84 <= &v78 && v84 + 24 * v39 > &v78)
            {
              v64 = &v78 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v39 + 1, 24);
              v43 = v84;
              v42 = (v84 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v39 + 1, 24);
              v42 = &v78;
              v43 = v84;
            }
          }

          v44 = &v43[24 * v85];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v85;
          if (v82)
          {
            v78 = ", ";
            llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(v73, v74, v75, v76, v83, v83, &v78);
            if (v82)
            {
              LODWORD(v78) = 3;
              v79 = " are cast incompatible";
              v80 = 22;
              v46 = &v78;
              v47 = v84;
              if (v85 >= v86)
              {
                if (v84 <= &v78 && v84 + 24 * v85 > &v78)
                {
                  v68 = &v78 - v84;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                  v47 = v84;
                  v46 = (v84 + v68);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
                  v46 = &v78;
                  v47 = v84;
                }
              }

              v48 = &v47[24 * v85];
              v49 = *v46;
              *(v48 + 2) = v46[2];
              *v48 = v49;
              ++v85;
            }
          }
        }
      }
    }
  }

LABEL_54:
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v54 = __p;
    if (__p)
    {
      v55 = v91;
      v56 = __p;
      if (v91 != __p)
      {
        do
        {
          v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
        }

        while (v55 != v54);
        v56 = __p;
      }

      v91 = v54;
      operator delete(v56);
    }

    v13 = v88;
    if (!v88)
    {
      goto LABEL_72;
    }

    v57 = v89;
    v15 = v88;
    if (v89 == v88)
    {
      goto LABEL_71;
    }

    do
    {
      v59 = *--v57;
      v58 = v59;
      *v57 = 0;
      if (v59)
      {
        operator delete[](v58);
      }
    }

    while (v57 != v13);
    goto LABEL_70;
  }

  return v9;
}

double mlir::mps::detail::MPSAbstractCostModel::computeCost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&_MergedGlobals_48, memory_order_acquire) & 1) == 0)
  {
    mlir::mps::detail::MPSAbstractCostModel::computeCost();
  }

  if (atomic_load_explicit(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, memory_order_acquire) != -1)
  {
    v22 = &v20;
    v21 = &v22;
    std::__call_once(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, &v21, std::__call_once_proxy[abi:nn200100]<std::tuple<mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::$_0 &&>>);
  }

  v22 = *(*(a2 + 48) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v22);
  v8 = v7;
  v10 = llvm::StringMapImpl::hash(AttrData, v7, v9);
  Key = llvm::StringMapImpl::FindKey(&qword_1EE17CA28, AttrData, v8, v10);
  v12 = qword_1EE17CA28;
  if (Key == -1)
  {
    v13 = dword_1EE17CA30;
  }

  else
  {
    v13 = Key;
  }

  if ((atomic_load_explicit(&_MergedGlobals_48, memory_order_acquire) & 1) == 0)
  {
    mlir::mps::detail::MPSAbstractCostModel::computeCost();
  }

  v14 = v12 + 8 * v13;
  if (atomic_load_explicit(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, memory_order_acquire) != -1)
  {
    v22 = &v20;
    v21 = &v22;
    std::__call_once(&mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::initializedDispatchMap, &v21, std::__call_once_proxy[abi:nn200100]<std::tuple<mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::$_0 &&>>);
  }

  if (v14 == qword_1EE17CA28 + 8 * dword_1EE17CA30)
  {
    v18 = *(a2 + 48);
    if (*(v18 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v22 = *(v18 + 8);
      mlir::SparseElementsAttr::getValues(&v22);
    }

    return 0.0;
  }

  else
  {
    v15 = *(*v14 + 8);
    v16 = *(*v14 + 16);
    v17 = (a1 + (v16 >> 1));
    if (v16)
    {
      v15 = *(*v17 + v15);
    }

    v15(v17, a2, a3);
  }

  return result;
}

uint64_t llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*a1 + v3);
        if (v4 != -8 && v4 != 0)
        {
          llvm::deallocate_buffer(v4, (*v4 + 25));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

float mlir::mps::getMathOpExecutionCost(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  if (v5)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v4 = 0;
  }

  v7[0] = v4;
  v7[1] = v5;
  result = 0.0;
  if (v4)
  {
    if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      mlir::mps::getMathOpExecutionCost(a1, v7, a2, &v8);
      return v8;
    }
  }

  return result;
}

uint64_t mlir::mps::getCopyOpExecutionCost(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v18[0] = v3;
  v18[1] = v4;
  v5 = (*(v2 - 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
  }

  v17[0] = v5;
  v17[1] = result;
  isSplat = v5;
  v20 = result;
  if (v5)
  {
    result = mlir::CallOpInterface::getArgOperands(&isSplat);
    if (result)
    {
      result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
      if (v7)
      {
        v8 = 8 * v7;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        isSplat = v3;
        v20 = v4;
        if (v3)
        {
          result = mlir::CallOpInterface::getArgOperands(&isSplat);
          if (result)
          {
            result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
            if (v9)
            {
              v10 = 8 * v9;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v10 -= 8;
                if (!v10)
                {
                  goto LABEL_19;
                }
              }
            }

            else
            {
LABEL_19:
              mlir::mps::getElementBitWidth(v3);
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v18);
              mlir::ShapedType::getNumElements(ArgAttrsAttr, v12);
              mlir::mps::getElementBitWidth(v5);
              v13 = mlir::CallableOpInterface::getArgAttrsAttr(v17);
              mlir::ShapedType::getNumElements(v13, v14);
              isSplat = mlir::ElementsAttr::isSplat(v17);
              do
              {
                v15 = *(v2 + 16);
                if (!v15)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v15);
                if (!ParentOp)
                {
                  break;
                }

                v2 = ParentOp;
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *mlir::mps::MPSCostModel::computeCostMatMulOp(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v42 = a2;
  mlir::mps::MatMulOp::getTransposeRhs(&v42);
  v4 = *(v42 + 72);
  v5 = *(v4 + 56);
  v6 = (*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v41[0] = v8;
  v41[1] = v9;
  if (*(v42 + 36))
  {
    v10 = v42 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v13 = result;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v40[0] = v11;
  v40[1] = v13;
  v43 = v6;
  v44 = v7;
  if (!v6)
  {
    return result;
  }

  result = mlir::CallOpInterface::getArgOperands(&v43);
  if (!result)
  {
    return result;
  }

  result = mlir::CallableOpInterface::getArgAttrsAttr(&v43);
  if (!v14)
  {
LABEL_19:
    v43 = v8;
    v44 = v9;
    if (!v8)
    {
      return result;
    }

    result = mlir::CallOpInterface::getArgOperands(&v43);
    if (!result)
    {
      return result;
    }

    result = mlir::CallableOpInterface::getArgAttrsAttr(&v43);
    if (v16)
    {
      v17 = 8 * v16;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_25;
        }
      }

      return result;
    }

LABEL_25:
    v43 = v11;
    v44 = v13;
    if (!v11)
    {
      return result;
    }

    result = mlir::CallOpInterface::getArgOperands(&v43);
    if (!result)
    {
      return result;
    }

    result = mlir::CallableOpInterface::getArgAttrsAttr(&v43);
    if (v18)
    {
      v19 = 8 * v18;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v19 -= 8;
        if (!v19)
        {
          goto LABEL_31;
        }
      }

      return result;
    }

LABEL_31:
    mlir::CallableOpInterface::getArgAttrsAttr(v41);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v40);
    v22 = v21 - 2;
    if (v21 < 2)
    {
      v25 = 1;
      v23 = 1;
      goto LABEL_43;
    }

    v23 = *(ArgAttrsAttr + 8 * v22);
    if (v21 == 2)
    {
      v25 = 1;
      goto LABEL_43;
    }

    if (v21 == 3)
    {
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
      v26 = (ArgAttrsAttr + 8);
      v27 = 1;
      v28 = v22 & 0xFFFFFFFFFFFFFFFELL;
      v29 = 1;
      do
      {
        v27 *= *(v26 - 1);
        v29 *= *v26;
        v26 += 2;
        v28 -= 2;
      }

      while (v28);
      v25 = v29 * v27;
      if (v22 == v24)
      {
LABEL_43:
        v33 = *(ArgAttrsAttr + 8 * v21 - 8);
        ParentOp = v42;
        v35 = v25;
        v36 = v23;
        v37 = v33;
        while (1)
        {
          v38 = *(ParentOp + 16);
          if (!v38)
          {
            break;
          }

          ParentOp = mlir::Block::getParentOp(v38);
          if (!ParentOp)
          {
            break;
          }

          if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
          {
            goto LABEL_49;
          }
        }

        if ((*a3 & 1) == 0)
        {
          goto LABEL_50;
        }

LABEL_49:
        pow(((v37 + 2.0) * ((v36 + 2.0) * v35)), 0.25);
LABEL_50:
        isSplat = mlir::ElementsAttr::isSplat(v40);
        return mlir::mps::executionCost(a3, v42, isSplat);
      }
    }

    v30 = v21 - v24 - 2;
    v31 = (ArgAttrsAttr + 8 * v24);
    do
    {
      v32 = *v31++;
      v25 *= v32;
      --v30;
    }

    while (v30);
    goto LABEL_43;
  }

  v15 = 8 * v14;
  while (*result != 0x8000000000000000)
  {
    ++result;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostResizeOp(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  ODSOperandIndexAndLength = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&v28, 0);
  v3 = *(*(v28 + 72) + 32 * ODSOperandIndexAndLength + 24);
  if (*(v28 + 36))
  {
    v4 = v28 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  v6 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v27[0] = v6;
  v27[1] = v7;
  v8 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
  }

  v26[0] = v8;
  v26[1] = result;
  isSplat = v8;
  v30 = result;
  if (v8)
  {
    result = mlir::CallOpInterface::getArgOperands(&isSplat);
    if (result)
    {
      result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
      if (v10)
      {
        v11 = 8 * v10;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        isSplat = v6;
        v30 = v7;
        if (v6)
        {
          result = mlir::CallOpInterface::getArgOperands(&isSplat);
          if (result)
          {
            result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
            if (v12)
            {
              v13 = 8 * v12;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v13 -= 8;
                if (!v13)
                {
                  goto LABEL_22;
                }
              }
            }

            else
            {
LABEL_22:
              isSplat = mlir::ElementsAttr::isSplat(v27);
              mlir::Type::getIntOrFloatBitWidth(&isSplat);
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v26);
              mlir::ShapedType::getNumElements(ArgAttrsAttr, v15);
              mlir::mps::getElementBitWidth(v26[0]);
              v16 = mlir::CallableOpInterface::getArgAttrsAttr(v26);
              mlir::ShapedType::getNumElements(v16, v17);
              GateLayout = mlir::mps::LSTMOp::getGateLayout(&v28);
              v19 = mlir::CallableOpInterface::getArgAttrsAttr(v26);
              mlir::ShapedType::getNumElements(v19, v20);
              if (GateLayout == 1)
              {
                mlir::mps::getElementBitWidth(v27[0]);
                v21 = mlir::CallableOpInterface::getArgAttrsAttr(v27);
                mlir::ShapedType::getNumElements(v21, v22);
              }

              v23 = mlir::ElementsAttr::isSplat(v26);
              ParentOp = v28;
              isSplat = v23;
              do
              {
                v25 = *(ParentOp + 16);
                if (!v25)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v25);
                if (!ParentOp)
                {
                  break;
                }
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *mlir::mps::getUnaryOpExecutionCost(uint64_t a1, uint64_t a2)
{
  if (*(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v16[0] = v4;
  v16[1] = v5;
  v6 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v8 = result;
    v17 = v4;
    v18 = v5;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v17 = v4;
    v18 = v5;
    if (!v4)
    {
      return result;
    }
  }

  result = mlir::CallOpInterface::getArgOperands(&v17);
  if (result)
  {
    result = mlir::CallableOpInterface::getArgAttrsAttr(&v17);
    if (v9)
    {
      v10 = 8 * v9;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v17 = v6;
      v18 = v8;
      if (v6)
      {
        result = mlir::CallOpInterface::getArgOperands(&v17);
        if (result)
        {
          result = mlir::CallableOpInterface::getArgAttrsAttr(&v17);
          if (v11)
          {
            v12 = 8 * v11;
            while (*result != 0x8000000000000000)
            {
              ++result;
              v12 -= 8;
              if (!v12)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
LABEL_22:
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v16);
            mlir::ShapedType::getNumElements(ArgAttrsAttr, v14);
            isSplat = mlir::ElementsAttr::isSplat(v16);
            return mlir::mps::executionCost(a1, a2, isSplat);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostSampleGridOp(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v2 = *(a2 + 72);
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v36[0] = v7;
  v36[1] = v8;
  v9 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8))
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v35[0] = v9;
  v35[1] = v10;
  v11 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    v13 = result;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v34[0] = v11;
  v34[1] = v13;
  isSplat = v9;
  v39 = v10;
  if (v9)
  {
    result = mlir::CallOpInterface::getArgOperands(&isSplat);
    if (result)
    {
      result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
      if (v14)
      {
        v15 = 8 * v14;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        isSplat = v7;
        v39 = v8;
        if (v7)
        {
          result = mlir::CallOpInterface::getArgOperands(&isSplat);
          if (result)
          {
            result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
            if (v16)
            {
              v17 = 8 * v16;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v17 -= 8;
                if (!v17)
                {
                  goto LABEL_25;
                }
              }
            }

            else
            {
LABEL_25:
              isSplat = v11;
              v39 = v13;
              if (v11)
              {
                result = mlir::CallOpInterface::getArgOperands(&isSplat);
                if (result)
                {
                  result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
                  if (v18)
                  {
                    v19 = 8 * v18;
                    while (*result != 0x8000000000000000)
                    {
                      result += 8;
                      v19 -= 8;
                      if (!v19)
                      {
                        goto LABEL_31;
                      }
                    }
                  }

                  else
                  {
LABEL_31:
                    isSplat = mlir::ElementsAttr::isSplat(v36);
                    mlir::Type::getIntOrFloatBitWidth(&isSplat);
                    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v35);
                    mlir::ShapedType::getNumElements(ArgAttrsAttr, v21);
                    mlir::mps::getElementBitWidth(v35[0]);
                    v22 = mlir::CallableOpInterface::getArgAttrsAttr(v35);
                    mlir::ShapedType::getNumElements(v22, v23);
                    WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v37);
                    v25 = mlir::CallableOpInterface::getArgAttrsAttr(v35);
                    mlir::ShapedType::getNumElements(v25, v26);
                    if (WeightsLayout == 1)
                    {
                      mlir::mps::getElementBitWidth(v36[0]);
                      v27 = mlir::CallableOpInterface::getArgAttrsAttr(v36);
                      mlir::ShapedType::getNumElements(v27, v28);
                    }

                    mlir::mps::getElementBitWidth(v11);
                    v29 = mlir::CallableOpInterface::getArgAttrsAttr(v34);
                    mlir::ShapedType::getNumElements(v29, v30);
                    v31 = mlir::ElementsAttr::isSplat(v35);
                    ParentOp = v37;
                    isSplat = v31;
                    do
                    {
                      v33 = *(ParentOp + 16);
                      if (!v33)
                      {
                        break;
                      }

                      ParentOp = mlir::Block::getParentOp(v33);
                      if (!ParentOp)
                      {
                        break;
                      }
                    }

                    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
                    result = mlir::Type::isF16(&isSplat);
                    if (!result)
                    {
                      return mlir::Type::isF32(&isSplat);
                    }
                  }
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

void *mlir::mps::getReductionOpExecutionCost(uint64_t a1, uint64_t a2)
{
  if (*(*(*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v16[0] = v4;
  v16[1] = v5;
  v6 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
    v8 = result;
    v17 = v4;
    v18 = v5;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v17 = v4;
    v18 = v5;
    if (!v4)
    {
      return result;
    }
  }

  result = mlir::CallOpInterface::getArgOperands(&v17);
  if (result)
  {
    result = mlir::CallableOpInterface::getArgAttrsAttr(&v17);
    if (v9)
    {
      v10 = 8 * v9;
      while (*result != 0x8000000000000000)
      {
        ++result;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      v17 = v6;
      v18 = v8;
      if (v6)
      {
        result = mlir::CallOpInterface::getArgOperands(&v17);
        if (result)
        {
          result = mlir::CallableOpInterface::getArgAttrsAttr(&v17);
          if (v11)
          {
            v12 = 8 * v11;
            while (*result != 0x8000000000000000)
            {
              ++result;
              v12 -= 8;
              if (!v12)
              {
                goto LABEL_22;
              }
            }
          }

          else
          {
LABEL_22:
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v16);
            mlir::ShapedType::getNumElements(ArgAttrsAttr, v14);
            isSplat = mlir::ElementsAttr::isSplat(v16);
            return mlir::mps::executionCost(a1, a2, isSplat);
          }
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostInstanceNormOp(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(*(a2 + 72) + 24);
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  if (*(*(*(v3 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v32[0] = v6;
  v32[1] = v7;
  v8 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v10 = result;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v31[0] = v8;
  v31[1] = v10;
  isSplat = v6;
  v34 = v7;
  if (v6)
  {
    result = mlir::CallOpInterface::getArgOperands(&isSplat);
    if (result)
    {
      result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
      if (v11)
      {
        v12 = 8 * v11;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        isSplat = v8;
        v34 = v10;
        if (v8)
        {
          result = mlir::CallOpInterface::getArgOperands(&isSplat);
          if (result)
          {
            result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
            if (v13)
            {
              v14 = 8 * v13;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v14 -= 8;
                if (!v14)
                {
                  goto LABEL_25;
                }
              }
            }

            else
            {
LABEL_25:
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v31);
              mlir::ShapedType::getNumElements(ArgAttrsAttr, v16);
              mlir::mps::getElementBitWidth(v6);
              v17 = mlir::CallableOpInterface::getArgAttrsAttr(v32);
              mlir::ShapedType::getNumElements(v17, v18);
              v19 = mlir::CallableOpInterface::getArgAttrsAttr(v31);
              mlir::ShapedType::getNumElements(v19, v20);
              mlir::mps::getElementBitWidth(v32[0]);
              v21 = mlir::CallableOpInterface::getArgAttrsAttr(v32);
              mlir::ShapedType::getNumElements(v21, v22);
              v23 = mlir::CallableOpInterface::getArgAttrsAttr(v31);
              mlir::ShapedType::getNumElements(v23, v24);
              mlir::mps::getElementBitWidth(v32[0]);
              v25 = mlir::CallableOpInterface::getArgAttrsAttr(v32);
              mlir::ShapedType::getNumElements(v25, v26);
              mlir::mps::getElementBitWidth(v31[0]);
              v27 = mlir::CallableOpInterface::getArgAttrsAttr(v31);
              mlir::ShapedType::getNumElements(v27, v28);
              isSplat = mlir::ElementsAttr::isSplat(v32);
              do
              {
                v29 = *(v2 + 16);
                if (!v29)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v29);
                if (!ParentOp)
                {
                  break;
                }

                v2 = ParentOp;
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void mlir::mps::MPSCostModel::computeCostConv2DOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v30 = a2;
  mlir::mps::MaterializeSparseTensorOp::getStorageType(&v30);
  mlir::mps::Conv3DOp::getWeightsLayout(&v30);
  if (*(v30 + 36))
  {
    v4 = v30 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (v6)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
  }

  *&v29 = v5;
  *(&v29 + 1) = v6;
  v7 = (*(*(*(v30 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  if (v8)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v7 = 0;
  }

  *&v28 = v7;
  *(&v28 + 1) = v8;
  v9 = (*(*(*(v30 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  if (v10)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  }

  else
  {
    v9 = 0;
  }

  *&v27 = v9;
  *(&v27 + 1) = v10;
  *v34 = v28;
  if (v28 && mlir::CallOpInterface::getArgOperands(v34))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v34);
    if (v12)
    {
      v13 = 8 * v12;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v13 -= 8;
        if (!v13)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      *v34 = v27;
      if (v27 && mlir::CallOpInterface::getArgOperands(v34))
      {
        v14 = mlir::CallableOpInterface::getArgAttrsAttr(v34);
        if (v15)
        {
          v16 = 8 * v15;
          while (*v14 != 0x8000000000000000)
          {
            ++v14;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
          *v34 = v29;
          if (v29 && mlir::CallOpInterface::getArgOperands(v34))
          {
            v17 = mlir::CallableOpInterface::getArgAttrsAttr(v34);
            if (v18)
            {
              v19 = 8 * v18;
              while (*v17 != 0x8000000000000000)
              {
                ++v17;
                v19 -= 8;
                if (!v19)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
LABEL_31:
              mlir::CallableOpInterface::getArgAttrsAttr(&v28);
              mlir::CallableOpInterface::getArgAttrsAttr(&v27);
              mlir::CallableOpInterface::getArgAttrsAttr(&v29);
              v34[0] = v35;
              v34[1] = 0x400000000;
              v32[0] = v33;
              v32[1] = 0x400000000;
              Strides = mlir::mps::Conv3DOp::getStrides(&v30);
              if (Strides)
              {
                v22 = Strides;
                v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
                Strides = v22;
              }

              else
              {
                v21 = 0;
              }

              mlir::getIntValues<long long>(Strides, v21, v34, 1);
              InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v30);
              if (InputAttributeNames)
              {
                v25 = InputAttributeNames;
                v24 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
                InputAttributeNames = v25;
              }

              else
              {
                v24 = 0;
              }

              mlir::getIntValues<long long>(InputAttributeNames, v24, v32, 1);
              isSplat = mlir::ElementsAttr::isSplat(&v29);
              v31 = mlir::ElementsAttr::isSplat(&v28);
              mlir::Type::getIntOrFloatBitWidth(&v31);
              mlir::mps::executionCost(a3, v30, isSplat);
              if (v32[0] != v33)
              {
                free(v32[0]);
              }

              if (v34[0] != v35)
              {
                free(v34[0]);
              }
            }
          }
        }
      }
    }
  }
}

void mlir::mps::MPSCostModel::computeCostConv2DDataGradientOp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v29 = a2;
  mlir::mps::MaterializeSparseTensorOp::getStorageType(&v29);
  mlir::mps::Conv3DOp::getWeightsLayout(&v29);
  if (*(v29 + 36))
  {
    v4 = v29 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v28[0] = v5;
  v28[1] = v6;
  ODSOperandIndexAndLength = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v29, 0);
  v8 = (*(*(*(v29 + 72) + 32 * ODSOperandIndexAndLength + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v27[0] = v8;
  v27[1] = v9;
  v10 = mlir::mps::Conv2DDataGradientOp::getODSOperandIndexAndLength(&v29, 1u);
  v11 = (*(*(*(v29 + 72) + 32 * v10 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8))
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v26[0] = v11;
  v26[1] = v12;
  v30 = v8;
  v31 = v9;
  if (v8 && mlir::CallOpInterface::getArgOperands(&v30))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
    if (v14)
    {
      v15 = 8 * v14;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      v30 = v11;
      v31 = v12;
      if (v11 && mlir::CallOpInterface::getArgOperands(&v30))
      {
        v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
        if (v17)
        {
          v18 = 8 * v17;
          while (*v16 != 0x8000000000000000)
          {
            ++v16;
            v18 -= 8;
            if (!v18)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
          v30 = v5;
          v31 = v6;
          if (v5 && mlir::CallOpInterface::getArgOperands(&v30))
          {
            v19 = mlir::CallableOpInterface::getArgAttrsAttr(&v30);
            if (v20)
            {
              v21 = 8 * v20;
              while (*v19 != 0x8000000000000000)
              {
                ++v19;
                v21 -= 8;
                if (!v21)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
LABEL_31:
              v30 = v32;
              v31 = 0x400000000;
              Strides = mlir::mps::Conv3DOp::getStrides(&v29);
              if (Strides)
              {
                v24 = Strides;
                v23 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
                Strides = v24;
              }

              else
              {
                v23 = 0;
              }

              mlir::getIntValues<long long>(Strides, v23, &v30, 1);
              mlir::CallableOpInterface::getArgAttrsAttr(v27);
              mlir::CallableOpInterface::getArgAttrsAttr(v26);
              mlir::CallableOpInterface::getArgAttrsAttr(v28);
              isSplat = mlir::ElementsAttr::isSplat(v28);
              mlir::mps::executionCost(a3, v29, isSplat);
              if (v30 != v32)
              {
                free(v30);
              }
            }
          }
        }
      }
    }
  }
}

void mlir::mps::MPSCostModel::computeCostDepthwiseConv3DOp(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v51 = a2;
  v3 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v50[0] = v3;
  v50[1] = v4;
  v5 = (*(*(*(a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v49[0] = v5;
  v49[1] = v6;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v48[0] = v8;
  v48[1] = v9;
  v57 = v3;
  v58 = v4;
  if (!v3 || !mlir::CallOpInterface::getArgOperands(&v57))
  {
    return;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v57);
  if (!v11)
  {
LABEL_19:
    v57 = v5;
    v58 = v6;
    if (!v5 || !mlir::CallOpInterface::getArgOperands(&v57))
    {
      return;
    }

    v13 = mlir::CallableOpInterface::getArgAttrsAttr(&v57);
    if (v14)
    {
      v15 = 8 * v14;
      while (*v13 != 0x8000000000000000)
      {
        ++v13;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      return;
    }

LABEL_25:
    v57 = v8;
    v58 = v9;
    if (!v8 || !mlir::CallOpInterface::getArgOperands(&v57))
    {
      return;
    }

    v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v57);
    if (v17)
    {
      v18 = 8 * v17;
      while (*v16 != 0x8000000000000000)
      {
        ++v16;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_31;
        }
      }

      return;
    }

LABEL_31:
    mlir::CallableOpInterface::getArgAttrsAttr(v50);
    v20 = v19;
    v21 = mlir::CallableOpInterface::getArgAttrsAttr(v49);
    v23 = v22;
    v24 = mlir::CallableOpInterface::getArgAttrsAttr(v48);
    v26 = v25;
    v57 = v59;
    memset(v59, 0, sizeof(v59));
    v60 = 0;
    v58 = 0x500000005;
    ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v51);
    PositiveAxis = mlir::getPositiveAxis(ChannelAxis, v26);
    v29 = v57;
    if (v26 > 4)
    {
      v30 = 0;
    }

    else
    {
      *v57 = 1;
      v29[1] = v24[PositiveAxis];
      if (v26 < 1)
      {
LABEL_43:
        v34 = v23 - v20 + PositiveAxis;
        v53 = &v55;
        v55 = 0u;
        v56 = 0u;
        v54 = 0x400000004;
        if (v34 <= 3 && v23 == 4)
        {
          *&v55 = *(v21 + 8 * v34);
          if (v34)
          {
            v35 = -1;
          }

          else
          {
            v35 = 0;
          }

          *(&v55 + 1) = *(v21 + 8 * v35 + 8);
          if (v34 <= 1)
          {
            v36 = 0;
          }

          else
          {
            v36 = -1;
          }

          *&v56 = *(v21 + 8 * v36 + 16);
          if (v34 <= 2)
          {
            v37 = 0;
          }

          else
          {
            v37 = -1;
          }

          v38 = *(v21 + 8 * v37 + 24);
          *(&v56 + 1) = v38;
        }

        isSplat = mlir::ElementsAttr::isSplat(v48);
        mlir::mps::getElementBitWidth(v50[0]);
        v40 = mlir::CallableOpInterface::getArgAttrsAttr(v50);
        mlir::ShapedType::getNumElements(v40, v41);
        mlir::mps::getElementBitWidth(v49[0]);
        v42 = mlir::CallableOpInterface::getArgAttrsAttr(v49);
        mlir::ShapedType::getNumElements(v42, v43);
        mlir::mps::getElementBitWidth(v48[0]);
        v44 = mlir::CallableOpInterface::getArgAttrsAttr(v48);
        mlir::ShapedType::getNumElements(v44, v45);
        ParentOp = v51;
        v52 = isSplat;
        do
        {
          v47 = *(ParentOp + 16);
          if (!v47)
          {
            break;
          }

          ParentOp = mlir::Block::getParentOp(v47);
          if (!ParentOp)
          {
            break;
          }
        }

        while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
        if (!mlir::Type::isF16(&v52))
        {
          mlir::Type::isF32(&v52);
        }

        if (v53 != &v55)
        {
          free(v53);
        }

        if (v57 != v59)
        {
          free(v57);
        }

        return;
      }

      v30 = 2;
    }

    v31 = 1;
    v32 = PositiveAxis;
    do
    {
      if (v32)
      {
        v29[v30] = *v24;
        if (v30)
        {
          ++v30;
        }

        else
        {
          v30 = 2;
        }
      }

      --v32;
      ++v24;
    }

    while (v26 > v31++);
    goto LABEL_43;
  }

  v12 = 8 * v11;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v12 -= 8;
    if (!v12)
    {
      goto LABEL_19;
    }
  }
}

uint64_t mlir::mps::getPooling4DExecutionCost<mlir::mps::PoolAvgOp>(uint64_t a1, mlir::Operation *a2)
{
  v45 = a2;
  v3 = (*(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v44[0] = v3;
  v44[1] = v4;
  v5 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v7 = result;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v43[0] = v5;
  v43[1] = v7;
  v39 = v3;
  v40 = v4;
  if (!v3)
  {
    return result;
  }

  result = mlir::CallOpInterface::getArgOperands(&v39);
  if (!result)
  {
    return result;
  }

  result = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
  if (!v8)
  {
LABEL_13:
    v39 = v5;
    v40 = v7;
    if (!v5)
    {
      return result;
    }

    result = mlir::CallOpInterface::getArgOperands(&v39);
    if (!result)
    {
      return result;
    }

    result = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
    if (v10)
    {
      v11 = 8 * v10;
      while (*result != 0x8000000000000000)
      {
        result += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      return result;
    }

LABEL_19:
    mlir::Operation::getAttrDictionary(a2);
    WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v45);
    v42 = WindowSizes;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v39, WindowSizes, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v42);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, WindowSizes, NumElements);
    if (v41 != v38)
    {
      v14 = 1;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v39, &__p);
        if (v36 > 0x40)
        {
          v15 = *__p;
          operator delete[](__p);
        }

        else if (v36)
        {
          v15 = (__p << -v36) >> -v36;
        }

        else
        {
          v15 = 0;
        }

        v14 *= v15;
        ++v41;
      }

      while (v41 != v38);
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
    v18 = v17;
    mlir::mps::getElementBitWidth(v3);
    v19 = mlir::CallableOpInterface::getArgAttrsAttr(v44);
    mlir::ShapedType::getNumElements(v19, v20);
    mlir::mps::getElementBitWidth(v43[0]);
    v21 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
    mlir::ShapedType::getNumElements(v21, v22);
    v23 = v18 != 0;
    if (v18)
    {
      v24 = (v18 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v24)
      {
        v25 = v24 + 1;
        v26 = (v24 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v27 = (ArgAttrsAttr + 8 * v26);
        v28 = (ArgAttrsAttr + 8);
        v29 = 1;
        v30 = v26;
        do
        {
          v23 *= *(v28 - 1);
          v29 *= *v28;
          v28 += 2;
          v30 -= 2;
        }

        while (v30);
        v23 *= v29;
        if (v25 == v26)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v27 = ArgAttrsAttr;
      }

      do
      {
        v31 = *v27++;
        v23 *= v31;
      }

      while (v27 != (ArgAttrsAttr + 8 * v18));
    }

LABEL_36:
    isSplat = mlir::ElementsAttr::isSplat(v43);
    ParentOp = v45;
    v39 = isSplat;
    do
    {
      v34 = *(ParentOp + 16);
      if (!v34)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v34);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
    result = mlir::Type::isF16(&v39);
    if (!result)
    {
      return mlir::Type::isF32(&v39);
    }

    return result;
  }

  v9 = 8 * v8;
  while (*result != 0x8000000000000000)
  {
    result += 8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t mlir::mps::getPooling4DExecutionCost<mlir::mps::PoolMaxOp>(uint64_t a1, mlir::Operation *a2)
{
  v45 = a2;
  v3 = (*(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8))
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v44[0] = v3;
  v44[1] = v4;
  v5 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v7 = result;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v43[0] = v5;
  v43[1] = v7;
  v39 = v3;
  v40 = v4;
  if (!v3)
  {
    return result;
  }

  result = mlir::CallOpInterface::getArgOperands(&v39);
  if (!result)
  {
    return result;
  }

  result = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
  if (!v8)
  {
LABEL_13:
    v39 = v5;
    v40 = v7;
    if (!v5)
    {
      return result;
    }

    result = mlir::CallOpInterface::getArgOperands(&v39);
    if (!result)
    {
      return result;
    }

    result = mlir::CallableOpInterface::getArgAttrsAttr(&v39);
    if (v10)
    {
      v11 = 8 * v10;
      while (*result != 0x8000000000000000)
      {
        result += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      return result;
    }

LABEL_19:
    mlir::Operation::getAttrDictionary(a2);
    WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v45);
    v42 = WindowSizes;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v39, WindowSizes, 0);
    NumElements = mlir::DenseElementsAttr::getNumElements(&v42);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v37, WindowSizes, NumElements);
    if (v41 != v38)
    {
      v14 = 1;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v39, &__p);
        if (v36 > 0x40)
        {
          v15 = *__p;
          operator delete[](__p);
        }

        else if (v36)
        {
          v15 = (__p << -v36) >> -v36;
        }

        else
        {
          v15 = 0;
        }

        v14 *= v15;
        ++v41;
      }

      while (v41 != v38);
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v43);
    v18 = v17;
    mlir::mps::getElementBitWidth(v3);
    v19 = mlir::CallableOpInterface::getArgAttrsAttr(v44);
    mlir::ShapedType::getNumElements(v19, v20);
    mlir::mps::getElementBitWidth(v43[0]);
    v21 = mlir::CallableOpInterface::getArgAttrsAttr(v43);
    mlir::ShapedType::getNumElements(v21, v22);
    v23 = v18 != 0;
    if (v18)
    {
      v24 = (v18 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v24)
      {
        v25 = v24 + 1;
        v26 = (v24 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v27 = (ArgAttrsAttr + 8 * v26);
        v28 = (ArgAttrsAttr + 8);
        v29 = 1;
        v30 = v26;
        do
        {
          v23 *= *(v28 - 1);
          v29 *= *v28;
          v28 += 2;
          v30 -= 2;
        }

        while (v30);
        v23 *= v29;
        if (v25 == v26)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v27 = ArgAttrsAttr;
      }

      do
      {
        v31 = *v27++;
        v23 *= v31;
      }

      while (v27 != (ArgAttrsAttr + 8 * v18));
    }

LABEL_36:
    isSplat = mlir::ElementsAttr::isSplat(v43);
    ParentOp = v45;
    v39 = isSplat;
    do
    {
      v34 = *(ParentOp + 16);
      if (!v34)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v34);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
    result = mlir::Type::isF16(&v39);
    if (!result)
    {
      return mlir::Type::isF32(&v39);
    }

    return result;
  }

  v9 = 8 * v8;
  while (*result != 0x8000000000000000)
  {
    result += 8;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t mlir::mps::MPSCostModel::computeCostCropResizeOp(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = *(*(a2 + 72) + 24);
  if (*(a2 + 36))
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v5 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v26[0] = v5;
  v26[1] = v6;
  v7 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  if (result)
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v7 = 0;
  }

  v25[0] = v7;
  v25[1] = result;
  isSplat = v7;
  v29 = result;
  if (v7)
  {
    result = mlir::CallOpInterface::getArgOperands(&isSplat);
    if (result)
    {
      result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
      if (v9)
      {
        v10 = 8 * v9;
        while (*result != 0x8000000000000000)
        {
          result += 8;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        isSplat = v5;
        v29 = v6;
        if (v5)
        {
          result = mlir::CallOpInterface::getArgOperands(&isSplat);
          if (result)
          {
            result = mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
            if (v11)
            {
              v12 = 8 * v11;
              while (*result != 0x8000000000000000)
              {
                result += 8;
                v12 -= 8;
                if (!v12)
                {
                  goto LABEL_22;
                }
              }
            }

            else
            {
LABEL_22:
              isSplat = mlir::ElementsAttr::isSplat(v26);
              mlir::Type::getIntOrFloatBitWidth(&isSplat);
              ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v25);
              mlir::ShapedType::getNumElements(ArgAttrsAttr, v14);
              mlir::mps::getElementBitWidth(v25[0]);
              v15 = mlir::CallableOpInterface::getArgAttrsAttr(v25);
              mlir::ShapedType::getNumElements(v15, v16);
              GateLayout = mlir::mps::LSTMOp::getGateLayout(&v27);
              v18 = mlir::CallableOpInterface::getArgAttrsAttr(v25);
              mlir::ShapedType::getNumElements(v18, v19);
              if (GateLayout == 1)
              {
                mlir::mps::getElementBitWidth(v26[0]);
                v20 = mlir::CallableOpInterface::getArgAttrsAttr(v26);
                mlir::ShapedType::getNumElements(v20, v21);
              }

              v22 = mlir::ElementsAttr::isSplat(v25);
              ParentOp = v27;
              isSplat = v22;
              do
              {
                v24 = *(ParentOp + 16);
                if (!v24)
                {
                  break;
                }

                ParentOp = mlir::Block::getParentOp(v24);
                if (!ParentOp)
                {
                  break;
                }
              }

              while (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id);
              result = mlir::Type::isF16(&isSplat);
              if (!result)
              {
                return mlir::Type::isF32(&isSplat);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

size_t **mlir::mps::detail::MPSAbstractCostModel::getDispatchMap(void)::$_0::operator()(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  v3 = llvm::StringMapImpl::hash("mps.acos", 8uLL, a3);
  v4 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.acos", 8uLL, v3);
  v4[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostACosOp;
  v4[2] = 0;
  v6 = llvm::StringMapImpl::hash("mps.acosh", 9uLL, v5);
  v7 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.acosh", 9uLL, v6);
  v7[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostACoshOp;
  v7[2] = 0;
  v9 = llvm::StringMapImpl::hash("mps.asin", 8uLL, v8);
  v10 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.asin", 8uLL, v9);
  v10[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostASinOp;
  v10[2] = 0;
  v12 = llvm::StringMapImpl::hash("mps.asinh", 9uLL, v11);
  v13 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.asinh", 9uLL, v12);
  v13[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostASinhOp;
  v13[2] = 0;
  v15 = llvm::StringMapImpl::hash("mps.atan2", 9uLL, v14);
  v16 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.atan2", 9uLL, v15);
  v16[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostATan2Op;
  v16[2] = 0;
  v18 = llvm::StringMapImpl::hash("mps.atan", 8uLL, v17);
  v19 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.atan", 8uLL, v18);
  v19[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostATanOp;
  v19[2] = 0;
  v21 = llvm::StringMapImpl::hash("mps.atanh", 9uLL, v20);
  v22 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.atanh", 9uLL, v21);
  v22[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostATanhOp;
  v22[2] = 0;
  v24 = llvm::StringMapImpl::hash("mps.absolute", 0xCuLL, v23);
  v25 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.absolute", 0xCuLL, v24);
  v25[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAbsoluteOp;
  v25[2] = 0;
  v27 = llvm::StringMapImpl::hash("mps.absolute_square", 0x13uLL, v26);
  v28 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.absolute_square", 0x13uLL, v27);
  v28[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAbsoluteSquareOp;
  v28[2] = 0;
  v30 = llvm::StringMapImpl::hash("mps.add", 7uLL, v29);
  v31 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.add", 7uLL, v30);
  v31[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAddOp;
  v31[2] = 0;
  v33 = llvm::StringMapImpl::hash("mps.and", 7uLL, v32);
  v34 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.and", 7uLL, v33);
  v34[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAndOp;
  v34[2] = 0;
  v36 = llvm::StringMapImpl::hash("mps.assign_variable", 0x13uLL, v35);
  v37 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.assign_variable", 0x13uLL, v36);
  v37[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostAssignVariableOp;
  v37[2] = 0;
  v39 = llvm::StringMapImpl::hash("mps.band_part", 0xDuLL, v38);
  v40 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.band_part", 0xDuLL, v39);
  v40[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBandPartOp;
  v40[2] = 0;
  v42 = llvm::StringMapImpl::hash("mps.batch_to_space", 0x12uLL, v41);
  v43 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.batch_to_space", 0x12uLL, v42);
  v43[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBatchToSpaceOp;
  v43[2] = 0;
  v45 = llvm::StringMapImpl::hash("mps.bias_add_grad", 0x11uLL, v44);
  v46 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bias_add_grad", 0x11uLL, v45);
  v46[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBiasAddGradOp;
  v46[2] = 0;
  v48 = llvm::StringMapImpl::hash("mps.bias_add", 0xCuLL, v47);
  v49 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bias_add", 0xCuLL, v48);
  v49[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBiasAddOp;
  v49[2] = 0;
  v51 = llvm::StringMapImpl::hash("mps.bitwise_and", 0xFuLL, v50);
  v52 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bitwise_and", 0xFuLL, v51);
  v52[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseAndOp;
  v52[2] = 0;
  v54 = llvm::StringMapImpl::hash("mps.bitwise_left_shift", 0x16uLL, v53);
  v55 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bitwise_left_shift", 0x16uLL, v54);
  v55[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseLeftShiftOp;
  v55[2] = 0;
  v57 = llvm::StringMapImpl::hash("mps.bitwise_not", 0xFuLL, v56);
  v58 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bitwise_not", 0xFuLL, v57);
  v58[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseNotOp;
  v58[2] = 0;
  v60 = llvm::StringMapImpl::hash("mps.bitwise_or", 0xEuLL, v59);
  v61 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bitwise_or", 0xEuLL, v60);
  v61[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseOrOp;
  v61[2] = 0;
  v63 = llvm::StringMapImpl::hash("mps.bitwise_popcount", 0x14uLL, v62);
  v64 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bitwise_popcount", 0x14uLL, v63);
  v64[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwisePopcountOp;
  v64[2] = 0;
  v66 = llvm::StringMapImpl::hash("mps.bitwise_right_shift", 0x17uLL, v65);
  v67 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bitwise_right_shift", 0x17uLL, v66);
  v67[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseRightShiftOp;
  v67[2] = 0;
  v69 = llvm::StringMapImpl::hash("mps.bitwise_xor", 0xFuLL, v68);
  v70 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.bitwise_xor", 0xFuLL, v69);
  v70[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBitwiseXorOp;
  v70[2] = 0;
  v72 = llvm::StringMapImpl::hash("mps.broadcast_gradient_args", 0x1BuLL, v71);
  v73 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.broadcast_gradient_args", 0x1BuLL, v72);
  v73[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBroadcastGradientArgsOp;
  v73[2] = 0;
  v75 = llvm::StringMapImpl::hash("mps.broadcast_to", 0x10uLL, v74);
  v76 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.broadcast_to", 0x10uLL, v75);
  v76[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostBroadcastToOp;
  v76[2] = 0;
  v78 = llvm::StringMapImpl::hash("mps.call", 8uLL, v77);
  v79 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.call", 8uLL, v78);
  v79[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCallOp;
  v79[2] = 0;
  v81 = llvm::StringMapImpl::hash("mps.cast", 8uLL, v80);
  v82 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cast", 8uLL, v81);
  v82[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCastOp;
  v82[2] = 0;
  v84 = llvm::StringMapImpl::hash("mps.ceil", 8uLL, v83);
  v85 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.ceil", 8uLL, v84);
  v85[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCeilOp;
  v85[2] = 0;
  v87 = llvm::StringMapImpl::hash("mps.clamp", 9uLL, v86);
  v88 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.clamp", 9uLL, v87);
  v88[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostClampOp;
  v88[2] = 0;
  v90 = llvm::StringMapImpl::hash("mps.col_to_im", 0xDuLL, v89);
  v91 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.col_to_im", 0xDuLL, v90);
  v91[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostColToImOp;
  v91[2] = 0;
  v93 = llvm::StringMapImpl::hash("mps.concat", 0xAuLL, v92);
  v94 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.concat", 0xAuLL, v93);
  v94[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConcatOp;
  v94[2] = 0;
  v96 = llvm::StringMapImpl::hash("mps.conjugate", 0xDuLL, v95);
  v97 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.conjugate", 0xDuLL, v96);
  v97[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConjugateOp;
  v97[2] = 0;
  v99 = llvm::StringMapImpl::hash("mps.constant", 0xCuLL, v98);
  v100 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.constant", 0xCuLL, v99);
  v100[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConstantOp;
  v100[2] = 0;
  v102 = llvm::StringMapImpl::hash("mps.conv_2d_data_gradient", 0x19uLL, v101);
  v103 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.conv_2d_data_gradient", 0x19uLL, v102);
  v103[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv2DDataGradientOp;
  v103[2] = 0;
  v105 = llvm::StringMapImpl::hash("mps.conv_2d", 0xBuLL, v104);
  v106 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.conv_2d", 0xBuLL, v105);
  v106[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv2DOp;
  v106[2] = 0;
  v108 = llvm::StringMapImpl::hash("mps.conv_2d_weights_gradient", 0x1CuLL, v107);
  v109 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.conv_2d_weights_gradient", 0x1CuLL, v108);
  v109[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv2DWeightsGradientOp;
  v109[2] = 0;
  v111 = llvm::StringMapImpl::hash("mps.conv_3d_data_gradient", 0x19uLL, v110);
  v112 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.conv_3d_data_gradient", 0x19uLL, v111);
  v112[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv3DDataGradientOp;
  v112[2] = 0;
  v114 = llvm::StringMapImpl::hash("mps.conv_3d", 0xBuLL, v113);
  v115 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.conv_3d", 0xBuLL, v114);
  v115[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv3DOp;
  v115[2] = 0;
  v117 = llvm::StringMapImpl::hash("mps.conv_3d_weights_gradient", 0x1CuLL, v116);
  v118 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.conv_3d_weights_gradient", 0x1CuLL, v117);
  v118[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostConv3DWeightsGradientOp;
  v118[2] = 0;
  v120 = llvm::StringMapImpl::hash("mps.cos", 7uLL, v119);
  v121 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cos", 7uLL, v120);
  v121[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCosOp;
  v121[2] = 0;
  v123 = llvm::StringMapImpl::hash("mps.cosh", 8uLL, v122);
  v124 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cosh", 8uLL, v123);
  v124[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCoshOp;
  v124[2] = 0;
  v126 = llvm::StringMapImpl::hash("mps.cost_volume", 0xFuLL, v125);
  v127 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cost_volume", 0xFuLL, v126);
  v127[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCostVolumeOp;
  v127[2] = 0;
  v129 = llvm::StringMapImpl::hash("mps.create_complex", 0x12uLL, v128);
  v130 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.create_complex", 0x12uLL, v129);
  v130[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCreateComplexOp;
  v130[2] = 0;
  v132 = llvm::StringMapImpl::hash("mps.create_texture_tensor", 0x19uLL, v131);
  v133 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.create_texture_tensor", 0x19uLL, v132);
  v133[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCreateTextureTensorOp;
  v133[2] = 0;
  v135 = llvm::StringMapImpl::hash("mps.crop", 8uLL, v134);
  v136 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.crop", 8uLL, v135);
  v136[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCropOp;
  v136[2] = 0;
  v138 = llvm::StringMapImpl::hash("mps.crop_resize", 0xFuLL, v137);
  v139 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.crop_resize", 0xFuLL, v138);
  v139[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCropResizeOp;
  v139[2] = 0;
  v141 = llvm::StringMapImpl::hash("mps.cumulative_maximum", 0x16uLL, v140);
  v142 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cumulative_maximum", 0x16uLL, v141);
  v142[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeMaximumOp;
  v142[2] = 0;
  v144 = llvm::StringMapImpl::hash("mps.cumulative_minimum", 0x16uLL, v143);
  v145 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cumulative_minimum", 0x16uLL, v144);
  v145[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeMinimumOp;
  v145[2] = 0;
  v147 = llvm::StringMapImpl::hash("mps.cumulative_product", 0x16uLL, v146);
  v148 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cumulative_product", 0x16uLL, v147);
  v148[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeProductOp;
  v148[2] = 0;
  v150 = llvm::StringMapImpl::hash("mps.cumulative_sum", 0x12uLL, v149);
  v151 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.cumulative_sum", 0x12uLL, v150);
  v151[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostCumulativeSumOp;
  v151[2] = 0;
  v153 = llvm::StringMapImpl::hash("mps.degamma", 0xBuLL, v152);
  v154 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.degamma", 0xBuLL, v153);
  v154[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDegammaOp;
  v154[2] = 0;
  v156 = llvm::StringMapImpl::hash("mps.depth_to_space_2d", 0x15uLL, v155);
  v157 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.depth_to_space_2d", 0x15uLL, v156);
  v157[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthToSpace2DOp;
  v157[2] = 0;
  v159 = llvm::StringMapImpl::hash("mps.depthwise_conv_2d_data_gradient", 0x23uLL, v158);
  v160 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.depthwise_conv_2d_data_gradient", 0x23uLL, v159);
  v160[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv2DDataGradientOp;
  v160[2] = 0;
  v162 = llvm::StringMapImpl::hash("mps.depthwise_conv_2d", 0x15uLL, v161);
  v163 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.depthwise_conv_2d", 0x15uLL, v162);
  v163[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv2DOp;
  v163[2] = 0;
  v165 = llvm::StringMapImpl::hash("mps.depthwise_conv_2d_weights_gradient", 0x26uLL, v164);
  v166 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.depthwise_conv_2d_weights_gradient", 0x26uLL, v165);
  v166[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv2DWeightsGradientOp;
  v166[2] = 0;
  v168 = llvm::StringMapImpl::hash("mps.depthwise_conv_3d_data_gradient", 0x23uLL, v167);
  v169 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.depthwise_conv_3d_data_gradient", 0x23uLL, v168);
  v169[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv3DDataGradientOp;
  v169[2] = 0;
  v171 = llvm::StringMapImpl::hash("mps.depthwise_conv_3d", 0x15uLL, v170);
  v172 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.depthwise_conv_3d", 0x15uLL, v171);
  v172[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv3DOp;
  v172[2] = 0;
  v174 = llvm::StringMapImpl::hash("mps.depthwise_conv_3d_weights_gradient", 0x26uLL, v173);
  v175 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.depthwise_conv_3d_weights_gradient", 0x26uLL, v174);
  v175[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDepthwiseConv3DWeightsGradientOp;
  v175[2] = 0;
  v177 = llvm::StringMapImpl::hash("mps.dequantize_lut", 0x12uLL, v176);
  v178 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.dequantize_lut", 0x12uLL, v177);
  v178[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDequantizeLUTOp;
  v178[2] = 0;
  v180 = llvm::StringMapImpl::hash("mps.dequantize", 0xEuLL, v179);
  v181 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.dequantize", 0xEuLL, v180);
  v181[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDequantizeOp;
  v181[2] = 0;
  v183 = llvm::StringMapImpl::hash("mps.dimension_size", 0x12uLL, v182);
  v184 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.dimension_size", 0x12uLL, v183);
  v184[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDimensionSizeOp;
  v184[2] = 0;
  v186 = llvm::StringMapImpl::hash("mps.dirac", 9uLL, v185);
  v187 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.dirac", 9uLL, v186);
  v187[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDiracOp;
  v187[2] = 0;
  v189 = llvm::StringMapImpl::hash("mps.divide", 0xAuLL, v188);
  v190 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.divide", 0xAuLL, v189);
  v190[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDivideOp;
  v190[2] = 0;
  v192 = llvm::StringMapImpl::hash("mps.dynamic_shape_cast", 0x16uLL, v191);
  v193 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.dynamic_shape_cast", 0x16uLL, v192);
  v193[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostDynamicShapeCastOp;
  v193[2] = 0;
  v195 = llvm::StringMapImpl::hash("mps.elu", 7uLL, v194);
  v196 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.elu", 7uLL, v195);
  v196[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostEluOp;
  v196[2] = 0;
  v198 = llvm::StringMapImpl::hash("mps.equal", 9uLL, v197);
  v199 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.equal", 9uLL, v198);
  v199[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostEqualToOp;
  v199[2] = 0;
  v201 = llvm::StringMapImpl::hash("mps.erf", 7uLL, v200);
  v202 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.erf", 7uLL, v201);
  v202[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostErfOp;
  v202[2] = 0;
  v204 = llvm::StringMapImpl::hash("mps.expand_dims", 0xFuLL, v203);
  v205 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.expand_dims", 0xFuLL, v204);
  v205[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExpandDimsOp;
  v205[2] = 0;
  v207 = llvm::StringMapImpl::hash("mps.exponent_base_10", 0x14uLL, v206);
  v208 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.exponent_base_10", 0x14uLL, v207);
  v208[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExponentBase10Op;
  v208[2] = 0;
  v210 = llvm::StringMapImpl::hash("mps.exponent_base_2", 0x13uLL, v209);
  v211 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.exponent_base_2", 0x13uLL, v210);
  v211[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExponentBase2Op;
  v211[2] = 0;
  v213 = llvm::StringMapImpl::hash("mps.exponent", 0xCuLL, v212);
  v214 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.exponent", 0xCuLL, v213);
  v214[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostExponentOp;
  v214[2] = 0;
  v216 = llvm::StringMapImpl::hash("mps.fast_fourier_transform", 0x1AuLL, v215);
  v217 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.fast_fourier_transform", 0x1AuLL, v216);
  v217[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFastFourierTransformOp;
  v217[2] = 0;
  v219 = llvm::StringMapImpl::hash("mps.flatten_2d", 0xEuLL, v218);
  v220 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.flatten_2d", 0xEuLL, v219);
  v220[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFlatten2DOp;
  v220[2] = 0;
  v222 = llvm::StringMapImpl::hash("mps.floor_divide", 0x10uLL, v221);
  v223 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.floor_divide", 0x10uLL, v222);
  v223[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFloorDivideOp;
  v223[2] = 0;
  v225 = llvm::StringMapImpl::hash("mps.floor", 9uLL, v224);
  v226 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.floor", 9uLL, v225);
  v226[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostFloorOp;
  v226[2] = 0;
  v228 = llvm::StringMapImpl::hash("mps.gru_gradient", 0x10uLL, v227);
  v229 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.gru_gradient", 0x10uLL, v228);
  v229[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGRUGradientOp;
  v229[2] = 0;
  v231 = llvm::StringMapImpl::hash("mps.gru", 7uLL, v230);
  v232 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.gru", 7uLL, v231);
  v232[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGRUOp;
  v232[2] = 0;
  v234 = llvm::StringMapImpl::hash("mps.gather_along_axis", 0x15uLL, v233);
  v235 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.gather_along_axis", 0x15uLL, v234);
  v235[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGatherAlongAxisOp;
  v235[2] = 0;
  v237 = llvm::StringMapImpl::hash("mps.gather_nd", 0xDuLL, v236);
  v238 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.gather_nd", 0xDuLL, v237);
  v238[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGatherNDOp;
  v238[2] = 0;
  v240 = llvm::StringMapImpl::hash("mps.gather", 0xAuLL, v239);
  v241 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.gather", 0xAuLL, v240);
  v241[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGatherOp;
  v241[2] = 0;
  v243 = llvm::StringMapImpl::hash("mps.gelu", 8uLL, v242);
  v244 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.gelu", 8uLL, v243);
  v244[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGeluOp;
  v244[2] = 0;
  v246 = llvm::StringMapImpl::hash("mps.get_coordinates", 0x13uLL, v245);
  v247 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.get_coordinates", 0x13uLL, v246);
  v247[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGetCoordOp;
  v247[2] = 0;
  v249 = llvm::StringMapImpl::hash("mps.greater", 0xBuLL, v248);
  v250 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.greater", 0xBuLL, v249);
  v250[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGreaterThanOp;
  v250[2] = 0;
  v252 = llvm::StringMapImpl::hash("mps.greater_equal", 0x11uLL, v251);
  v253 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.greater_equal", 0x11uLL, v252);
  v253[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostGreaterThanOrEqualToOp;
  v253[2] = 0;
  v255 = llvm::StringMapImpl::hash("mps.hamming_distance", 0x14uLL, v254);
  v256 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.hamming_distance", 0x14uLL, v255);
  v256[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostHammingDistanceOp;
  v256[2] = 0;
  v258 = llvm::StringMapImpl::hash("mps.hermitean_to_real_fft", 0x19uLL, v257);
  v259 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.hermitean_to_real_fft", 0x19uLL, v258);
  v259[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostHermiteanToRealFFTOp;
  v259[2] = 0;
  v261 = llvm::StringMapImpl::hash("mps.identity", 0xCuLL, v260);
  v262 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.identity", 0xCuLL, v261);
  v262[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIdentityOp;
  v262[2] = 0;
  v264 = llvm::StringMapImpl::hash("mps.im_to_col", 0xDuLL, v263);
  v265 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.im_to_col", 0xDuLL, v264);
  v265[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostImToColOp;
  v265[2] = 0;
  v267 = llvm::StringMapImpl::hash("mps.imaginary_part", 0x12uLL, v266);
  v268 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.imaginary_part", 0x12uLL, v267);
  v268[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostImaginaryPartOp;
  v268[2] = 0;
  v270 = llvm::StringMapImpl::hash("mps.init_random_philox_state", 0x1CuLL, v269);
  v271 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.init_random_philox_state", 0x1CuLL, v270);
  v271[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostInitRandomPhiloxStateOp;
  v271[2] = 0;
  v273 = llvm::StringMapImpl::hash("mps.instance_norm", 0x11uLL, v272);
  v274 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.instance_norm", 0x11uLL, v273);
  v274[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostInstanceNormOp;
  v274[2] = 0;
  v276 = llvm::StringMapImpl::hash("mps.is_finite", 0xDuLL, v275);
  v277 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.is_finite", 0xDuLL, v276);
  v277[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIsFiniteOp;
  v277[2] = 0;
  v279 = llvm::StringMapImpl::hash("mps.is_infinite", 0xFuLL, v278);
  v280 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.is_infinite", 0xFuLL, v279);
  v280[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIsInfiniteOp;
  v280[2] = 0;
  v282 = llvm::StringMapImpl::hash("mps.is_nan", 0xAuLL, v281);
  v283 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.is_nan", 0xAuLL, v282);
  v283[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostIsNaNOp;
  v283[2] = 0;
  v285 = llvm::StringMapImpl::hash("mps.lp_norm", 0xBuLL, v284);
  v286 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.lp_norm", 0xBuLL, v285);
  v286[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLPNormOp;
  v286[2] = 0;
  v288 = llvm::StringMapImpl::hash("mps.lstm_gradient", 0x11uLL, v287);
  v289 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.lstm_gradient", 0x11uLL, v288);
  v289[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLSTMGradientOp;
  v289[2] = 0;
  v291 = llvm::StringMapImpl::hash("mps.lstm", 8uLL, v290);
  v292 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.lstm", 8uLL, v291);
  v292[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLSTMOp;
  v292[2] = 0;
  v294 = llvm::StringMapImpl::hash("mps.leaky_relu", 0xEuLL, v293);
  v295 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.leaky_relu", 0xEuLL, v294);
  v295[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLeakyReluOp;
  v295[2] = 0;
  v297 = llvm::StringMapImpl::hash("mps.less", 8uLL, v296);
  v298 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.less", 8uLL, v297);
  v298[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLessThanOp;
  v298[2] = 0;
  v300 = llvm::StringMapImpl::hash("mps.less_equal", 0xEuLL, v299);
  v301 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.less_equal", 0xEuLL, v300);
  v301[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLessThanOrEqualToOp;
  v301[2] = 0;
  v303 = llvm::StringMapImpl::hash("mps.local_convolution_data_gradient", 0x23uLL, v302);
  v304 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.local_convolution_data_gradient", 0x23uLL, v303);
  v304[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLocalConvolutionDataGradientOp;
  v304[2] = 0;
  v306 = llvm::StringMapImpl::hash("mps.local_convolution", 0x15uLL, v305);
  v307 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.local_convolution", 0x15uLL, v306);
  v307[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLocalConvolutionOp;
  v307[2] = 0;
  v309 = llvm::StringMapImpl::hash("mps.local_convolution_weight_gradient", 0x25uLL, v308);
  v310 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.local_convolution_weight_gradient", 0x25uLL, v309);
  v310[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLocalConvolutionWeightGradientOp;
  v310[2] = 0;
  v312 = llvm::StringMapImpl::hash("mps.logarithm_base_10", 0x15uLL, v311);
  v313 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.logarithm_base_10", 0x15uLL, v312);
  v313[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLogarithmBase10Op;
  v313[2] = 0;
  v315 = llvm::StringMapImpl::hash("mps.logarithm_base_2", 0x14uLL, v314);
  v316 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.logarithm_base_2", 0x14uLL, v315);
  v316[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLogarithmBase2Op;
  v316[2] = 0;
  v318 = llvm::StringMapImpl::hash("mps.logarithm", 0xDuLL, v317);
  v319 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.logarithm", 0xDuLL, v318);
  v319[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostLogarithmOp;
  v319[2] = 0;
  v321 = llvm::StringMapImpl::hash("mps.matmul", 0xAuLL, v320);
  v322 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.matmul", 0xAuLL, v321);
  v322[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatMulOp;
  v322[2] = 0;
  v324 = llvm::StringMapImpl::hash("mps.materialize_sparse_tensor", 0x1DuLL, v323);
  v325 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.materialize_sparse_tensor", 0x1DuLL, v324);
  v325[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMaterializeSparseTensorOp;
  v325[2] = 0;
  v327 = llvm::StringMapImpl::hash("mps.matrix_decomposition_lu", 0x1BuLL, v326);
  v328 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.matrix_decomposition_lu", 0x1BuLL, v327);
  v328[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatrixDecompositionLUOp;
  v328[2] = 0;
  v330 = llvm::StringMapImpl::hash("mps.matrix_inverse", 0x12uLL, v329);
  v331 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.matrix_inverse", 0x12uLL, v330);
  v331[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatrixInverseOp;
  v331[2] = 0;
  v333 = llvm::StringMapImpl::hash("mps.matrix_solver_lu", 0x14uLL, v332);
  v334 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.matrix_solver_lu", 0x14uLL, v333);
  v334[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMatrixSolverLUOp;
  v334[2] = 0;
  v336 = llvm::StringMapImpl::hash("mps.maximum", 0xBuLL, v335);
  v337 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.maximum", 0xBuLL, v336);
  v337[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMaximumOp;
  v337[2] = 0;
  v339 = llvm::StringMapImpl::hash("mps.minimum", 0xBuLL, v338);
  v340 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.minimum", 0xBuLL, v339);
  v340[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMinimumOp;
  v340[2] = 0;
  v342 = llvm::StringMapImpl::hash("mps.modulo", 0xAuLL, v341);
  v343 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.modulo", 0xAuLL, v342);
  v343[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostModuloOp;
  v343[2] = 0;
  v345 = llvm::StringMapImpl::hash("mps.multiply", 0xCuLL, v344);
  v346 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.multiply", 0xCuLL, v345);
  v346[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostMultiplyOp;
  v346[2] = 0;
  v348 = llvm::StringMapImpl::hash("mps.n_relu", 0xAuLL, v347);
  v349 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.n_relu", 0xAuLL, v348);
  v349[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNReluOp;
  v349[2] = 0;
  v351 = llvm::StringMapImpl::hash("mps.nand", 8uLL, v350);
  v352 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.nand", 8uLL, v351);
  v352[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNandOp;
  v352[2] = 0;
  v354 = llvm::StringMapImpl::hash("mps.negative", 0xCuLL, v353);
  v355 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.negative", 0xCuLL, v354);
  v355[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNegativeOp;
  v355[2] = 0;
  v357 = llvm::StringMapImpl::hash("mps.non_maximum_suppression", 0x1BuLL, v356);
  v358 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.non_maximum_suppression", 0x1BuLL, v357);
  v358[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNonMaximumSuppressionOp;
  v358[2] = 0;
  v360 = llvm::StringMapImpl::hash("mps.non_zero", 0xCuLL, v359);
  v361 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.non_zero", 0xCuLL, v360);
  v361[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNonZeroOp;
  v361[2] = 0;
  v363 = llvm::StringMapImpl::hash("mps.nor", 7uLL, v362);
  v364 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.nor", 7uLL, v363);
  v364[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNorOp;
  v364[2] = 0;
  v366 = llvm::StringMapImpl::hash("mps.normalization", 0x11uLL, v365);
  v367 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.normalization", 0x11uLL, v366);
  v367[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNormalizationOp;
  v367[2] = 0;
  v369 = llvm::StringMapImpl::hash("mps.not_equal", 0xDuLL, v368);
  v370 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.not_equal", 0xDuLL, v369);
  v370[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNotEqualToOp;
  v370[2] = 0;
  v372 = llvm::StringMapImpl::hash("mps.not", 7uLL, v371);
  v373 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.not", 7uLL, v372);
  v373[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostNotOp;
  v373[2] = 0;
  v375 = llvm::StringMapImpl::hash("mps.one_hot", 0xBuLL, v374);
  v376 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.one_hot", 0xBuLL, v375);
  v376[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostOneHotOp;
  v376[2] = 0;
  v378 = llvm::StringMapImpl::hash("mps.or", 6uLL, v377);
  v379 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.or", 6uLL, v378);
  v379[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostOrOp;
  v379[2] = 0;
  v381 = llvm::StringMapImpl::hash("mps.prelu", 9uLL, v380);
  v382 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.prelu", 9uLL, v381);
  v382[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPReluOp;
  v382[2] = 0;
  v384 = llvm::StringMapImpl::hash("mps.pad_gradient", 0x10uLL, v383);
  v385 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pad_gradient", 0x10uLL, v384);
  v385[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPadGradientOp;
  v385[2] = 0;
  v387 = llvm::StringMapImpl::hash("mps.pad", 7uLL, v386);
  v388 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pad", 7uLL, v387);
  v388[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPadOp;
  v388[2] = 0;
  v390 = llvm::StringMapImpl::hash("mps.permute", 0xBuLL, v389);
  v391 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.permute", 0xBuLL, v390);
  v391[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPermuteOp;
  v391[2] = 0;
  v393 = llvm::StringMapImpl::hash("mps.placeholder", 0xFuLL, v392);
  v394 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.placeholder", 0xFuLL, v393);
  v394[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPlaceholderOp;
  v394[2] = 0;
  v396 = llvm::StringMapImpl::hash("mps.pooling_average_gradient", 0x1CuLL, v395);
  v397 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pooling_average_gradient", 0x1CuLL, v396);
  v397[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolAvgGradientOp;
  v397[2] = 0;
  v399 = llvm::StringMapImpl::hash("mps.pooling_average", 0x13uLL, v398);
  v400 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pooling_average", 0x13uLL, v399);
  v400[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolAvgOp;
  v400[2] = 0;
  v402 = llvm::StringMapImpl::hash("mps.pooling_l2_norm_gradient", 0x1CuLL, v401);
  v403 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pooling_l2_norm_gradient", 0x1CuLL, v402);
  v403[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolL2NormGradientOp;
  v403[2] = 0;
  v405 = llvm::StringMapImpl::hash("mps.pooling_l2_norm", 0x13uLL, v404);
  v406 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pooling_l2_norm", 0x13uLL, v405);
  v406[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolL2NormOp;
  v406[2] = 0;
  v408 = llvm::StringMapImpl::hash("mps.pooling_max_gradient", 0x18uLL, v407);
  v409 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pooling_max_gradient", 0x18uLL, v408);
  v409[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolMaxGradientOp;
  v409[2] = 0;
  v411 = llvm::StringMapImpl::hash("mps.pooling_max", 0xFuLL, v410);
  v412 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.pooling_max", 0xFuLL, v411);
  v412[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPoolMaxOp;
  v412[2] = 0;
  v414 = llvm::StringMapImpl::hash("mps.power", 9uLL, v413);
  v415 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.power", 9uLL, v414);
  v415[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPowerOp;
  v415[2] = 0;
  v417 = llvm::StringMapImpl::hash("mps.prune_gradient", 0x12uLL, v416);
  v418 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.prune_gradient", 0x12uLL, v417);
  v418[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPruningGradientOp;
  v418[2] = 0;
  v420 = llvm::StringMapImpl::hash("mps.prune", 9uLL, v419);
  v421 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.prune", 9uLL, v420);
  v421[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostPruningOp;
  v421[2] = 0;
  v423 = llvm::StringMapImpl::hash("mps.quantize", 0xCuLL, v422);
  v424 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.quantize", 0xCuLL, v423);
  v424[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostQuantizeOp;
  v424[2] = 0;
  v426 = llvm::StringMapImpl::hash("mps.random_normal", 0x11uLL, v425);
  v427 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.random_normal", 0x11uLL, v426);
  v427[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRandomNormalOp;
  v427[2] = 0;
  v429 = llvm::StringMapImpl::hash("mps.random_truncated_normal", 0x1BuLL, v428);
  v430 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.random_truncated_normal", 0x1BuLL, v429);
  v430[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRandomTruncatedNormalOp;
  v430[2] = 0;
  v432 = llvm::StringMapImpl::hash("mps.random_uniform", 0x12uLL, v431);
  v433 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.random_uniform", 0x12uLL, v432);
  v433[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRandomUniformOp;
  v433[2] = 0;
  v435 = llvm::StringMapImpl::hash("mps.rank", 8uLL, v434);
  v436 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.rank", 8uLL, v435);
  v436[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRankOp;
  v436[2] = 0;
  v438 = llvm::StringMapImpl::hash("mps.read_data_from_file", 0x17uLL, v437);
  v439 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.read_data_from_file", 0x17uLL, v438);
  v439[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReadDataFromFileOp;
  v439[2] = 0;
  v441 = llvm::StringMapImpl::hash("mps.read_variable", 0x11uLL, v440);
  v442 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.read_variable", 0x11uLL, v441);
  v442[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReadVariableOp;
  v442[2] = 0;
  v444 = llvm::StringMapImpl::hash("mps.real_part", 0xDuLL, v443);
  v445 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.real_part", 0xDuLL, v444);
  v445[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRealPartOp;
  v445[2] = 0;
  v447 = llvm::StringMapImpl::hash("mps.real_to_hermitean_fft", 0x19uLL, v446);
  v448 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.real_to_hermitean_fft", 0x19uLL, v447);
  v448[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRealToHermiteanFFTOp;
  v448[2] = 0;
  v450 = llvm::StringMapImpl::hash("mps.reciprocal", 0xEuLL, v449);
  v451 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reciprocal", 0xEuLL, v450);
  v451[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReciprocalOp;
  v451[2] = 0;
  v453 = llvm::StringMapImpl::hash("mps.reciprocal_square_root", 0x1AuLL, v452);
  v454 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reciprocal_square_root", 0x1AuLL, v453);
  v454[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReciprocalSquareRootOp;
  v454[2] = 0;
  v456 = llvm::StringMapImpl::hash("mps.reduction_and", 0x11uLL, v455);
  v457 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_and", 0x11uLL, v456);
  v457[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionAndOp;
  v457[2] = 0;
  v459 = llvm::StringMapImpl::hash("mps.reduction_argmax", 0x14uLL, v458);
  v460 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_argmax", 0x14uLL, v459);
  v460[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionArgMaxOp;
  v460[2] = 0;
  v462 = llvm::StringMapImpl::hash("mps.reduction_argmin", 0x14uLL, v461);
  v463 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_argmin", 0x14uLL, v462);
  v463[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionArgMinOp;
  v463[2] = 0;
  v465 = llvm::StringMapImpl::hash("mps.reduction_logsumexp", 0x17uLL, v464);
  v466 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_logsumexp", 0x17uLL, v465);
  v466[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionLogSumExpOp;
  v466[2] = 0;
  v468 = llvm::StringMapImpl::hash("mps.reduction_max", 0x11uLL, v467);
  v469 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_max", 0x11uLL, v468);
  v469[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionMaxOp;
  v469[2] = 0;
  v471 = llvm::StringMapImpl::hash("mps.reduction_mean", 0x12uLL, v470);
  v472 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_mean", 0x12uLL, v471);
  v472[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionMeanOp;
  v472[2] = 0;
  v474 = llvm::StringMapImpl::hash("mps.reduction_min", 0x11uLL, v473);
  v475 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_min", 0x11uLL, v474);
  v475[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionMinOp;
  v475[2] = 0;
  v477 = llvm::StringMapImpl::hash("mps.reduction_or", 0x10uLL, v476);
  v478 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_or", 0x10uLL, v477);
  v478[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionOrOp;
  v478[2] = 0;
  v480 = llvm::StringMapImpl::hash("mps.reduction_prod", 0x12uLL, v479);
  v481 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_prod", 0x12uLL, v480);
  v481[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionProdOp;
  v481[2] = 0;
  v483 = llvm::StringMapImpl::hash("mps.reduction_sum", 0x11uLL, v482);
  v484 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_sum", 0x11uLL, v483);
  v484[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionSumOp;
  v484[2] = 0;
  v486 = llvm::StringMapImpl::hash("mps.reduction_variance", 0x16uLL, v485);
  v487 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reduction_variance", 0x16uLL, v486);
  v487[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReductionVarianceOp;
  v487[2] = 0;
  v489 = llvm::StringMapImpl::hash("mps.reinterpret_cast", 0x14uLL, v488);
  v490 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reinterpret_cast", 0x14uLL, v489);
  v490[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReinterpretCastOp;
  v490[2] = 0;
  v492 = llvm::StringMapImpl::hash("mps.relu6", 9uLL, v491);
  v493 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.relu6", 9uLL, v492);
  v493[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRelu6Op;
  v493[2] = 0;
  v495 = llvm::StringMapImpl::hash("mps.relu_grad", 0xDuLL, v494);
  v496 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.relu_grad", 0xDuLL, v495);
  v496[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReluGradOp;
  v496[2] = 0;
  v498 = llvm::StringMapImpl::hash("mps.relu", 8uLL, v497);
  v499 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.relu", 8uLL, v498);
  v499[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReluOp;
  v499[2] = 0;
  v501 = llvm::StringMapImpl::hash("mps.reshape", 0xBuLL, v500);
  v502 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reshape", 0xBuLL, v501);
  v502[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReshapeOp;
  v502[2] = 0;
  v504 = llvm::StringMapImpl::hash("mps.resize_gradient", 0x13uLL, v503);
  v505 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.resize_gradient", 0x13uLL, v504);
  v505[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostResizeGradientOp;
  v505[2] = 0;
  v507 = llvm::StringMapImpl::hash("mps.resize", 0xAuLL, v506);
  v508 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.resize", 0xAuLL, v507);
  v508[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostResizeOp;
  v508[2] = 0;
  v510 = llvm::StringMapImpl::hash("mps.reverse", 0xBuLL, v509);
  v511 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.reverse", 0xBuLL, v510);
  v511[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostReverseOp;
  v511[2] = 0;
  v513 = llvm::StringMapImpl::hash("mps.rint", 8uLL, v512);
  v514 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.rint", 8uLL, v513);
  v514[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRintOp;
  v514[2] = 0;
  v516 = llvm::StringMapImpl::hash("mps.round", 9uLL, v515);
  v517 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.round", 9uLL, v516);
  v517[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostRoundOp;
  v517[2] = 0;
  v519 = llvm::StringMapImpl::hash("mps.sample_grid_data_gradient", 0x1DuLL, v518);
  v520 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sample_grid_data_gradient", 0x1DuLL, v519);
  v520[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSampleGridDataGradientOp;
  v520[2] = 0;
  v522 = llvm::StringMapImpl::hash("mps.sample_grid", 0xFuLL, v521);
  v523 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sample_grid", 0xFuLL, v522);
  v523[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSampleGridOp;
  v523[2] = 0;
  v525 = llvm::StringMapImpl::hash("mps.scatter_along_axis", 0x16uLL, v524);
  v526 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.scatter_along_axis", 0x16uLL, v525);
  v526[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostScatterAlongAxisOp;
  v526[2] = 0;
  v528 = llvm::StringMapImpl::hash("mps.scatter_nd", 0xEuLL, v527);
  v529 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.scatter_nd", 0xEuLL, v528);
  v529[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostScatterNDOp;
  v529[2] = 0;
  v531 = llvm::StringMapImpl::hash("mps.scatter", 0xBuLL, v530);
  v532 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.scatter", 0xBuLL, v531);
  v532[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostScatterOp;
  v532[2] = 0;
  v534 = llvm::StringMapImpl::hash("mps.select", 0xAuLL, v533);
  v535 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.select", 0xAuLL, v534);
  v535[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSelectOp;
  v535[2] = 0;
  v537 = llvm::StringMapImpl::hash("mps.shape", 9uLL, v536);
  v538 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.shape", 9uLL, v537);
  v538[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostShapeOp;
  v538[2] = 0;
  v540 = llvm::StringMapImpl::hash("mps.sigmoid_gradient", 0x14uLL, v539);
  v541 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sigmoid_gradient", 0x14uLL, v540);
  v541[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidGradientOp;
  v541[2] = 0;
  v543 = llvm::StringMapImpl::hash("mps.sigmoid_gradient_with_sigmoid", 0x21uLL, v542);
  v544 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sigmoid_gradient_with_sigmoid", 0x21uLL, v543);
  v544[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidGradientWithSigmoidOp;
  v544[2] = 0;
  v546 = llvm::StringMapImpl::hash("mps.sigmoid_hard", 0x10uLL, v545);
  v547 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sigmoid_hard", 0x10uLL, v546);
  v547[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidHardOp;
  v547[2] = 0;
  v549 = llvm::StringMapImpl::hash("mps.sigmoid", 0xBuLL, v548);
  v550 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sigmoid", 0xBuLL, v549);
  v550[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSigmoidOp;
  v550[2] = 0;
  v552 = llvm::StringMapImpl::hash("mps.sign", 8uLL, v551);
  v553 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sign", 8uLL, v552);
  v553[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSignOp;
  v553[2] = 0;
  v555 = llvm::StringMapImpl::hash("mps.signbit", 0xBuLL, v554);
  v556 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.signbit", 0xBuLL, v555);
  v556[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSignbitOp;
  v556[2] = 0;
  v558 = llvm::StringMapImpl::hash("mps.sin", 7uLL, v557);
  v559 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sin", 7uLL, v558);
  v559[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSinOp;
  v559[2] = 0;
  v561 = llvm::StringMapImpl::hash("mps.singlegate_rnn_gradient", 0x1BuLL, v560);
  v562 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.singlegate_rnn_gradient", 0x1BuLL, v561);
  v562[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSingleGateRNNGradientOp;
  v562[2] = 0;
  v564 = llvm::StringMapImpl::hash("mps.singlegate_rnn", 0x12uLL, v563);
  v565 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.singlegate_rnn", 0x12uLL, v564);
  v565[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSingleGateRNNOp;
  v565[2] = 0;
  v567 = llvm::StringMapImpl::hash("mps.sinh", 8uLL, v566);
  v568 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sinh", 8uLL, v567);
  v568[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSinhOp;
  v568[2] = 0;
  v570 = llvm::StringMapImpl::hash("mps.size", 8uLL, v569);
  v571 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.size", 8uLL, v570);
  v571[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSizeOp;
  v571[2] = 0;
  v573 = llvm::StringMapImpl::hash("mps.slice", 9uLL, v572);
  v574 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.slice", 9uLL, v573);
  v574[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSliceOp;
  v574[2] = 0;
  v576 = llvm::StringMapImpl::hash("mps.softmax", 0xBuLL, v575);
  v577 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.softmax", 0xBuLL, v576);
  v577[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftmaxOp;
  v577[2] = 0;
  v579 = llvm::StringMapImpl::hash("mps.softplus", 0xCuLL, v578);
  v580 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.softplus", 0xCuLL, v579);
  v580[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftplusOp;
  v580[2] = 0;
  v582 = llvm::StringMapImpl::hash("mps.softplus_parametric", 0x17uLL, v581);
  v583 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.softplus_parametric", 0x17uLL, v582);
  v583[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftplusParametricOp;
  v583[2] = 0;
  v585 = llvm::StringMapImpl::hash("mps.softsign", 0xCuLL, v584);
  v586 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.softsign", 0xCuLL, v585);
  v586[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSoftsignOp;
  v586[2] = 0;
  v588 = llvm::StringMapImpl::hash("mps.sort", 8uLL, v587);
  v589 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.sort", 8uLL, v588);
  v589[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSortOp;
  v589[2] = 0;
  v591 = llvm::StringMapImpl::hash("mps.space_to_batch", 0x12uLL, v590);
  v592 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.space_to_batch", 0x12uLL, v591);
  v592[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSpaceToBatchOp;
  v592[2] = 0;
  v594 = llvm::StringMapImpl::hash("mps.space_to_depth_2d", 0x15uLL, v593);
  v595 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.space_to_depth_2d", 0x15uLL, v594);
  v595[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSpaceToDepth2DOp;
  v595[2] = 0;
  v597 = llvm::StringMapImpl::hash("mps.split", 9uLL, v596);
  v598 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.split", 9uLL, v597);
  v598[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSplitOp;
  v598[2] = 0;
  v600 = llvm::StringMapImpl::hash("mps.square", 0xAuLL, v599);
  v601 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.square", 0xAuLL, v600);
  v601[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSquareOp;
  v601[2] = 0;
  v603 = llvm::StringMapImpl::hash("mps.square_root", 0xFuLL, v602);
  v604 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.square_root", 0xFuLL, v603);
  v604[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSquareRootOp;
  v604[2] = 0;
  v606 = llvm::StringMapImpl::hash("mps.squeeze", 0xBuLL, v605);
  v607 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.squeeze", 0xBuLL, v606);
  v607[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSqueezeOp;
  v607[2] = 0;
  v609 = llvm::StringMapImpl::hash("mps.stencil", 0xBuLL, v608);
  v610 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.stencil", 0xBuLL, v609);
  v610[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStencilOp;
  v610[2] = 0;
  v612 = llvm::StringMapImpl::hash("mps.strided_slice_gradient", 0x1AuLL, v611);
  v613 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.strided_slice_gradient", 0x1AuLL, v612);
  v613[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStridedSliceGradientOp;
  v613[2] = 0;
  v615 = llvm::StringMapImpl::hash("mps.strided_slice", 0x11uLL, v614);
  v616 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.strided_slice", 0x11uLL, v615);
  v616[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStridedSliceOp;
  v616[2] = 0;
  v618 = llvm::StringMapImpl::hash("mps.strided_slice_update", 0x18uLL, v617);
  v619 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.strided_slice_update", 0x18uLL, v618);
  v619[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostStridedSliceUpdateOp;
  v619[2] = 0;
  v621 = llvm::StringMapImpl::hash("mps.subtract", 0xCuLL, v620);
  v622 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.subtract", 0xCuLL, v621);
  v622[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSubtractOp;
  v622[2] = 0;
  v624 = llvm::StringMapImpl::hash("mps.swish", 9uLL, v623);
  v625 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.swish", 9uLL, v624);
  v625[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostSwishOp;
  v625[2] = 0;
  v627 = llvm::StringMapImpl::hash("mps.tan", 7uLL, v626);
  v628 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.tan", 7uLL, v627);
  v628[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTanOp;
  v628[2] = 0;
  v630 = llvm::StringMapImpl::hash("mps.tanh", 8uLL, v629);
  v631 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.tanh", 8uLL, v630);
  v631[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTanhOp;
  v631[2] = 0;
  v633 = llvm::StringMapImpl::hash("mps.tile_gradient", 0x11uLL, v632);
  v634 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.tile_gradient", 0x11uLL, v633);
  v634[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTileGradientOp;
  v634[2] = 0;
  v636 = llvm::StringMapImpl::hash("mps.tile", 8uLL, v635);
  v637 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.tile", 8uLL, v636);
  v637[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTileOp;
  v637[2] = 0;
  v639 = llvm::StringMapImpl::hash("mps.top_k_grad", 0xEuLL, v638);
  v640 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.top_k_grad", 0xEuLL, v639);
  v640[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTopKGradientOp;
  v640[2] = 0;
  v642 = llvm::StringMapImpl::hash("mps.top_k", 9uLL, v641);
  v643 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.top_k", 9uLL, v642);
  v643[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTopKOp;
  v643[2] = 0;
  v645 = llvm::StringMapImpl::hash("mps.transpose", 0xDuLL, v644);
  v646 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.transpose", 0xDuLL, v645);
  v646[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTransposeOp;
  v646[2] = 0;
  v648 = llvm::StringMapImpl::hash("mps.truncate", 0xCuLL, v647);
  v649 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.truncate", 0xCuLL, v648);
  v649[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTruncateOp;
  v649[2] = 0;
  v651 = llvm::StringMapImpl::hash("mps.type_constraint", 0x13uLL, v650);
  v652 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.type_constraint", 0x13uLL, v651);
  v652[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostTypeConstraintOp;
  v652[2] = 0;
  v654 = llvm::StringMapImpl::hash("mps.unrealized_fold", 0x13uLL, v653);
  v655 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.unrealized_fold", 0x13uLL, v654);
  v655[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostUnrealizedFoldOp;
  v655[2] = 0;
  v657 = llvm::StringMapImpl::hash("mps.update_random_state", 0x17uLL, v656);
  v658 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.update_random_state", 0x17uLL, v657);
  v658[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostUpdateRandomStateOp;
  v658[2] = 0;
  v660 = llvm::StringMapImpl::hash("mps.variable_from_tensor", 0x18uLL, v659);
  v661 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.variable_from_tensor", 0x18uLL, v660);
  v661[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostVariableFromTensorOp;
  v661[2] = 0;
  v663 = llvm::StringMapImpl::hash("mps.xnor", 8uLL, v662);
  v664 = *llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.xnor", 8uLL, v663);
  v664[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostXnorOp;
  v664[2] = 0;
  v666 = llvm::StringMapImpl::hash("mps.xor", 7uLL, v665);
  result = llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_1EE17CA28, "mps.xor", 7uLL, v666);
  v668 = *result;
  v668[1] = mlir::mps::detail::MPSAbstractCostModel::computeCostXorOp;
  v668[2] = 0;
  return result;
}

size_t **llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer(a3 + 25, 8uLL);
  v12 = buffer;
  v13 = (buffer + 3);
  if (a3)
  {
    memcpy(buffer + 3, a2, a3);
  }

  v13[a3] = 0;
  v12[1] = 0;
  v12[2] = 0;
  *v12 = a3;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(llvm::StringMap<float (mlir::mps::detail::MPSAbstractCostModel::*)(mlir::Operation *,mlir::DeviceInfo const&),llvm::MallocAllocator>::~StringMap, a2, a3);
}

void OUTLINED_FUNCTION_1_23()
{
  v0[2] = 0;
  v0[3] = 0x1800000000;
  v0[1] = 0;
}

float OUTLINED_FUNCTION_4_14(float a1, float a2)
{
  result = v2 / (a1 * 0.75);
  if (a2 >= result)
  {
    return a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  v2 = *v0 + 8;

  return mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v2);
}

uint64_t mlir::mps::foldCastAttribute(uint64_t result, uint64_t a2, void *a3, int a4)
{
  v189 = *MEMORY[0x1E69E9840];
  v178 = result;
  v179 = a2;
  v177 = a3;
  if (!result)
  {
    return result;
  }

  Type = mlir::ElementsAttr::getType(&v178);
  v9 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v176[0] = v9;
  v176[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v176);
  if (v177 == isSplat)
  {
    return v178 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (a4)
  {
    if (mlir::ElementsAttr::getNumElements(v178, v179) >= 1025)
    {
      ElementBitWidth = mlir::mps::getElementBitWidth(isSplat);
      if (ElementBitWidth < mlir::mps::getElementBitWidth(v177) && !mlir::ElementsAttr::isSplat(&v178))
      {
        return 0;
      }
    }
  }

  v11 = mlir::ElementsAttr::getType(&v178);
  v12 = v11;
  if (v11)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  v183 = v12;
  v184 = v11;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v183);
  v15 = v14;
  v16 = *(*isSplat + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v16 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      v33 = *(*v177 + 136);
      if (v33 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        if ((mlir::Type::isF16(&v177) || mlir::Type::isBF16(&v177)) && mlir::Type::isF32(&isSplat))
        {
          v36 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
          if (mlir::Type::isF16(&v177))
          {
          }

          else
          {
          }
        }
      }

      else if (v33 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v183 = &v185;
        v184 = 0x400000000;
        isSignedInteger = mlir::Type::isSignedInteger(&v177);
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v177);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v178, &v170);
        v167 = v170;
        if (v170 == 1)
        {
          v168 = v171;
        }

        else
        {
          (*(*v171 + 16))(&v168);
        }

        v139 = *(&v171 + 1);
        v169 = *(&v171 + 1);
        LOWORD(v164) = v172;
        if (v172 == 1)
        {
          v165 = v173;
        }

        else
        {
          (*(*v173 + 16))(&v165);
          v139 = v169;
        }

        v166 = v174;
        if (v139 == v174)
        {
LABEL_392:
          if ((v164 & 1) == 0)
          {
            v140 = v165;
            v165 = 0;
            if (v140)
            {
              (*(*v140 + 8))(v140);
            }
          }

          if ((v167 & 1) == 0)
          {
            v141 = v168;
            v168 = 0;
            if (v141)
            {
              (*(*v141 + 8))(v141);
            }
          }

          mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
          v142 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
          v110 = mlir::createElementsAttr(v142, v183, v184) & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          v143 = !isSignedInteger;
          while (1)
          {
            if (HIBYTE(v167))
            {
              v145 = 0;
            }

            else
            {
              v145 = v139;
            }

            if (v167 == 1)
            {
              v146 = v168 + 32 * v145;
              v148 = *(v146 + 1);
              v147 = (v146 + 8);
              if (llvm::APFloatBase::PPCDoubleDouble(v168) == v148)
              {
                llvm::detail::DoubleAPFloat::DoubleAPFloat(&v181, v147);
              }

              else
              {
                llvm::detail::IEEEFloat::IEEEFloat(&v181, v147);
              }
            }

            else
            {
              (*(*v168 + 24))(&v180);
            }

            v162 = IntOrFloatBitWidth;
            if (IntOrFloatBitWidth > 0x40)
            {
              llvm::APInt::initSlowCase(&__p, 0, 0);
            }

            else
            {
              __p = 0;
            }

            v163 = v143;
            LOBYTE(v160) = 0;
            if (llvm::APFloat::convertToInteger(&v180, &__p, 0, &v160))
            {
              v110 = 0;
              goto LABEL_434;
            }

            v149 = v183;
            if (v184 >= HIDWORD(v184))
            {
              if (v183 <= &__p && v183 + 16 * v184 > &__p)
              {
                v154 = &__p - v183;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v183, v184 + 1);
                v149 = v183;
                p_p = (v183 + v154);
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v183, v184 + 1);
                p_p = &__p;
                v149 = v183;
              }
            }

            else
            {
              p_p = &__p;
            }

            v151 = v149 + 16 * v184;
            v152 = *(p_p + 2);
            *(v151 + 8) = v152;
            if (v152 > 0x40)
            {
              llvm::APInt::initSlowCase(v151, p_p);
            }

            else
            {
              *v151 = *p_p;
            }

            LODWORD(v184) = v184 + 1;
            v153 = mlir::ElementsAttr::isSplat(&v178);
            if (v153)
            {
              break;
            }

            if (v162 >= 0x41)
            {
              v153 = __p;
              if (__p)
              {
                operator delete[](__p);
              }
            }

            v144 = v181;
            if (llvm::APFloatBase::PPCDoubleDouble(v153) == v144)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v181);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(&v181);
            }

            v139 = v169 + 1;
            v169 = v139;
            if (v139 == v166)
            {
              goto LABEL_392;
            }
          }

          v155 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
          v156 = v155;
          if (v155)
          {
            v157 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v155 + 8);
          }

          else
          {
            v157 = 0;
          }

          v110 = mlir::DenseElementsAttr::get(v156, v157, v183, 1) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_434:
          if (v162 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          llvm::APFloat::~APFloat(&v180);
          if ((v164 & 1) == 0)
          {
            v158 = v165;
            v165 = 0;
            if (v158)
            {
              (*(*v158 + 8))(v158);
            }
          }

          if ((v167 & 1) == 0)
          {
            v159 = v168;
            v168 = 0;
            if (v159)
            {
              (*(*v159 + 8))(v159);
            }
          }

          mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
        }

        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v183);
        return v110;
      }
    }

    return 0;
  }

  isF32 = mlir::Type::isF32(&v177);
  if (isF32)
  {
    v183 = &v185;
    v184 = 0x400000000;
    v38 = llvm::APFloatBase::IEEEsingle(isF32);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v178, &v170);
    v167 = v170;
    if (v170 == 1)
    {
      v168 = v171;
    }

    else
    {
      (*(*v171 + 16))(&v168);
    }

    v41 = *(&v171 + 1);
    v169 = *(&v171 + 1);
    LOWORD(v164) = v172;
    if (v172 == 1)
    {
      v165 = v173;
    }

    else
    {
      (*(*v173 + 16))(&v165);
      v41 = v169;
    }

    v166 = v174;
    if (v41 == v174)
    {
LABEL_103:
      if ((v164 & 1) == 0)
      {
        v44 = v165;
        v165 = 0;
        if (v44)
        {
          (*(*v44 + 8))(v44);
        }
      }

      if ((v167 & 1) == 0)
      {
        v45 = v168;
        v168 = 0;
        if (v45)
        {
          (*(*v45 + 8))(v45);
        }
      }

      if ((v172 & 1) == 0)
      {
        v46 = v173;
        v173 = 0;
        if (v46)
        {
          (*(*v46 + 8))(v46);
        }
      }

      if ((v170 & 1) == 0)
      {
        v47 = v171;
        *&v171 = 0;
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }
      }

      v48 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
      ElementsAttr = mlir::createElementsAttr(v48, v183, v184);
      v50 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      while (1)
      {
        v51 = HIBYTE(v167) ? 0 : v41;
        inited = v168;
        if (v167 == 1)
        {
          v53 = v168 + 16 * v51;
          v162 = *(v53 + 2);
          if (v162 > 0x40)
          {
            inited = llvm::APInt::initSlowCase(&__p, v53);
          }

          else
          {
            __p = *v53;
          }
        }

        else
        {
          inited = (*(*v168 + 24))(&__p);
        }

        v54 = llvm::APFloatBase::PPCDoubleDouble(inited);
        if (v54 == v38)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v181, v38);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v181, v38);
        }

        v160 = isSplat;
        Signedness = mlir::IntegerType::getSignedness(&v160);
        if (v54 == v181)
        {
          if (llvm::detail::DoubleAPFloat::convertFromAPInt(&v181, &__p, Signedness == 1, 0))
          {
LABEL_183:
            v71 = 0;
            goto LABEL_289;
          }
        }

        else if (llvm::detail::IEEEFloat::convertFromAPInt(&v181, &__p, Signedness == 1, 0))
        {
          goto LABEL_183;
        }

        if (mlir::ElementsAttr::isSplat(&v178))
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v183, &v180);
        if (v54 == v181)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v181);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v181);
        }

        if (v162 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        v41 = v169 + 1;
        v169 = v41;
        if (v41 == v166)
        {
          goto LABEL_103;
        }
      }

      v72 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
      if (v72)
      {
        v73 = v72;
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v72 + 8);
        v72 = v73;
      }

      else
      {
        v74 = 0;
      }

      v71 = mlir::DenseElementsAttr::get(v72, v74, &v180, 1) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_289:
      if (v54 == v181)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v181);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v181);
      }

      v50 = v71;
      if (v162 >= 0x41)
      {
        ElementsAttr = __p;
        if (__p)
        {
          operator delete[](__p);
          v50 = v71;
        }
      }

      if ((v164 & 1) == 0)
      {
        ElementsAttr = v165;
        v165 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v71;
        }
      }

      if ((v167 & 1) == 0)
      {
        ElementsAttr = v168;
        v168 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v71;
        }
      }

      if ((v172 & 1) == 0)
      {
        ElementsAttr = v173;
        v173 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v71;
        }
      }

      if ((v170 & 1) == 0)
      {
        ElementsAttr = v171;
        *&v171 = 0;
        if (ElementsAttr)
        {
          ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
          v50 = v71;
        }
      }
    }

    v77 = v183;
    v111 = v184;
    if (v184)
    {
      v112 = llvm::APFloatBase::PPCDoubleDouble(ElementsAttr);
      v113 = &v77[4 * v111 - 3];
      v114 = -32 * v111;
      do
      {
        if (v112 == *v113)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v113);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v113);
        }

        v113 = (v115 - 32);
        v114 += 32;
      }

      while (v114);
      v77 = v183;
    }

    if (v77 == &v185)
    {
      return v50;
    }

    goto LABEL_315;
  }

  isF16 = mlir::Type::isF16(&v177);
  if (isF16)
  {
    v183 = &v185;
    v184 = 0x400000000;
    v40 = llvm::APFloatBase::IEEEhalf(isF16);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v178, &v170);
    v167 = v170;
    if (v170 == 1)
    {
      v168 = v171;
    }

    else
    {
      (*(*v171 + 16))(&v168);
    }

    v56 = *(&v171 + 1);
    v169 = *(&v171 + 1);
    LOWORD(v164) = v172;
    if (v172 == 1)
    {
      v165 = v173;
    }

    else
    {
      (*(*v173 + 16))(&v165);
      v56 = v169;
    }

    v166 = v174;
    if (v56 == v174)
    {
LABEL_176:
      if ((v164 & 1) == 0)
      {
        v67 = v165;
        v165 = 0;
        if (v67)
        {
          (*(*v67 + 8))(v67);
        }
      }

      if ((v167 & 1) == 0)
      {
        v68 = v168;
        v168 = 0;
        if (v68)
        {
          (*(*v68 + 8))(v68);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
      v69 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
      v70 = mlir::createElementsAttr(v69, v183, v184);
      v50 = v70 & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      while (1)
      {
        if (HIBYTE(v167))
        {
          v57 = 0;
        }

        else
        {
          v57 = v56;
        }

        v58 = v168;
        if (v167 == 1)
        {
          v59 = v168 + 16 * v57;
          v162 = *(v59 + 2);
          if (v162 > 0x40)
          {
            v58 = llvm::APInt::initSlowCase(&__p, v59);
          }

          else
          {
            __p = *v59;
          }
        }

        else
        {
          v58 = (*(*v168 + 24))(&__p);
        }

        v60 = llvm::APFloatBase::PPCDoubleDouble(v58);
        if (v60 == v40)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v181, v40);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v181, v40);
        }

        v160 = isSplat;
        v61 = mlir::IntegerType::getSignedness(&v160);
        if (v60 == v181)
        {
          llvm::detail::DoubleAPFloat::convertFromAPInt(&v181, &__p, v61 == 1, 1);
        }

        else
        {
          llvm::detail::IEEEFloat::convertFromAPInt(&v181, &__p, v61 == 1, 1);
        }

        v62 = mlir::ElementsAttr::isSplat(&v178);
        v63 = v62;
        if (v62)
        {
          v64 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
          if (v64)
          {
            v65 = v64;
            v66 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v64 + 8);
            v64 = v65;
          }

          else
          {
            v66 = 0;
          }

          v5 = mlir::DenseElementsAttr::get(v64, v66, &v180, 1) & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v183, &v180);
        }

        if (v60 == v181)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v181);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v181);
        }

        if (v162 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (v63)
        {
          break;
        }

        v56 = v169 + 1;
        v169 = v56;
        if (v56 == v166)
        {
          goto LABEL_176;
        }
      }

      if ((v164 & 1) == 0)
      {
        v75 = v165;
        v165 = 0;
        if (v75)
        {
          (*(*v75 + 8))(v75);
        }
      }

      if ((v167 & 1) == 0)
      {
        v76 = v168;
        v168 = 0;
        if (v76)
        {
          (*(*v76 + 8))(v76);
        }
      }

      v70 = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
      v50 = v5;
    }

    v77 = v183;
    v78 = v184;
    if (v184)
    {
      v79 = llvm::APFloatBase::PPCDoubleDouble(v70);
      v80 = &v77[4 * v78 - 3];
      v81 = -32 * v78;
      do
      {
        if (v79 == *v80)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v80);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v80);
        }

        v80 = (v82 - 32);
        v81 += 32;
      }

      while (v81);
      v77 = v183;
    }

    if (v77 == &v185)
    {
      return v50;
    }

LABEL_315:
    free(v77);
    return v50;
  }

  isBF16 = mlir::Type::isBF16(&v177);
  if (isBF16)
  {
    v183 = &v185;
    v184 = 0x400000000;
    v43 = llvm::APFloatBase::BFloat(isBF16);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v178, &v170);
    v167 = v170;
    if (v170 == 1)
    {
      v168 = v171;
    }

    else
    {
      (*(*v171 + 16))(&v168);
    }

    v83 = *(&v171 + 1);
    v169 = *(&v171 + 1);
    LOWORD(v164) = v172;
    if (v172 == 1)
    {
      v165 = v173;
    }

    else
    {
      (*(*v173 + 16))(&v165);
      v83 = v169;
    }

    v166 = v174;
    if (v83 == v174)
    {
LABEL_237:
      if ((v164 & 1) == 0)
      {
        v94 = v165;
        v165 = 0;
        if (v94)
        {
          (*(*v94 + 8))(v94);
        }
      }

      if ((v167 & 1) == 0)
      {
        v95 = v168;
        v168 = 0;
        if (v95)
        {
          (*(*v95 + 8))(v95);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
      v96 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
      v4 = mlir::createElementsAttr(v96, v183, v184) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      while (1)
      {
        if (HIBYTE(v167))
        {
          v84 = 0;
        }

        else
        {
          v84 = v83;
        }

        v85 = v168;
        if (v167 == 1)
        {
          v86 = v168 + 16 * v84;
          v162 = *(v86 + 2);
          if (v162 > 0x40)
          {
            v85 = llvm::APInt::initSlowCase(&__p, v86);
          }

          else
          {
            __p = *v86;
          }
        }

        else
        {
          v85 = (*(*v168 + 24))(&__p);
        }

        v87 = llvm::APFloatBase::PPCDoubleDouble(v85);
        if (v87 == v43)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v181, v43);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v181, v43);
        }

        v160 = isSplat;
        v88 = mlir::IntegerType::getSignedness(&v160);
        if (v87 == v181)
        {
          llvm::detail::DoubleAPFloat::convertFromAPInt(&v181, &__p, v88 == 1, 1);
        }

        else
        {
          llvm::detail::IEEEFloat::convertFromAPInt(&v181, &__p, v88 == 1, 1);
        }

        v89 = mlir::ElementsAttr::isSplat(&v178);
        v90 = v89;
        if (v89)
        {
          v91 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
          if (v91)
          {
            v92 = v91;
            v93 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
            v91 = v92;
          }

          else
          {
            v93 = 0;
          }

          v4 = mlir::DenseElementsAttr::get(v91, v93, &v180, 1) & 0xFFFFFFFFFFFFFFFBLL;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v183, &v180);
        }

        if (v87 == v181)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v181);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v181);
        }

        if (v162 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (v90)
        {
          break;
        }

        v83 = v169 + 1;
        v169 = v83;
        if (v83 == v166)
        {
          goto LABEL_237;
        }
      }

      if ((v164 & 1) == 0)
      {
        v97 = v165;
        v165 = 0;
        if (v97)
        {
          (*(*v97 + 8))(v97);
        }
      }

      if ((v167 & 1) == 0)
      {
        v98 = v168;
        v168 = 0;
        if (v98)
        {
          (*(*v98 + 8))(v98);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
    }

    llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v183);
    return v4;
  }

  if (!mlir::Type::isInteger(&v177, 1))
  {
    if (*(*v177 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      return 0;
    }

    v183 = &v185;
    v184 = 0x400000000;
    mlir::ElementsAttr::getValues<llvm::APInt>(&v178, &v170);
    LOWORD(v180) = v170;
    if (v170 == 1)
    {
      v181 = v171;
    }

    else
    {
      (*(*v171 + 16))(&v181);
    }

    v116 = *(&v171 + 1);
    v182 = *(&v171 + 1);
    v167 = v172;
    if (v172 == 1)
    {
      v168 = v173;
    }

    else
    {
      (*(*v173 + 16))(&v168);
      v116 = v182;
    }

    v169 = v174;
    if (v116 == v174)
    {
LABEL_325:
      if ((v167 & 1) == 0)
      {
        v117 = v168;
        v168 = 0;
        if (v117)
        {
          (*(*v117 + 8))(v117);
        }
      }

      if ((v180 & 1) == 0)
      {
        v118 = v181;
        v181 = 0;
        if (v118)
        {
          (*(*v118 + 8))(v118);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
      v119 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
      v6 = mlir::createElementsAttr(v119, v183, v184) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_386:
      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v183);
      return v6;
    }

    while (1)
    {
      v120 = BYTE1(v180) ? 0 : v116;
      if (v180 == 1)
      {
        v121 = &v181[16 * v120];
        LODWORD(v165) = *(v121 + 2);
        if (v165 > 0x40)
        {
          llvm::APInt::initSlowCase(&v164, v121);
        }

        else
        {
          v164 = *v121;
        }
      }

      else
      {
        (*(*v181 + 24))(&v164);
      }

      if (!mlir::Type::isSignedInteger(&isSplat))
      {
        break;
      }

      if (v165 > 0x40)
      {
        v123 = v164;
LABEL_349:
        v122 = *v123;
        goto LABEL_350;
      }

      if (v165)
      {
        v122 = (v164 << -v165) >> -v165;
      }

      else
      {
        v122 = 0;
      }

LABEL_350:
      v124 = mlir::Type::getIntOrFloatBitWidth(&v177);
      v125 = mlir::Type::isSignedInteger(&v177);
      v162 = v124;
      if (v124 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, v122, v125);
      }

      else
      {
        v126 = 0xFFFFFFFFFFFFFFFFLL >> -v124;
        if (!v124)
        {
          v126 = 0;
        }

        __p = (v126 & v122);
      }

      v127 = mlir::ElementsAttr::isSplat(&v178);
      v128 = v127;
      if (v127)
      {
        v129 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
        if (v129)
        {
          v130 = v129;
          v131 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v129 + 8);
          v129 = v130;
        }

        else
        {
          v131 = 0;
        }

        v6 = mlir::DenseElementsAttr::get(v129, v131, &__p, 1) & 0xFFFFFFFFFFFFFFFBLL;
      }

      else
      {
        v132 = v183;
        if (v184 >= HIDWORD(v184))
        {
          if (v183 <= &__p && v183 + 16 * v184 > &__p)
          {
            v136 = &__p - v183;
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v183, v184 + 1);
            v132 = v183;
            v133 = (v183 + v136);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v183, v184 + 1);
            v133 = &__p;
            v132 = v183;
          }
        }

        else
        {
          v133 = &__p;
        }

        v134 = v132 + 16 * v184;
        v135 = *(v133 + 2);
        *(v134 + 8) = v135;
        if (v135 > 0x40)
        {
          llvm::APInt::initSlowCase(v134, v133);
        }

        else
        {
          *v134 = *v133;
        }

        LODWORD(v184) = v184 + 1;
      }

      if (v162 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v165 >= 0x41 && v164)
      {
        operator delete[](v164);
      }

      if (v128)
      {
        if ((v167 & 1) == 0)
        {
          v137 = v168;
          v168 = 0;
          if (v137)
          {
            (*(*v137 + 8))(v137);
          }
        }

        if ((v180 & 1) == 0)
        {
          v138 = v181;
          v181 = 0;
          if (v138)
          {
            (*(*v138 + 8))(v138);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v170);
        goto LABEL_386;
      }

      v116 = v182 + 1;
      v182 = v116;
      if (v116 == v169)
      {
        goto LABEL_325;
      }
    }

    if (v165 >= 0x41)
    {
      v123 = v164;
    }

    else
    {
      v123 = &v164;
    }

    goto LABEL_349;
  }

  v170 = &v172;
  v171 = xmmword_1E096FAF0;
  mlir::ElementsAttr::getValues<llvm::APInt>(&v178, &v183);
  LOWORD(v180) = v183;
  if (v183 == 1)
  {
    v181 = v184;
  }

  else
  {
    (*(*v184 + 16))(&v181);
  }

  v99 = v185;
  v182 = v185;
  v167 = v186;
  if (v186 == 1)
  {
    v168 = v187;
  }

  else
  {
    (*(*v187 + 16))(&v168);
    v99 = v182;
  }

  v100 = v188;
  v169 = v188;
  while (v99 != v100)
  {
    if (BYTE1(v180))
    {
      v101 = 0;
    }

    else
    {
      v101 = v99;
    }

    if (v180 == 1)
    {
      v102 = &v181[16 * v101];
      LODWORD(v165) = *(v102 + 2);
      if (v165 <= 0x40)
      {
        v164 = *v102;
LABEL_268:
        v104 = v164 == 0;
        goto LABEL_270;
      }

      llvm::APInt::initSlowCase(&v164, v102);
    }

    else
    {
      (*(*v181 + 24))(&v164);
    }

    v103 = v165;
    if (v165 <= 0x40)
    {
      goto LABEL_268;
    }

    v104 = llvm::APInt::countLeadingZerosSlowCase(&v164) == v103;
LABEL_270:
    v105 = v104;
    v106 = v171;
    if ((v171 + 1) > *(&v171 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v170, &v172, v171 + 1, 1);
      v106 = v171;
    }

    *(v170 + v106) = v105 ^ 1;
    *&v171 = v171 + 1;
    if (v165 >= 0x41 && v164)
    {
      operator delete[](v164);
    }

    v99 = ++v182;
    v100 = v169;
  }

  if ((v167 & 1) == 0)
  {
    v107 = v168;
    v168 = 0;
    if (v107)
    {
      (*(*v107 + 8))(v107);
    }
  }

  if ((v180 & 1) == 0)
  {
    v108 = v181;
    v181 = 0;
    if (v108)
    {
      (*(*v108 + 8))(v108);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v183);
  v109 = mlir::RankedTensorType::get(ArgAttrsAttr, v15, v177, 0);
  result = mlir::createElementsAttr<BOOL>(v109, v170, v171) & 0xFFFFFFFFFFFFFFFBLL;
  if (v170 != &v172)
  {
    v110 = result;
    free(v170);
    return v110;
  }

  return result;
}

uint64_t mlir::ElementsAttr::getValues<llvm::APInt>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  ArgOperands = mlir::CallOpInterface::getArgOperands(a1);
  v6 = v5;
  mlir::ElementsAttr::value_begin<llvm::APInt>(a1, v12);
  NumElements = mlir::ElementsAttr::getNumElements(*a1, a1[1]);
  v9 = 257;
  v10 = 0;
  v11 = NumElements;
  result = mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<mlir::Attribute>>::ElementsAttrRange(a2, ArgOperands, v6, v12, &v9);
  if ((v9 & 1) == 0)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v12[0] & 1) == 0)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = *(result + 32);
    *(result + 32) = 0;
    if (v1)
    {
      v2 = result;
      (*(*v1 + 8))(v1);
      result = v2;
    }
  }

  if ((*result & 1) == 0)
  {
    v3 = *(result + 8);
    *(result + 8) = 0;
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(v3);
      return v4;
    }
  }

  return result;
}

void *mlir::createElementsAttr<BOOL>(void *a1, uint64_t a2, unint64_t a3)
{
  v27[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = ((a3 - (a3 != 0)) >> 3) + 1;
  }

  else
  {
    v6 = 0;
  }

  v25 = v27;
  v7 = xmmword_1E09700D0;
  v26 = xmmword_1E09700D0;
  if (v6)
  {
    if (v6 < 0x29)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v25, v27, v6, 1);
      v7 = xmmword_1E09700D0;
      v8 = v26;
      v9 = v6 - v26;
      if (v6 == v26)
      {
        goto LABEL_10;
      }
    }

    bzero(v25 + v8, v9);
    v7 = xmmword_1E09700D0;
LABEL_10:
    *&v26 = v6;
  }

  v22 = v24;
  v23 = v7;
  if (!a3)
  {
    v12 = 0;
    v13 = v22;
    v14 = v25;
    goto LABEL_25;
  }

  if (a3 < 0x29)
  {
    v10 = 0;
    v11 = a3;
  }

  else
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v22, v24, a3, 1);
    v10 = v23;
    v11 = a3 - v23;
    if (a3 == v23)
    {
      goto LABEL_18;
    }
  }

  bzero(v22 + v10, v11);
LABEL_18:
  v15 = 0;
  *&v23 = a3;
  do
  {
    *(v22 + v15) = *(a2 + v15);
    ++v15;
  }

  while (a3 != v15);
  v13 = v22;
  v12 = v23;
  v14 = v25;
  if (v23 == 1)
  {
    if (*v22)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    *v25 = v16;
    goto LABEL_38;
  }

LABEL_25:
  v17 = v26;
  if (v26)
  {
    v18 = v13 + 3;
    do
    {
      if (v12)
      {
        v19 = *(v18 - 3);
        if (v12 > 1)
        {
          v19 |= 2 * *(v18 - 2);
          if (v12 != 2)
          {
            v19 |= 4 * *(v18 - 1);
            if (v12 != 3)
            {
              v19 |= 8 * *v18;
              if (v12 != 4)
              {
                v19 |= 16 * v18[1];
                if (v12 != 5)
                {
                  v19 |= 32 * v18[2];
                  if (v12 != 6)
                  {
                    v19 |= v18[3] << 6;
                    if (v12 != 7)
                    {
                      v19 |= v18[4] << 7;
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v19 = 0;
      }

      *v14++ = v19;
      v12 -= 8;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

LABEL_38:
  RawElementsAttr = mlir::createRawElementsAttr(a1, v25, v26);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  return RawElementsAttr;
}