void mlir::detail::constructContainerOpForParserIfNecessary<mlir::ModuleOp>(uint64_t a1@<X0>, mlir::StringAttr *a2@<X1>, uint64_t a3@<X2>, unsigned int **a4@<X8>)
{
  v6 = *(a1 + 40);
  v7 = (a1 + 32);
  if (v6 != a1 + 32 && *(v6 + 8) == v7 && (v8 = a3, v9 = a2, v10 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v6, a2), a2 = v9, a3 = v8, *(v10[6] + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id))
  {
    v21 = v10;
    mlir::Operation::remove(v10);
    *a4 = v21;
  }

  else
  {
    v23[0] = a2;
    memset(&v23[1], 0, 24);
    v11 = mlir::OpBuilder::create<mlir::ModuleOp>(v23, a3);
    v13 = v11[10];
    v12 = v11[11];
    v22 = v11;
    v14 = *(((&v11[4 * ((v12 >> 23) & 1) + 17] + ((v12 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v13 + 8);
    if (v14)
    {
      v15 = v14 - 8;
    }

    else
    {
      v15 = 0;
    }

    if (*v7 != v7)
    {
      v16 = *(v15 + 40);
      if (v7 != v16)
      {
        v17 = *(a1 + 40);
        llvm::ilist_traits<mlir::Operation>::transferNodesFromList(v15 + 32, v7, v17, v7);
        if (v17 != v7)
        {
          v18 = *v7;
          v19 = *v17;
          *(v19 + 8) = v7;
          *v7 = v19;
          v20 = *v16;
          v18[1] = v16;
          *v17 = v20;
          *(v20 + 8) = v17;
          *v16 = v18;
        }
      }
    }

    if (!mlir::ModuleOp::verifyInvariants(&v22))
    {
      mlir::Operation::erase(v11);
      v11 = 0;
    }

    *a4 = v11;
  }
}

void mlir::mps::MPSSerializationPass::~MPSSerializationPass(mlir::mps::MPSSerializationPass *this)
{
  mlir::Pass::~Pass(this);

  operator delete(v1);
}

const char *mlir::PassWrapper<mlir::mps::MPSSerializationPass,mlir::OperationPass<mlir::mps::serialization::ModuleOp>>::getName()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MPSSerializationPass]";
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

void *mlir::mps::MPSSerializationPass::getDependentDialects(mlir::mps::MPSSerializationPass *this, uint64_t **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = &unk_1F5AFAFA8;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_1F5AFAE60;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_1F5AFAEF0;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_1F5AFB360;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v12);
  result = v13;
  if (v13 == v12)
  {
    result = (*(*v13 + 32))(v13);
    v5 = *(this + 44);
    if (!v5)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v13)
  {
    result = (*(*v13 + 40))();
  }

  v5 = *(this + 44);
  if (v5)
  {
LABEL_19:
    v6 = *(this + 43);
    v7 = &v6[3 * v5];
    v8 = v6;
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12[0] = &unk_1F5B2DD08;
      v12[1] = v6;
      v13 = v12;
      mlir::DialectRegistry::insert(a2, v9, v10, v11, v12);
      result = v13;
      if (v13 == v12)
      {
        result = (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        result = (*(*v13 + 40))();
      }

      v8 += 3;
      v6 += 3;
    }

    while (v8 != v7);
  }

  return result;
}

void mlir::mps::MPSSerializationPass::runOnOperation(mlir::mps::MPSSerializationPass *this)
{
  v177 = *MEMORY[0x1E69E9840];
  v153[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v153[1], 0, 24);
  v2 = *(this + 5);
  v163[0] = v153;
  v154[0] = v163;
  mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps20MPSSerializationPass14runOnOperationEvEUlNS1_4func6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, v154, 1);
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v163[1] = 0;
  v163[2] = 0;
  v163[0] = &unk_1F5AFD7B0;
  v164 = 0;
  v169 = 0;
  v170 = 0;
  v165 = v167;
  v166 = 0;
  v167[0] = 0;
  v167[1] = 0;
  v168 = 0;
  v171 = 0x1000000000;
  v172 = 0;
  v173 = 0;
  v174 = 0x2800000000;
  v175 = 0;
  v176 = Context;
  v154[0] = &v154[2];
  v154[2] = "mps";
  v154[3] = 3;
  v154[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v163, &v154[2], 1, 0);
  if (v154[0] != &v154[2])
  {
    free(v154[0]);
  }

  v4 = *(this + 44);
  if (v4)
  {
    v5 = (*(this + 43) + 8);
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      v154[0] = &v154[2];
      *&v154[2] = v7;
      v154[1] = 0x200000001;
      mlir::ConversionTarget::setDialectAction(v163, &v154[2], 1, 0);
      if (v154[0] != &v154[2])
      {
        free(v154[0]);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }

  v154[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v154[1], 0, 32);
  v154[5] = v155;
  v154[6] = 0x600000000;
  v155[6] = 0;
  v155[7] = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v161 = 0;
  v162 = 0x2800000000;
  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v159 = 0x2800000000;
  v160 = 0;
  v9 = mlir::Attribute::getContext((v8 + 24));
  v10 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v150, 1);
  mlir::Pattern::Pattern((v10 + 1), "scf.for", 7, v150[0], v9, 0, 0);
  v10[12] = 0;
  *v10 = &unk_1F5B2DD88;
  if (v10[9])
  {
    v11 = *(v10 + 22);
    if (v11 <= *(v10 + 23))
    {
      goto LABEL_10;
    }
  }

  else
  {
    *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertForOp<mlir::scf::ForOp, mlir::mps::serialization::ForOp>]";
    *(&v150[0] + 1) = 147;
    v15 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v150[0] + 1) >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = *(&v150[0] + 1);
    }

    v17 = *&v150[0] + v16;
    v18 = *(&v150[0] + 1) - v16;
    if (*(&v150[0] + 1) - v16 >= 0x12)
    {
      v19 = 18;
    }

    else
    {
      v19 = *(&v150[0] + 1) - v16;
    }

    v20 = v17 + v19;
    v21 = v18 - v19;
    if (v21 >= v21 - 1)
    {
      --v21;
    }

    v10[8] = v20;
    v10[9] = v21;
    v11 = *(v10 + 22);
    if (v11 <= *(v10 + 23))
    {
LABEL_10:
      *(v10 + 22) = v11;
      v13 = v154[2];
      v12 = v154[3];
      if (v154[2] < v154[3])
      {
LABEL_11:
        *v13 = v10;
        v14 = v13 + 8;
        goto LABEL_34;
      }

LABEL_22:
      v22 = v154[1];
      v23 = v13 - v154[1];
      v24 = (v13 - v154[1]) >> 3;
      v25 = v24 + 1;
      if ((v24 + 1) >> 61)
      {
        goto LABEL_191;
      }

      v26 = v12 - v154[1];
      if (v26 >> 2 > v25)
      {
        v25 = v26 >> 2;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 >> 61)
        {
          goto LABEL_192;
        }

        v28 = operator new(8 * v27);
      }

      else
      {
        v28 = 0;
      }

      v29 = &v28[8 * v24];
      *v29 = v10;
      v14 = v29 + 8;
      memcpy(v28, v22, v23);
      v154[1] = v28;
      v154[2] = v14;
      v154[3] = &v28[8 * v27];
      if (v22)
      {
        operator delete(v22);
      }

LABEL_34:
      v154[2] = v14;
      v30 = operator new(0x68uLL);
      mlir::PatternBenefit::PatternBenefit(v150, 1);
      mlir::Pattern::Pattern((v30 + 1), "scf.while", 9, v150[0], v9, 0, 0);
      v30[12] = 0;
      *v30 = &unk_1F5B2DE20;
      if (v30[9])
      {
        v31 = *(v30 + 22);
        if (v31 <= *(v30 + 23))
        {
          goto LABEL_36;
        }
      }

      else
      {
        *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertWhileOp<mlir::scf::WhileOp, mlir::mps::serialization::WhileOp>]";
        *(&v150[0] + 1) = 153;
        v35 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
        if (*(&v150[0] + 1) >= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = *(&v150[0] + 1);
        }

        v37 = *&v150[0] + v36;
        v38 = *(&v150[0] + 1) - v36;
        if (*(&v150[0] + 1) - v36 >= 0x12)
        {
          v39 = 18;
        }

        else
        {
          v39 = *(&v150[0] + 1) - v36;
        }

        v40 = v37 + v39;
        v41 = v38 - v39;
        if (v41 >= v41 - 1)
        {
          --v41;
        }

        v30[8] = v40;
        v30[9] = v41;
        v31 = *(v30 + 22);
        if (v31 <= *(v30 + 23))
        {
LABEL_36:
          *(v30 + 22) = v31;
          v33 = v154[2];
          v32 = v154[3];
          if (v154[2] < v154[3])
          {
LABEL_37:
            *v33 = v30;
            v34 = v33 + 8;
            goto LABEL_60;
          }

LABEL_48:
          v42 = v154[1];
          v43 = v33 - v154[1];
          v44 = (v33 - v154[1]) >> 3;
          v45 = v44 + 1;
          if ((v44 + 1) >> 61)
          {
            goto LABEL_191;
          }

          v46 = v32 - v154[1];
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            if (v47 >> 61)
            {
              goto LABEL_192;
            }

            v48 = operator new(8 * v47);
          }

          else
          {
            v48 = 0;
          }

          v49 = &v48[8 * v44];
          *v49 = v30;
          v34 = v49 + 8;
          memcpy(v48, v42, v43);
          v154[1] = v48;
          v154[2] = v34;
          v154[3] = &v48[8 * v47];
          if (v42)
          {
            operator delete(v42);
          }

LABEL_60:
          v154[2] = v34;
          v50 = operator new(0x68uLL);
          mlir::PatternBenefit::PatternBenefit(v150, 1);
          mlir::Pattern::Pattern((v50 + 1), "scf.if", 6, v150[0], v9, 0, 0);
          v50[12] = 0;
          *v50 = &unk_1F5B2DEB8;
          if (v50[9])
          {
            v51 = *(v50 + 22);
            if (v51 <= *(v50 + 23))
            {
              goto LABEL_62;
            }
          }

          else
          {
            *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertIfOp<mlir::scf::IfOp, mlir::mps::serialization::IfOp>]";
            *(&v150[0] + 1) = 144;
            v55 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
            if (*(&v150[0] + 1) >= v55)
            {
              v56 = v55;
            }

            else
            {
              v56 = *(&v150[0] + 1);
            }

            v57 = *&v150[0] + v56;
            v58 = *(&v150[0] + 1) - v56;
            if (*(&v150[0] + 1) - v56 >= 0x12)
            {
              v59 = 18;
            }

            else
            {
              v59 = *(&v150[0] + 1) - v56;
            }

            v60 = v57 + v59;
            v61 = v58 - v59;
            if (v61 >= v61 - 1)
            {
              --v61;
            }

            v50[8] = v60;
            v50[9] = v61;
            v51 = *(v50 + 22);
            if (v51 <= *(v50 + 23))
            {
LABEL_62:
              *(v50 + 22) = v51;
              v53 = v154[2];
              v52 = v154[3];
              if (v154[2] < v154[3])
              {
LABEL_63:
                *v53 = v50;
                v54 = v53 + 8;
                goto LABEL_86;
              }

LABEL_74:
              v62 = v154[1];
              v63 = v53 - v154[1];
              v64 = (v53 - v154[1]) >> 3;
              v65 = v64 + 1;
              if ((v64 + 1) >> 61)
              {
                goto LABEL_191;
              }

              v66 = v52 - v154[1];
              if (v66 >> 2 > v65)
              {
                v65 = v66 >> 2;
              }

              if (v66 >= 0x7FFFFFFFFFFFFFF8)
              {
                v67 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v67 = v65;
              }

              if (v67)
              {
                if (v67 >> 61)
                {
                  goto LABEL_192;
                }

                v68 = operator new(8 * v67);
              }

              else
              {
                v68 = 0;
              }

              v69 = &v68[8 * v64];
              *v69 = v50;
              v54 = v69 + 8;
              memcpy(v68, v62, v63);
              v154[1] = v68;
              v154[2] = v54;
              v154[3] = &v68[8 * v67];
              if (v62)
              {
                operator delete(v62);
              }

LABEL_86:
              v154[2] = v54;
              v70 = operator new(0x68uLL);
              mlir::PatternBenefit::PatternBenefit(v150, 1);
              mlir::Pattern::Pattern((v70 + 1), "scf.condition", 13, v150[0], v9, 0, 0);
              v70[12] = 0;
              *v70 = &unk_1F5B2DF50;
              if (v70[9])
              {
                v71 = *(v70 + 22);
                if (v71 <= *(v70 + 23))
                {
                  goto LABEL_88;
                }
              }

              else
              {
                *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertConditionOp<mlir::scf::ConditionOp, mlir::mps::serialization::ConditionOp>]";
                *(&v150[0] + 1) = 165;
                v75 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                if (*(&v150[0] + 1) >= v75)
                {
                  v76 = v75;
                }

                else
                {
                  v76 = *(&v150[0] + 1);
                }

                v77 = *&v150[0] + v76;
                v78 = *(&v150[0] + 1) - v76;
                if (*(&v150[0] + 1) - v76 >= 0x12)
                {
                  v79 = 18;
                }

                else
                {
                  v79 = *(&v150[0] + 1) - v76;
                }

                v80 = v77 + v79;
                v81 = v78 - v79;
                if (v81 >= v81 - 1)
                {
                  --v81;
                }

                v70[8] = v80;
                v70[9] = v81;
                v71 = *(v70 + 22);
                if (v71 <= *(v70 + 23))
                {
LABEL_88:
                  *(v70 + 22) = v71;
                  v73 = v154[2];
                  v72 = v154[3];
                  if (v154[2] < v154[3])
                  {
LABEL_89:
                    *v73 = v70;
                    v74 = v73 + 8;
                    goto LABEL_112;
                  }

LABEL_100:
                  v82 = v154[1];
                  v83 = v73 - v154[1];
                  v84 = (v73 - v154[1]) >> 3;
                  v85 = v84 + 1;
                  if ((v84 + 1) >> 61)
                  {
                    goto LABEL_191;
                  }

                  v86 = v72 - v154[1];
                  if (v86 >> 2 > v85)
                  {
                    v85 = v86 >> 2;
                  }

                  if (v86 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v87 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v87 = v85;
                  }

                  if (v87)
                  {
                    if (v87 >> 61)
                    {
                      goto LABEL_192;
                    }

                    v88 = operator new(8 * v87);
                  }

                  else
                  {
                    v88 = 0;
                  }

                  v89 = &v88[8 * v84];
                  *v89 = v70;
                  v74 = v89 + 8;
                  memcpy(v88, v82, v83);
                  v154[1] = v88;
                  v154[2] = v74;
                  v154[3] = &v88[8 * v87];
                  if (v82)
                  {
                    operator delete(v82);
                  }

LABEL_112:
                  v154[2] = v74;
                  v90 = operator new(0x68uLL);
                  mlir::PatternBenefit::PatternBenefit(v150, 1);
                  mlir::Pattern::Pattern((v90 + 1), "scf.yield", 9, v150[0], v9, 0, 0);
                  v90[12] = 0;
                  *v90 = &unk_1F5B2DFE8;
                  if (v90[9])
                  {
                    v91 = *(v90 + 22);
                    if (v91 <= *(v90 + 23))
                    {
                      goto LABEL_114;
                    }
                  }

                  else
                  {
                    *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertYieldOp<mlir::scf::YieldOp, mlir::mps::serialization::YieldOp>]";
                    *(&v150[0] + 1) = 153;
                    v95 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                    if (*(&v150[0] + 1) >= v95)
                    {
                      v96 = v95;
                    }

                    else
                    {
                      v96 = *(&v150[0] + 1);
                    }

                    v97 = *&v150[0] + v96;
                    v98 = *(&v150[0] + 1) - v96;
                    if (*(&v150[0] + 1) - v96 >= 0x12)
                    {
                      v99 = 18;
                    }

                    else
                    {
                      v99 = *(&v150[0] + 1) - v96;
                    }

                    v100 = v97 + v99;
                    v101 = v98 - v99;
                    if (v101 >= v101 - 1)
                    {
                      --v101;
                    }

                    v90[8] = v100;
                    v90[9] = v101;
                    v91 = *(v90 + 22);
                    if (v91 <= *(v90 + 23))
                    {
LABEL_114:
                      *(v90 + 22) = v91;
                      v93 = v154[2];
                      v92 = v154[3];
                      if (v154[2] < v154[3])
                      {
LABEL_115:
                        *v93 = v90;
                        v94 = v93 + 8;
                        goto LABEL_138;
                      }

LABEL_126:
                      v102 = v154[1];
                      v103 = v93 - v154[1];
                      v104 = (v93 - v154[1]) >> 3;
                      v105 = v104 + 1;
                      if ((v104 + 1) >> 61)
                      {
                        goto LABEL_191;
                      }

                      v106 = v92 - v154[1];
                      if (v106 >> 2 > v105)
                      {
                        v105 = v106 >> 2;
                      }

                      if (v106 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v107 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v107 = v105;
                      }

                      if (v107)
                      {
                        if (v107 >> 61)
                        {
                          goto LABEL_192;
                        }

                        v108 = operator new(8 * v107);
                      }

                      else
                      {
                        v108 = 0;
                      }

                      v109 = &v108[8 * v104];
                      *v109 = v90;
                      v94 = v109 + 8;
                      memcpy(v108, v102, v103);
                      v154[1] = v108;
                      v154[2] = v94;
                      v154[3] = &v108[8 * v107];
                      if (v102)
                      {
                        operator delete(v102);
                      }

LABEL_138:
                      v154[2] = v94;
                      v110 = operator new(0x68uLL);
                      mlir::PatternBenefit::PatternBenefit(v150, 1);
                      mlir::Pattern::Pattern((v110 + 1), "tensor.from_elements", 20, v150[0], v9, 0, 0);
                      v110[12] = 0;
                      *v110 = &unk_1F5B2E080;
                      if (v110[9])
                      {
                        v111 = *(v110 + 22);
                        if (v111 <= *(v110 + 23))
                        {
                          goto LABEL_140;
                        }
                      }

                      else
                      {
                        *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertFromElementsOp<mlir::tensor::FromElementsOp, mlir::mps::serialization::FromElementsOp>]";
                        *(&v150[0] + 1) = 177;
                        v115 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                        if (*(&v150[0] + 1) >= v115)
                        {
                          v116 = v115;
                        }

                        else
                        {
                          v116 = *(&v150[0] + 1);
                        }

                        v117 = *&v150[0] + v116;
                        v118 = *(&v150[0] + 1) - v116;
                        if (*(&v150[0] + 1) - v116 >= 0x12)
                        {
                          v119 = 18;
                        }

                        else
                        {
                          v119 = *(&v150[0] + 1) - v116;
                        }

                        v120 = v117 + v119;
                        v121 = v118 - v119;
                        if (v121 >= v121 - 1)
                        {
                          --v121;
                        }

                        v110[8] = v120;
                        v110[9] = v121;
                        v111 = *(v110 + 22);
                        if (v111 <= *(v110 + 23))
                        {
LABEL_140:
                          *(v110 + 22) = v111;
                          v113 = v154[2];
                          v112 = v154[3];
                          if (v154[2] < v154[3])
                          {
LABEL_141:
                            *v113 = v110;
                            v114 = v113 + 8;
                            goto LABEL_164;
                          }

LABEL_152:
                          v122 = v154[1];
                          v123 = v113 - v154[1];
                          v124 = (v113 - v154[1]) >> 3;
                          v125 = v124 + 1;
                          if ((v124 + 1) >> 61)
                          {
                            goto LABEL_191;
                          }

                          v126 = v112 - v154[1];
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
                              goto LABEL_192;
                            }

                            v128 = operator new(8 * v127);
                          }

                          else
                          {
                            v128 = 0;
                          }

                          v129 = &v128[8 * v124];
                          *v129 = v110;
                          v114 = v129 + 8;
                          memcpy(v128, v122, v123);
                          v154[1] = v128;
                          v154[2] = v114;
                          v154[3] = &v128[8 * v127];
                          if (v122)
                          {
                            operator delete(v122);
                          }

LABEL_164:
                          v154[2] = v114;
                          v130 = operator new(0x68uLL);
                          mlir::PatternBenefit::PatternBenefit(v150, 1);
                          mlir::Pattern::Pattern((v130 + 1), "tensor.extract", 14, v150[0], v9, 0, 0);
                          v130[12] = 0;
                          *v130 = &unk_1F5B2E118;
                          if (v130[9])
                          {
                            v131 = *(v130 + 22);
                            if (v131 <= *(v130 + 23))
                            {
                              goto LABEL_166;
                            }
                          }

                          else
                          {
                            *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertExtractOp<mlir::tensor::ExtractOp, mlir::mps::serialization::ExtractOp>]";
                            *(&v150[0] + 1) = 162;
                            v135 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                            if (*(&v150[0] + 1) >= v135)
                            {
                              v136 = v135;
                            }

                            else
                            {
                              v136 = *(&v150[0] + 1);
                            }

                            v137 = *&v150[0] + v136;
                            v138 = *(&v150[0] + 1) - v136;
                            if (*(&v150[0] + 1) - v136 >= 0x12)
                            {
                              v139 = 18;
                            }

                            else
                            {
                              v139 = *(&v150[0] + 1) - v136;
                            }

                            v140 = v137 + v139;
                            v141 = v138 - v139;
                            if (v141 >= v141 - 1)
                            {
                              --v141;
                            }

                            v130[8] = v140;
                            v130[9] = v141;
                            v131 = *(v130 + 22);
                            if (v131 <= *(v130 + 23))
                            {
LABEL_166:
                              *(v130 + 22) = v131;
                              v133 = v154[2];
                              v132 = v154[3];
                              if (v154[2] < v154[3])
                              {
LABEL_167:
                                *v133 = v130;
                                v134 = v133 + 8;
                                goto LABEL_190;
                              }

LABEL_178:
                              v142 = v154[1];
                              v143 = v133 - v154[1];
                              v144 = (v133 - v154[1]) >> 3;
                              v145 = v144 + 1;
                              if (!((v144 + 1) >> 61))
                              {
                                v146 = v132 - v154[1];
                                if (v146 >> 2 > v145)
                                {
                                  v145 = v146 >> 2;
                                }

                                if (v146 >= 0x7FFFFFFFFFFFFFF8)
                                {
                                  v147 = 0x1FFFFFFFFFFFFFFFLL;
                                }

                                else
                                {
                                  v147 = v145;
                                }

                                if (!v147)
                                {
                                  v148 = 0;
LABEL_188:
                                  v149 = &v148[8 * v144];
                                  *v149 = v130;
                                  v134 = v149 + 8;
                                  memcpy(v148, v142, v143);
                                  v154[1] = v148;
                                  v154[2] = v134;
                                  v154[3] = &v148[8 * v147];
                                  if (v142)
                                  {
                                    operator delete(v142);
                                  }

LABEL_190:
                                  v154[2] = v134;
                                  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v152, v154, 0, 0, 0, 0);
                                  v151 = 0u;
                                  memset(v150, 0, sizeof(v150));
                                  BYTE8(v151) = 1;
                                  mlir::applyFullConversion(v2 & 0xFFFFFFFFFFFFFFF8, v163, v152, v150);
                                }

                                if (!(v147 >> 61))
                                {
                                  v148 = operator new(8 * v147);
                                  goto LABEL_188;
                                }

LABEL_192:
                                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                              }

LABEL_191:
                              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                            }
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod((v130 + 10), (v130 + 12), v131, 16);
                          *(v130 + 22) = *(v130 + 22);
                          v133 = v154[2];
                          v132 = v154[3];
                          if (v154[2] < v154[3])
                          {
                            goto LABEL_167;
                          }

                          goto LABEL_178;
                        }
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod((v110 + 10), (v110 + 12), v111, 16);
                      *(v110 + 22) = *(v110 + 22);
                      v113 = v154[2];
                      v112 = v154[3];
                      if (v154[2] < v154[3])
                      {
                        goto LABEL_141;
                      }

                      goto LABEL_152;
                    }
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod((v90 + 10), (v90 + 12), v91, 16);
                  *(v90 + 22) = *(v90 + 22);
                  v93 = v154[2];
                  v92 = v154[3];
                  if (v154[2] < v154[3])
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_126;
                }
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod((v70 + 10), (v70 + 12), v71, 16);
              *(v70 + 22) = *(v70 + 22);
              v73 = v154[2];
              v72 = v154[3];
              if (v154[2] < v154[3])
              {
                goto LABEL_89;
              }

              goto LABEL_100;
            }
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod((v50 + 10), (v50 + 12), v51, 16);
          *(v50 + 22) = *(v50 + 22);
          v53 = v154[2];
          v52 = v154[3];
          if (v154[2] < v154[3])
          {
            goto LABEL_63;
          }

          goto LABEL_74;
        }
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod((v30 + 10), (v30 + 12), v31, 16);
      *(v30 + 22) = *(v30 + 22);
      v33 = v154[2];
      v32 = v154[3];
      if (v154[2] < v154[3])
      {
        goto LABEL_37;
      }

      goto LABEL_48;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v10 + 10), (v10 + 12), v11, 16);
  *(v10 + 22) = *(v10 + 22);
  v13 = v154[2];
  v12 = v154[3];
  if (v154[2] < v154[3])
  {
    goto LABEL_11;
  }

  goto LABEL_22;
}

