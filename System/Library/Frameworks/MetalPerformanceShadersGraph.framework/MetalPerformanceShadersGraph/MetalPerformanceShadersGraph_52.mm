void mlir::DialectExtension<BOOL mlir::DialectRegistry::addExtension<mlir::memref::MemRefDialect>(void (*)(mlir::MLIRContext *,mlir::memref::MemRefDialect *))::Extension,mlir::memref::MemRefDialect>::clone(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  v5 = v4;
  *v4 = &unk_1F5AF7ED0;
  v6 = v4 + 3;
  v4[1] = v4 + 3;
  v7 = (v4 + 1);
  v4[2] = 0x300000000;
  if (v4 != a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (v8 < 4)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 1), v6, *(a1 + 16), 16);
        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_8:
          *(v5 + 4) = v8;
          goto LABEL_9;
        }

        v6 = *v7;
      }

      memcpy(v6, *(a1 + 8), 16 * v9);
      goto LABEL_8;
    }
  }

LABEL_9:
  *v5 = &unk_1F5AFAD88;
  v5[9] = *(a1 + 72);
  *a2 = v5;
}

uint64_t mlir::mps::MLEncoderValidationPass::runOnOperation(mlir::mps::MLEncoderValidationPass *this)
{
  v2 = *(this + 5);
  if ((v2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    *(this + 5) = v2 | 4;
  }

  v5 = &v4;
  result = mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps23MLEncoderValidationPass14runOnOperationEvE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v5, 1);
  if (!result)
  {
    *(this + 5) |= 4uLL;
  }

  return result;
}

double mlir::mps::createMLEncoderValidationPass@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x158uLL);
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
  *(v3 + 1) = &mlir::mps::MLEncoderValidationBase<mlir::mps::MLEncoderValidationPass>::resolveTypeID(void)::id;
  *(v3 + 2) = "builtin.module";
  *(v3 + 3) = 14;
  *(v3 + 32) = 1;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[8] = 0u;
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
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFADF0;
  *a1 = v3;
  return result;
}

void mlir::mps::MLEncoderValidationPass::~MLEncoderValidationPass(mlir::mps::MLEncoderValidationPass *this)
{
  *this = &unk_1F5B01A70;
  mlir::detail::PassOptions::~PassOptions((this + 152));
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  if (*(this + 120) == 1)
  {
    v3 = *(this + 8);
    if (v3 != *(this + 7))
    {
      free(v3);
    }
  }
}

{
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

  operator delete(this);
}

void *mlir::mps::MLEncoderValidationBase<mlir::mps::MLEncoderValidationPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
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

  v4[0] = &unk_1F5AFAEF0;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v4);
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

double mlir::mps::MLEncoderValidationBase<mlir::mps::MLEncoderValidationPass>::clonePass@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x158uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  result = 0.0;
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
  *v4 = &unk_1F5AFADF0;
  *a2 = v4;
  return result;
}

void mlir::detail::PassOptions::~PassOptions(mlir::detail::PassOptions *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  if (*(this + 35))
  {
    v3 = *(this + 34);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 16) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 16));
  v7 = *(this + 10);
  if (v7 != this + 96)
  {
    free(v7);
  }

  v8 = *(this + 4);
  if (v8 != this + 48)
  {
    free(v8);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps23MLEncoderValidationPass14runOnOperationEvE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t a1, mlir::ForwardIterator *a2)
{
  if (a2 && *(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    mlir::mps::ConstantRuntimeAnalysis::ConstantRuntimeAnalysis(v5, a2);
    v4 = v5;
    mlir::detail::walk<mlir::ForwardIterator>(a2, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::mps::MLEncoderValidationPass::runOnOperation(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>, &v4, 1);
    llvm::deallocate_buffer(v5[0], (8 * v6));
  }

  return 1;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::mps::MLEncoderValidationPass::runOnOperation(void)::$_0::operator() const(mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = *(*(a2 + 48) + 16);
  if (v3 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
  {
    v60[0] = "not supported";
    v61 = 259;
    mlir::Operation::emitOpError(a2, v60, &v62);
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
    }

    if (v71 == 1)
    {
      if (v70 != &v71)
      {
        free(v70);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v69;
        v8 = __p;
        if (v69 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v69 = v6;
        operator delete(v8);
      }

      v9 = v66;
      if (v66)
      {
        v10 = v67;
        v11 = v66;
        if (v67 == v66)
        {
          goto LABEL_105;
        }

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
        goto LABEL_104;
      }

      goto LABEL_106;
    }

    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v15 = *(a2 + 72);
    v16 = *(a2 + 68);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v62 = v15;
  v63 = v16;
  mlir::OperandRange::getTypes(&v62, &v57);
  v17 = v58;
  v18 = v59;
  if (v58 == v59)
  {
LABEL_28:
    v19 = *(a2 + 36);
    v20 = a2 - 16;
    if (!v19)
    {
      v20 = 0;
    }

    v62 = v20;
    v63 = v19;
    mlir::OperandRange::getTypes(&v62, &v57);
    v21 = v58;
    v22 = v59;
    if (v58 == v59)
    {
LABEL_31:
      if (mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(a2))
      {
        if (a2)
        {
          InterfaceFor = mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
        }

        else
        {
          InterfaceFor = 0;
        }

        v62 = a2;
        v63 = InterfaceFor;
        if (a2 && mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v62, *a1))
        {
          v60[0] = "Operation is not supported because non constant parameters are used";
          v61 = 259;
          mlir::Operation::emitOpError(a2, v60, &v62);
          if (v62)
          {
            mlir::InFlightDiagnostic::report(&v62);
          }

          if (v71 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v63);
          }

          return 0;
        }
      }

      else
      {
        v62 = 0;
        v63 = 0;
      }

      return 1;
    }

    v40 = v57;
    while (1)
    {
      v41 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v40, v21) + 8) & 0xFFFFFFFFFFFFFFF8);
      v60[0] = v41;
      if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8))
      {
        break;
      }

      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
      v62 = v41;
      v63 = v42;
      if (!v41)
      {
        goto LABEL_80;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v62))
      {
        goto LABEL_88;
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v62);
      if (v44)
      {
        v45 = 8 * v44;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v45 -= 8;
          if (!v45)
          {
            goto LABEL_70;
          }
        }

LABEL_88:
        v60[0] = "Non shape Operand is not supported";
        v61 = 259;
        mlir::Operation::emitOpError(a2, v60, &v62);
        if (v62)
        {
          mlir::InFlightDiagnostic::report(&v62);
        }

        if (v71)
        {
          if (v70 != &v71)
          {
            free(v70);
          }

          v50 = __p;
          if (__p)
          {
            v51 = v69;
            v52 = __p;
            if (v69 != __p)
            {
              do
              {
                v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
              }

              while (v51 != v50);
              v52 = __p;
            }

            v69 = v50;
            operator delete(v52);
          }

          v9 = v66;
          if (v66)
          {
            v53 = v67;
            v11 = v66;
            if (v67 == v66)
            {
LABEL_105:
              v67 = v9;
              operator delete(v11);
              goto LABEL_106;
            }

            do
            {
              v55 = *--v53;
              v54 = v55;
              *v53 = 0;
              if (v55)
              {
                operator delete[](v54);
              }
            }

            while (v53 != v9);
LABEL_104:
            v11 = v66;
            goto LABEL_105;
          }

          goto LABEL_106;
        }

        return 0;
      }

LABEL_70:
      if (++v21 == v22)
      {
        goto LABEL_31;
      }
    }

    v62 = 0;
    v63 = 0;
LABEL_80:
    Value = v60[0];
    v47 = *(*v60[0] + 136);
    v48 = v47 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v47 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v49 = v60[0];
    }

    else
    {
      v49 = 0;
    }

    v62 = v49;
    if (v48)
    {
      Value = mlir::AffineMapAttr::getValue(&v62);
      v60[0] = Value;
    }

    if (*(*Value + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isIntOrIndexOrFloat(v60))
    {
      goto LABEL_88;
    }

    goto LABEL_70;
  }

  v24 = v57;
  while (1)
  {
    v25 = (*(*(v24 + 4 * v17 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    v60[0] = v25;
    if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8))
    {
      break;
    }

    v62 = 0;
    v63 = 0;
LABEL_45:
    v30 = v60[0];
    v31 = *(*v60[0] + 136);
    v32 = v31 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v31 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v33 = v60[0];
    }

    else
    {
      v33 = 0;
    }

    v62 = v33;
    if (v32)
    {
      v30 = mlir::AffineMapAttr::getValue(&v62);
      v60[0] = v30;
    }

    if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isIntOrIndexOrFloat(v60))
    {
      goto LABEL_53;
    }

LABEL_35:
    if (++v17 == v18)
    {
      goto LABEL_28;
    }
  }

  v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  v62 = v25;
  v63 = v26;
  if (!v25)
  {
    goto LABEL_45;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v62))
  {
    goto LABEL_53;
  }

  v27 = mlir::CallableOpInterface::getArgAttrsAttr(&v62);
  if (!v28)
  {
    goto LABEL_35;
  }

  v29 = 8 * v28;
  while (*v27 != 0x8000000000000000)
  {
    ++v27;
    v29 -= 8;
    if (!v29)
    {
      goto LABEL_35;
    }
  }

LABEL_53:
  v60[0] = "Unsupported Operand type";
  v61 = 259;
  mlir::Operation::emitOpError(a2, v60, &v62);
  if (v62)
  {
    mlir::InFlightDiagnostic::report(&v62);
  }

  if (v71)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v69;
      v36 = __p;
      if (v69 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v69 = v34;
      operator delete(v36);
    }

    v9 = v66;
    if (v66)
    {
      v37 = v67;
      v11 = v66;
      if (v67 == v66)
      {
        goto LABEL_105;
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

      while (v37 != v9);
      goto LABEL_104;
    }

LABEL_106:
    if (v64 != &v65)
    {
      free(v64);
    }
  }

  return 0;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::TensorType::operator mlir::ShapedType();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::MPSRuntimeDynamicEncodeOpInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::MPSRuntimeDynamicEncodeOpInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::MPSRuntimeDynamicEncodeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MPSRuntimeDynamicEncodeOpInterface]";
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

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::mps::MPSDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::mps::MPSDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFAE60;
  return result;
}

mlir::mps::MPSDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps::MPSDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps::MPSDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::mps::MPSDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::mps::MPSDialect::MPSDialect(v4, v3);
  *a2 = result;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::mpsx::MPSXDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::mpsx::MPSXDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFAEA8;
  return result;
}

mlir::mpsx::MPSXDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mpsx::MPSXDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mpsx::MPSXDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::mpsx::MPSXDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::mpsx::MPSXDialect::MPSXDialect(v4, v3);
  *a2 = result;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFAEF0;
  return result;
}

int32x2_t *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::scf::SCFDialect * mlir::MLIRContext::getOrLoadDialect<mlir::scf::SCFDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, int32x2_t **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::scf::SCFDialect::SCFDialect(v4, v3);
  *a2 = result;
  return result;
}

BOOL mlir::mps::ConstantRuntimeAnalysis::isConstant(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_7:
    v5 = *(a1 + 16);
    return v5 != v2;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = (v2 - 1) & (-348639895 * ((v4 >> 47) ^ v4));
  v6 = *(*a1 + 8 * v5);
  if (v6 != a2)
  {
    v7 = 1;
    while (v6 != -4096)
    {
      v8 = v5 + v7++;
      v5 = v8 & (v2 - 1);
      v6 = *(*a1 + 8 * v5);
      if (v6 == a2)
      {
        return v5 != v2;
      }
    }

    goto LABEL_7;
  }

  return v5 != v2;
}

int32x2_t *mlir::mps::ConstantRuntimeAnalysis::erase(int32x2_t *result, unint64_t a2)
{
  v2 = result[2].i32[0];
  if (v2)
  {
    v3 = *result;
    v4 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
    LODWORD(v4) = -348639895 * ((v5 >> 47) ^ v5);
    v6 = v2 - 1;
    v7 = (v2 - 1) & v4;
    v8 = *(*result + 8 * v7);
    if (v8 == a2)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      result[1] = vadd_s32(result[1], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v8 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::mps::anonymous namespace::traverse(mlir::Operation *,llvm::DenseSet<mlir::Value,llvm::DenseMapInfo<mlir::Value,void>> &)::$_0>(uint64_t result, uint64_t a2)
{
  if (**result != a2)
  {
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
        mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::ExternalFoldInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ExternalFoldInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::ExternalFoldInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ExternalFoldInterface]";
  v6 = 77;
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

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v8 = a1;

  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>(v5, va, va1);
}

char *mlir::mps::createCallConversionPass@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x168uLL);
  *(result + 2) = "builtin.module";
  *(result + 3) = 14;
  result[32] = 1;
  result[40] = 0;
  result[120] = 0;
  *(result + 8) = 0u;
  *(result + 9) = 0u;
  *(result + 10) = 0u;
  *(result + 22) = 0;
  *(result + 23) = result + 200;
  *(result + 24) = 0x400000000;
  *(result + 29) = result + 248;
  *(result + 30) = 0x400000000;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 37) = 0x1000000000;
  *(result + 42) = 0;
  *(result + 43) = 0;
  *(result + 19) = 0u;
  *(result + 20) = 0u;
  *result = &unk_1F5AFAF38;
  *(result + 44) = 0;
  v5 = *a1;
  v6 = a1[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v7 = *(result + 44);
    *(result + 43) = v5;
    *(result + 44) = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      result = v8;
    }
  }

  else
  {
    *(result + 43) = v5;
    *(result + 44) = 0;
  }

  *a2 = result;
  return result;
}

void mlir::mps::anonymous namespace::CallConversionPass::~CallConversionPass(mlir::mps::_anonymous_namespace_::CallConversionPass *this)
{
  *this = &unk_1F5AFAF38;
  v2 = *(this + 44);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = &unk_1F5B01A70;
  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  if (*(this + 73))
  {
    v4 = *(this + 72);
    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = *(*(this + 35) + v5);
        if (v6 != -8 && v6 != 0)
        {
          llvm::deallocate_buffer(v6, (*v6 + 17));
        }

        v5 += 8;
      }

      while (8 * v4 != v5);
    }
  }

  free(*(this + 35));
  v8 = *(this + 29);
  if (v8 != this + 248)
  {
    free(v8);
  }

  v9 = *(this + 23);
  if (v9 != this + 200)
  {
    free(v9);
  }

  v10 = *(this + 16);
  if (v10)
  {
    *(this + 17) = v10;
    operator delete(v10);
  }

  if (*(this + 120) == 1)
  {
    v11 = *(this + 8);
    if (v11 != *(this + 7))
    {
      free(v11);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSCallConversionBase<mlir::mps::anonymous namespace::CallConversionPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5AFAFA8;
  v4 = v3;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v3);
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

void mlir::mps::anonymous namespace::CallConversionPass::runOnOperation(mlir::mps::_anonymous_namespace_::CallConversionPass *this, uint64_t a2)
{
  v88[4] = *MEMORY[0x1E69E9840];
  v3 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v86 = v88;
  v87 = 0x400000000;
  v4 = v3[10];
  v5 = &v3[4 * ((v3[11] >> 23) & 1)] + ((v3[11] >> 21) & 0x7F8);
  v83 = v85;
  v84 = 0x400000000;
  v6 = *(v5 + 32 * v4 + 72);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  v67 = this;
  v68[0] = &v83;
  v68[1] = &v86;
  v8 = *(v7 + 40);
  v9 = v7 + 32;
  if (v8 != v7 + 32)
  {
    do
    {
      v10 = *(v8 + 8);
      v11 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v8, a2);
      v65[0] = &v67;
      mlir::detail::walk<mlir::ForwardIterator>(v11, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZNS1_3mps12_GLOBAL__N_118CallConversionPass14runOnOperationEvE3__0NSB_6CallOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, v65, 1);
      v8 = v10;
    }

    while (v10 != v9);
  }

  v62[0] = mlir::Attribute::getContext((v3 + 6));
  v62[1] = 0;
  v63 = 0;
  v64 = 0;
  v61 = &unk_1F5AFAFF0;
  if (!v87)
  {
    if (!v84)
    {
      goto LABEL_78;
    }

    v21 = v83;
    v22 = 8 * v84;
    while (1)
    {
      v60 = *v21;
      SymbolName = mlir::mps::CallOp::getSymbolName(&v60);
      v25 = v24;
      Context = mlir::Attribute::getContext((v3 + 6));
      v69 = 261;
      v67 = SymbolName;
      v68[0] = v25;
      v27 = mlir::StringAttr::get(Context, &v67);
      v28 = mlir::SymbolTable::lookupSymbolIn(v3, v27);
      if (!v28)
      {
        break;
      }

      v30 = *(*(v28 + 6) + 16);
      v31 = v30 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id;
      if (v30 == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        v32 = v28;
      }

      else
      {
        v32 = 0;
      }

      v59 = v32;
      if (!v31)
      {
        goto LABEL_40;
      }

      v33 = *(v60 + 16);
      v34 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v60, v29);
      v63 = v33;
      v64 = v34;
      v35 = v60;
      ODSOperandIndexAndLength = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(&v60, 0);
      if ((*(v60 + 46) & 0x80) != 0)
      {
        v37 = *(v60 + 72);
      }

      else
      {
        v37 = 0;
      }

      v67 = (v37 + 32 * ODSOperandIndexAndLength);
      v68[0] = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength;
      v38 = mlir::OpBuilder::create<mlir::func::CallOp,mlir::func::FuncOp &,mlir::OperandRange>(v62, *(v35 + 24), &v59, &v67);
      v61[1](&v61, v35, v38);
      ++v21;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_78;
      }
    }

    v59 = 0;
LABEL_40:
    v57 = "could not find a function for ";
    v58 = 259;
    mlir::Operation::emitOpError(v3, &v57, &v67);
    v41 = mlir::mps::CallOp::getSymbolName(&v60);
    if (!v41)
    {
      __dst = 0;
      v55 = 0;
      v56 = 0;
      if (!v67)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    v42 = v12;
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v43 = v41;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v45 = 25;
      }

      else
      {
        v45 = (v12 | 7) + 1;
      }

      p_dst = operator new(v45);
      v55 = v42;
      v56 = v45 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v56) = v12;
      p_dst = &__dst;
      if (!v12)
      {
LABEL_52:
        *(p_dst + v42) = 0;
        if (!v67)
        {
LABEL_54:
          if (SHIBYTE(v56) < 0)
          {
            operator delete(__dst);
          }

          if (v67)
          {
            mlir::InFlightDiagnostic::report(&v67);
          }

          if ((v75 & 1) == 0)
          {
            goto LABEL_77;
          }

          if (v74 != &v75)
          {
            free(v74);
          }

          v46 = v72;
          if (v72)
          {
            v47 = v73;
            v48 = v72;
            if (v73 != v72)
            {
              do
              {
                v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
              }

              while (v47 != v46);
              v48 = v72;
            }

            v73 = v46;
            operator delete(v48);
          }

          v49 = v70;
          if (v70)
          {
            v50 = v71;
            v51 = v70;
            if (v71 != v70)
            {
              do
              {
                v53 = *--v50;
                v52 = v53;
                *v50 = 0;
                if (v53)
                {
                  operator delete[](v52);
                }
              }

              while (v50 != v49);
              v51 = v70;
            }

            v71 = v49;
            operator delete(v51);
          }

          v39 = v68[2];
          v40 = &v67;
          goto LABEL_75;
        }

LABEL_53:
        v66 = 260;
        v65[0] = &__dst;
        mlir::Diagnostic::operator<<(v68, v65);
        goto LABEL_54;
      }
    }

    memmove(p_dst, v43, v42);
    goto LABEL_52;
  }

  v67 = "Inlining is not currently supported";
  v69 = 259;
  mlir::Operation::emitOpError(v3, &v67, v76);
  if (v76[0])
  {
    mlir::InFlightDiagnostic::report(v76);
  }

  if (v82 != 1)
  {
    goto LABEL_77;
  }

  if (v81 != &v82)
  {
    free(v81);
  }

  v13 = __p;
  if (__p)
  {
    v14 = v80;
    v15 = __p;
    if (v80 != __p)
    {
      do
      {
        v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
      }

      while (v14 != v13);
      v15 = __p;
    }

    v80 = v13;
    operator delete(v15);
  }

  v16 = v77;
  if (v77)
  {
    v17 = v78;
    v18 = v77;
    if (v78 != v77)
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
      v18 = v77;
    }

    v78 = v16;
    operator delete(v18);
  }

  v39 = v76[3];
  v40 = v76;
