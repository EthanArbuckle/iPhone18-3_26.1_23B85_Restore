void *mlir::mps::NormalSamplingMethodAttr::print(mlir::mps::NormalSamplingMethodAttr *this, mlir::AsmPrinter *a2)
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
  v7 = "";
  v8 = 10;
  if (v6 == 1)
  {
    v7 = "box_muller";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6 != 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 7;
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = "inv_cdf";
  }

  v12 = (*(*a2 + 16))(a2);
  if (v10 <= *(v12 + 24) - *(v12 + 32))
  {
    if (!v9)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v11, v10);
      *(v13 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v11, v10);
  }

  result = (*(*a2 + 16))(a2);
  v15 = result[4];
  if (result[3] == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::PaddingStyleAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::PaddingStyleAttr::parse(mlir::AsmParser *a1)
{
  v126 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v100 = 0;
    v101 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v100))
    {
LABEL_51:
      v77 = (*(*a1 + 40))(a1);
      LOWORD(v117) = 259;
      (*(*a1 + 24))(v106, a1, v77, v115);
      if (v106[0])
      {
        mlir::InFlightDiagnostic::report(v106);
      }

      if (v114 == 1)
      {
        if (v113 != &v114)
        {
          free(v113);
        }

        v78 = v111;
        if (v111)
        {
          v79 = v112;
          v80 = v111;
          if (v112 != v111)
          {
            do
            {
              v79 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v79 - 1);
            }

            while (v79 != v78);
            v80 = v111;
          }

          v112 = v78;
          operator delete(v80);
        }

        v81 = v109;
        if (v109)
        {
          v82 = v110;
          v83 = v109;
          if (v110 != v109)
          {
            do
            {
              v85 = *--v82;
              v84 = v85;
              *v82 = 0;
              if (v85)
              {
                operator delete[](v84);
              }
            }

            while (v82 != v81);
            v83 = v109;
          }

          v110 = v81;
          operator delete(v83);
        }

        if (v107 != &v108)
        {
          free(v107);
        }
      }

      return 0;
    }

    v3 = mlir::mps::symbolizePaddingStyle(v100, v101);
    if ((v3 & 0x100000000) == 0)
    {
      v99 = 257;
      (*(*a1 + 24))(v115, a1, v2, v98);
      if (v115[0])
      {
        LODWORD(v102) = 3;
        v103 = "expected ";
        v104 = 9;
        v4 = &v102;
        v5 = v116;
        if (v117 >= v118)
        {
          if (v116 <= &v102 && v116 + 24 * v117 > &v102)
          {
            v86 = &v102 - v116;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v117 + 1, 24);
            v5 = v116;
            v4 = (v116 + v86);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v117 + 1, 24);
            v4 = &v102;
            v5 = v116;
          }
        }

        v6 = &v5[24 * v117];
        v7 = *v4;
        *(v6 + 2) = v4[2];
        *v6 = v7;
        v8 = ++v117;
        if (v115[0])
        {
          LODWORD(v102) = 3;
          v103 = "::mlir::mps::PaddingStyle";
          v104 = 25;
          v9 = &v102;
          v10 = v116;
          if (v8 >= v118)
          {
            if (v116 <= &v102 && v116 + 24 * v8 > &v102)
            {
              v87 = &v102 - v116;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v8 + 1, 24);
              v10 = v116;
              v9 = (v116 + v87);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v8 + 1, 24);
              v9 = &v102;
              v10 = v116;
            }
          }

          v11 = &v10[24 * v117];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          v13 = ++v117;
          if (v115[0])
          {
            LODWORD(v102) = 3;
            v103 = " to be one of: ";
            v104 = 15;
            v14 = &v102;
            v15 = v116;
            if (v13 >= v118)
            {
              if (v116 <= &v102 && v116 + 24 * v13 > &v102)
              {
                v88 = &v102 - v116;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v13 + 1, 24);
                v15 = v116;
                v14 = (v116 + v88);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v13 + 1, 24);
                v14 = &v102;
                v15 = v116;
              }
            }

            v16 = &v15[24 * v117];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            v18 = ++v117;
            if (v115[0])
            {
              LODWORD(v102) = 3;
              v103 = "EXPLICIT";
              v104 = 8;
              v19 = &v102;
              v20 = v116;
              if (v18 >= v118)
              {
                if (v116 <= &v102 && v116 + 24 * v18 > &v102)
                {
                  v89 = &v102 - v116;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v18 + 1, 24);
                  v20 = v116;
                  v19 = (v116 + v89);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v18 + 1, 24);
                  v19 = &v102;
                  v20 = v116;
                }
              }

              v21 = &v20[24 * v117];
              v22 = *v19;
              *(v21 + 2) = v19[2];
              *v21 = v22;
              v23 = ++v117;
              if (v115[0])
              {
                LODWORD(v102) = 3;
                v103 = ", ";
                v104 = 2;
                v24 = &v102;
                v25 = v116;
                if (v23 >= v118)
                {
                  if (v116 <= &v102 && v116 + 24 * v23 > &v102)
                  {
                    v90 = &v102 - v116;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v23 + 1, 24);
                    v25 = v116;
                    v24 = (v116 + v90);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v23 + 1, 24);
                    v24 = &v102;
                    v25 = v116;
                  }
                }

                v26 = &v25[24 * v117];
                v27 = *v24;
                *(v26 + 2) = v24[2];
                *v26 = v27;
                v28 = ++v117;
                if (v115[0])
                {
                  LODWORD(v102) = 3;
                  v103 = "TF_VALID";
                  v104 = 8;
                  v29 = &v102;
                  v30 = v116;
                  if (v28 >= v118)
                  {
                    if (v116 <= &v102 && v116 + 24 * v28 > &v102)
                    {
                      v91 = &v102 - v116;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v28 + 1, 24);
                      v30 = v116;
                      v29 = (v116 + v91);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v28 + 1, 24);
                      v29 = &v102;
                      v30 = v116;
                    }
                  }

                  v31 = &v30[24 * v117];
                  v32 = *v29;
                  *(v31 + 2) = v29[2];
                  *v31 = v32;
                  v33 = ++v117;
                  if (v115[0])
                  {
                    LODWORD(v102) = 3;
                    v103 = ", ";
                    v104 = 2;
                    v34 = &v102;
                    v35 = v116;
                    if (v33 >= v118)
                    {
                      if (v116 <= &v102 && v116 + 24 * v33 > &v102)
                      {
                        v92 = &v102 - v116;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v33 + 1, 24);
                        v35 = v116;
                        v34 = (v116 + v92);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v33 + 1, 24);
                        v34 = &v102;
                        v35 = v116;
                      }
                    }

                    v36 = &v35[24 * v117];
                    v37 = *v34;
                    *(v36 + 2) = v34[2];
                    *v36 = v37;
                    v38 = ++v117;
                    if (v115[0])
                    {
                      LODWORD(v102) = 3;
                      v103 = "TF_SAME";
                      v104 = 7;
                      v39 = &v102;
                      v40 = v116;
                      if (v38 >= v118)
                      {
                        if (v116 <= &v102 && v116 + 24 * v38 > &v102)
                        {
                          v93 = &v102 - v116;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v38 + 1, 24);
                          v40 = v116;
                          v39 = (v116 + v93);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v38 + 1, 24);
                          v39 = &v102;
                          v40 = v116;
                        }
                      }

                      v41 = &v40[24 * v117];
                      v42 = *v39;
                      *(v41 + 2) = v39[2];
                      *v41 = v42;
                      v43 = ++v117;
                      if (v115[0])
                      {
                        LODWORD(v102) = 3;
                        v103 = ", ";
                        v104 = 2;
                        v44 = &v102;
                        v45 = v116;
                        if (v43 >= v118)
                        {
                          if (v116 <= &v102 && v116 + 24 * v43 > &v102)
                          {
                            v94 = &v102 - v116;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v43 + 1, 24);
                            v45 = v116;
                            v44 = (v116 + v94);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v43 + 1, 24);
                            v44 = &v102;
                            v45 = v116;
                          }
                        }

                        v46 = &v45[24 * v117];
                        v47 = *v44;
                        *(v46 + 2) = v44[2];
                        *v46 = v47;
                        v48 = ++v117;
                        if (v115[0])
                        {
                          LODWORD(v102) = 3;
                          v103 = "EXPLICIT_OFFSET";
                          v104 = 15;
                          v49 = &v102;
                          v50 = v116;
                          if (v48 >= v118)
                          {
                            if (v116 <= &v102 && v116 + 24 * v48 > &v102)
                            {
                              v95 = &v102 - v116;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v48 + 1, 24);
                              v50 = v116;
                              v49 = (v116 + v95);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v48 + 1, 24);
                              v49 = &v102;
                              v50 = v116;
                            }
                          }

                          v51 = &v50[24 * v117];
                          v52 = *v49;
                          *(v51 + 2) = v49[2];
                          *v51 = v52;
                          v53 = ++v117;
                          if (v115[0])
                          {
                            LODWORD(v102) = 3;
                            v103 = ", ";
                            v104 = 2;
                            v54 = &v102;
                            v55 = v116;
                            if (v53 >= v118)
                            {
                              if (v116 <= &v102 && v116 + 24 * v53 > &v102)
                              {
                                v96 = &v102 - v116;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v53 + 1, 24);
                                v55 = v116;
                                v54 = (v116 + v96);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v53 + 1, 24);
                                v54 = &v102;
                                v55 = v116;
                              }
                            }

                            v56 = &v55[24 * v117];
                            v57 = *v54;
                            *(v56 + 2) = v54[2];
                            *v56 = v57;
                            v58 = ++v117;
                            if (v115[0])
                            {
                              LODWORD(v102) = 3;
                              v103 = "ONNX_SAME_LOWER";
                              v104 = 15;
                              v59 = &v102;
                              v60 = v116;
                              if (v58 >= v118)
                              {
                                if (v116 <= &v102 && v116 + 24 * v58 > &v102)
                                {
                                  v97 = &v102 - v116;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v58 + 1, 24);
                                  v60 = v116;
                                  v59 = (v116 + v97);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v116, v119, v58 + 1, 24);
                                  v59 = &v102;
                                  v60 = v116;
                                }
                              }

                              v61 = &v60[24 * v117];
                              v62 = *v59;
                              *(v61 + 2) = v59[2];
                              *v61 = v62;
                              ++v117;
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
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v115);
      if (v115[0])
      {
        mlir::InFlightDiagnostic::report(v115);
      }

      if (v125 == 1)
      {
        if (v124 != &v125)
        {
          free(v124);
        }

        v63 = __p;
        if (__p)
        {
          v64 = v123;
          v65 = __p;
          if (v123 != __p)
          {
            do
            {
              v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
            }

            while (v64 != v63);
            v65 = __p;
          }

          v123 = v63;
          operator delete(v65);
        }

        v66 = v120;
        if (v120)
        {
          v67 = v121;
          v68 = v120;
          if (v121 != v120)
          {
            do
            {
              v70 = *--v67;
              v69 = v70;
              *v67 = 0;
              if (v70)
              {
                operator delete[](v69);
              }
            }

            while (v67 != v66);
            v68 = v120;
          }

          v121 = v66;
          operator delete(v68);
        }

        if (v116 != v119)
        {
          free(v116);
        }
      }

      goto LABEL_51;
    }

    v71 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v102 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
      v103 = Context;
      v115[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v115[1] = &v102;
      v105 = v71;
      v74 = 0x9DDFEA08EB382D69 * (((8 * v71) | 4) ^ v71 ^ 0xFF51AFD7ED558CCDLL);
      v75 = 0x9DDFEA08EB382D69 * (v71 ^ 0xFF51AFD7ED558CCDLL ^ (v74 >> 47) ^ v74);
      v100 = &v105;
      v98[0] = &v105;
      v98[1] = v115;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((v75 >> 47) ^ v75), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v100, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v98);
    }
  }

  return 0;
}

void *mlir::mps::PaddingStyleAttr::print(mlir::mps::PaddingStyleAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 > 1)
    {
LABEL_3:
      switch(v6)
      {
        case 2:
          v7 = 0;
          v8 = "TF_SAME";
          v9 = 7;
          goto LABEL_15;
        case 3:
          v7 = 0;
          v8 = "EXPLICIT_OFFSET";
          v9 = 15;
          goto LABEL_15;
        case 4:
          v7 = 0;
          v8 = "ONNX_SAME_LOWER";
          v9 = 15;
          goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (!v6)
  {
    v7 = 0;
    v8 = "EXPLICIT";
    v9 = 8;
    goto LABEL_15;
  }

  if (v6 == 1)
  {
    v7 = 0;
    v8 = "TF_VALID";
    v9 = 8;
    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
  v8 = "";
  v7 = 1;
LABEL_15:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
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

uint64_t mlir::mps::PoolIndicesModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::PoolIndicesModeAttr::parse(mlir::AsmParser *a1)
{
  v162 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v136 = 0;
    v137 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v136))
    {
LABEL_63:
      v107 = (*(*a1 + 40))(a1);
      LOWORD(v153) = 259;
      (*(*a1 + 24))(v142, a1, v107, v151);
      if (v142[0])
      {
        mlir::InFlightDiagnostic::report(v142);
      }

      if (v150 == 1)
      {
        if (v149 != &v150)
        {
          free(v149);
        }

        v108 = v147;
        if (v147)
        {
          v109 = v148;
          v110 = v147;
          if (v148 != v147)
          {
            do
            {
              v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
            }

            while (v109 != v108);
            v110 = v147;
          }

          v148 = v108;
          operator delete(v110);
        }

        v111 = v145;
        if (v145)
        {
          v112 = v146;
          v113 = v145;
          if (v146 != v145)
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
            v113 = v145;
          }

          v146 = v111;
          operator delete(v113);
        }

        if (v143 != &v144)
        {
          free(v143);
        }
      }

      return 0;
    }

    v3 = mlir::mps::symbolizePoolIndicesMode(v136, v137);
    if ((v3 & 0x100000000) == 0)
    {
      v135 = 257;
      (*(*a1 + 24))(v151, a1, v2, v134);
      if (v151[0])
      {
        LODWORD(v138) = 3;
        v139 = "expected ";
        v140 = 9;
        v4 = &v138;
        v5 = v152;
        if (v153 >= v154)
        {
          if (v152 <= &v138 && v152 + 24 * v153 > &v138)
          {
            v116 = &v138 - v152;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
            v5 = v152;
            v4 = (v152 + v116);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
            v4 = &v138;
            v5 = v152;
          }
        }

        v6 = &v5[24 * v153];
        v7 = *v4;
        *(v6 + 2) = v4[2];
        *v6 = v7;
        v8 = ++v153;
        if (v151[0])
        {
          LODWORD(v138) = 3;
          v139 = "::mlir::mps::PoolIndicesMode";
          v140 = 28;
          v9 = &v138;
          v10 = v152;
          if (v8 >= v154)
          {
            if (v152 <= &v138 && v152 + 24 * v8 > &v138)
            {
              v117 = &v138 - v152;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v8 + 1, 24);
              v10 = v152;
              v9 = (v152 + v117);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v8 + 1, 24);
              v9 = &v138;
              v10 = v152;
            }
          }

          v11 = &v10[24 * v153];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          v13 = ++v153;
          if (v151[0])
          {
            LODWORD(v138) = 3;
            v139 = " to be one of: ";
            v140 = 15;
            v14 = &v138;
            v15 = v152;
            if (v13 >= v154)
            {
              if (v152 <= &v138 && v152 + 24 * v13 > &v138)
              {
                v118 = &v138 - v152;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v13 + 1, 24);
                v15 = v152;
                v14 = (v152 + v118);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v13 + 1, 24);
                v14 = &v138;
                v15 = v152;
              }
            }

            v16 = &v15[24 * v153];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            v18 = ++v153;
            if (v151[0])
            {
              LODWORD(v138) = 3;
              v139 = "Global_Flatten1D";
              v140 = 16;
              v19 = &v138;
              v20 = v152;
              if (v18 >= v154)
              {
                if (v152 <= &v138 && v152 + 24 * v18 > &v138)
                {
                  v119 = &v138 - v152;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v18 + 1, 24);
                  v20 = v152;
                  v19 = (v152 + v119);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v18 + 1, 24);
                  v19 = &v138;
                  v20 = v152;
                }
              }

              v21 = &v20[24 * v153];
              v22 = *v19;
              *(v21 + 2) = v19[2];
              *v21 = v22;
              v23 = ++v153;
              if (v151[0])
              {
                LODWORD(v138) = 3;
                v139 = ", ";
                v140 = 2;
                v24 = &v138;
                v25 = v152;
                if (v23 >= v154)
                {
                  if (v152 <= &v138 && v152 + 24 * v23 > &v138)
                  {
                    v120 = &v138 - v152;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v23 + 1, 24);
                    v25 = v152;
                    v24 = (v152 + v120);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v23 + 1, 24);
                    v24 = &v138;
                    v25 = v152;
                  }
                }

                v26 = &v25[24 * v153];
                v27 = *v24;
                *(v26 + 2) = v24[2];
                *v26 = v27;
                v28 = ++v153;
                if (v151[0])
                {
                  LODWORD(v138) = 3;
                  v139 = "Global_Flatten2D";
                  v140 = 16;
                  v29 = &v138;
                  v30 = v152;
                  if (v28 >= v154)
                  {
                    if (v152 <= &v138 && v152 + 24 * v28 > &v138)
                    {
                      v121 = &v138 - v152;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v28 + 1, 24);
                      v30 = v152;
                      v29 = (v152 + v121);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v28 + 1, 24);
                      v29 = &v138;
                      v30 = v152;
                    }
                  }

                  v31 = &v30[24 * v153];
                  v32 = *v29;
                  *(v31 + 2) = v29[2];
                  *v31 = v32;
                  v33 = ++v153;
                  if (v151[0])
                  {
                    LODWORD(v138) = 3;
                    v139 = ", ";
                    v140 = 2;
                    v34 = &v138;
                    v35 = v152;
                    if (v33 >= v154)
                    {
                      if (v152 <= &v138 && v152 + 24 * v33 > &v138)
                      {
                        v122 = &v138 - v152;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v33 + 1, 24);
                        v35 = v152;
                        v34 = (v152 + v122);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v33 + 1, 24);
                        v34 = &v138;
                        v35 = v152;
                      }
                    }

                    v36 = &v35[24 * v153];
                    v37 = *v34;
                    *(v36 + 2) = v34[2];
                    *v36 = v37;
                    v38 = ++v153;
                    if (v151[0])
                    {
                      LODWORD(v138) = 3;
                      v139 = "Global_Flatten3D";
                      v140 = 16;
                      v39 = &v138;
                      v40 = v152;
                      if (v38 >= v154)
                      {
                        if (v152 <= &v138 && v152 + 24 * v38 > &v138)
                        {
                          v123 = &v138 - v152;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v38 + 1, 24);
                          v40 = v152;
                          v39 = (v152 + v123);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v38 + 1, 24);
                          v39 = &v138;
                          v40 = v152;
                        }
                      }

                      v41 = &v40[24 * v153];
                      v42 = *v39;
                      *(v41 + 2) = v39[2];
                      *v41 = v42;
                      v43 = ++v153;
                      if (v151[0])
                      {
                        LODWORD(v138) = 3;
                        v139 = ", ";
                        v140 = 2;
                        v44 = &v138;
                        v45 = v152;
                        if (v43 >= v154)
                        {
                          if (v152 <= &v138 && v152 + 24 * v43 > &v138)
                          {
                            v124 = &v138 - v152;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v43 + 1, 24);
                            v45 = v152;
                            v44 = (v152 + v124);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v43 + 1, 24);
                            v44 = &v138;
                            v45 = v152;
                          }
                        }

                        v46 = &v45[24 * v153];
                        v47 = *v44;
                        *(v46 + 2) = v44[2];
                        *v46 = v47;
                        v48 = ++v153;
                        if (v151[0])
                        {
                          LODWORD(v138) = 3;
                          v139 = "Global_Flatten4D";
                          v140 = 16;
                          v49 = &v138;
                          v50 = v152;
                          if (v48 >= v154)
                          {
                            if (v152 <= &v138 && v152 + 24 * v48 > &v138)
                            {
                              v125 = &v138 - v152;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v48 + 1, 24);
                              v50 = v152;
                              v49 = (v152 + v125);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v48 + 1, 24);
                              v49 = &v138;
                              v50 = v152;
                            }
                          }

                          v51 = &v50[24 * v153];
                          v52 = *v49;
                          *(v51 + 2) = v49[2];
                          *v51 = v52;
                          v53 = ++v153;
                          if (v151[0])
                          {
                            LODWORD(v138) = 3;
                            v139 = ", ";
                            v140 = 2;
                            v54 = &v138;
                            v55 = v152;
                            if (v53 >= v154)
                            {
                              if (v152 <= &v138 && v152 + 24 * v53 > &v138)
                              {
                                v126 = &v138 - v152;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v53 + 1, 24);
                                v55 = v152;
                                v54 = (v152 + v126);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v53 + 1, 24);
                                v54 = &v138;
                                v55 = v152;
                              }
                            }

                            v56 = &v55[24 * v153];
                            v57 = *v54;
                            *(v56 + 2) = v54[2];
                            *v56 = v57;
                            v58 = ++v153;
                            if (v151[0])
                            {
                              LODWORD(v138) = 3;
                              v139 = "Local_Flatten1D";
                              v140 = 15;
                              v59 = &v138;
                              v60 = v152;
                              if (v58 >= v154)
                              {
                                if (v152 <= &v138 && v152 + 24 * v58 > &v138)
                                {
                                  v127 = &v138 - v152;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v58 + 1, 24);
                                  v60 = v152;
                                  v59 = (v152 + v127);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v58 + 1, 24);
                                  v59 = &v138;
                                  v60 = v152;
                                }
                              }

                              v61 = &v60[24 * v153];
                              v62 = *v59;
                              *(v61 + 2) = v59[2];
                              *v61 = v62;
                              v63 = ++v153;
                              if (v151[0])
                              {
                                LODWORD(v138) = 3;
                                v139 = ", ";
                                v140 = 2;
                                v64 = &v138;
                                v65 = v152;
                                if (v63 >= v154)
                                {
                                  if (v152 <= &v138 && v152 + 24 * v63 > &v138)
                                  {
                                    v128 = &v138 - v152;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v63 + 1, 24);
                                    v65 = v152;
                                    v64 = (v152 + v128);
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v63 + 1, 24);
                                    v64 = &v138;
                                    v65 = v152;
                                  }
                                }

                                v66 = &v65[24 * v153];
                                v67 = *v64;
                                *(v66 + 2) = v64[2];
                                *v66 = v67;
                                v68 = ++v153;
                                if (v151[0])
                                {
                                  LODWORD(v138) = 3;
                                  v139 = "Local_Flatten2D";
                                  v140 = 15;
                                  v69 = &v138;
                                  v70 = v152;
                                  if (v68 >= v154)
                                  {
                                    if (v152 <= &v138 && v152 + 24 * v68 > &v138)
                                    {
                                      v129 = &v138 - v152;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v68 + 1, 24);
                                      v70 = v152;
                                      v69 = (v152 + v129);
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v68 + 1, 24);
                                      v69 = &v138;
                                      v70 = v152;
                                    }
                                  }

                                  v71 = &v70[24 * v153];
                                  v72 = *v69;
                                  *(v71 + 2) = v69[2];
                                  *v71 = v72;
                                  v73 = ++v153;
                                  if (v151[0])
                                  {
                                    LODWORD(v138) = 3;
                                    v139 = ", ";
                                    v140 = 2;
                                    v74 = &v138;
                                    v75 = v152;
                                    if (v73 >= v154)
                                    {
                                      if (v152 <= &v138 && v152 + 24 * v73 > &v138)
                                      {
                                        v130 = &v138 - v152;
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v73 + 1, 24);
                                        v75 = v152;
                                        v74 = (v152 + v130);
                                      }

                                      else
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v73 + 1, 24);
                                        v74 = &v138;
                                        v75 = v152;
                                      }
                                    }

                                    v76 = &v75[24 * v153];
                                    v77 = *v74;
                                    *(v76 + 2) = v74[2];
                                    *v76 = v77;
                                    v78 = ++v153;
                                    if (v151[0])
                                    {
                                      LODWORD(v138) = 3;
                                      v139 = "Local_Flatten3D";
                                      v140 = 15;
                                      v79 = &v138;
                                      v80 = v152;
                                      if (v78 >= v154)
                                      {
                                        if (v152 <= &v138 && v152 + 24 * v78 > &v138)
                                        {
                                          v131 = &v138 - v152;
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v78 + 1, 24);
                                          v80 = v152;
                                          v79 = (v152 + v131);
                                        }

                                        else
                                        {
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v78 + 1, 24);
                                          v79 = &v138;
                                          v80 = v152;
                                        }
                                      }

                                      v81 = &v80[24 * v153];
                                      v82 = *v79;
                                      *(v81 + 2) = v79[2];
                                      *v81 = v82;
                                      v83 = ++v153;
                                      if (v151[0])
                                      {
                                        LODWORD(v138) = 3;
                                        v139 = ", ";
                                        v140 = 2;
                                        v84 = &v138;
                                        v85 = v152;
                                        if (v83 >= v154)
                                        {
                                          if (v152 <= &v138 && v152 + 24 * v83 > &v138)
                                          {
                                            v132 = &v138 - v152;
                                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v83 + 1, 24);
                                            v85 = v152;
                                            v84 = (v152 + v132);
                                          }

                                          else
                                          {
                                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v83 + 1, 24);
                                            v84 = &v138;
                                            v85 = v152;
                                          }
                                        }

                                        v86 = &v85[24 * v153];
                                        v87 = *v84;
                                        *(v86 + 2) = v84[2];
                                        *v86 = v87;
                                        v88 = ++v153;
                                        if (v151[0])
                                        {
                                          LODWORD(v138) = 3;
                                          v139 = "Local_Flatten4D";
                                          v140 = 15;
                                          v89 = &v138;
                                          v90 = v152;
                                          if (v88 >= v154)
                                          {
                                            if (v152 <= &v138 && v152 + 24 * v88 > &v138)
                                            {
                                              v133 = &v138 - v152;
                                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v88 + 1, 24);
                                              v90 = v152;
                                              v89 = (v152 + v133);
                                            }

                                            else
                                            {
                                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v88 + 1, 24);
                                              v89 = &v138;
                                              v90 = v152;
                                            }
                                          }

                                          v91 = &v90[24 * v153];
                                          v92 = *v89;
                                          *(v91 + 2) = v89[2];
                                          *v91 = v92;
                                          ++v153;
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
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v151);
      if (v151[0])
      {
        mlir::InFlightDiagnostic::report(v151);
      }

      if (v161 == 1)
      {
        if (v160 != &v161)
        {
          free(v160);
        }

        v93 = __p;
        if (__p)
        {
          v94 = v159;
          v95 = __p;
          if (v159 != __p)
          {
            do
            {
              v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
            }

            while (v94 != v93);
            v95 = __p;
          }

          v159 = v93;
          operator delete(v95);
        }

        v96 = v156;
        if (v156)
        {
          v97 = v157;
          v98 = v156;
          if (v157 != v156)
          {
            do
            {
              v100 = *--v97;
              v99 = v100;
              *v97 = 0;
              if (v100)
              {
                operator delete[](v99);
              }
            }

            while (v97 != v96);
            v98 = v156;
          }

          v157 = v96;
          operator delete(v98);
        }

        if (v152 != v155)
        {
          free(v152);
        }
      }

      goto LABEL_63;
    }

    v101 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v138 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
      v139 = Context;
      v151[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v151[1] = &v138;
      v141 = v101;
      v104 = 0x9DDFEA08EB382D69 * (((8 * v101) | 4) ^ v101 ^ 0xFF51AFD7ED558CCDLL);
      v105 = 0x9DDFEA08EB382D69 * (v101 ^ 0xFF51AFD7ED558CCDLL ^ (v104 >> 47) ^ v104);
      v136 = &v141;
      v134[0] = &v141;
      v134[1] = v151;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v105 >> 47) ^ v105), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v136, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v134);
    }
  }

  return 0;
}