BOOL mlir::OperationPass<mlir::mps::serialization::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
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

__n128 mlir::PassWrapper<mlir::mps::MPSSerializationPass,mlir::OperationPass<mlir::mps::serialization::ModuleOp>>::clonePass@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x168uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
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
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B2DC50;
  result = *(a1 + 344);
  *(v4 + 344) = result;
  *a2 = v4;
  return result;
}

void *std::__function::__func<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0,std::allocator<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5B2DD08;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0,std::allocator<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5B2DD08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0,std::allocator<mlir::mps::anonymous namespace::addExtraDialectsToRegistry(mlir::DialectRegistry &,llvm::ArrayRef<mlir::mps::DialectInfo>)::$_0>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir3mps12_GLOBAL__N_126addExtraDialectsToRegistryERNS_15DialectRegistryEN4llvm8ArrayRefINS0_11DialectInfoEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

mlir::StringAttr ****_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps20MPSSerializationPass14runOnOperationEvEUlNS1_4func6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::StringAttr ****result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
    {
      return mlir::mps::MPSSerializationPass::runOnOperation(void)::{lambda(mlir::func::FuncOp)#1}::operator()(*result, a2);
    }
  }

  return result;
}

uint64_t mlir::mps::MPSSerializationPass::runOnOperation(void)::{lambda(mlir::func::FuncOp)#1}::operator()(mlir::StringAttr ***a1, uint64_t a2)
{
  v30 = a2;
  v4 = *a1;
  v5 = (*a1 + 2);
  v24 = *v5;
  v6 = *(a2 + 16);
  v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, a2);
  *v5 = v6;
  v4[3] = v7;
  v8 = *a1;
  v9 = *(a2 + 24);
  if (!*(a2 + 47) || (v31.var0 = "sym_name", v31.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a2, v31), (v11 & 1) == 0))
  {
    v32.var0 = "sym_name";
    v32.var1 = 8;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v32);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v12 = InherentAttr;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v27 = v12;
  *&v28 = mlir::OpaqueAttr::getAttrData(&v27);
  *(&v28 + 1) = v13;
  v25[1] = 0;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v30);
  v25[0] = 0;
  v14 = mlir::OpBuilder::create<mlir::mps::serialization::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(v8, v9, &v28, &FunctionType, v25);
  v29 = v14;
  v25[0] = mlir::Operation::getAttrDictionary(v14);
  *&v28 = mlir::Operation::getAttrDictionary(v30);
  Value = mlir::ArrayAttr::getValue(&v28);
  if (v16)
  {
    v17 = Value;
    v18 = 16 * v16;
    do
    {
      v28 = *v17;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(&v28);
      if ((mlir::DictionaryAttr::contains(v25, CallableRegion) & 1) == 0)
      {
        v20 = mlir::CallGraphNode::getCallableRegion(&v28);
        mlir::Operation::setAttr(v14, v20, *(&v28 + 1));
      }

      ++v17;
      v18 -= 16;
    }

    while (v18);
  }

  mlir::detail::FunctionOpInterfaceTrait<mlir::mps::serialization::FuncOp>::addEntryBlock(&v29);
  v21 = (((v29 + 16 * ((*(v29 + 11) >> 23) & 1) + ((*(v29 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 10));
  if (*v21 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = (((v29 + 16 * ((*(v29 + 11) >> 23) & 1) + ((*(v29 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 10));
  }

  mlir::Region::takeBody(v22, (((v30 + 16 * ((*(v30 + 11) >> 23) & 1) + ((*(v30 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v30 + 10)));
  mlir::Operation::erase(v30);
  v27 = *a1;
  *&v28 = &v27;
  result = mlir::detail::walk<mlir::ForwardIterator>(v29, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_3mps20MPSSerializationPass14runOnOperationEvENKUlNS1_4func6FuncOpEE_clESE_EUlNSD_8ReturnOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v28, 1);
  if (v4)
  {
    if (v24)
    {
      *v5 = v24;
    }

    else
    {
      *v5 = 0;
      *(v5 + 8) = 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::FuncOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  mlir::func::FuncOp::build(a1, v20, *a3, a3[1], *a4, *a5, *(a5 + 8), v13, 0, 0);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::FuncOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

_OWORD *mlir::detail::FunctionOpInterfaceTrait<mlir::mps::serialization::FuncOp>::addEntryBlock(mlir::func::FuncOp *a1)
{
  v24[6] = *MEMORY[0x1E69E9840];
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
  FunctionType = v24;
  v23 = 0x600000000;
  if (v5 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&FunctionType, v24, v5, 8);
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

    goto LABEL_24;
  }

  if (!v5)
  {
    goto LABEL_24;
  }

  v14 = vdupq_n_s64(v5 - 1);
  v15 = v5 + 1;
  v16 = vmovn_s64(vcgeq_u64(v14, xmmword_1E09700F0));
  if ((v16.i8[0] & 1) == 0)
  {
    v17 = v15 & 0xE;
    if ((v16.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v24[1] = v8;
    if (v17 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v24[0] = v8;
  v17 = v15 & 0xE;
  if (v16.i8[4])
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v17 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0970220));
  if (v18.i8[0])
  {
    v24[2] = v8;
    if ((v18.i8[4] & 1) == 0)
    {
LABEL_16:
      if (v17 == 4)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

  else if ((v18.i8[4] & 1) == 0)
  {
    goto LABEL_16;
  }

  v24[3] = v8;
  if (v17 == 4)
  {
    goto LABEL_24;
  }

LABEL_20:
  v19 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0970230));
  if (v19.i8[0])
  {
    v24[4] = v8;
  }

  if (v19.i8[4])
  {
    v24[5] = v8;
  }

LABEL_24:
  LODWORD(v23) = v7;
  mlir::ValueRange::ValueRange(v21, Inputs, v7);
  mlir::Block::addArguments(v2, v21[0], v21[1], FunctionType, v23);
  if (FunctionType != v24)
  {
    free(FunctionType);
  }

  return v2;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_3mps20MPSSerializationPass14runOnOperationEvENKUlNS1_4func6FuncOpEE_clESE_EUlNSD_8ReturnOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::OpBuilder ***a1, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::ReturnOp,void>::id)
    {
      mlir::mps::MPSSerializationPass::runOnOperation(void)::{lambda(mlir::func::FuncOp)#1}::operator() const(mlir::func::FuncOp)::{lambda(mlir::func::ReturnOp)#1}::operator()(*a1, a2);
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ReturnOp,llvm::SmallVector<mlir::Value,6u>>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::func::ReturnOp::build(a1, v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ReturnOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertForOp<mlir::scf::ForOp,mlir::mps::serialization::ForOp>::~ConvertForOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertForOp<mlir::scf::ForOp,mlir::mps::serialization::ForOp>::~ConvertForOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::scf::ForOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::ForOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertForOp<mlir::scf::ForOp,mlir::mps::serialization::ForOp>::matchAndRewrite(int a1, unint64_t a2, mlir::scf::detail::ForOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12), a4, a5);
  v11 = *(this + 5);
  v34 = v11;
  v35 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v34, ODSOperandIndexAndLength);
  }

  v34 = v11;
  v35 = 0;
  v32 = mlir::ValueRange::dereference_iterator(&v34, 0);
  v14 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 12), v12, v13);
  v15 = *(this + 5);
  v34 = v15;
  v35 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v34, v14);
  }

  v34 = v15;
  v35 = 0;
  v31 = mlir::ValueRange::dereference_iterator(&v34, 0);
  v18 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 2u, *(this + 12), v16, v17);
  v19 = *(this + 5);
  v34 = v19;
  v35 = v18;
  if (v18)
  {
    v19 = mlir::ValueRange::offset_base(&v34, v18);
  }

  v34 = v19;
  v35 = 0;
  v30 = mlir::ValueRange::dereference_iterator(&v34, 0);
  v22 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 3u, *(this + 12), v20, v21);
  v23 = *(this + 5);
  v34 = v23;
  v35 = v22;
  if (v22)
  {
    v23 = mlir::ValueRange::offset_base(&v34, v22);
    v24 = v35;
  }

  else
  {
    v24 = 0;
  }

  v34 = v23;
  v35 = (HIDWORD(v22) + v22) - v24;
  v33 = mlir::OpBuilder::create<mlir::mps::serialization::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>((a6 + 8), v9, &v32, &v31, &v30, &v34);
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v33, 0);
  v27 = ODSResultIndexAndLength;
  if (v33[9])
  {
    NextResultAtOffset = (v33 - 4);
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  mlir::ValueRange::ValueRange(&v34, NextResultAtOffset, (HIDWORD(v27) + v27) - v27);
  mlir::ConversionPatternRewriter::replaceOp(a6, a2, v34, v35);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ForOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v13);
  mlir::mps::serialization::ForOp::build(a1, v23, *a3, *a4, *a5, *a6, *(a6 + 8), v15, 0, v19);
  v16 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ForOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v17;
}

uint64_t mlir::mps::anonymous namespace::inlineRegion(mlir::mps::_anonymous_namespace_ *this, mlir::Region **a2, mlir::Region *a3, mlir::PatternRewriter *a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  for (i = *a2; *a2 != a2; i = *a2)
  {
    if (i)
    {
      v8 = i - 8;
    }

    else
    {
      v8 = 0;
    }

    (*(*a3 + 24))(a3, v8, a3, a4);
  }

  mlir::ValueRange::ValueRange(v12, 0, 0);
  mlir::OpBuilder::createBlock(a3 + 1, a2, 0, v12[0], v12[1], 0, 0);
  if (*a2)
  {
    v9 = (*a2 - 8);
  }

  else
  {
    v9 = 0;
  }

  mlir::RewriterBase::inlineRegionBefore(a3, this, v9);
  if (*a2)
  {
    v10 = *a2 - 8;
  }

  else
  {
    v10 = 0;
  }

  return (*(*a3 + 24))(a3, v10);
}

void *mlir::mps::anonymous namespace::ConvertWhileOp<mlir::scf::WhileOp,mlir::mps::serialization::WhileOp>::~ConvertWhileOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertWhileOp<mlir::scf::WhileOp,mlir::mps::serialization::WhileOp>::~ConvertWhileOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertWhileOp<mlir::scf::WhileOp,mlir::mps::serialization::WhileOp>::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v25 = v27;
  v26 = 0x600000000;
  if (v8 < 7)
  {
    if (!v8)
    {
      v14 = 0;
      v15 = v27;
      goto LABEL_11;
    }

    v10 = 0;
    v11 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v8, 8);
    v10 = v26;
    v11 = v25;
  }

  v12 = 0;
  v13 = &v11[8 * v10];
  do
  {
    *&v13[8 * v12] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v12) + 8) & 0xFFFFFFFFFFFFFFF8;
    ++v12;
  }

  while (v8 != v12);
  v14 = v26;
  v15 = v25;
LABEL_11:
  LODWORD(v26) = v14 + v8;
  mlir::ValueRange::ValueRange(v28, v15, (v14 + v8));
  v24 = *(a3 + 40);
  v17 = mlir::OpBuilder::create<mlir::mps::serialization::WhileOp,mlir::TypeRange,mlir::ValueRange>((a4 + 8), v7, v28, &v24);
  v23 = v17;
  if (v25 != v27)
  {
    free(v25);
  }

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v23, 0);
  v20 = ODSResultIndexAndLength;
  if (*(v23 + 36))
  {
    NextResultAtOffset = v23 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  mlir::ValueRange::ValueRange(&v25, NextResultAtOffset, (HIDWORD(v20) + v20) - v20);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25, v26);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::WhileOp,mlir::TypeRange,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::WhileOp,mlir::TypeRange,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::scf::WhileOp::build(a1, v17, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::WhileOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertIfOp<mlir::scf::IfOp,mlir::mps::serialization::IfOp>::~ConvertIfOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertIfOp<mlir::scf::IfOp,mlir::mps::serialization::IfOp>::~ConvertIfOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertIfOp<mlir::scf::IfOp,mlir::mps::serialization::IfOp>::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v24 = v26;
  v25 = 0x600000000;
  if (v8 < 7)
  {
    if (!v8)
    {
      v14 = 0;
      v15 = v26;
      goto LABEL_11;
    }

    v10 = 0;
    v11 = v26;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v8, 8);
    v10 = v25;
    v11 = v24;
  }

  v12 = 0;
  v13 = &v11[8 * v10];
  do
  {
    *&v13[8 * v12] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v12) + 8) & 0xFFFFFFFFFFFFFFF8;
    ++v12;
  }

  while (v8 != v12);
  v14 = v25;
  v15 = v24;
LABEL_11:
  LODWORD(v25) = v14 + v8;
  mlir::ValueRange::ValueRange(v27, v15, (v14 + v8));
  v28[0] = *(a3 + 40);
  v28[1] = 0;
  v23 = mlir::ValueRange::dereference_iterator(v28, 0);
  v17 = mlir::OpBuilder::create<mlir::mps::serialization::IfOp,mlir::TypeRange,mlir::Value>((a4 + 8), v7, v27, &v23);
  v28[0] = v17;
  if (v24 != v26)
  {
    free(v24);
  }

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(v28, 0);
  v20 = ODSResultIndexAndLength;
  if (*(v28[0] + 36))
  {
    NextResultAtOffset = v28[0] - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  mlir::ValueRange::ValueRange(&v24, NextResultAtOffset, (HIDWORD(v20) + v20) - v20);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v24, v25);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::IfOp,mlir::TypeRange,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::IfOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::IfOp,mlir::TypeRange,mlir::Value>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::scf::IfOp::build(a1, v17, *a3, a3[1], *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::IfOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertConditionOp<mlir::scf::ConditionOp,mlir::mps::serialization::ConditionOp>::~ConvertConditionOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertConditionOp<mlir::scf::ConditionOp,mlir::mps::serialization::ConditionOp>::~ConvertConditionOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertConditionOp<mlir::scf::ConditionOp,mlir::mps::serialization::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v27 = v29;
  v28 = 0x600000000;
  if (v7 < 7)
  {
    if (!v7)
    {
      v13 = 0;
      v14 = v29;
      goto LABEL_11;
    }

    v9 = 0;
    v10 = v29;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v7, 8);
    v9 = v28;
    v10 = v27;
  }

  v11 = 0;
  v12 = &v10[8 * v9];
  do
  {
    *&v12[8 * v11] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v11) + 8) & 0xFFFFFFFFFFFFFFF8;
    ++v11;
  }

  while (v7 != v11);
  v13 = v28;
  v14 = v27;
LABEL_11:
  LODWORD(v28) = v13 + v7;
  mlir::ValueRange::ValueRange(v30, v14, (v13 + v7));
  ODSOperandIndexAndLength = mlir::scf::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v15, v16);
  v18 = *(a3 + 40);
  v31 = v18;
  v32 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v18 = mlir::ValueRange::offset_base(&v31, ODSOperandIndexAndLength);
  }

  v31 = v18;
  v32 = 0;
  v26 = mlir::ValueRange::dereference_iterator(&v31, 0);
  v21 = mlir::scf::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v19, v20);
  v22 = *(a3 + 40);
  v31 = v22;
  v32 = v21;
  if (v21)
  {
    v22 = mlir::ValueRange::offset_base(&v31, v21);
    v23 = v32;
  }

  else
  {
    v23 = 0;
  }

  v31 = v22;
  v32 = (HIDWORD(v21) + v21) - v23;
  v24 = mlir::OpBuilder::create<mlir::mps::serialization::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), v30, &v26, &v31);
  (*(*a4 + 8))(a4, a2, v24);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ConditionOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::scf::ConditionOp::build(a1, v19, *a3, a3[1], *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ConditionOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertYieldOp<mlir::scf::YieldOp,mlir::mps::serialization::YieldOp>::~ConvertYieldOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertYieldOp<mlir::scf::YieldOp,mlir::mps::serialization::YieldOp>::~ConvertYieldOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertYieldOp<mlir::scf::YieldOp,mlir::mps::serialization::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v20 = v22;
  v21 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v7, 8);
    v9 = v21;
    v10 = v20;
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = 0;
    v10 = v22;
LABEL_8:
    v11 = 0;
    v12 = &v10[8 * v9];
    do
    {
      *&v12[8 * v11] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v11) + 8) & 0xFFFFFFFFFFFFFFF8;
      ++v11;
    }

    while (v7 != v11);
    v13 = v21;
    v14 = v20;
    goto LABEL_11;
  }

  v13 = 0;
  v14 = v22;
LABEL_11:
  LODWORD(v21) = v13 + v7;
  mlir::ValueRange::ValueRange(v23, v14, (v13 + v7));
  ODSOperandIndexAndLength = mlir::scf::detail::YieldOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48));
  v16 = *(a3 + 40);
  v24 = v16;
  v25 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v16 = mlir::ValueRange::offset_base(&v24, ODSOperandIndexAndLength);
    v17 = v25;
  }

  else
  {
    v17 = 0;
  }

  v24 = v16;
  v25 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - v17;
  v18 = mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>((a4 + 8), *(a2 + 24), v23, &v24);
  (*(*a4 + 8))(a4, a2, v18);
  if (v20 != v22)
  {
    free(v20);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ExtSIOp::build(a1, v17, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::tensor::FromElementsOp,mlir::mps::serialization::FromElementsOp>::~ConvertFromElementsOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::tensor::FromElementsOp,mlir::mps::serialization::FromElementsOp>::~ConvertFromElementsOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::tensor::FromElementsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::tensor::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::tensor::FromElementsOp,mlir::mps::serialization::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a3 + 40);
  v8 = mlir::OpBuilder::create<mlir::mps::serialization::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v10, &v11);
  (*(*a4 + 8))(a4, a2, v8);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::FromElementsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::CreateRangeOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::FromElementsOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertExtractOp<mlir::tensor::ExtractOp,mlir::mps::serialization::ExtractOp>::~ConvertExtractOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertExtractOp<mlir::tensor::ExtractOp,mlir::mps::serialization::ExtractOp>::~ConvertExtractOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::tensor::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertExtractOp<mlir::tensor::ExtractOp,mlir::mps::serialization::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ODSOperandIndexAndLength = mlir::tensor::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v8, v9);
  v11 = *(a3 + 40);
  v21 = v11;
  v22 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v21, ODSOperandIndexAndLength);
  }

  v21 = v11;
  v22 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v14 = mlir::tensor::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v12, v13);
  v15 = *(a3 + 40);
  v21 = v15;
  v22 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v21, v14);
    v16 = v22;
  }

  else
  {
    v16 = 0;
  }

  v21 = v15;
  v22 = (HIDWORD(v14) + v14) - v16;
  v17 = mlir::OpBuilder::create<mlir::mps::serialization::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v20, &v19, &v21);
  (*(*a4 + 8))(a4, a2, v17);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ExtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::tensor::ExtractOp::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ExtractOp,void>::id)
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

void mlir::mps::MPSDeserializationPass::~MPSDeserializationPass(mlir::mps::MPSDeserializationPass *this)
{
  mlir::Pass::~Pass(this);

  operator delete(v1);
}

const char *mlir::PassWrapper<mlir::mps::MPSDeserializationPass,mlir::OperationPass<mlir::mps::serialization::ModuleOp>>::getName()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MPSDeserializationPass]";
  v6 = 83;
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

void *mlir::mps::MPSDeserializationPass::getDependentDialects(mlir::mps::MPSDeserializationPass *this, uint64_t **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v12[0] = &unk_1F5AFAFA8;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::func::FuncDialect,void>::id, "func", 4uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_1F5AFAE60;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_1F5AFAEF0;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id, "scf", 3uLL, v12);
  if (v13 == v12)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))();
  }

  v12[0] = &unk_1F5AFB360;
  v13 = v12;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v12);
  result = v13;
  if (v13 == v12)
  {
    result = (*(*v13 + 32))(v13);
    v5 = *(this + 44);
    if (!v5)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v13)
  {
    result = (*(*v13 + 40))();
  }

  v5 = *(this + 44);
  if (v5)
  {
LABEL_19:
    v6 = *(this + 43);
    v7 = &v6[3 * v5];
    v8 = v6;
    do
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12[0] = &unk_1F5B2DD08;
      v12[1] = v6;
      v13 = v12;
      mlir::DialectRegistry::insert(a2, v9, v10, v11, v12);
      result = v13;
      if (v13 == v12)
      {
        result = (*(*v13 + 32))(v13);
      }

      else if (v13)
      {
        result = (*(*v13 + 40))();
      }

      v8 += 3;
      v6 += 3;
    }

    while (v8 != v7);
  }

  return result;
}