LABEL_75:
  if (v39 != v40 + 5)
  {
    free(v39);
  }

LABEL_77:
  *(this + 5) |= 4uLL;
LABEL_78:
  MPSGraphDelegateCompiler.precompilationDescriptor.modify(&v61, v12);
  if (v83 != v85)
  {
    free(v83);
  }

  if (v86 != v88)
  {
    free(v86);
  }
}

_OWORD *mlir::mps::MPSCallConversionBase<mlir::mps::anonymous namespace::CallConversionPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x168uLL);
  v5 = *(a1 + 8);
  result[1] = *(a1 + 16);
  *(result + 4) = *(a1 + 32);
  *(result + 1) = v5;
  *(result + 40) = 0;
  *(result + 120) = 0;
  result[8] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  *(result + 22) = 0;
  *(result + 23) = result + 200;
  *(result + 24) = 0x400000000;
  *(result + 29) = result + 248;
  *(result + 30) = 0x400000000;
  *(result + 35) = 0;
  *(result + 36) = 0;
  *(result + 74) = 0;
  *(result + 75) = 16;
  result[19] = 0u;
  result[20] = 0u;
  *result = &unk_1F5AFAF38;
  v7 = *(a1 + 344);
  v6 = *(a1 + 352);
  *(result + 42) = 0;
  *(result + 43) = v7;
  *(result + 44) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = result;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::func::FuncDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::func::FuncDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFAFA8;
  return result;
}

mlir::func::FuncDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::func::FuncDialect * mlir::MLIRContext::getOrLoadDialect<mlir::func::FuncDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::func::FuncDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::func::FuncDialect::FuncDialect(v4, v3);
  *a2 = result;
  return result;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorERZNS1_3mps12_GLOBAL__N_118CallConversionPass14runOnOperationEvE3__0NSB_6CallOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(void **a1, uint64_t a2)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::CallOp,void>::id)
  {
    return;
  }

  v2 = *a1;
  v26 = a2;
  v3 = *(*v2 + 344);
  if (!v3)
  {
    goto LABEL_26;
  }

  SymbolName = mlir::mps::CallOp::getSymbolName(&v26);
  if (!SymbolName)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    __p = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_16;
  }

  v7 = v5;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v8 = SymbolName;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v5 | 7) + 1;
    }

    p_p = operator new(v13);
    v24 = v7;
    v25 = v13 | 0x8000000000000000;
    __p = p_p;
  }

  else
  {
    HIBYTE(v25) = v5;
    p_p = &__p;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  memmove(p_p, v8, v7);
LABEL_15:
  *(p_p + v7) = 0;
  v12 = HIBYTE(v25);
  v11 = __p;
  v10 = v24;
LABEL_16:
  if ((v12 & 0x80u) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = v11;
  }

  if ((v12 & 0x80u) == 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  v16 = llvm::StringMapImpl::hash(v14, v15, v6);
  Key = llvm::StringMapImpl::FindKey(v3, v14, v15, v16);
  if (Key != -1)
  {
    v18 = Key;
    v19 = *(v3 + 8);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_32:
    operator delete(__p);
    if (v18 == v19)
    {
      goto LABEL_25;
    }

LABEL_33:
    if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v26) != 1)
    {
      return;
    }

    v20 = v2[2];
    a2 = v26;
    goto LABEL_27;
  }

  v19 = *(v3 + 8);
  v18 = v19;
  if (SHIBYTE(v25) < 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  if (v18 != v19)
  {
    goto LABEL_33;
  }

LABEL_25:
  a2 = v26;
LABEL_26:
  v20 = v2[1];
LABEL_27:
  v21 = *(v20 + 8);
  if (v21 >= *(v20 + 12))
  {
    v22 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v20 + 16, v21 + 1, 8);
    a2 = v22;
    v21 = *(v20 + 8);
  }

  *(*v20 + 8 * v21) = a2;
  ++*(v20 + 8);
}

uint64_t mlir::OpBuilder::create<mlir::func::CallOp,mlir::func::FuncOp &,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, unsigned int **a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::CallOp,mlir::func::FuncOp &,mlir::OperandRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::func::CallOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

unint64_t mlir::mps::getSingleSqueezeIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36))
  {
    v4 = a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v27[0] = v5;
  v27[1] = v6;
  v7 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v26[0] = v7;
  v26[1] = v8;
  v29[0] = v7;
  v29[1] = v8;
  v28[0] = v5;
  v28[1] = v6;
  if (!mlir::CallOpInterface::getArgOperands(v28) || !mlir::CallOpInterface::getArgOperands(v29) || (mlir::CallableOpInterface::getArgAttrsAttr(v29), v10 = v9, mlir::CallableOpInterface::getArgAttrsAttr(v28), v10 <= v11) && (mlir::CallableOpInterface::getArgAttrsAttr(v29), v12 >= 2))
  {
    v13 = "the pattern did not define a valid squeeze operation";
LABEL_15:
    v29[0] = v13;
    v30 = 259;
    v28[0] = v29;
    v14 = *(a2 + 16);
    if (v14 && mlir::RewriterBase::Listener::classof(v14))
    {
      (*(*v14 + 88))(v14, *(a1 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(mlir::mps::ReshapeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v28);
    }

    v15 = 0;
    v16 = 0;
    return v16 | v15;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v26);
  v19 = mlir::CallableOpInterface::getArgAttrsAttr(v27);
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v15 = -1;
    while (1)
    {
      v23 = *(ArgAttrsAttr + 8 * v21);
      v24 = *(v19 + 8 * v22);
      if (v23 != v24)
      {
        if (v23 != 1)
        {
          break;
        }

        ++v21;
        v25 = *(ArgAttrsAttr + 8 * v21) == v24 && v15 == -1;
        v15 = v22;
        if (!v25)
        {
          break;
        }
      }

      ++v21;
      if (v20 == ++v22)
      {
        goto LABEL_31;
      }
    }

    v13 = "cannot detect a squeeze over a single dimension";
    goto LABEL_15;
  }

  v15 = -1;
LABEL_31:
  v16 = v15 & 0xFFFFFFFFFFFFFF00;
  v15 = v15;
  return v16 | v15;
}

unint64_t mlir::mps::getSingleExpandedIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36))
  {
    v4 = a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v27[0] = v5;
  v27[1] = v6;
  v7 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v26[0] = v7;
  v26[1] = v8;
  v29[0] = v5;
  v29[1] = v6;
  v28[0] = v7;
  v28[1] = v8;
  if (!mlir::CallOpInterface::getArgOperands(v28) || !mlir::CallOpInterface::getArgOperands(v29) || (mlir::CallableOpInterface::getArgAttrsAttr(v29), v10 = v9, mlir::CallableOpInterface::getArgAttrsAttr(v28), v10 <= v11) && (mlir::CallableOpInterface::getArgAttrsAttr(v29), v12 >= 2))
  {
    v13 = "the pattern did not define a valid expand operation";
LABEL_15:
    v29[0] = v13;
    v30 = 259;
    v28[0] = v29;
    v14 = *(a2 + 16);
    if (v14 && mlir::RewriterBase::Listener::classof(v14))
    {
      (*(*v14 + 88))(v14, *(a1 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::ReshapeOp &>(mlir::mps::ReshapeOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v28);
    }

    v15 = 0;
    v16 = 0;
    return v16 | v15;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v27);
  v19 = mlir::CallableOpInterface::getArgAttrsAttr(v26);
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v15 = -1;
    while (1)
    {
      v23 = *(ArgAttrsAttr + 8 * v21);
      v24 = *(v19 + 8 * v22);
      if (v23 != v24)
      {
        if (v23 != 1)
        {
          break;
        }

        ++v21;
        v25 = *(ArgAttrsAttr + 8 * v21) == v24 && v15 == -1;
        v15 = v22;
        if (!v25)
        {
          break;
        }
      }

      ++v21;
      if (v20 == ++v22)
      {
        goto LABEL_31;
      }
    }

    v13 = "cannot detect a squeeze over a single dimension";
    goto LABEL_15;
  }

  v15 = -1;
LABEL_31:
  v16 = v15 & 0xFFFFFFFFFFFFFF00;
  v15 = v15;
  return v16 | v15;
}

uint64_t mlir::mps::createCommonRuntimeCanonicalizationPass@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x568uLL);
  bzero(v3, 0x568uLL);
  *v3 = &unk_1F5AFB050;
  *a1 = v3;
  return result;
}