void *mlir::mps::PoolIndicesModeAttr::print(mlir::mps::PoolIndicesModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 3)
    {
LABEL_3:
      if (v6 <= 1)
      {
        if (!v6)
        {
          v7 = 0;
          v8 = "Global_Flatten1D";
          v9 = 16;
          goto LABEL_23;
        }

        if (v6 == 1)
        {
          v7 = 0;
          v8 = "Global_Flatten2D";
          v9 = 16;
          goto LABEL_23;
        }

LABEL_22:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_23;
      }

      v7 = 0;
      if (v6 == 2)
      {
        v8 = "Global_Flatten3D";
      }

      else
      {
        v8 = "Global_Flatten4D";
      }

      v9 = 16;
      goto LABEL_23;
    }
  }

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v7 = 0;
      v8 = "Local_Flatten3D";
      v9 = 15;
      goto LABEL_23;
    }

    if (v6 == 7)
    {
      v7 = 0;
      v8 = "Local_Flatten4D";
      v9 = 15;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v7 = 0;
  if (v6 == 4)
  {
    v8 = "Local_Flatten1D";
  }

  else
  {
    v8 = "Local_Flatten2D";
  }

  v9 = 15;
LABEL_23:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
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

uint64_t mlir::mps::RNNActivationAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::RNNActivationAttr::parse(mlir::AsmParser *a1)
{
  v138 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v112 = 0;
    v113 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v112))
    {
LABEL_55:
      v87 = (*(*a1 + 40))(a1);
      LOWORD(v129) = 259;
      (*(*a1 + 24))(v118, a1, v87, v127);
      if (v118[0])
      {
        mlir::InFlightDiagnostic::report(v118);
      }

      if (v126 == 1)
      {
        if (v125 != &v126)
        {
          free(v125);
        }

        v88 = v123;
        if (v123)
        {
          v89 = v124;
          v90 = v123;
          if (v124 != v123)
          {
            do
            {
              v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
            }

            while (v89 != v88);
            v90 = v123;
          }

          v124 = v88;
          operator delete(v90);
        }

        v91 = v121;
        if (v121)
        {
          v92 = v122;
          v93 = v121;
          if (v122 != v121)
          {
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
            v93 = v121;
          }

          v122 = v91;
          operator delete(v93);
        }

        if (v119 != &v120)
        {
          free(v119);
        }
      }

      return 0;
    }

    v3 = mlir::mps::symbolizeRNNActivation(v112, v113);
    if ((v3 & 0x100000000) == 0)
    {
      v111 = 257;
      (*(*a1 + 24))(v127, a1, v2, v110);
      if (v127[0])
      {
        LODWORD(v114) = 3;
        v115 = "expected ";
        v116 = 9;
        v4 = &v114;
        v5 = v128;
        if (v129 >= v130)
        {
          if (v128 <= &v114 && v128 + 24 * v129 > &v114)
          {
            v96 = &v114 - v128;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v129 + 1, 24);
            v5 = v128;
            v4 = (v128 + v96);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v129 + 1, 24);
            v4 = &v114;
            v5 = v128;
          }
        }

        v6 = &v5[24 * v129];
        v7 = *v4;
        *(v6 + 2) = v4[2];
        *v6 = v7;
        v8 = ++v129;
        if (v127[0])
        {
          LODWORD(v114) = 3;
          v115 = "::mlir::mps::RNNActivation";
          v116 = 26;
          v9 = &v114;
          v10 = v128;
          if (v8 >= v130)
          {
            if (v128 <= &v114 && v128 + 24 * v8 > &v114)
            {
              v97 = &v114 - v128;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v8 + 1, 24);
              v10 = v128;
              v9 = (v128 + v97);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v8 + 1, 24);
              v9 = &v114;
              v10 = v128;
            }
          }

          v11 = &v10[24 * v129];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          v13 = ++v129;
          if (v127[0])
          {
            LODWORD(v114) = 3;
            v115 = " to be one of: ";
            v116 = 15;
            v14 = &v114;
            v15 = v128;
            if (v13 >= v130)
            {
              if (v128 <= &v114 && v128 + 24 * v13 > &v114)
              {
                v98 = &v114 - v128;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v13 + 1, 24);
                v15 = v128;
                v14 = (v128 + v98);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v13 + 1, 24);
                v14 = &v114;
                v15 = v128;
              }
            }

            v16 = &v15[24 * v129];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            v18 = ++v129;
            if (v127[0])
            {
              LODWORD(v114) = 3;
              v115 = "none";
              v116 = 4;
              v19 = &v114;
              v20 = v128;
              if (v18 >= v130)
              {
                if (v128 <= &v114 && v128 + 24 * v18 > &v114)
                {
                  v99 = &v114 - v128;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v18 + 1, 24);
                  v20 = v128;
                  v19 = (v128 + v99);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v18 + 1, 24);
                  v19 = &v114;
                  v20 = v128;
                }
              }

              v21 = &v20[24 * v129];
              v22 = *v19;
              *(v21 + 2) = v19[2];
              *v21 = v22;
              v23 = ++v129;
              if (v127[0])
              {
                LODWORD(v114) = 3;
                v115 = ", ";
                v116 = 2;
                v24 = &v114;
                v25 = v128;
                if (v23 >= v130)
                {
                  if (v128 <= &v114 && v128 + 24 * v23 > &v114)
                  {
                    v100 = &v114 - v128;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v23 + 1, 24);
                    v25 = v128;
                    v24 = (v128 + v100);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v23 + 1, 24);
                    v24 = &v114;
                    v25 = v128;
                  }
                }

                v26 = &v25[24 * v129];
                v27 = *v24;
                *(v26 + 2) = v24[2];
                *v26 = v27;
                v28 = ++v129;
                if (v127[0])
                {
                  LODWORD(v114) = 3;
                  v115 = "relu";
                  v116 = 4;
                  v29 = &v114;
                  v30 = v128;
                  if (v28 >= v130)
                  {
                    if (v128 <= &v114 && v128 + 24 * v28 > &v114)
                    {
                      v101 = &v114 - v128;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v28 + 1, 24);
                      v30 = v128;
                      v29 = (v128 + v101);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v28 + 1, 24);
                      v29 = &v114;
                      v30 = v128;
                    }
                  }

                  v31 = &v30[24 * v129];
                  v32 = *v29;
                  *(v31 + 2) = v29[2];
                  *v31 = v32;
                  v33 = ++v129;
                  if (v127[0])
                  {
                    LODWORD(v114) = 3;
                    v115 = ", ";
                    v116 = 2;
                    v34 = &v114;
                    v35 = v128;
                    if (v33 >= v130)
                    {
                      if (v128 <= &v114 && v128 + 24 * v33 > &v114)
                      {
                        v102 = &v114 - v128;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v33 + 1, 24);
                        v35 = v128;
                        v34 = (v128 + v102);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v33 + 1, 24);
                        v34 = &v114;
                        v35 = v128;
                      }
                    }

                    v36 = &v35[24 * v129];
                    v37 = *v34;
                    *(v36 + 2) = v34[2];
                    *v36 = v37;
                    v38 = ++v129;
                    if (v127[0])
                    {
                      LODWORD(v114) = 3;
                      v115 = "tanh";
                      v116 = 4;
                      v39 = &v114;
                      v40 = v128;
                      if (v38 >= v130)
                      {
                        if (v128 <= &v114 && v128 + 24 * v38 > &v114)
                        {
                          v103 = &v114 - v128;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v38 + 1, 24);
                          v40 = v128;
                          v39 = (v128 + v103);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v38 + 1, 24);
                          v39 = &v114;
                          v40 = v128;
                        }
                      }

                      v41 = &v40[24 * v129];
                      v42 = *v39;
                      *(v41 + 2) = v39[2];
                      *v41 = v42;
                      v43 = ++v129;
                      if (v127[0])
                      {
                        LODWORD(v114) = 3;
                        v115 = ", ";
                        v116 = 2;
                        v44 = &v114;
                        v45 = v128;
                        if (v43 >= v130)
                        {
                          if (v128 <= &v114 && v128 + 24 * v43 > &v114)
                          {
                            v104 = &v114 - v128;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v43 + 1, 24);
                            v45 = v128;
                            v44 = (v128 + v104);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v43 + 1, 24);
                            v44 = &v114;
                            v45 = v128;
                          }
                        }

                        v46 = &v45[24 * v129];
                        v47 = *v44;
                        *(v46 + 2) = v44[2];
                        *v46 = v47;
                        v48 = ++v129;
                        if (v127[0])
                        {
                          LODWORD(v114) = 3;
                          v115 = "sigmoid";
                          v116 = 7;
                          v49 = &v114;
                          v50 = v128;
                          if (v48 >= v130)
                          {
                            if (v128 <= &v114 && v128 + 24 * v48 > &v114)
                            {
                              v105 = &v114 - v128;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v48 + 1, 24);
                              v50 = v128;
                              v49 = (v128 + v105);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v48 + 1, 24);
                              v49 = &v114;
                              v50 = v128;
                            }
                          }

                          v51 = &v50[24 * v129];
                          v52 = *v49;
                          *(v51 + 2) = v49[2];
                          *v51 = v52;
                          v53 = ++v129;
                          if (v127[0])
                          {
                            LODWORD(v114) = 3;
                            v115 = ", ";
                            v116 = 2;
                            v54 = &v114;
                            v55 = v128;
                            if (v53 >= v130)
                            {
                              if (v128 <= &v114 && v128 + 24 * v53 > &v114)
                              {
                                v106 = &v114 - v128;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v53 + 1, 24);
                                v55 = v128;
                                v54 = (v128 + v106);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v53 + 1, 24);
                                v54 = &v114;
                                v55 = v128;
                              }
                            }

                            v56 = &v55[24 * v129];
                            v57 = *v54;
                            *(v56 + 2) = v54[2];
                            *v56 = v57;
                            v58 = ++v129;
                            if (v127[0])
                            {
                              LODWORD(v114) = 3;
                              v115 = "hard_sigmoid";
                              v116 = 12;
                              v59 = &v114;
                              v60 = v128;
                              if (v58 >= v130)
                              {
                                if (v128 <= &v114 && v128 + 24 * v58 > &v114)
                                {
                                  v107 = &v114 - v128;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v58 + 1, 24);
                                  v60 = v128;
                                  v59 = (v128 + v107);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v58 + 1, 24);
                                  v59 = &v114;
                                  v60 = v128;
                                }
                              }

                              v61 = &v60[24 * v129];
                              v62 = *v59;
                              *(v61 + 2) = v59[2];
                              *v61 = v62;
                              v63 = ++v129;
                              if (v127[0])
                              {
                                LODWORD(v114) = 3;
                                v115 = ", ";
                                v116 = 2;
                                v64 = &v114;
                                v65 = v128;
                                if (v63 >= v130)
                                {
                                  if (v128 <= &v114 && v128 + 24 * v63 > &v114)
                                  {
                                    v108 = &v114 - v128;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v63 + 1, 24);
                                    v65 = v128;
                                    v64 = (v128 + v108);
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v63 + 1, 24);
                                    v64 = &v114;
                                    v65 = v128;
                                  }
                                }

                                v66 = &v65[24 * v129];
                                v67 = *v64;
                                *(v66 + 2) = v64[2];
                                *v66 = v67;
                                v68 = ++v129;
                                if (v127[0])
                                {
                                  LODWORD(v114) = 3;
                                  v115 = "scaled_tanh";
                                  v116 = 11;
                                  v69 = &v114;
                                  v70 = v128;
                                  if (v68 >= v130)
                                  {
                                    if (v128 <= &v114 && v128 + 24 * v68 > &v114)
                                    {
                                      v109 = &v114 - v128;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v68 + 1, 24);
                                      v70 = v128;
                                      v69 = (v128 + v109);
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v131, v68 + 1, 24);
                                      v69 = &v114;
                                      v70 = v128;
                                    }
                                  }

                                  v71 = &v70[24 * v129];
                                  v72 = *v69;
                                  *(v71 + 2) = v69[2];
                                  *v71 = v72;
                                  ++v129;
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
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v127);
      if (v127[0])
      {
        mlir::InFlightDiagnostic::report(v127);
      }

      if (v137 == 1)
      {
        if (v136 != &v137)
        {
          free(v136);
        }

        v73 = __p;
        if (__p)
        {
          v74 = v135;
          v75 = __p;
          if (v135 != __p)
          {
            do
            {
              v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
            }

            while (v74 != v73);
            v75 = __p;
          }

          v135 = v73;
          operator delete(v75);
        }

        v76 = v132;
        if (v132)
        {
          v77 = v133;
          v78 = v132;
          if (v133 != v132)
          {
            do
            {
              v80 = *--v77;
              v79 = v80;
              *v77 = 0;
              if (v80)
              {
                operator delete[](v79);
              }
            }

            while (v77 != v76);
            v78 = v132;
          }

          v133 = v76;
          operator delete(v78);
        }

        if (v128 != v131)
        {
          free(v128);
        }
      }

      goto LABEL_55;
    }

    v81 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v114 = &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id;
      v115 = Context;
      v127[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24RNNActivationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17RNNActivationAttrEJNS2_13RNNActivationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v127[1] = &v114;
      v117 = v81;
      v84 = 0x9DDFEA08EB382D69 * (((8 * v81) | 4) ^ v81 ^ 0xFF51AFD7ED558CCDLL);
      v85 = 0x9DDFEA08EB382D69 * (v81 ^ 0xFF51AFD7ED558CCDLL ^ (v84 >> 47) ^ v84);
      v112 = &v117;
      v110[0] = &v117;
      v110[1] = v127;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id, -348639895 * ((v85 >> 47) ^ v85), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v112, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::RNNActivationAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::RNNActivationAttrStorage,mlir::mps::RNNActivation>(llvm::function_ref<void ()(mlir::mps::detail::RNNActivationAttrStorage *)>,mlir::TypeID,mlir::mps::RNNActivation &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v110);
    }
  }

  return 0;
}