void mlir::mps::MPSDeserializationPass::runOnOperation(mlir::mps::MPSDeserializationPass *this)
{
  v177 = *MEMORY[0x1E69E9840];
  v153[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v153[1], 0, 24);
  v2 = *(this + 5);
  v163[0] = v153;
  v154[0] = v163;
  mlir::detail::walk<mlir::ForwardIterator>((v2 & 0xFFFFFFFFFFFFFFF8), _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps22MPSDeserializationPass14runOnOperationEvEUlNSB_13serialization6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_, v154, 1);
  Context = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  v163[1] = 0;
  v163[2] = 0;
  v163[0] = &unk_1F5AFD7B0;
  v164 = 0;
  v169 = 0;
  v170 = 0;
  v165 = v167;
  v166 = 0;
  v167[0] = 0;
  v167[1] = 0;
  v168 = 0;
  v171 = 0x1000000000;
  v172 = 0;
  v173 = 0;
  v174 = 0x2800000000;
  v175 = 0;
  v176 = Context;
  v154[0] = &v154[2];
  v154[2] = "mps";
  v154[3] = 3;
  v154[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v163, &v154[2], 1, 0);
  if (v154[0] != &v154[2])
  {
    free(v154[0]);
  }

  v154[0] = &v154[2];
  v154[2] = "scf";
  v154[3] = 3;
  v154[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v163, &v154[2], 1, 0);
  if (v154[0] != &v154[2])
  {
    free(v154[0]);
  }

  v154[0] = &v154[2];
  v154[2] = "tensor";
  v154[3] = 6;
  v154[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v163, &v154[2], 1, 0);
  if (v154[0] != &v154[2])
  {
    free(v154[0]);
  }

  v154[0] = &v154[2];
  v154[2] = "func";
  v154[3] = 4;
  v154[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(v163, &v154[2], 1, 0);
  if (v154[0] != &v154[2])
  {
    free(v154[0]);
  }

  v4 = *(this + 44);
  if (v4)
  {
    v5 = (*(this + 43) + 8);
    v6 = 24 * v4;
    do
    {
      v7 = *v5;
      v154[0] = &v154[2];
      *&v154[2] = v7;
      v154[1] = 0x200000001;
      mlir::ConversionTarget::setDialectAction(v163, &v154[2], 1, 0);
      if (v154[0] != &v154[2])
      {
        free(v154[0]);
      }

      v5 = (v5 + 24);
      v6 -= 24;
    }

    while (v6);
  }

  mlir::OperationName::OperationName(v154, "mps.for", 7, v176);
  mlir::ConversionTarget::setOpAction(v163, v154[0], 2);
  mlir::OperationName::OperationName(v154, "mps.while", 9, v176);
  mlir::ConversionTarget::setOpAction(v163, v154[0], 2);
  mlir::OperationName::OperationName(v154, "mps.if", 6, v176);
  mlir::ConversionTarget::setOpAction(v163, v154[0], 2);
  mlir::ConversionTarget::addIllegalOp<mlir::mps::serialization::ConditionOp,mlir::mps::serialization::YieldOp,mlir::mps::serialization::ExtractOp,mlir::mps::serialization::FromElementsOp>(v163);
  v154[0] = mlir::Attribute::getContext(((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24));
  memset(&v154[1], 0, 32);
  v154[5] = v155;
  v154[6] = 0x600000000;
  v155[6] = 0;
  v155[7] = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0x2800000000;
  v160 = 0;
  v8 = *(this + 5) & 0xFFFFFFFFFFFFFFF8;
  v161 = 0;
  v162 = 0x2800000000;
  v9 = mlir::Attribute::getContext((v8 + 24));
  v10 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v150, 1);
  mlir::Pattern::Pattern((v10 + 1), "mps.for", 7, v150[0], v9, 0, 0);
  v10[12] = 0;
  *v10 = &unk_1F5B2E250;
  if (v10[9])
  {
    v11 = *(v10 + 22);
    if (v11 <= *(v10 + 23))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertForOp<mlir::mps::serialization::ForOp, mlir::scf::ForOp>]";
    *(&v150[0] + 1) = 147;
    v15 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v150[0] + 1) >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = *(&v150[0] + 1);
    }

    v17 = *&v150[0] + v16;
    v18 = *(&v150[0] + 1) - v16;
    if (*(&v150[0] + 1) - v16 >= 0x12)
    {
      v19 = 18;
    }

    else
    {
      v19 = *(&v150[0] + 1) - v16;
    }

    v20 = v17 + v19;
    v21 = v18 - v19;
    if (v21 >= v21 - 1)
    {
      --v21;
    }

    v10[8] = v20;
    v10[9] = v21;
    v11 = *(v10 + 22);
    if (v11 <= *(v10 + 23))
    {
LABEL_16:
      *(v10 + 22) = v11;
      v13 = v154[2];
      v12 = v154[3];
      if (v154[2] < v154[3])
      {
LABEL_17:
        *v13 = v10;
        v14 = v13 + 8;
        goto LABEL_40;
      }

LABEL_28:
      v22 = v154[1];
      v23 = v13 - v154[1];
      v24 = (v13 - v154[1]) >> 3;
      v25 = v24 + 1;
      if ((v24 + 1) >> 61)
      {
        goto LABEL_197;
      }

      v26 = v12 - v154[1];
      if (v26 >> 2 > v25)
      {
        v25 = v26 >> 2;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 >> 61)
        {
          goto LABEL_198;
        }

        v28 = operator new(8 * v27);
      }

      else
      {
        v28 = 0;
      }

      v29 = &v28[8 * v24];
      *v29 = v10;
      v14 = v29 + 8;
      memcpy(v28, v22, v23);
      v154[1] = v28;
      v154[2] = v14;
      v154[3] = &v28[8 * v27];
      if (v22)
      {
        operator delete(v22);
      }

LABEL_40:
      v154[2] = v14;
      v30 = operator new(0x68uLL);
      mlir::PatternBenefit::PatternBenefit(v150, 1);
      mlir::Pattern::Pattern((v30 + 1), "mps.while", 9, v150[0], v9, 0, 0);
      v30[12] = 0;
      *v30 = &unk_1F5B2E2E8;
      if (v30[9])
      {
        v31 = *(v30 + 22);
        if (v31 <= *(v30 + 23))
        {
          goto LABEL_42;
        }
      }

      else
      {
        *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertWhileOp<mlir::mps::serialization::WhileOp, mlir::scf::WhileOp>]";
        *(&v150[0] + 1) = 153;
        v35 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
        if (*(&v150[0] + 1) >= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = *(&v150[0] + 1);
        }

        v37 = *&v150[0] + v36;
        v38 = *(&v150[0] + 1) - v36;
        if (*(&v150[0] + 1) - v36 >= 0x12)
        {
          v39 = 18;
        }

        else
        {
          v39 = *(&v150[0] + 1) - v36;
        }

        v40 = v37 + v39;
        v41 = v38 - v39;
        if (v41 >= v41 - 1)
        {
          --v41;
        }

        v30[8] = v40;
        v30[9] = v41;
        v31 = *(v30 + 22);
        if (v31 <= *(v30 + 23))
        {
LABEL_42:
          *(v30 + 22) = v31;
          v33 = v154[2];
          v32 = v154[3];
          if (v154[2] < v154[3])
          {
LABEL_43:
            *v33 = v30;
            v34 = v33 + 8;
            goto LABEL_66;
          }

LABEL_54:
          v42 = v154[1];
          v43 = v33 - v154[1];
          v44 = (v33 - v154[1]) >> 3;
          v45 = v44 + 1;
          if ((v44 + 1) >> 61)
          {
            goto LABEL_197;
          }

          v46 = v32 - v154[1];
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            if (v47 >> 61)
            {
              goto LABEL_198;
            }

            v48 = operator new(8 * v47);
          }

          else
          {
            v48 = 0;
          }

          v49 = &v48[8 * v44];
          *v49 = v30;
          v34 = v49 + 8;
          memcpy(v48, v42, v43);
          v154[1] = v48;
          v154[2] = v34;
          v154[3] = &v48[8 * v47];
          if (v42)
          {
            operator delete(v42);
          }

LABEL_66:
          v154[2] = v34;
          v50 = operator new(0x68uLL);
          mlir::PatternBenefit::PatternBenefit(v150, 1);
          mlir::Pattern::Pattern((v50 + 1), "mps.if", 6, v150[0], v9, 0, 0);
          v50[12] = 0;
          *v50 = &unk_1F5B2E380;
          if (v50[9])
          {
            v51 = *(v50 + 22);
            if (v51 <= *(v50 + 23))
            {
              goto LABEL_68;
            }
          }

          else
          {
            *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertIfOp<mlir::mps::serialization::IfOp, mlir::scf::IfOp>]";
            *(&v150[0] + 1) = 144;
            v55 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
            if (*(&v150[0] + 1) >= v55)
            {
              v56 = v55;
            }

            else
            {
              v56 = *(&v150[0] + 1);
            }

            v57 = *&v150[0] + v56;
            v58 = *(&v150[0] + 1) - v56;
            if (*(&v150[0] + 1) - v56 >= 0x12)
            {
              v59 = 18;
            }

            else
            {
              v59 = *(&v150[0] + 1) - v56;
            }

            v60 = v57 + v59;
            v61 = v58 - v59;
            if (v61 >= v61 - 1)
            {
              --v61;
            }

            v50[8] = v60;
            v50[9] = v61;
            v51 = *(v50 + 22);
            if (v51 <= *(v50 + 23))
            {
LABEL_68:
              *(v50 + 22) = v51;
              v53 = v154[2];
              v52 = v154[3];
              if (v154[2] < v154[3])
              {
LABEL_69:
                *v53 = v50;
                v54 = v53 + 8;
                goto LABEL_92;
              }

LABEL_80:
              v62 = v154[1];
              v63 = v53 - v154[1];
              v64 = (v53 - v154[1]) >> 3;
              v65 = v64 + 1;
              if ((v64 + 1) >> 61)
              {
                goto LABEL_197;
              }

              v66 = v52 - v154[1];
              if (v66 >> 2 > v65)
              {
                v65 = v66 >> 2;
              }

              if (v66 >= 0x7FFFFFFFFFFFFFF8)
              {
                v67 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v67 = v65;
              }

              if (v67)
              {
                if (v67 >> 61)
                {
                  goto LABEL_198;
                }

                v68 = operator new(8 * v67);
              }

              else
              {
                v68 = 0;
              }

              v69 = &v68[8 * v64];
              *v69 = v50;
              v54 = v69 + 8;
              memcpy(v68, v62, v63);
              v154[1] = v68;
              v154[2] = v54;
              v154[3] = &v68[8 * v67];
              if (v62)
              {
                operator delete(v62);
              }

LABEL_92:
              v154[2] = v54;
              v70 = operator new(0x68uLL);
              mlir::PatternBenefit::PatternBenefit(v150, 1);
              mlir::Pattern::Pattern((v70 + 1), "mps.condition", 13, v150[0], v9, 0, 0);
              v70[12] = 0;
              *v70 = &unk_1F5B2E418;
              if (v70[9])
              {
                v71 = *(v70 + 22);
                if (v71 <= *(v70 + 23))
                {
                  goto LABEL_94;
                }
              }

              else
              {
                *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertConditionOp<mlir::mps::serialization::ConditionOp, mlir::scf::ConditionOp>]";
                *(&v150[0] + 1) = 165;
                v75 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                if (*(&v150[0] + 1) >= v75)
                {
                  v76 = v75;
                }

                else
                {
                  v76 = *(&v150[0] + 1);
                }

                v77 = *&v150[0] + v76;
                v78 = *(&v150[0] + 1) - v76;
                if (*(&v150[0] + 1) - v76 >= 0x12)
                {
                  v79 = 18;
                }

                else
                {
                  v79 = *(&v150[0] + 1) - v76;
                }

                v80 = v77 + v79;
                v81 = v78 - v79;
                if (v81 >= v81 - 1)
                {
                  --v81;
                }

                v70[8] = v80;
                v70[9] = v81;
                v71 = *(v70 + 22);
                if (v71 <= *(v70 + 23))
                {
LABEL_94:
                  *(v70 + 22) = v71;
                  v73 = v154[2];
                  v72 = v154[3];
                  if (v154[2] < v154[3])
                  {
LABEL_95:
                    *v73 = v70;
                    v74 = v73 + 8;
                    goto LABEL_118;
                  }

LABEL_106:
                  v82 = v154[1];
                  v83 = v73 - v154[1];
                  v84 = (v73 - v154[1]) >> 3;
                  v85 = v84 + 1;
                  if ((v84 + 1) >> 61)
                  {
                    goto LABEL_197;
                  }

                  v86 = v72 - v154[1];
                  if (v86 >> 2 > v85)
                  {
                    v85 = v86 >> 2;
                  }

                  if (v86 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v87 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v87 = v85;
                  }

                  if (v87)
                  {
                    if (v87 >> 61)
                    {
                      goto LABEL_198;
                    }

                    v88 = operator new(8 * v87);
                  }

                  else
                  {
                    v88 = 0;
                  }

                  v89 = &v88[8 * v84];
                  *v89 = v70;
                  v74 = v89 + 8;
                  memcpy(v88, v82, v83);
                  v154[1] = v88;
                  v154[2] = v74;
                  v154[3] = &v88[8 * v87];
                  if (v82)
                  {
                    operator delete(v82);
                  }

LABEL_118:
                  v154[2] = v74;
                  v90 = operator new(0x68uLL);
                  mlir::PatternBenefit::PatternBenefit(v150, 1);
                  mlir::Pattern::Pattern((v90 + 1), "mps.yield", 9, v150[0], v9, 0, 0);
                  v90[12] = 0;
                  *v90 = &unk_1F5B2E4B0;
                  if (v90[9])
                  {
                    v91 = *(v90 + 22);
                    if (v91 <= *(v90 + 23))
                    {
                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertYieldOp<mlir::mps::serialization::YieldOp, mlir::scf::YieldOp>]";
                    *(&v150[0] + 1) = 153;
                    v95 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                    if (*(&v150[0] + 1) >= v95)
                    {
                      v96 = v95;
                    }

                    else
                    {
                      v96 = *(&v150[0] + 1);
                    }

                    v97 = *&v150[0] + v96;
                    v98 = *(&v150[0] + 1) - v96;
                    if (*(&v150[0] + 1) - v96 >= 0x12)
                    {
                      v99 = 18;
                    }

                    else
                    {
                      v99 = *(&v150[0] + 1) - v96;
                    }

                    v100 = v97 + v99;
                    v101 = v98 - v99;
                    if (v101 >= v101 - 1)
                    {
                      --v101;
                    }

                    v90[8] = v100;
                    v90[9] = v101;
                    v91 = *(v90 + 22);
                    if (v91 <= *(v90 + 23))
                    {
LABEL_120:
                      *(v90 + 22) = v91;
                      v93 = v154[2];
                      v92 = v154[3];
                      if (v154[2] < v154[3])
                      {
LABEL_121:
                        *v93 = v90;
                        v94 = v93 + 8;
                        goto LABEL_144;
                      }

LABEL_132:
                      v102 = v154[1];
                      v103 = v93 - v154[1];
                      v104 = (v93 - v154[1]) >> 3;
                      v105 = v104 + 1;
                      if ((v104 + 1) >> 61)
                      {
                        goto LABEL_197;
                      }

                      v106 = v92 - v154[1];
                      if (v106 >> 2 > v105)
                      {
                        v105 = v106 >> 2;
                      }

                      if (v106 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v107 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v107 = v105;
                      }

                      if (v107)
                      {
                        if (v107 >> 61)
                        {
                          goto LABEL_198;
                        }

                        v108 = operator new(8 * v107);
                      }

                      else
                      {
                        v108 = 0;
                      }

                      v109 = &v108[8 * v104];
                      *v109 = v90;
                      v94 = v109 + 8;
                      memcpy(v108, v102, v103);
                      v154[1] = v108;
                      v154[2] = v94;
                      v154[3] = &v108[8 * v107];
                      if (v102)
                      {
                        operator delete(v102);
                      }

LABEL_144:
                      v154[2] = v94;
                      v110 = operator new(0x68uLL);
                      mlir::PatternBenefit::PatternBenefit(v150, 1);
                      mlir::Pattern::Pattern((v110 + 1), "mps.from_elements", 17, v150[0], v9, 0, 0);
                      v110[12] = 0;
                      *v110 = &unk_1F5B2E548;
                      if (v110[9])
                      {
                        v111 = *(v110 + 22);
                        if (v111 <= *(v110 + 23))
                        {
                          goto LABEL_146;
                        }
                      }

                      else
                      {
                        *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertFromElementsOp<mlir::mps::serialization::FromElementsOp, mlir::tensor::FromElementsOp>]";
                        *(&v150[0] + 1) = 177;
                        v115 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                        if (*(&v150[0] + 1) >= v115)
                        {
                          v116 = v115;
                        }

                        else
                        {
                          v116 = *(&v150[0] + 1);
                        }

                        v117 = *&v150[0] + v116;
                        v118 = *(&v150[0] + 1) - v116;
                        if (*(&v150[0] + 1) - v116 >= 0x12)
                        {
                          v119 = 18;
                        }

                        else
                        {
                          v119 = *(&v150[0] + 1) - v116;
                        }

                        v120 = v117 + v119;
                        v121 = v118 - v119;
                        if (v121 >= v121 - 1)
                        {
                          --v121;
                        }

                        v110[8] = v120;
                        v110[9] = v121;
                        v111 = *(v110 + 22);
                        if (v111 <= *(v110 + 23))
                        {
LABEL_146:
                          *(v110 + 22) = v111;
                          v113 = v154[2];
                          v112 = v154[3];
                          if (v154[2] < v154[3])
                          {
LABEL_147:
                            *v113 = v110;
                            v114 = v113 + 8;
                            goto LABEL_170;
                          }

LABEL_158:
                          v122 = v154[1];
                          v123 = v113 - v154[1];
                          v124 = (v113 - v154[1]) >> 3;
                          v125 = v124 + 1;
                          if ((v124 + 1) >> 61)
                          {
                            goto LABEL_197;
                          }

                          v126 = v112 - v154[1];
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
                              goto LABEL_198;
                            }

                            v128 = operator new(8 * v127);
                          }

                          else
                          {
                            v128 = 0;
                          }

                          v129 = &v128[8 * v124];
                          *v129 = v110;
                          v114 = v129 + 8;
                          memcpy(v128, v122, v123);
                          v154[1] = v128;
                          v154[2] = v114;
                          v154[3] = &v128[8 * v127];
                          if (v122)
                          {
                            operator delete(v122);
                          }

LABEL_170:
                          v154[2] = v114;
                          v130 = operator new(0x68uLL);
                          mlir::PatternBenefit::PatternBenefit(v150, 1);
                          mlir::Pattern::Pattern((v130 + 1), "mps.extract", 11, v150[0], v9, 0, 0);
                          v130[12] = 0;
                          *v130 = &unk_1F5B2E5E0;
                          if (v130[9])
                          {
                            v131 = *(v130 + 22);
                            if (v131 <= *(v130 + 23))
                            {
                              goto LABEL_172;
                            }
                          }

                          else
                          {
                            *&v150[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertExtractOp<mlir::mps::serialization::ExtractOp, mlir::tensor::ExtractOp>]";
                            *(&v150[0] + 1) = 162;
                            v135 = llvm::StringRef::find(v150, "DesiredTypeName = ", 0x12uLL, 0);
                            if (*(&v150[0] + 1) >= v135)
                            {
                              v136 = v135;
                            }

                            else
                            {
                              v136 = *(&v150[0] + 1);
                            }

                            v137 = *&v150[0] + v136;
                            v138 = *(&v150[0] + 1) - v136;
                            if (*(&v150[0] + 1) - v136 >= 0x12)
                            {
                              v139 = 18;
                            }

                            else
                            {
                              v139 = *(&v150[0] + 1) - v136;
                            }

                            v140 = v137 + v139;
                            v141 = v138 - v139;
                            if (v141 >= v141 - 1)
                            {
                              --v141;
                            }

                            v130[8] = v140;
                            v130[9] = v141;
                            v131 = *(v130 + 22);
                            if (v131 <= *(v130 + 23))
                            {
LABEL_172:
                              *(v130 + 22) = v131;
                              v133 = v154[2];
                              v132 = v154[3];
                              if (v154[2] < v154[3])
                              {
LABEL_173:
                                *v133 = v130;
                                v134 = v133 + 8;
                                goto LABEL_196;
                              }

LABEL_184:
                              v142 = v154[1];
                              v143 = v133 - v154[1];
                              v144 = (v133 - v154[1]) >> 3;
                              v145 = v144 + 1;
                              if (!((v144 + 1) >> 61))
                              {
                                v146 = v132 - v154[1];
                                if (v146 >> 2 > v145)
                                {
                                  v145 = v146 >> 2;
                                }

                                if (v146 >= 0x7FFFFFFFFFFFFFF8)
                                {
                                  v147 = 0x1FFFFFFFFFFFFFFFLL;
                                }

                                else
                                {
                                  v147 = v145;
                                }

                                if (!v147)
                                {
                                  v148 = 0;
LABEL_194:
                                  v149 = &v148[8 * v144];
                                  *v149 = v130;
                                  v134 = v149 + 8;
                                  memcpy(v148, v142, v143);
                                  v154[1] = v148;
                                  v154[2] = v134;
                                  v154[3] = &v148[8 * v147];
                                  if (v142)
                                  {
                                    operator delete(v142);
                                  }

LABEL_196:
                                  v154[2] = v134;
                                  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v152, v154, 0, 0, 0, 0);
                                  v151 = 0u;
                                  memset(v150, 0, sizeof(v150));
                                  BYTE8(v151) = 1;
                                  mlir::applyFullConversion(v2 & 0xFFFFFFFFFFFFFFF8, v163, v152, v150);
                                }

                                if (!(v147 >> 61))
                                {
                                  v148 = operator new(8 * v147);
                                  goto LABEL_194;
                                }

LABEL_198:
                                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                              }

LABEL_197:
                              std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
                            }
                          }

                          llvm::SmallVectorBase<unsigned int>::grow_pod((v130 + 10), (v130 + 12), v131, 16);
                          *(v130 + 22) = *(v130 + 22);
                          v133 = v154[2];
                          v132 = v154[3];
                          if (v154[2] < v154[3])
                          {
                            goto LABEL_173;
                          }

                          goto LABEL_184;
                        }
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod((v110 + 10), (v110 + 12), v111, 16);
                      *(v110 + 22) = *(v110 + 22);
                      v113 = v154[2];
                      v112 = v154[3];
                      if (v154[2] < v154[3])
                      {
                        goto LABEL_147;
                      }

                      goto LABEL_158;
                    }
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod((v90 + 10), (v90 + 12), v91, 16);
                  *(v90 + 22) = *(v90 + 22);
                  v93 = v154[2];
                  v92 = v154[3];
                  if (v154[2] < v154[3])
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_132;
                }
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod((v70 + 10), (v70 + 12), v71, 16);
              *(v70 + 22) = *(v70 + 22);
              v73 = v154[2];
              v72 = v154[3];
              if (v154[2] < v154[3])
              {
                goto LABEL_95;
              }

              goto LABEL_106;
            }
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod((v50 + 10), (v50 + 12), v51, 16);
          *(v50 + 22) = *(v50 + 22);
          v53 = v154[2];
          v52 = v154[3];
          if (v154[2] < v154[3])
          {
            goto LABEL_69;
          }

          goto LABEL_80;
        }
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod((v30 + 10), (v30 + 12), v31, 16);
      *(v30 + 22) = *(v30 + 22);
      v33 = v154[2];
      v32 = v154[3];
      if (v154[2] < v154[3])
      {
        goto LABEL_43;
      }

      goto LABEL_54;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v10 + 10), (v10 + 12), v11, 16);
  *(v10 + 22) = *(v10 + 22);
  v13 = v154[2];
  v12 = v154[3];
  if (v154[2] < v154[3])
  {
    goto LABEL_17;
  }

  goto LABEL_28;
}

__n128 mlir::PassWrapper<mlir::mps::MPSDeserializationPass,mlir::OperationPass<mlir::mps::serialization::ModuleOp>>::clonePass@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x168uLL);
  v5 = *(a1 + 8);
  *(v4 + 1) = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
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
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5B2E1B0;
  result = *(a1 + 344);
  *(v4 + 344) = result;
  *a2 = v4;
  return result;
}

mlir::StringAttr ****_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_3mps22MPSDeserializationPass14runOnOperationEvEUlNSB_13serialization6FuncOpEE_SE_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESN_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::StringAttr ****result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::FuncOp,void>::id)
    {
      return mlir::mps::MPSDeserializationPass::runOnOperation(void)::{lambda(mlir::mps::serialization::FuncOp)#1}::operator()(*result, a2);
    }
  }

  return result;
}