uint64_t mlir::mps::createCommonRuntimeCanonicalizationPass@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x568uLL);
  *v5 = &unk_1F5AFB050;
  *(v5 + 472) = *a1;
  v6 = *(v5 + 528);
  if (v6 && ((*(*v6 + 48))(v6, a1), v4[680] = a1[1], (v7 = *(v4 + 92)) != 0) && ((*(*v7 + 48))(v7, a1 + 1), v4[888] = a1[2], (v8 = *(v4 + 118)) != 0) && ((*(*v8 + 48))(v8, a1 + 2), v4[1096] = a1[3], (v9 = *(v4 + 144)) != 0) && ((*(*v9 + 48))(v9, a1 + 3), v11 = a1[4], v10 = a1 + 4, v4[1304] = v11, (v12 = *(v4 + 170)) != 0))
  {
    result = (*(*v12 + 48))(v12, v10);
    *a2 = v4;
  }

  else
  {
    v14 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::MPSCommonRuntimeCanonicalizationBase<mlir::mps::anonymous namespace::CommonRuntimeCanonicalizationPass>::MPSCommonRuntimeCanonicalizationBase(uint64_t a1)
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
  *a1 = &unk_1F5AFB0C0;
  *&v5 = "Enables the canonicalizations which create operations in MPSSPI dialect.";
  *(&v5 + 1) = 72;
  v3 = 1;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 344, (a1 + 152), "enable-canonicalization-to-mpsspi-dialect", 41, &v5, &v4);
  *(a1 + 344) = &unk_1F5AFB130;
  *(a1 + 536) = &unk_1F5AFB1B0;
  *&v5 = "If a MatMul operation does not have a transpose on the RHS operand, and that operand is a constant, transpose the constant.";
  *(&v5 + 1) = 123;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 552, (a1 + 152), "enable-matmul-transpose-constant-rhs", 36, &v5, &v4);
  *(a1 + 552) = &unk_1F5AFB130;
  *(a1 + 744) = &unk_1F5AFB1B0;
  *&v5 = "If a Conv2D/Conv2DDataGradient/DepthwiseConv2D operation has a NCHW data layout and constant weights, convert the weights to HWIO layout.";
  *(&v5 + 1) = 137;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 760, (a1 + 152), "enable-nchw-conv2d-const-weights-to-hwio", 40, &v5, &v4);
  *(a1 + 760) = &unk_1F5AFB130;
  *(a1 + 952) = &unk_1F5AFB1B0;
  *&v5 = "If enabled, constants will always be fused irrespectively of whether they might increase memory usage.";
  *(&v5 + 1) = 102;
  v3 = 1;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 968, (a1 + 152), "always-fuse-constants", 21, &v5, &v4);
  *(a1 + 968) = &unk_1F5AFB130;
  *(a1 + 1160) = &unk_1F5AFB1B0;
  *&v5 = "If enabled, sdpa with gqa will be canonicalized as a single-dispatch SDPA op.";
  *(&v5 + 1) = 77;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 1176, (a1 + 152), "enable-sdpa-with-gqa", 20, &v5, &v4);
  *(a1 + 1176) = &unk_1F5AFB130;
  *(a1 + 1368) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::mps::anonymous namespace::CommonRuntimeCanonicalizationPass::~CommonRuntimeCanonicalizationPass(mlir::mps::_anonymous_namespace_::CommonRuntimeCanonicalizationPass *this)
{
  *this = &unk_1F5AFB0C0;
  *(this + 147) = &unk_1F5B3E720;
  v2 = this + 1336;
  v3 = *(this + 170);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 147) = &unk_1F5B3E1D8;
  v4 = *(this + 159);
  if (v4 != *(this + 158))
  {
    free(v4);
  }

  v5 = *(this + 155);
  if (v5 != this + 1256)
  {
    free(v5);
  }

  *(this + 121) = &unk_1F5B3E720;
  v6 = *(this + 144);
  if (v6 == (this + 1128))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 121) = &unk_1F5B3E1D8;
  v7 = *(this + 133);
  if (v7 != *(this + 132))
  {
    free(v7);
  }

  v8 = *(this + 129);
  if (v8 != this + 1048)
  {
    free(v8);
  }

  *(this + 95) = &unk_1F5B3E720;
  v9 = *(this + 118);
  if (v9 == (this + 920))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 95) = &unk_1F5B3E1D8;
  v10 = *(this + 107);
  if (v10 != *(this + 106))
  {
    free(v10);
  }

  v11 = *(this + 103);
  if (v11 != this + 840)
  {
    free(v11);
  }

  *(this + 69) = &unk_1F5B3E720;
  v12 = *(this + 92);
  if (v12 == (this + 712))
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *(this + 69) = &unk_1F5B3E1D8;
  v13 = *(this + 81);
  if (v13 != *(this + 80))
  {
    free(v13);
  }

  v14 = *(this + 77);
  if (v14 != this + 632)
  {
    free(v14);
  }

  *(this + 43) = &unk_1F5B3E720;
  v15 = *(this + 66);
  if (v15 == (this + 504))
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))(v15);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v16 = *(this + 55);
  if (v16 != *(this + 54))
  {
    free(v16);
  }

  v17 = *(this + 51);
  if (v17 != this + 424)
  {
    free(v17);
  }

  *this = &unk_1F5B01A70;
  v18 = *(this + 39);
  if (v18)
  {
    *(this + 40) = v18;
    operator delete(v18);
  }

  if (*(this + 73))
  {
    v19 = *(this + 72);
    if (v19)
    {
      v20 = 0;
      do
      {
        v21 = *(*(this + 35) + v20);
        if (v21 != -8 && v21 != 0)
        {
          llvm::deallocate_buffer(v21, (*v21 + 17));
        }

        v20 += 8;
      }

      while (8 * v19 != v20);
    }
  }

  free(*(this + 35));
  v23 = *(this + 29);
  if (v23 != this + 248)
  {
    free(v23);
  }

  v24 = *(this + 23);
  if (v24 != this + 200)
  {
    free(v24);
  }

  v25 = *(this + 16);
  if (v25)
  {
    *(this + 17) = v25;
    operator delete(v25);
  }

  if (*(this + 120) == 1)
  {
    v26 = *(this + 8);
    if (v26 != *(this + 7))
    {
      free(v26);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSCommonRuntimeCanonicalizationBase<mlir::mps::anonymous namespace::CommonRuntimeCanonicalizationPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
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
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB360;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v4);
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

void mlir::mps::anonymous namespace::CommonRuntimeCanonicalizationPass::runOnOperation(mlir::mps::_anonymous_namespace_::CommonRuntimeCanonicalizationPass *this)
{
  v196 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext((v2 + 6));
  *__p = 0u;
  *v183 = 0u;
  v184 = &v186;
  v185 = 0x600000000;
  v187 = 0;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v192 = 0x2800000000;
  v193 = 0;
  v194 = 0;
  v195 = 0x2800000000;
  v175 = Context;
  _ZN4mlir17RewritePatternSet3addIJNS_3mps12_GLOBAL__N_125CanonicalizePadToConv2DOpINS2_8Conv2DOpEEENS4_INS2_17DepthwiseConv2DOpEEENS3_25CanonicalizePadToConv3DOpENS3_23CanonicalizePadToPoolOpINS2_9PoolAvgOpEEENSA_INS2_12PoolL2NormOpEEENS3_38CanonicalizeConv2DWithConstantOperandsENS3_28CanonicalizeMatMulTransposesENS3_21ReorderDequantPermuteENS3_23ReorderDequantTransposeENS3_13DivByConstantENS3_12AddSubConstsENS3_24CanonicalizeInstanceNormENS3_20CanonicalizeMultiplyENS3_15CanonicalizeAddENS3_24CanonicalizeReshapeChainINS2_9ReshapeOpEEENSO_INS2_9SqueezeOpEEENSO_INS2_12ExpandDimsOpEEENS3_17CanonicalizePowerENS3_17CanonicalizeSwishENS3_21CanonicalizeBatchNormENS3_30CanonicalizeBatchNormInferenceENS3_21CanonicalizeTransposeENS3_19CanonicalizePermuteENS3_20CanonicalizeIdentityENS3_18CanonicalizeConcatENS3_24CanonicalizeOpsWith0DimsENS3_9CastToFFTENS3_25CanonicalizeNoOpReductionINS2_14ReductionMaxOpEEENS15_INS2_14ReductionMinOpEEENS15_INS2_15ReductionProdOpEEENS15_INS2_14ReductionSumOpEEENS3_37CanonicalizeMatMulExpandSqueezeBinaryINS2_5AddOpEEENS3_36CanonicalizeMatMulExpandSqueezeUnaryINS2_6ReluOpEEENS3_19CanonicalizeSoftMaxENS3_27CanonicalizeTileAsBroadcastENS3_30CanonicalizeTensorFromElementsEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_(&Context, &v175);
  v3 = Context;
  v4 = operator new(0x68uLL);
  v5 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(&v175, 1);
  mlir::Pattern::Pattern((v4 + 8), "mps.add", 7, v175, v3, 0, 0);
  *v4 = &unk_1F5AFBFF0;
  v4[96] = v5;
  if (!*(v4 + 9))
  {
    v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::FuseBinaryWithConstants<mlir::mps::AddOp>]";
    *&v176 = 125;
    v6 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
    if (v176 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v176;
    }

    v8 = &v175[v7];
    v9 = v176 - v7;
    if ((v176 - v7) >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = v176 - v7;
    }

    v11 = &v8[v10];
    v12 = v9 - v10;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    *(v4 + 8) = v11;
    *(v4 + 9) = v12;
  }

  v13 = *(v4 + 22);
  if (v13 > *(v4 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 80), (v4 + 96), v13, 16);
    LODWORD(v13) = *(v4 + 22);
  }

  *(v4 + 22) = v13;
  v14 = __p[1];
  if (__p[1] >= v183[0])
  {
    v16 = __p[0];
    v17 = __p[1] - __p[0];
    v18 = (__p[1] - __p[0]) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      goto LABEL_246;
    }

    v20 = v183[0] - __p[0];
    if ((v183[0] - __p[0]) >> 2 > v19)
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
        goto LABEL_247;
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = &v22[8 * v18];
    *v23 = v4;
    v15 = v23 + 8;
    memcpy(v22, v16, v17);
    __p[0] = v22;
    __p[1] = v15;
    v183[0] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *__p[1] = v4;
    v15 = v14 + 8;
  }

  __p[1] = v15;
  v24 = operator new(0x68uLL);
  v25 = *(this + 1096);
  mlir::PatternBenefit::PatternBenefit(&v175, 1);
  mlir::Pattern::Pattern((v24 + 8), "mps.multiply", 12, v175, v3, 0, 0);
  *v24 = &unk_1F5AFC048;
  v24[96] = v25;
  if (!*(v24 + 9))
  {
    v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::FuseBinaryWithConstants<mlir::mps::MultiplyOp>]";
    *&v176 = 130;
    v26 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
    if (v176 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v176;
    }

    v28 = &v175[v27];
    v29 = v176 - v27;
    if ((v176 - v27) >= 0x12)
    {
      v30 = 18;
    }

    else
    {
      v30 = v176 - v27;
    }

    v31 = &v28[v30];
    v32 = v29 - v30;
    if (v32 >= v32 - 1)
    {
      --v32;
    }

    *(v24 + 8) = v31;
    *(v24 + 9) = v32;
  }

  v33 = *(v24 + 22);
  if (v33 > *(v24 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 80), (v24 + 96), v33, 16);
    LODWORD(v33) = *(v24 + 22);
  }

  *(v24 + 22) = v33;
  v34 = __p[1];
  if (__p[1] >= v183[0])
  {
    v36 = __p[0];
    v37 = __p[1] - __p[0];
    v38 = (__p[1] - __p[0]) >> 3;
    v39 = v38 + 1;
    if ((v38 + 1) >> 61)
    {
      goto LABEL_246;
    }

    v40 = v183[0] - __p[0];
    if ((v183[0] - __p[0]) >> 2 > v39)
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
        goto LABEL_247;
      }

      v42 = operator new(8 * v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = &v42[8 * v38];
    *v43 = v24;
    v35 = v43 + 8;
    memcpy(v42, v36, v37);
    __p[0] = v42;
    __p[1] = v35;
    v183[0] = &v42[8 * v41];
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *__p[1] = v24;
    v35 = v34 + 8;
  }

  __p[1] = v35;
  if (*(this + 472) == 1)
  {
    v44 = Context;
    v45 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(&v175, 1);
    mlir::Pattern::Pattern((v45 + 1), "mps.matmul", 10, v175, v44, 0, 0);
    *v45 = &unk_1F5AFC0A0;
    if (!v45[9])
    {
      v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeSDPA]";
      *&v176 = 100;
      v46 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
      if (v176 >= v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = v176;
      }

      v48 = &v175[v47];
      v49 = v176 - v47;
      if ((v176 - v47) >= 0x12)
      {
        v50 = 18;
      }

      else
      {
        v50 = v176 - v47;
      }

      v51 = &v48[v50];
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
    v54 = __p[1];
    if (__p[1] >= v183[0])
    {
      v56 = __p[0];
      v57 = __p[1] - __p[0];
      v58 = (__p[1] - __p[0]) >> 3;
      v59 = v58 + 1;
      if ((v58 + 1) >> 61)
      {
        goto LABEL_246;
      }

      v60 = v183[0] - __p[0];
      if ((v183[0] - __p[0]) >> 2 > v59)
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
          goto LABEL_247;
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
      __p[0] = v62;
      __p[1] = v55;
      v183[0] = &v62[8 * v61];
      if (v56)
      {
        operator delete(v56);
      }
    }

    else
    {
      *__p[1] = v45;
      v55 = v54 + 8;
    }

    __p[1] = v55;
  }

  if (*(this + 1304) == 1)
  {
    v64 = Context;
    v65 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(&v175, 1);
    mlir::Pattern::Pattern((v65 + 1), "mps_spi.sdpa", 12, v175, v64, 0, 0);
    *v65 = &unk_1F5AFC0F8;
    if (!v65[9])
    {
      v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeSDPAWithGQA]";
      *&v176 = 107;
      v66 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
      if (v176 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v176;
      }

      v68 = &v175[v67];
      v69 = v176 - v67;
      if ((v176 - v67) >= 0x12)
      {
        v70 = 18;
      }

      else
      {
        v70 = v176 - v67;
      }

      v71 = &v68[v70];
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
    v74 = __p[1];
    if (__p[1] >= v183[0])
    {
      v76 = __p[0];
      v77 = __p[1] - __p[0];
      v78 = (__p[1] - __p[0]) >> 3;
      v79 = v78 + 1;
      if ((v78 + 1) >> 61)
      {
        goto LABEL_246;
      }

      v80 = v183[0] - __p[0];
      if ((v183[0] - __p[0]) >> 2 > v79)
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
          goto LABEL_247;
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
      __p[0] = v82;
      __p[1] = v75;
      v183[0] = &v82[8 * v81];
      if (v76)
      {
        operator delete(v76);
      }
    }

    else
    {
      *__p[1] = v65;
      v75 = v74 + 8;
    }

    __p[1] = v75;
  }

  if (*(this + 680) == 1)
  {
    v84 = Context;
    v85 = operator new(0x60uLL);
    mlir::PatternBenefit::PatternBenefit(&v175, 1);
    mlir::Pattern::Pattern((v85 + 1), "mps.matmul", 10, v175, v84, 0, 0);
    *v85 = &unk_1F5AFC150;
    if (!v85[9])
    {
      v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMatMulTransposeConstantRHS]";
      *&v176 = 122;
      v86 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
      if (v176 >= v86)
      {
        v87 = v86;
      }

      else
      {
        v87 = v176;
      }

      v88 = &v175[v87];
      v89 = v176 - v87;
      if ((v176 - v87) >= 0x12)
      {
        v90 = 18;
      }

      else
      {
        v90 = v176 - v87;
      }

      v91 = &v88[v90];
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
    v94 = __p[1];
    if (__p[1] >= v183[0])
    {
      v96 = __p[0];
      v97 = __p[1] - __p[0];
      v98 = (__p[1] - __p[0]) >> 3;
      v99 = v98 + 1;
      if ((v98 + 1) >> 61)
      {
        goto LABEL_246;
      }

      v100 = v183[0] - __p[0];
      if ((v183[0] - __p[0]) >> 2 > v99)
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
          goto LABEL_247;
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
      __p[0] = v102;
      __p[1] = v95;
      v183[0] = &v102[8 * v101];
      if (v96)
      {
        operator delete(v96);
      }
    }

    else
    {
      *__p[1] = v85;
      v95 = v94 + 8;
    }

    __p[1] = v95;
  }

  if (*(this + 888) != 1)
  {
    goto LABEL_217;
  }

  v104 = Context;
  v105 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v175, 1);
  mlir::Pattern::Pattern((v105 + 1), "mps.conv_2d", 11, v175, v104, 0, 0);
  *v105 = &unk_1F5AFC1A8;
  if (!v105[9])
  {
    v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DOp>]";
    *&v176 = 145;
    v106 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
    if (v176 >= v106)
    {
      v107 = v106;
    }

    else
    {
      v107 = v176;
    }

    v108 = &v175[v107];
    v109 = v176 - v107;
    if ((v176 - v107) >= 0x12)
    {
      v110 = 18;
    }

    else
    {
      v110 = v176 - v107;
    }

    v111 = &v108[v110];
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
  v114 = __p[1];
  if (__p[1] >= v183[0])
  {
    v116 = __p[0];
    v117 = __p[1] - __p[0];
    v118 = (__p[1] - __p[0]) >> 3;
    v119 = v118 + 1;
    if ((v118 + 1) >> 61)
    {
      goto LABEL_246;
    }

    v120 = v183[0] - __p[0];
    if ((v183[0] - __p[0]) >> 2 > v119)
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
        goto LABEL_247;
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
    __p[0] = v122;
    __p[1] = v115;
    v183[0] = &v122[8 * v121];
    if (v116)
    {
      operator delete(v116);
    }
  }

  else
  {
    *__p[1] = v105;
    v115 = v114 + 8;
  }

  __p[1] = v115;
  v124 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v175, 1);
  mlir::Pattern::Pattern((v124 + 1), "mps.conv_2d_data_gradient", 25, v175, v104, 0, 0);
  *v124 = &unk_1F5AFC200;
  if (!v124[9])
  {
    v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::Conv2DDataGradientOp>]";
    *&v176 = 157;
    v125 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
    if (v176 >= v125)
    {
      v126 = v125;
    }

    else
    {
      v126 = v176;
    }

    v127 = &v175[v126];
    v128 = v176 - v126;
    if ((v176 - v126) >= 0x12)
    {
      v129 = 18;
    }

    else
    {
      v129 = v176 - v126;
    }

    v130 = &v127[v129];
    v131 = v128 - v129;
    if (v131 >= v131 - 1)
    {
      --v131;
    }

    v124[8] = v130;
    v124[9] = v131;
  }

  v132 = *(v124 + 22);
  if (v132 > *(v124 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v124 + 10), (v124 + 12), v132, 16);
    LODWORD(v132) = *(v124 + 22);
  }

  *(v124 + 22) = v132;
  v133 = __p[1];
  if (__p[1] >= v183[0])
  {
    v135 = __p[0];
    v136 = __p[1] - __p[0];
    v137 = (__p[1] - __p[0]) >> 3;
    v138 = v137 + 1;
    if ((v137 + 1) >> 61)
    {
      goto LABEL_246;
    }

    v139 = v183[0] - __p[0];
    if ((v183[0] - __p[0]) >> 2 > v138)
    {
      v138 = v139 >> 2;
    }

    if (v139 >= 0x7FFFFFFFFFFFFFF8)
    {
      v140 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v140 = v138;
    }

    if (v140)
    {
      if (v140 >> 61)
      {
        goto LABEL_247;
      }

      v141 = operator new(8 * v140);
    }

    else
    {
      v141 = 0;
    }

    v142 = &v141[8 * v137];
    *v142 = v124;
    v134 = v142 + 8;
    memcpy(v141, v135, v136);
    __p[0] = v141;
    __p[1] = v134;
    v183[0] = &v141[8 * v140];
    if (v135)
    {
      operator delete(v135);
    }
  }

  else
  {
    *__p[1] = v124;
    v134 = v133 + 8;
  }

  __p[1] = v134;
  v143 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v175, 1);
  mlir::Pattern::Pattern((v143 + 1), "mps.depthwise_conv_2d", 21, v175, v104, 0, 0);
  *v143 = &unk_1F5AFC258;
  if (!v143[9])
  {
    v175 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeNCHWConv2DConstWeightsToHWIO<mlir::mps::DepthwiseConv2DOp>]";
    *&v176 = 154;
    v144 = llvm::StringRef::find(&v175, "DesiredTypeName = ", 0x12uLL, 0);
    if (v176 >= v144)
    {
      v145 = v144;
    }

    else
    {
      v145 = v176;
    }

    v146 = &v175[v145];
    v147 = v176 - v145;
    if ((v176 - v145) >= 0x12)
    {
      v148 = 18;
    }

    else
    {
      v148 = v176 - v145;
    }

    v149 = &v146[v148];
    v150 = v147 - v148;
    if (v150 >= v150 - 1)
    {
      --v150;
    }

    v143[8] = v149;
    v143[9] = v150;
  }

  v151 = *(v143 + 22);
  if (v151 > *(v143 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v143 + 10), (v143 + 12), v151, 16);
    LODWORD(v151) = *(v143 + 22);
  }

  *(v143 + 22) = v151;
  v152 = __p[1];
  if (__p[1] < v183[0])
  {
    *__p[1] = v143;
    v153 = v152 + 8;
LABEL_216:
    __p[1] = v153;
LABEL_217:
    mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v174, &Context, 0, 0, 0, 0);
    v162 = v2[11];
    if ((v162 & 0x7FFFFF) != 0)
    {
      v163 = (((&v2[4 * ((v162 >> 23) & 1) + 16] + ((v162 >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
      v180 = 0;
      v175 = 0x200000000;
      v176 = xmmword_1E097BBC0;
      v178 = 0;
      v179 = 0;
      v177 = 0;
      mlir::applyPatternsAndFoldGreedily(v163, v174, &v175, &v180);
    }

    std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v174);
    if (HIDWORD(v194) && v194)
    {
      v164 = 0;
      do
      {
        v165 = *(v193 + v164);
        if (v165 != -8 && v165 != 0)
        {
          v167 = *v165;
          v168 = *(v165 + 4);
          if (v168 == (v165 + 8))
          {
            (*(*v168 + 32))(v168);
          }

          else if (v168)
          {
            (*(*v168 + 40))(v168);
          }

          llvm::deallocate_buffer(v165, (v167 + 41));
        }

        v164 += 8;
      }

      while (8 * v194 != v164);
    }

    free(v193);
    if (HIDWORD(v191) && v191)
    {
      v169 = 0;
      do
      {
        v170 = *(v190 + v169);
        if (v170 != -8 && v170 != 0)
        {
          v172 = *v170;
          v173 = *(v170 + 4);
          if (v173 == (v170 + 8))
          {
            (*(*v173 + 32))(v173);
          }

          else if (v173)
          {
            (*(*v173 + 40))(v173);
          }

          llvm::deallocate_buffer(v170, (v172 + 41));
        }

        v169 += 8;
      }

      while (8 * v191 != v169);
    }

    free(v190);
    llvm::deallocate_buffer(v187, (16 * v189));
  }

  v154 = __p[0];
  v155 = __p[1] - __p[0];
  v156 = (__p[1] - __p[0]) >> 3;
  v157 = v156 + 1;
  if (!((v156 + 1) >> 61))
  {
    v158 = v183[0] - __p[0];
    if ((v183[0] - __p[0]) >> 2 > v157)
    {
      v157 = v158 >> 2;
    }

    if (v158 >= 0x7FFFFFFFFFFFFFF8)
    {
      v159 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v159 = v157;
    }

    if (!v159)
    {
      v160 = 0;
LABEL_214:
      v161 = &v160[8 * v156];
      *v161 = v143;
      v153 = v161 + 8;
      memcpy(v160, v154, v155);
      __p[0] = v160;
      __p[1] = v153;
      v183[0] = &v160[8 * v159];
      if (v154)
      {
        operator delete(v154);
      }

      goto LABEL_216;
    }

    if (!(v159 >> 61))
    {
      v160 = operator new(8 * v159);
      goto LABEL_214;
    }

LABEL_247:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_246:
  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}

uint64_t mlir::mps::MPSCommonRuntimeCanonicalizationBase<mlir::mps::anonymous namespace::CommonRuntimeCanonicalizationPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x568uLL);
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
  *v4 = &unk_1F5AFB0C0;
  *&v9 = "Enables the canonicalizations which create operations in MPSSPI dialect.";
  *(&v9 + 1) = 72;
  v7 = 1;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 344, v4 + 19, "enable-canonicalization-to-mpsspi-dialect", 41, &v9, &v8);
  *(v4 + 43) = &unk_1F5AFB130;
  *(v4 + 67) = &unk_1F5AFB1B0;
  *&v9 = "If a MatMul operation does not have a transpose on the RHS operand, and that operand is a constant, transpose the constant.";
  *(&v9 + 1) = 123;
  v7 = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 552, v4 + 19, "enable-matmul-transpose-constant-rhs", 36, &v9, &v8);
  *(v4 + 69) = &unk_1F5AFB130;
  *(v4 + 93) = &unk_1F5AFB1B0;
  *&v9 = "If a Conv2D/Conv2DDataGradient/DepthwiseConv2D operation has a NCHW data layout and constant weights, convert the weights to HWIO layout.";
  *(&v9 + 1) = 137;
  v7 = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 760, v4 + 19, "enable-nchw-conv2d-const-weights-to-hwio", 40, &v9, &v8);
  *(v4 + 95) = &unk_1F5AFB130;
  *(v4 + 119) = &unk_1F5AFB1B0;
  *&v9 = "If enabled, constants will always be fused irrespectively of whether they might increase memory usage.";
  *(&v9 + 1) = 102;
  v7 = 1;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 968, v4 + 19, "always-fuse-constants", 21, &v9, &v8);
  *(v4 + 121) = &unk_1F5AFB130;
  *(v4 + 145) = &unk_1F5AFB1B0;
  *&v9 = "If enabled, sdpa with gqa will be canonicalized as a single-dispatch SDPA op.";
  *(&v9 + 1) = 77;
  v7 = 0;
  v8 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 1176, v4 + 19, "enable-sdpa-with-gqa", 20, &v9, &v8);
  *(v4 + 147) = &unk_1F5AFB130;
  *(v4 + 171) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5AFB050;
  *a2 = v4;
  return result;
}

void std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = a2;
      v12 = operator new(8 * v10);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * (v7 >> 3)];
    *v13 = *a2;
    v5 = v13 + 8;
    memcpy(v12, v6, v7);
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = &v12[8 * v10];
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *llvm::raw_ostream::operator<<(void *result, const void *a2, size_t a3)
{
  v4 = result[4];
  if (a3 <= result[3] - v4)
  {
    if (a3)
    {
      v5 = result;
      memcpy(v4, a2, a3);
      result = v5;
      v5[4] += a3;
    }
  }

  else
  {

    return llvm::raw_ostream::write(result, a2, a3);
  }

  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::mps_spi::MPSSPIDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::mps_spi::MPSSPIDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFB318;
  return result;
}

mlir::mps_spi::MPSSPIDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps_spi::MPSSPIDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps_spi::MPSSPIDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::mps_spi::MPSSPIDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::mps_spi::MPSSPIDialect::MPSSPIDialect(v4, v3);
  *a2 = result;
  return result;
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFB360;
  return result;
}