void *mlir::mps::RNNActivationAttr::print(mlir::mps::RNNActivationAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 2)
    {
LABEL_3:
      if (!v6)
      {
        v7 = 0;
        v8 = "none";
        v9 = 4;
        goto LABEL_17;
      }

      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v7 = 0;
          v8 = "tanh";
          v9 = 4;
          goto LABEL_17;
        }

LABEL_14:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_17;
      }

      v7 = 0;
      v8 = "relu";
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6 == 3)
  {
    v7 = 0;
    v8 = "sigmoid";
    v9 = 7;
    goto LABEL_17;
  }

  if (v6 != 4)
  {
    if (v6 == 5)
    {
      v7 = 0;
      v8 = "scaled_tanh";
      v9 = 11;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v7 = 0;
  v8 = "hard_sigmoid";
  v9 = 12;
LABEL_17:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
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

uint64_t mlir::mps::LSTMGateLayoutAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::LSTMGateLayoutAttr::parse(mlir::AsmParser *a1)
{
  v113 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v87 = 0;
    v88 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v87))
    {
LABEL_51:
      v61 = (*(*a1 + 40))(a1);
      LOWORD(v104) = 259;
      (*(*a1 + 24))(v93, a1, v61, v102);
      if (v93[0])
      {
        mlir::InFlightDiagnostic::report(v93);
      }

      if (v101 == 1)
      {
        if (v100 != &v101)
        {
          free(v100);
        }

        v62 = v98;
        if (v98)
        {
          v63 = v99;
          v64 = v98;
          if (v99 != v98)
          {
            do
            {
              v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
            }

            while (v63 != v62);
            v64 = v98;
          }

          v99 = v62;
          operator delete(v64);
        }

        v65 = v96;
        if (v96)
        {
          v66 = v97;
          v67 = v96;
          if (v97 != v96)
          {
            do
            {
              v69 = *--v66;
              v68 = v69;
              *v66 = 0;
              if (v69)
              {
                operator delete[](v68);
              }
            }

            while (v66 != v65);
            v67 = v96;
          }

          v97 = v65;
          operator delete(v67);
        }

        if (v94 != &v95)
        {
          free(v94);
        }
      }

      return 0;
    }

    if (v88 != 4)
    {
LABEL_8:
      v86 = 257;
      (*(*a1 + 24))(v102, a1, v2, v85);
      if (v102[0])
      {
        LODWORD(v89) = 3;
        v90 = "expected ";
        v91 = 9;
        v3 = &v89;
        v4 = v103;
        if (v104 >= v105)
        {
          if (v103 <= &v89 && v103 + 24 * v104 > &v89)
          {
            v75 = &v89 - v103;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v104 + 1, 24);
            v4 = v103;
            v3 = (v103 + v75);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v104 + 1, 24);
            v3 = &v89;
            v4 = v103;
          }
        }

        v5 = &v4[24 * v104];
        v6 = *v3;
        *(v5 + 2) = v3[2];
        *v5 = v6;
        v7 = ++v104;
        if (v102[0])
        {
          LODWORD(v89) = 3;
          v90 = "::mlir::mps::LSTMGateLayout";
          v91 = 27;
          v8 = &v89;
          v9 = v103;
          if (v7 >= v105)
          {
            if (v103 <= &v89 && v103 + 24 * v7 > &v89)
            {
              v76 = &v89 - v103;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v7 + 1, 24);
              v9 = v103;
              v8 = (v103 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v7 + 1, 24);
              v8 = &v89;
              v9 = v103;
            }
          }

          v10 = &v9[24 * v104];
          v11 = *v8;
          *(v10 + 2) = v8[2];
          *v10 = v11;
          v12 = ++v104;
          if (v102[0])
          {
            LODWORD(v89) = 3;
            v90 = " to be one of: ";
            v91 = 15;
            v13 = &v89;
            v14 = v103;
            if (v12 >= v105)
            {
              if (v103 <= &v89 && v103 + 24 * v12 > &v89)
              {
                v77 = &v89 - v103;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v12 + 1, 24);
                v14 = v103;
                v13 = (v103 + v77);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v12 + 1, 24);
                v13 = &v89;
                v14 = v103;
              }
            }

            v15 = &v14[24 * v104];
            v16 = *v13;
            *(v15 + 2) = v13[2];
            *v15 = v16;
            v17 = ++v104;
            if (v102[0])
            {
              LODWORD(v89) = 3;
              v90 = "IFZO";
              v91 = 4;
              v18 = &v89;
              v19 = v103;
              if (v17 >= v105)
              {
                if (v103 <= &v89 && v103 + 24 * v17 > &v89)
                {
                  v78 = &v89 - v103;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v17 + 1, 24);
                  v19 = v103;
                  v18 = (v103 + v78);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v17 + 1, 24);
                  v18 = &v89;
                  v19 = v103;
                }
              }

              v20 = &v19[24 * v104];
              v21 = *v18;
              *(v20 + 2) = v18[2];
              *v20 = v21;
              v22 = ++v104;
              if (v102[0])
              {
                LODWORD(v89) = 3;
                v90 = ", ";
                v91 = 2;
                v23 = &v89;
                v24 = v103;
                if (v22 >= v105)
                {
                  if (v103 <= &v89 && v103 + 24 * v22 > &v89)
                  {
                    v79 = &v89 - v103;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v22 + 1, 24);
                    v24 = v103;
                    v23 = (v103 + v79);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v22 + 1, 24);
                    v23 = &v89;
                    v24 = v103;
                  }
                }

                v25 = &v24[24 * v104];
                v26 = *v23;
                *(v25 + 2) = v23[2];
                *v25 = v26;
                v27 = ++v104;
                if (v102[0])
                {
                  LODWORD(v89) = 3;
                  v90 = "IZFO";
                  v91 = 4;
                  v28 = &v89;
                  v29 = v103;
                  if (v27 >= v105)
                  {
                    if (v103 <= &v89 && v103 + 24 * v27 > &v89)
                    {
                      v80 = &v89 - v103;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v27 + 1, 24);
                      v29 = v103;
                      v28 = (v103 + v80);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v27 + 1, 24);
                      v28 = &v89;
                      v29 = v103;
                    }
                  }

                  v30 = &v29[24 * v104];
                  v31 = *v28;
                  *(v30 + 2) = v28[2];
                  *v30 = v31;
                  v32 = ++v104;
                  if (v102[0])
                  {
                    LODWORD(v89) = 3;
                    v90 = ", ";
                    v91 = 2;
                    v33 = &v89;
                    v34 = v103;
                    if (v32 >= v105)
                    {
                      if (v103 <= &v89 && v103 + 24 * v32 > &v89)
                      {
                        v81 = &v89 - v103;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v32 + 1, 24);
                        v34 = v103;
                        v33 = (v103 + v81);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v32 + 1, 24);
                        v33 = &v89;
                        v34 = v103;
                      }
                    }

                    v35 = &v34[24 * v104];
                    v36 = *v33;
                    *(v35 + 2) = v33[2];
                    *v35 = v36;
                    v37 = ++v104;
                    if (v102[0])
                    {
                      LODWORD(v89) = 3;
                      v90 = "IFOZ";
                      v91 = 4;
                      v38 = &v89;
                      v39 = v103;
                      if (v37 >= v105)
                      {
                        if (v103 <= &v89 && v103 + 24 * v37 > &v89)
                        {
                          v82 = &v89 - v103;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v37 + 1, 24);
                          v39 = v103;
                          v38 = (v103 + v82);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v37 + 1, 24);
                          v38 = &v89;
                          v39 = v103;
                        }
                      }

                      v40 = &v39[24 * v104];
                      v41 = *v38;
                      *(v40 + 2) = v38[2];
                      *v40 = v41;
                      v42 = ++v104;
                      if (v102[0])
                      {
                        LODWORD(v89) = 3;
                        v90 = ", ";
                        v91 = 2;
                        v43 = &v89;
                        v44 = v103;
                        if (v42 >= v105)
                        {
                          if (v103 <= &v89 && v103 + 24 * v42 > &v89)
                          {
                            v83 = &v89 - v103;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v42 + 1, 24);
                            v44 = v103;
                            v43 = (v103 + v83);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v42 + 1, 24);
                            v43 = &v89;
                            v44 = v103;
                          }
                        }

                        v45 = &v44[24 * v104];
                        v46 = *v43;
                        *(v45 + 2) = v43[2];
                        *v45 = v46;
                        v47 = ++v104;
                        if (v102[0])
                        {
                          LODWORD(v89) = 3;
                          v90 = "IOFZ";
                          v91 = 4;
                          v48 = &v89;
                          v49 = v103;
                          if (v47 >= v105)
                          {
                            if (v103 <= &v89 && v103 + 24 * v47 > &v89)
                            {
                              v84 = &v89 - v103;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v47 + 1, 24);
                              v49 = v103;
                              v48 = (v103 + v84);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v103, v106, v47 + 1, 24);
                              v48 = &v89;
                              v49 = v103;
                            }
                          }

                          v50 = &v49[24 * v104];
                          v51 = *v48;
                          *(v50 + 2) = v48[2];
                          *v50 = v51;
                          ++v104;
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

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
      if (v102[0])
      {
        mlir::InFlightDiagnostic::report(v102);
      }

      if (v112 == 1)
      {
        if (v111 != &v112)
        {
          free(v111);
        }

        v52 = __p;
        if (__p)
        {
          v53 = v110;
          v54 = __p;
          if (v110 != __p)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = __p;
          }

          v110 = v52;
          operator delete(v54);
        }

        v55 = v107;
        if (v107)
        {
          v56 = v108;
          v57 = v107;
          if (v108 != v107)
          {
            do
            {
              v59 = *--v56;
              v58 = v59;
              *v56 = 0;
              if (v59)
              {
                operator delete[](v58);
              }
            }

            while (v56 != v55);
            v57 = v107;
          }

          v108 = v55;
          operator delete(v57);
        }

        if (v103 != v106)
        {
          free(v103);
        }
      }

      goto LABEL_51;
    }

    switch(*v87)
    {
      case 0x4F5A4649u:
        v60 = 0;
        break;
      case 0x4F465A49u:
        v60 = 1;
        break;
      case 0x5A4F4649u:
        v60 = 2;
        break;
      case 0x5A464F49u:
        v60 = 3;
        break;
      default:
        goto LABEL_8;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v89 = &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id;
      v90 = Context;
      v102[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25LSTMGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LSTMGateLayoutAttrEJNS2_14LSTMGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v102[1] = &v89;
      v92 = v60;
      v72 = v60 ^ 0xFF51AFD7ED558CCDLL;
      v73 = 0x9DDFEA08EB382D69 * (((8 * v60) | 4) ^ v72);
      v87 = &v92;
      v85[0] = &v92;
      v85[1] = v102;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v72 ^ (v73 >> 47) ^ v73)) >> 32) >> 15) ^ (-348639895 * (v72 ^ (v73 >> 47) ^ v73))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v87, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::LSTMGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::LSTMGateLayoutAttrStorage,mlir::mps::LSTMGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::LSTMGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::LSTMGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v85);
    }
  }

  return 0;
}

void *mlir::mps::LSTMGateLayoutAttr::print(mlir::mps::LSTMGateLayoutAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v6 == 2)
    {
      v7 = 0;
      v8 = "IFOZ";
      goto LABEL_13;
    }

    if (v6 == 3)
    {
      v7 = 0;
      v8 = "IOFZ";
      goto LABEL_13;
    }

LABEL_10:
    v9 = 0;
    v8 = "";
    v7 = 1;
    goto LABEL_14;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (v6 > 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!v6)
  {
    v7 = 0;
    v8 = "IFZO";
    goto LABEL_13;
  }

  if (v6 != 1)
  {
    goto LABEL_10;
  }

  v7 = 0;
  v8 = "IZFO";
LABEL_13:
  v9 = 4;
LABEL_14:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
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

uint64_t mlir::mps::GRUGateLayoutAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::GRUGateLayoutAttr::parse(mlir::AsmParser *a1)
{
  v104 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v78 = 0;
    v79 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v78))
    {
LABEL_55:
      v54 = (*(*a1 + 40))(a1);
      LOWORD(v95) = 259;
      (*(*a1 + 24))(v84, a1, v54, v93);
      if (v84[0])
      {
        mlir::InFlightDiagnostic::report(v84);
      }

      if (v92 == 1)
      {
        if (v91 != &v92)
        {
          free(v91);
        }

        v55 = v89;
        if (v89)
        {
          v56 = v90;
          v57 = v89;
          if (v90 != v89)
          {
            do
            {
              v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
            }

            while (v56 != v55);
            v57 = v89;
          }

          v90 = v55;
          operator delete(v57);
        }

        v58 = v87;
        if (v87)
        {
          v59 = v88;
          v60 = v87;
          if (v88 != v87)
          {
            do
            {
              v62 = *--v59;
              v61 = v62;
              *v59 = 0;
              if (v62)
              {
                operator delete[](v61);
              }
            }

            while (v59 != v58);
            v60 = v87;
          }

          v88 = v58;
          operator delete(v60);
        }

        if (v85 != &v86)
        {
          free(v85);
        }
      }

      return 0;
    }

    if (v79 != 3)
    {
LABEL_16:
      v77 = 257;
      (*(*a1 + 24))(v93, a1, v2, v76);
      if (v93[0])
      {
        LODWORD(v80) = 3;
        v81 = "expected ";
        v82 = 9;
        v6 = &v80;
        v7 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &v80 && v94 + 24 * v95 > &v80)
          {
            v68 = &v80 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v7 = v94;
            v6 = (v94 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v6 = &v80;
            v7 = v94;
          }
        }

        v8 = &v7[24 * v95];
        v9 = *v6;
        *(v8 + 2) = v6[2];
        *v8 = v9;
        v10 = ++v95;
        if (v93[0])
        {
          LODWORD(v80) = 3;
          v81 = "::mlir::mps::GRUGateLayout";
          v82 = 26;
          v11 = &v80;
          v12 = v94;
          if (v10 >= v96)
          {
            if (v94 <= &v80 && v94 + 24 * v10 > &v80)
            {
              v69 = &v80 - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v10 + 1, 24);
              v12 = v94;
              v11 = (v94 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v10 + 1, 24);
              v11 = &v80;
              v12 = v94;
            }
          }

          v13 = &v12[24 * v95];
          v14 = *v11;
          *(v13 + 2) = v11[2];
          *v13 = v14;
          v15 = ++v95;
          if (v93[0])
          {
            LODWORD(v80) = 3;
            v81 = " to be one of: ";
            v82 = 15;
            v16 = &v80;
            v17 = v94;
            if (v15 >= v96)
            {
              if (v94 <= &v80 && v94 + 24 * v15 > &v80)
              {
                v70 = &v80 - v94;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v15 + 1, 24);
                v17 = v94;
                v16 = (v94 + v70);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v15 + 1, 24);
                v16 = &v80;
                v17 = v94;
              }
            }

            v18 = &v17[24 * v95];
            v19 = *v16;
            *(v18 + 2) = v16[2];
            *v18 = v19;
            v20 = ++v95;
            if (v93[0])
            {
              LODWORD(v80) = 3;
              v81 = "ZRO";
              v82 = 3;
              v21 = &v80;
              v22 = v94;
              if (v20 >= v96)
              {
                if (v94 <= &v80 && v94 + 24 * v20 > &v80)
                {
                  v71 = &v80 - v94;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v20 + 1, 24);
                  v22 = v94;
                  v21 = (v94 + v71);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v20 + 1, 24);
                  v21 = &v80;
                  v22 = v94;
                }
              }

              v23 = &v22[24 * v95];
              v24 = *v21;
              *(v23 + 2) = v21[2];
              *v23 = v24;
              v25 = ++v95;
              if (v93[0])
              {
                LODWORD(v80) = 3;
                v81 = ", ";
                v82 = 2;
                v26 = &v80;
                v27 = v94;
                if (v25 >= v96)
                {
                  if (v94 <= &v80 && v94 + 24 * v25 > &v80)
                  {
                    v72 = &v80 - v94;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v25 + 1, 24);
                    v27 = v94;
                    v26 = (v94 + v72);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v25 + 1, 24);
                    v26 = &v80;
                    v27 = v94;
                  }
                }

                v28 = &v27[24 * v95];
                v29 = *v26;
                *(v28 + 2) = v26[2];
                *v28 = v29;
                v30 = ++v95;
                if (v93[0])
                {
                  LODWORD(v80) = 3;
                  v81 = "RZO";
                  v82 = 3;
                  v31 = &v80;
                  v32 = v94;
                  if (v30 >= v96)
                  {
                    if (v94 <= &v80 && v94 + 24 * v30 > &v80)
                    {
                      v73 = &v80 - v94;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v30 + 1, 24);
                      v32 = v94;
                      v31 = (v94 + v73);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v30 + 1, 24);
                      v31 = &v80;
                      v32 = v94;
                    }
                  }

                  v33 = &v32[24 * v95];
                  v34 = *v31;
                  *(v33 + 2) = v31[2];
                  *v33 = v34;
                  v35 = ++v95;
                  if (v93[0])
                  {
                    LODWORD(v80) = 3;
                    v81 = ", ";
                    v82 = 2;
                    v36 = &v80;
                    v37 = v94;
                    if (v35 >= v96)
                    {
                      if (v94 <= &v80 && v94 + 24 * v35 > &v80)
                      {
                        v74 = &v80 - v94;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v35 + 1, 24);
                        v37 = v94;
                        v36 = (v94 + v74);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v35 + 1, 24);
                        v36 = &v80;
                        v37 = v94;
                      }
                    }

                    v38 = &v37[24 * v95];
                    v39 = *v36;
                    *(v38 + 2) = v36[2];
                    *v38 = v39;
                    v40 = ++v95;
                    if (v93[0])
                    {
                      LODWORD(v80) = 3;
                      v81 = "ROZ";
                      v82 = 3;
                      v41 = &v80;
                      v42 = v94;
                      if (v40 >= v96)
                      {
                        if (v94 <= &v80 && v94 + 24 * v40 > &v80)
                        {
                          v75 = &v80 - v94;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v40 + 1, 24);
                          v42 = v94;
                          v41 = (v94 + v75);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v40 + 1, 24);
                          v41 = &v80;
                          v42 = v94;
                        }
                      }

                      v43 = &v42[24 * v95];
                      v44 = *v41;
                      *(v43 + 2) = v41[2];
                      *v43 = v44;
                      ++v95;
                    }
                  }
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
      if (v93[0])
      {
        mlir::InFlightDiagnostic::report(v93);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v101;
          v47 = __p;
          if (v101 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v101 = v45;
          operator delete(v47);
        }

        v48 = v98;
        if (v98)
        {
          v49 = v99;
          v50 = v98;
          if (v99 != v98)
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
            v50 = v98;
          }

          v99 = v48;
          operator delete(v50);
        }

        if (v94 != v97)
        {
          free(v94);
        }
      }

      goto LABEL_55;
    }

    if (*v78 == 21082 && *(v78 + 2) == 79)
    {
      v53 = 0;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_80;
      }
    }

    else if (*v78 == 23122 && *(v78 + 2) == 79)
    {
      v53 = 1;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (*v78 != 20306 || *(v78 + 2) != 90)
      {
        goto LABEL_16;
      }

      v53 = 2;
      if ((*(*a1 + 168))(a1))
      {
LABEL_80:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v80 = &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id;
        v81 = Context;
        v93[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24GRUGateLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17GRUGateLayoutAttrEJNS2_13GRUGateLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
        v93[1] = &v80;
        v83 = v53;
        v66 = v53 ^ 0xFF51AFD7ED558CCDLL;
        v67 = 0x9DDFEA08EB382D69 * (((8 * v53) | 4) ^ v66);
        v78 = &v83;
        v76[0] = &v83;
        v76[1] = v93;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v66 ^ (v67 >> 47) ^ v67)) >> 32) >> 15) ^ (-348639895 * (v66 ^ (v67 >> 47) ^ v67))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::GRUGateLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::GRUGateLayoutAttrStorage,mlir::mps::GRUGateLayout>(llvm::function_ref<void ()(mlir::mps::detail::GRUGateLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::GRUGateLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v76);
      }
    }
  }

  return 0;
}