uint64_t mlir::mps::MPSDeserializationPass::runOnOperation(void)::{lambda(mlir::mps::serialization::FuncOp)#1}::operator()(mlir::StringAttr ***a1, uint64_t a2)
{
  v30 = a2;
  v4 = *a1;
  v5 = (*a1 + 2);
  v24 = *v5;
  v6 = *(a2 + 16);
  v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, a2);
  *v5 = v6;
  v4[3] = v7;
  v8 = *a1;
  v9 = *(a2 + 24);
  if (!*(a2 + 47) || (v31.var0 = "sym_name", v31.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(a2, v31), (v11 & 1) == 0))
  {
    v32.var0 = "sym_name";
    v32.var1 = 8;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v32);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v12 = InherentAttr;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v27 = v12;
  *&v28 = mlir::OpaqueAttr::getAttrData(&v27);
  *(&v28 + 1) = v13;
  v25[1] = 0;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v30);
  v25[0] = 0;
  v14 = mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(v8, v9, &v28, &FunctionType, v25);
  v29 = v14;
  v25[0] = mlir::Operation::getAttrDictionary(v14);
  *&v28 = mlir::Operation::getAttrDictionary(v30);
  Value = mlir::ArrayAttr::getValue(&v28);
  if (v16)
  {
    v17 = Value;
    v18 = 16 * v16;
    do
    {
      v28 = *v17;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(&v28);
      if ((mlir::DictionaryAttr::contains(v25, CallableRegion) & 1) == 0)
      {
        v20 = mlir::CallGraphNode::getCallableRegion(&v28);
        mlir::Operation::setAttr(v14, v20, *(&v28 + 1));
      }

      ++v17;
      v18 -= 16;
    }

    while (v18);
  }

  mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::addEntryBlock(&v29);
  v21 = (((v29 + 16 * ((*(v29 + 11) >> 23) & 1) + ((*(v29 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 10));
  if (*v21 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = (((v29 + 16 * ((*(v29 + 11) >> 23) & 1) + ((*(v29 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v29 + 10));
  }

  mlir::Region::takeBody(v22, (((v30 + 16 * ((*(v30 + 11) >> 23) & 1) + ((*(v30 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v30 + 10)));
  mlir::Operation::erase(v30);
  v27 = *a1;
  *&v28 = &v27;
  result = mlir::detail::walk<mlir::ForwardIterator>(v29, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_3mps22MPSDeserializationPass14runOnOperationEvENKUlNSB_13serialization6FuncOpEE_clESE_EUlNSD_8ReturnOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v28, 1);
  if (v4)
  {
    if (v24)
    {
      *v5 = v24;
    }

    else
    {
      *v5 = 0;
      *(v5 + 8) = 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef,mlir::FunctionType,llvm::ArrayRef<mlir::NamedAttribute>>(mlir::StringAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef const&,mlir::FunctionType &>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v11);
  mlir::func::FuncOp::build(a1, v20, *a3, a3[1], *a4, *a5, *(a5 + 8), v13, 0, 0);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_3mps22MPSDeserializationPass14runOnOperationEvENKUlNSB_13serialization6FuncOpEE_clESE_EUlNSD_8ReturnOpEE_SG_vEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESP_E4typeES3_OT1_EUlS3_E_EEvlS3_(mlir::OpBuilder ***a1, mlir::Operation *a2)
{
  if (a2)
  {
    if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::ReturnOp,void>::id)
    {
      mlir::mps::MPSDeserializationPass::runOnOperation(void)::{lambda(mlir::mps::serialization::FuncOp)#1}::operator() const(mlir::mps::serialization::FuncOp)::{lambda(mlir::mps::serialization::ReturnOp)#1}::operator()(*a1, a2);
    }
  }
}

_DWORD *mlir::ConversionTarget::addIllegalOp<mlir::mps::serialization::ConditionOp,mlir::mps::serialization::YieldOp,mlir::mps::serialization::ExtractOp,mlir::mps::serialization::FromElementsOp>(uint64_t a1)
{
  mlir::OperationName::OperationName(&v3, "mps.condition", 13, *(a1 + 152));
  mlir::ConversionTarget::setOpAction(a1, v3, 2);
  mlir::OperationName::OperationName(&v3, "mps.yield", 9, *(a1 + 152));
  mlir::ConversionTarget::setOpAction(a1, v3, 2);
  mlir::OperationName::OperationName(&v3, "mps.extract", 11, *(a1 + 152));
  mlir::ConversionTarget::setOpAction(a1, v3, 2);
  mlir::OperationName::OperationName(&v3, "mps.from_elements", 17, *(a1 + 152));
  return mlir::ConversionTarget::setOpAction(a1, v3, 2);
}

void *mlir::mps::anonymous namespace::ConvertForOp<mlir::mps::serialization::ForOp,mlir::scf::ForOp>::~ConvertForOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertForOp<mlir::mps::serialization::ForOp,mlir::scf::ForOp>::~ConvertForOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ForOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ForOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertForOp<mlir::mps::serialization::ForOp,mlir::scf::ForOp>::matchAndRewrite(int a1, unint64_t a2, mlir::scf::detail::ForOpGenericAdaptorBase *this, double a4, int32x4_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 24);
  ODSOperandIndexAndLength = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 0, *(this + 12), a4, a5);
  v11 = *(this + 5);
  v34 = v11;
  v35 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v34, ODSOperandIndexAndLength);
  }

  v34 = v11;
  v35 = 0;
  v32 = mlir::ValueRange::dereference_iterator(&v34, 0);
  v14 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 1u, *(this + 12), v12, v13);
  v15 = *(this + 5);
  v34 = v15;
  v35 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v34, v14);
  }

  v34 = v15;
  v35 = 0;
  v31 = mlir::ValueRange::dereference_iterator(&v34, 0);
  v18 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 2u, *(this + 12), v16, v17);
  v19 = *(this + 5);
  v34 = v19;
  v35 = v18;
  if (v18)
  {
    v19 = mlir::ValueRange::offset_base(&v34, v18);
  }

  v34 = v19;
  v35 = 0;
  v30 = mlir::ValueRange::dereference_iterator(&v34, 0);
  v22 = mlir::scf::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(this, 3u, *(this + 12), v20, v21);
  v23 = *(this + 5);
  v34 = v23;
  v35 = v22;
  if (v22)
  {
    v23 = mlir::ValueRange::offset_base(&v34, v22);
    v24 = v35;
  }

  else
  {
    v24 = 0;
  }

  v34 = v23;
  v35 = (HIDWORD(v22) + v22) - v24;
  v33 = mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>((a6 + 8), v9, &v32, &v31, &v30, &v34);
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v33, 0);
  v27 = ODSResultIndexAndLength;
  if (v33[9])
  {
    NextResultAtOffset = (v33 - 4);
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  mlir::ValueRange::ValueRange(&v34, NextResultAtOffset, (HIDWORD(v27) + v27) - v27);
  mlir::ConversionPatternRewriter::replaceOp(a6, a2, v34, v35);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::scf::ForOp::replaceWithAdditionalYields(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v13);
  mlir::scf::ForOp::build(a1, v23, *a3, *a4, *a5, *a6, *(a6 + 8), v15, 0, v19);
  v16 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v17;
}

void *mlir::mps::anonymous namespace::ConvertWhileOp<mlir::mps::serialization::WhileOp,mlir::scf::WhileOp>::~ConvertWhileOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertWhileOp<mlir::mps::serialization::WhileOp,mlir::scf::WhileOp>::~ConvertWhileOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertWhileOp<mlir::mps::serialization::WhileOp,mlir::scf::WhileOp>::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v25 = v27;
  v26 = 0x600000000;
  if (v8 < 7)
  {
    if (!v8)
    {
      v14 = 0;
      v15 = v27;
      goto LABEL_11;
    }

    v10 = 0;
    v11 = v27;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v8, 8);
    v10 = v26;
    v11 = v25;
  }

  v12 = 0;
  v13 = &v11[8 * v10];
  do
  {
    *&v13[8 * v12] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v12) + 8) & 0xFFFFFFFFFFFFFFF8;
    ++v12;
  }

  while (v8 != v12);
  v14 = v26;
  v15 = v25;
LABEL_11:
  LODWORD(v26) = v14 + v8;
  mlir::ValueRange::ValueRange(v28, v15, (v14 + v8));
  v24 = *(a3 + 40);
  v17 = mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::TypeRange,mlir::ValueRange>((a4 + 8), v7, v28, &v24);
  v23 = v17;
  if (v25 != v27)
  {
    free(v25);
  }

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(&v23, 0);
  v20 = ODSResultIndexAndLength;
  if (*(v23 + 36))
  {
    NextResultAtOffset = v23 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  mlir::ValueRange::ValueRange(&v25, NextResultAtOffset, (HIDWORD(v20) + v20) - v20);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v25, v26);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::TypeRange,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::scf::WhileOp::build(a1, v17, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertIfOp<mlir::mps::serialization::IfOp,mlir::scf::IfOp>::~ConvertIfOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertIfOp<mlir::mps::serialization::IfOp,mlir::scf::IfOp>::~ConvertIfOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertIfOp<mlir::mps::serialization::IfOp,mlir::scf::IfOp>::matchAndRewrite(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 24);
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = a2 - 16;
  }

  else
  {
    v9 = 0;
  }

  v24 = v26;
  v25 = 0x600000000;
  if (v8 < 7)
  {
    if (!v8)
    {
      v14 = 0;
      v15 = v26;
      goto LABEL_11;
    }

    v10 = 0;
    v11 = v26;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v8, 8);
    v10 = v25;
    v11 = v24;
  }

  v12 = 0;
  v13 = &v11[8 * v10];
  do
  {
    *&v13[8 * v12] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, v12) + 8) & 0xFFFFFFFFFFFFFFF8;
    ++v12;
  }

  while (v8 != v12);
  v14 = v25;
  v15 = v24;
LABEL_11:
  LODWORD(v25) = v14 + v8;
  mlir::ValueRange::ValueRange(v27, v15, (v14 + v8));
  v28[0] = *(a3 + 40);
  v28[1] = 0;
  v23 = mlir::ValueRange::dereference_iterator(v28, 0);
  v17 = mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>((a4 + 8), v7, v27, &v23);
  v28[0] = v17;
  if (v24 != v26)
  {
    free(v24);
  }

  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(v28, 0);
  v20 = ODSResultIndexAndLength;
  if (*(v28[0] + 36))
  {
    NextResultAtOffset = v28[0] - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  mlir::ValueRange::ValueRange(&v24, NextResultAtOffset, (HIDWORD(v20) + v20) - v20);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v24, v25);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::IfOp,mlir::TypeRange,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::scf::IfOp::build(a1, v17, *a3, a3[1], *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertConditionOp<mlir::mps::serialization::ConditionOp,mlir::scf::ConditionOp>::~ConvertConditionOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertConditionOp<mlir::mps::serialization::ConditionOp,mlir::scf::ConditionOp>::~ConvertConditionOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertConditionOp<mlir::mps::serialization::ConditionOp,mlir::scf::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v27 = v29;
  v28 = 0x600000000;
  if (v7 < 7)
  {
    if (!v7)
    {
      v13 = 0;
      v14 = v29;
      goto LABEL_11;
    }

    v9 = 0;
    v10 = v29;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v7, 8);
    v9 = v28;
    v10 = v27;
  }

  v11 = 0;
  v12 = &v10[8 * v9];
  do
  {
    *&v12[8 * v11] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v11) + 8) & 0xFFFFFFFFFFFFFFF8;
    ++v11;
  }

  while (v7 != v11);
  v13 = v28;
  v14 = v27;
LABEL_11:
  LODWORD(v28) = v13 + v7;
  mlir::ValueRange::ValueRange(v30, v14, (v13 + v7));
  ODSOperandIndexAndLength = mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v15, v16);
  v18 = *(a3 + 40);
  v31 = v18;
  v32 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v18 = mlir::ValueRange::offset_base(&v31, ODSOperandIndexAndLength);
  }

  v31 = v18;
  v32 = 0;
  v26 = mlir::ValueRange::dereference_iterator(&v31, 0);
  v21 = mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v19, v20);
  v22 = *(a3 + 40);
  v31 = v22;
  v32 = v21;
  if (v21)
  {
    v22 = mlir::ValueRange::offset_base(&v31, v21);
    v23 = v32;
  }

  else
  {
    v23 = 0;
  }

  v31 = v22;
  v32 = (HIDWORD(v21) + v21) - v23;
  v24 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), v30, &v26, &v31);
  (*(*a4 + 8))(a4, a2, v24);
  if (v27 != v29)
  {
    free(v27);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::TypeRange,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::scf::ConditionOp::build(a1, v19, *a3, a3[1], *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertYieldOp<mlir::mps::serialization::YieldOp,mlir::scf::YieldOp>::~ConvertYieldOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertYieldOp<mlir::mps::serialization::YieldOp,mlir::scf::YieldOp>::~ConvertYieldOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::YieldOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertYieldOp<mlir::mps::serialization::YieldOp,mlir::scf::YieldOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 36);
  if (v7)
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  v20 = v22;
  v21 = 0x600000000;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v7, 8);
    v9 = v21;
    v10 = v20;
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = 0;
    v10 = v22;
LABEL_8:
    v11 = 0;
    v12 = &v10[8 * v9];
    do
    {
      *&v12[8 * v11] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, v11) + 8) & 0xFFFFFFFFFFFFFFF8;
      ++v11;
    }

    while (v7 != v11);
    v13 = v21;
    v14 = v20;
    goto LABEL_11;
  }

  v13 = 0;
  v14 = v22;
LABEL_11:
  LODWORD(v21) = v13 + v7;
  mlir::ValueRange::ValueRange(v23, v14, (v13 + v7));
  ODSOperandIndexAndLength = mlir::scf::detail::YieldOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48));
  v16 = *(a3 + 40);
  v24 = v16;
  v25 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v16 = mlir::ValueRange::offset_base(&v24, ODSOperandIndexAndLength);
    v17 = v25;
  }

  else
  {
    v17 = 0;
  }

  v24 = v16;
  v25 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - v17;
  v18 = mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>((a4 + 8), *(a2 + 24), v23, &v24);
  (*(*a4 + 8))(a4, a2, v18);
  if (v20 != v22)
  {
    free(v20);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::YieldOp,mlir::TypeRange,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::ExtSIOp::build(a1, v17, *a3, a3[1], *a4, *(a4 + 8), 0, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::mps::serialization::FromElementsOp,mlir::tensor::FromElementsOp>::~ConvertFromElementsOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::mps::serialization::FromElementsOp,mlir::tensor::FromElementsOp>::~ConvertFromElementsOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::FromElementsOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertFromElementsOp<mlir::mps::serialization::FromElementsOp,mlir::tensor::FromElementsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a3 + 40);
  v8 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v10, &v11);
  (*(*a4 + 8))(a4, a2, v8);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::RankedTensorType,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::pdl_interp::CreateRangeOp::build(a1, v17, *a3, *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
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

void *mlir::mps::anonymous namespace::ConvertExtractOp<mlir::mps::serialization::ExtractOp,mlir::tensor::ExtractOp>::~ConvertExtractOp(void *a1)
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

void mlir::mps::anonymous namespace::ConvertExtractOp<mlir::mps::serialization::ExtractOp,mlir::tensor::ExtractOp>::~ConvertExtractOp(void *__p)
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

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ExtractOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::serialization::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::mps::anonymous namespace::ConvertExtractOp<mlir::mps::serialization::ExtractOp,mlir::tensor::ExtractOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v20 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ODSOperandIndexAndLength = mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 0, *(a3 + 48), v8, v9);
  v11 = *(a3 + 40);
  v21 = v11;
  v22 = ODSOperandIndexAndLength;
  if (ODSOperandIndexAndLength)
  {
    v11 = mlir::ValueRange::offset_base(&v21, ODSOperandIndexAndLength);
  }

  v21 = v11;
  v22 = 0;
  v19 = mlir::ValueRange::dereference_iterator(&v21, 0);
  v14 = mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(a3, 1u, *(a3 + 48), v12, v13);
  v15 = *(a3 + 40);
  v21 = v15;
  v22 = v14;
  if (v14)
  {
    v15 = mlir::ValueRange::offset_base(&v21, v14);
    v16 = v22;
  }

  else
  {
    v16 = 0;
  }

  v21 = v15;
  v22 = (HIDWORD(v14) + v14) - v16;
  v17 = mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>((a4 + 8), *(a2 + 24), &v20, &v19, &v21);
  (*(*a4 + 8))(a4, a2, v17);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::Type,mlir::Value,mlir::ValueRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::tensor::ExtractOp::build(a1, v19, *a3, *a4, *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
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

mlir::mps::MPSResourceBlobManagerInterface *mlir::mps::MPSResourceBlobManagerInterface::MPSResourceBlobManagerInterface(mlir::mps::MPSResourceBlobManagerInterface *this, mlir::Dialect *a2)
{
  v2 = this;
  {
    v6 = a2;
    mlir::mps::MPSResourceBlobManagerInterface::MPSResourceBlobManagerInterface();
    a2 = v6;
    v2 = this;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id;
  *(v2 + 1) = a2;
  *(v2 + 2) = v3;
  *v2 = &unk_1F5B2E678;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0x7000000000;
  llvm::sys::RWMutexImpl::RWMutexImpl((v2 + 48));
  *(v2 + 7) = 0;
  v4 = operator new(8uLL);
  *v4 = &unk_1F5B2E6C8;
  *(v2 + 8) = v4;
  return v2;
}

uint64_t llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::clear(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = 0;
      do
      {
        v3 = *(*result + v2);
        if (v3 != -8 && v3 != 0)
        {
          v5 = *v3;
          if (*(v3 + 88) == 1)
          {
            v6 = v3[9];
            if (v6 >= 8)
            {
              v7 = v3 + 6;
              v8 = v3 + 6;
              if ((v6 & 2) == 0)
              {
                v8 = *v7;
              }

              (*(v6 & 0xFFFFFFFFFFFFFFF8))(v8, v3[3], v3[4], v3[5]);
              v9 = v3[9];
              if (v9 >= 8)
              {
                if ((v9 & 4) != 0)
                {
                  if ((v9 & 2) == 0)
                  {
                    v7 = *v7;
                  }

                  (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7);
                }

                if ((v9 & 2) == 0)
                {
                  llvm::deallocate_buffer(v3[6], v3[7]);
                }
              }
            }
          }

          llvm::deallocate_buffer(v3, (v5 + 113));
        }

        *(*result + v2) = 0;
        v2 += 8;
      }

      while (8 * v1 != v2);
    }

    *(result + 12) = 0;
    *(result + 16) = 0;
  }

  return result;
}

void mlir::mps::MPSResourceBlobManagerInterface::~MPSResourceBlobManagerInterface(mlir::mps::MPSResourceBlobManagerInterface *this)
{
  *this = &unk_1F5B2E678;
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::clear(this + 24);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(this + 8);
    *(this + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 6);
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::~StringMap(this + 24);

  MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, v4);
}

{
  *this = &unk_1F5B2E678;
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::clear(this + 24);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(this + 8);
    *(this + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 6);
  llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::~StringMap(this + 24);
  v5 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, v4);

  operator delete(v5);
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::getManager(mlir::mps::MPSResourceBlobManagerInterface *this, mlir::MLIRContext *a2)
{
  LoadedDialect = mlir::MLIRContext::getLoadedDialect(this, "mps", 3);

  return mlir::Dialect::getRegisteredInterface<mlir::mps::MPSResourceBlobManagerInterface>(LoadedDialect);
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::mps::MPSResourceBlobManagerInterface>(uint64_t a1)
{
  {
    v1 = *(a1 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    v8 = a1;
    mlir::mps::MPSResourceBlobManagerInterface::MPSResourceBlobManagerInterface();
    a1 = v8;
    v1 = *(v8 + 64);
    if (!v1)
    {
      return 0;
    }
  }

  v2 = *(a1 + 48);
  v3 = ((mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id >> 4) ^ (mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id >> 9)) & (v1 - 1);
  v4 = *(v2 + 16 * v3);
  if (v4 != mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id)
  {
    v6 = 1;
    while (v4 != -4096)
    {
      v7 = v3 + v6++;
      v3 = v7 & (v1 - 1);
      v4 = *(v2 + 16 * v3);
      if (v4 == mlir::detail::TypeIDResolver<mlir::mps::MPSResourceBlobManagerInterface,void>::resolveTypeID(void)::id)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (v3 == v1)
  {
    return 0;
  }

  return *(v2 + 16 * v3 + 8);
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob@<X0>(mlir::mps::MPSResourceBlobManagerInterface *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(this + 8);
  result = (*(*v7 + 16))(v7);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 48) = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(unsigned long,unsigned long)::$_0,mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(unsigned long,unsigned long)::$_0,void>::Callbacks + 2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v7;
  *(a4 + 56) = 1;
  return result;
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::lookup(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 48));
  v7 = llvm::StringMapImpl::hash(a2, a3, v6);
  Key = llvm::StringMapImpl::FindKey((a1 + 24), a2, a3, v7);
  if (Key == -1 || Key == *(a1 + 32))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(a1 + 24) + 8 * Key) + 8;
  }

  llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
  return v9;
}

BOOL mlir::mps::MPSResourceBlobManagerInterface::contains(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 48));
  v7 = llvm::StringMapImpl::hash(a2, a3, v6);
  Key = llvm::StringMapImpl::FindKey((a1 + 24), a2, a3, v7);
  if (Key == -1)
  {
    v10 = *(a1 + 32);
    v9 = v10;
  }

  else
  {
    v9 = Key;
    v10 = *(a1 + 32);
  }

  v11 = v9 != v10;
  llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
  return v11;
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::defineEntryValue(uint64_t a1, unsigned int *a2, unint64_t a3, __int128 *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  llvm::sys::RWMutexImpl::lock_shared((a1 + 48));
  v9 = llvm::StringMapImpl::hash(a2, a3, v8);
  Key = llvm::StringMapImpl::FindKey((a1 + 24), a2, a3, v9);
  if (Key == -1 || Key == *(a1 + 32))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(*(a1 + 24) + 8 * Key) + 8;
  }

  result = llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
  v21 = *a4;
  v13 = *(a4 + 6);
  v22 = *(a4 + 2);
  v25 = v13;
  if (v13 >= 8)
  {
    if ((v13 & 2) != 0 && (v13 & 4) != 0)
    {
      (*((v13 & 0xFFFFFFFFFFFFFFF8) + 8))(&v23, a4 + 24);
      result = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 16))(a4 + 24);
    }

    else
    {
      v23 = *(a4 + 24);
      v24 = *(a4 + 5);
    }

    *(a4 + 6) = 0;
  }

  v14 = *(a4 + 56);
  v26 = v14;
  if (*(v11 + 80))
  {
    result = mlir::AsmResourceBlob::operator=((v11 + 16), &v21);
    if (v25 >= 8)
    {
      v15 = (v25 & 2) != 0 ? &v23 : v23;
      result = (*(v25 & 0xFFFFFFFFFFFFFFF8))(v15, v21, *(&v21 + 1), v22);
      v16 = v25;
      if (v25 >= 8)
      {
        if ((v25 & 4) != 0)
        {
          if ((v25 & 2) != 0)
          {
            v17 = &v23;
          }

          else
          {
            v17 = v23;
          }

          result = (*((v25 & 0xFFFFFFFFFFFFFFF8) + 16))(v17);
        }

        if ((v16 & 2) == 0)
        {
          llvm::deallocate_buffer(v23, *(&v23 + 1));
        }
      }
    }
  }

  else
  {
    v18 = v22;
    *(v11 + 16) = v21;
    *(v11 + 32) = v18;
    v19 = v25;
    *(v11 + 64) = v25;
    if (v19 >= 8)
    {
      if ((v19 & 2) != 0 && (v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 8))(v11 + 40, &v23);
        result = (*((*(v11 + 64) & 0xFFFFFFFFFFFFFFF8) + 16))(&v23);
        v14 = v26;
      }

      else
      {
        v20 = v24;
        *(v11 + 40) = v23;
        *(v11 + 56) = v20;
      }
    }

    *(v11 + 72) = v14;
    *(v11 + 80) = 1;
  }

  *(v11 + 96) = 1;
  return result;
}