void *_ZN4mlir17RewritePatternSet3addIJNS_3mps12_GLOBAL__N_125CanonicalizePadToConv2DOpINS2_8Conv2DOpEEENS4_INS2_17DepthwiseConv2DOpEEENS3_25CanonicalizePadToConv3DOpENS3_23CanonicalizePadToPoolOpINS2_9PoolAvgOpEEENSA_INS2_12PoolL2NormOpEEENS3_38CanonicalizeConv2DWithConstantOperandsENS3_28CanonicalizeMatMulTransposesENS3_21ReorderDequantPermuteENS3_23ReorderDequantTransposeENS3_13DivByConstantENS3_12AddSubConstsENS3_24CanonicalizeInstanceNormENS3_20CanonicalizeMultiplyENS3_15CanonicalizeAddENS3_24CanonicalizeReshapeChainINS2_9ReshapeOpEEENSO_INS2_9SqueezeOpEEENSO_INS2_12ExpandDimsOpEEENS3_17CanonicalizePowerENS3_17CanonicalizeSwishENS3_21CanonicalizeBatchNormENS3_30CanonicalizeBatchNormInferenceENS3_21CanonicalizeTransposeENS3_19CanonicalizePermuteENS3_20CanonicalizeIdentityENS3_18CanonicalizeConcatENS3_24CanonicalizeOpsWith0DimsENS3_9CastToFFTENS3_25CanonicalizeNoOpReductionINS2_14ReductionMaxOpEEENS15_INS2_14ReductionMinOpEEENS15_INS2_15ReductionProdOpEEENS15_INS2_14ReductionSumOpEEENS3_37CanonicalizeMatMulExpandSqueezeBinaryINS2_5AddOpEEENS3_36CanonicalizeMatMulExpandSqueezeUnaryINS2_6ReluOpEEENS3_19CanonicalizeSoftMaxENS3_27CanonicalizeTileAsBroadcastENS3_30CanonicalizeTensorFromElementsEEPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_(void *a1, uint64_t *a2)
{
  v4 = operator new(0x60uLL);
  v5 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v4 + 1), "mps.conv_2d", 11, v761, v5, 0, 0);
  *v4 = &unk_1F5AFB3A8;
  if (!v4[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizePadToConv2DOp<mlir::mps::Conv2DOp>]";
    v762 = 130;
    v6 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v762;
    }

    v8 = &v761[v7];
    v9 = v762 - v7;
    if (v762 - v7 >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = v762 - v7;
    }

    v11 = &v8[v10];
    v12 = v9 - v10;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v4[8] = v11;
    v4[9] = v12;
  }

  v13 = *(v4 + 22);
  if (v13 > *(v4 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 10), (v4 + 12), v13, 16);
    LODWORD(v13) = *(v4 + 22);
  }

  *(v4 + 22) = v13;
  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14)
  {
    v17 = a1[1];
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v21 = v14 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 >> 61)
      {
        goto LABEL_939;
      }

      v23 = operator new(8 * v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = &v23[8 * v19];
    *v24 = v4;
    v16 = v24 + 8;
    memcpy(v23, v17, v18);
    a1[1] = v23;
    a1[2] = v16;
    a1[3] = &v23[8 * v22];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v15 = v4;
    v16 = v15 + 8;
  }

  a1[2] = v16;
  v25 = operator new(0x60uLL);
  v26 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v25 + 1), "mps.depthwise_conv_2d", 21, v761, v26, 0, 0);
  *v25 = &unk_1F5AFB400;
  if (!v25[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizePadToConv2DOp<mlir::mps::DepthwiseConv2DOp>]";
    v762 = 139;
    v27 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v762;
    }

    v29 = &v761[v28];
    v30 = v762 - v28;
    if (v762 - v28 >= 0x12)
    {
      v31 = 18;
    }

    else
    {
      v31 = v762 - v28;
    }

    v32 = &v29[v31];
    v33 = v30 - v31;
    if (v33 >= v33 - 1)
    {
      --v33;
    }

    v25[8] = v32;
    v25[9] = v33;
  }

  v34 = *(v25 + 22);
  if (v34 > *(v25 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v25 + 10), (v25 + 12), v34, 16);
    LODWORD(v34) = *(v25 + 22);
  }

  *(v25 + 22) = v34;
  v36 = a1[2];
  v35 = a1[3];
  if (v36 >= v35)
  {
    v38 = a1[1];
    v39 = v36 - v38;
    v40 = (v36 - v38) >> 3;
    v41 = v40 + 1;
    if ((v40 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v42 = v35 - v38;
    if (v42 >> 2 > v41)
    {
      v41 = v42 >> 2;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (v43 >> 61)
      {
        goto LABEL_939;
      }

      v44 = operator new(8 * v43);
    }

    else
    {
      v44 = 0;
    }

    v45 = &v44[8 * v40];
    *v45 = v25;
    v37 = v45 + 8;
    memcpy(v44, v38, v39);
    a1[1] = v44;
    a1[2] = v37;
    a1[3] = &v44[8 * v43];
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v36 = v25;
    v37 = v36 + 8;
  }

  a1[2] = v37;
  v46 = operator new(0x60uLL);
  v47 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v46 + 1), "mps.depthwise_conv_3d", 21, v761, v47, 0, 0);
  *v46 = &unk_1F5AFB458;
  if (!v46[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizePadToConv3DOp]";
    v762 = 109;
    v48 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = v762;
    }

    v50 = &v761[v49];
    v51 = v762 - v49;
    if (v762 - v49 >= 0x12)
    {
      v52 = 18;
    }

    else
    {
      v52 = v762 - v49;
    }

    v53 = &v50[v52];
    v54 = v51 - v52;
    if (v54 >= v54 - 1)
    {
      --v54;
    }

    v46[8] = v53;
    v46[9] = v54;
  }

  v55 = *(v46 + 22);
  if (v55 > *(v46 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v46 + 10), (v46 + 12), v55, 16);
    LODWORD(v55) = *(v46 + 22);
  }

  *(v46 + 22) = v55;
  v57 = a1[2];
  v56 = a1[3];
  if (v57 >= v56)
  {
    v59 = a1[1];
    v60 = v57 - v59;
    v61 = (v57 - v59) >> 3;
    v62 = v61 + 1;
    if ((v61 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v63 = v56 - v59;
    if (v63 >> 2 > v62)
    {
      v62 = v63 >> 2;
    }

    if (v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      v64 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v64 = v62;
    }

    if (v64)
    {
      if (v64 >> 61)
      {
        goto LABEL_939;
      }

      v65 = operator new(8 * v64);
    }

    else
    {
      v65 = 0;
    }

    v66 = &v65[8 * v61];
    *v66 = v46;
    v58 = v66 + 8;
    memcpy(v65, v59, v60);
    a1[1] = v65;
    a1[2] = v58;
    a1[3] = &v65[8 * v64];
    if (v59)
    {
      operator delete(v59);
    }
  }

  else
  {
    *v57 = v46;
    v58 = v57 + 8;
  }

  a1[2] = v58;
  v67 = operator new(0x60uLL);
  v68 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v67 + 1), "mps.pooling_average", 19, v761, v68, 0, 0);
  *v67 = &unk_1F5AFB4B0;
  if (!v67[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizePadToPoolOp<mlir::mps::PoolAvgOp>]";
    v762 = 129;
    v69 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = v762;
    }

    v71 = &v761[v70];
    v72 = v762 - v70;
    if (v762 - v70 >= 0x12)
    {
      v73 = 18;
    }

    else
    {
      v73 = v762 - v70;
    }

    v74 = &v71[v73];
    v75 = v72 - v73;
    if (v75 >= v75 - 1)
    {
      --v75;
    }

    v67[8] = v74;
    v67[9] = v75;
  }

  v76 = *(v67 + 22);
  if (v76 > *(v67 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v67 + 10), (v67 + 12), v76, 16);
    LODWORD(v76) = *(v67 + 22);
  }

  *(v67 + 22) = v76;
  v78 = a1[2];
  v77 = a1[3];
  if (v78 >= v77)
  {
    v80 = a1[1];
    v81 = v78 - v80;
    v82 = (v78 - v80) >> 3;
    v83 = v82 + 1;
    if ((v82 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v84 = v77 - v80;
    if (v84 >> 2 > v83)
    {
      v83 = v84 >> 2;
    }

    if (v84 >= 0x7FFFFFFFFFFFFFF8)
    {
      v85 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v85 = v83;
    }

    if (v85)
    {
      if (v85 >> 61)
      {
        goto LABEL_939;
      }

      v86 = operator new(8 * v85);
    }

    else
    {
      v86 = 0;
    }

    v87 = &v86[8 * v82];
    *v87 = v67;
    v79 = v87 + 8;
    memcpy(v86, v80, v81);
    a1[1] = v86;
    a1[2] = v79;
    a1[3] = &v86[8 * v85];
    if (v80)
    {
      operator delete(v80);
    }
  }

  else
  {
    *v78 = v67;
    v79 = v78 + 8;
  }

  a1[2] = v79;
  v88 = operator new(0x60uLL);
  v89 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v88 + 1), "mps.pooling_l2_norm", 19, v761, v89, 0, 0);
  *v88 = &unk_1F5AFB508;
  if (!v88[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizePadToPoolOp<mlir::mps::PoolL2NormOp>]";
    v762 = 132;
    v90 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v90)
    {
      v91 = v90;
    }

    else
    {
      v91 = v762;
    }

    v92 = &v761[v91];
    v93 = v762 - v91;
    if (v762 - v91 >= 0x12)
    {
      v94 = 18;
    }

    else
    {
      v94 = v762 - v91;
    }

    v95 = &v92[v94];
    v96 = v93 - v94;
    if (v96 >= v96 - 1)
    {
      --v96;
    }

    v88[8] = v95;
    v88[9] = v96;
  }

  v97 = *(v88 + 22);
  if (v97 > *(v88 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v88 + 10), (v88 + 12), v97, 16);
    LODWORD(v97) = *(v88 + 22);
  }

  *(v88 + 22) = v97;
  v99 = a1[2];
  v98 = a1[3];
  if (v99 >= v98)
  {
    v101 = a1[1];
    v102 = v99 - v101;
    v103 = (v99 - v101) >> 3;
    v104 = v103 + 1;
    if ((v103 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v105 = v98 - v101;
    if (v105 >> 2 > v104)
    {
      v104 = v105 >> 2;
    }

    if (v105 >= 0x7FFFFFFFFFFFFFF8)
    {
      v106 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v106 = v104;
    }

    if (v106)
    {
      if (v106 >> 61)
      {
        goto LABEL_939;
      }

      v107 = operator new(8 * v106);
    }

    else
    {
      v107 = 0;
    }

    v108 = &v107[8 * v103];
    *v108 = v88;
    v100 = v108 + 8;
    memcpy(v107, v101, v102);
    a1[1] = v107;
    a1[2] = v100;
    a1[3] = &v107[8 * v106];
    if (v101)
    {
      operator delete(v101);
    }
  }

  else
  {
    *v99 = v88;
    v100 = v99 + 8;
  }

  a1[2] = v100;
  v109 = operator new(0x60uLL);
  v110 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v109 + 1), "mps.conv_2d", 11, v761, v110, 0, 0);
  *v109 = &unk_1F5AFB560;
  if (!v109[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConv2DWithConstantOperands]";
    v762 = 122;
    v111 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v111)
    {
      v112 = v111;
    }

    else
    {
      v112 = v762;
    }

    v113 = &v761[v112];
    v114 = v762 - v112;
    if (v762 - v112 >= 0x12)
    {
      v115 = 18;
    }

    else
    {
      v115 = v762 - v112;
    }

    v116 = &v113[v115];
    v117 = v114 - v115;
    if (v117 >= v117 - 1)
    {
      --v117;
    }

    v109[8] = v116;
    v109[9] = v117;
  }

  v118 = *(v109 + 22);
  if (v118 > *(v109 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v109 + 10), (v109 + 12), v118, 16);
    LODWORD(v118) = *(v109 + 22);
  }

  *(v109 + 22) = v118;
  v120 = a1[2];
  v119 = a1[3];
  if (v120 >= v119)
  {
    v122 = a1[1];
    v123 = v120 - v122;
    v124 = (v120 - v122) >> 3;
    v125 = v124 + 1;
    if ((v124 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v126 = v119 - v122;
    if (v126 >> 2 > v125)
    {
      v125 = v126 >> 2;
    }

    if (v126 >= 0x7FFFFFFFFFFFFFF8)
    {
      v127 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v127 = v125;
    }

    if (v127)
    {
      if (v127 >> 61)
      {
        goto LABEL_939;
      }

      v128 = operator new(8 * v127);
    }

    else
    {
      v128 = 0;
    }

    v129 = &v128[8 * v124];
    *v129 = v109;
    v121 = v129 + 8;
    memcpy(v128, v122, v123);
    a1[1] = v128;
    a1[2] = v121;
    a1[3] = &v128[8 * v127];
    if (v122)
    {
      operator delete(v122);
    }
  }

  else
  {
    *v120 = v109;
    v121 = v120 + 8;
  }

  a1[2] = v121;
  v130 = operator new(0x60uLL);
  v131 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 100);
  mlir::Pattern::Pattern((v130 + 1), "mps.matmul", 10, v761, v131, 0, 0);
  *v130 = &unk_1F5AFB5B8;
  if (!v130[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMatMulTransposes]";
    v762 = 112;
    v132 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v132)
    {
      v133 = v132;
    }

    else
    {
      v133 = v762;
    }

    v134 = &v761[v133];
    v135 = v762 - v133;
    if (v762 - v133 >= 0x12)
    {
      v136 = 18;
    }

    else
    {
      v136 = v762 - v133;
    }

    v137 = &v134[v136];
    v138 = v135 - v136;
    if (v138 >= v138 - 1)
    {
      --v138;
    }

    v130[8] = v137;
    v130[9] = v138;
  }

  v139 = *(v130 + 22);
  if (v139 > *(v130 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v130 + 10), (v130 + 12), v139, 16);
    LODWORD(v139) = *(v130 + 22);
  }

  *(v130 + 22) = v139;
  v141 = a1[2];
  v140 = a1[3];
  if (v141 >= v140)
  {
    v143 = a1[1];
    v144 = v141 - v143;
    v145 = (v141 - v143) >> 3;
    v146 = v145 + 1;
    if ((v145 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v147 = v140 - v143;
    if (v147 >> 2 > v146)
    {
      v146 = v147 >> 2;
    }

    if (v147 >= 0x7FFFFFFFFFFFFFF8)
    {
      v148 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v148 = v146;
    }

    if (v148)
    {
      if (v148 >> 61)
      {
        goto LABEL_939;
      }

      v149 = operator new(8 * v148);
    }

    else
    {
      v149 = 0;
    }

    v150 = &v149[8 * v145];
    *v150 = v130;
    v142 = v150 + 8;
    memcpy(v149, v143, v144);
    a1[1] = v149;
    a1[2] = v142;
    a1[3] = &v149[8 * v148];
    if (v143)
    {
      operator delete(v143);
    }
  }

  else
  {
    *v141 = v130;
    v142 = v141 + 8;
  }

  a1[2] = v142;
  v151 = operator new(0x60uLL);
  v152 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v151 + 1), "mps.permute", 11, v761, v152, 0, 0);
  *v151 = &unk_1F5AFB610;
  if (!v151[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ReorderDequantPermute]";
    v762 = 105;
    v153 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v153)
    {
      v154 = v153;
    }

    else
    {
      v154 = v762;
    }

    v155 = &v761[v154];
    v156 = v762 - v154;
    if (v762 - v154 >= 0x12)
    {
      v157 = 18;
    }

    else
    {
      v157 = v762 - v154;
    }

    v158 = &v155[v157];
    v159 = v156 - v157;
    if (v159 >= v159 - 1)
    {
      --v159;
    }

    v151[8] = v158;
    v151[9] = v159;
  }

  v160 = *(v151 + 22);
  if (v160 > *(v151 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v151 + 10), (v151 + 12), v160, 16);
    LODWORD(v160) = *(v151 + 22);
  }

  *(v151 + 22) = v160;
  v162 = a1[2];
  v161 = a1[3];
  if (v162 >= v161)
  {
    v164 = a1[1];
    v165 = v162 - v164;
    v166 = (v162 - v164) >> 3;
    v167 = v166 + 1;
    if ((v166 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v168 = v161 - v164;
    if (v168 >> 2 > v167)
    {
      v167 = v168 >> 2;
    }

    if (v168 >= 0x7FFFFFFFFFFFFFF8)
    {
      v169 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v169 = v167;
    }

    if (v169)
    {
      if (v169 >> 61)
      {
        goto LABEL_939;
      }

      v170 = operator new(8 * v169);
    }

    else
    {
      v170 = 0;
    }

    v171 = &v170[8 * v166];
    *v171 = v151;
    v163 = v171 + 8;
    memcpy(v170, v164, v165);
    a1[1] = v170;
    a1[2] = v163;
    a1[3] = &v170[8 * v169];
    if (v164)
    {
      operator delete(v164);
    }
  }

  else
  {
    *v162 = v151;
    v163 = v162 + 8;
  }

  a1[2] = v163;
  v172 = operator new(0x60uLL);
  v173 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v172 + 1), "mps.transpose", 13, v761, v173, 0, 0);
  *v172 = &unk_1F5AFB668;
  if (!v172[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ReorderDequantTranspose]";
    v762 = 107;
    v174 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v174)
    {
      v175 = v174;
    }

    else
    {
      v175 = v762;
    }

    v176 = &v761[v175];
    v177 = v762 - v175;
    if (v762 - v175 >= 0x12)
    {
      v178 = 18;
    }

    else
    {
      v178 = v762 - v175;
    }

    v179 = &v176[v178];
    v180 = v177 - v178;
    if (v180 >= v180 - 1)
    {
      --v180;
    }

    v172[8] = v179;
    v172[9] = v180;
  }

  v181 = *(v172 + 22);
  if (v181 > *(v172 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v172 + 10), (v172 + 12), v181, 16);
    LODWORD(v181) = *(v172 + 22);
  }

  *(v172 + 22) = v181;
  v183 = a1[2];
  v182 = a1[3];
  if (v183 >= v182)
  {
    v185 = a1[1];
    v186 = v183 - v185;
    v187 = (v183 - v185) >> 3;
    v188 = v187 + 1;
    if ((v187 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v189 = v182 - v185;
    if (v189 >> 2 > v188)
    {
      v188 = v189 >> 2;
    }

    if (v189 >= 0x7FFFFFFFFFFFFFF8)
    {
      v190 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v190 = v188;
    }

    if (v190)
    {
      if (v190 >> 61)
      {
        goto LABEL_939;
      }

      v191 = operator new(8 * v190);
    }

    else
    {
      v191 = 0;
    }

    v192 = &v191[8 * v187];
    *v192 = v172;
    v184 = v192 + 8;
    memcpy(v191, v185, v186);
    a1[1] = v191;
    a1[2] = v184;
    a1[3] = &v191[8 * v190];
    if (v185)
    {
      operator delete(v185);
    }
  }

  else
  {
    *v183 = v172;
    v184 = v183 + 8;
  }

  a1[2] = v184;
  v193 = operator new(0x60uLL);
  v194 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v193 + 1), "mps.divide", 10, v761, v194, 0, 0);
  *v193 = &unk_1F5AFB6C0;
  if (!v193[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::DivByConstant]";
    v762 = 97;
    v195 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v195)
    {
      v196 = v195;
    }

    else
    {
      v196 = v762;
    }

    v197 = &v761[v196];
    v198 = v762 - v196;
    if (v762 - v196 >= 0x12)
    {
      v199 = 18;
    }

    else
    {
      v199 = v762 - v196;
    }

    v200 = &v197[v199];
    v201 = v198 - v199;
    if (v201 >= v201 - 1)
    {
      --v201;
    }

    v193[8] = v200;
    v193[9] = v201;
  }

  v202 = *(v193 + 22);
  if (v202 > *(v193 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v193 + 10), (v193 + 12), v202, 16);
    LODWORD(v202) = *(v193 + 22);
  }

  *(v193 + 22) = v202;
  v204 = a1[2];
  v203 = a1[3];
  if (v204 >= v203)
  {
    v206 = a1[1];
    v207 = v204 - v206;
    v208 = (v204 - v206) >> 3;
    v209 = v208 + 1;
    if ((v208 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v210 = v203 - v206;
    if (v210 >> 2 > v209)
    {
      v209 = v210 >> 2;
    }

    if (v210 >= 0x7FFFFFFFFFFFFFF8)
    {
      v211 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v211 = v209;
    }

    if (v211)
    {
      if (v211 >> 61)
      {
        goto LABEL_939;
      }

      v212 = operator new(8 * v211);
    }

    else
    {
      v212 = 0;
    }

    v213 = &v212[8 * v208];
    *v213 = v193;
    v205 = v213 + 8;
    memcpy(v212, v206, v207);
    a1[1] = v212;
    a1[2] = v205;
    a1[3] = &v212[8 * v211];
    if (v206)
    {
      operator delete(v206);
    }
  }

  else
  {
    *v204 = v193;
    v205 = v204 + 8;
  }

  a1[2] = v205;
  v214 = operator new(0x60uLL);
  v215 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v214 + 1), "mps.add", 7, v761, v215, 0, 0);
  *v214 = &unk_1F5AFB718;
  if (!v214[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::AddSubConsts]";
    v762 = 96;
    v216 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v216)
    {
      v217 = v216;
    }

    else
    {
      v217 = v762;
    }

    v218 = &v761[v217];
    v219 = v762 - v217;
    if (v762 - v217 >= 0x12)
    {
      v220 = 18;
    }

    else
    {
      v220 = v762 - v217;
    }

    v221 = &v218[v220];
    v222 = v219 - v220;
    if (v222 >= v222 - 1)
    {
      --v222;
    }

    v214[8] = v221;
    v214[9] = v222;
  }

  v223 = *(v214 + 22);
  if (v223 > *(v214 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v214 + 10), (v214 + 12), v223, 16);
    LODWORD(v223) = *(v214 + 22);
  }

  *(v214 + 22) = v223;
  v225 = a1[2];
  v224 = a1[3];
  if (v225 >= v224)
  {
    v227 = a1[1];
    v228 = v225 - v227;
    v229 = (v225 - v227) >> 3;
    v230 = v229 + 1;
    if ((v229 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v231 = v224 - v227;
    if (v231 >> 2 > v230)
    {
      v230 = v231 >> 2;
    }

    if (v231 >= 0x7FFFFFFFFFFFFFF8)
    {
      v232 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v232 = v230;
    }

    if (v232)
    {
      if (v232 >> 61)
      {
        goto LABEL_939;
      }

      v233 = operator new(8 * v232);
    }

    else
    {
      v233 = 0;
    }

    v234 = &v233[8 * v229];
    *v234 = v214;
    v226 = v234 + 8;
    memcpy(v233, v227, v228);
    a1[1] = v233;
    a1[2] = v226;
    a1[3] = &v233[8 * v232];
    if (v227)
    {
      operator delete(v227);
    }
  }

  else
  {
    *v225 = v214;
    v226 = v225 + 8;
  }

  a1[2] = v226;
  v235 = operator new(0x60uLL);
  v236 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v235 + 1), "mps.normalization", 17, v761, v236, 0, 0);
  *v235 = &unk_1F5AFB770;
  if (!v235[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeInstanceNorm]";
    v762 = 108;
    v237 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v237)
    {
      v238 = v237;
    }

    else
    {
      v238 = v762;
    }

    v239 = &v761[v238];
    v240 = v762 - v238;
    if (v762 - v238 >= 0x12)
    {
      v241 = 18;
    }

    else
    {
      v241 = v762 - v238;
    }

    v242 = &v239[v241];
    v243 = v240 - v241;
    if (v243 >= v243 - 1)
    {
      --v243;
    }

    v235[8] = v242;
    v235[9] = v243;
  }

  v244 = *(v235 + 22);
  if (v244 > *(v235 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v235 + 10), (v235 + 12), v244, 16);
    LODWORD(v244) = *(v235 + 22);
  }

  *(v235 + 22) = v244;
  v246 = a1[2];
  v245 = a1[3];
  if (v246 >= v245)
  {
    v248 = a1[1];
    v249 = v246 - v248;
    v250 = (v246 - v248) >> 3;
    v251 = v250 + 1;
    if ((v250 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v252 = v245 - v248;
    if (v252 >> 2 > v251)
    {
      v251 = v252 >> 2;
    }

    if (v252 >= 0x7FFFFFFFFFFFFFF8)
    {
      v253 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v253 = v251;
    }

    if (v253)
    {
      if (v253 >> 61)
      {
        goto LABEL_939;
      }

      v254 = operator new(8 * v253);
    }

    else
    {
      v254 = 0;
    }

    v255 = &v254[8 * v250];
    *v255 = v235;
    v247 = v255 + 8;
    memcpy(v254, v248, v249);
    a1[1] = v254;
    a1[2] = v247;
    a1[3] = &v254[8 * v253];
    if (v248)
    {
      operator delete(v248);
    }
  }

  else
  {
    *v246 = v235;
    v247 = v246 + 8;
  }

  a1[2] = v247;
  v256 = operator new(0x60uLL);
  v257 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v256 + 1), "mps.multiply", 12, v761, v257, 0, 0);
  *v256 = &unk_1F5AFB7C8;
  if (!v256[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMultiply]";
    v762 = 104;
    v258 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v258)
    {
      v259 = v258;
    }

    else
    {
      v259 = v762;
    }

    v260 = &v761[v259];
    v261 = v762 - v259;
    if (v762 - v259 >= 0x12)
    {
      v262 = 18;
    }

    else
    {
      v262 = v762 - v259;
    }

    v263 = &v260[v262];
    v264 = v261 - v262;
    if (v264 >= v264 - 1)
    {
      --v264;
    }

    v256[8] = v263;
    v256[9] = v264;
  }

  v265 = *(v256 + 22);
  if (v265 > *(v256 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v256 + 10), (v256 + 12), v265, 16);
    LODWORD(v265) = *(v256 + 22);
  }

  *(v256 + 22) = v265;
  v267 = a1[2];
  v266 = a1[3];
  if (v267 >= v266)
  {
    v269 = a1[1];
    v270 = v267 - v269;
    v271 = (v267 - v269) >> 3;
    v272 = v271 + 1;
    if ((v271 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v273 = v266 - v269;
    if (v273 >> 2 > v272)
    {
      v272 = v273 >> 2;
    }

    if (v273 >= 0x7FFFFFFFFFFFFFF8)
    {
      v274 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v274 = v272;
    }

    if (v274)
    {
      if (v274 >> 61)
      {
        goto LABEL_939;
      }

      v275 = operator new(8 * v274);
    }

    else
    {
      v275 = 0;
    }

    v276 = &v275[8 * v271];
    *v276 = v256;
    v268 = v276 + 8;
    memcpy(v275, v269, v270);
    a1[1] = v275;
    a1[2] = v268;
    a1[3] = &v275[8 * v274];
    if (v269)
    {
      operator delete(v269);
    }
  }

  else
  {
    *v267 = v256;
    v268 = v267 + 8;
  }

  a1[2] = v268;
  v277 = operator new(0x60uLL);
  v278 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v277 + 1), "mps.add", 7, v761, v278, 0, 0);
  *v277 = &unk_1F5AFB820;
  if (!v277[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeAdd]";
    v762 = 99;
    v279 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v279)
    {
      v280 = v279;
    }

    else
    {
      v280 = v762;
    }

    v281 = &v761[v280];
    v282 = v762 - v280;
    if (v762 - v280 >= 0x12)
    {
      v283 = 18;
    }

    else
    {
      v283 = v762 - v280;
    }

    v284 = &v281[v283];
    v285 = v282 - v283;
    if (v285 >= v285 - 1)
    {
      --v285;
    }

    v277[8] = v284;
    v277[9] = v285;
  }

  v286 = *(v277 + 22);
  if (v286 > *(v277 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v277 + 10), (v277 + 12), v286, 16);
    LODWORD(v286) = *(v277 + 22);
  }

  *(v277 + 22) = v286;
  v288 = a1[2];
  v287 = a1[3];
  if (v288 >= v287)
  {
    v290 = a1[1];
    v291 = v288 - v290;
    v292 = (v288 - v290) >> 3;
    v293 = v292 + 1;
    if ((v292 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v294 = v287 - v290;
    if (v294 >> 2 > v293)
    {
      v293 = v294 >> 2;
    }

    if (v294 >= 0x7FFFFFFFFFFFFFF8)
    {
      v295 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v295 = v293;
    }

    if (v295)
    {
      if (v295 >> 61)
      {
        goto LABEL_939;
      }

      v296 = operator new(8 * v295);
    }

    else
    {
      v296 = 0;
    }

    v297 = &v296[8 * v292];
    *v297 = v277;
    v289 = v297 + 8;
    memcpy(v296, v290, v291);
    a1[1] = v296;
    a1[2] = v289;
    a1[3] = &v296[8 * v295];
    if (v290)
    {
      operator delete(v290);
    }
  }

  else
  {
    *v288 = v277;
    v289 = v288 + 8;
  }

  a1[2] = v289;
  v298 = operator new(0x60uLL);
  v299 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v298 + 1), "mps.reshape", 11, v761, v299, 0, 0);
  *v298 = &unk_1F5AFB878;
  if (!v298[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReshapeChain<mlir::mps::ReshapeOp>]";
    v762 = 130;
    v300 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v300)
    {
      v301 = v300;
    }

    else
    {
      v301 = v762;
    }

    v302 = &v761[v301];
    v303 = v762 - v301;
    if (v762 - v301 >= 0x12)
    {
      v304 = 18;
    }

    else
    {
      v304 = v762 - v301;
    }

    v305 = &v302[v304];
    v306 = v303 - v304;
    if (v306 >= v306 - 1)
    {
      --v306;
    }

    v298[8] = v305;
    v298[9] = v306;
  }

  v307 = *(v298 + 22);
  if (v307 > *(v298 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v298 + 10), (v298 + 12), v307, 16);
    LODWORD(v307) = *(v298 + 22);
  }

  *(v298 + 22) = v307;
  v309 = a1[2];
  v308 = a1[3];
  if (v309 >= v308)
  {
    v311 = a1[1];
    v312 = v309 - v311;
    v313 = (v309 - v311) >> 3;
    v314 = v313 + 1;
    if ((v313 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v315 = v308 - v311;
    if (v315 >> 2 > v314)
    {
      v314 = v315 >> 2;
    }

    if (v315 >= 0x7FFFFFFFFFFFFFF8)
    {
      v316 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v316 = v314;
    }

    if (v316)
    {
      if (v316 >> 61)
      {
        goto LABEL_939;
      }

      v317 = operator new(8 * v316);
    }

    else
    {
      v317 = 0;
    }

    v318 = &v317[8 * v313];
    *v318 = v298;
    v310 = v318 + 8;
    memcpy(v317, v311, v312);
    a1[1] = v317;
    a1[2] = v310;
    a1[3] = &v317[8 * v316];
    if (v311)
    {
      operator delete(v311);
    }
  }

  else
  {
    *v309 = v298;
    v310 = v309 + 8;
  }

  a1[2] = v310;
  v319 = operator new(0x60uLL);
  v320 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v319 + 1), "mps.reshape", 11, v761, v320, 0, 0);
  *v319 = &unk_1F5AFB8D0;
  if (!v319[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReshapeChain<mlir::mps::SqueezeOp>]";
    v762 = 130;
    v321 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v321)
    {
      v322 = v321;
    }

    else
    {
      v322 = v762;
    }

    v323 = &v761[v322];
    v324 = v762 - v322;
    if (v762 - v322 >= 0x12)
    {
      v325 = 18;
    }

    else
    {
      v325 = v762 - v322;
    }

    v326 = &v323[v325];
    v327 = v324 - v325;
    if (v327 >= v327 - 1)
    {
      --v327;
    }

    v319[8] = v326;
    v319[9] = v327;
  }

  v328 = *(v319 + 22);
  if (v328 > *(v319 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v319 + 10), (v319 + 12), v328, 16);
    LODWORD(v328) = *(v319 + 22);
  }

  *(v319 + 22) = v328;
  v330 = a1[2];
  v329 = a1[3];
  if (v330 >= v329)
  {
    v332 = a1[1];
    v333 = v330 - v332;
    v334 = (v330 - v332) >> 3;
    v335 = v334 + 1;
    if ((v334 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v336 = v329 - v332;
    if (v336 >> 2 > v335)
    {
      v335 = v336 >> 2;
    }

    if (v336 >= 0x7FFFFFFFFFFFFFF8)
    {
      v337 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v337 = v335;
    }

    if (v337)
    {
      if (v337 >> 61)
      {
        goto LABEL_939;
      }

      v338 = operator new(8 * v337);
    }

    else
    {
      v338 = 0;
    }

    v339 = &v338[8 * v334];
    *v339 = v319;
    v331 = v339 + 8;
    memcpy(v338, v332, v333);
    a1[1] = v338;
    a1[2] = v331;
    a1[3] = &v338[8 * v337];
    if (v332)
    {
      operator delete(v332);
    }
  }

  else
  {
    *v330 = v319;
    v331 = v330 + 8;
  }

  a1[2] = v331;
  v340 = operator new(0x60uLL);
  v341 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v340 + 1), "mps.reshape", 11, v761, v341, 0, 0);
  *v340 = &unk_1F5AFB928;
  if (!v340[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReshapeChain<mlir::mps::ExpandDimsOp>]";
    v762 = 133;
    v342 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v342)
    {
      v343 = v342;
    }

    else
    {
      v343 = v762;
    }

    v344 = &v761[v343];
    v345 = v762 - v343;
    if (v762 - v343 >= 0x12)
    {
      v346 = 18;
    }

    else
    {
      v346 = v762 - v343;
    }

    v347 = &v344[v346];
    v348 = v345 - v346;
    if (v348 >= v348 - 1)
    {
      --v348;
    }

    v340[8] = v347;
    v340[9] = v348;
  }

  v349 = *(v340 + 22);
  if (v349 > *(v340 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v340 + 10), (v340 + 12), v349, 16);
    LODWORD(v349) = *(v340 + 22);
  }

  *(v340 + 22) = v349;
  v351 = a1[2];
  v350 = a1[3];
  if (v351 >= v350)
  {
    v353 = a1[1];
    v354 = v351 - v353;
    v355 = (v351 - v353) >> 3;
    v356 = v355 + 1;
    if ((v355 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v357 = v350 - v353;
    if (v357 >> 2 > v356)
    {
      v356 = v357 >> 2;
    }

    if (v357 >= 0x7FFFFFFFFFFFFFF8)
    {
      v358 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v358 = v356;
    }

    if (v358)
    {
      if (v358 >> 61)
      {
        goto LABEL_939;
      }

      v359 = operator new(8 * v358);
    }

    else
    {
      v359 = 0;
    }

    v360 = &v359[8 * v355];
    *v360 = v340;
    v352 = v360 + 8;
    memcpy(v359, v353, v354);
    a1[1] = v359;
    a1[2] = v352;
    a1[3] = &v359[8 * v358];
    if (v353)
    {
      operator delete(v353);
    }
  }

  else
  {
    *v351 = v340;
    v352 = v351 + 8;
  }

  a1[2] = v352;
  v361 = operator new(0x60uLL);
  v362 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v361 + 1), "mps.power", 9, v761, v362, 0, 0);
  *v361 = &unk_1F5AFB980;
  if (!v361[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizePower]";
    v762 = 101;
    v363 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v363)
    {
      v364 = v363;
    }

    else
    {
      v364 = v762;
    }

    v365 = &v761[v364];
    v366 = v762 - v364;
    if (v762 - v364 >= 0x12)
    {
      v367 = 18;
    }

    else
    {
      v367 = v762 - v364;
    }

    v368 = &v365[v367];
    v369 = v366 - v367;
    if (v369 >= v369 - 1)
    {
      --v369;
    }

    v361[8] = v368;
    v361[9] = v369;
  }

  v370 = *(v361 + 22);
  if (v370 > *(v361 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v361 + 10), (v361 + 12), v370, 16);
    LODWORD(v370) = *(v361 + 22);
  }

  *(v361 + 22) = v370;
  v372 = a1[2];
  v371 = a1[3];
  if (v372 >= v371)
  {
    v374 = a1[1];
    v375 = v372 - v374;
    v376 = (v372 - v374) >> 3;
    v377 = v376 + 1;
    if ((v376 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v378 = v371 - v374;
    if (v378 >> 2 > v377)
    {
      v377 = v378 >> 2;
    }

    if (v378 >= 0x7FFFFFFFFFFFFFF8)
    {
      v379 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v379 = v377;
    }

    if (v379)
    {
      if (v379 >> 61)
      {
        goto LABEL_939;
      }

      v380 = operator new(8 * v379);
    }

    else
    {
      v380 = 0;
    }

    v381 = &v380[8 * v376];
    *v381 = v361;
    v373 = v381 + 8;
    memcpy(v380, v374, v375);
    a1[1] = v380;
    a1[2] = v373;
    a1[3] = &v380[8 * v379];
    if (v374)
    {
      operator delete(v374);
    }
  }

  else
  {
    *v372 = v361;
    v373 = v372 + 8;
  }

  a1[2] = v373;
  v382 = operator new(0x60uLL);
  v383 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v382 + 1), "mps.multiply", 12, v761, v383, 0, 0);
  *v382 = &unk_1F5AFB9D8;
  if (!v382[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeSwish]";
    v762 = 101;
    v384 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v384)
    {
      v385 = v384;
    }

    else
    {
      v385 = v762;
    }

    v386 = &v761[v385];
    v387 = v762 - v385;
    if (v762 - v385 >= 0x12)
    {
      v388 = 18;
    }

    else
    {
      v388 = v762 - v385;
    }

    v389 = &v386[v388];
    v390 = v387 - v388;
    if (v390 >= v390 - 1)
    {
      --v390;
    }

    v382[8] = v389;
    v382[9] = v390;
  }

  v391 = *(v382 + 22);
  if (v391 > *(v382 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v382 + 10), (v382 + 12), v391, 16);
    LODWORD(v391) = *(v382 + 22);
  }

  *(v382 + 22) = v391;
  v393 = a1[2];
  v392 = a1[3];
  if (v393 >= v392)
  {
    v395 = a1[1];
    v396 = v393 - v395;
    v397 = (v393 - v395) >> 3;
    v398 = v397 + 1;
    if ((v397 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v399 = v392 - v395;
    if (v399 >> 2 > v398)
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
        goto LABEL_939;
      }

      v401 = operator new(8 * v400);
    }

    else
    {
      v401 = 0;
    }

    v402 = &v401[8 * v397];
    *v402 = v382;
    v394 = v402 + 8;
    memcpy(v401, v395, v396);
    a1[1] = v401;
    a1[2] = v394;
    a1[3] = &v401[8 * v400];
    if (v395)
    {
      operator delete(v395);
    }
  }

  else
  {
    *v393 = v382;
    v394 = v393 + 8;
  }

  a1[2] = v394;
  v403 = operator new(0x60uLL);
  v404 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v403 + 1), "mps.normalization", 17, v761, v404, 0, 0);
  *v403 = &unk_1F5AFBA30;
  if (!v403[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeBatchNorm]";
    v762 = 105;
    v405 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v405)
    {
      v406 = v405;
    }

    else
    {
      v406 = v762;
    }

    v407 = &v761[v406];
    v408 = v762 - v406;
    if (v762 - v406 >= 0x12)
    {
      v409 = 18;
    }

    else
    {
      v409 = v762 - v406;
    }

    v410 = &v407[v409];
    v411 = v408 - v409;
    if (v411 >= v411 - 1)
    {
      --v411;
    }

    v403[8] = v410;
    v403[9] = v411;
  }

  v412 = *(v403 + 22);
  if (v412 > *(v403 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v403 + 10), (v403 + 12), v412, 16);
    LODWORD(v412) = *(v403 + 22);
  }

  *(v403 + 22) = v412;
  v414 = a1[2];
  v413 = a1[3];
  if (v414 >= v413)
  {
    v416 = a1[1];
    v417 = v414 - v416;
    v418 = (v414 - v416) >> 3;
    v419 = v418 + 1;
    if ((v418 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v420 = v413 - v416;
    if (v420 >> 2 > v419)
    {
      v419 = v420 >> 2;
    }

    if (v420 >= 0x7FFFFFFFFFFFFFF8)
    {
      v421 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v421 = v419;
    }

    if (v421)
    {
      if (v421 >> 61)
      {
        goto LABEL_939;
      }

      v422 = operator new(8 * v421);
    }

    else
    {
      v422 = 0;
    }

    v423 = &v422[8 * v418];
    *v423 = v403;
    v415 = v423 + 8;
    memcpy(v422, v416, v417);
    a1[1] = v422;
    a1[2] = v415;
    a1[3] = &v422[8 * v421];
    if (v416)
    {
      operator delete(v416);
    }
  }

  else
  {
    *v414 = v403;
    v415 = v414 + 8;
  }

  a1[2] = v415;
  v424 = operator new(0x60uLL);
  v425 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v424 + 1), "mps.normalization", 17, v761, v425, 0, 0);
  *v424 = &unk_1F5AFBA88;
  if (!v424[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeBatchNormInference]";
    v762 = 114;
    v426 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v426)
    {
      v427 = v426;
    }

    else
    {
      v427 = v762;
    }

    v428 = &v761[v427];
    v429 = v762 - v427;
    if (v762 - v427 >= 0x12)
    {
      v430 = 18;
    }

    else
    {
      v430 = v762 - v427;
    }

    v431 = &v428[v430];
    v432 = v429 - v430;
    if (v432 >= v432 - 1)
    {
      --v432;
    }

    v424[8] = v431;
    v424[9] = v432;
  }

  v433 = *(v424 + 22);
  if (v433 > *(v424 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v424 + 10), (v424 + 12), v433, 16);
    LODWORD(v433) = *(v424 + 22);
  }

  *(v424 + 22) = v433;
  v435 = a1[2];
  v434 = a1[3];
  if (v435 >= v434)
  {
    v437 = a1[1];
    v438 = v435 - v437;
    v439 = (v435 - v437) >> 3;
    v440 = v439 + 1;
    if ((v439 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v441 = v434 - v437;
    if (v441 >> 2 > v440)
    {
      v440 = v441 >> 2;
    }

    if (v441 >= 0x7FFFFFFFFFFFFFF8)
    {
      v442 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v442 = v440;
    }

    if (v442)
    {
      if (v442 >> 61)
      {
        goto LABEL_939;
      }

      v443 = operator new(8 * v442);
    }

    else
    {
      v443 = 0;
    }

    v444 = &v443[8 * v439];
    *v444 = v424;
    v436 = v444 + 8;
    memcpy(v443, v437, v438);
    a1[1] = v443;
    a1[2] = v436;
    a1[3] = &v443[8 * v442];
    if (v437)
    {
      operator delete(v437);
    }
  }

  else
  {
    *v435 = v424;
    v436 = v435 + 8;
  }

  a1[2] = v436;
  v445 = operator new(0x60uLL);
  v446 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v445 + 1), "mps.transpose", 13, v761, v446, 0, 0);
  *v445 = &unk_1F5AFBAE0;
  if (!v445[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeTranspose]";
    v762 = 105;
    v447 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v447)
    {
      v448 = v447;
    }

    else
    {
      v448 = v762;
    }

    v449 = &v761[v448];
    v450 = v762 - v448;
    if (v762 - v448 >= 0x12)
    {
      v451 = 18;
    }

    else
    {
      v451 = v762 - v448;
    }

    v452 = &v449[v451];
    v453 = v450 - v451;
    if (v453 >= v453 - 1)
    {
      --v453;
    }

    v445[8] = v452;
    v445[9] = v453;
  }

  v454 = *(v445 + 22);
  if (v454 > *(v445 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v445 + 10), (v445 + 12), v454, 16);
    LODWORD(v454) = *(v445 + 22);
  }

  *(v445 + 22) = v454;
  v456 = a1[2];
  v455 = a1[3];
  if (v456 >= v455)
  {
    v458 = a1[1];
    v459 = v456 - v458;
    v460 = (v456 - v458) >> 3;
    v461 = v460 + 1;
    if ((v460 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v462 = v455 - v458;
    if (v462 >> 2 > v461)
    {
      v461 = v462 >> 2;
    }

    if (v462 >= 0x7FFFFFFFFFFFFFF8)
    {
      v463 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v463 = v461;
    }

    if (v463)
    {
      if (v463 >> 61)
      {
        goto LABEL_939;
      }

      v464 = operator new(8 * v463);
    }

    else
    {
      v464 = 0;
    }

    v465 = &v464[8 * v460];
    *v465 = v445;
    v457 = v465 + 8;
    memcpy(v464, v458, v459);
    a1[1] = v464;
    a1[2] = v457;
    a1[3] = &v464[8 * v463];
    if (v458)
    {
      operator delete(v458);
    }
  }

  else
  {
    *v456 = v445;
    v457 = v456 + 8;
  }

  a1[2] = v457;
  v466 = operator new(0x60uLL);
  v467 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v466 + 1), "mps.permute", 11, v761, v467, 0, 0);
  *v466 = &unk_1F5AFBB38;
  if (!v466[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizePermute]";
    v762 = 103;
    v468 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v468)
    {
      v469 = v468;
    }

    else
    {
      v469 = v762;
    }

    v470 = &v761[v469];
    v471 = v762 - v469;
    if (v762 - v469 >= 0x12)
    {
      v472 = 18;
    }

    else
    {
      v472 = v762 - v469;
    }

    v473 = &v470[v472];
    v474 = v471 - v472;
    if (v474 >= v474 - 1)
    {
      --v474;
    }

    v466[8] = v473;
    v466[9] = v474;
  }

  v475 = *(v466 + 22);
  if (v475 > *(v466 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v466 + 10), (v466 + 12), v475, 16);
    LODWORD(v475) = *(v466 + 22);
  }

  *(v466 + 22) = v475;
  v477 = a1[2];
  v476 = a1[3];
  if (v477 >= v476)
  {
    v479 = a1[1];
    v480 = v477 - v479;
    v481 = (v477 - v479) >> 3;
    v482 = v481 + 1;
    if ((v481 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v483 = v476 - v479;
    if (v483 >> 2 > v482)
    {
      v482 = v483 >> 2;
    }

    if (v483 >= 0x7FFFFFFFFFFFFFF8)
    {
      v484 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v484 = v482;
    }

    if (v484)
    {
      if (v484 >> 61)
      {
        goto LABEL_939;
      }

      v485 = operator new(8 * v484);
    }

    else
    {
      v485 = 0;
    }

    v486 = &v485[8 * v481];
    *v486 = v466;
    v478 = v486 + 8;
    memcpy(v485, v479, v480);
    a1[1] = v485;
    a1[2] = v478;
    a1[3] = &v485[8 * v484];
    if (v479)
    {
      operator delete(v479);
    }
  }

  else
  {
    *v477 = v466;
    v478 = v477 + 8;
  }

  a1[2] = v478;
  v487 = operator new(0x60uLL);
  v488 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v487 + 1), "mps.identity", 12, v761, v488, 0, 0);
  *v487 = &unk_1F5AFBB90;
  if (!v487[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeIdentity]";
    v762 = 104;
    v489 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v489)
    {
      v490 = v489;
    }

    else
    {
      v490 = v762;
    }

    v491 = &v761[v490];
    v492 = v762 - v490;
    if (v762 - v490 >= 0x12)
    {
      v493 = 18;
    }

    else
    {
      v493 = v762 - v490;
    }

    v494 = &v491[v493];
    v495 = v492 - v493;
    if (v495 >= v495 - 1)
    {
      --v495;
    }

    v487[8] = v494;
    v487[9] = v495;
  }

  v496 = *(v487 + 22);
  if (v496 > *(v487 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v487 + 10), (v487 + 12), v496, 16);
    LODWORD(v496) = *(v487 + 22);
  }

  *(v487 + 22) = v496;
  v498 = a1[2];
  v497 = a1[3];
  if (v498 >= v497)
  {
    v500 = a1[1];
    v501 = v498 - v500;
    v502 = (v498 - v500) >> 3;
    v503 = v502 + 1;
    if ((v502 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v504 = v497 - v500;
    if (v504 >> 2 > v503)
    {
      v503 = v504 >> 2;
    }

    if (v504 >= 0x7FFFFFFFFFFFFFF8)
    {
      v505 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v505 = v503;
    }

    if (v505)
    {
      if (v505 >> 61)
      {
        goto LABEL_939;
      }

      v506 = operator new(8 * v505);
    }

    else
    {
      v506 = 0;
    }

    v507 = &v506[8 * v502];
    *v507 = v487;
    v499 = v507 + 8;
    memcpy(v506, v500, v501);
    a1[1] = v506;
    a1[2] = v499;
    a1[3] = &v506[8 * v505];
    if (v500)
    {
      operator delete(v500);
    }
  }

  else
  {
    *v498 = v487;
    v499 = v498 + 8;
  }

  a1[2] = v499;
  v508 = operator new(0x60uLL);
  v509 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v508 + 1), "mps.concat", 10, v761, v509, 0, 0);
  *v508 = &unk_1F5AFBBE8;
  if (!v508[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConcat]";
    v762 = 102;
    v510 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v510)
    {
      v511 = v510;
    }

    else
    {
      v511 = v762;
    }

    v512 = &v761[v511];
    v513 = v762 - v511;
    if (v762 - v511 >= 0x12)
    {
      v514 = 18;
    }

    else
    {
      v514 = v762 - v511;
    }

    v515 = &v512[v514];
    v516 = v513 - v514;
    if (v516 >= v516 - 1)
    {
      --v516;
    }

    v508[8] = v515;
    v508[9] = v516;
  }

  v517 = *(v508 + 22);
  if (v517 > *(v508 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v508 + 10), (v508 + 12), v517, 16);
    LODWORD(v517) = *(v508 + 22);
  }

  *(v508 + 22) = v517;
  v519 = a1[2];
  v518 = a1[3];
  if (v519 >= v518)
  {
    v521 = a1[1];
    v522 = v519 - v521;
    v523 = (v519 - v521) >> 3;
    v524 = v523 + 1;
    if ((v523 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v525 = v518 - v521;
    if (v525 >> 2 > v524)
    {
      v524 = v525 >> 2;
    }

    if (v525 >= 0x7FFFFFFFFFFFFFF8)
    {
      v526 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v526 = v524;
    }

    if (v526)
    {
      if (v526 >> 61)
      {
        goto LABEL_939;
      }

      v527 = operator new(8 * v526);
    }

    else
    {
      v527 = 0;
    }

    v528 = &v527[8 * v523];
    *v528 = v508;
    v520 = v528 + 8;
    memcpy(v527, v521, v522);
    a1[1] = v527;
    a1[2] = v520;
    a1[3] = &v527[8 * v526];
    if (v521)
    {
      operator delete(v521);
    }
  }

  else
  {
    *v519 = v508;
    v520 = v519 + 8;
  }

  a1[2] = v520;
  v529 = operator new(0x60uLL);
  v530 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v529 + 1), v761, v530, 0, 0);
  *v529 = &unk_1F5AFBC40;
  if (!v529[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeOpsWith0Dims]";
    v762 = 108;
    v531 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v531)
    {
      v532 = v531;
    }

    else
    {
      v532 = v762;
    }

    v533 = &v761[v532];
    v534 = v762 - v532;
    if (v762 - v532 >= 0x12)
    {
      v535 = 18;
    }

    else
    {
      v535 = v762 - v532;
    }

    v536 = &v533[v535];
    v537 = v534 - v535;
    if (v537 >= v537 - 1)
    {
      --v537;
    }

    v529[8] = v536;
    v529[9] = v537;
  }

  v538 = *(v529 + 22);
  if (v538 > *(v529 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v529 + 10), (v529 + 12), v538, 16);
    LODWORD(v538) = *(v529 + 22);
  }

  *(v529 + 22) = v538;
  v540 = a1[2];
  v539 = a1[3];
  if (v540 >= v539)
  {
    v542 = a1[1];
    v543 = v540 - v542;
    v544 = (v540 - v542) >> 3;
    v545 = v544 + 1;
    if ((v544 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v546 = v539 - v542;
    if (v546 >> 2 > v545)
    {
      v545 = v546 >> 2;
    }

    if (v546 >= 0x7FFFFFFFFFFFFFF8)
    {
      v547 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v547 = v545;
    }

    if (v547)
    {
      if (v547 >> 61)
      {
        goto LABEL_939;
      }

      v548 = operator new(8 * v547);
    }

    else
    {
      v548 = 0;
    }

    v549 = &v548[8 * v544];
    *v549 = v529;
    v541 = v549 + 8;
    memcpy(v548, v542, v543);
    a1[1] = v548;
    a1[2] = v541;
    a1[3] = &v548[8 * v547];
    if (v542)
    {
      operator delete(v542);
    }
  }

  else
  {
    *v540 = v529;
    v541 = v540 + 8;
  }

  a1[2] = v541;
  v550 = operator new(0x60uLL);
  v551 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v550 + 1), "mps.fast_fourier_transform", 26, v761, v551, 0, 0);
  *v550 = &unk_1F5AFBC80;
  if (!v550[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CastToFFT]";
    v762 = 93;
    v552 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v552)
    {
      v553 = v552;
    }

    else
    {
      v553 = v762;
    }

    v554 = &v761[v553];
    v555 = v762 - v553;
    if (v762 - v553 >= 0x12)
    {
      v556 = 18;
    }

    else
    {
      v556 = v762 - v553;
    }

    v557 = &v554[v556];
    v558 = v555 - v556;
    if (v558 >= v558 - 1)
    {
      --v558;
    }

    v550[8] = v557;
    v550[9] = v558;
  }

  v559 = *(v550 + 22);
  if (v559 > *(v550 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v550 + 10), (v550 + 12), v559, 16);
    LODWORD(v559) = *(v550 + 22);
  }

  *(v550 + 22) = v559;
  v561 = a1[2];
  v560 = a1[3];
  if (v561 >= v560)
  {
    v563 = a1[1];
    v564 = v561 - v563;
    v565 = (v561 - v563) >> 3;
    v566 = v565 + 1;
    if ((v565 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v567 = v560 - v563;
    if (v567 >> 2 > v566)
    {
      v566 = v567 >> 2;
    }

    if (v567 >= 0x7FFFFFFFFFFFFFF8)
    {
      v568 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v568 = v566;
    }

    if (v568)
    {
      if (v568 >> 61)
      {
        goto LABEL_939;
      }

      v569 = operator new(8 * v568);
    }

    else
    {
      v569 = 0;
    }

    v570 = &v569[8 * v565];
    *v570 = v550;
    v562 = v570 + 8;
    memcpy(v569, v563, v564);
    a1[1] = v569;
    a1[2] = v562;
    a1[3] = &v569[8 * v568];
    if (v563)
    {
      operator delete(v563);
    }
  }

  else
  {
    *v561 = v550;
    v562 = v561 + 8;
  }

  a1[2] = v562;
  v571 = operator new(0x60uLL);
  v572 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v571 + 1), "mps.reduction_max", 17, v761, v572, 0, 0);
  *v571 = &unk_1F5AFBCD8;
  if (!v571[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeNoOpReduction<mlir::mps::ReductionMaxOp>]";
    v762 = 136;
    v573 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v573)
    {
      v574 = v573;
    }

    else
    {
      v574 = v762;
    }

    v575 = &v761[v574];
    v576 = v762 - v574;
    if (v762 - v574 >= 0x12)
    {
      v577 = 18;
    }

    else
    {
      v577 = v762 - v574;
    }

    v578 = &v575[v577];
    v579 = v576 - v577;
    if (v579 >= v579 - 1)
    {
      --v579;
    }

    v571[8] = v578;
    v571[9] = v579;
  }

  v580 = *(v571 + 22);
  if (v580 > *(v571 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v571 + 10), (v571 + 12), v580, 16);
    LODWORD(v580) = *(v571 + 22);
  }

  *(v571 + 22) = v580;
  v582 = a1[2];
  v581 = a1[3];
  if (v582 >= v581)
  {
    v584 = a1[1];
    v585 = v582 - v584;
    v586 = (v582 - v584) >> 3;
    v587 = v586 + 1;
    if ((v586 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v588 = v581 - v584;
    if (v588 >> 2 > v587)
    {
      v587 = v588 >> 2;
    }

    if (v588 >= 0x7FFFFFFFFFFFFFF8)
    {
      v589 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v589 = v587;
    }

    if (v589)
    {
      if (v589 >> 61)
      {
        goto LABEL_939;
      }

      v590 = operator new(8 * v589);
    }

    else
    {
      v590 = 0;
    }

    v591 = &v590[8 * v586];
    *v591 = v571;
    v583 = v591 + 8;
    memcpy(v590, v584, v585);
    a1[1] = v590;
    a1[2] = v583;
    a1[3] = &v590[8 * v589];
    if (v584)
    {
      operator delete(v584);
    }
  }

  else
  {
    *v582 = v571;
    v583 = v582 + 8;
  }

  a1[2] = v583;
  v592 = operator new(0x60uLL);
  v593 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v592 + 1), "mps.reduction_min", 17, v761, v593, 0, 0);
  *v592 = &unk_1F5AFBD30;
  if (!v592[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeNoOpReduction<mlir::mps::ReductionMinOp>]";
    v762 = 136;
    v594 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v594)
    {
      v595 = v594;
    }

    else
    {
      v595 = v762;
    }

    v596 = &v761[v595];
    v597 = v762 - v595;
    if (v762 - v595 >= 0x12)
    {
      v598 = 18;
    }

    else
    {
      v598 = v762 - v595;
    }

    v599 = &v596[v598];
    v600 = v597 - v598;
    if (v600 >= v600 - 1)
    {
      --v600;
    }

    v592[8] = v599;
    v592[9] = v600;
  }

  v601 = *(v592 + 22);
  if (v601 > *(v592 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v592 + 10), (v592 + 12), v601, 16);
    LODWORD(v601) = *(v592 + 22);
  }

  *(v592 + 22) = v601;
  v603 = a1[2];
  v602 = a1[3];
  if (v603 >= v602)
  {
    v605 = a1[1];
    v606 = v603 - v605;
    v607 = (v603 - v605) >> 3;
    v608 = v607 + 1;
    if ((v607 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v609 = v602 - v605;
    if (v609 >> 2 > v608)
    {
      v608 = v609 >> 2;
    }

    if (v609 >= 0x7FFFFFFFFFFFFFF8)
    {
      v610 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v610 = v608;
    }

    if (v610)
    {
      if (v610 >> 61)
      {
        goto LABEL_939;
      }

      v611 = operator new(8 * v610);
    }

    else
    {
      v611 = 0;
    }

    v612 = &v611[8 * v607];
    *v612 = v592;
    v604 = v612 + 8;
    memcpy(v611, v605, v606);
    a1[1] = v611;
    a1[2] = v604;
    a1[3] = &v611[8 * v610];
    if (v605)
    {
      operator delete(v605);
    }
  }

  else
  {
    *v603 = v592;
    v604 = v603 + 8;
  }

  a1[2] = v604;
  v613 = operator new(0x60uLL);
  v614 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v613 + 1), "mps.reduction_prod", 18, v761, v614, 0, 0);
  *v613 = &unk_1F5AFBD88;
  if (!v613[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeNoOpReduction<mlir::mps::ReductionProdOp>]";
    v762 = 137;
    v615 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v615)
    {
      v616 = v615;
    }

    else
    {
      v616 = v762;
    }

    v617 = &v761[v616];
    v618 = v762 - v616;
    if (v762 - v616 >= 0x12)
    {
      v619 = 18;
    }

    else
    {
      v619 = v762 - v616;
    }

    v620 = &v617[v619];
    v621 = v618 - v619;
    if (v621 >= v621 - 1)
    {
      --v621;
    }

    v613[8] = v620;
    v613[9] = v621;
  }

  v622 = *(v613 + 22);
  if (v622 > *(v613 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v613 + 10), (v613 + 12), v622, 16);
    LODWORD(v622) = *(v613 + 22);
  }

  *(v613 + 22) = v622;
  v624 = a1[2];
  v623 = a1[3];
  if (v624 >= v623)
  {
    v626 = a1[1];
    v627 = v624 - v626;
    v628 = (v624 - v626) >> 3;
    v629 = v628 + 1;
    if ((v628 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v630 = v623 - v626;
    if (v630 >> 2 > v629)
    {
      v629 = v630 >> 2;
    }

    if (v630 >= 0x7FFFFFFFFFFFFFF8)
    {
      v631 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v631 = v629;
    }

    if (v631)
    {
      if (v631 >> 61)
      {
        goto LABEL_939;
      }

      v632 = operator new(8 * v631);
    }

    else
    {
      v632 = 0;
    }

    v633 = &v632[8 * v628];
    *v633 = v613;
    v625 = v633 + 8;
    memcpy(v632, v626, v627);
    a1[1] = v632;
    a1[2] = v625;
    a1[3] = &v632[8 * v631];
    if (v626)
    {
      operator delete(v626);
    }
  }

  else
  {
    *v624 = v613;
    v625 = v624 + 8;
  }

  a1[2] = v625;
  v634 = operator new(0x60uLL);
  v635 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v634 + 1), "mps.reduction_sum", 17, v761, v635, 0, 0);
  *v634 = &unk_1F5AFBDE0;
  if (!v634[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeNoOpReduction<mlir::mps::ReductionSumOp>]";
    v762 = 136;
    v636 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v636)
    {
      v637 = v636;
    }

    else
    {
      v637 = v762;
    }

    v638 = &v761[v637];
    v639 = v762 - v637;
    if (v762 - v637 >= 0x12)
    {
      v640 = 18;
    }

    else
    {
      v640 = v762 - v637;
    }

    v641 = &v638[v640];
    v642 = v639 - v640;
    if (v642 >= v642 - 1)
    {
      --v642;
    }

    v634[8] = v641;
    v634[9] = v642;
  }

  v643 = *(v634 + 22);
  if (v643 > *(v634 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v634 + 10), (v634 + 12), v643, 16);
    LODWORD(v643) = *(v634 + 22);
  }

  *(v634 + 22) = v643;
  v645 = a1[2];
  v644 = a1[3];
  if (v645 >= v644)
  {
    v647 = a1[1];
    v648 = v645 - v647;
    v649 = (v645 - v647) >> 3;
    v650 = v649 + 1;
    if ((v649 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v651 = v644 - v647;
    if (v651 >> 2 > v650)
    {
      v650 = v651 >> 2;
    }

    if (v651 >= 0x7FFFFFFFFFFFFFF8)
    {
      v652 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v652 = v650;
    }

    if (v652)
    {
      if (v652 >> 61)
      {
        goto LABEL_939;
      }

      v653 = operator new(8 * v652);
    }

    else
    {
      v653 = 0;
    }

    v654 = &v653[8 * v649];
    *v654 = v634;
    v646 = v654 + 8;
    memcpy(v653, v647, v648);
    a1[1] = v653;
    a1[2] = v646;
    a1[3] = &v653[8 * v652];
    if (v647)
    {
      operator delete(v647);
    }
  }

  else
  {
    *v645 = v634;
    v646 = v645 + 8;
  }

  a1[2] = v646;
  v655 = operator new(0x60uLL);
  v656 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v655 + 1), "mps.reshape", 11, v761, v656, 0, 0);
  *v655 = &unk_1F5AFBE38;
  if (!v655[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMatMulExpandSqueezeBinary<mlir::mps::AddOp>]";
    v762 = 139;
    v657 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v657)
    {
      v658 = v657;
    }

    else
    {
      v658 = v762;
    }

    v659 = &v761[v658];
    v660 = v762 - v658;
    if (v762 - v658 >= 0x12)
    {
      v661 = 18;
    }

    else
    {
      v661 = v762 - v658;
    }

    v662 = &v659[v661];
    v663 = v660 - v661;
    if (v663 >= v663 - 1)
    {
      --v663;
    }

    v655[8] = v662;
    v655[9] = v663;
  }

  v664 = *(v655 + 22);
  if (v664 > *(v655 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v655 + 10), (v655 + 12), v664, 16);
    LODWORD(v664) = *(v655 + 22);
  }

  *(v655 + 22) = v664;
  v666 = a1[2];
  v665 = a1[3];
  if (v666 >= v665)
  {
    v668 = a1[1];
    v669 = v666 - v668;
    v670 = (v666 - v668) >> 3;
    v671 = v670 + 1;
    if ((v670 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v672 = v665 - v668;
    if (v672 >> 2 > v671)
    {
      v671 = v672 >> 2;
    }

    if (v672 >= 0x7FFFFFFFFFFFFFF8)
    {
      v673 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v673 = v671;
    }

    if (v673)
    {
      if (v673 >> 61)
      {
        goto LABEL_939;
      }

      v674 = operator new(8 * v673);
    }

    else
    {
      v674 = 0;
    }

    v675 = &v674[8 * v670];
    *v675 = v655;
    v667 = v675 + 8;
    memcpy(v674, v668, v669);
    a1[1] = v674;
    a1[2] = v667;
    a1[3] = &v674[8 * v673];
    if (v668)
    {
      operator delete(v668);
    }
  }

  else
  {
    *v666 = v655;
    v667 = v666 + 8;
  }

  a1[2] = v667;
  v676 = operator new(0x60uLL);
  v677 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v676 + 1), "mps.reshape", 11, v761, v677, 0, 0);
  *v676 = &unk_1F5AFBE90;
  if (!v676[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMatMulExpandSqueezeUnary<mlir::mps::ReluOp>]";
    v762 = 139;
    v678 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v678)
    {
      v679 = v678;
    }

    else
    {
      v679 = v762;
    }

    v680 = &v761[v679];
    v681 = v762 - v679;
    if (v762 - v679 >= 0x12)
    {
      v682 = 18;
    }

    else
    {
      v682 = v762 - v679;
    }

    v683 = &v680[v682];
    v684 = v681 - v682;
    if (v684 >= v684 - 1)
    {
      --v684;
    }

    v676[8] = v683;
    v676[9] = v684;
  }

  v685 = *(v676 + 22);
  if (v685 > *(v676 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v676 + 10), (v676 + 12), v685, 16);
    LODWORD(v685) = *(v676 + 22);
  }

  *(v676 + 22) = v685;
  v687 = a1[2];
  v686 = a1[3];
  if (v687 >= v686)
  {
    v689 = a1[1];
    v690 = v687 - v689;
    v691 = (v687 - v689) >> 3;
    v692 = v691 + 1;
    if ((v691 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v693 = v686 - v689;
    if (v693 >> 2 > v692)
    {
      v692 = v693 >> 2;
    }

    if (v693 >= 0x7FFFFFFFFFFFFFF8)
    {
      v694 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v694 = v692;
    }

    if (v694)
    {
      if (v694 >> 61)
      {
        goto LABEL_939;
      }

      v695 = operator new(8 * v694);
    }

    else
    {
      v695 = 0;
    }

    v696 = &v695[8 * v691];
    *v696 = v676;
    v688 = v696 + 8;
    memcpy(v695, v689, v690);
    a1[1] = v695;
    a1[2] = v688;
    a1[3] = &v695[8 * v694];
    if (v689)
    {
      operator delete(v689);
    }
  }

  else
  {
    *v687 = v676;
    v688 = v687 + 8;
  }

  a1[2] = v688;
  v697 = operator new(0x60uLL);
  v698 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 100);
  mlir::Pattern::Pattern((v697 + 1), "mps.divide", 10, v761, v698, 0, 0);
  *v697 = &unk_1F5AFBEE8;
  if (!v697[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeSoftMax]";
    v762 = 103;
    v699 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v699)
    {
      v700 = v699;
    }

    else
    {
      v700 = v762;
    }

    v701 = &v761[v700];
    v702 = v762 - v700;
    if (v762 - v700 >= 0x12)
    {
      v703 = 18;
    }

    else
    {
      v703 = v762 - v700;
    }

    v704 = &v701[v703];
    v705 = v702 - v703;
    if (v705 >= v705 - 1)
    {
      --v705;
    }

    v697[8] = v704;
    v697[9] = v705;
  }

  v706 = *(v697 + 22);
  if (v706 > *(v697 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v697 + 10), (v697 + 12), v706, 16);
    LODWORD(v706) = *(v697 + 22);
  }

  *(v697 + 22) = v706;
  v708 = a1[2];
  v707 = a1[3];
  if (v708 >= v707)
  {
    v710 = a1[1];
    v711 = v708 - v710;
    v712 = (v708 - v710) >> 3;
    v713 = v712 + 1;
    if ((v712 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v714 = v707 - v710;
    if (v714 >> 2 > v713)
    {
      v713 = v714 >> 2;
    }

    if (v714 >= 0x7FFFFFFFFFFFFFF8)
    {
      v715 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v715 = v713;
    }

    if (v715)
    {
      if (v715 >> 61)
      {
        goto LABEL_939;
      }

      v716 = operator new(8 * v715);
    }

    else
    {
      v716 = 0;
    }

    v717 = &v716[8 * v712];
    *v717 = v697;
    v709 = v717 + 8;
    memcpy(v716, v710, v711);
    a1[1] = v716;
    a1[2] = v709;
    a1[3] = &v716[8 * v715];
    if (v710)
    {
      operator delete(v710);
    }
  }

  else
  {
    *v708 = v697;
    v709 = v708 + 8;
  }

  a1[2] = v709;
  v718 = operator new(0x60uLL);
  v719 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 100);
  mlir::Pattern::Pattern((v718 + 1), "mps.tile", 8, v761, v719, 0, 0);
  *v718 = &unk_1F5AFBF40;
  if (!v718[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeTileAsBroadcast]";
    v762 = 111;
    v720 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v720)
    {
      v721 = v720;
    }

    else
    {
      v721 = v762;
    }

    v722 = &v761[v721];
    v723 = v762 - v721;
    if (v762 - v721 >= 0x12)
    {
      v724 = 18;
    }

    else
    {
      v724 = v762 - v721;
    }

    v725 = &v722[v724];
    v726 = v723 - v724;
    if (v726 >= v726 - 1)
    {
      --v726;
    }

    v718[8] = v725;
    v718[9] = v726;
  }

  v727 = *(v718 + 22);
  if (v727 > *(v718 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v718 + 10), (v718 + 12), v727, 16);
    LODWORD(v727) = *(v718 + 22);
  }

  *(v718 + 22) = v727;
  v729 = a1[2];
  v728 = a1[3];
  if (v729 >= v728)
  {
    v731 = a1[1];
    v732 = v729 - v731;
    v733 = (v729 - v731) >> 3;
    v734 = v733 + 1;
    if ((v733 + 1) >> 61)
    {
      goto LABEL_938;
    }

    v735 = v728 - v731;
    if (v735 >> 2 > v734)
    {
      v734 = v735 >> 2;
    }

    if (v735 >= 0x7FFFFFFFFFFFFFF8)
    {
      v736 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v736 = v734;
    }

    if (v736)
    {
      if (v736 >> 61)
      {
        goto LABEL_939;
      }

      v737 = operator new(8 * v736);
    }

    else
    {
      v737 = 0;
    }

    v738 = &v737[8 * v733];
    *v738 = v718;
    v730 = v738 + 8;
    memcpy(v737, v731, v732);
    a1[1] = v737;
    a1[2] = v730;
    a1[3] = &v737[8 * v736];
    if (v731)
    {
      operator delete(v731);
    }
  }

  else
  {
    *v729 = v718;
    v730 = v729 + 8;
  }

  a1[2] = v730;
  v739 = operator new(0x60uLL);
  v740 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v761, 1);
  mlir::Pattern::Pattern((v739 + 1), "tensor.from_elements", 20, v761, v740, 0, 0);
  *v739 = &unk_1F5AFBF98;
  if (!v739[9])
  {
    v761 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeTensorFromElements]";
    v762 = 114;
    v741 = llvm::StringRef::find(&v761, "DesiredTypeName = ", 0x12uLL, 0);
    if (v762 >= v741)
    {
      v742 = v741;
    }

    else
    {
      v742 = v762;
    }

    v743 = &v761[v742];
    v744 = v762 - v742;
    if (v762 - v742 >= 0x12)
    {
      v745 = 18;
    }

    else
    {
      v745 = v762 - v742;
    }

    v746 = &v743[v745];
    v747 = v744 - v745;
    if (v747 >= v747 - 1)
    {
      --v747;
    }

    v739[8] = v746;
    v739[9] = v747;
  }

  v748 = *(v739 + 22);
  if (v748 > *(v739 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v739 + 10), (v739 + 12), v748, 16);
    LODWORD(v748) = *(v739 + 22);
  }

  *(v739 + 22) = v748;
  v750 = a1[2];
  v749 = a1[3];
  if (v750 < v749)
  {
    *v750 = v739;
    v751 = v750 + 8;
    goto LABEL_937;
  }

  v752 = a1[1];
  v753 = v750 - v752;
  v754 = (v750 - v752) >> 3;
  v755 = v754 + 1;
  if ((v754 + 1) >> 61)
  {
LABEL_938:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v756 = v749 - v752;
  if (v756 >> 2 > v755)
  {
    v755 = v756 >> 2;
  }

  if (v756 >= 0x7FFFFFFFFFFFFFF8)
  {
    v757 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v757 = v755;
  }

  if (v757)
  {
    if (!(v757 >> 61))
    {
      v758 = operator new(8 * v757);
      goto LABEL_935;
    }

LABEL_939:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v758 = 0;
LABEL_935:
  v759 = &v758[8 * v754];
  *v759 = v739;
  v751 = v759 + 8;
  memcpy(v758, v752, v753);
  a1[1] = v758;
  a1[2] = v751;
  a1[3] = &v758[8 * v757];
  if (v752)
  {
    operator delete(v752);
  }

LABEL_937:
  a1[2] = v751;
  return a1;
}

void *mlir::mps::anonymous namespace::CanonicalizePadToConv2DOp<mlir::mps::Conv2DOp>::~CanonicalizePadToConv2DOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizePadToConv2DOp<mlir::mps::Conv2DOp>::~CanonicalizePadToConv2DOp(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizePadToConv2DOp<mlir::mps::Conv2DOp>::matchAndRewrite(uint64_t a1, void *a2, uint64_t a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  if (mlir::mps::Conv3DOp::getPaddingStyle(&v52) == 4 || mlir::mps::Conv3DOp::getPaddingStyle(&v52) == 2)
  {
    v59 = "failed: convolution op already specifies TF_SAME or ONNX_SAME_LOWER padding";
    v61[8] = 259;
    v4 = v52;
    v56 = &v59;
    v5 = *(a3 + 16);
    if (v5)
    {
      if (mlir::RewriterBase::Listener::classof(*(a3 + 16)))
      {
        (*(*v5 + 88))(v5, v4[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v56);
      }
    }

    return 0;
  }

  v59 = *(v52[9] + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v59);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
    {
      v7 = DefiningOp;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v62 != 1)
  {
    return 0;
  }

  v56 = v58;
  v57 = 0x600000000;
  v8 = v60;
  if (v60)
  {
    if (v60 < 7)
    {
      v10 = v58;
      v9 = v60;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v60, 8);
      v9 = v60;
      if (!v60)
      {
LABEL_20:
        LODWORD(v57) = v8;
        goto LABEL_21;
      }

      v10 = v56;
    }

    memcpy(v10, v59, 8 * v9);
    goto LABEL_20;
  }

LABEL_21:
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v52);
  if (StorageType == 1)
  {
    if (!v57)
    {
      goto LABEL_39;
    }

    v13 = 0;
    v14 = 8 * v57;
    while (v13 > 9 || ((1 << v13) & 0x303) == 0 || !v56[v13])
    {
      ++v13;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

  if (StorageType)
  {
    v15 = "failure: incompatible value for TensorDataLayout";
LABEL_43:
    v55[8] = 259;
    v19 = v52;
    v53 = v54;
    v54[0] = v15;
    v20 = *(a3 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
      (*(*v20 + 88))(v20, v19[3], llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::Conv2DOp &>(mlir::mps::Conv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v53);
    }

    result = 0;
    goto LABEL_61;
  }

  if (v57 && (*v56 || v57 != 1 && (v56[1] || v57 != 2 && (v56[2] || v57 != 3 && v56[3]))))
  {
LABEL_38:
    v15 = "failed: pad is specified along a batch or channel dimension";
    goto LABEL_43;
  }

LABEL_39:
  if (!mlir::mps::Conv3DOp::getPaddingStyle(&v52))
  {
    v54[0] = v55;
    v54[1] = 0x600000000;
    Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v52);
    if (Rewriter)
    {
      v17 = Rewriter;
      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
      Rewriter = v17;
    }

    else
    {
      v18 = 0;
    }

    mlir::getIntValues<unsigned long long>(Rewriter, v18, v54, 1);
    v21 = LODWORD(v54[1]);
    v22 = v54[0];
    if (LODWORD(v54[1]))
    {
      v23 = v56;
      if (LODWORD(v54[1]) <= 5 || v56 < (v54[0] + 8 * LODWORD(v54[1])) && v54[0] < &v56[LODWORD(v54[1])])
      {
        v24 = 0;
LABEL_53:
        v25 = v21 - v24;
        v26 = v24;
        v27 = &v22[8 * v24];
        v28 = &v23[v26];
        do
        {
          v29 = *v27;
          v27 += 8;
          *v28 = *v28 + v29;
          ++v28;
          --v25;
        }

        while (v25);
        goto LABEL_55;
      }

      v24 = v54[1] & 0xFFFFFFFC;
      v40 = (v54[0] + 16);
      v41 = (v56 + 2);
      v42 = v24;
      do
      {
        v43 = vaddq_s64(*v41, *v40);
        v41[-1] = vaddq_s64(v41[-1], v40[-1]);
        *v41 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 4;
      }

      while (v42);
      if (v24 != v21)
      {
        goto LABEL_53;
      }
    }

LABEL_55:
    if (v22 != v55)
    {
      free(v22);
    }
  }

  *v54 = xmmword_1E097BBD0;
  IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
  v31 = mlir::RankedTensorType::get(v54, 2, IntegerType, 0);
  if (v31)
  {
    v32 = v31;
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    v31 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = mlir::DenseElementsAttr::getFromRawBuffer(v31, v33, v56, 8 * v57, 8, 1, 0);
  v35 = v52;
  v53 = v34;
  v54[0] = v52;
  v36 = *(*(v7 + 72) + 24);
  v50 = *(v52[9] + 56);
  v51 = v36;
  Groups = mlir::mps::Conv3DOp::getGroups(v54);
  Strides = mlir::mps::Conv3DOp::getStrides(&v52);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v52);
  v46 = 0;
  v45 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v52);
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v52);
  v37 = mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>((a3 + 8), v35[3], &v51, &v50, &Groups, &Strides, &InputAttributeNames, &v53, &v46, &v45, &WeightsLayout);
  (*(*a3 + 8))(a3, v35, v37);
  result = 1;
LABEL_61:
  if (v56 != v58)
  {
    v38 = result;
    free(v56);
    result = v38;
  }

  if ((v62 & 1) != 0 && v59 != v61)
  {
    v39 = result;
    free(v59);
    return v39;
  }

  return result;
}

void mlir::mps::anonymous namespace::tryGetPaddingValues(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[6] = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (a1 && !mlir::mps::MaterializeSparseTensorOp::getStorageType(&v4) && mlir::isConstantFPZero(*(*(v4 + 72) + 88)))
  {
    v5 = v7;
    v6 = 0x600000000;
    if (mlir::matchConstantWithIntVector<unsigned long long>(*(*(v4 + 72) + 56), &v5))
    {
      *a2 = a2 + 16;
      *(a2 + 8) = 0x600000000;
      if (v6)
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(a2, &v5);
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
      *a2 = 0;
    }

    *(a2 + 64) = v3;
    if (v5 != v7)
    {
      free(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

float mlir::getIntValues<unsigned long long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92[5] = *MEMORY[0x1E69E9840];
  *&v87 = a1;
  *(&v87 + 1) = a2;
  if (!mlir::ElementsAttr::isSplat(&v87) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v87, *(&v87 + 1));
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, NumElements, 8);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 8 * v7), 8 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  v8 = *a3;
  v90 = v87;
  Type = mlir::ElementsAttr::getType(&v90);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v89[0] = v10;
  v89[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v89);
  v11 = mlir::ElementsAttr::isSplat(&v90);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v90);
  v14 = v13;
  if (!v11 || a4)
  {
    v16 = mlir::ElementsAttr::getNumElements(v90, *(&v90 + 1));
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_31;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      if (v16 >= 2)
      {
        v22 = 0;
        v21 = v16 & 0x7FFFFFFFFFFFFFFELL;
        v23 = v8 + 1;
        do
        {
          if (v11)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (v11)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          v26 = *&ElementsAttrRawData[2 * v25];
          *(v23 - 1) = *&ElementsAttrRawData[2 * v24];
          *v23 = v26;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_198;
      }

      goto LABEL_40;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_57;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_64;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_80;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_96;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_116;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_127;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_134;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_150;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_165;
    }

LABEL_167:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v11)
      {
        v63 = 1;
      }

      else
      {
        v63 = v16;
      }

      llvm::SmallVector<char,40u>::SmallVector(v91, v63);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v14, v91[0], v91[1]);
      v64 = v91[0];
      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (v11)
          {
            v66 = 0;
          }

          else
          {
            v66 = i;
          }

          v8[i] = v64[v66];
        }
      }

      if (v64 != v92)
      {
        free(v64);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v14, v8, v16, IntOrFloatBitWidth);
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_20:
    for (j = 0; j != v16; ++j)
    {
      if (v11)
      {
        v18 = 0;
      }

      else
      {
        v18 = j;
      }

      v8[j] = ElementsAttrRawData[v18];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_31:
    for (k = 0; k != v16; ++k)
    {
      if (v11)
      {
        v20 = 0;
      }

      else
      {
        v20 = k;
      }

      v8[k] = ElementsAttrRawData[v20];
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_40:
    v21 = 0;
    do
    {
      if (v11)
      {
        v78 = 0;
      }

      else
      {
        v78 = v21;
      }

      v8[v21++] = *&ElementsAttrRawData[2 * v78];
LABEL_198:
      ;
    }

    while (v16 != v21);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_57:
    if (v16 >= 2)
    {
      v29 = 0;
      v27 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v30 = v8 + 1;
      do
      {
        if (v11)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        if (v11)
        {
          v32 = 0;
        }

        else
        {
          v32 = v29 + 1;
        }

        v33 = *&ElementsAttrRawData[2 * v32];
        *(v30 - 1) = *&ElementsAttrRawData[2 * v31];
        *v30 = v33;
        v30 += 2;
        v29 += 2;
      }

      while (v29 != v27);
      goto LABEL_203;
    }

    v27 = 0;
    do
    {
      if (v11)
      {
        v79 = 0;
      }

      else
      {
        v79 = v27;
      }

      v8[v27++] = *&ElementsAttrRawData[2 * v79];
LABEL_203:
      ;
    }

    while (v16 != v27);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_64:
    if (v16 >= 2)
    {
      v35 = 0;
      v28 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v36 = v8 + 1;
      do
      {
        if (v11)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        if (v11)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 + 1;
        }

        v39 = *&ElementsAttrRawData[4 * v38];
        *(v36 - 1) = *&ElementsAttrRawData[4 * v37];
        *v36 = v39;
        v36 += 2;
        v35 += 2;
      }

      while (v35 != v28);
      goto LABEL_208;
    }

    v28 = 0;
    do
    {
      if (v11)
      {
        v80 = 0;
      }

      else
      {
        v80 = v28;
      }

      v8[v28++] = *&ElementsAttrRawData[4 * v80];
LABEL_208:
      ;
    }

    while (v16 != v28);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_80:
    if (v16 >= 2)
    {
      v42 = 0;
      v34 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v43 = v8 + 1;
      do
      {
        if (v11)
        {
          v44 = 0;
        }

        else
        {
          v44 = v42;
        }

        if (v11)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42 + 1;
        }

        v46 = *&ElementsAttrRawData[4 * v45];
        *(v43 - 1) = *&ElementsAttrRawData[4 * v44];
        *v43 = v46;
        v43 += 2;
        v42 += 2;
      }

      while (v42 != v34);
      goto LABEL_213;
    }

    v34 = 0;
    do
    {
      if (v11)
      {
        v81 = 0;
      }

      else
      {
        v81 = v34;
      }

      v8[v34++] = *&ElementsAttrRawData[4 * v81];
LABEL_213:
      ;
    }

    while (v16 != v34);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_96:
    for (m = 0; m != v16; ++m)
    {
      if (v11)
      {
        v41 = 0;
      }

      else
      {
        v41 = m;
      }

      v8[m] = *&ElementsAttrRawData[8 * v41];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_116:
    for (n = 0; n != v16; ++n)
    {
      if (v11)
      {
        v48 = 0;
      }

      else
      {
        v48 = n;
      }

      v8[n] = *&ElementsAttrRawData[8 * v48];
    }

    return *&v15;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    v16 = 1;
LABEL_127:
    if (v16 >= 2)
    {
      v51 = 0;
      v49 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v52 = v8 + 1;
      do
      {
        if (v11)
        {
          v53 = 0;
        }

        else
        {
          v53 = v51;
        }

        if (v11)
        {
          v54 = 0;
        }

        else
        {
          v54 = v51 + 1;
        }

        LOWORD(v15) = *&ElementsAttrRawData[2 * v53];
        v55 = *&ElementsAttrRawData[2 * v54];
        *(v52 - 1) = *&v15;
        *v52 = v55;
        v52 += 2;
        v51 += 2;
      }

      while (v51 != v49);
      goto LABEL_218;
    }

    v49 = 0;
    do
    {
      if (v11)
      {
        v82 = 0;
      }

      else
      {
        v82 = v49;
      }

      LOWORD(v15) = *&ElementsAttrRawData[2 * v82];
      v8[v49++] = *&v15;
LABEL_218:
      ;
    }

    while (v16 != v49);
    return *&v15;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    v16 = 1;
LABEL_134:
    if (v16 >= 2)
    {
      v57 = 0;
      v50 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v58 = v8 + 1;
      do
      {
        if (v11)
        {
          v59 = 0;
        }

        else
        {
          v59 = v57;
        }

        if (v11)
        {
          v60 = 0;
        }

        else
        {
          v60 = v57 + 1;
        }

        LODWORD(v15) = *&ElementsAttrRawData[4 * v59];
        v61 = *&ElementsAttrRawData[4 * v60];
        *(v58 - 1) = *&v15;
        *v58 = v61;
        v58 += 2;
        v57 += 2;
      }

      while (v57 != v50);
      goto LABEL_223;
    }

    v50 = 0;
    do
    {
      if (v11)
      {
        v83 = 0;
      }

      else
      {
        v83 = v50;
      }

      LODWORD(v15) = *&ElementsAttrRawData[4 * v83];
      v8[v50++] = *&v15;
LABEL_223:
      ;
    }

    while (v16 != v50);
    return *&v15;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    v16 = 1;
LABEL_150:
    if (v16 >= 2)
    {
      v67 = 0;
      v56 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v68 = v8 + 1;
      do
      {
        if (v11)
        {
          v69 = 0;
        }

        else
        {
          v69 = v67;
        }

        if (v11)
        {
          v70 = 0;
        }

        else
        {
          v70 = v67 + 1;
        }

        v15 = *&ElementsAttrRawData[8 * v69];
        v71 = *&ElementsAttrRawData[8 * v70];
        *(v68 - 1) = v15;
        *v68 = v71;
        v68 += 2;
        v67 += 2;
      }

      while (v67 != v56);
      goto LABEL_228;
    }

    v56 = 0;
    do
    {
      if (v11)
      {
        v84 = 0;
      }

      else
      {
        v84 = v56;
      }

      v15 = *&ElementsAttrRawData[8 * v84];
      v8[v56++] = v15;
LABEL_228:
      ;
    }

    while (v16 != v56);
    return *&v15;
  }

  v16 = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_167;
  }