void *mlir::mps::GRUGateLayoutAttr::print(mlir::mps::GRUGateLayoutAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "ZRO";
LABEL_13:
    v8 = 3;
    goto LABEL_14;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "ROZ";
    goto LABEL_13;
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
    v9 = "RZO";
  }

  else
  {
    v9 = "";
  }

LABEL_14:
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

uint64_t mlir::mps::StencilPaddingModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::StencilPaddingModeAttr::parse(mlir::AsmParser *a1)
{
  v150 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v124 = 0;
    v125 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v124))
    {
LABEL_59:
      v97 = (*(*a1 + 40))(a1);
      LOWORD(v141) = 259;
      (*(*a1 + 24))(v130, a1, v97, v139);
      if (v130[0])
      {
        mlir::InFlightDiagnostic::report(v130);
      }

      if (v138 == 1)
      {
        if (v137 != &v138)
        {
          free(v137);
        }

        v98 = v135;
        if (v135)
        {
          v99 = v136;
          v100 = v135;
          if (v136 != v135)
          {
            do
            {
              v99 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v99 - 1);
            }

            while (v99 != v98);
            v100 = v135;
          }

          v136 = v98;
          operator delete(v100);
        }

        v101 = v133;
        if (v133)
        {
          v102 = v134;
          v103 = v133;
          if (v134 != v133)
          {
            do
            {
              v105 = *--v102;
              v104 = v105;
              *v102 = 0;
              if (v105)
              {
                operator delete[](v104);
              }
            }

            while (v102 != v101);
            v103 = v133;
          }

          v134 = v101;
          operator delete(v103);
        }

        if (v131 != &v132)
        {
          free(v131);
        }
      }

      return 0;
    }

    v3 = mlir::mps::symbolizeStencilPaddingMode(v124, v125);
    if ((v3 & 0x100000000) == 0)
    {
      v123 = 257;
      (*(*a1 + 24))(v139, a1, v2, v122);
      if (v139[0])
      {
        LODWORD(v126) = 3;
        v127 = "expected ";
        v128 = 9;
        v4 = &v126;
        v5 = v140;
        if (v141 >= v142)
        {
          if (v140 <= &v126 && v140 + 24 * v141 > &v126)
          {
            v106 = &v126 - v140;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v141 + 1, 24);
            v5 = v140;
            v4 = (v140 + v106);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v141 + 1, 24);
            v4 = &v126;
            v5 = v140;
          }
        }

        v6 = &v5[24 * v141];
        v7 = *v4;
        *(v6 + 2) = v4[2];
        *v6 = v7;
        v8 = ++v141;
        if (v139[0])
        {
          LODWORD(v126) = 3;
          v127 = "::mlir::mps::StencilPaddingMode";
          v128 = 31;
          v9 = &v126;
          v10 = v140;
          if (v8 >= v142)
          {
            if (v140 <= &v126 && v140 + 24 * v8 > &v126)
            {
              v107 = &v126 - v140;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v8 + 1, 24);
              v10 = v140;
              v9 = (v140 + v107);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v8 + 1, 24);
              v9 = &v126;
              v10 = v140;
            }
          }

          v11 = &v10[24 * v141];
          v12 = *v9;
          *(v11 + 2) = v9[2];
          *v11 = v12;
          v13 = ++v141;
          if (v139[0])
          {
            LODWORD(v126) = 3;
            v127 = " to be one of: ";
            v128 = 15;
            v14 = &v126;
            v15 = v140;
            if (v13 >= v142)
            {
              if (v140 <= &v126 && v140 + 24 * v13 > &v126)
              {
                v108 = &v126 - v140;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v13 + 1, 24);
                v15 = v140;
                v14 = (v140 + v108);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v13 + 1, 24);
                v14 = &v126;
                v15 = v140;
              }
            }

            v16 = &v15[24 * v141];
            v17 = *v14;
            *(v16 + 2) = v14[2];
            *v16 = v17;
            v18 = ++v141;
            if (v139[0])
            {
              LODWORD(v126) = 3;
              v127 = "zero";
              v128 = 4;
              v19 = &v126;
              v20 = v140;
              if (v18 >= v142)
              {
                if (v140 <= &v126 && v140 + 24 * v18 > &v126)
                {
                  v109 = &v126 - v140;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v18 + 1, 24);
                  v20 = v140;
                  v19 = (v140 + v109);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v18 + 1, 24);
                  v19 = &v126;
                  v20 = v140;
                }
              }

              v21 = &v20[24 * v141];
              v22 = *v19;
              *(v21 + 2) = v19[2];
              *v21 = v22;
              v23 = ++v141;
              if (v139[0])
              {
                LODWORD(v126) = 3;
                v127 = ", ";
                v128 = 2;
                v24 = &v126;
                v25 = v140;
                if (v23 >= v142)
                {
                  if (v140 <= &v126 && v140 + 24 * v23 > &v126)
                  {
                    v110 = &v126 - v140;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v23 + 1, 24);
                    v25 = v140;
                    v24 = (v140 + v110);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v23 + 1, 24);
                    v24 = &v126;
                    v25 = v140;
                  }
                }

                v26 = &v25[24 * v141];
                v27 = *v24;
                *(v26 + 2) = v24[2];
                *v26 = v27;
                v28 = ++v141;
                if (v139[0])
                {
                  LODWORD(v126) = 3;
                  v127 = "constant";
                  v128 = 8;
                  v29 = &v126;
                  v30 = v140;
                  if (v28 >= v142)
                  {
                    if (v140 <= &v126 && v140 + 24 * v28 > &v126)
                    {
                      v111 = &v126 - v140;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v28 + 1, 24);
                      v30 = v140;
                      v29 = (v140 + v111);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v28 + 1, 24);
                      v29 = &v126;
                      v30 = v140;
                    }
                  }

                  v31 = &v30[24 * v141];
                  v32 = *v29;
                  *(v31 + 2) = v29[2];
                  *v31 = v32;
                  v33 = ++v141;
                  if (v139[0])
                  {
                    LODWORD(v126) = 3;
                    v127 = ", ";
                    v128 = 2;
                    v34 = &v126;
                    v35 = v140;
                    if (v33 >= v142)
                    {
                      if (v140 <= &v126 && v140 + 24 * v33 > &v126)
                      {
                        v112 = &v126 - v140;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v33 + 1, 24);
                        v35 = v140;
                        v34 = (v140 + v112);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v33 + 1, 24);
                        v34 = &v126;
                        v35 = v140;
                      }
                    }

                    v36 = &v35[24 * v141];
                    v37 = *v34;
                    *(v36 + 2) = v34[2];
                    *v36 = v37;
                    v38 = ++v141;
                    if (v139[0])
                    {
                      LODWORD(v126) = 3;
                      v127 = "clampToEdge";
                      v128 = 11;
                      v39 = &v126;
                      v40 = v140;
                      if (v38 >= v142)
                      {
                        if (v140 <= &v126 && v140 + 24 * v38 > &v126)
                        {
                          v113 = &v126 - v140;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v38 + 1, 24);
                          v40 = v140;
                          v39 = (v140 + v113);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v38 + 1, 24);
                          v39 = &v126;
                          v40 = v140;
                        }
                      }

                      v41 = &v40[24 * v141];
                      v42 = *v39;
                      *(v41 + 2) = v39[2];
                      *v41 = v42;
                      v43 = ++v141;
                      if (v139[0])
                      {
                        LODWORD(v126) = 3;
                        v127 = ", ";
                        v128 = 2;
                        v44 = &v126;
                        v45 = v140;
                        if (v43 >= v142)
                        {
                          if (v140 <= &v126 && v140 + 24 * v43 > &v126)
                          {
                            v114 = &v126 - v140;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v43 + 1, 24);
                            v45 = v140;
                            v44 = (v140 + v114);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v43 + 1, 24);
                            v44 = &v126;
                            v45 = v140;
                          }
                        }

                        v46 = &v45[24 * v141];
                        v47 = *v44;
                        *(v46 + 2) = v44[2];
                        *v46 = v47;
                        v48 = ++v141;
                        if (v139[0])
                        {
                          LODWORD(v126) = 3;
                          v127 = "mirror";
                          v128 = 6;
                          v49 = &v126;
                          v50 = v140;
                          if (v48 >= v142)
                          {
                            if (v140 <= &v126 && v140 + 24 * v48 > &v126)
                            {
                              v115 = &v126 - v140;
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v48 + 1, 24);
                              v50 = v140;
                              v49 = (v140 + v115);
                            }

                            else
                            {
                              llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v48 + 1, 24);
                              v49 = &v126;
                              v50 = v140;
                            }
                          }

                          v51 = &v50[24 * v141];
                          v52 = *v49;
                          *(v51 + 2) = v49[2];
                          *v51 = v52;
                          v53 = ++v141;
                          if (v139[0])
                          {
                            LODWORD(v126) = 3;
                            v127 = ", ";
                            v128 = 2;
                            v54 = &v126;
                            v55 = v140;
                            if (v53 >= v142)
                            {
                              if (v140 <= &v126 && v140 + 24 * v53 > &v126)
                              {
                                v116 = &v126 - v140;
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v53 + 1, 24);
                                v55 = v140;
                                v54 = (v140 + v116);
                              }

                              else
                              {
                                llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v53 + 1, 24);
                                v54 = &v126;
                                v55 = v140;
                              }
                            }

                            v56 = &v55[24 * v141];
                            v57 = *v54;
                            *(v56 + 2) = v54[2];
                            *v56 = v57;
                            v58 = ++v141;
                            if (v139[0])
                            {
                              LODWORD(v126) = 3;
                              v127 = "mirrorWithEdge";
                              v128 = 14;
                              v59 = &v126;
                              v60 = v140;
                              if (v58 >= v142)
                              {
                                if (v140 <= &v126 && v140 + 24 * v58 > &v126)
                                {
                                  v117 = &v126 - v140;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v58 + 1, 24);
                                  v60 = v140;
                                  v59 = (v140 + v117);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v58 + 1, 24);
                                  v59 = &v126;
                                  v60 = v140;
                                }
                              }

                              v61 = &v60[24 * v141];
                              v62 = *v59;
                              *(v61 + 2) = v59[2];
                              *v61 = v62;
                              v63 = ++v141;
                              if (v139[0])
                              {
                                LODWORD(v126) = 3;
                                v127 = ", ";
                                v128 = 2;
                                v64 = &v126;
                                v65 = v140;
                                if (v63 >= v142)
                                {
                                  if (v140 <= &v126 && v140 + 24 * v63 > &v126)
                                  {
                                    v118 = &v126 - v140;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v63 + 1, 24);
                                    v65 = v140;
                                    v64 = (v140 + v118);
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v63 + 1, 24);
                                    v64 = &v126;
                                    v65 = v140;
                                  }
                                }

                                v66 = &v65[24 * v141];
                                v67 = *v64;
                                *(v66 + 2) = v64[2];
                                *v66 = v67;
                                v68 = ++v141;
                                if (v139[0])
                                {
                                  LODWORD(v126) = 3;
                                  v127 = "periodic";
                                  v128 = 8;
                                  v69 = &v126;
                                  v70 = v140;
                                  if (v68 >= v142)
                                  {
                                    if (v140 <= &v126 && v140 + 24 * v68 > &v126)
                                    {
                                      v119 = &v126 - v140;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v68 + 1, 24);
                                      v70 = v140;
                                      v69 = (v140 + v119);
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v68 + 1, 24);
                                      v69 = &v126;
                                      v70 = v140;
                                    }
                                  }

                                  v71 = &v70[24 * v141];
                                  v72 = *v69;
                                  *(v71 + 2) = v69[2];
                                  *v71 = v72;
                                  v73 = ++v141;
                                  if (v139[0])
                                  {
                                    LODWORD(v126) = 3;
                                    v127 = ", ";
                                    v128 = 2;
                                    v74 = &v126;
                                    v75 = v140;
                                    if (v73 >= v142)
                                    {
                                      if (v140 <= &v126 && v140 + 24 * v73 > &v126)
                                      {
                                        v120 = &v126 - v140;
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v73 + 1, 24);
                                        v75 = v140;
                                        v74 = (v140 + v120);
                                      }

                                      else
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v73 + 1, 24);
                                        v74 = &v126;
                                        v75 = v140;
                                      }
                                    }

                                    v76 = &v75[24 * v141];
                                    v77 = *v74;
                                    *(v76 + 2) = v74[2];
                                    *v76 = v77;
                                    v78 = ++v141;
                                    if (v139[0])
                                    {
                                      LODWORD(v126) = 3;
                                      v127 = "antiPeriodic";
                                      v128 = 12;
                                      v79 = &v126;
                                      v80 = v140;
                                      if (v78 >= v142)
                                      {
                                        if (v140 <= &v126 && v140 + 24 * v78 > &v126)
                                        {
                                          v121 = &v126 - v140;
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v78 + 1, 24);
                                          v80 = v140;
                                          v79 = (v140 + v121);
                                        }

                                        else
                                        {
                                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v140, v143, v78 + 1, 24);
                                          v79 = &v126;
                                          v80 = v140;
                                        }
                                      }

                                      v81 = &v80[24 * v141];
                                      v82 = *v79;
                                      *(v81 + 2) = v79[2];
                                      *v81 = v82;
                                      ++v141;
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
                }
              }
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v139);
      if (v139[0])
      {
        mlir::InFlightDiagnostic::report(v139);
      }

      if (v149 == 1)
      {
        if (v148 != &v149)
        {
          free(v148);
        }

        v83 = __p;
        if (__p)
        {
          v84 = v147;
          v85 = __p;
          if (v147 != __p)
          {
            do
            {
              v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
            }

            while (v84 != v83);
            v85 = __p;
          }

          v147 = v83;
          operator delete(v85);
        }

        v86 = v144;
        if (v144)
        {
          v87 = v145;
          v88 = v144;
          if (v145 != v144)
          {
            do
            {
              v90 = *--v87;
              v89 = v90;
              *v87 = 0;
              if (v90)
              {
                operator delete[](v89);
              }
            }

            while (v87 != v86);
            v88 = v144;
          }

          v145 = v86;
          operator delete(v88);
        }

        if (v140 != v143)
        {
          free(v140);
        }
      }

      goto LABEL_59;
    }

    v91 = v3;
    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v126 = &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id;
      v127 = Context;
      v139[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail29StencilPaddingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_22StencilPaddingModeAttrEJNS2_18StencilPaddingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v139[1] = &v126;
      v129 = v91;
      v94 = 0x9DDFEA08EB382D69 * (((8 * v91) | 4) ^ v91 ^ 0xFF51AFD7ED558CCDLL);
      v95 = 0x9DDFEA08EB382D69 * (v91 ^ 0xFF51AFD7ED558CCDLL ^ (v94 >> 47) ^ v94);
      v124 = &v129;
      v122[0] = &v129;
      v122[1] = v139;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id, -348639895 * ((v95 >> 47) ^ v95), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v124, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::StencilPaddingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::StencilPaddingModeAttrStorage,mlir::mps::StencilPaddingMode>(llvm::function_ref<void ()(mlir::mps::detail::StencilPaddingModeAttrStorage *)>,mlir::TypeID,mlir::mps::StencilPaddingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v122);
    }
  }

  return 0;
}

void *mlir::mps::StencilPaddingModeAttr::print(mlir::mps::StencilPaddingModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 > 2)
    {
      goto LABEL_3;
    }

LABEL_7:
    switch(v6)
    {
      case 0:
        v7 = 0;
        v8 = "constant";
        v6 = 8;
        goto LABEL_19;
      case 1:
        v7 = 0;
        v8 = "mirror";
        v6 = 6;
        goto LABEL_19;
      case 2:
        v7 = 0;
        v8 = "mirrorWithEdge";
        v6 = 14;
        goto LABEL_19;
    }