BOOL mlir::mps::MPSResourceBlobManagerInterface::insert@<W0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, const unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30[4] = *MEMORY[0x1E69E9840];
  llvm::sys::RWMutexImpl::lock((a1 + 48));
  v27[0] = a1;
  v27[1] = a4;
  v10 = mlir::mps::MPSResourceBlobManagerInterface::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v27, a2, a3);
  if (v10)
  {
    v11 = *(a1 + 8);
    {
      v22 = v10;
      mlir::mps::MPSResourceBlobManagerInterface::insert();
      v10 = v22;
    }

    v12 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
    *a5 = v10;
    a5[1] = v12;
    a5[2] = v11;
    return llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
  }

  v28 = v30;
  v29 = xmmword_1E096E640;
  if (a3 >= 0x21)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v28, v30, a3, 1);
    v13 = v29;
LABEL_8:
    memcpy(v28 + v13, a2, a3);
    v13 = v29;
    goto LABEL_9;
  }

  v13 = 0;
  if (a3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v14 = &a3[v13];
  *&v29 = v14;
  if ((v14 + 1) > *(&v29 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v28, v30, (v14 + 1), 1);
    v14 = v29;
  }

  v14[v28] = 95;
  *&v29 = v29 + 1;
  v15 = (a3 + 1);
  v16 = 1;
  while (1)
  {
    v24 = v16;
    v25 = &v24;
    v26 = 267;
    llvm::Twine::toVector(&v25, &v28);
    v17 = mlir::mps::MPSResourceBlobManagerInterface::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(v27, v28, v29);
    if (v17)
    {
      break;
    }

    v18 = v29;
    if (v29 == v15)
    {
      ++v16;
    }

    else
    {
      if (v29 <= v15)
      {
        if (*(&v29 + 1) < v15)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v28, v30, v15, 1);
          v18 = v29;
        }

        if (v15 != v18)
        {
          bzero(v28 + v18, v15 - v18);
        }
      }

      *&v29 = v15;
      ++v16;
    }
  }

  v19 = *(a1 + 8);
  {
    v23 = v17;
    mlir::DialectBytecodeReader::readResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>();
    v17 = v23;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
  *a5 = v17;
  a5[1] = v20;
  a5[2] = v19;
  if (v28 != v30)
  {
    free(v28);
  }

  return llvm::sys::RWMutexImpl::unlock_shared((a1 + 48));
}

uint64_t mlir::mps::MPSResourceBlobManagerInterface::insert(llvm::StringRef,std::optional<mlir::AsmResourceBlob>)::$_0::operator()(uint64_t *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  *v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = llvm::StringMapImpl::hash(a2, a3, a3);
  v8 = llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::mps::MPSResourceBlobEntry>((v6 + 24), a2, a3, v7, &v32);
  v10 = v9;
  if (v37 == 1 && v36 >= 8)
  {
    v11 = (v36 & 2) != 0 ? (&v34 + 8) : *(&v34 + 1);
    (*(v36 & 0xFFFFFFFFFFFFFFF8))(v11, v33, *(&v33 + 1), v34);
    v12 = v36;
    if (v36 >= 8)
    {
      if ((v36 & 4) != 0)
      {
        if ((v36 & 2) != 0)
        {
          v13 = &v34 + 8;
        }

        else
        {
          v13 = *(&v34 + 1);
        }

        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 16))(v13);
      }

      if ((v12 & 2) == 0)
      {
        llvm::deallocate_buffer(*(&v34 + 1), v35[0]);
      }
    }
  }

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v14 = *v8;
  v15 = *v8 + 112;
  v16 = **v8;
  v17 = a1[1];
  LOBYTE(v25) = 0;
  v31 = 0;
  if (*(v17 + 64) == 1)
  {
    v18 = *(v17 + 2);
    v25 = *v17;
    v19 = *(v17 + 6);
    v26 = v18;
    v29 = v19;
    if (v19 >= 8)
    {
      if ((v19 & 2) != 0 && (v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 8))(&v27, v17 + 24);
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v17 + 24);
      }

      else
      {
        v20 = *(v17 + 24);
        v28 = *(v17 + 5);
        v27 = v20;
      }

      *(v17 + 6) = 0;
    }

    v30 = *(v17 + 56);
    v31 = 1;
  }

  v14[1] = v15;
  v14[2] = v16;
  std::__optional_storage_base<mlir::AsmResourceBlob,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<mlir::AsmResourceBlob,false>>(v14 + 3, &v25);
  *(v14 + 104) = *(v14 + 88);
  v14[12] = 0;
  if (v31 == 1 && v29 >= 8)
  {
    v22 = (v29 & 2) != 0 ? &v27 : v27;
    (*(v29 & 0xFFFFFFFFFFFFFFF8))(v22, v25, *(&v25 + 1), v26);
    v23 = v29;
    if (v29 >= 8)
    {
      if ((v29 & 4) != 0)
      {
        if ((v29 & 2) != 0)
        {
          v24 = &v27;
        }

        else
        {
          v24 = v27;
        }

        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 16))(v24);
      }

      if ((v23 & 2) == 0)
      {
        llvm::deallocate_buffer(v27, *(&v27 + 1));
      }
    }
  }

  return *v8 + 8;
}

uint64_t *llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::try_emplace_with_hash<mlir::mps::MPSResourceBlobEntry>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 113, 8uLL);
    v13 = buffer + 112;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v15 = v10[1];
      ++v10;
      v11 = v15;
    }

    return v10;
  }

  buffer = llvm::allocate_buffer(a3 + 113, 8uLL);
  v13 = buffer + 112;
  if (a3)
  {
LABEL_4:
    memcpy(v13, a2, a3);
  }

LABEL_5:
  *(v13 + a3) = 0;
  *buffer = a3;
  *(buffer + 8) = *a5;
  buffer[24] = 0;
  buffer[88] = 0;
  if (*(a5 + 80) == 1)
  {
    *(buffer + 24) = *(a5 + 16);
    *(buffer + 5) = *(a5 + 32);
    v14 = *(a5 + 64);
    *(buffer + 9) = v14;
    if (v14 >= 8)
    {
      if ((v14 & 2) != 0 && (v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 8))(buffer + 48, a5 + 40);
        (*((*(buffer + 9) & 0xFFFFFFFFFFFFFFF8) + 16))(a5 + 40);
      }

      else
      {
        *(buffer + 3) = *(a5 + 40);
        *(buffer + 8) = *(a5 + 56);
      }

      *(a5 + 64) = 0;
    }

    buffer[80] = *(a5 + 72);
    buffer[88] = 1;
  }

  *(buffer + 12) = *(a5 + 88);
  buffer[104] = *(a5 + 96);
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v16 = *v10 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v18 = v10[1];
      ++v10;
      v17 = v18;
      if (v18)
      {
        v19 = v17 == -8;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19);
  }

  return v10;
}

const char *llvm::getTypeName<mlir::mps::MPSResourceBlobManagerInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::MPSResourceBlobManagerInterface]";
  v6 = 92;
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

uint64_t llvm::StringMap<mlir::mps::MPSResourceBlobEntry,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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
          v6 = *v4;
          if (*(v4 + 88) == 1)
          {
            v7 = v4[9];
            if (v7 >= 8)
            {
              v8 = v4 + 6;
              v9 = v4 + 6;
              if ((v7 & 2) == 0)
              {
                v9 = *v8;
              }

              (*(v7 & 0xFFFFFFFFFFFFFFF8))(v9, v4[3], v4[4], v4[5]);
              v10 = v4[9];
              if (v10 >= 8)
              {
                if ((v10 & 4) != 0)
                {
                  if ((v10 & 2) == 0)
                  {
                    v8 = *v8;
                  }

                  (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
                }

                if ((v10 & 2) == 0)
                {
                  llvm::deallocate_buffer(v4[6], v4[7]);
                }
              }
            }
          }

          llvm::deallocate_buffer(v4, (v6 + 113));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*a1);
  return a1;
}

void *mlir::createRawElementsAttr(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v31 = a1;
  v5 = mlir::TensorType::operator mlir::ShapedType(&v31);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v5, v6);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v31);
  isCompatibleWithDenseStorage = mlir::mps::isCompatibleWithDenseStorage(RHS);
  if (ElementsAttrStorageSize != a3)
  {
    goto LABEL_21;
  }

  if (a3 >> 16)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v10 = 0;
    do
    {
      v11 = a2[v10++];
    }

    while (v10 < a3 && v11 == 0);
    if (v11)
    {
      if (((a3 < 0x41) & isCompatibleWithDenseStorage) == 0)
      {
        goto LABEL_11;
      }

LABEL_21:
      v24 = mlir::TensorType::operator mlir::ShapedType(&v31);
      v30 = mlir::DenseElementsAttr::getFromRawBuffer(v24, v25, a2, a3, v26, v27, v28);
      return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v30);
    }
  }

  if (isCompatibleWithDenseStorage)
  {
    goto LABEL_21;
  }

LABEL_11:
  result = mlir::mps::getBufferTensorAttr(v31, a2, a3);
  if (!result)
  {
    return result;
  }

  v14 = *result;
  {
    v15 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    v29 = result;
    mlir::createRawElementsAttr();
    result = v29;
    v15 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (!v17)
    {
      return result;
    }
  }

  v18 = v16;
  v19 = v17;
  do
  {
    v20 = v19 >> 1;
    v21 = &v18[2 * (v19 >> 1)];
    v23 = *v21;
    v22 = v21 + 2;
    v19 += ~(v19 >> 1);
    if (v23 < v15)
    {
      v18 = v22;
    }

    else
    {
      v19 = v20;
    }
  }

  while (v19);
  return result;
}

uint64_t mlir::getElementsAttrRawData(uint64_t a1)
{
  result = mlir::DenseElementsAttr::classof(a1);
  if (result)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  if (v3)
  {
    return mlir::DenseElementsAttr::getRawStringData(&v5);
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v4)
  {
    return mlir::mps::MPSBufferTensorAttr::getRawData(&v5);
  }

  return result;
}

uint64_t mlir::tryCreateMutableElementsAttr(void *a1, __n128 **a2)
{
  v23 = a1;
  v3 = mlir::TensorType::operator mlir::ShapedType(&v23);
  if (mlir::mps::getElementsAttrStorageSize(v3, v4) <= 0x40)
  {
    result = 0;
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  BufferTensorAttr = mlir::mps::getBufferTensorAttr(v23);
  v22 = BufferTensorAttr;
  if (!BufferTensorAttr)
  {
    goto LABEL_16;
  }

  v7 = BufferTensorAttr->n128_u64[0];
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v7;
    v20 = BufferTensorAttr;
    mlir::createRawElementsAttr();
    BufferTensorAttr = v20;
    v8 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v9 = *(v19 + 8);
    v10 = *(v19 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v17 = v11[1];
    goto LABEL_17;
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  *a2 = BufferTensorAttr;
  a2[1] = v17;
  mlir::mps::MPSBufferTensorAttr::getHandle(&v22, &v21);
  if (*(v21.n128_u64[0] + 80))
  {
    v18 = v21.n128_u64[0] + 16;
  }

  else
  {
    v18 = 0;
  }

  return *v18;
}

void *mlir::convertElementsAttr(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v31[0] = a1;
  v31[1] = a2;
  if (mlir::DenseElementsAttr::classof(a1))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v32 = v6;
  if (v6)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v32);
LABEL_11:
    v3 = RawStringData;
    v5 = v8;
    goto LABEL_12;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  v32 = v9;
  if (v9)
  {
    RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(&v32);
    goto LABEL_11;
  }

LABEL_12:
  Type = mlir::ElementsAttr::getType(v31);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(Type);
  v12 = mlir::mps::isCompatibleWithDenseStorage(ElementTypeOrSelf) & (a3 | (v5 < 0x41));
  if (v12 == mlir::DenseElementsAttr::classof(v31[0]))
  {
    return v31[0];
  }

  if (v12)
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(v31);
    v32 = mlir::DenseElementsAttr::getFromRawBuffer(ArgOperands, v14, v3, v5, v15, v16, v17);
    return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v32);
  }

  v19 = mlir::ElementsAttr::getType(v31);
  result = mlir::mps::getBufferTensorAttr(v19, v3, v5);
  if (result)
  {
    v20 = *result;
    {
      v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        return result;
      }
    }

    else
    {
      v30 = result;
      mlir::createRawElementsAttr();
      result = v30;
      v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        return result;
      }
    }

    v24 = v22;
    v25 = v23;
    do
    {
      v26 = v25 >> 1;
      v27 = &v24[2 * (v25 >> 1)];
      v29 = *v27;
      v28 = v27 + 2;
      v25 += ~(v25 >> 1);
      if (v29 < v21)
      {
        v24 = v28;
      }

      else
      {
        v25 = v26;
      }
    }

    while (v25);
  }

  return result;
}

uint64_t mlir::reshapeElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[0] = a3;
  v29[1] = a4;
  result = mlir::DenseElementsAttr::classof(a1);
  if (result)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v27.n128_u64[0] = v8;
  if (v8)
  {
    v28 = mlir::DenseElementsAttr::reshape(&v27, a3, a4);
    return mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v28);
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v28 = v9;
  if (v9)
  {
    Context = mlir::Attribute::getContext(v29);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v29);
    v13 = v12;
    isSplat = mlir::ElementsAttr::isSplat(v29);
    v15 = mlir::RankedTensorType::get(ArgAttrsAttr, v13, isSplat, 0);
    mlir::mps::MPSBufferTensorAttr::getHandle(&v28, &v27);
    result = mlir::mps::MPSBufferTensorAttr::get(Context, v15, &v27);
    if (result)
    {
      v16 = *result;
      {
        v17 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        if (!v19)
        {
          return result;
        }
      }

      else
      {
        v26 = result;
        mlir::createRawElementsAttr();
        result = v26;
        v17 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        if (!v19)
        {
          return result;
        }
      }

      v20 = v18;
      v21 = v19;
      do
      {
        v22 = v21 >> 1;
        v23 = &v20[2 * (v21 >> 1)];
        v25 = *v23;
        v24 = v23 + 2;
        v21 += ~(v21 >> 1);
        if (v25 < v17)
        {
          v20 = v24;
        }

        else
        {
          v21 = v22;
        }
      }

      while (v21);
    }
  }

  return result;
}

__n128 *mlir::createElementsAttr(void *a1, _DWORD *a2, unint64_t a3)
{
  v63 = a1;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v63);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&RHS);
  v59[1] = 0;
  RHS = &v62;
  v61 = xmmword_1E096FAF0;
  v59[0] = 0;
  MutableElementsAttr = mlir::tryCreateMutableElementsAttr(v63, v59);
  RawElementsAttr = v59[0];
  if (v59[0])
  {
    v9 = MutableElementsAttr;
    v10 = v7;
  }

  else
  {
    v11 = mlir::TensorType::operator mlir::ShapedType(&v63);
    ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v11, v12);
    v10 = ElementsAttrStorageSize;
    v14 = v61;
    if (v61 != ElementsAttrStorageSize)
    {
      if (v61 <= ElementsAttrStorageSize)
      {
        if (*(&v61 + 1) < ElementsAttrStorageSize)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&RHS, &v62, ElementsAttrStorageSize, 1);
          v14 = v61;
        }

        if (v10 != v14)
        {
          bzero(&RHS[v14], v10 - v14);
        }
      }

      *&v61 = v10;
    }

    v9 = RHS;
  }

  v58 = mlir::AffineBinaryOpExpr::getRHS(&v63);
  __dst = v9;
  v56 = v10;
  if (mlir::Type::isInteger(&v58, 1) && a3 == 1)
  {
    v15 = a2[2];
    if (v15 > 0x40)
    {
      v16 = llvm::APInt::countLeadingZerosSlowCase(a2) == v15;
    }

    else
    {
      v16 = *a2 == 0;
    }

    v21 = v16;
    *v9 = v21 - 1;
    goto LABEL_28;
  }

  v58 = mlir::AffineBinaryOpExpr::getRHS(&v63);
  if (mlir::Type::isInteger(&v58, 1))
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    v17 = v10;
    v18 = v9;
    while (1)
    {
      while (1)
      {
        v28 = a3 - 8;
        v29 = a3 >= 8 ? 8 : a3;
        v30 = v29 <= 1 ? 1 : v29;
        if (a3)
        {
          break;
        }

        *v18++ = 0;
        a3 = -8;
        if (!--v17)
        {
          goto LABEL_28;
        }
      }

      v31 = a2[2];
      if (v31 > 0x40)
      {
        v27 = llvm::APInt::countLeadingZerosSlowCase(a2) != v31;
        if (a3 < 2)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = *a2 != 0;
        if (a3 < 2)
        {
          goto LABEL_42;
        }
      }

      v32 = a2[6];
      if (v32 >= 0x41)
      {
        v33 = llvm::APInt::countLeadingZerosSlowCase((a2 + 4)) == v32;
      }

      else
      {
        v33 = *(a2 + 2) == 0;
      }

      if (v33)
      {
        v35 = 0;
      }

      else
      {
        v35 = 2;
      }

      v27 |= v35;
      if (a3 != 2)
      {
        v36 = a2[10];
        v37 = v36 >= 0x41 ? llvm::APInt::countLeadingZerosSlowCase((a2 + 8)) == v36 : *(a2 + 4) == 0;
        v38 = v37;
        v39 = v38 ? 0 : 4;
        v27 |= v39;
        if (a3 != 3)
        {
          v40 = a2[14];
          if (v40 >= 0x41)
          {
            if (llvm::APInt::countLeadingZerosSlowCase((a2 + 12)) == v40)
            {
              v42 = 0;
            }

            else
            {
              v42 = 8;
            }

            v27 |= v42;
            if (a3 != 4)
            {
LABEL_86:
              v43 = a2[18];
              if (v43 >= 0x41)
              {
                v44 = llvm::APInt::countLeadingZerosSlowCase((a2 + 16)) == v43;
              }

              else
              {
                v44 = *(a2 + 8) == 0;
              }

              if (v44)
              {
                v46 = 0;
              }

              else
              {
                v46 = 16;
              }

              v27 |= v46;
              if (a3 != 5)
              {
                v47 = a2[22];
                v48 = v47 >= 0x41 ? llvm::APInt::countLeadingZerosSlowCase((a2 + 20)) == v47 : *(a2 + 10) == 0;
                v49 = v48;
                v50 = v49 ? 0 : 32;
                v27 |= v50;
                if (a3 != 6)
                {
                  v51 = a2[26];
                  v52 = v51 >= 0x41 ? llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v51 : *(a2 + 12) == 0;
                  v53 = v52;
                  v54 = v53 ? 0 : 64;
                  v27 |= v54;
                  if (a3 != 7)
                  {
                    v55 = a2[30];
                    if (v55 < 0x41)
                    {
                      v24 = *(a2 + 14) == 0;
                    }

                    else
                    {
                      v24 = llvm::APInt::countLeadingZerosSlowCase((a2 + 28)) == v55;
                    }

                    if (v24)
                    {
                      v26 = 0;
                    }

                    else
                    {
                      v26 = 0x80;
                    }

                    v27 |= v26;
                  }
                }
              }
            }
          }

          else
          {
            if (*(a2 + 6))
            {
              v41 = 8;
            }

            else
            {
              v41 = 0;
            }

            v27 |= v41;
            if (a3 != 4)
            {
              goto LABEL_86;
            }
          }
        }
      }

LABEL_42:
      a2 += 4 * v30;
      *v18++ = v27;
      a3 = v28;
      if (!--v17)
      {
        goto LABEL_28;
      }
    }
  }

  if (a3 >= 1)
  {
    v19 = IntOrFloatBitWidth >> 3;
    do
    {
      v20 = a2;
      if (a2[2] >= 0x41u)
      {
        v20 = *a2;
      }

      memcpy(v9, v20, v19);
      v9 += v19;
      a2 += 4;
      --a3;
    }

    while (a3);
  }

LABEL_28:
  if (!RawElementsAttr)
  {
    RawElementsAttr = mlir::createRawElementsAttr(v63, __dst, v56);
    v22 = RHS;
    if (RHS == &v62)
    {
      return RawElementsAttr;
    }

    goto LABEL_30;
  }

  v22 = RHS;
  if (RHS != &v62)
  {
LABEL_30:
    free(v22);
  }

  return RawElementsAttr;
}

__n128 *mlir::createElementsAttr(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v32);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&RHS);
  v28[1] = 0;
  RHS = &v31;
  v30 = xmmword_1E096FAF0;
  v28[0] = 0;
  MutableElementsAttr = mlir::tryCreateMutableElementsAttr(v32, v28);
  RawElementsAttr = v28[0];
  if (v28[0])
  {
    v9 = MutableElementsAttr;
    v25 = v7;
    if (a3 < 1)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v10 = mlir::TensorType::operator mlir::ShapedType(&v32);
  MutableElementsAttr = mlir::mps::getElementsAttrStorageSize(v10, v11);
  v12 = v30;
  if (v30 != MutableElementsAttr)
  {
    if (v30 <= MutableElementsAttr)
    {
      if (*(&v30 + 1) < MutableElementsAttr)
      {
        v13 = MutableElementsAttr;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&RHS, &v31, MutableElementsAttr, 1);
        MutableElementsAttr = v13;
        v12 = v30;
      }

      if (MutableElementsAttr != v12)
      {
        v14 = MutableElementsAttr;
        bzero(v12 + RHS, MutableElementsAttr - v12);
        MutableElementsAttr = v14;
      }
    }

    *&v30 = MutableElementsAttr;
  }

  v25 = MutableElementsAttr;
  v9 = RHS;
  if (a3 >= 1)
  {
LABEL_12:
    v15 = IntOrFloatBitWidth >> 3;
    v16 = llvm::APFloatBase::PPCDoubleDouble(MutableElementsAttr);
    v17 = (a2 + 8);
    v18 = v9;
    do
    {
      if (v16 == *v17)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v17, &v26);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v17, &v26);
      }

      v19 = v27;
      v20 = v26;
      if (v27 >= 0x41)
      {
        v21 = v26;
      }

      else
      {
        v21 = &v26;
      }

      memcpy(v18, v21, v15);
      if (v19 >= 0x41 && v20 != 0)
      {
        operator delete[](v20);
      }

      v18 += v15;
      v17 = (v17 + 32);
      --a3;
    }

    while (a3);
  }

LABEL_25:
  if (!RawElementsAttr)
  {
    RawElementsAttr = mlir::createRawElementsAttr(v32, v9, v25);
    v23 = RHS;
    if (RHS == &v31)
    {
      return RawElementsAttr;
    }

    goto LABEL_27;
  }

  v23 = RHS;
  if (RHS != &v31)
  {
LABEL_27:
    free(v23);
  }

  return RawElementsAttr;
}

void *mlir::createSplatF16ElementsAttr(void *a1, float _S0)
{
  __asm { FCVT            H0, S0 }

  v8 = _H0;
  return mlir::createRawElementsAttr(a1, &v8, 2uLL);
}