LABEL_165:
  if (v16 >= 2)
  {
    v73 = 0;
    v62 = v16 & 0x7FFFFFFFFFFFFFFELL;
    v74 = v8 + 1;
    do
    {
      if (v11)
      {
        v75 = 0;
      }

      else
      {
        v75 = v73;
      }

      if (v11)
      {
        v76 = 0;
      }

      else
      {
        v76 = v73 + 1;
      }

      LODWORD(v15) = *&ElementsAttrRawData[2 * v75] << 16;
      v77 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v76] << 16);
      *(v74 - 1) = *&v15;
      *v74 = v77;
      v74 += 2;
      v73 += 2;
    }

    while (v73 != v62);
    goto LABEL_233;
  }

  v62 = 0;
  do
  {
    if (v11)
    {
      v85 = 0;
    }

    else
    {
      v85 = v62;
    }

    LODWORD(v15) = *&ElementsAttrRawData[2 * v85] << 16;
    v8[v62++] = *&v15;
LABEL_233:
    ;
  }

  while (v16 != v62);
  return *&v15;
}

uint64_t mlir::matchConstantWithIntVector<unsigned long long>(uint64_t a1, uint64_t a2)
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

  mlir::getIntValues<unsigned long long>(v8, v9, a2, 1);
  return 1;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::DenseElementsAttr::operator mlir::ElementsAttr();
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
      if (v7 < mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id)
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

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(void **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = (*v8[0] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
    {
      v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    result = v5 != 0;
    if (v5)
    {
      v7 = *a1;
      if (*a1)
      {
        *v7 = v5;
        v7[1] = v6;
      }
    }

    if (v8[0] != v9)
    {
      free(v8[0]);
      return v5 != 0;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<unsigned long long>::operator=(uint64_t result, const void **a2)
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
        memmove(*result, *a2, 8 * v7);
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
        memmove(*result, *a2, 8 * v8);
        a2 = v12;
LABEL_16:
        v13 = *v6 - v8;
        if (v13)
        {
          memcpy((*v10 + 8 * v8), *a2 + 8 * v8, 8 * v13);
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
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 8);
      a2 = v9;
    }

    v8 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::SmallVector<char,40u>::SmallVector(uint64_t result, unint64_t a2)
{
  v2 = a2;
  *result = result + 24;
  *(result + 8) = xmmword_1E09700D0;
  if (a2)
  {
    if (a2 < 0x29)
    {
      v4 = 0;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(result, (result + 24), a2, 1);
      result = v3;
      v4 = *(v3 + 8);
      a2 = v2 - v4;
      if (v2 == v4)
      {
        goto LABEL_7;
      }
    }

    v5 = result;
    bzero((*result + v4), a2);
    result = v5;
LABEL_7:
    *(result + 8) = v2;
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackBooleanData(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v4 = (a3 + 3);
    do
    {
      if (a4)
      {
        if (a4 >= 8)
        {
          v5 = 8;
        }

        else
        {
          v5 = a4;
        }

        if (v5 <= 1)
        {
          v6 = 1;
        }

        else
        {
          v6 = v5;
        }

        v7 = *result;
        v8 = vdupq_n_s64(v6 - 1);
        v9 = vmovn_s64(vcgeq_u64(v8, xmmword_1E09700F0));
        if (vuzp1_s8(vuzp1_s16(v9, 0), 0).u8[0])
        {
          *(v4 - 3) = v7 & 1;
        }

        if (vuzp1_s8(vuzp1_s16(v9, 0), 0).i8[1])
        {
          *(v4 - 2) = (v7 & 2) != 0;
        }

        if (vuzp1_s8(vuzp1_s16(0, vmovn_s64(vcgeq_u64(v8, xmmword_1E096E650))), 0).i8[2])
        {
          *(v4 - 1) = (v7 & 4) != 0;
          *v4 = (v7 & 8) != 0;
        }

        v10 = vmovn_s64(vcgeq_u64(v8, xmmword_1E097BBE0));
        if (vuzp1_s8(0, vuzp1_s16(v10, 0)).i32[1])
        {
          v4[1] = (v7 & 0x10) != 0;
        }

        if (vuzp1_s8(0, vuzp1_s16(v10, 0)).i8[5])
        {
          v4[2] = (v7 & 0x20) != 0;
        }

        if (vuzp1_s8(0, vuzp1_s16(0, vmovn_s64(vcgeq_u64(v8, xmmword_1E096E670)))).i8[6])
        {
          v4[3] = (v7 & 0x40) != 0;
          v4[4] = v7 >> 7;
        }
      }

      a4 -= 8;
      ++result;
      v4 += 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned long long>(unsigned __int8 *result, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = &a3[v9 * v11];
      v15 = vdupq_n_s64(v12 - 1);
      v16 = vmovn_s64(vcgeq_u64(v15, xmmword_1E09700F0));
      if (v16.i8[0])
      {
        *v14 = v10 & v13;
      }

      if (v16.i8[4])
      {
        v14[1] = (v13 >> a5) & v10;
      }

      v17 = (v12 + 1) & 0x1E;
      if (v17 == 2)
      {
        goto LABEL_13;
      }

      v18 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0970220));
      if (v18.i8[0])
      {
        v14[2] = (v13 >> (2 * a5)) & v10;
        if (v18.i8[4])
        {
LABEL_28:
          v14[3] = (v13 >> (3 * a5)) & v10;
          if (v17 == 4)
          {
            goto LABEL_13;
          }

          goto LABEL_29;
        }
      }

      else if (v18.i8[4])
      {
        goto LABEL_28;
      }

      if (v17 == 4)
      {
        goto LABEL_13;
      }

LABEL_29:
      v19 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0970230));
      if (v19.i8[0])
      {
        v14[4] = (v13 >> (4 * a5)) & v10;
        if ((v19.i8[4] & 1) == 0)
        {
LABEL_31:
          if (v17 != 6)
          {
            goto LABEL_35;
          }

          goto LABEL_13;
        }
      }

      else if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_31;
      }

      v14[5] = (v13 >> (5 * a5)) & v10;
      if (v17 != 6)
      {
LABEL_35:
        v20 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0971C10));
        if (v20.i8[0])
        {
          v14[6] = (v13 >> (6 * a5)) & v10;
        }

        if (v20.i8[4])
        {
          v14[7] = (v13 >> (7 * a5)) & v10;
        }
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, unsigned int *a9, unsigned int *a10, unsigned int *a11)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v20);
  mlir::mps::Conv2DOp::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