LABEL_15:
    v6 = 0;
    v8 = "";
    v7 = 1;
    goto LABEL_19;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (v6 <= 2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v7 = 0;
      v8 = "periodic";
      v6 = 8;
      goto LABEL_19;
    }

    if (v6 == 6)
    {
      v7 = 0;
      v8 = "antiPeriodic";
      v6 = 12;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v7 = 0;
  if (v6 == 3)
  {
    v8 = "clampToEdge";
    v6 = 11;
  }

  else
  {
    v8 = "zero";
  }

LABEL_19:
  v9 = (*(*a2 + 16))(a2);
  if (v6 <= *(v9 + 24) - *(v9 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v10 = v9;
      memcpy(*(v9 + 32), v8, v6);
      *(v10 + 32) += v6;
    }
  }

  else
  {
    llvm::raw_ostream::write(v9, v8, v6);
  }

  result = (*(*a2 + 16))(a2);
  v12 = result[4];
  if (result[3] == v12)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v12 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::CropResizeAlignmentModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail34CropResizeAlignmentModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27CropResizeAlignmentModeAttrEJNS2_23CropResizeAlignmentModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::CropResizeAlignmentModeAttr::parse(mlir::AsmParser *a1)
{
  v104 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v78 = 0;
  v79 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v78))
  {
LABEL_61:
    v54 = (*(*a1 + 40))(a1);
    LOWORD(v95) = 259;
    (*(*a1 + 24))(v84, a1, v54, v93);
    if (v84[0])
    {
      mlir::InFlightDiagnostic::report(v84);
    }

    if (v92 == 1)
    {
      if (v91 != &v92)
      {
        free(v91);
      }

      v55 = v89;
      if (v89)
      {
        v56 = v90;
        v57 = v89;
        if (v90 != v89)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = v89;
        }

        v90 = v55;
        operator delete(v57);
      }

      v58 = v87;
      if (v87)
      {
        v59 = v88;
        v60 = v87;
        if (v88 != v87)
        {
          do
          {
            v62 = *--v59;
            v61 = v62;
            *v59 = 0;
            if (v62)
            {
              operator delete[](v61);
            }
          }

          while (v59 != v58);
          v60 = v87;
        }

        v88 = v58;
        operator delete(v60);
      }

      if (v85 != &v86)
      {
        free(v85);
      }
    }

    return 0;
  }

  if (v79 == 12)
  {
    if (*v78 != 0x726F436E67696C61 || v78[2] != 1936876910)
    {
      goto LABEL_24;
    }

    v4 = 1;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_84;
  }

  if (v79 == 13)
  {
    if (*v78 != 0x6F4374657366666FLL || *(v78 + 5) != 0x7372656E726F4374)
    {
      goto LABEL_24;
    }

    v4 = 2;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

LABEL_84:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v80 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id;
    v81 = Context;
    v93[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail34CropResizeAlignmentModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_27CropResizeAlignmentModeAttrEJNS2_23CropResizeAlignmentModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v93[1] = &v80;
    v83 = v4;
    v66 = v4 ^ 0xFF51AFD7ED558CCDLL;
    v67 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v66);
    v78 = &v83;
    v76[0] = &v83;
    v76[1] = v93;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v66 ^ (v67 >> 47) ^ v67)) >> 32) >> 15) ^ (-348639895 * (v66 ^ (v67 >> 47) ^ v67))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v78, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeAlignmentModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeAlignmentModeAttrStorage,mlir::mps::CropResizeAlignmentMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeAlignmentModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeAlignmentMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v76);
  }

  if (v79 != 16 || (*v78 == 0x41746C7561666564 ? (v3 = *(v78 + 1) == 0x746E656D6E67696CLL) : (v3 = 0), !v3))
  {
LABEL_24:
    v77 = 257;
    (*(*a1 + 24))(v93, a1, v2, v76);
    if (v93[0])
    {
      LODWORD(v80) = 3;
      v81 = "expected ";
      v82 = 9;
      v7 = &v80;
      v8 = v94;
      if (v95 >= v96)
      {
        if (v94 <= &v80 && v94 + 24 * v95 > &v80)
        {
          v68 = &v80 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v8 = v94;
          v7 = (v94 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v7 = &v80;
          v8 = v94;
        }
      }

      v9 = &v8[24 * v95];
      v10 = *v7;
      *(v9 + 2) = v7[2];
      *v9 = v10;
      v11 = ++v95;
      if (v93[0])
      {
        LODWORD(v80) = 3;
        v81 = "::mlir::mps::CropResizeAlignmentMode";
        v82 = 36;
        v12 = &v80;
        v13 = v94;
        if (v11 >= v96)
        {
          if (v94 <= &v80 && v94 + 24 * v11 > &v80)
          {
            v69 = &v80 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v11 + 1, 24);
            v13 = v94;
            v12 = (v94 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v11 + 1, 24);
            v12 = &v80;
            v13 = v94;
          }
        }

        v14 = &v13[24 * v95];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        v16 = ++v95;
        if (v93[0])
        {
          LODWORD(v80) = 3;
          v81 = " to be one of: ";
          v82 = 15;
          v17 = &v80;
          v18 = v94;
          if (v16 >= v96)
          {
            if (v94 <= &v80 && v94 + 24 * v16 > &v80)
            {
              v70 = &v80 - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v16 + 1, 24);
              v18 = v94;
              v17 = (v94 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v16 + 1, 24);
              v17 = &v80;
              v18 = v94;
            }
          }

          v19 = &v18[24 * v95];
          v20 = *v17;
          *(v19 + 2) = v17[2];
          *v19 = v20;
          v21 = ++v95;
          if (v93[0])
          {
            LODWORD(v80) = 3;
            v81 = "defaultAlignment";
            v82 = 16;
            v22 = &v80;
            v23 = v94;
            if (v21 >= v96)
            {
              if (v94 <= &v80 && v94 + 24 * v21 > &v80)
              {
                v71 = &v80 - v94;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v21 + 1, 24);
                v23 = v94;
                v22 = (v94 + v71);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v21 + 1, 24);
                v22 = &v80;
                v23 = v94;
              }
            }

            v24 = &v23[24 * v95];
            v25 = *v22;
            *(v24 + 2) = v22[2];
            *v24 = v25;
            v26 = ++v95;
            if (v93[0])
            {
              LODWORD(v80) = 3;
              v81 = ", ";
              v82 = 2;
              v27 = &v80;
              v28 = v94;
              if (v26 >= v96)
              {
                if (v94 <= &v80 && v94 + 24 * v26 > &v80)
                {
                  v72 = &v80 - v94;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v26 + 1, 24);
                  v28 = v94;
                  v27 = (v94 + v72);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v26 + 1, 24);
                  v27 = &v80;
                  v28 = v94;
                }
              }

              v29 = &v28[24 * v95];
              v30 = *v27;
              *(v29 + 2) = v27[2];
              *v29 = v30;
              v31 = ++v95;
              if (v93[0])
              {
                LODWORD(v80) = 3;
                v81 = "alignCorners";
                v82 = 12;
                v32 = &v80;
                v33 = v94;
                if (v31 >= v96)
                {
                  if (v94 <= &v80 && v94 + 24 * v31 > &v80)
                  {
                    v73 = &v80 - v94;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v31 + 1, 24);
                    v33 = v94;
                    v32 = (v94 + v73);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v31 + 1, 24);
                    v32 = &v80;
                    v33 = v94;
                  }
                }

                v34 = &v33[24 * v95];
                v35 = *v32;
                *(v34 + 2) = v32[2];
                *v34 = v35;
                v36 = ++v95;
                if (v93[0])
                {
                  LODWORD(v80) = 3;
                  v81 = ", ";
                  v82 = 2;
                  v37 = &v80;
                  v38 = v94;
                  if (v36 >= v96)
                  {
                    if (v94 <= &v80 && v94 + 24 * v36 > &v80)
                    {
                      v74 = &v80 - v94;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v36 + 1, 24);
                      v38 = v94;
                      v37 = (v94 + v74);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v36 + 1, 24);
                      v37 = &v80;
                      v38 = v94;
                    }
                  }

                  v39 = &v38[24 * v95];
                  v40 = *v37;
                  *(v39 + 2) = v37[2];
                  *v39 = v40;
                  v41 = ++v95;
                  if (v93[0])
                  {
                    LODWORD(v80) = 3;
                    v81 = "offsetCorners";
                    v82 = 13;
                    v42 = &v80;
                    v43 = v94;
                    if (v41 >= v96)
                    {
                      if (v94 <= &v80 && v94 + 24 * v41 > &v80)
                      {
                        v75 = &v80 - v94;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v41 + 1, 24);
                        v43 = v94;
                        v42 = (v94 + v75);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v41 + 1, 24);
                        v42 = &v80;
                        v43 = v94;
                      }
                    }

                    v44 = &v43[24 * v95];
                    v45 = *v42;
                    *(v44 + 2) = v42[2];
                    *v44 = v45;
                    ++v95;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
    if (v93[0])
    {
      mlir::InFlightDiagnostic::report(v93);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v101;
        v48 = __p;
        if (v101 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v101 = v46;
        operator delete(v48);
      }

      v49 = v98;
      if (v98)
      {
        v50 = v99;
        v51 = v98;
        if (v99 != v98)
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
          v51 = v98;
        }

        v99 = v49;
        operator delete(v51);
      }

      if (v94 != v97)
      {
        free(v94);
      }
    }

    goto LABEL_61;
  }

  v4 = 0;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_84;
  }

  return 0;
}

void *mlir::mps::CropResizeAlignmentModeAttr::print(mlir::mps::CropResizeAlignmentModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "defaultAlignment";
    v8 = 16;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "offsetCorners";
    v8 = 13;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 12;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "alignCorners";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
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

uint64_t mlir::mps::CropResizeCoordinateModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::CropResizeCoordinateModeAttr::parse(mlir::AsmParser *a1)
{
  v121 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v95 = 0;
  v96 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v95))
  {
LABEL_81:
    v69 = (*(*a1 + 40))(a1);
    LOWORD(v112) = 259;
    (*(*a1 + 24))(v101, a1, v69, v110);
    if (v101[0])
    {
      mlir::InFlightDiagnostic::report(v101);
    }

    if (v109 == 1)
    {
      if (v108 != &v109)
      {
        free(v108);
      }

      v70 = v106;
      if (v106)
      {
        v71 = v107;
        v72 = v106;
        if (v107 != v106)
        {
          do
          {
            v71 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v71 - 1);
          }

          while (v71 != v70);
          v72 = v106;
        }

        v107 = v70;
        operator delete(v72);
      }

      v73 = v104;
      if (v104)
      {
        v74 = v105;
        v75 = v104;
        if (v105 != v104)
        {
          do
          {
            v77 = *--v74;
            v76 = v77;
            *v74 = 0;
            if (v77)
            {
              operator delete[](v76);
            }
          }

          while (v74 != v73);
          v75 = v104;
        }

        v105 = v73;
        operator delete(v75);
      }

      if (v102 != &v103)
      {
        free(v102);
      }
    }

    return 0;
  }

  if (v96 == 17)
  {
    if (*v95 == 0x577372656E726F63 && *(v95 + 1) == 0x7372694668746469 && *(v95 + 16) == 116)
    {
      v7 = 1;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*v95 != 0x57737265746E6563 || *(v95 + 1) != 0x7372694668746469 || *(v95 + 16) != 116)
      {
        goto LABEL_36;
      }

      v7 = 3;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_104:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v97 = &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id;
    v98 = Context;
    v110[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail35CropResizeCoordinateModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_28CropResizeCoordinateModeAttrEJNS2_24CropResizeCoordinateModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v110[1] = &v97;
    v100 = v7;
    v81 = v7 ^ 0xFF51AFD7ED558CCDLL;
    v82 = 0x9DDFEA08EB382D69 * (((8 * v7) | 4) ^ v81);
    v95 = &v100;
    v93[0] = &v100;
    v93[1] = v110;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82)) >> 32) >> 15) ^ (-348639895 * (v81 ^ (v82 >> 47) ^ v82))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v95, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CropResizeCoordinateModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CropResizeCoordinateModeAttrStorage,mlir::mps::CropResizeCoordinateMode>(llvm::function_ref<void ()(mlir::mps::detail::CropResizeCoordinateModeAttrStorage *)>,mlir::TypeID,mlir::mps::CropResizeCoordinateMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v93);
  }

  if (v96 != 18)
  {
LABEL_36:
    v94 = 257;
    (*(*a1 + 24))(v110, a1, v2, v93);
    if (v110[0])
    {
      LODWORD(v97) = 3;
      v98 = "expected ";
      v99 = 9;
      v12 = &v97;
      v13 = v111;
      if (v112 >= v113)
      {
        if (v111 <= &v97 && v111 + 24 * v112 > &v97)
        {
          v83 = &v97 - v111;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
          v13 = v111;
          v12 = (v111 + v83);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
          v12 = &v97;
          v13 = v111;
        }
      }

      v14 = &v13[24 * v112];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v16 = ++v112;
      if (v110[0])
      {
        LODWORD(v97) = 3;
        v98 = "::mlir::mps::CropResizeCoordinateMode";
        v99 = 37;
        v17 = &v97;
        v18 = v111;
        if (v16 >= v113)
        {
          if (v111 <= &v97 && v111 + 24 * v16 > &v97)
          {
            v84 = &v97 - v111;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v16 + 1, 24);
            v18 = v111;
            v17 = (v111 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v16 + 1, 24);
            v17 = &v97;
            v18 = v111;
          }
        }

        v19 = &v18[24 * v112];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        v21 = ++v112;
        if (v110[0])
        {
          LODWORD(v97) = 3;
          v98 = " to be one of: ";
          v99 = 15;
          v22 = &v97;
          v23 = v111;
          if (v21 >= v113)
          {
            if (v111 <= &v97 && v111 + 24 * v21 > &v97)
            {
              v85 = &v97 - v111;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v21 + 1, 24);
              v23 = v111;
              v22 = (v111 + v85);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v21 + 1, 24);
              v22 = &v97;
              v23 = v111;
            }
          }

          v24 = &v23[24 * v112];
          v25 = *v22;
          *(v24 + 2) = v22[2];
          *v24 = v25;
          v26 = ++v112;
          if (v110[0])
          {
            LODWORD(v97) = 3;
            v98 = "cornersHeightFirst";
            v99 = 18;
            v27 = &v97;
            v28 = v111;
            if (v26 >= v113)
            {
              if (v111 <= &v97 && v111 + 24 * v26 > &v97)
              {
                v86 = &v97 - v111;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v26 + 1, 24);
                v28 = v111;
                v27 = (v111 + v86);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v26 + 1, 24);
                v27 = &v97;
                v28 = v111;
              }
            }

            v29 = &v28[24 * v112];
            v30 = *v27;
            *(v29 + 2) = v27[2];
            *v29 = v30;
            v31 = ++v112;
            if (v110[0])
            {
              LODWORD(v97) = 3;
              v98 = ", ";
              v99 = 2;
              v32 = &v97;
              v33 = v111;
              if (v31 >= v113)
              {
                if (v111 <= &v97 && v111 + 24 * v31 > &v97)
                {
                  v87 = &v97 - v111;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v31 + 1, 24);
                  v33 = v111;
                  v32 = (v111 + v87);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v31 + 1, 24);
                  v32 = &v97;
                  v33 = v111;
                }
              }

              v34 = &v33[24 * v112];
              v35 = *v32;
              *(v34 + 2) = v32[2];
              *v34 = v35;
              v36 = ++v112;
              if (v110[0])
              {
                LODWORD(v97) = 3;
                v98 = "cornersWidthFirst";
                v99 = 17;
                v37 = &v97;
                v38 = v111;
                if (v36 >= v113)
                {
                  if (v111 <= &v97 && v111 + 24 * v36 > &v97)
                  {
                    v88 = &v97 - v111;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v36 + 1, 24);
                    v38 = v111;
                    v37 = (v111 + v88);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v36 + 1, 24);
                    v37 = &v97;
                    v38 = v111;
                  }
                }

                v39 = &v38[24 * v112];
                v40 = *v37;
                *(v39 + 2) = v37[2];
                *v39 = v40;
                v41 = ++v112;
                if (v110[0])
                {
                  LODWORD(v97) = 3;
                  v98 = ", ";
                  v99 = 2;
                  v42 = &v97;
                  v43 = v111;
                  if (v41 >= v113)
                  {
                    if (v111 <= &v97 && v111 + 24 * v41 > &v97)
                    {
                      v89 = &v97 - v111;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v41 + 1, 24);
                      v43 = v111;
                      v42 = (v111 + v89);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v41 + 1, 24);
                      v42 = &v97;
                      v43 = v111;
                    }
                  }

                  v44 = &v43[24 * v112];
                  v45 = *v42;
                  *(v44 + 2) = v42[2];
                  *v44 = v45;
                  v46 = ++v112;
                  if (v110[0])
                  {
                    LODWORD(v97) = 3;
                    v98 = "centersHeightFirst";
                    v99 = 18;
                    v47 = &v97;
                    v48 = v111;
                    if (v46 >= v113)
                    {
                      if (v111 <= &v97 && v111 + 24 * v46 > &v97)
                      {
                        v90 = &v97 - v111;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v46 + 1, 24);
                        v48 = v111;
                        v47 = (v111 + v90);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v46 + 1, 24);
                        v47 = &v97;
                        v48 = v111;
                      }
                    }

                    v49 = &v48[24 * v112];
                    v50 = *v47;
                    *(v49 + 2) = v47[2];
                    *v49 = v50;
                    v51 = ++v112;
                    if (v110[0])
                    {
                      LODWORD(v97) = 3;
                      v98 = ", ";
                      v99 = 2;
                      v52 = &v97;
                      v53 = v111;
                      if (v51 >= v113)
                      {
                        if (v111 <= &v97 && v111 + 24 * v51 > &v97)
                        {
                          v91 = &v97 - v111;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v51 + 1, 24);
                          v53 = v111;
                          v52 = (v111 + v91);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v51 + 1, 24);
                          v52 = &v97;
                          v53 = v111;
                        }
                      }

                      v54 = &v53[24 * v112];
                      v55 = *v52;
                      *(v54 + 2) = v52[2];
                      *v54 = v55;
                      v56 = ++v112;
                      if (v110[0])
                      {
                        LODWORD(v97) = 3;
                        v98 = "centersWidthFirst";
                        v99 = 17;
                        v57 = &v97;
                        v58 = v111;
                        if (v56 >= v113)
                        {
                          if (v111 <= &v97 && v111 + 24 * v56 > &v97)
                          {
                            v92 = &v97 - v111;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v56 + 1, 24);
                            v58 = v111;
                            v57 = (v111 + v92);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v56 + 1, 24);
                            v57 = &v97;
                            v58 = v111;
                          }
                        }

                        v59 = &v58[24 * v112];
                        v60 = *v57;
                        *(v59 + 2) = v57[2];
                        *v59 = v60;
                        ++v112;
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

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
    if (v110[0])
    {
      mlir::InFlightDiagnostic::report(v110);
    }

    if (v120 == 1)
    {
      if (v119 != &v120)
      {
        free(v119);
      }

      v61 = __p;
      if (__p)
      {
        v62 = v118;
        v63 = __p;
        if (v118 != __p)
        {
          do
          {
            v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
          }

          while (v62 != v61);
          v63 = __p;
        }

        v118 = v61;
        operator delete(v63);
      }

      v64 = v115;
      if (v115)
      {
        v65 = v116;
        v66 = v115;
        if (v116 != v115)
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
          v66 = v115;
        }

        v116 = v64;
        operator delete(v66);
      }

      if (v111 != v114)
      {
        free(v111);
      }
    }

    goto LABEL_81;
  }

  if (*v95 == 0x487372656E726F63 && *(v95 + 1) == 0x7269467468676965 && *(v95 + 8) == 29811)
  {
    v7 = 0;
    if (((*(*a1 + 168))(a1) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_104;
  }

  if (*v95 != 0x48737265746E6563 || *(v95 + 1) != 0x7269467468676965 || *(v95 + 8) != 29811)
  {
    goto LABEL_36;
  }

  v7 = 2;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_104;
  }

  return 0;
}

void *mlir::mps::CropResizeCoordinateModeAttr::print(mlir::mps::CropResizeCoordinateModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6 <= 1)
    {
LABEL_3:
      if (v6)
      {
        if (v6 == 1)
        {
          v7 = 0;
          v8 = "cornersWidthFirst";
          v9 = 17;
          goto LABEL_14;
        }

LABEL_10:
        v9 = 0;
        v8 = "";
        v7 = 1;
        goto LABEL_14;
      }

      v7 = 0;
      v8 = "cornersHeightFirst";
      goto LABEL_13;
    }
  }

  if (v6 != 2)
  {
    if (v6 == 3)
    {
      v7 = 0;
      v8 = "centersWidthFirst";
      v9 = 17;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v7 = 0;
  v8 = "centersHeightFirst";
LABEL_13:
  v9 = 18;
LABEL_14:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
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

uint64_t mlir::mps::PruningMetricAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::PruningMetricAttr::parse(mlir::AsmParser *a1)
{
  v76 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v50 = 0;
    v51 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v50))
    {
LABEL_42:
      v35 = (*(*a1 + 40))(a1);
      LOWORD(v67) = 259;
      (*(*a1 + 24))(v56, a1, v35, v65);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v64 == 1)
      {
        if (v63 != &v64)
        {
          free(v63);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v62;
          v38 = __p;
          if (v62 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v62 = v36;
          operator delete(v38);
        }

        v39 = v59;
        if (v59)
        {
          v40 = v60;
          v41 = v59;
          if (v60 != v59)
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
            v41 = v59;
          }

          v60 = v39;
          operator delete(v41);
        }

        if (v57 != &v58)
        {
          free(v57);
        }
      }

      return 0;
    }

    if (v51 != 17 || (*v50 == 0x647574696E67616DLL ? (v3 = *(v50 + 1) == 0x6E696E7572705F65) : (v3 = 0), v3 ? (v4 = *(v50 + 16) == 103) : (v4 = 0), !v4))
    {
      v49 = 257;
      (*(*a1 + 24))(v65, a1, v2, v48);
      if (v65[0])
      {
        LODWORD(v52) = 3;
        v53 = "expected ";
        v54 = 9;
        v5 = &v52;
        v6 = v66;
        if (v67 >= v68)
        {
          if (v66 <= &v52 && &v66[3 * v67] > &v52)
          {
            v44 = &v52 - v66;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
            v6 = v66;
            v5 = (v66 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v67 + 1, 24);
            v5 = &v52;
            v6 = v66;
          }
        }

        v7 = &v6[3 * v67];
        v8 = *v5;
        v7[2] = v5[2];
        *v7 = v8;
        v9 = ++v67;
        if (v65[0])
        {
          LODWORD(v52) = 3;
          v53 = "::mlir::mps::PruningMetric";
          v54 = 26;
          v10 = &v52;
          v11 = v66;
          if (v9 >= v68)
          {
            if (v66 <= &v52 && &v66[3 * v9] > &v52)
            {
              v45 = &v52 - v66;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v9 + 1, 24);
              v11 = v66;
              v10 = (v66 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v9 + 1, 24);
              v10 = &v52;
              v11 = v66;
            }
          }

          v12 = &v11[3 * v67];
          v13 = *v10;
          v12[2] = v10[2];
          *v12 = v13;
          v14 = ++v67;
          if (v65[0])
          {
            LODWORD(v52) = 3;
            v53 = " to be one of: ";
            v54 = 15;
            v15 = &v52;
            v16 = v66;
            if (v14 >= v68)
            {
              if (v66 <= &v52 && &v66[3 * v14] > &v52)
              {
                v46 = &v52 - v66;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v14 + 1, 24);
                v16 = v66;
                v15 = (v66 + v46);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v14 + 1, 24);
                v15 = &v52;
                v16 = v66;
              }
            }

            v17 = &v16[3 * v67];
            v18 = *v15;
            v17[2] = v15[2];
            *v17 = v18;
            v19 = ++v67;
            if (v65[0])
            {
              LODWORD(v52) = 3;
              v53 = "magnitude_pruning";
              v54 = 17;
              v20 = &v52;
              v21 = v66;
              if (v19 >= v68)
              {
                if (v66 <= &v52 && &v66[3 * v19] > &v52)
                {
                  v47 = &v52 - v66;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v19 + 1, 24);
                  v21 = v66;
                  v20 = (v66 + v47);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, v69, v19 + 1, 24);
                  v20 = &v52;
                  v21 = v66;
                }
              }

              v22 = &v21[3 * v67];
              v23 = *v20;
              v22[2] = v20[2];
              *v22 = v23;
              ++v67;
            }
          }
        }
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v65);
      if (v65[0])
      {
        mlir::InFlightDiagnostic::report(v65);
      }

      if (v75 == 1)
      {
        if (v74 != &v75)
        {
          free(v74);
        }

        v24 = v72;
        if (v72)
        {
          v25 = v73;
          v26 = v72;
          if (v73 != v72)
          {
            do
            {
              v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
            }

            while (v25 != v24);
            v26 = v72;
          }

          v73 = v24;
          operator delete(v26);
        }

        v27 = v70;
        if (v70)
        {
          v28 = v71;
          v29 = v70;
          if (v71 != v70)
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
            v29 = v70;
          }

          v71 = v27;
          operator delete(v29);
        }

        if (v66 != v69)
        {
          free(v66);
        }
      }

      goto LABEL_42;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v52 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
      v53 = Context;
      v65[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v65[1] = &v52;
      v55 = 0;
      v50 = &v55;
      v48[0] = &v55;
      v48[1] = v65;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v50, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v48);
    }
  }

  return 0;
}