void *mlir::rewriteElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v529[5] = *MEMORY[0x1E69E9840];
  *&v519 = a1;
  *(&v519 + 1) = a2;
  v518[0] = a3;
  v518[1] = a4;
  v517[0] = mlir::CallOpInterface::getArgOperands(&v519);
  v517[1] = v8;
  if (mlir::CallOpInterface::getArgOperands(v518))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v518);
    if (!v10)
    {
LABEL_6:
      v12 = v518;
      goto LABEL_8;
    }

    v11 = 8 * v10;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = v517;
LABEL_8:
  v13 = mlir::CallableOpInterface::getArgAttrsAttr(v12);
  v15 = v14;
  isSplat = mlir::ElementsAttr::isSplat(v518);
  v516 = mlir::RankedTensorType::get(v13, v15, isSplat, 0);
  v17 = mlir::ElementsAttr::isSplat(v517);
  if (v17 == mlir::ElementsAttr::isSplat(v518))
  {
    *&v519 = mlir::convertElementsAttr(v519, *(&v519 + 1), a5);
    *(&v519 + 1) = v18;
    v19 = mlir::CallableOpInterface::getArgAttrsAttr(v517);
    if (v15 == v20 && !memcmp(v13, v19, 8 * v15))
    {
      return v519;
    }

    v21 = v519;
    v22 = mlir::TensorType::operator mlir::ShapedType(&v516);
    return mlir::reshapeElementsAttr(v21, *(&v21 + 1), v22, v23);
  }

  if (*(*mlir::ElementsAttr::isSplat(v517) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::ElementsAttr::isSplat(v518) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 0;
  }

  v524 = v526;
  v525 = xmmword_1E0971D80;
  if (mlir::ElementsAttr::isSplat(&v519))
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v516);
    ElementsAttrStorageSize = (mlir::mps::getElementsAttrElementBitWidth(RHS) + 7) >> 3;
    v27 = v525;
    v28 = v525 > ElementsAttrStorageSize;
    if (v525 == ElementsAttrStorageSize)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v29 = mlir::TensorType::operator mlir::ShapedType(&v516);
    ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v29, v30);
    v27 = v525;
    v28 = v525 > ElementsAttrStorageSize;
    if (v525 == ElementsAttrStorageSize)
    {
      goto LABEL_23;
    }
  }

  if (!v28)
  {
    if (*(&v525 + 1) < ElementsAttrStorageSize)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v524, v526, ElementsAttrStorageSize, 1);
      v27 = v525;
    }

    if (ElementsAttrStorageSize != v27)
    {
      bzero(v524 + v27, ElementsAttrStorageSize - v27);
    }
  }

  *&v525 = ElementsAttrStorageSize;
LABEL_23:
  v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
  if (!mlir::Type::isUnsignedInteger(&v527, 8))
  {
    v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
    if (mlir::Type::isInteger(&v527, 8))
    {
      v31 = v524;
      v523 = v519;
      Type = mlir::ElementsAttr::getType(&v523);
      if (Type)
      {
        v44 = *Type;
        {
          v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v46 = *(v44 + 8);
          v47 = *(v44 + 16);
          if (!v47)
          {
            goto LABEL_285;
          }
        }

        else
        {
          v168 = Type;
          mlir::arith::ExtUIOp::fold();
          Type = v168;
          v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v46 = *(v44 + 8);
          v47 = *(v44 + 16);
          if (!v47)
          {
            goto LABEL_285;
          }
        }

        v48 = v46;
        v49 = v47;
        do
        {
          v50 = v49 >> 1;
          v51 = &v48[2 * (v49 >> 1)];
          v53 = *v51;
          v52 = v51 + 2;
          v49 += ~(v49 >> 1);
          if (v53 < v45)
          {
            v48 = v52;
          }

          else
          {
            v49 = v50;
          }
        }

        while (v49);
        if (v48 != &v46[2 * v47] && *v48 == v45)
        {
          v169 = v48[1];
LABEL_286:
          v521 = Type;
          v522 = v169;
          v520 = mlir::ElementsAttr::isSplat(&v521);
          v170 = mlir::ElementsAttr::isSplat(&v523);
          RawStringData = v523;
          if (mlir::DenseElementsAttr::classof(v523))
          {
            v171 = RawStringData;
          }

          else
          {
            v171 = 0;
          }

          v527 = v171;
          if (v171)
          {
            RawStringData = mlir::DenseElementsAttr::getRawStringData(&v527);
            v6 = v172;
            if (v170)
            {
              goto LABEL_291;
            }

LABEL_298:
            NumElements = mlir::ElementsAttr::getNumElements(v523, *(&v523 + 1));
            if (mlir::Type::isUnsignedInteger(&v520, 8))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_300:
              for (i = 0; i != NumElements; ++i)
              {
                if (v170)
                {
                  v176 = 0;
                }

                else
                {
                  v176 = i;
                }

                v31[i] = RawStringData[v176];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v520, 8))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_310:
              for (j = 0; j != NumElements; ++j)
              {
                if (v170)
                {
                  v178 = 0;
                }

                else
                {
                  v178 = j;
                }

                v31[j] = RawStringData[v178];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 16))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_323:
              for (k = 0; k != NumElements; ++k)
              {
                if (v170)
                {
                  v180 = 0;
                }

                else
                {
                  v180 = k;
                }

                v31[k] = *&RawStringData[2 * v180];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v520, 16))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_333:
              for (m = 0; m != NumElements; ++m)
              {
                if (v170)
                {
                  v182 = 0;
                }

                else
                {
                  v182 = m;
                }

                v31[m] = *&RawStringData[2 * v182];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 32))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_343:
              for (n = 0; n != NumElements; ++n)
              {
                if (v170)
                {
                  v184 = 0;
                }

                else
                {
                  v184 = n;
                }

                v31[n] = *&RawStringData[4 * v184];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v520, 32))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_353:
              for (ii = 0; ii != NumElements; ++ii)
              {
                if (v170)
                {
                  v186 = 0;
                }

                else
                {
                  v186 = ii;
                }

                v31[ii] = *&RawStringData[4 * v186];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 64))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
              {
                v187 = 0;
LABEL_368:
                v188 = NumElements - v187;
                v189 = &v31[v187];
                v190 = &RawStringData[8 * v187];
                do
                {
                  v191 = *v190;
                  v190 += 8;
                  *v189++ = v191;
                  --v188;
                }

                while (v188);
                goto LABEL_944;
              }

              if (NumElements >= 0x20)
              {
                v187 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v206 = (RawStringData + 128);
                v207 = v31 + 16;
                v208 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  *&v209 = vqtbl4q_s8(v206[-2], xmmword_1E0999910).u64[0];
                  *&v210 = vqtbl4q_s8(*v206, xmmword_1E0999910).u64[0];
                  *(&v209 + 1) = vqtbl4q_s8(v206[-1], xmmword_1E0999910).u64[0];
                  *(&v210 + 1) = vqtbl4q_s8(v206[1], xmmword_1E0999910).u64[0];
                  *(v207 - 1) = v209;
                  *v207 = v210;
                  v206 += 4;
                  v207 += 2;
                  v208 -= 32;
                }

                while (v208);
                if (NumElements == v187)
                {
                  goto LABEL_944;
                }

                if ((NumElements & 0x18) == 0)
                {
                  goto LABEL_368;
                }
              }

              else
              {
                v187 = 0;
              }

              v211 = v187;
              v187 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v212 = &RawStringData[8 * v211];
              v213 = &v31[v211];
              v214 = v211 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                *v213 = vqtbl4q_s8(*v212, xmmword_1E0999920).u64[0];
                v213 += 8;
                ++v212;
                v214 += 8;
              }

              while (v214);
              if (NumElements == v187)
              {
                goto LABEL_944;
              }

              goto LABEL_368;
            }

            if (mlir::Type::isInteger(&v520, 64))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
              {
                v192 = 0;
LABEL_377:
                v193 = NumElements - v192;
                v194 = &v31[v192];
                v195 = &RawStringData[8 * v192];
                do
                {
                  v196 = *v195;
                  v195 += 8;
                  *v194++ = v196;
                  --v193;
                }

                while (v193);
                goto LABEL_944;
              }

              if (NumElements >= 0x20)
              {
                v192 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v217 = (RawStringData + 128);
                v218 = v31 + 16;
                v219 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  *&v220 = vqtbl4q_s8(v217[-2], xmmword_1E0999910).u64[0];
                  *&v221 = vqtbl4q_s8(*v217, xmmword_1E0999910).u64[0];
                  *(&v220 + 1) = vqtbl4q_s8(v217[-1], xmmword_1E0999910).u64[0];
                  *(&v221 + 1) = vqtbl4q_s8(v217[1], xmmword_1E0999910).u64[0];
                  *(v218 - 1) = v220;
                  *v218 = v221;
                  v217 += 4;
                  v218 += 2;
                  v219 -= 32;
                }

                while (v219);
                if (NumElements == v192)
                {
                  goto LABEL_944;
                }

                if ((NumElements & 0x18) == 0)
                {
                  goto LABEL_377;
                }
              }

              else
              {
                v192 = 0;
              }

              v222 = v192;
              v192 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v223 = &RawStringData[8 * v222];
              v224 = &v31[v222];
              v225 = v222 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                *v224 = vqtbl4q_s8(*v223, xmmword_1E0999920).u64[0];
                v224 += 8;
                ++v223;
                v225 += 8;
              }

              while (v225);
              if (NumElements == v192)
              {
                goto LABEL_944;
              }

              goto LABEL_377;
            }

            if (mlir::Type::isF16(&v520))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_384:
              for (jj = 0; jj != NumElements; ++jj)
              {
                if (v170)
                {
                  v198 = 0;
                }

                else
                {
                  v198 = jj;
                }

                v31[jj] = *&RawStringData[2 * v198];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isF32(&v520))
            {
              if (NumElements < 1)
              {
                goto LABEL_944;
              }

LABEL_394:
              for (kk = 0; kk != NumElements; ++kk)
              {
                if (v170)
                {
                  v200 = 0;
                }

                else
                {
                  v200 = kk;
                }

                v31[kk] = *&RawStringData[4 * v200];
              }

              goto LABEL_944;
            }

            if (!mlir::Type::isF64(&v520))
            {
              if (!mlir::Type::isBF16(&v520))
              {
                goto LABEL_433;
              }

              if (NumElements < 1)
              {
                goto LABEL_944;
              }

              goto LABEL_427;
            }

            if (NumElements < 1)
            {
              goto LABEL_944;
            }

            if (NumElements < 4 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
            {
              v201 = 0;
LABEL_410:
              v202 = NumElements - v201;
              v203 = &v31[v201];
              v204 = &RawStringData[8 * v201];
              do
              {
                v205 = *v204++;
                *v203++ = v205;
                --v202;
              }

              while (v202);
              goto LABEL_944;
            }

            if (NumElements >= 0x10)
            {
              v201 = NumElements & 0x7FFFFFFFFFFFFFF0;
              v227 = NumElements & 0x7FFFFFFFFFFFFFF0;
              v228 = v31;
              v229 = RawStringData;
              do
              {
                *v228++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v229), vcvtq_s64_f64(v229[1])), vuzp1q_s32(vcvtq_s64_f64(v229[2]), vcvtq_s64_f64(v229[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v229[4]), vcvtq_s64_f64(v229[5])), vuzp1q_s32(vcvtq_s64_f64(v229[6]), vcvtq_s64_f64(v229[7]))));
                v229 += 8;
                v227 -= 16;
              }

              while (v227);
              if (NumElements == v201)
              {
                goto LABEL_944;
              }

              if ((NumElements & 0xC) == 0)
              {
                goto LABEL_410;
              }
            }

            else
            {
              v201 = 0;
            }

            v230 = v201;
            v201 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
            v231 = &RawStringData[8 * v230];
            v232 = &v31[v230];
            v233 = v230 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              v234 = *v231;
              v235 = v231[1];
              v231 += 2;
              *&v234.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v234), vcvtq_s64_f64(v235)));
              *v232 = vuzp1_s8(*&v234.f64[0], *&v234.f64[0]).u32[0];
              v232 += 4;
              v233 += 4;
            }

            while (v233);
            if (NumElements == v201)
            {
              goto LABEL_944;
            }

            goto LABEL_410;
          }

          if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
          {
            v173 = RawStringData;
          }

          else
          {
            v173 = 0;
          }

          v527 = v173;
          if (v173)
          {
            RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(&v527);
            v6 = v174;
            if ((v170 & 1) == 0)
            {
              goto LABEL_298;
            }
          }

          else if ((v170 & 1) == 0)
          {
            goto LABEL_298;
          }

LABEL_291:
          if (mlir::Type::isUnsignedInteger(&v520, 8))
          {
            NumElements = 1;
            goto LABEL_300;
          }

          if (mlir::Type::isInteger(&v520, 8))
          {
            NumElements = 1;
            goto LABEL_310;
          }

          if (mlir::Type::isUnsignedInteger(&v520, 16))
          {
            NumElements = 1;
            goto LABEL_323;
          }

          if (mlir::Type::isInteger(&v520, 16))
          {
            NumElements = 1;
            goto LABEL_333;
          }

          if (mlir::Type::isUnsignedInteger(&v520, 32))
          {
            NumElements = 1;
            goto LABEL_343;
          }

          if (mlir::Type::isInteger(&v520, 32))
          {
            NumElements = 1;
            goto LABEL_353;
          }

          if (mlir::Type::isUnsignedInteger(&v520, 64) || mlir::Type::isInteger(&v520, 64))
          {
            goto LABEL_361;
          }

          if (mlir::Type::isF16(&v520))
          {
            NumElements = 1;
            goto LABEL_384;
          }

          if (mlir::Type::isF32(&v520))
          {
            NumElements = 1;
            goto LABEL_394;
          }

          if (mlir::Type::isF64(&v520))
          {
            goto LABEL_403;
          }

          NumElements = 1;
          if (!mlir::Type::isBF16(&v520))
          {
LABEL_433:
            if (!mlir::Type::isInteger(&v520, 1))
            {
LABEL_261:
              mlir::Type::getIntOrFloatBitWidth(&v520);
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v520);
              mlir::detail::unpackQuantizedData<unsigned char>(RawStringData, v6, v31, NumElements, IntOrFloatBitWidth);
              goto LABEL_944;
            }

            llvm::SmallVector<char,40u>::SmallVector(&v527, NumElements);
            mlir::detail::unpackBooleanData(RawStringData, v6, v527, v528);
            v134 = v527;
            if (NumElements < 1)
            {
              goto LABEL_437;
            }

            if (v170)
            {
              goto LABEL_436;
            }

            v226 = 0;
            if (NumElements >= 8 && (v31 - v527) >= 0x20)
            {
              if (NumElements < 0x20)
              {
                v226 = 0;
LABEL_466:
                v240 = v226;
                v226 = NumElements & 0x7FFFFFFFFFFFFFF8;
                v241 = &v134[v240];
                v242 = &v31[v240];
                v243 = v240 - (NumElements & 0x7FFFFFFFFFFFFFF8);
                do
                {
                  v244 = *v241;
                  v241 += 8;
                  *v242 = v244;
                  v242 += 8;
                  v243 += 8;
                }

                while (v243);
                if (NumElements == v226)
                {
                  goto LABEL_437;
                }

                goto LABEL_469;
              }

              v226 = NumElements & 0x7FFFFFFFFFFFFFE0;
              v236 = (v527 + 16);
              v237 = v31 + 16;
              v238 = NumElements & 0x7FFFFFFFFFFFFFE0;
              do
              {
                v239 = *v236;
                *(v237 - 1) = *(v236 - 1);
                *v237 = v239;
                v236 += 2;
                v237 += 2;
                v238 -= 32;
              }

              while (v238);
              if (NumElements == v226)
              {
                goto LABEL_437;
              }

              if ((NumElements & 0x18) != 0)
              {
                goto LABEL_466;
              }
            }

LABEL_469:
            v245 = NumElements - v226;
            v246 = &v31[v226];
            v247 = &v134[v226];
            do
            {
              v248 = *v247++;
              *v246++ = v248;
              --v245;
            }

            while (v245);
            goto LABEL_437;
          }

LABEL_427:
          for (mm = 0; mm != NumElements; ++mm)
          {
            if (v170)
            {
              v216 = 0;
            }

            else
            {
              v216 = mm;
            }

            v31[mm] = COERCE_FLOAT(*&RawStringData[2 * v216] << 16);
          }

          goto LABEL_944;
        }
      }

LABEL_285:
      v169 = 0;
      goto LABEL_286;
    }

    v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
    if (mlir::Type::isUnsignedInteger(&v527, 16))
    {
      v54 = v524;
      v523 = v519;
      v55 = mlir::ElementsAttr::getType(&v523);
      if (!v55)
      {
        goto LABEL_476;
      }

      v56 = *v55;
      {
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (v59)
        {
          goto LABEL_51;
        }
      }

      else
      {
        RawData = v55;
        mlir::arith::ExtUIOp::fold();
        v55 = RawData;
        v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v58 = *(v56 + 8);
        v59 = *(v56 + 16);
        if (v59)
        {
LABEL_51:
          v60 = v58;
          v61 = v59;
          do
          {
            v62 = v61 >> 1;
            v63 = &v60[2 * (v61 >> 1)];
            v65 = *v63;
            v64 = v63 + 2;
            v61 += ~(v61 >> 1);
            if (v65 < v57)
            {
              v60 = v64;
            }

            else
            {
              v61 = v62;
            }
          }

          while (v61);
LABEL_474:
          if (v60 != &v58[2 * v59] && *v60 == v57)
          {
            v249 = v60[1];
LABEL_477:
            v521 = v55;
            v522 = v249;
            v520 = mlir::ElementsAttr::isSplat(&v521);
            v250 = mlir::ElementsAttr::isSplat(&v523);
            v251 = v523;
            if (mlir::DenseElementsAttr::classof(v523))
            {
              v252 = v251;
            }

            else
            {
              v252 = 0;
            }

            v527 = v252;
            if (v252)
            {
              RawData = mlir::DenseElementsAttr::getRawStringData(&v527);
              v6 = v253;
              if (v250)
              {
                goto LABEL_482;
              }

LABEL_489:
              v254 = mlir::ElementsAttr::getNumElements(v523, *(&v523 + 1));
              if (mlir::Type::isUnsignedInteger(&v520, 8))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_491:
                for (nn = 0; nn != v254; ++nn)
                {
                  if (v250)
                  {
                    v258 = 0;
                  }

                  else
                  {
                    v258 = nn;
                  }

                  v54->i16[nn] = RawData[v258];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v520, 8))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_501:
                for (i1 = 0; i1 != v254; ++i1)
                {
                  if (v250)
                  {
                    v260 = 0;
                  }

                  else
                  {
                    v260 = i1;
                  }

                  v54->i16[i1] = RawData[v260];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v520, 16))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_514:
                for (i2 = 0; i2 != v254; ++i2)
                {
                  if (v250)
                  {
                    v262 = 0;
                  }

                  else
                  {
                    v262 = i2;
                  }

                  v54->i16[i2] = *&RawData[2 * v262];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v520, 16))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_524:
                for (i3 = 0; i3 != v254; ++i3)
                {
                  if (v250)
                  {
                    v264 = 0;
                  }

                  else
                  {
                    v264 = i3;
                  }

                  v54->i16[i3] = *&RawData[2 * v264];
                }

                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v520, 32))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_534:
                if (v254 >= 2)
                {
                  v267 = 0;
                  v265 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v268 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v269 = 0;
                    }

                    else
                    {
                      v269 = v267;
                    }

                    if (v250)
                    {
                      v270 = 0;
                    }

                    else
                    {
                      v270 = v267 + 1;
                    }

                    v271 = *&RawData[4 * v270];
                    *(v268 - 1) = *&RawData[4 * v269];
                    *v268 = v271;
                    v268 += 2;
                    v267 += 2;
                  }

                  while (v267 != v265);
                  goto LABEL_913;
                }

                v265 = 0;
                do
                {
                  if (v250)
                  {
                    v501 = 0;
                  }

                  else
                  {
                    v501 = v265;
                  }

                  v54->i16[v265++] = *&RawData[4 * v501];
LABEL_913:
                  ;
                }

                while (v254 != v265);
                goto LABEL_944;
              }

              if (mlir::Type::isInteger(&v520, 32))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_540:
                if (v254 >= 2)
                {
                  v273 = 0;
                  v266 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v274 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v275 = 0;
                    }

                    else
                    {
                      v275 = v273;
                    }

                    if (v250)
                    {
                      v276 = 0;
                    }

                    else
                    {
                      v276 = v273 + 1;
                    }

                    v277 = *&RawData[4 * v276];
                    *(v274 - 1) = *&RawData[4 * v275];
                    *v274 = v277;
                    v274 += 2;
                    v273 += 2;
                  }

                  while (v273 != v266);
                  goto LABEL_919;
                }

                v266 = 0;
                do
                {
                  if (v250)
                  {
                    v502 = 0;
                  }

                  else
                  {
                    v502 = v266;
                  }

                  v54->i16[v266++] = *&RawData[4 * v502];
LABEL_919:
                  ;
                }

                while (v254 != v266);
                goto LABEL_944;
              }

              if (mlir::Type::isUnsignedInteger(&v520, 64))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                if (v254 < 4)
                {
                  v272 = 0;
LABEL_602:
                  v296 = v254 - v272;
                  v297 = &v54->i16[v272];
                  v298 = &RawData[8 * v272];
                  do
                  {
                    v299 = *v298;
                    v298 += 8;
                    *v297++ = v299;
                    --v296;
                  }

                  while (v296);
                  goto LABEL_944;
                }

                if (v254 >= 0x10)
                {
                  v272 = v254 & 0x7FFFFFFFFFFFFFF0;
                  v286 = (RawData + 64);
                  v287 = v54 + 1;
                  v288 = v254 & 0x7FFFFFFFFFFFFFF0;
                  do
                  {
                    v289 = vuzp1q_s16(vuzp1q_s32(*v286, v286[1]), vuzp1q_s32(v286[2], v286[3]));
                    v287[-1] = vuzp1q_s16(vuzp1q_s32(v286[-4], v286[-3]), vuzp1q_s32(v286[-2], v286[-1]));
                    *v287 = v289;
                    v286 += 8;
                    v287 += 2;
                    v288 -= 16;
                  }

                  while (v288);
                  if (v254 == v272)
                  {
                    goto LABEL_944;
                  }

                  if ((v254 & 0xC) == 0)
                  {
                    goto LABEL_602;
                  }
                }

                else
                {
                  v272 = 0;
                }

                v290 = v272;
                v272 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                v291 = &RawData[8 * v290];
                v292 = (v54 + 2 * v290);
                v293 = v290 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                do
                {
                  v295 = *v291;
                  v294 = v291[1];
                  v291 += 2;
                  *v292++ = vmovn_s32(vuzp1q_s32(v295, v294));
                  v293 += 4;
                }

                while (v293);
                if (v254 == v272)
                {
                  goto LABEL_944;
                }

                goto LABEL_602;
              }

              if (mlir::Type::isInteger(&v520, 64))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                if (v254 < 4)
                {
                  v278 = 0;
LABEL_628:
                  v320 = v254 - v278;
                  v321 = &v54->i16[v278];
                  v322 = &RawData[8 * v278];
                  do
                  {
                    v323 = *v322;
                    v322 += 8;
                    *v321++ = v323;
                    --v320;
                  }

                  while (v320);
                  goto LABEL_944;
                }

                if (v254 >= 0x10)
                {
                  v278 = v254 & 0x7FFFFFFFFFFFFFF0;
                  v310 = (RawData + 64);
                  v311 = v54 + 1;
                  v312 = v254 & 0x7FFFFFFFFFFFFFF0;
                  do
                  {
                    v313 = vuzp1q_s16(vuzp1q_s32(*v310, v310[1]), vuzp1q_s32(v310[2], v310[3]));
                    v311[-1] = vuzp1q_s16(vuzp1q_s32(v310[-4], v310[-3]), vuzp1q_s32(v310[-2], v310[-1]));
                    *v311 = v313;
                    v310 += 8;
                    v311 += 2;
                    v312 -= 16;
                  }

                  while (v312);
                  if (v254 == v278)
                  {
                    goto LABEL_944;
                  }

                  if ((v254 & 0xC) == 0)
                  {
                    goto LABEL_628;
                  }
                }

                else
                {
                  v278 = 0;
                }

                v314 = v278;
                v278 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                v315 = &RawData[8 * v314];
                v316 = (v54 + 2 * v314);
                v317 = v314 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                do
                {
                  v319 = *v315;
                  v318 = v315[1];
                  v315 += 2;
                  *v316++ = vmovn_s32(vuzp1q_s32(v319, v318));
                  v317 += 4;
                }

                while (v317);
                if (v254 == v278)
                {
                  goto LABEL_944;
                }

                goto LABEL_628;
              }

              if (mlir::Type::isF16(&v520))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_574:
                if (v254 >= 2)
                {
                  v281 = 0;
                  v279 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v282 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v283 = 0;
                    }

                    else
                    {
                      v283 = v281;
                    }

                    if (v250)
                    {
                      v284 = 0;
                    }

                    else
                    {
                      v284 = v281 + 1;
                    }

                    v285 = *&RawData[2 * v284];
                    *(v282 - 1) = *&RawData[2 * v283];
                    *v282 = v285;
                    v282 += 2;
                    v281 += 2;
                  }

                  while (v281 != v279);
                  goto LABEL_925;
                }

                v279 = 0;
                do
                {
                  if (v250)
                  {
                    v503 = 0;
                  }

                  else
                  {
                    v503 = v279;
                  }

                  v54->i16[v279++] = *&RawData[2 * v503];
LABEL_925:
                  ;
                }

                while (v254 != v279);
                goto LABEL_944;
              }

              if (mlir::Type::isF32(&v520))
              {
                if (v254 < 1)
                {
                  goto LABEL_944;
                }

LABEL_582:
                if (v254 >= 2)
                {
                  v305 = 0;
                  v280 = v254 & 0x7FFFFFFFFFFFFFFELL;
                  v306 = &v54->i16[1];
                  do
                  {
                    if (v250)
                    {
                      v307 = 0;
                    }

                    else
                    {
                      v307 = v305;
                    }

                    if (v250)
                    {
                      v308 = 0;
                    }

                    else
                    {
                      v308 = v305 + 1;
                    }

                    v309 = *&RawData[4 * v308];
                    *(v306 - 1) = *&RawData[4 * v307];
                    *v306 = v309;
                    v306 += 2;
                    v305 += 2;
                  }

                  while (v305 != v280);
                  goto LABEL_931;
                }

                v280 = 0;
                do
                {
                  if (v250)
                  {
                    v504 = 0;
                  }

                  else
                  {
                    v504 = v280;
                  }

                  v54->i16[v280++] = *&RawData[4 * v504];
LABEL_931:
                  ;
                }

                while (v254 != v280);
                goto LABEL_944;
              }

              if (!mlir::Type::isF64(&v520))
              {
                if (!mlir::Type::isBF16(&v520))
                {
                  goto LABEL_639;
                }

                if (v254 < 1)
                {
                  goto LABEL_944;
                }

                goto LABEL_633;
              }

              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v304 = 0;