void *mlir::mps::anonymous namespace::CanonicalizePadToConv2DOp<mlir::mps::DepthwiseConv2DOp>::~CanonicalizePadToConv2DOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizePadToConv2DOp<mlir::mps::DepthwiseConv2DOp>::~CanonicalizePadToConv2DOp(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizePadToConv2DOp<mlir::mps::DepthwiseConv2DOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v50 = a2;
  if (mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v50) == 4 || mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v50) == 2)
  {
    v57 = "failed: convolution op already specifies TF_SAME or ONNX_SAME_LOWER padding";
    v59[8] = 259;
    v4 = v50;
    v54 = &v57;
    v5 = *(a3 + 16);
    if (v5)
    {
      if (mlir::RewriterBase::Listener::classof(*(a3 + 16)))
      {
        (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::DepthwiseConv2DOp &>(mlir::mps::DepthwiseConv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v54);
      }
    }

    return 0;
  }

  v57 = *(*(v50 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v57);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
    {
      v7 = DefiningOp;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v60 != 1)
  {
    return 0;
  }

  v54 = v56;
  v55 = 0x600000000;
  v8 = v58;
  if (v58)
  {
    if (v58 < 7)
    {
      v10 = v56;
      v9 = v58;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v56, v58, 8);
      v9 = v58;
      if (!v58)
      {
LABEL_20:
        LODWORD(v55) = v8;
        goto LABEL_21;
      }

      v10 = v54;
    }

    memcpy(v10, v57, 8 * v9);
    goto LABEL_20;
  }

LABEL_21:
  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v50);
  if (StorageType == 1)
  {
    if (!v55)
    {
      goto LABEL_39;
    }

    v13 = 0;
    v14 = 8 * v55;
    while (v13 > 9 || ((1 << v13) & 0x303) == 0 || !*(v54 + v13))
    {
      ++v13;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

  if (StorageType)
  {
    v15 = "failure: incompatible value for TensorDataLayout";
LABEL_43:
    v53[8] = 259;
    v19 = v50;
    v51 = v52;
    v52[0] = v15;
    v20 = *(a3 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(v20))
    {
      (*(*v20 + 88))(v20, *(v19 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::DepthwiseConv2DOp &>(mlir::mps::DepthwiseConv2DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v51);
    }

    result = 0;
    goto LABEL_61;
  }

  if (v55 && (*v54 || v55 != 1 && (*(v54 + 1) || v55 != 2 && (*(v54 + 2) || v55 != 3 && *(v54 + 3)))))
  {
LABEL_38:
    v15 = "failed: pad is specified along a batch or channel dimension";
    goto LABEL_43;
  }

LABEL_39:
  if (!mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v50))
  {
    v52[0] = v53;
    v52[1] = 0x600000000;
    Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v50);
    if (Rewriter)
    {
      v17 = Rewriter;
      v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
      Rewriter = v17;
    }

    else
    {
      v18 = 0;
    }

    mlir::getIntValues<unsigned long long>(Rewriter, v18, v52, 1);
    v21 = LODWORD(v52[1]);
    v22 = v52[0];
    if (LODWORD(v52[1]))
    {
      v23 = v54;
      if (LODWORD(v52[1]) <= 5 || v54 < v52[0] + 8 * LODWORD(v52[1]) && v52[0] < v54 + 8 * LODWORD(v52[1]))
      {
        v24 = 0;
LABEL_53:
        v25 = v21 - v24;
        v26 = 8 * v24;
        v27 = &v22[8 * v24];
        v28 = &v23[v26];
        do
        {
          v29 = *v27;
          v27 += 8;
          *v28 += v29;
          v28 += 8;
          --v25;
        }

        while (v25);
        goto LABEL_55;
      }

      v24 = v52[1] & 0xFFFFFFFC;
      v40 = (v52[0] + 16);
      v41 = (v54 + 16);
      v42 = v24;
      do
      {
        v43 = vaddq_s64(*v41, *v40);
        v41[-1] = vaddq_s64(v41[-1], v40[-1]);
        *v41 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 4;
      }

      while (v42);
      if (v24 != v21)
      {
        goto LABEL_53;
      }
    }

LABEL_55:
    if (v22 != v53)
    {
      free(v22);
    }
  }

  *v52 = xmmword_1E097BBD0;
  IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
  v31 = mlir::RankedTensorType::get(v52, 2, IntegerType, 0);
  if (v31)
  {
    v32 = v31;
    v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    v31 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = mlir::DenseElementsAttr::getFromRawBuffer(v31, v33, v54, 8 * v55, 8, 1, 0);
  v35 = v50;
  v36 = *(*(v7 + 72) + 24);
  v51 = v34;
  v52[0] = v36;
  v49 = *(*(v50 + 72) + 56);
  Strides = mlir::mps::ColToImOp::getStrides(&v50);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v50);
  v46 = 0;
  v45 = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v50);
  PaddingStyle = mlir::mps::StencilOp::getPaddingStyle(&v50);
  v37 = mlir::OpBuilder::create<mlir::mps::DepthwiseConv2DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>((a3 + 8), *(v35 + 24), v52, &v49, &Strides, &InputAttributeNames, &v51, &v46, &v45, &PaddingStyle);
  (*(*a3 + 8))(a3, v35, v37);
  result = 1;
LABEL_61:
  if (v54 != v56)
  {
    v38 = result;
    free(v54);
    result = v38;
  }

  if ((v60 & 1) != 0 && v57 != v59)
  {
    v39 = result;
    free(v57);
    return v39;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DepthwiseConv2DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10)
{
  v27[38] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v19 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id, Context);
  if ((v20 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DepthwiseConv2DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(v27, v26, v25);
  }

  mlir::OperationState::OperationState(v27, a2, v19);
  mlir::mps::DepthwiseConv2DOp::build(a1, v27, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id)
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

void mlir::mps::anonymous namespace::CanonicalizePadToConv3DOp::~CanonicalizePadToConv3DOp(mlir::mps::_anonymous_namespace_::CanonicalizePadToConv3DOp *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizePadToConv3DOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v47 = a2;
  if (mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v47) == 4 || mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v47) == 2)
  {
    v54 = "failed: convolution op already specifies TF_SAME or ONNX_SAME_LOWER padding";
    v56[8] = 259;
    v4 = v47;
    __dst = &v54;
    v5 = *(a3 + 16);
    if (v5)
    {
      if (mlir::RewriterBase::Listener::classof(v5))
      {
        (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::DepthwiseConv3DOp &>(mlir::mps::DepthwiseConv3DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__dst);
      }
    }

    return 0;
  }

  v54 = *(*(v47 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v54);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
    {
      v7 = DefiningOp;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v57 != 1)
  {
    return 0;
  }

  __dst = v53;
  v52 = 0x600000000;
  v8 = v55;
  if (!v55)
  {
    goto LABEL_26;
  }

  if (v55 >= 7uLL)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v53, v55, 8);
    v10 = v55;
    if (!v55)
    {
      goto LABEL_20;
    }

    v9 = __dst;
  }

  else
  {
    v9 = v53;
    v10 = v55;
  }

  memcpy(v9, v54, 8 * v10);
LABEL_20:
  LODWORD(v52) = v8;
  if (*__dst)
  {
    goto LABEL_21;
  }

  if (v8 != 1)
  {
    if (*(__dst + 1))
    {
      goto LABEL_21;
    }

    if (v8 == 2)
    {
      goto LABEL_26;
    }

    if (*(__dst + 2))
    {
      goto LABEL_21;
    }

    if (v8 == 3)
    {
      goto LABEL_26;
    }

    if (*(__dst + 3))
    {
LABEL_21:
      v48 = "failed: pad is specified along a batch or channel dimension";
      v50[8] = 259;
      v12 = v47;
      v58[0] = &v48;
      v13 = *(a3 + 16);
      if (v13 && mlir::RewriterBase::Listener::classof(v13))
      {
        (*(*v13 + 88))(v13, *(v12 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::mps::DepthwiseConv3DOp &>(mlir::mps::DepthwiseConv3DOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v58);
      }

      result = 0;
      goto LABEL_50;
    }

    if (v8 >= 7)
    {
      do
      {
        v38 = __dst;
        v48 = v50;
        v49 = 0x600000000;
        v39 = 8 * v8 - 8;
        if (v39 < 0x31)
        {
          v40 = 0;
          v41 = v50;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v50, v39 >> 3, 8);
          v40 = v49;
          v41 = v48;
        }

        memcpy(&v41[4 * v40], v38 + 8, v39);
        LODWORD(v49) = v49 + (v39 >> 3);
        llvm::SmallVectorImpl<unsigned long long>::operator=(&__dst, &v48);
        if (v48 != v50)
        {
          free(v48);
        }

        v8 = v52;
      }

      while (v52 > 6);
    }
  }

LABEL_26:
  if (!mlir::mps::DepthwiseConv2DDataGradientOp::getPaddingStyle(&v47))
  {
    v48 = v50;
    v49 = 0x600000000;
    Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v47);
    if (Rewriter)
    {
      v15 = Rewriter;
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
      Rewriter = v15;
    }

    else
    {
      v16 = 0;
    }

    mlir::getIntValues<unsigned long long>(Rewriter, v16, &v48, 1);
    v17 = v49;
    v18 = v48;
    if (v49)
    {
      v19 = __dst;
      if (v49 <= 5 || __dst < v48 + 8 * v49 && v48 < __dst + 8 * v49)
      {
        v20 = 0;
LABEL_42:
        v21 = v17 - v20;
        v22 = 8 * v20;
        v23 = &v18[8 * v20];
        v24 = &v19[v22];
        do
        {
          v25 = *v23;
          v23 += 8;
          *v24 += v25;
          v24 += 8;
          --v21;
        }

        while (v21);
        goto LABEL_44;
      }

      v20 = v49 & 0xFFFFFFFC;
      v34 = (v48 + 16);
      v35 = (__dst + 16);
      v36 = v20;
      do
      {
        v37 = vaddq_s64(*v35, *v34);
        v35[-1] = vaddq_s64(v35[-1], v34[-1]);
        *v35 = v37;
        v34 += 2;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      if (v20 != v17)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    if (v18 != v50)
    {
      free(v18);
    }
  }

  v58[0] = 6;
  IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 0);
  v27 = mlir::RankedTensorType::get(v58, 1, IntegerType, 0);
  if (v27)
  {
    v28 = v27;
    v29 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v27 + 8);
    v27 = v28;
  }

  else
  {
    v29 = 0;
  }

  v48 = mlir::DenseElementsAttr::getFromRawBuffer(v27, v29, __dst, 8 * v52, 8, 1, 0);
  v30 = v47;
  v58[0] = *(*(v7 + 72) + 24);
  v46 = *(*(v47 + 72) + 56);
  Strides = mlir::mps::ColToImOp::getStrides(&v47);
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v47);
  v43 = 0;
  ChannelAxis = mlir::mps::DepthwiseConv3DDataGradientOp::getChannelAxis(&v47);
  v31 = mlir::OpBuilder::create<mlir::mps::DepthwiseConv3DOp,mlir::Value,mlir::Value,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,int>((a3 + 8), *(v30 + 24), v58, &v46, &Strides, &InputAttributeNames, &v48, &v43, &ChannelAxis);
  (*(*a3 + 8))(a3, v30, v31);
  result = 1;
LABEL_50:
  if (__dst != v53)
  {
    v32 = result;
    free(__dst);
    result = v32;
  }

  if ((v57 & 1) != 0 && v54 != v56)
  {
    v33 = result;
    free(v54);
    return v33;
  }

  return result;
}