void *mlir::mps::PruningMetricAttr::print(mlir::mps::PruningMetricAttr *this, mlir::AsmPrinter *a2)
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
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 17;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if (v7 <= v8[3] - v9)
  {
    if (!v6)
    {
      *(v9 + 16) = 103;
      *v9 = *"magnitude_pruning";
      v8[4] += 17;
    }
  }

  else
  {
    if (v6)
    {
      v10 = "";
    }

    else
    {
      v10 = "magnitude_pruning";
    }

    llvm::raw_ostream::write(v8, v10, v7);
  }

  result = (*(*a2 + 16))(a2);
  v12 = result[4];
  if (result[3] == v12)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v12 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::PruningStructureAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::PruningStructureAttr::parse(mlir::AsmParser *a1)
{
  v92 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v66 = 0;
    v67 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v66))
    {
LABEL_52:
      v44 = (*(*a1 + 40))(a1);
      LOWORD(v83) = 259;
      (*(*a1 + 24))(v72, a1, v44, v81);
      if (v72[0])
      {
        mlir::InFlightDiagnostic::report(v72);
      }

      if (v80 == 1)
      {
        if (v79 != &v80)
        {
          free(v79);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v78;
          v47 = __p;
          if (v78 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v78 = v45;
          operator delete(v47);
        }

        v48 = v75;
        if (v75)
        {
          v49 = v76;
          v50 = v75;
          if (v76 != v75)
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
            v50 = v75;
          }

          v76 = v48;
          operator delete(v50);
        }

        if (v73 != &v74)
        {
          free(v73);
        }
      }

      return 0;
    }

    if (v67 == 20)
    {
      if (*v66 != 0x64315F6B636F6C62 || *(v66 + 1) != 0x7572705F345F325FLL || v66[4] != 1735289198)
      {
        goto LABEL_19;
      }

      v4 = 1;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v67 != 14 || (*v66 == 0x705F6D6F646E6172 ? (v3 = *(v66 + 6) == 0x676E696E7572705FLL) : (v3 = 0), !v3))
      {
LABEL_19:
        v65 = 257;
        (*(*a1 + 24))(v81, a1, v2, v64);
        if (v81[0])
        {
          LODWORD(v68) = 3;
          v69 = "expected ";
          v70 = 9;
          v7 = &v68;
          v8 = v82;
          if (v83 >= v84)
          {
            if (v82 <= &v68 && &v82[3 * v83] > &v68)
            {
              v58 = &v68 - v82;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v8 = v82;
              v7 = (v82 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v83 + 1, 24);
              v7 = &v68;
              v8 = v82;
            }
          }

          v9 = &v8[3 * v83];
          v10 = *v7;
          v9[2] = v7[2];
          *v9 = v10;
          v11 = ++v83;
          if (v81[0])
          {
            LODWORD(v68) = 3;
            v69 = "::mlir::mps::PruningStructure";
            v70 = 29;
            v12 = &v68;
            v13 = v82;
            if (v11 >= v84)
            {
              if (v82 <= &v68 && &v82[3 * v11] > &v68)
              {
                v59 = &v68 - v82;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v11 + 1, 24);
                v13 = v82;
                v12 = (v82 + v59);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v11 + 1, 24);
                v12 = &v68;
                v13 = v82;
              }
            }

            v14 = &v13[3 * v83];
            v15 = *v12;
            v14[2] = v12[2];
            *v14 = v15;
            v16 = ++v83;
            if (v81[0])
            {
              LODWORD(v68) = 3;
              v69 = " to be one of: ";
              v70 = 15;
              v17 = &v68;
              v18 = v82;
              if (v16 >= v84)
              {
                if (v82 <= &v68 && &v82[3 * v16] > &v68)
                {
                  v60 = &v68 - v82;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v16 + 1, 24);
                  v18 = v82;
                  v17 = (v82 + v60);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v16 + 1, 24);
                  v17 = &v68;
                  v18 = v82;
                }
              }

              v19 = &v18[3 * v83];
              v20 = *v17;
              v19[2] = v17[2];
              *v19 = v20;
              v21 = ++v83;
              if (v81[0])
              {
                LODWORD(v68) = 3;
                v69 = "random_pruning";
                v70 = 14;
                v22 = &v68;
                v23 = v82;
                if (v21 >= v84)
                {
                  if (v82 <= &v68 && &v82[3 * v21] > &v68)
                  {
                    v61 = &v68 - v82;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v21 + 1, 24);
                    v23 = v82;
                    v22 = (v82 + v61);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v21 + 1, 24);
                    v22 = &v68;
                    v23 = v82;
                  }
                }

                v24 = &v23[3 * v83];
                v25 = *v22;
                v24[2] = v22[2];
                *v24 = v25;
                v26 = ++v83;
                if (v81[0])
                {
                  LODWORD(v68) = 3;
                  v69 = ", ";
                  v70 = 2;
                  v27 = &v68;
                  v28 = v82;
                  if (v26 >= v84)
                  {
                    if (v82 <= &v68 && &v82[3 * v26] > &v68)
                    {
                      v62 = &v68 - v82;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v26 + 1, 24);
                      v28 = v82;
                      v27 = (v82 + v62);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v26 + 1, 24);
                      v27 = &v68;
                      v28 = v82;
                    }
                  }

                  v29 = &v28[3 * v83];
                  v30 = *v27;
                  v29[2] = v27[2];
                  *v29 = v30;
                  v31 = ++v83;
                  if (v81[0])
                  {
                    LODWORD(v68) = 3;
                    v69 = "block_1d_2_4_pruning";
                    v70 = 20;
                    v32 = &v68;
                    v33 = v82;
                    if (v31 >= v84)
                    {
                      if (v82 <= &v68 && &v82[3 * v31] > &v68)
                      {
                        v63 = &v68 - v82;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v31 + 1, 24);
                        v33 = v82;
                        v32 = (v82 + v63);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v85, v31 + 1, 24);
                        v32 = &v68;
                        v33 = v82;
                      }
                    }

                    v34 = &v33[3 * v83];
                    v35 = *v32;
                    v34[2] = v32[2];
                    *v34 = v35;
                    ++v83;
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v81);
        if (v81[0])
        {
          mlir::InFlightDiagnostic::report(v81);
        }

        if (v91 == 1)
        {
          if (v90 != &v91)
          {
            free(v90);
          }

          v36 = v88;
          if (v88)
          {
            v37 = v89;
            v38 = v88;
            if (v89 != v88)
            {
              do
              {
                v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
              }

              while (v37 != v36);
              v38 = v88;
            }

            v89 = v36;
            operator delete(v38);
          }

          v39 = v86;
          if (v86)
          {
            v40 = v87;
            v41 = v86;
            if (v87 != v86)
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
              v41 = v86;
            }

            v87 = v39;
            operator delete(v41);
          }

          if (v82 != v85)
          {
            free(v82);
          }
        }

        goto LABEL_52;
      }

      v4 = 0;
      if ((*(*a1 + 168))(a1))
      {
LABEL_75:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v68 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
        v69 = Context;
        v81[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
        v81[1] = &v68;
        v71 = v4;
        v56 = v4 ^ 0xFF51AFD7ED558CCDLL;
        v57 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v56);
        v66 = &v71;
        v64[0] = &v71;
        v64[1] = v81;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v56 ^ (v57 >> 47) ^ v57)) >> 32) >> 15) ^ (-348639895 * (v56 ^ (v57 >> 47) ^ v57))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v66, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v64);
      }
    }
  }

  return 0;
}

void *mlir::mps::PruningStructureAttr::print(mlir::mps::PruningStructureAttr *this, mlir::AsmPrinter *a2)
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
  v7 = "";
  v8 = 20;
  if (v6 == 1)
  {
    v7 = "block_1d_2_4_pruning";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6 != 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 14;
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = "random_pruning";
  }

  v12 = (*(*a2 + 16))(a2);
  if (v10 <= *(v12 + 24) - *(v12 + 32))
  {
    if (!v9)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v11, v10);
      *(v13 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v11, v10);
  }

  result = (*(*a2 + 16))(a2);
  v15 = result[4];
  if (result[3] == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::SimilarityTypeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::SimilarityTypeAttr::parse(mlir::AsmParser *a1)
{
  v90 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v64 = 0;
    v65 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v64))
    {
LABEL_46:
      v42 = (*(*a1 + 40))(a1);
      LOWORD(v81) = 259;
      (*(*a1 + 24))(v70, a1, v42, v79);
      if (v70[0])
      {
        mlir::InFlightDiagnostic::report(v70);
      }

      if (v78 == 1)
      {
        if (v77 != &v78)
        {
          free(v77);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v76;
          v45 = __p;
          if (v76 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v76 = v43;
          operator delete(v45);
        }

        v46 = v73;
        if (v73)
        {
          v47 = v74;
          v48 = v73;
          if (v74 != v73)
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
            v48 = v73;
          }

          v74 = v46;
          operator delete(v48);
        }

        if (v71 != &v72)
        {
          free(v71);
        }
      }

      return 0;
    }

    if (v65 == 8)
    {
      if (*v64 != 0x666669645F736261)
      {
LABEL_13:
        v63 = 257;
        (*(*a1 + 24))(v79, a1, v2, v62);
        if (v79[0])
        {
          LODWORD(v66) = 3;
          v67 = "expected ";
          v68 = 9;
          v5 = &v66;
          v6 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v66 && &v80[3 * v81] > &v66)
            {
              v56 = &v66 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v6 = v80;
              v5 = (v80 + v56);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v5 = &v66;
              v6 = v80;
            }
          }

          v7 = &v6[3 * v81];
          v8 = *v5;
          v7[2] = v5[2];
          *v7 = v8;
          v9 = ++v81;
          if (v79[0])
          {
            LODWORD(v66) = 3;
            v67 = "::mlir::mps::SimilarityType";
            v68 = 27;
            v10 = &v66;
            v11 = v80;
            if (v9 >= v82)
            {
              if (v80 <= &v66 && &v80[3 * v9] > &v66)
              {
                v57 = &v66 - v80;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v9 + 1, 24);
                v11 = v80;
                v10 = (v80 + v57);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v9 + 1, 24);
                v10 = &v66;
                v11 = v80;
              }
            }

            v12 = &v11[3 * v81];
            v13 = *v10;
            v12[2] = v10[2];
            *v12 = v13;
            v14 = ++v81;
            if (v79[0])
            {
              LODWORD(v66) = 3;
              v67 = " to be one of: ";
              v68 = 15;
              v15 = &v66;
              v16 = v80;
              if (v14 >= v82)
              {
                if (v80 <= &v66 && &v80[3 * v14] > &v66)
                {
                  v58 = &v66 - v80;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v14 + 1, 24);
                  v16 = v80;
                  v15 = (v80 + v58);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v14 + 1, 24);
                  v15 = &v66;
                  v16 = v80;
                }
              }

              v17 = &v16[3 * v81];
              v18 = *v15;
              v17[2] = v15[2];
              *v17 = v18;
              v19 = ++v81;
              if (v79[0])
              {
                LODWORD(v66) = 3;
                v67 = "dot_product";
                v68 = 11;
                v20 = &v66;
                v21 = v80;
                if (v19 >= v82)
                {
                  if (v80 <= &v66 && &v80[3 * v19] > &v66)
                  {
                    v59 = &v66 - v80;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v19 + 1, 24);
                    v21 = v80;
                    v20 = (v80 + v59);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v19 + 1, 24);
                    v20 = &v66;
                    v21 = v80;
                  }
                }

                v22 = &v21[3 * v81];
                v23 = *v20;
                v22[2] = v20[2];
                *v22 = v23;
                v24 = ++v81;
                if (v79[0])
                {
                  LODWORD(v66) = 3;
                  v67 = ", ";
                  v68 = 2;
                  v25 = &v66;
                  v26 = v80;
                  if (v24 >= v82)
                  {
                    if (v80 <= &v66 && &v80[3 * v24] > &v66)
                    {
                      v60 = &v66 - v80;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v24 + 1, 24);
                      v26 = v80;
                      v25 = (v80 + v60);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v24 + 1, 24);
                      v25 = &v66;
                      v26 = v80;
                    }
                  }

                  v27 = &v26[3 * v81];
                  v28 = *v25;
                  v27[2] = v25[2];
                  *v27 = v28;
                  v29 = ++v81;
                  if (v79[0])
                  {
                    LODWORD(v66) = 3;
                    v67 = "abs_diff";
                    v68 = 8;
                    v30 = &v66;
                    v31 = v80;
                    if (v29 >= v82)
                    {
                      if (v80 <= &v66 && &v80[3 * v29] > &v66)
                      {
                        v61 = &v66 - v80;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v29 + 1, 24);
                        v31 = v80;
                        v30 = (v80 + v61);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v29 + 1, 24);
                        v30 = &v66;
                        v31 = v80;
                      }
                    }

                    v32 = &v31[3 * v81];
                    v33 = *v30;
                    v32[2] = v30[2];
                    *v32 = v33;
                    ++v81;
                  }
                }
              }
            }
          }
        }

        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v79);
        if (v79[0])
        {
          mlir::InFlightDiagnostic::report(v79);
        }

        if (v89 == 1)
        {
          if (v88 != &v89)
          {
            free(v88);
          }

          v34 = v86;
          if (v86)
          {
            v35 = v87;
            v36 = v86;
            if (v87 != v86)
            {
              do
              {
                v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
              }

              while (v35 != v34);
              v36 = v86;
            }

            v87 = v34;
            operator delete(v36);
          }

          v37 = v84;
          if (v84)
          {
            v38 = v85;
            v39 = v84;
            if (v85 != v84)
            {
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
              v39 = v84;
            }

            v85 = v37;
            operator delete(v39);
          }

          if (v80 != v83)
          {
            free(v80);
          }
        }

        goto LABEL_46;
      }

      v4 = 1;
      if ((*(*a1 + 168))(a1))
      {
LABEL_69:
        Context = mlir::AsmParser::getContext(a1);
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v66 = &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id;
        v67 = Context;
        v79[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25SimilarityTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18SimilarityTypeAttrEJNS2_14SimilarityTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
        v79[1] = &v66;
        v69 = v4;
        v54 = v4 ^ 0xFF51AFD7ED558CCDLL;
        v55 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v54);
        v64 = &v69;
        v62[0] = &v69;
        v62[1] = v79;
        return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v54 ^ (v55 >> 47) ^ v55)) >> 32) >> 15) ^ (-348639895 * (v54 ^ (v55 >> 47) ^ v55))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::SimilarityTypeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::SimilarityTypeAttrStorage,mlir::mps::SimilarityType>(llvm::function_ref<void ()(mlir::mps::detail::SimilarityTypeAttrStorage *)>,mlir::TypeID,mlir::mps::SimilarityType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v62);
      }
    }

    else
    {
      if (v65 != 11)
      {
        goto LABEL_13;
      }

      if (*v64 != 0x646F72705F746F64 || *(v64 + 3) != 0x746375646F72705FLL)
      {
        goto LABEL_13;
      }

      v4 = 0;
      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_69;
      }
    }
  }

  return 0;
}