LABEL_666:
                v353 = v254 - v304;
                v354 = &v54->i16[v304];
                v355 = &RawData[8 * v304];
                do
                {
                  v356 = *v355++;
                  *v354++ = v356;
                  --v353;
                }

                while (v353);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v304 = v254 & 0x7FFFFFFFFFFFFFF0;
                v335 = (RawData + 64);
                v336 = &v54[1];
                v337 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v338 = v335[3];
                  v339 = vmovn_s64(vcvtq_s64_f64(v335[-1]));
                  v340 = vmovn_s64(vcvtq_s64_f64(v335[-2]));
                  v341 = vmovn_s64(vcvtq_s64_f64(v335[-3]));
                  v342 = vmovn_s64(vcvtq_s64_f64(v335[-4]));
                  v343 = vqtbl4q_s8(*(&v300 - 1), xmmword_1E0999900);
                  v344 = vmovn_s64(vcvtq_s64_f64(v338));
                  v345 = vmovn_s64(vcvtq_s64_f64(v335[2]));
                  v346 = vmovn_s64(vcvtq_s64_f64(v335[1]));
                  *&v338.f64[0] = vmovn_s64(vcvtq_s64_f64(*v335));
                  v336[-1] = v343;
                  *v336 = vqtbl4q_s8(*(&v300 - 3), xmmword_1E0999900);
                  v335 += 8;
                  v336 += 2;
                  v337 -= 16;
                }

                while (v337);
                if (v254 == v304)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_666;
                }
              }

              else
              {
                v304 = 0;
              }

              v347 = v304;
              v304 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v348 = &RawData[8 * v347];
              v349 = (v54 + 2 * v347);
              v350 = v347 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v351 = *v348;
                v352 = v348[1];
                v348 += 2;
                *v349++ = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v351), vcvtq_s64_f64(v352)));
                v350 += 4;
              }

              while (v350);
              if (v254 == v304)
              {
                goto LABEL_944;
              }

              goto LABEL_666;
            }

            if (*(*v251 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
            {
              v255 = v251;
            }

            else
            {
              v255 = 0;
            }

            v527 = v255;
            if (v255)
            {
              RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v527);
              v6 = v256;
              if ((v250 & 1) == 0)
              {
                goto LABEL_489;
              }
            }

            else if ((v250 & 1) == 0)
            {
              goto LABEL_489;
            }

LABEL_482:
            if (mlir::Type::isUnsignedInteger(&v520, 8))
            {
              v254 = 1;
              goto LABEL_491;
            }

            if (mlir::Type::isInteger(&v520, 8))
            {
              v254 = 1;
              goto LABEL_501;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 16))
            {
              v254 = 1;
              goto LABEL_514;
            }

            if (mlir::Type::isInteger(&v520, 16))
            {
              v254 = 1;
              goto LABEL_524;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 32))
            {
              v254 = 1;
              goto LABEL_534;
            }

            if (mlir::Type::isInteger(&v520, 32))
            {
              v254 = 1;
              goto LABEL_540;
            }

            if (!mlir::Type::isUnsignedInteger(&v520, 64) && !mlir::Type::isInteger(&v520, 64))
            {
              if (mlir::Type::isF16(&v520))
              {
                v254 = 1;
                goto LABEL_574;
              }

              if (mlir::Type::isF32(&v520))
              {
                v254 = 1;
                goto LABEL_582;
              }

              if (!mlir::Type::isF64(&v520))
              {
                v254 = 1;
                if (!mlir::Type::isBF16(&v520))
                {
LABEL_639:
                  if (mlir::Type::isInteger(&v520, 1))
                  {
                    llvm::SmallVector<char,40u>::SmallVector(&v527, v254);
                    mlir::detail::unpackBooleanData(RawData, v6, v527, v528);
                    v82 = v527;
                    if (v254 < 1)
                    {
                      goto LABEL_877;
                    }

                    if (v250)
                    {
                      if (v254 < 4 || v54 < (v527 + 1) && v527 < v54 + 2 * v254)
                      {
                        v326 = 0;
                        goto LABEL_646;
                      }

                      if (v254 >= 0x20)
                      {
                        v326 = v254 & 0x7FFFFFFFFFFFFFE0;
                        v357 = vld1_dup_s8(v527);
                        v358 = vmovl_s8(v357);
                        v359 = v54 + 2;
                        v360 = v254 & 0x7FFFFFFFFFFFFFE0;
                        do
                        {
                          v359[-2] = v358;
                          v359[-1] = v358;
                          *v359 = v358;
                          v359[1] = v358;
                          v359 += 4;
                          v360 -= 32;
                        }

                        while (v360);
                        if (v254 == v326)
                        {
                          goto LABEL_877;
                        }

                        if ((v254 & 0x1C) == 0)
                        {
LABEL_646:
                          v327 = v254 - v326;
                          v328 = &v54->i16[v326];
                          do
                          {
                            *v328++ = *v82;
                            --v327;
                          }

                          while (v327);
                          goto LABEL_877;
                        }
                      }

                      else
                      {
                        v326 = 0;
                      }

                      v361 = v326;
                      v326 = v254 & 0x7FFFFFFFFFFFFFFCLL;
                      v362 = vshr_n_s16(vshl_n_s16(vdup_n_s16(*v82), 8uLL), 8uLL);
                      v363 = (v54 + 2 * v361);
                      v364 = v361 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
                      do
                      {
                        *v363++ = v362;
                        v364 += 4;
                      }

                      while (v364);
                      if (v254 != v326)
                      {
                        goto LABEL_646;
                      }

LABEL_877:
                      if (v82 == v529)
                      {
                        goto LABEL_944;
                      }

                      goto LABEL_95;
                    }

                    if (v254 < 8 || v54 < (v527 + v254) && v527 < v54 + 2 * v254)
                    {
                      v330 = 0;
                      goto LABEL_656;
                    }

                    if (v254 >= 0x20)
                    {
                      v330 = v254 & 0x7FFFFFFFFFFFFFE0;
                      v365 = (v527 + 16);
                      v366 = v54 + 2;
                      v367 = v254 & 0x7FFFFFFFFFFFFFE0;
                      do
                      {
                        v368 = *v365[-2].i8;
                        v369 = vmovl_s8(*v365);
                        v370 = vmovl_high_s8(*v365->i8);
                        v366[-2] = vmovl_s8(*v368.i8);
                        v366[-1] = vmovl_high_s8(v368);
                        *v366 = v369;
                        v366[1] = v370;
                        v366 += 4;
                        v365 += 4;
                        v367 -= 32;
                      }

                      while (v367);
                      if (v254 == v330)
                      {
                        goto LABEL_877;
                      }

                      if ((v254 & 0x18) == 0)
                      {
LABEL_656:
                        v331 = v254 - v330;
                        v332 = &v54->i16[v330];
                        v333 = v82 + v330;
                        do
                        {
                          v334 = *v333++;
                          *v332++ = v334;
                          --v331;
                        }

                        while (v331);
                        goto LABEL_877;
                      }
                    }

                    else
                    {
                      v330 = 0;
                    }

                    v371 = v330;
                    v330 = v254 & 0x7FFFFFFFFFFFFFF8;
                    v372 = (v82 + v371);
                    v373 = (v54 + 2 * v371);
                    v374 = v371 - (v254 & 0x7FFFFFFFFFFFFFF8);
                    do
                    {
                      v375 = *v372++;
                      *v373++ = vmovl_s8(v375);
                      v374 += 8;
                    }

                    while (v374);
                    if (v254 == v330)
                    {
                      goto LABEL_877;
                    }

                    goto LABEL_656;
                  }

LABEL_649:
                  mlir::Type::getIntOrFloatBitWidth(&v520);
                  v329 = mlir::Type::getIntOrFloatBitWidth(&v520);
                  mlir::detail::unpackQuantizedData<unsigned short>(RawData, v6, v54, v254, v329);
                  goto LABEL_944;
                }

LABEL_633:
                for (i4 = 0; i4 != v254; ++i4)
                {
                  if (v250)
                  {
                    v325 = 0;
                  }

                  else
                  {
                    v325 = i4;
                  }

                  v54->i16[i4] = COERCE_FLOAT(*&RawData[2 * v325] << 16);
                }

                goto LABEL_944;
              }

LABEL_824:
              v54->i16[0] = *RawData;
              goto LABEL_944;
            }

LABEL_770:
            v54->i16[0] = *RawData;
            goto LABEL_944;
          }

LABEL_476:
          v249 = 0;
          goto LABEL_477;
        }
      }

      v59 = 0;
      v60 = v58;
      goto LABEL_474;
    }

    v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
    if (!mlir::Type::isInteger(&v527, 16))
    {
      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isUnsignedInteger(&v527, 32))
      {
        mlir::copyElementsAttrData<unsigned int>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isInteger(&v527, 32))
      {
        mlir::copyElementsAttrData<int>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isUnsignedInteger(&v527, 64))
      {
        mlir::copyElementsAttrData<unsigned long long>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isInteger(&v527, 64))
      {
        mlir::copyElementsAttrData<long long>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isF16(&v527))
      {
        mlir::copyElementsAttrData<half>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isBF16(&v527))
      {
        mlir::copyElementsAttrData<__emulated_bf16>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isF32(&v527))
      {
        mlir::copyElementsAttrData<float>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (mlir::Type::isF64(&v527))
      {
        mlir::copyElementsAttrData<double>(v519, *(&v519 + 1), v524);
        goto LABEL_944;
      }

      v527 = mlir::AffineBinaryOpExpr::getRHS(&v516);
      if (!mlir::Type::isInteger(&v527, 1))
      {
        v78 = mlir::AffineBinaryOpExpr::getRHS(&v516);
        if (*(*v78 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v79 = v78;
        }

        else
        {
          v79 = 0;
        }

        v527 = v79;
        if (v79)
        {
          *&v523 = mlir::AffineMapAttr::getValue(&v527);
          if (mlir::Type::isF32(&v523))
          {
            mlir::copyElementsAttrData<complex_support::complex_fp<float,(void *)0>>(v519, *(&v519 + 1), v524);
          }

          else
          {
            *&v523 = mlir::AffineMapAttr::getValue(&v527);
            mlir::Type::isF16(&v523);
            mlir::copyElementsAttrData<complex_support::complex_fp<half,(void *)0>>(v519, *(&v519 + 1), v524);
          }
        }

        goto LABEL_944;
      }

      if (mlir::ElementsAttr::isSplat(&v519))
      {
        v77 = 1;
      }

      else
      {
        Value = mlir::ArrayAttr::getValue(&v516);
        v77 = mlir::ShapedType::getNumElements(Value, v81);
      }

      llvm::SmallVector<char,40u>::SmallVector(&v527, v77);
      mlir::copyElementsAttrData<char>(v519, *(&v519 + 1), v527);
      mlir::detail::packBooleanData(v527, v528, v524, v525);
      v82 = v527;
      if (v527 == v529)
      {
        goto LABEL_944;
      }

LABEL_95:
      free(v82);
      goto LABEL_944;
    }

    v54 = v524;
    v523 = v519;
    v66 = mlir::ElementsAttr::getType(&v523);
    if (!v66)
    {
      goto LABEL_693;
    }

    v67 = *v66;
    {
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = *(v67 + 8);
      v70 = *(v67 + 16);
      if (v70)
      {
        goto LABEL_62;
      }
    }

    else
    {
      RawData = v66;
      mlir::arith::ExtUIOp::fold();
      v66 = RawData;
      v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v69 = *(v67 + 8);
      v70 = *(v67 + 16);
      if (v70)
      {
LABEL_62:
        v71 = v69;
        v72 = v70;
        do
        {
          v73 = v72 >> 1;
          v74 = &v71[2 * (v72 >> 1)];
          v76 = *v74;
          v75 = v74 + 2;
          v72 += ~(v72 >> 1);
          if (v76 < v68)
          {
            v71 = v75;
          }

          else
          {
            v72 = v73;
          }
        }

        while (v72);
LABEL_691:
        if (v71 != &v69[2 * v70] && *v71 == v68)
        {
          v376 = v71[1];
LABEL_694:
          v521 = v66;
          v522 = v376;
          v520 = mlir::ElementsAttr::isSplat(&v521);
          v377 = mlir::ElementsAttr::isSplat(&v523);
          v378 = v523;
          if (mlir::DenseElementsAttr::classof(v523))
          {
            v379 = v378;
          }

          else
          {
            v379 = 0;
          }

          v527 = v379;
          if (v379)
          {
            RawData = mlir::DenseElementsAttr::getRawStringData(&v527);
            v6 = v380;
            if (v377)
            {
              goto LABEL_699;
            }

LABEL_706:
            v254 = mlir::ElementsAttr::getNumElements(v523, *(&v523 + 1));
            if (mlir::Type::isUnsignedInteger(&v520, 8))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_708:
              for (i5 = 0; i5 != v254; ++i5)
              {
                if (v377)
                {
                  v384 = 0;
                }

                else
                {
                  v384 = i5;
                }

                v54->i16[i5] = RawData[v384];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v520, 8))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_718:
              for (i6 = 0; i6 != v254; ++i6)
              {
                if (v377)
                {
                  v386 = 0;
                }

                else
                {
                  v386 = i6;
                }

                v54->i16[i6] = RawData[v386];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 16))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_731:
              for (i7 = 0; i7 != v254; ++i7)
              {
                if (v377)
                {
                  v388 = 0;
                }

                else
                {
                  v388 = i7;
                }

                v54->i16[i7] = *&RawData[2 * v388];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v520, 16))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_741:
              for (i8 = 0; i8 != v254; ++i8)
              {
                if (v377)
                {
                  v390 = 0;
                }

                else
                {
                  v390 = i8;
                }

                v54->i16[i8] = *&RawData[2 * v390];
              }

              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 32))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_751:
              if (v254 >= 2)
              {
                v393 = 0;
                v391 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v394 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v395 = 0;
                  }

                  else
                  {
                    v395 = v393;
                  }

                  if (v377)
                  {
                    v396 = 0;
                  }

                  else
                  {
                    v396 = v393 + 1;
                  }

                  v397 = *&RawData[4 * v396];
                  *(v394 - 1) = *&RawData[4 * v395];
                  *v394 = v397;
                  v394 += 2;
                  v393 += 2;
                }

                while (v393 != v391);
                goto LABEL_937;
              }

              v391 = 0;
              do
              {
                if (v377)
                {
                  v505 = 0;
                }

                else
                {
                  v505 = v391;
                }

                v54->i16[v391++] = *&RawData[4 * v505];
LABEL_937:
                ;
              }

              while (v254 != v391);
              goto LABEL_944;
            }

            if (mlir::Type::isInteger(&v520, 32))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_757:
              if (v254 >= 2)
              {
                v399 = 0;
                v392 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v400 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v401 = 0;
                  }

                  else
                  {
                    v401 = v399;
                  }

                  if (v377)
                  {
                    v402 = 0;
                  }

                  else
                  {
                    v402 = v399 + 1;
                  }

                  v403 = *&RawData[4 * v402];
                  *(v400 - 1) = *&RawData[4 * v401];
                  *v400 = v403;
                  v400 += 2;
                  v399 += 2;
                }

                while (v399 != v392);
                goto LABEL_943;
              }

              v392 = 0;
              do
              {
                if (v377)
                {
                  v506 = 0;
                }

                else
                {
                  v506 = v392;
                }

                v54->i16[v392++] = *&RawData[4 * v506];
LABEL_943:
                ;
              }

              while (v254 != v392);
              goto LABEL_944;
            }

            if (mlir::Type::isUnsignedInteger(&v520, 64))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v398 = 0;