void *mlir::mps::SimilarityTypeAttr::print(mlir::mps::SimilarityTypeAttr *this, mlir::AsmPrinter *a2)
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
  v7 = "";
  v8 = 8;
  if (v6 == 1)
  {
    v7 = "abs_diff";
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v6 != 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 11;
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = "dot_product";
  }

  v12 = (*(*a2 + 16))(a2);
  if (v10 <= *(v12 + 24) - *(v12 + 32))
  {
    if (!v9)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v11, v10);
      *(v13 + 32) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v11, v10);
  }

  result = (*(*a2 + 16))(a2);
  v15 = result[4];
  if (result[3] == v15)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v15 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mps::FFTScalingModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::FFTScalingModeAttr::parse(mlir::AsmParser *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v76 = 0;
  v77 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v76))
  {
LABEL_50:
    v52 = (*(*a1 + 40))(a1);
    LOWORD(v93) = 259;
    (*(*a1 + 24))(v82, a1, v52, v91);
    if (v82[0])
    {
      mlir::InFlightDiagnostic::report(v82);
    }

    if (v90 == 1)
    {
      if (v89 != &v90)
      {
        free(v89);
      }

      v53 = v87;
      if (v87)
      {
        v54 = v88;
        v55 = v87;
        if (v88 != v87)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = v87;
        }

        v88 = v53;
        operator delete(v55);
      }

      v56 = v85;
      if (v85)
      {
        v57 = v86;
        v58 = v85;
        if (v86 != v85)
        {
          do
          {
            v60 = *--v57;
            v59 = v60;
            *v57 = 0;
            if (v60)
            {
              operator delete[](v59);
            }
          }

          while (v57 != v56);
          v58 = v85;
        }

        v86 = v56;
        operator delete(v58);
      }

      if (v83 != &v84)
      {
        free(v83);
      }
    }

    return 0;
  }

  if (v77 != 7)
  {
    if (v77 == 4)
    {
      if (*v76 == 1701736302)
      {
        v3 = 0;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }

      if (*v76 == 1702521203)
      {
        v3 = 1;
        if ((*(*a1 + 168))(a1))
        {
          goto LABEL_75;
        }

        return 0;
      }
    }

    goto LABEL_13;
  }

  if (*v76 != 1953066613 || *(v76 + 3) != 2037539188)
  {
LABEL_13:
    v75 = 257;
    (*(*a1 + 24))(v91, a1, v2, v74);
    if (v91[0])
    {
      LODWORD(v78) = 3;
      v79 = "expected ";
      v80 = 9;
      v5 = &v78;
      v6 = v92;
      if (v93 >= v94)
      {
        if (v92 <= &v78 && v92 + 24 * v93 > &v78)
        {
          v66 = &v78 - v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
          v6 = v92;
          v5 = (v92 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
          v5 = &v78;
          v6 = v92;
        }
      }

      v7 = &v6[24 * v93];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v93;
      if (v91[0])
      {
        LODWORD(v78) = 3;
        v79 = "::mlir::mps::FFTScalingMode";
        v80 = 27;
        v10 = &v78;
        v11 = v92;
        if (v9 >= v94)
        {
          if (v92 <= &v78 && v92 + 24 * v9 > &v78)
          {
            v67 = &v78 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v9 + 1, 24);
            v11 = v92;
            v10 = (v92 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v9 + 1, 24);
            v10 = &v78;
            v11 = v92;
          }
        }

        v12 = &v11[24 * v93];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        v14 = ++v93;
        if (v91[0])
        {
          LODWORD(v78) = 3;
          v79 = " to be one of: ";
          v80 = 15;
          v15 = &v78;
          v16 = v92;
          if (v14 >= v94)
          {
            if (v92 <= &v78 && v92 + 24 * v14 > &v78)
            {
              v68 = &v78 - v92;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
              v16 = v92;
              v15 = (v92 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
              v15 = &v78;
              v16 = v92;
            }
          }

          v17 = &v16[24 * v93];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          v19 = ++v93;
          if (v91[0])
          {
            LODWORD(v78) = 3;
            v79 = "none";
            v80 = 4;
            v20 = &v78;
            v21 = v92;
            if (v19 >= v94)
            {
              if (v92 <= &v78 && v92 + 24 * v19 > &v78)
              {
                v69 = &v78 - v92;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
                v21 = v92;
                v20 = (v92 + v69);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
                v20 = &v78;
                v21 = v92;
              }
            }

            v22 = &v21[24 * v93];
            v23 = *v20;
            *(v22 + 2) = v20[2];
            *v22 = v23;
            v24 = ++v93;
            if (v91[0])
            {
              LODWORD(v78) = 3;
              v79 = ", ";
              v80 = 2;
              v25 = &v78;
              v26 = v92;
              if (v24 >= v94)
              {
                if (v92 <= &v78 && v92 + 24 * v24 > &v78)
                {
                  v70 = &v78 - v92;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v24 + 1, 24);
                  v26 = v92;
                  v25 = (v92 + v70);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v24 + 1, 24);
                  v25 = &v78;
                  v26 = v92;
                }
              }

              v27 = &v26[24 * v93];
              v28 = *v25;
              *(v27 + 2) = v25[2];
              *v27 = v28;
              v29 = ++v93;
              if (v91[0])
              {
                LODWORD(v78) = 3;
                v79 = "size";
                v80 = 4;
                v30 = &v78;
                v31 = v92;
                if (v29 >= v94)
                {
                  if (v92 <= &v78 && v92 + 24 * v29 > &v78)
                  {
                    v71 = &v78 - v92;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v29 + 1, 24);
                    v31 = v92;
                    v30 = (v92 + v71);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v29 + 1, 24);
                    v30 = &v78;
                    v31 = v92;
                  }
                }

                v32 = &v31[24 * v93];
                v33 = *v30;
                *(v32 + 2) = v30[2];
                *v32 = v33;
                v34 = ++v93;
                if (v91[0])
                {
                  LODWORD(v78) = 3;
                  v79 = ", ";
                  v80 = 2;
                  v35 = &v78;
                  v36 = v92;
                  if (v34 >= v94)
                  {
                    if (v92 <= &v78 && v92 + 24 * v34 > &v78)
                    {
                      v72 = &v78 - v92;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v34 + 1, 24);
                      v36 = v92;
                      v35 = (v92 + v72);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v34 + 1, 24);
                      v35 = &v78;
                      v36 = v92;
                    }
                  }

                  v37 = &v36[24 * v93];
                  v38 = *v35;
                  *(v37 + 2) = v35[2];
                  *v37 = v38;
                  v39 = ++v93;
                  if (v91[0])
                  {
                    LODWORD(v78) = 3;
                    v79 = "unitary";
                    v80 = 7;
                    v40 = &v78;
                    v41 = v92;
                    if (v39 >= v94)
                    {
                      if (v92 <= &v78 && v92 + 24 * v39 > &v78)
                      {
                        v73 = &v78 - v92;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v39 + 1, 24);
                        v41 = v92;
                        v40 = (v92 + v73);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v39 + 1, 24);
                        v40 = &v78;
                        v41 = v92;
                      }
                    }

                    v42 = &v41[24 * v93];
                    v43 = *v40;
                    *(v42 + 2) = v40[2];
                    *v42 = v43;
                    ++v93;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v91);
    if (v91[0])
    {
      mlir::InFlightDiagnostic::report(v91);
    }

    if (v101 == 1)
    {
      if (v100 != &v101)
      {
        free(v100);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v99;
        v46 = __p;
        if (v99 != __p)
        {
          do
          {
            v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v99 = v44;
        operator delete(v46);
      }

      v47 = v96;
      if (v96)
      {
        v48 = v97;
        v49 = v96;
        if (v97 != v96)
        {
          do
          {
            v51 = *--v48;
            v50 = v51;
            *v48 = 0;
            if (v51)
            {
              operator delete[](v50);
            }
          }

          while (v48 != v47);
          v49 = v96;
        }

        v97 = v47;
        operator delete(v49);
      }

      if (v92 != v95)
      {
        free(v92);
      }
    }

    goto LABEL_50;
  }

  v3 = 2;
  if ((*(*a1 + 168))(a1))
  {
LABEL_75:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v78 = &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id;
    v79 = Context;
    v91[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25FFTScalingModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18FFTScalingModeAttrEJNS2_14FFTScalingModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v91[1] = &v78;
    v81 = v3;
    v64 = v3 ^ 0xFF51AFD7ED558CCDLL;
    v65 = 0x9DDFEA08EB382D69 * (((8 * v3) | 4) ^ v64);
    v76 = &v81;
    v74[0] = &v81;
    v74[1] = v91;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v64 ^ (v65 >> 47) ^ v65)) >> 32) >> 15) ^ (-348639895 * (v64 ^ (v65 >> 47) ^ v65))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v76, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::FFTScalingModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::FFTScalingModeAttrStorage,mlir::mps::FFTScalingMode>(llvm::function_ref<void ()(mlir::mps::detail::FFTScalingModeAttrStorage *)>,mlir::TypeID,mlir::mps::FFTScalingMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v74);
  }

  return 0;
}

void *mlir::mps::FFTScalingModeAttr::print(mlir::mps::FFTScalingModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "none";
    v8 = 4;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "unitary";
    v8 = 7;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "size";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
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

uint64_t mlir::detail::StorageUserBase<mlir::mps::MPSBufferTensorAttr,mlir::Attribute,mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, mlir::MLIRContext *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  {
    return 0;
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a3);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v20[1] = a3;
  v27[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJRNS1_16RankedTensorTypeERNS2_28MPSDialectResourceBlobHandleERyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS5_;
  v27[1] = v20;
  v23 = a4;
  v24 = *a5;
  v25 = a5[2];
  v26 = a6;
  v11 = 0x9DDFEA08EB382D69 * ((8 * v24 - 0xAE502812AA7333) ^ DWORD1(v24));
  v12 = 0x9DDFEA08EB382D69 * (DWORD1(v24) ^ (v11 >> 47) ^ v11);
  v13 = v12 ^ (v12 >> 47);
  v14 = 0x9DDFEA08EB382D69 * v13;
  v15 = 0xB492B66FBE98F273 * ((a4 >> 4) ^ (a4 >> 9));
  v16 = __ROR8__((0x9AE16A3B2F90404FLL * a6) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v13 + __ROR8__(v15 - 0x9DDFEA08EB382D69 * v13, 43);
  v17 = v15 - 0x9AE16A3B2F90404FLL * a6 - 0xAE502812AA7333 + __ROR8__(v14 ^ 0xC949D7C7509E6557, 20) + 24;
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v17)));
  v21[0] = &v23;
  v21[1] = v27;
  v22 = &v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v18 >> 47) ^ v18), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType &,mlir::mps::MPSDialectResourceBlobHandle &,unsigned long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v21);
}

uint64_t mlir::mps::MPSBufferTensorAttr::parse(mlir::AsmParser *a1, void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  v4 = (*(*a1 + 40))(a1);
  if (!a2)
  {
    *v37 = "expected a trailing type";
    v39 = 259;
    (*(*a1 + 24))(v53, a1, v4, v37);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v61 != 1)
    {
      return 0;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v13 = v58;
    if (v58)
    {
      v14 = v59;
      v15 = v58;
      if (v59 != v58)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = v58;
      }

      v59 = v13;
      operator delete(v15);
    }

    v16 = v56;
    if (v56)
    {
      v17 = v57;
      v18 = v56;
      if (v57 != v56)
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
        v18 = v56;
      }

      v57 = v16;
      operator delete(v18);
    }

    v24 = v54;
    if (v54 == &v55)
    {
      return 0;
    }

    goto LABEL_49;
  }

  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    *v37 = "invalid kind of type specified";
    v39 = 259;
    (*(*a1 + 24))(v62, a1, v4, v37);
    if (v62[0])
    {
      mlir::InFlightDiagnostic::report(v62);
    }

    if ((v70 & 1) == 0)
    {
      return 0;
    }

    if (v69 != &v70)
    {
      free(v69);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v68;
      v7 = __p;
      if (v68 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v68 = v5;
      operator delete(v7);
    }

    v8 = v65;
    if (v65)
    {
      v9 = v66;
      v10 = v65;
      if (v66 != v65)
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
        v10 = v65;
      }

      v66 = v8;
      operator delete(v10);
    }

    v24 = v63;
    if (v63 == &v64)
    {
      return 0;
    }

    goto LABEL_49;
  }

  if ((*(*a1 + 152))(a1))
  {
    mlir::AsmParser::parseResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>(a1, v37);
    v21 = v37[0];
    *v52 = *&v37[1];
    *&v52[15] = *&v37[16];
    v22 = *a1;
    if (v38)
    {
      if ((*(v22 + 128))(a1))
      {
        v39 = 257;
        if (((*(*a1 + 400))(a1, "handle_offset", 13, v37) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0)
        {
          return 0;
        }

        *v37 = 0;
        if ((mlir::AsmParser::parseInteger<unsigned long long>(a1, v37) & 1) == 0)
        {
          v36 = (*(*a1 + 40))(a1);
          v39 = 259;
          (*(*a1 + 24))(v42, a1, v36, v37);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v42);
          return 0;
        }

        v23 = *v37;
      }

      else
      {
        v23 = 0;
      }

      if ((*(*a1 + 168))(a1))
      {
        Context = mlir::AsmParser::getContext(a1);
        *&v37[1] = *v52;
        *&v37[16] = *&v52[15];
        v40[0] = a1;
        v40[1] = &v41;
        v41 = v4;
        v37[0] = v21;
        return mlir::detail::StorageUserBase<mlir::mps::MPSBufferTensorAttr,mlir::Attribute,mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_3mps19MPSBufferTensorAttrEJPNS1_11MLIRContextENS1_16RankedTensorTypeENS8_28MPSDialectResourceBlobHandleEyEEEDaNS_5SMLocEDpOT0_EUlvE_EES2_l, v40, Context, a2, v37, v23);
      }

      return 0;
    }

    v26 = (*(v22 + 40))(a1);
    v39 = 259;
    (*(*a1 + 24))(v43, a1, v26, v37);
    if (v43[0])
    {
      mlir::InFlightDiagnostic::report(v43);
    }

    if (v51 != 1)
    {
      return 0;
    }

    if (v50 != &v51)
    {
      free(v50);
    }

    v27 = v48;
    if (v48)
    {
      v28 = v49;
      v29 = v48;
      if (v49 != v48)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = v48;
      }

      v49 = v27;
      operator delete(v29);
    }

    v30 = v46;
    if (v46)
    {
      v31 = v47;
      v32 = v46;
      if (v47 != v46)
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
        v32 = v46;
      }

      v47 = v30;
      operator delete(v32);
    }

    v24 = v44;
    if (v44 == &v45)
    {
      return 0;
    }

LABEL_49:
    free(v24);
  }

  return 0;
}

double mlir::AsmParser::parseResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>@<D0>(mlir::AsmParser *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  Context = mlir::AsmParser::getContext(a1);
  Dialect = mlir::MLIRContext::getOrLoadDialect(Context, "mps", 3, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::mps::MPSDialect * mlir::MLIRContext::getOrLoadDialect<mlir::mps::MPSDialect>(void)::{lambda(void)#1}>, &Context);
  if (Dialect)
  {
    (*(*a1 + 616))(&v37, a1, Dialect);
    if ((v39 & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      return *&v6;
    }

    v7 = *(&v37 + 1);
    {
      if (v7 != mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
      {
LABEL_5:
        v44 = 257;
        (*(*a1 + 24))(&Context, a1, v4, &v41);
        if (Context)
        {
          v45 = 3;
          v46 = "provided resource handle differs from the expected resource type";
          v47 = 64;
          v8 = &v45;
          v9 = v50;
          if (v51 >= v52)
          {
            if (v50 <= &v45 && v50 + 24 * v51 > &v45)
            {
              v34 = &v45 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v9 = v50;
              v8 = (v50 + v34);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v8 = &v45;
              v9 = v50;
            }
          }

          v10 = &v9[24 * v51];
          v6 = *v8;
          *(v10 + 2) = *(v8 + 2);
          *v10 = v6;
          ++v51;
          v11 = Context;
          *a2 = 0;
          *(a2 + 24) = 0;
          if (v11)
          {
            mlir::InFlightDiagnostic::report(&Context);
          }

          if (v59 != 1)
          {
            return *&v6;
          }
        }

        else
        {
          *a2 = 0;
          *(a2 + 24) = 0;
          if (v59 != 1)
          {
            return *&v6;
          }
        }

        if (v58 != &v59)
        {
          free(v58);
        }

        v27 = __p;
        if (__p)
        {
          v28 = v57;
          v29 = __p;
          if (v57 != __p)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = __p;
          }

          v57 = v27;
          operator delete(v29);
        }

        v22 = v54;
        if (!v54)
        {
LABEL_50:
          if (v50 != v53)
          {
            free(v50);
          }

          return *&v6;
        }

        v30 = v55;
        v24 = v54;
        if (v55 == v54)
        {
LABEL_49:
          v55 = v22;
          operator delete(v24);
          goto LABEL_50;
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
LABEL_48:
        v24 = v54;
        goto LABEL_49;
      }
    }

    else
    {
      mlir::mps::getBufferTensorAttrWithKey();
      if (v7 != mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
      {
        goto LABEL_5;
      }
    }

    *&v6 = v37;
    *a2 = v37;
    *(a2 + 16) = v38;
    *(a2 + 24) = 1;
    return *&v6;
  }

  v40 = 257;
  (*(*a1 + 24))(&Context, a1, v4, &v37);
  if (!Context)
  {
    goto LABEL_19;
  }

  LODWORD(v41) = 3;
  v42 = "dialect '";
  v43 = 9;
  v12 = &v41;
  v13 = v50;
  if (v51 >= v52)
  {
    if (v50 <= &v41 && v50 + 24 * v51 > &v41)
    {
      v33 = &v41 - v50;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
      v13 = v50;
      v12 = (v50 + v33);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
      v12 = &v41;
      v13 = v50;
    }
  }

  v14 = &v13[24 * v51];
  v6 = *v12;
  *(v14 + 2) = v12[2];
  *v14 = v6;
  ++v51;
  if (Context && (v44 = 262, v41 = "mps", v42 = 3, mlir::Diagnostic::operator<<(&v49, &v41), Context))
  {
    LODWORD(v41) = 3;
    v42 = "' is unknown";
    v43 = 12;
    v15 = &v41;
    v16 = v50;
    if (v51 >= v52)
    {
      if (v50 <= &v41 && v50 + 24 * v51 > &v41)
      {
        v35 = &v41 - v50;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v16 = v50;
        v15 = (v50 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
        v15 = &v41;
        v16 = v50;
      }
    }

    v17 = &v16[24 * v51];
    v6 = *v15;
    *(v17 + 2) = v15[2];
    *v17 = v6;
    ++v51;
    v18 = Context;
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v18)
    {
      mlir::InFlightDiagnostic::report(&Context);
    }
  }

  else
  {
LABEL_19:
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v57;
      v21 = __p;
      if (v57 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v57 = v19;
      operator delete(v21);
    }

    v22 = v54;
    if (!v54)
    {
      goto LABEL_50;
    }

    v23 = v55;
    v24 = v54;
    if (v55 == v54)
    {
      goto LABEL_49;
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
    goto LABEL_48;
  }

  return *&v6;
}

void *mlir::mps::MPSBufferTensorAttr::print(mlir::mps::MPSBufferTensorAttr *this, mlir::AsmPrinter *a2)
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

  v6 = *(*this + 16);
  v24 = *(*this + 32);
  v23 = v6;
  (*(*a2 + 96))(a2, &v23);
  if (!*(*this + 40))
  {
    goto LABEL_25;
  }

  v7 = (*(*a2 + 16))(a2);
  v8 = v7[4];
  if (v7[3] == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
  }

  else
  {
    *v8 = 44;
    ++v7[4];
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = v11[4];
  if (v11[3] - v12 > 0xCuLL)
  {
    qmemcpy(v12, "handle_offset", 13);
    v11[4] += 13;
  }

  else
  {
    llvm::raw_ostream::write(v11, "handle_offset", 0xDuLL);
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = v15[4];
  if (v15[3] == v16)
  {
    llvm::raw_ostream::write(v15, "=", 1uLL);
    if (!*(*this + 40))
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v16 = 61;
    ++v15[4];
    if (!*(*this + 40))
    {
      goto LABEL_25;
    }
  }

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = *(*this + 40);
  v20 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v20, v19);
LABEL_25:
  result = (*(*a2 + 16))(a2);
  v22 = result[4];
  if (result[3] == v22)
  {
    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  *v22 = 62;
  ++result[4];
  return result;
}

uint64_t mlir::mps::CallInlineModeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::mps::CallInlineModeAttr::parse(mlir::AsmParser *a1)
{
  v103 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = (*(*a1 + 40))(a1);
  v77 = 0;
  v78 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v77))
  {
LABEL_58:
    v53 = (*(*a1 + 40))(a1);
    LOWORD(v94) = 259;
    (*(*a1 + 24))(v83, a1, v53, v92);
    if (v83[0])
    {
      mlir::InFlightDiagnostic::report(v83);
    }

    if (v91 == 1)
    {
      if (v90 != &v91)
      {
        free(v90);
      }

      v54 = v88;
      if (v88)
      {
        v55 = v89;
        v56 = v88;
        if (v89 != v88)
        {
          do
          {
            v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
          }

          while (v55 != v54);
          v56 = v88;
        }

        v89 = v54;
        operator delete(v56);
      }

      v57 = v86;
      if (v86)
      {
        v58 = v87;
        v59 = v86;
        if (v87 != v86)
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
          v59 = v86;
        }

        v87 = v57;
        operator delete(v59);
      }

      if (v84 != &v85)
      {
        free(v84);
      }
    }

    return 0;
  }

  if (v78 != 2)
  {
    if (v78 == 9)
    {
      if (*v77 != 0x6974616D6F747561 || *(v77 + 8) != 99)
      {
        goto LABEL_21;
      }

      v4 = 2;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v78 != 3)
      {
        goto LABEL_21;
      }

      if (*v77 != 26223 || *(v77 + 2) != 102)
      {
        goto LABEL_21;
      }

      v4 = 0;
      if (((*(*a1 + 168))(a1) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_81:
    Context = mlir::AsmParser::getContext(a1);
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    v79 = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
    v80 = Context;
    v92[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v92[1] = &v79;
    v82 = v4;
    v65 = v4 ^ 0xFF51AFD7ED558CCDLL;
    v66 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v65);
    v77 = &v82;
    v75[0] = &v82;
    v75[1] = v92;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v65 ^ (v66 >> 47) ^ v66)) >> 32) >> 15) ^ (-348639895 * (v65 ^ (v66 >> 47) ^ v66))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v77, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v75);
  }

  if (*v77 != 28271)
  {
LABEL_21:
    v76 = 257;
    (*(*a1 + 24))(v92, a1, v2, v75);
    if (v92[0])
    {
      LODWORD(v79) = 3;
      v80 = "expected ";
      v81 = 9;
      v6 = &v79;
      v7 = v93;
      if (v94 >= v95)
      {
        if (v93 <= &v79 && v93 + 24 * v94 > &v79)
        {
          v67 = &v79 - v93;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
          v7 = v93;
          v6 = (v93 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v94 + 1, 24);
          v6 = &v79;
          v7 = v93;
        }
      }

      v8 = &v7[24 * v94];
      v9 = *v6;
      *(v8 + 2) = v6[2];
      *v8 = v9;
      v10 = ++v94;
      if (v92[0])
      {
        LODWORD(v79) = 3;
        v80 = "::mlir::mps::CallInlineMode";
        v81 = 27;
        v11 = &v79;
        v12 = v93;
        if (v10 >= v95)
        {
          if (v93 <= &v79 && v93 + 24 * v10 > &v79)
          {
            v68 = &v79 - v93;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v10 + 1, 24);
            v12 = v93;
            v11 = (v93 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v10 + 1, 24);
            v11 = &v79;
            v12 = v93;
          }
        }

        v13 = &v12[24 * v94];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        v15 = ++v94;
        if (v92[0])
        {
          LODWORD(v79) = 3;
          v80 = " to be one of: ";
          v81 = 15;
          v16 = &v79;
          v17 = v93;
          if (v15 >= v95)
          {
            if (v93 <= &v79 && v93 + 24 * v15 > &v79)
            {
              v69 = &v79 - v93;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v15 + 1, 24);
              v17 = v93;
              v16 = (v93 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v15 + 1, 24);
              v16 = &v79;
              v17 = v93;
            }
          }

          v18 = &v17[24 * v94];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          v20 = ++v94;
          if (v92[0])
          {
            LODWORD(v79) = 3;
            v80 = "off";
            v81 = 3;
            v21 = &v79;
            v22 = v93;
            if (v20 >= v95)
            {
              if (v93 <= &v79 && v93 + 24 * v20 > &v79)
              {
                v70 = &v79 - v93;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v20 + 1, 24);
                v22 = v93;
                v21 = (v93 + v70);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v20 + 1, 24);
                v21 = &v79;
                v22 = v93;
              }
            }

            v23 = &v22[24 * v94];
            v24 = *v21;
            *(v23 + 2) = v21[2];
            *v23 = v24;
            v25 = ++v94;
            if (v92[0])
            {
              LODWORD(v79) = 3;
              v80 = ", ";
              v81 = 2;
              v26 = &v79;
              v27 = v93;
              if (v25 >= v95)
              {
                if (v93 <= &v79 && v93 + 24 * v25 > &v79)
                {
                  v71 = &v79 - v93;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v25 + 1, 24);
                  v27 = v93;
                  v26 = (v93 + v71);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v25 + 1, 24);
                  v26 = &v79;
                  v27 = v93;
                }
              }

              v28 = &v27[24 * v94];
              v29 = *v26;
              *(v28 + 2) = v26[2];
              *v28 = v29;
              v30 = ++v94;
              if (v92[0])
              {
                LODWORD(v79) = 3;
                v80 = "on";
                v81 = 2;
                v31 = &v79;
                v32 = v93;
                if (v30 >= v95)
                {
                  if (v93 <= &v79 && v93 + 24 * v30 > &v79)
                  {
                    v72 = &v79 - v93;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v30 + 1, 24);
                    v32 = v93;
                    v31 = (v93 + v72);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v30 + 1, 24);
                    v31 = &v79;
                    v32 = v93;
                  }
                }

                v33 = &v32[24 * v94];
                v34 = *v31;
                *(v33 + 2) = v31[2];
                *v33 = v34;
                v35 = ++v94;
                if (v92[0])
                {
                  LODWORD(v79) = 3;
                  v80 = ", ";
                  v81 = 2;
                  v36 = &v79;
                  v37 = v93;
                  if (v35 >= v95)
                  {
                    if (v93 <= &v79 && v93 + 24 * v35 > &v79)
                    {
                      v73 = &v79 - v93;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v35 + 1, 24);
                      v37 = v93;
                      v36 = (v93 + v73);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v35 + 1, 24);
                      v36 = &v79;
                      v37 = v93;
                    }
                  }

                  v38 = &v37[24 * v94];
                  v39 = *v36;
                  *(v38 + 2) = v36[2];
                  *v38 = v39;
                  v40 = ++v94;
                  if (v92[0])
                  {
                    LODWORD(v79) = 3;
                    v80 = "automatic";
                    v81 = 9;
                    v41 = &v79;
                    v42 = v93;
                    if (v40 >= v95)
                    {
                      if (v93 <= &v79 && v93 + 24 * v40 > &v79)
                      {
                        v74 = &v79 - v93;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v40 + 1, 24);
                        v42 = v93;
                        v41 = (v93 + v74);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v93, v96, v40 + 1, 24);
                        v41 = &v79;
                        v42 = v93;
                      }
                    }

                    v43 = &v42[24 * v94];
                    v44 = *v41;
                    *(v43 + 2) = v41[2];
                    *v43 = v44;
                    ++v94;
                  }
                }
              }
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
    if (v92[0])
    {
      mlir::InFlightDiagnostic::report(v92);
    }

    if (v102 == 1)
    {
      if (v101 != &v102)
      {
        free(v101);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v100;
        v47 = __p;
        if (v100 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v100 = v45;
        operator delete(v47);
      }

      v48 = v97;
      if (v97)
      {
        v49 = v98;
        v50 = v97;
        if (v98 != v97)
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
          v50 = v97;
        }

        v98 = v48;
        operator delete(v50);
      }

      if (v93 != v96)
      {
        free(v93);
      }
    }

    goto LABEL_58;
  }

  v4 = 1;
  if ((*(*a1 + 168))(a1))
  {
    goto LABEL_81;
  }

  return 0;
}