LABEL_820:
                v422 = v254 - v398;
                v423 = &v54->i16[v398];
                v424 = &RawData[8 * v398];
                do
                {
                  v425 = *v424;
                  v424 += 8;
                  *v423++ = v425;
                  --v422;
                }

                while (v422);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v398 = v254 & 0x7FFFFFFFFFFFFFF0;
                v412 = (RawData + 64);
                v413 = v54 + 1;
                v414 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v415 = vuzp1q_s16(vuzp1q_s32(*v412, v412[1]), vuzp1q_s32(v412[2], v412[3]));
                  v413[-1] = vuzp1q_s16(vuzp1q_s32(v412[-4], v412[-3]), vuzp1q_s32(v412[-2], v412[-1]));
                  *v413 = v415;
                  v412 += 8;
                  v413 += 2;
                  v414 -= 16;
                }

                while (v414);
                if (v254 == v398)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_820;
                }
              }

              else
              {
                v398 = 0;
              }

              v416 = v398;
              v398 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v417 = &RawData[8 * v416];
              v418 = (v54 + 2 * v416);
              v419 = v416 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v421 = *v417;
                v420 = v417[1];
                v417 += 2;
                *v418++ = vmovn_s32(vuzp1q_s32(v421, v420));
                v419 += 4;
              }

              while (v419);
              if (v254 == v398)
              {
                goto LABEL_944;
              }

              goto LABEL_820;
            }

            if (mlir::Type::isInteger(&v520, 64))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

              if (v254 < 4)
              {
                v404 = 0;
LABEL_845:
                v446 = v254 - v404;
                v447 = &v54->i16[v404];
                v448 = &RawData[8 * v404];
                do
                {
                  v449 = *v448;
                  v448 += 8;
                  *v447++ = v449;
                  --v446;
                }

                while (v446);
                goto LABEL_944;
              }

              if (v254 >= 0x10)
              {
                v404 = v254 & 0x7FFFFFFFFFFFFFF0;
                v436 = (RawData + 64);
                v437 = v54 + 1;
                v438 = v254 & 0x7FFFFFFFFFFFFFF0;
                do
                {
                  v439 = vuzp1q_s16(vuzp1q_s32(*v436, v436[1]), vuzp1q_s32(v436[2], v436[3]));
                  v437[-1] = vuzp1q_s16(vuzp1q_s32(v436[-4], v436[-3]), vuzp1q_s32(v436[-2], v436[-1]));
                  *v437 = v439;
                  v436 += 8;
                  v437 += 2;
                  v438 -= 16;
                }

                while (v438);
                if (v254 == v404)
                {
                  goto LABEL_944;
                }

                if ((v254 & 0xC) == 0)
                {
                  goto LABEL_845;
                }
              }

              else
              {
                v404 = 0;
              }

              v440 = v404;
              v404 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v441 = &RawData[8 * v440];
              v442 = (v54 + 2 * v440);
              v443 = v440 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                v445 = *v441;
                v444 = v441[1];
                v441 += 2;
                *v442++ = vmovn_s32(vuzp1q_s32(v445, v444));
                v443 += 4;
              }

              while (v443);
              if (v254 == v404)
              {
                goto LABEL_944;
              }

              goto LABEL_845;
            }

            if (mlir::Type::isF16(&v520))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_792:
              if (v254 >= 2)
              {
                v407 = 0;
                v405 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v408 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v409 = 0;
                  }

                  else
                  {
                    v409 = v407;
                  }

                  if (v377)
                  {
                    v410 = 0;
                  }

                  else
                  {
                    v410 = v407 + 1;
                  }

                  v411 = *&RawData[2 * v410];
                  *(v408 - 1) = *&RawData[2 * v409];
                  *v408 = v411;
                  v408 += 2;
                  v407 += 2;
                }

                while (v407 != v405);
                goto LABEL_954;
              }

              v405 = 0;
              do
              {
                if (v377)
                {
                  v514 = 0;
                }

                else
                {
                  v514 = v405;
                }

                v54->i16[v405++] = *&RawData[2 * v514];
LABEL_954:
                ;
              }

              while (v254 != v405);
              goto LABEL_944;
            }

            if (mlir::Type::isF32(&v520))
            {
              if (v254 < 1)
              {
                goto LABEL_944;
              }

LABEL_800:
              if (v254 >= 2)
              {
                v431 = 0;
                v406 = v254 & 0x7FFFFFFFFFFFFFFELL;
                v432 = &v54->i16[1];
                do
                {
                  if (v377)
                  {
                    v433 = 0;
                  }

                  else
                  {
                    v433 = v431;
                  }

                  if (v377)
                  {
                    v434 = 0;
                  }

                  else
                  {
                    v434 = v431 + 1;
                  }

                  v435 = *&RawData[4 * v434];
                  *(v432 - 1) = *&RawData[4 * v433];
                  *v432 = v435;
                  v432 += 2;
                  v431 += 2;
                }

                while (v431 != v406);
                goto LABEL_960;
              }

              v406 = 0;
              do
              {
                if (v377)
                {
                  v515 = 0;
                }

                else
                {
                  v515 = v406;
                }

                v54->i16[v406++] = *&RawData[4 * v515];
LABEL_960:
                ;
              }

              while (v254 != v406);
              goto LABEL_944;
            }

            if (!mlir::Type::isF64(&v520))
            {
              if (!mlir::Type::isBF16(&v520))
              {
                goto LABEL_858;
              }

              if (v254 < 1)
              {
                goto LABEL_944;
              }

              goto LABEL_852;
            }

            if (v254 < 1)
            {
              goto LABEL_944;
            }

            if (v254 < 4)
            {
              v430 = 0;
LABEL_886:
              v478 = v254 - v430;
              v479 = &v54->i16[v430];
              v480 = &RawData[8 * v430];
              do
              {
                v481 = *v480++;
                *v479++ = v481;
                --v478;
              }

              while (v478);
              goto LABEL_944;
            }

            if (v254 >= 0x10)
            {
              v430 = v254 & 0x7FFFFFFFFFFFFFF0;
              v460 = (RawData + 64);
              v461 = &v54[1];
              v462 = v254 & 0x7FFFFFFFFFFFFFF0;
              do
              {
                v463 = v460[3];
                v464 = vmovn_s64(vcvtq_s64_f64(v460[-1]));
                v465 = vmovn_s64(vcvtq_s64_f64(v460[-2]));
                v466 = vmovn_s64(vcvtq_s64_f64(v460[-3]));
                v467 = vmovn_s64(vcvtq_s64_f64(v460[-4]));
                v468 = vqtbl4q_s8(*(&v426 - 1), xmmword_1E0999900);
                v469 = vmovn_s64(vcvtq_s64_f64(v463));
                v470 = vmovn_s64(vcvtq_s64_f64(v460[2]));
                v471 = vmovn_s64(vcvtq_s64_f64(v460[1]));
                *&v463.f64[0] = vmovn_s64(vcvtq_s64_f64(*v460));
                v461[-1] = v468;
                *v461 = vqtbl4q_s8(*(&v426 - 3), xmmword_1E0999900);
                v460 += 8;
                v461 += 2;
                v462 -= 16;
              }

              while (v462);
              if (v254 == v430)
              {
                goto LABEL_944;
              }

              if ((v254 & 0xC) == 0)
              {
                goto LABEL_886;
              }
            }

            else
            {
              v430 = 0;
            }

            v472 = v430;
            v430 = v254 & 0x7FFFFFFFFFFFFFFCLL;
            v473 = &RawData[8 * v472];
            v474 = (v54 + 2 * v472);
            v475 = v472 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
            do
            {
              v476 = *v473;
              v477 = v473[1];
              v473 += 2;
              *v474++ = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v476), vcvtq_s64_f64(v477)));
              v475 += 4;
            }

            while (v475);
            if (v254 == v430)
            {
              goto LABEL_944;
            }

            goto LABEL_886;
          }

          if (*(*v378 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
          {
            v381 = v378;
          }

          else
          {
            v381 = 0;
          }

          v527 = v381;
          if (v381)
          {
            RawData = mlir::mps::MPSBufferTensorAttr::getRawData(&v527);
            v6 = v382;
            if ((v377 & 1) == 0)
            {
              goto LABEL_706;
            }
          }

          else if ((v377 & 1) == 0)
          {
            goto LABEL_706;
          }

LABEL_699:
          if (mlir::Type::isUnsignedInteger(&v520, 8))
          {
            v254 = 1;
            goto LABEL_708;
          }

          if (mlir::Type::isInteger(&v520, 8))
          {
            v254 = 1;
            goto LABEL_718;
          }

          if (mlir::Type::isUnsignedInteger(&v520, 16))
          {
            v254 = 1;
            goto LABEL_731;
          }

          if (mlir::Type::isInteger(&v520, 16))
          {
            v254 = 1;
            goto LABEL_741;
          }

          if (mlir::Type::isUnsignedInteger(&v520, 32))
          {
            v254 = 1;
            goto LABEL_751;
          }

          if (mlir::Type::isInteger(&v520, 32))
          {
            v254 = 1;
            goto LABEL_757;
          }

          if (mlir::Type::isUnsignedInteger(&v520, 64) || mlir::Type::isInteger(&v520, 64))
          {
            goto LABEL_770;
          }

          if (mlir::Type::isF16(&v520))
          {
            v254 = 1;
            goto LABEL_792;
          }

          if (mlir::Type::isF32(&v520))
          {
            v254 = 1;
            goto LABEL_800;
          }

          if (mlir::Type::isF64(&v520))
          {
            goto LABEL_824;
          }

          v254 = 1;
          if (!mlir::Type::isBF16(&v520))
          {
LABEL_858:
            if (!mlir::Type::isInteger(&v520, 1))
            {
              goto LABEL_649;
            }

            llvm::SmallVector<char,40u>::SmallVector(&v527, v254);
            mlir::detail::unpackBooleanData(RawData, v6, v527, v528);
            v82 = v527;
            if (v254 < 1)
            {
              goto LABEL_877;
            }

            if (v377)
            {
              if (v254 < 4 || v54 < (v527 + 1) && v527 < v54 + 2 * v254)
              {
                v452 = 0;
                goto LABEL_865;
              }

              if (v254 >= 0x20)
              {
                v452 = v254 & 0x7FFFFFFFFFFFFFE0;
                v482 = vld1_dup_s8(v527);
                v483 = vmovl_s8(v482);
                v484 = v54 + 2;
                v485 = v254 & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  v484[-2] = v483;
                  v484[-1] = v483;
                  *v484 = v483;
                  v484[1] = v483;
                  v484 += 4;
                  v485 -= 32;
                }

                while (v485);
                if (v254 == v452)
                {
                  goto LABEL_877;
                }

                if ((v254 & 0x1C) == 0)
                {
LABEL_865:
                  v453 = v254 - v452;
                  v454 = &v54->i16[v452];
                  do
                  {
                    *v454++ = *v82;
                    --v453;
                  }

                  while (v453);
                  goto LABEL_877;
                }
              }

              else
              {
                v452 = 0;
              }

              v486 = v452;
              v452 = v254 & 0x7FFFFFFFFFFFFFFCLL;
              v487 = vshr_n_s16(vshl_n_s16(vdup_n_s16(*v82), 8uLL), 8uLL);
              v488 = (v54 + 2 * v486);
              v489 = v486 - (v254 & 0x7FFFFFFFFFFFFFFCLL);
              do
              {
                *v488++ = v487;
                v489 += 4;
              }

              while (v489);
              if (v254 == v452)
              {
                goto LABEL_877;
              }

              goto LABEL_865;
            }

            if (v254 < 8 || v54 < (v527 + v254) && v527 < v54 + 2 * v254)
            {
              v455 = 0;
              goto LABEL_875;
            }

            if (v254 >= 0x20)
            {
              v455 = v254 & 0x7FFFFFFFFFFFFFE0;
              v490 = (v527 + 16);
              v491 = v54 + 2;
              v492 = v254 & 0x7FFFFFFFFFFFFFE0;
              do
              {
                v493 = *v490[-2].i8;
                v494 = vmovl_s8(*v490);
                v495 = vmovl_high_s8(*v490->i8);
                v491[-2] = vmovl_s8(*v493.i8);
                v491[-1] = vmovl_high_s8(v493);
                *v491 = v494;
                v491[1] = v495;
                v491 += 4;
                v490 += 4;
                v492 -= 32;
              }

              while (v492);
              if (v254 == v455)
              {
                goto LABEL_877;
              }

              if ((v254 & 0x18) == 0)
              {
LABEL_875:
                v456 = v254 - v455;
                v457 = &v54->i16[v455];
                v458 = v82 + v455;
                do
                {
                  v459 = *v458++;
                  *v457++ = v459;
                  --v456;
                }

                while (v456);
                goto LABEL_877;
              }
            }

            else
            {
              v455 = 0;
            }

            v496 = v455;
            v455 = v254 & 0x7FFFFFFFFFFFFFF8;
            v497 = (v82 + v496);
            v498 = (v54 + 2 * v496);
            v499 = v496 - (v254 & 0x7FFFFFFFFFFFFFF8);
            do
            {
              v500 = *v497++;
              *v498++ = vmovl_s8(v500);
              v499 += 8;
            }

            while (v499);
            if (v254 == v455)
            {
              goto LABEL_877;
            }

            goto LABEL_875;
          }

LABEL_852:
          for (i9 = 0; i9 != v254; ++i9)
          {
            if (v377)
            {
              v451 = 0;
            }

            else
            {
              v451 = i9;
            }

            v54->i16[i9] = COERCE_FLOAT(*&RawData[2 * v451] << 16);
          }

          goto LABEL_944;
        }

LABEL_693:
        v376 = 0;
        goto LABEL_694;
      }
    }

    v70 = 0;
    v71 = v69;
    goto LABEL_691;
  }

  v31 = v524;
  v523 = v519;
  v32 = mlir::ElementsAttr::getType(&v523);
  if (!v32)
  {
    goto LABEL_100;
  }

  v33 = *v32;
  {
    v83 = v32;
    mlir::arith::ExtUIOp::fold();
    v32 = v83;
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (v36)
    {
      goto LABEL_27;
    }

LABEL_100:
    v84 = 0;
    goto LABEL_101;
  }

  v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v35 = *(v33 + 8);
  v36 = *(v33 + 16);
  if (!v36)
  {
    goto LABEL_100;
  }

LABEL_27:
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
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
    goto LABEL_100;
  }

  v84 = v37[1];
LABEL_101:
  v521 = v32;
  v522 = v84;
  v520 = mlir::ElementsAttr::isSplat(&v521);
  v85 = mlir::ElementsAttr::isSplat(&v523);
  RawStringData = v523;
  if (mlir::DenseElementsAttr::classof(v523))
  {
    v87 = RawStringData;
  }

  else
  {
    v87 = 0;
  }

  v527 = v87;
  if (v87)
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v527);
    v6 = v88;
    if (v85)
    {
      goto LABEL_106;
    }

    goto LABEL_113;
  }

  if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v90 = RawStringData;
  }

  else
  {
    v90 = 0;
  }

  v527 = v90;
  if (!v90)
  {
    if ((v85 & 1) == 0)
    {
      goto LABEL_113;
    }

LABEL_106:
    if (mlir::Type::isUnsignedInteger(&v520, 8))
    {
      NumElements = 1;
      goto LABEL_115;
    }

    if (mlir::Type::isInteger(&v520, 8))
    {
      NumElements = 1;
      goto LABEL_125;
    }

    if (mlir::Type::isUnsignedInteger(&v520, 16))
    {
      NumElements = 1;
      goto LABEL_138;
    }

    if (mlir::Type::isInteger(&v520, 16))
    {
      NumElements = 1;
      goto LABEL_148;
    }

    if (mlir::Type::isUnsignedInteger(&v520, 32))
    {
      NumElements = 1;
      goto LABEL_158;
    }

    if (mlir::Type::isInteger(&v520, 32))
    {
      NumElements = 1;
      goto LABEL_168;
    }

    if (!mlir::Type::isUnsignedInteger(&v520, 64) && !mlir::Type::isInteger(&v520, 64))
    {
      if (mlir::Type::isF16(&v520))
      {
        NumElements = 1;
        goto LABEL_198;
      }

      if (mlir::Type::isF32(&v520))
      {
        NumElements = 1;
        goto LABEL_208;
      }

      if (!mlir::Type::isF64(&v520))
      {
        NumElements = 1;
        if (!mlir::Type::isBF16(&v520))
        {
LABEL_246:
          if (mlir::Type::isInteger(&v520, 1))
          {
            llvm::SmallVector<char,40u>::SmallVector(&v527, NumElements);
            mlir::detail::unpackBooleanData(RawStringData, v6, v527, v528);
            v134 = v527;
            if (NumElements < 1)
            {
              goto LABEL_437;
            }

            if ((v85 & 1) == 0)
            {
              v135 = 0;
              if (NumElements < 8 || (v31 - v527) < 0x20)
              {
                goto LABEL_279;
              }

              if (NumElements >= 0x20)
              {
                v135 = NumElements & 0x7FFFFFFFFFFFFFE0;
                v155 = (v527 + 16);
                v156 = v31 + 16;
                v157 = NumElements & 0x7FFFFFFFFFFFFFE0;
                do
                {
                  v158 = *v155;
                  *(v156 - 1) = *(v155 - 1);
                  *v156 = v158;
                  v155 += 2;
                  v156 += 2;
                  v157 -= 32;
                }

                while (v157);
                if (NumElements == v135)
                {
                  goto LABEL_437;
                }

                if ((NumElements & 0x18) == 0)
                {
LABEL_279:
                  v164 = NumElements - v135;
                  v165 = &v31[v135];
                  v166 = &v134[v135];
                  do
                  {
                    v167 = *v166++;
                    *v165++ = v167;
                    --v164;
                  }

                  while (v164);
                  goto LABEL_437;
                }
              }

              else
              {
                v135 = 0;
              }

              v159 = v135;
              v135 = NumElements & 0x7FFFFFFFFFFFFFF8;
              v160 = &v134[v159];
              v161 = &v31[v159];
              v162 = v159 - (NumElements & 0x7FFFFFFFFFFFFFF8);
              do
              {
                v163 = *v160;
                v160 += 8;
                *v161 = v163;
                v161 += 8;
                v162 += 8;
              }

              while (v162);
              if (NumElements != v135)
              {
                goto LABEL_279;
              }

LABEL_437:
              if (v134 != v529)
              {
                free(v134);
              }

              goto LABEL_944;
            }

LABEL_436:
            memset(v31, *v134, NumElements);
            goto LABEL_437;
          }

          goto LABEL_261;
        }

        goto LABEL_240;
      }

LABEL_403:
      *v31 = *RawStringData;
      goto LABEL_944;
    }

LABEL_361:
    *v31 = *RawStringData;
    goto LABEL_944;
  }

  RawStringData = mlir::mps::MPSBufferTensorAttr::getRawData(&v527);
  v6 = v91;
  if (v85)
  {
    goto LABEL_106;
  }

LABEL_113:
  NumElements = mlir::ElementsAttr::getNumElements(v523, *(&v523 + 1));
  if (mlir::Type::isUnsignedInteger(&v520, 8))
  {
    if (NumElements >= 1)
    {
LABEL_115:
      for (i10 = 0; i10 != NumElements; ++i10)
      {
        if (v85)
        {
          v93 = 0;
        }

        else
        {
          v93 = i10;
        }

        v31[i10] = RawStringData[v93];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v520, 8))
  {
    if (NumElements >= 1)
    {
LABEL_125:
      for (i11 = 0; i11 != NumElements; ++i11)
      {
        if (v85)
        {
          v95 = 0;
        }

        else
        {
          v95 = i11;
        }

        v31[i11] = RawStringData[v95];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v520, 16))
  {
    if (NumElements >= 1)
    {
LABEL_138:
      for (i12 = 0; i12 != NumElements; ++i12)
      {
        if (v85)
        {
          v97 = 0;
        }

        else
        {
          v97 = i12;
        }

        v31[i12] = *&RawStringData[2 * v97];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v520, 16))
  {
    if (NumElements >= 1)
    {
LABEL_148:
      for (i13 = 0; i13 != NumElements; ++i13)
      {
        if (v85)
        {
          v99 = 0;
        }

        else
        {
          v99 = i13;
        }

        v31[i13] = *&RawStringData[2 * v99];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v520, 32))
  {
    if (NumElements >= 1)
    {
LABEL_158:
      for (i14 = 0; i14 != NumElements; ++i14)
      {
        if (v85)
        {
          v101 = 0;
        }

        else
        {
          v101 = i14;
        }

        v31[i14] = *&RawStringData[4 * v101];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isInteger(&v520, 32))
  {
    if (NumElements >= 1)
    {
LABEL_168:
      for (i15 = 0; i15 != NumElements; ++i15)
      {
        if (v85)
        {
          v103 = 0;
        }

        else
        {
          v103 = i15;
        }

        v31[i15] = *&RawStringData[4 * v103];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isUnsignedInteger(&v520, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
    {
      v104 = 0;
LABEL_184:
      v105 = NumElements - v104;
      v106 = &v31[v104];
      v107 = &RawStringData[8 * v104];
      do
      {
        v108 = *v107;
        v107 += 8;
        *v106++ = v108;
        --v105;
      }

      while (v105);
      goto LABEL_944;
    }

    if (NumElements >= 0x20)
    {
      v104 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v123 = (RawStringData + 128);
      v124 = v31 + 16;
      v125 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *&v126 = vqtbl4q_s8(v123[-2], xmmword_1E0999910).u64[0];
        *&v127 = vqtbl4q_s8(*v123, xmmword_1E0999910).u64[0];
        *(&v126 + 1) = vqtbl4q_s8(v123[-1], xmmword_1E0999910).u64[0];
        *(&v127 + 1) = vqtbl4q_s8(v123[1], xmmword_1E0999910).u64[0];
        *(v124 - 1) = v126;
        *v124 = v127;
        v123 += 4;
        v124 += 2;
        v125 -= 32;
      }

      while (v125);
      if (NumElements == v104)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0x18) == 0)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v104 = 0;
    }

    v128 = v104;
    v104 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v129 = &RawStringData[8 * v128];
    v130 = &v31[v128];
    v131 = v128 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v130 = vqtbl4q_s8(*v129, xmmword_1E0999920).u64[0];
      v130 += 8;
      ++v129;
      v131 += 8;
    }

    while (v131);
    if (NumElements == v104)
    {
      goto LABEL_944;
    }

    goto LABEL_184;
  }

  if (mlir::Type::isInteger(&v520, 64))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 8 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
    {
      v109 = 0;
LABEL_193:
      v110 = NumElements - v109;
      v111 = &v31[v109];
      v112 = &RawStringData[8 * v109];
      do
      {
        v113 = *v112;
        v112 += 8;
        *v111++ = v113;
        --v110;
      }

      while (v110);
      goto LABEL_944;
    }

    if (NumElements >= 0x20)
    {
      v109 = NumElements & 0x7FFFFFFFFFFFFFE0;
      v136 = (RawStringData + 128);
      v137 = v31 + 16;
      v138 = NumElements & 0x7FFFFFFFFFFFFFE0;
      do
      {
        *&v139 = vqtbl4q_s8(v136[-2], xmmword_1E0999910).u64[0];
        *&v140 = vqtbl4q_s8(*v136, xmmword_1E0999910).u64[0];
        *(&v139 + 1) = vqtbl4q_s8(v136[-1], xmmword_1E0999910).u64[0];
        *(&v140 + 1) = vqtbl4q_s8(v136[1], xmmword_1E0999910).u64[0];
        *(v137 - 1) = v139;
        *v137 = v140;
        v136 += 4;
        v137 += 2;
        v138 -= 32;
      }

      while (v138);
      if (NumElements == v109)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0x18) == 0)
      {
        goto LABEL_193;
      }
    }

    else
    {
      v109 = 0;
    }

    v141 = v109;
    v109 = NumElements & 0x7FFFFFFFFFFFFFF8;
    v142 = &RawStringData[8 * v141];
    v143 = &v31[v141];
    v144 = v141 - (NumElements & 0x7FFFFFFFFFFFFFF8);
    do
    {
      *v143 = vqtbl4q_s8(*v142, xmmword_1E0999920).u64[0];
      v143 += 8;
      ++v142;
      v144 += 8;
    }

    while (v144);
    if (NumElements == v109)
    {
      goto LABEL_944;
    }

    goto LABEL_193;
  }

  if (mlir::Type::isF16(&v520))
  {
    if (NumElements >= 1)
    {
LABEL_198:
      for (i16 = 0; i16 != NumElements; ++i16)
      {
        if (v85)
        {
          v115 = 0;
        }

        else
        {
          v115 = i16;
        }

        v31[i16] = *&RawStringData[2 * v115];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isF32(&v520))
  {
    if (NumElements >= 1)
    {
LABEL_208:
      for (i17 = 0; i17 != NumElements; ++i17)
      {
        if (v85)
        {
          v117 = 0;
        }

        else
        {
          v117 = i17;
        }

        v31[i17] = *&RawStringData[4 * v117];
      }

      goto LABEL_944;
    }

    goto LABEL_944;
  }

  if (mlir::Type::isF64(&v520))
  {
    if (NumElements < 1)
    {
      goto LABEL_944;
    }

    if (NumElements < 4 || v31 < &RawStringData[8 * NumElements] && &v31[NumElements] > RawStringData)
    {
      v118 = 0;
LABEL_225:
      v119 = NumElements - v118;
      v120 = &v31[v118];
      v121 = &RawStringData[8 * v118];
      do
      {
        v122 = *v121++;
        *v120++ = v122;
        --v119;
      }

      while (v119);
      goto LABEL_944;
    }

    if (NumElements >= 0x10)
    {
      v118 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v146 = NumElements & 0x7FFFFFFFFFFFFFF0;
      v147 = v31;
      v148 = RawStringData;
      do
      {
        *v147++ = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(*v148), vcvtq_s64_f64(v148[1])), vuzp1q_s32(vcvtq_s64_f64(v148[2]), vcvtq_s64_f64(v148[3]))), vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(v148[4]), vcvtq_s64_f64(v148[5])), vuzp1q_s32(vcvtq_s64_f64(v148[6]), vcvtq_s64_f64(v148[7]))));
        v148 += 8;
        v146 -= 16;
      }

      while (v146);
      if (NumElements == v118)
      {
        goto LABEL_944;
      }

      if ((NumElements & 0xC) == 0)
      {
        goto LABEL_225;
      }
    }

    else
    {
      v118 = 0;
    }

    v149 = v118;
    v118 = NumElements & 0x7FFFFFFFFFFFFFFCLL;
    v150 = &RawStringData[8 * v149];
    v151 = &v31[v149];
    v152 = v149 - (NumElements & 0x7FFFFFFFFFFFFFFCLL);
    do
    {
      v153 = *v150;
      v154 = v150[1];
      v150 += 2;
      *&v153.f64[0] = vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(v153), vcvtq_s64_f64(v154)));
      *v151 = vuzp1_s8(*&v153.f64[0], *&v153.f64[0]).u32[0];
      v151 += 4;
      v152 += 4;
    }

    while (v152);
    if (NumElements == v118)
    {
      goto LABEL_944;
    }

    goto LABEL_225;
  }

  if (!mlir::Type::isBF16(&v520))
  {
    goto LABEL_246;
  }

  if (NumElements >= 1)
  {
LABEL_240:
    for (i18 = 0; i18 != NumElements; ++i18)
    {
      if (v85)
      {
        v133 = 0;
      }

      else
      {
        v133 = i18;
      }

      v31[i18] = COERCE_FLOAT(*&RawStringData[2 * v133] << 16);
    }
  }

LABEL_944:
  if (a5)
  {
    v507 = mlir::TensorType::operator mlir::ShapedType(&v516);
    v527 = mlir::DenseElementsAttr::getFromRawBuffer(v507, v508, v524, v525, v509, v510, v511);
    result = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v527);
    v512 = v524;
    if (v524 == v526)
    {
      return result;
    }
  }

  else
  {
    result = mlir::createRawElementsAttr(v516, v524, v525);
    v512 = v524;
    if (v524 == v526)
    {
      return result;
    }
  }

  v513 = result;
  free(v512);
  return v513;
}