void *mlir::mps::CallInlineModeAttr::print(mlir::mps::CallInlineModeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] != v5)
  {
    *v5 = 60;
    ++v4[4];
    v6 = *(*this + 8);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v7 = 0;
    v9 = "off";
    v8 = 3;
    goto LABEL_13;
  }

  llvm::raw_ostream::write(v4, "<", 1uLL);
  v6 = *(*this + 8);
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 == 2)
  {
    v7 = 0;
    v9 = "automatic";
    v8 = 9;
  }

  else
  {
    v7 = v6 != 1;
    if (v6 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == 1)
    {
      v9 = "on";
    }

    else
    {
      v9 = "";
    }
  }

LABEL_13:
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

uint64_t mlir::mps::MPSDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2, void *a3)
{
  v95 = *MEMORY[0x1E69E9840];
  v6 = (*(*a2 + 40))(a2);
  v82 = a2;
  v7 = (*(*a2 + 40))(a2);
  BYTE2(v86) = 0;
  v84 = 0;
  v85 = 0;
  v83 = v7;
  LOBYTE(v86) = 0;
  if (((*(*a2 + 640))(a2, &v84) & 1) == 0)
  {
    v8 = 0;
    if ((v86 & 0x10000) != 0)
    {
      LOWORD(v86) = 256;
      v78 = "tensor_data_layout";
      v9 = 0;
      v10 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v82) & 0x100) != 0)
      {
        return v8;
      }
    }

    else
    {
      LOWORD(v86) = 256;
      BYTE2(v86) = 1;
      v9 = 0;
      v10 = 0;
      if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v82) & 0x100) != 0)
      {
        return v8;
      }
    }

    goto LABEL_288;
  }

  v78 = "tensor_data_layout";
  v79 = 18;
  if ((v86 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v85;
  if (v85)
  {
    if (v85 == 18)
    {
      v11 = *v84 == 0x645F726F736E6574 && *(v84 + 8) == 0x6F79616C5F617461;
      if (v11 && *(v84 + 16) == 29813)
      {
        v22 = mlir::mps::TensorDataLayoutAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "reduction_mode";
    v79 = 14;
    goto LABEL_18;
  }

  (*(*v82 + 648))(v82, &v78, 1);
  v78 = "reduction_mode";
  v79 = 14;
  if ((v86 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v85;
  if (v85)
  {
LABEL_18:
    if (v9 == 14 && *v84 == 0x6F69746375646572 && *(v84 + 6) == 0x65646F6D5F6E6F69)
    {
      v22 = mlir::mps::ReductionModeAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "device_hint";
    v79 = 11;
    if (v9)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

  (*(*v82 + 648))(v82, &v78, 1);
  v78 = "device_hint";
  v79 = 11;
  if ((v86 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v85;
  if (v85)
  {
LABEL_24:
    if (v9 == 11 && *v84 == 0x685F656369766564 && *(v84 + 3) == 0x746E69685F656369)
    {
      v22 = mlir::mps::DeviceHintAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "scatter_mode";
    v79 = 12;
    if (v9)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_63:
  (*(*v82 + 648))(v82, &v78, 1);
  v78 = "scatter_mode";
  v79 = 12;
  if ((v86 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v85;
  if (v85)
  {
LABEL_30:
    if (v9 == 12 && *v84 == 0x5F72657474616373 && *(v84 + 8) == 1701080941)
    {
      v22 = mlir::mps::ScatterModeAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "padding_mode";
    v79 = 12;
    if (v9)
    {
      goto LABEL_36;
    }

    goto LABEL_67;
  }

LABEL_65:
  (*(*v82 + 648))(v82, &v78, 1);
  v78 = "padding_mode";
  v79 = 12;
  if ((v86 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v85;
  if (v85)
  {
LABEL_36:
    if (v9 == 12 && *v84 == 0x5F676E6964646170 && *(v84 + 8) == 1701080941)
    {
      v22 = mlir::mps::PaddingModeAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "sampling_mode";
    v79 = 13;
    if (v9)
    {
      goto LABEL_42;
    }

LABEL_69:
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "nearest_rounding_mode";
    v79 = 21;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
    if (v85)
    {
      goto LABEL_48;
    }

    goto LABEL_71;
  }

LABEL_67:
  (*(*v82 + 648))(v82, &v78, 1);
  v78 = "sampling_mode";
  v79 = 13;
  if ((v86 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v85;
  if (!v85)
  {
    goto LABEL_69;
  }

LABEL_42:
  if (v9 == 13 && *v84 == 0x676E696C706D6173 && *(v84 + 5) == 0x65646F6D5F676E69)
  {
    v22 = mlir::mps::SamplingModeAttr::parse(a2);
    goto LABEL_287;
  }

  v78 = "nearest_rounding_mode";
  v79 = 21;
  if (v9)
  {
LABEL_48:
    if (v9 == 21)
    {
      v18 = *v84 == 0x5F7473657261656ELL && *(v84 + 8) == 0x676E69646E756F72;
      if (v18 && *(v84 + 13) == 0x65646F6D5F676E69)
      {
        v22 = mlir::mps::NearestRoundingModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "sparse_tensor_storage";
    v79 = 21;
    goto LABEL_73;
  }

LABEL_71:
  (*(*v82 + 648))(v82, &v78, 1);
  v78 = "sparse_tensor_storage";
  v79 = 21;
  if ((v86 & 0x10000) != 0)
  {
    goto LABEL_3;
  }

  v9 = v85;
LABEL_73:
  if (v9)
  {
    if (v9 == 21)
    {
      v20 = *v84 == 0x745F657372617073 && *(v84 + 8) == 0x74735F726F736E65;
      if (v20 && *(v84 + 13) == 0x656761726F74735FLL)
      {
        v22 = mlir::mps::SparseTensorStorageAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "texture_tensor_pixel_format";
    v79 = 27;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "texture_tensor_pixel_format";
    v79 = 27;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 27)
    {
      v23 = *v84 == 0x5F65727574786574 && *(v84 + 8) == 0x705F726F736E6574;
      v24 = v23 && *(v84 + 16) == 0x726F665F6C657869;
      if (v24 && *(v84 + 19) == 0x74616D726F665F6CLL)
      {
        v22 = mlir::mps::MetalPixelFormatAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "random_normal_sampling_method";
    v79 = 29;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "random_normal_sampling_method";
    v79 = 29;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 29)
    {
      v26 = *v84 == 0x6E5F6D6F646E6172 && *(v84 + 8) == 0x61735F6C616D726FLL;
      v27 = v26 && *(v84 + 16) == 0x6D5F676E696C706DLL;
      if (v27 && *(v84 + 21) == 0x646F6874656D5F67)
      {
        v22 = mlir::mps::NormalSamplingMethodAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "padding_style";
    v79 = 13;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "padding_style";
    v79 = 13;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 13 && *v84 == 0x5F676E6964646170 && *(v84 + 5) == 0x656C7974735F676ELL)
    {
      v22 = mlir::mps::PaddingStyleAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "pooling_indices_mode";
    v79 = 20;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "pooling_indices_mode";
    v79 = 20;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 20)
    {
      v30 = *v84 == 0x5F676E696C6F6F70 && *(v84 + 8) == 0x5F73656369646E69;
      if (v30 && *(v84 + 16) == 1701080941)
      {
        v22 = mlir::mps::PoolIndicesModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "rnn_activation";
    v79 = 14;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "rnn_activation";
    v79 = 14;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 14 && *v84 == 0x697463615F6E6E72 && *(v84 + 6) == 0x6E6F697461766974)
    {
      v22 = mlir::mps::RNNActivationAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "lstm_gate_layout";
    v79 = 16;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "lstm_gate_layout";
    v79 = 16;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 16 && *v84 == 0x7461675F6D74736CLL && *(v84 + 8) == 0x74756F79616C5F65)
    {
      v22 = mlir::mps::LSTMGateLayoutAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "gru_gate_layout";
    v79 = 15;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "gru_gate_layout";
    v79 = 15;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 15 && *v84 == 0x657461675F757267 && *(v84 + 7) == 0x74756F79616C5F65)
    {
      v22 = mlir::mps::GRUGateLayoutAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "stencil_padding_mode";
    v79 = 20;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "stencil_padding_mode";
    v79 = 20;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 20)
    {
      v35 = *v84 == 0x5F6C69636E657473 && *(v84 + 8) == 0x5F676E6964646170;
      if (v35 && *(v84 + 16) == 1701080941)
      {
        v22 = mlir::mps::StencilPaddingModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "crop_resize_alignment_mode";
    v79 = 26;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "crop_resize_alignment_mode";
    v79 = 26;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 26)
    {
      v37 = *v84 == 0x7365725F706F7263 && *(v84 + 8) == 0x67696C615F657A69;
      v38 = v37 && *(v84 + 16) == 0x6F6D5F746E656D6ELL;
      if (v38 && *(v84 + 24) == 25956)
      {
        v22 = mlir::mps::CropResizeAlignmentModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "crop_resize_coordinate_mode";
    v79 = 27;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "crop_resize_coordinate_mode";
    v79 = 27;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 27)
    {
      v40 = *v84 == 0x7365725F706F7263 && *(v84 + 8) == 0x726F6F635F657A69;
      v41 = v40 && *(v84 + 16) == 0x6D5F6574616E6964;
      if (v41 && *(v84 + 19) == 0x65646F6D5F657461)
      {
        v22 = mlir::mps::CropResizeCoordinateModeAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "pruning_metric";
    v79 = 14;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "pruning_metric";
    v79 = 14;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 14 && *v84 == 0x5F676E696E757270 && *(v84 + 6) == 0x63697274656D5F67)
    {
      v22 = mlir::mps::PruningMetricAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "pruning_structure";
    v79 = 17;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "pruning_structure";
    v79 = 17;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 17)
    {
      v44 = *v84 == 0x5F676E696E757270 && *(v84 + 8) == 0x7275746375727473;
      if (v44 && *(v84 + 16) == 101)
      {
        v22 = mlir::mps::PruningStructureAttr::parse(a2);
        goto LABEL_287;
      }
    }

    v78 = "similarity_type";
    v79 = 15;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "similarity_type";
    v79 = 15;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 15 && *v84 == 0x6972616C696D6973 && *(v84 + 7) == 0x657079745F797469)
    {
      v22 = mlir::mps::SimilarityTypeAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "fft_scaling_mode";
    v79 = 16;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "fft_scaling_mode";
    v79 = 16;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (v9)
  {
    if (v9 == 16 && *v84 == 0x6C6163735F746666 && *(v84 + 8) == 0x65646F6D5F676E69)
    {
      v22 = mlir::mps::FFTScalingModeAttr::parse(a2);
      goto LABEL_287;
    }

    v78 = "buffer_tensor";
    v79 = 13;
  }

  else
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "buffer_tensor";
    v79 = 13;
    if ((v86 & 0x10000) != 0)
    {
      goto LABEL_3;
    }

    v9 = v85;
  }

  if (!v9)
  {
    (*(*v82 + 648))(v82, &v78, 1);
    v78 = "call_inline_mode";
    v79 = 16;
    if ((v86 & 0x10000) == 0)
    {
      v9 = v85;
      goto LABEL_273;
    }

LABEL_3:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v82) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_288;
  }

  if (v9 == 13 && *v84 == 0x745F726566667562 && *(v84 + 5) == 0x726F736E65745F72)
  {
    v22 = mlir::mps::MPSBufferTensorAttr::parse(a2, a3);
    goto LABEL_287;
  }

  v78 = "call_inline_mode";
  v79 = 16;
LABEL_273:
  if (v9)
  {
    if (v9 != 16)
    {
      goto LABEL_328;
    }

    if (*v84 != 0x6C6E695F6C6C6163 || *(v84 + 8) != 0x65646F6D5F656E69)
    {
      goto LABEL_328;
    }

    v22 = mlir::mps::CallInlineModeAttr::parse(a2);
LABEL_287:
    v8 = v22;
    LOBYTE(v86) = v22 != 0;
    *(&v86 + 1) = 257;
    v9 = 0;
    v10 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v82) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_288;
  }

  (*(*v82 + 648))(v82, &v78, 1);
  if ((v86 & 0x10000) != 0)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v82) & 0x100) != 0)
    {
      return v8;
    }

    goto LABEL_288;
  }

  v9 = v85;
LABEL_328:
  v8 = 0;
  v10 = v84;
  LOWORD(v86) = 0;
  BYTE2(v86) = 1;
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v82) & 0x100) != 0)
  {
    return v8;
  }

LABEL_288:
  v77 = 257;
  (*(*a2 + 24))(&v82, a2, v6, v76);
  if (v82)
  {
    LODWORD(v78) = 3;
    v80 = 19;
    v50 = &v78;
    v51 = v85;
    if (v86 >= v87)
    {
      if (v85 <= &v78 && v85 + 24 * v86 > &v78)
      {
        v73 = &v78 - v85;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v51 = v85;
        v50 = (v85 + v73);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
        v50 = &v78;
        v51 = v85;
      }
    }

    v52 = &v51[24 * v86];
    v53 = *v50;
    *(v52 + 2) = v50[2];
    *v52 = v53;
    ++v86;
    if (v82)
    {
      v81 = 261;
      v78 = v10;
      v79 = v9;
      mlir::Diagnostic::operator<<(&v83, &v78);
      if (v82)
      {
        LODWORD(v78) = 3;
        v80 = 14;
        v54 = &v78;
        v55 = v85;
        if (v86 >= v87)
        {
          if (v85 <= &v78 && v85 + 24 * v86 > &v78)
          {
            v74 = &v78 - v85;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v55 = v85;
            v54 = (v85 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
            v54 = &v78;
            v55 = v85;
          }
        }

        v56 = &v55[24 * v86];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v86;
        if (v82)
        {
          v58 = *(a1 + 8);
          v59 = *(a1 + 16);
          v81 = 261;
          v78 = v58;
          v79 = v59;
          mlir::Diagnostic::operator<<(&v83, &v78);
          if (v82)
          {
            LODWORD(v78) = 3;
            v80 = 1;
            v60 = &v78;
            v61 = v85;
            if (v86 >= v87)
            {
              if (v85 <= &v78 && v85 + 24 * v86 > &v78)
              {
                v75 = &v78 - v85;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
                v61 = v85;
                v60 = (v85 + v75);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v88, v86 + 1, 24);
                v60 = &v78;
                v61 = v85;
              }
            }

            v62 = &v61[24 * v86];
            v63 = *v60;
            *(v62 + 2) = v60[2];
            *v62 = v63;
            ++v86;
            if (v82)
            {
              mlir::InFlightDiagnostic::report(&v82);
            }
          }
        }
      }
    }
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
    }

    v64 = __p;
    if (__p)
    {
      v65 = v92;
      v66 = __p;
      if (v92 != __p)
      {
        do
        {
          v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
        }

        while (v65 != v64);
        v66 = __p;
      }

      v92 = v64;
      operator delete(v66);
    }

    v67 = v89;
    if (v89)
    {
      v68 = v90;
      v69 = v89;
      if (v90 != v89)
      {
        do
        {
          v71 = *--v68;
          v70 = v71;
          *v68 = 0;
          if (v71)
          {
            operator delete[](v70);
          }
        }

        while (v68 != v67);
        v69 = v89;
      }

      v90 = v67;
      operator delete(v69);
    }

    if (v85 != v88)
    {
      free(v85);
    }
  }

  return 0;
}