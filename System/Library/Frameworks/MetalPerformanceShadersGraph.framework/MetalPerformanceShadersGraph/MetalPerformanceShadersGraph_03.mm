uint64_t mlir::arith::ExtSIOp::fold(uint64_t *a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v75[0] = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v75);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v75[0] = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    Width = mlir::IntegerType::getWidth(v75);
    v6 = *(a2 + 40);
    v7 = *v6;
    if (!*v6)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v8 = *(*v7 + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v9 = Width;
    v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      __p = *v6;
      mlir::IntegerAttr::getValue(&__p, v73);
      llvm::APInt::sext(v73, v9, v75);
      if (LODWORD(v73[1]) >= 0x41 && v73[0])
      {
        operator delete[](v73[0]);
      }

      v7 = mlir::IntegerAttr::get(v10, v75);
      if (LODWORD(v75[1]) < 0x41)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_88;
    }

    if (mlir::DenseElementsAttr::classof(*v6))
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v75[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v75))
    {
      v71 = *v6;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v71, v75);
      *v73 = *v75;
      v74 = v76[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(v73, &__p);
      llvm::APInt::sext(&__p, v9, v75);
      if (v69 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (!v10)
      {
        goto LABEL_79;
      }

      v12 = *v10;
      {
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
LABEL_17:
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
LABEL_77:
          if (v16 != &v14[2 * v15] && *v16 == v13)
          {
            v54 = v16[1];
            v73[0] = v10;
            v73[1] = v54;
            if (!mlir::CallOpInterface::getArgOperands(v73))
            {
              goto LABEL_87;
            }

            goto LABEL_80;
          }

LABEL_79:
          v73[0] = v10;
          v73[1] = 0;
          if (!mlir::CallOpInterface::getArgOperands(v73))
          {
            goto LABEL_87;
          }

LABEL_80:
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v73);
          if (!v52)
          {
LABEL_84:
            v7 = mlir::DenseElementsAttr::get(v73[0], v73[1], v75, 1);
            if (LODWORD(v75[1]) >= 0x41)
            {
              goto LABEL_88;
            }

            return v7 & 0xFFFFFFFFFFFFFFFBLL;
          }

          v53 = 8 * v52;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v53 -= 8;
            if (!v53)
            {
              goto LABEL_84;
            }
          }

LABEL_87:
          v7 = 0;
          if (LODWORD(v75[1]) >= 0x41)
          {
LABEL_88:
            if (v75[0])
            {
              operator delete[](v75[0]);
            }
          }

          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      v15 = 0;
      v16 = v14;
      goto LABEL_77;
    }

    v71 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v6);
    v72 = v29;
    if (!v71 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v73), BYTE8(v74) != 1))
    {
      v7 = 0;
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(__p) = v73[0];
    if (LOBYTE(v73[0]) == 1)
    {
      v69 = v73[1];
    }

    else
    {
      (*(*v73[1] + 16))(&v69);
    }

    v70 = v74;
    v75[0] = v76;
    v75[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v71, v72);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v75, NumElements);
    v31 = mlir::ElementsAttr::getNumElements(v71, v72);
    if (v31)
    {
      v32 = v31;
      v33 = v70;
      do
      {
        if (BYTE1(__p))
        {
          v34 = 0;
        }

        else
        {
          v34 = v33;
        }

        if (__p == 1)
        {
          v35 = &v69[16 * v34];
          v65 = *(v35 + 2);
          if (v65 > 0x40)
          {
            llvm::APInt::initSlowCase(&v64, v35);
          }

          else
          {
            v64 = *v35;
          }
        }

        else
        {
          (*(*v69 + 24))(&v64);
        }

        llvm::APInt::sext(&v64, v9, &v66);
        if (v65 >= 0x41 && v64)
        {
          operator delete[](v64);
        }

        v36 = v75[0];
        if (LODWORD(v75[1]) >= HIDWORD(v75[1]))
        {
          if (v75[0] <= &v66 && v75[0] + 16 * LODWORD(v75[1]) > &v66)
          {
            v40 = &v66 - v75[0];
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v75, LODWORD(v75[1]) + 1);
            v36 = v75[0];
            v37 = (v75[0] + v40);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v75, LODWORD(v75[1]) + 1);
            v37 = &v66;
            v36 = v75[0];
          }
        }

        else
        {
          v37 = &v66;
        }

        v38 = v36 + 16 * LODWORD(v75[1]);
        v39 = *(v37 + 2);
        *(v38 + 8) = v39;
        if (v39 > 0x40)
        {
          llvm::APInt::initSlowCase(v38, v37);
          ++LODWORD(v75[1]);
          if (v67 >= 0x41)
          {
LABEL_60:
            if (v66)
            {
              operator delete[](v66);
            }
          }
        }

        else
        {
          *v38 = *v37;
          ++LODWORD(v75[1]);
          if (v67 >= 0x41)
          {
            goto LABEL_60;
          }
        }

        v33 = ++v70;
        --v32;
      }

      while (v32);
    }

    if (!v10)
    {
      goto LABEL_94;
    }

    v41 = *v10;
    {
      v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      if (v44)
      {
        goto LABEL_69;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      if (v44)
      {
LABEL_69:
        v45 = v43;
        v46 = v44;
        do
        {
          v47 = v46 >> 1;
          v48 = &v45[2 * (v46 >> 1)];
          v50 = *v48;
          v49 = v48 + 2;
          v46 += ~(v46 >> 1);
          if (v50 < v42)
          {
            v45 = v49;
          }

          else
          {
            v46 = v47;
          }
        }

        while (v46);
LABEL_92:
        if (v45 != &v43[2 * v44] && *v45 == v42)
        {
          v55 = v45[1];
          goto LABEL_95;
        }

LABEL_94:
        v55 = 0;
LABEL_95:
        v7 = mlir::DenseElementsAttr::get(v10, v55, v75[0], LODWORD(v75[1]));
        v56 = v75[0];
        if (LODWORD(v75[1]))
        {
          v57 = (v75[0] + 16 * LODWORD(v75[1]) - 8);
          v58 = -16 * LODWORD(v75[1]);
          v59 = v57;
          do
          {
            v60 = *v59;
            v59 -= 4;
            if (v60 >= 0x41)
            {
              v61 = *(v57 - 1);
              if (v61)
              {
                operator delete[](v61);
              }
            }

            v57 = v59;
            v58 += 16;
          }

          while (v58);
          v56 = v75[0];
        }

        if (v56 != v76)
        {
          free(v56);
        }

        if ((__p & 1) == 0)
        {
          v62 = v69;
          v69 = 0;
          if (v62)
          {
            (*(*v62 + 8))(v62);
          }
        }

        if ((BYTE8(v74) & 1) != 0 && (v73[0] & 1) == 0)
        {
          v63 = v73[1];
          v73[1] = 0;
          if (v63)
          {
            (*(*v63 + 8))(v63);
          }
        }

        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v44 = 0;
    v45 = v43;
    goto LABEL_92;
  }

  v22 = *a1;
  v23 = *(*a1 + 72);
  v24 = *(*(DefiningOp + 72) + 24);
  v25 = v23[1];
  if (v25)
  {
    v26 = *v23;
    *v25 = *v23;
    if (v26)
    {
      *(v26 + 8) = v25;
    }
  }

  v23[3] = v24;
  v23[1] = v24;
  v27 = *v24;
  *v23 = *v24;
  if (v27)
  {
    *(v27 + 8) = v23;
  }

  *v24 = v23;
  return (v22 - 16) | 4;
}

void mlir::arith::ExtSIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 2);
  v25 = "arith.extui";
  v26 = 11;
  mlir::Pattern::Pattern((v4 + 2), "arith.extsi", 11, v24, a2, &v25, 1uLL);
  *v4 = &unk_1F5AEE620;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ExtSIOfExtUI]";
  v26 = 85;
  v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
  if (v26 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v26;
  }

  v11 = &v25[v10];
  v12 = v26 - v10;
  if (v26 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v26 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

uint64_t mlir::arith::ExtFOp::fold(uint64_t *a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  v77 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v77);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id)
    {
      v5 = *a1;
      if ((*(*a1 - 8) ^ *(*(*(DefiningOp + 72) + 24) + 8)) <= 7)
      {
        v6 = DefiningOp;
        v77 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
        if (v77)
        {
          v7 = (mlir::arith::FastMathFlagsAttr::getValue(&v77) & 0x20) == 0;
          v77 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
          if (!v77)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v7 = 1;
          v77 = *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64);
          if (!v77)
          {
            goto LABEL_12;
          }
        }

        v8 = (mlir::arith::FastMathFlagsAttr::getValue(&v77) & 0x20) == 0 || v7;
        if ((v8 & 1) == 0)
        {
          return *(*(v6 + 72) + 24) | 4;
        }
      }
    }
  }

LABEL_12:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementTypeOrSelf);
  v10 = *(a2 + 48);
  v11 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v64 = FloatSemantics;
  v72 = v11;
  v12 = *v10;
  if (!*v10)
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v75 = *v10;
    LOBYTE(v73) = 1;
    mlir::FloatAttr::getValue(&v75, &v80);
    mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v77, &v64, &v80, &v73);
    v19 = v81[0];
    v17 = llvm::APFloatBase::PPCDoubleDouble(v20);
    if (v17 == v19)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v81);
      if (v73 != 1)
      {
        goto LABEL_99;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v81);
      if (v73 != 1)
      {
        goto LABEL_99;
      }
    }

    v21 = mlir::FloatAttr::get(v11, &v77);
    goto LABEL_33;
  }

  if (mlir::DenseElementsAttr::classof(*v10))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v77 = v14;
  if (v14 && mlir::DenseElementsAttr::isSplat(&v77))
  {
    v75 = *v10;
    LOBYTE(v73) = 1;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v75, &v80);
    mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v77, &v64, &v80, &v73);
    v15 = v81[0];
    v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
    if (v17 == v15)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v81);
      if (v73 != 1)
      {
        goto LABEL_99;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v81);
      if (v73 != 1)
      {
        goto LABEL_99;
      }
    }

    if (!v11)
    {
      goto LABEL_92;
    }

    v23 = *v11;
    {
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
        goto LABEL_40;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
LABEL_40:
        v27 = v25;
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[2 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 2;
          v28 += ~(v28 >> 1);
          if (v32 < v24)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
LABEL_90:
        if (v27 != &v25[2 * v26] && *v27 == v24)
        {
          v63 = v27[1];
          v80 = v11;
          v81[0] = v63;
          if (!mlir::CallOpInterface::getArgOperands(&v80))
          {
            goto LABEL_99;
          }

          goto LABEL_93;
        }

LABEL_92:
        v80 = v11;
        v81[0] = 0;
        if (!mlir::CallOpInterface::getArgOperands(&v80))
        {
          goto LABEL_99;
        }

LABEL_93:
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v80);
        if (v61)
        {
          v62 = 8 * v61;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v62 -= 8;
            if (!v62)
            {
              goto LABEL_97;
            }
          }

LABEL_99:
          v12 = 0;
          if (v17 != v78)
          {
            goto LABEL_100;
          }

LABEL_34:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v78);
          return v12 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_97:
        v21 = mlir::DenseElementsAttr::get(v80, v81[0], &v77, 1);
LABEL_33:
        v12 = v21;
        if (v17 != v78)
        {
LABEL_100:
          llvm::detail::IEEEFloat::~IEEEFloat(&v78);
          return v12 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_34;
      }
    }

    v26 = 0;
    v27 = v25;
    goto LABEL_90;
  }

  v70 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v10);
  v71 = v18;
  if (v70)
  {
    v69 = 1;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v70, &v80);
    if (v82 == 1)
    {
      v66 = v80;
      if (v80 == 1)
      {
        v67 = v81[0];
      }

      else
      {
        (*(*v81[0] + 16))(&v67);
      }

      v68 = v81[1];
      v77 = v79;
      v78 = 0x100000000;
      NumElements = mlir::ElementsAttr::getNumElements(v70, v71);
      if (NumElements > HIDWORD(v78))
      {
        v75 = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v77, v79, NumElements, 32, &v75);
        v35 = v34;
        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(&v77, v34);
        v36 = v75;
        if (v77 != v79)
        {
          free(v77);
        }

        v77 = v35;
        HIDWORD(v78) = v36;
      }

      v37 = mlir::ElementsAttr::getNumElements(v70, v71);
      if (!v37)
      {
LABEL_71:
        v49 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
        v40 = mlir::DenseElementsAttr::get(v49, v50, v77, v78);
        v12 = v40;
        v51 = v77;
        v52 = v78;
        if (v78)
        {
LABEL_74:
          v53 = llvm::APFloatBase::PPCDoubleDouble(v40);
          v54 = &v51[32 * v52 - 24];
          v55 = -32 * v52;
          do
          {
            while (v53 == *v54)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v54);
              v54 = (v56 - 32);
              v55 += 32;
              if (!v55)
              {
                goto LABEL_78;
              }
            }

            llvm::detail::IEEEFloat::~IEEEFloat(v54);
            v54 = (v57 - 32);
            v55 += 32;
          }

          while (v55);
LABEL_78:
          v51 = v77;
        }

LABEL_79:
        if (v51 != v79)
        {
          free(v51);
        }

        if ((v66 & 1) == 0)
        {
          v58 = v67;
          v67 = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

        if ((v82 & 1) != 0 && (v80 & 1) == 0)
        {
          v59 = v81[0];
          v81[0] = 0;
          if (v59)
          {
            (*(*v59 + 8))(v59);
          }
        }

        return v12 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v38 = v37;
      v39 = v68;
      while (1)
      {
        v41 = HIBYTE(v66) ? 0 : v39;
        if (v66 == 1)
        {
          v42 = v67 + 32 * v41;
          v44 = *(v42 + 1);
          v43 = (v42 + 8);
          if (llvm::APFloatBase::PPCDoubleDouble(v67) == v44)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(v74, v43);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(v74, v43);
          }
        }

        else
        {
          (*(*v67 + 24))(&v73);
        }

        mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v75, &v64, &v73, &v69);
        v45 = v74[0];
        v47 = llvm::APFloatBase::PPCDoubleDouble(v46);
        if (v47 != v45)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v74);
        v48 = v69;
        if (v69 == 1)
        {
          goto LABEL_65;
        }

LABEL_66:
        if (v47 == v76[0])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v76);
          if (!v48)
          {
            goto LABEL_73;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v76);
          if (!v48)
          {
LABEL_73:
            v12 = 0;
            v51 = v77;
            v52 = v78;
            if (v78)
            {
              goto LABEL_74;
            }

            goto LABEL_79;
          }
        }

        v39 = ++v68;
        if (!--v38)
        {
          goto LABEL_71;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v74);
      v48 = v69;
      if (v69 != 1)
      {
        goto LABEL_66;
      }

LABEL_65:
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v77, &v75);
      goto LABEL_66;
    }
  }

  v12 = 0;
  return v12 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::ExtFOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth > mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::ExtFOp::verify(mlir::Block ***this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::FloatType::getWidth(v36);
  v30[0] = v2;
  if (Width < mlir::FloatType::getWidth(v30))
  {
    return 1;
  }

  v30[0] = "result type ";
  v31 = 259;
  mlir::OpState::emitError(&v32, v30, v36);
  if (v36[0])
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, v2);
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v27 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v33;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v38;
    if (v36[0])
    {
      v33 = 3;
      v34 = " must be wider than operand type ";
      v35 = 33;
      v10 = &v33;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v9 > &v33)
        {
          v28 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
      if (v36[0])
      {
        v14 = &v33;
        mlir::DiagnosticArgument::DiagnosticArgument(&v33, ElementTypeOrSelf);
        v15 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v38 > &v33)
          {
            v29 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = v37;
            v14 = (v37 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v44;
      v20 = __p;
      if (v44 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v44 = v18;
      operator delete(v20);
    }

    v21 = v41;
    if (v41)
    {
      v22 = v42;
      v23 = v41;
      if (v42 != v41)
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
        v23 = v41;
      }

      v42 = v21;
      operator delete(v23);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v4;
}

uint64_t mlir::arith::TruncIOp::fold(uint64_t *a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v72[0] = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v72);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id || (v72[0] = *(*(*a1 + 72) + 24), (v5 = mlir::Value::getDefiningOp(v72)) != 0) && *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v72[0] = *(*(*a1 + 72) + 24);
    v6 = *(*(mlir::Value::getDefiningOp(v72) + 72) + 24);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
    v8 = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    v72[0] = ElementTypeOrSelf;
    Width = mlir::IntegerType::getWidth(v72);
    v70[0] = v8;
    if (Width > mlir::IntegerType::getWidth(v70))
    {
      v10 = *a1;
      v11 = *(*a1 + 72);
      v12 = v11[1];
      if (v12)
      {
        v13 = *v11;
        *v12 = *v11;
        if (v13)
        {
          *(v13 + 8) = v12;
        }
      }

      v11[3] = v6;
      v11[1] = v6;
      v14 = *v6;
      *v11 = *v6;
      if (v14)
      {
        *(v14 + 8) = v11;
      }

      *v6 = v11;
      return (v10 - 16) | 4;
    }

    if (ElementTypeOrSelf == v8)
    {
      return v6 | 4;
    }
  }

  v72[0] = *(*(*a1 + 72) + 24);
  v16 = mlir::Value::getDefiningOp(v72);
  if (!v16 || *(*(v16 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v72[0] = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    v17 = mlir::IntegerType::getWidth(v72);
    v18 = *(a2 + 40);
    v19 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    v69 = v19;
    v20 = *v18;
    if (!*v18)
    {
      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *(*v20 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v22 = v17;
    if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      __p = *v18;
      mlir::IntegerAttr::getValue(&__p, v70);
      llvm::APInt::trunc(v70, v22, v72);
      if (LODWORD(v70[1]) >= 0x41 && v70[0])
      {
        operator delete[](v70[0]);
      }

      v20 = mlir::IntegerAttr::get(v19, v72);
      if (LODWORD(v72[1]) < 0x41)
      {
        return v20 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_99;
    }

    if (mlir::DenseElementsAttr::classof(*v18))
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    v72[0] = v23;
    if (v23 && mlir::DenseElementsAttr::isSplat(v72))
    {
      v67 = *v18;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v67, v72);
      *v70 = *v72;
      v71 = v73;
      mlir::DenseElementsAttr::IntElementIterator::operator*(v70, &__p);
      llvm::APInt::trunc(&__p, v22, v72);
      if (v65 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (!v19)
      {
        goto LABEL_90;
      }

      v24 = *v19;
      {
        v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        if (v27)
        {
          goto LABEL_30;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        if (v27)
        {
LABEL_30:
          v28 = v26;
          v29 = v27;
          do
          {
            v30 = v29 >> 1;
            v31 = &v28[2 * (v29 >> 1)];
            v33 = *v31;
            v32 = v31 + 2;
            v29 += ~(v29 >> 1);
            if (v33 < v25)
            {
              v28 = v32;
            }

            else
            {
              v29 = v30;
            }
          }

          while (v29);
LABEL_88:
          if (v28 != &v26[2 * v27] && *v28 == v25)
          {
            v59 = v28[1];
            v70[0] = v19;
            v70[1] = v59;
            if (!mlir::CallOpInterface::getArgOperands(v70))
            {
              goto LABEL_97;
            }

LABEL_91:
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v70);
            if (!v57)
            {
LABEL_95:
              v20 = mlir::DenseElementsAttr::get(v70[0], v70[1], v72, 1);
              goto LABEL_98;
            }

            v58 = 8 * v57;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v58 -= 8;
              if (!v58)
              {
                goto LABEL_95;
              }
            }

LABEL_97:
            v20 = 0;
LABEL_98:
            if (LODWORD(v72[1]) >= 0x41)
            {
LABEL_99:
              if (v72[0])
              {
                operator delete[](v72[0]);
              }
            }

            return v20 & 0xFFFFFFFFFFFFFFFBLL;
          }

LABEL_90:
          v70[0] = v19;
          v70[1] = 0;
          if (!mlir::CallOpInterface::getArgOperands(v70))
          {
            goto LABEL_97;
          }

          goto LABEL_91;
        }
      }

      v27 = 0;
      v28 = v26;
      goto LABEL_88;
    }

    v67 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v18);
    v68 = v40;
    if (!v67 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v67, v70), BYTE8(v71) != 1))
    {
      v20 = 0;
      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(__p) = v70[0];
    if (LOBYTE(v70[0]) == 1)
    {
      v65 = v70[1];
    }

    else
    {
      (*(*v70[1] + 16))(&v65);
    }

    v66 = v71;
    v72[0] = &v73;
    v72[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v72, NumElements);
    v42 = mlir::ElementsAttr::getNumElements(v67, v68);
    if (!v42)
    {
LABEL_79:
      v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v69);
      v20 = mlir::DenseElementsAttr::get(v52, v53, v72[0], LODWORD(v72[1]));
      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(v72);
      if ((__p & 1) == 0)
      {
        v54 = v65;
        v65 = 0;
        if (v54)
        {
          (*(*v54 + 8))(v54);
        }
      }

      if ((BYTE8(v71) & 1) != 0 && (v70[0] & 1) == 0)
      {
        v55 = v70[1];
        v70[1] = 0;
        if (v55)
        {
          (*(*v55 + 8))(v55);
        }
      }

      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v43 = v42;
    v44 = v66;
    while (1)
    {
      if (BYTE1(__p))
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }

      if (__p == 1)
      {
        v46 = &v65[16 * v45];
        v61 = *(v46 + 2);
        if (v61 > 0x40)
        {
          llvm::APInt::initSlowCase(&v60, v46);
        }

        else
        {
          v60 = *v46;
        }
      }

      else
      {
        (*(*v65 + 24))(&v60);
      }

      llvm::APInt::trunc(&v60, v22, &v62);
      if (v61 >= 0x41 && v60)
      {
        operator delete[](v60);
      }

      v47 = v72[0];
      if (LODWORD(v72[1]) >= HIDWORD(v72[1]))
      {
        if (v72[0] <= &v62 && v72[0] + 16 * LODWORD(v72[1]) > &v62)
        {
          v51 = &v62 - v72[0];
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v72, LODWORD(v72[1]) + 1);
          v47 = v72[0];
          v48 = (v72[0] + v51);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v72, LODWORD(v72[1]) + 1);
          v48 = &v62;
          v47 = v72[0];
        }
      }

      else
      {
        v48 = &v62;
      }

      v49 = v47 + 16 * LODWORD(v72[1]);
      v50 = *(v48 + 2);
      *(v49 + 8) = v50;
      if (v50 > 0x40)
      {
        llvm::APInt::initSlowCase(v49, v48);
        ++LODWORD(v72[1]);
        if (v63 >= 0x41)
        {
LABEL_73:
          if (v62)
          {
            operator delete[](v62);
          }
        }
      }

      else
      {
        *v49 = *v48;
        ++LODWORD(v72[1]);
        if (v63 >= 0x41)
        {
          goto LABEL_73;
        }
      }

      v44 = ++v66;
      if (!--v43)
      {
        goto LABEL_79;
      }
    }
  }

  v72[0] = *(*(*a1 + 72) + 24);
  v34 = *(*(mlir::Value::getDefiningOp(v72) + 72) + 24);
  v35 = *a1;
  v36 = *(*a1 + 72);
  v37 = v36[1];
  if (v37)
  {
    v38 = *v36;
    *v37 = *v36;
    if (v38)
    {
      *(v38 + 8) = v37;
    }
  }

  v36[3] = v34;
  v36[1] = v34;
  v39 = *v34;
  *v36 = *v34;
  if (v39)
  {
    *(v39 + 8) = v36;
  }

  *v34 = v36;
  return (v35 - 16) | 4;
}

uint64_t mlir::arith::TruncIOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::IntegerType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth < mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

void mlir::arith::TruncIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  *&v105[0] = "arith.extsi";
  *(&v105[0] + 1) = 11;
  mlir::Pattern::Pattern((v4 + 2), "arith.trunci", 12, v104, a2, v105, 1uLL);
  *v4 = &unk_1F5AEE678;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v105[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TruncIExtSIToExtSI]";
  *(&v105[0] + 1) = 91;
  v9 = llvm::StringRef::find(v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105[0] + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v105[0] + 1);
  }

  v11 = *&v105[0] + v10;
  v12 = *(&v105[0] + 1) - v10;
  if (*(&v105[0] + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v105[0] + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      goto LABEL_133;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  *&v105[0] = "arith.extui";
  *(&v105[0] + 1) = 11;
  mlir::Pattern::Pattern((v24 + 2), "arith.trunci", 12, v104, a2, v105, 1uLL);
  *v24 = &unk_1F5AEE6D0;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *&v105[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TruncIExtUIToExtUI]";
  *(&v105[0] + 1) = 91;
  v29 = llvm::StringRef::find(v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105[0] + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v105[0] + 1);
  }

  v31 = *&v105[0] + v30;
  v32 = *(&v105[0] + 1) - v30;
  if (*(&v105[0] + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v105[0] + 1) - v30;
  }

  v34 = v31 + v33;
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
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
      goto LABEL_133;
    }

    v42 = operator new(8 * v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
  v44 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 2);
  v105[0] = xmmword_1E86D28B0;
  v105[1] = *&off_1E86D28C0;
  v105[2] = xmmword_1E86D28D0;
  mlir::Pattern::Pattern((v44 + 2), "arith.trunci", 12, v104, a2, v105, 3uLL);
  *v44 = &unk_1F5AEE728;
  if (*(v44 + 9))
  {
    v45 = v44[22];
    if (v45 <= v44[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v44 + 20), (v44 + 24), v45, 16);
    v44[22] = v44[22];
    v47 = a1[2];
    v46 = a1[3];
    if (v47 < v46)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  *&v105[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TruncIShrSIToTrunciShrUI]";
  *(&v105[0] + 1) = 97;
  v49 = llvm::StringRef::find(v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105[0] + 1) >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = *(&v105[0] + 1);
  }

  v51 = *&v105[0] + v50;
  v52 = *(&v105[0] + 1) - v50;
  if (*(&v105[0] + 1) - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = *(&v105[0] + 1) - v50;
  }

  v54 = v51 + v53;
  v55 = v52 - v53;
  if (v55 >= v55 - 1)
  {
    --v55;
  }

  *(v44 + 8) = v54;
  *(v44 + 9) = v55;
  v45 = v44[22];
  if (v45 > v44[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v44[22] = v45;
  v47 = a1[2];
  v46 = a1[3];
  if (v47 < v46)
  {
LABEL_56:
    *v47 = v44;
    v48 = v47 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v56 = a1[1];
  v57 = v47 - v56;
  v58 = (v47 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v60 = v46 - v56;
  if (v60 >> 2 > v59)
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
      goto LABEL_133;
    }

    v62 = operator new(8 * v61);
  }

  else
  {
    v62 = 0;
  }

  v63 = &v62[8 * v58];
  *v63 = v44;
  v48 = v63 + 8;
  memcpy(v62, v56, v57);
  a1[1] = v62;
  a1[2] = v48;
  a1[3] = &v62[8 * v61];
  if (v56)
  {
    operator delete(v56);
  }

LABEL_79:
  a1[2] = v48;
  v64 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 5);
  *&v105[0] = "arith.mulsi_extended";
  *(&v105[0] + 1) = 20;
  mlir::Pattern::Pattern((v64 + 2), "arith.trunci", 12, v104, a2, v105, 1uLL);
  *v64 = &unk_1F5AEE780;
  if (*(v64 + 9))
  {
    v65 = v64[22];
    if (v65 <= v64[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v64 + 20), (v64 + 24), v65, 16);
    v64[22] = v64[22];
    v67 = a1[2];
    v66 = a1[3];
    if (v67 < v66)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  *&v105[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TruncIShrUIMulIToMulSIExtended]";
  *(&v105[0] + 1) = 103;
  v69 = llvm::StringRef::find(v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105[0] + 1) >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = *(&v105[0] + 1);
  }

  v71 = *&v105[0] + v70;
  v72 = *(&v105[0] + 1) - v70;
  if (*(&v105[0] + 1) - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = *(&v105[0] + 1) - v70;
  }

  v74 = v71 + v73;
  v75 = v72 - v73;
  if (v75 >= v75 - 1)
  {
    --v75;
  }

  *(v64 + 8) = v74;
  *(v64 + 9) = v75;
  v65 = v64[22];
  if (v65 > v64[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v64[22] = v65;
  v67 = a1[2];
  v66 = a1[3];
  if (v67 < v66)
  {
LABEL_82:
    *v67 = v64;
    v68 = v67 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v76 = a1[1];
  v77 = v67 - v76;
  v78 = (v67 - v76) >> 3;
  v79 = v78 + 1;
  if ((v78 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v80 = v66 - v76;
  if (v80 >> 2 > v79)
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
      goto LABEL_133;
    }

    v82 = operator new(8 * v81);
  }

  else
  {
    v82 = 0;
  }

  v83 = &v82[8 * v78];
  *v83 = v64;
  v68 = v83 + 8;
  memcpy(v82, v76, v77);
  a1[1] = v82;
  a1[2] = v68;
  a1[3] = &v82[8 * v81];
  if (v76)
  {
    operator delete(v76);
  }

LABEL_105:
  a1[2] = v68;
  v84 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 5);
  *&v105[0] = "arith.mului_extended";
  *(&v105[0] + 1) = 20;
  mlir::Pattern::Pattern((v84 + 2), "arith.trunci", 12, v104, a2, v105, 1uLL);
  *v84 = &unk_1F5AEE7D8;
  if (*(v84 + 9))
  {
    v85 = v84[22];
    if (v85 <= v84[23])
    {
      goto LABEL_107;
    }

LABEL_118:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v84 + 20), (v84 + 24), v85, 16);
    v84[22] = v84[22];
    v87 = a1[2];
    v86 = a1[3];
    if (v87 < v86)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

  *&v105[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TruncIShrUIMulIToMulUIExtended]";
  *(&v105[0] + 1) = 103;
  v89 = llvm::StringRef::find(v105, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v105[0] + 1) >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = *(&v105[0] + 1);
  }

  v91 = *&v105[0] + v90;
  v92 = *(&v105[0] + 1) - v90;
  if (*(&v105[0] + 1) - v90 >= 0x12)
  {
    v93 = 18;
  }

  else
  {
    v93 = *(&v105[0] + 1) - v90;
  }

  v94 = v91 + v93;
  v95 = v92 - v93;
  if (v95 >= v95 - 1)
  {
    --v95;
  }

  *(v84 + 8) = v94;
  *(v84 + 9) = v95;
  v85 = v84[22];
  if (v85 > v84[23])
  {
    goto LABEL_118;
  }

LABEL_107:
  v84[22] = v85;
  v87 = a1[2];
  v86 = a1[3];
  if (v87 < v86)
  {
LABEL_108:
    *v87 = v84;
    v88 = v87 + 8;
    goto LABEL_131;
  }

LABEL_119:
  v96 = a1[1];
  v97 = v87 - v96;
  v98 = (v87 - v96) >> 3;
  v99 = v98 + 1;
  if ((v98 + 1) >> 61)
  {
LABEL_132:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v100 = v86 - v96;
  if (v100 >> 2 > v99)
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
    if (!(v101 >> 61))
    {
      v102 = operator new(8 * v101);
      goto LABEL_129;
    }

LABEL_133:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v102 = 0;
LABEL_129:
  v103 = &v102[8 * v98];
  *v103 = v84;
  v88 = v103 + 8;
  memcpy(v102, v96, v97);
  a1[1] = v102;
  a1[2] = v88;
  a1[3] = &v102[8 * v101];
  if (v96)
  {
    operator delete(v96);
  }

LABEL_131:
  a1[2] = v88;
}

BOOL mlir::arith::TruncIOp::verify(mlir::Block ***this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::IntegerType::getWidth(v36);
  v30[0] = v2;
  if (Width > mlir::IntegerType::getWidth(v30))
  {
    return 1;
  }

  v30[0] = "result type ";
  v31 = 259;
  mlir::OpState::emitError(&v32, v30, v36);
  if (v36[0])
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, v2);
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v27 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v33;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v38;
    if (v36[0])
    {
      v33 = 3;
      v34 = " must be shorter than operand type ";
      v35 = 35;
      v10 = &v33;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v9 > &v33)
        {
          v28 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
      if (v36[0])
      {
        v14 = &v33;
        mlir::DiagnosticArgument::DiagnosticArgument(&v33, ElementTypeOrSelf);
        v15 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v38 > &v33)
          {
            v29 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = v37;
            v14 = (v37 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v44;
      v20 = __p;
      if (v44 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v44 = v18;
      operator delete(v20);
    }

    v21 = v41;
    if (v41)
    {
      v22 = v42;
      v23 = v41;
      if (v42 != v41)
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
        v23 = v41;
      }

      v42 = v21;
      operator delete(v23);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v4;
}

unint64_t mlir::arith::TruncFOp::fold(void *a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementTypeOrSelf);
  v5 = *(a2 + 56);
  v6 = *(*a1 - 8);
  v80[0] = a1;
  v80[1] = FloatSemantics;
  v7 = *v5;
  if (!*v5)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = *(*v7 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFF8);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v90 = *v5;
    LOBYTE(v88) = 1;
    mlir::FloatAttr::getValue(&v90, &v95);
    mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v92, v80, &v95, &v88);
    v15 = v96[0];
    v13 = llvm::APFloatBase::PPCDoubleDouble(v16);
    if (v13 == v15)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    v17 = mlir::FloatAttr::get(v9, &v92);
    goto LABEL_22;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v92 = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&v92))
  {
    v90 = *v5;
    LOBYTE(v88) = 1;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v90, &v95);
    mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v92, v80, &v95, &v88);
    v11 = v96[0];
    v13 = llvm::APFloatBase::PPCDoubleDouble(v12);
    if (v13 == v11)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v96);
      if (v88 != 1)
      {
        goto LABEL_91;
      }
    }

    if (!v9)
    {
      goto LABEL_84;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_28;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_28:
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
LABEL_82:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v68 = v22[1];
          v95 = v9;
          v96[0] = v68;
          if (!mlir::CallOpInterface::getArgOperands(&v95))
          {
            goto LABEL_91;
          }

          goto LABEL_85;
        }

LABEL_84:
        v95 = v9;
        v96[0] = 0;
        if (!mlir::CallOpInterface::getArgOperands(&v95))
        {
          goto LABEL_91;
        }

LABEL_85:
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v95);
        if (v66)
        {
          v67 = 8 * v66;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v67 -= 8;
            if (!v67)
            {
              goto LABEL_89;
            }
          }

LABEL_91:
          v7 = 0;
          if (v13 != v93)
          {
            goto LABEL_92;
          }

LABEL_23:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v93);
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_89:
        v17 = mlir::DenseElementsAttr::get(v95, v96[0], &v92, 1);
LABEL_22:
        v7 = v17;
        if (v13 != v93)
        {
LABEL_92:
          llvm::detail::IEEEFloat::~IEEEFloat(&v93);
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_23;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_82;
  }

  v86 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v87 = v14;
  if (!v86 || (v85 = 1, mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v86, &v95), v97 != 1))
  {
    v7 = 0;
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v82 = v95;
  if (v95 == 1)
  {
    v83 = v96[0];
  }

  else
  {
    (*(*v96[0] + 16))(&v83);
  }

  v84 = v96[1];
  v92 = v94;
  v93 = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
  if (NumElements > HIDWORD(v93))
  {
    v90 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v92, v94, NumElements, 32, &v90);
    v30 = v29;
    v31 = v92;
    v32 = v93;
    if (v93)
    {
      v33 = llvm::APFloatBase::PPCDoubleDouble(v29);
      v34 = (v30 + 8);
      v35 = 32 * v32;
      v36 = (v31 + 8);
      do
      {
        while (v33 == v36->n128_u64[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v34, v36);
          v34 = v37 + 2;
          v36 += 2;
          v35 -= 32;
          if (!v35)
          {
            goto LABEL_41;
          }
        }

        v34 = (llvm::detail::IEEEFloat::IEEEFloat(v34, v36) + 32);
        v36 += 2;
        v35 -= 32;
      }

      while (v35);
LABEL_41:
      v31 = v92;
      if (v93)
      {
        v38 = (v92 + 32 * v93 - 24);
        v39 = -32 * v93;
        do
        {
          while (v33 == *v38)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
            v38 = (v40 - 32);
            v39 += 32;
            if (!v39)
            {
              goto LABEL_46;
            }
          }

          llvm::detail::IEEEFloat::~IEEEFloat(v38);
          v38 = (v41 - 32);
          v39 += 32;
        }

        while (v39);
LABEL_46:
        v31 = v92;
      }
    }

    v42 = v90;
    if (v31 != v94)
    {
      free(v31);
    }

    v92 = v30;
    HIDWORD(v93) = v42;
  }

  v43 = mlir::ElementsAttr::getNumElements(v86, v87);
  if (v43)
  {
    v44 = v43;
    v45 = v84;
    while (1)
    {
      v47 = HIBYTE(v82) ? 0 : v45;
      if (v82 == 1)
      {
        v48 = v83 + 32 * v47;
        v50 = *(v48 + 1);
        v49 = (v48 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v83) == v50)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v89, v49);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v89, v49);
        }
      }

      else
      {
        (*(*v83 + 24))(&v88);
      }

      mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v90, v80, &v88, &v85);
      v51 = v89[0];
      v53 = llvm::APFloatBase::PPCDoubleDouble(v52);
      if (v53 != v51)
      {
        break;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v89);
      v54 = v85;
      if (v85 == 1)
      {
        goto LABEL_64;
      }

LABEL_65:
      if (v53 == v91[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v91);
        if (!v54)
        {
          goto LABEL_79;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v91);
        if (!v54)
        {
LABEL_79:
          v7 = 0;
          goto LABEL_100;
        }
      }

      v45 = ++v84;
      if (!--v44)
      {
        goto LABEL_70;
      }
    }

    llvm::detail::IEEEFloat::~IEEEFloat(v89);
    v54 = v85;
    if (v85 != 1)
    {
      goto LABEL_65;
    }

LABEL_64:
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v92, &v90);
    goto LABEL_65;
  }

LABEL_70:
  if (!v9)
  {
    goto LABEL_98;
  }

  v55 = *v9;
  {
    v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    if (v58)
    {
      goto LABEL_73;
    }

LABEL_95:
    v58 = 0;
    v59 = v57;
    goto LABEL_96;
  }

  mlir::arith::ExtUIOp::fold();
  v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v57 = *(v55 + 8);
  v58 = *(v55 + 16);
  if (!v58)
  {
    goto LABEL_95;
  }

LABEL_73:
  v59 = v57;
  v60 = v58;
  do
  {
    v61 = v60 >> 1;
    v62 = &v59[2 * (v60 >> 1)];
    v64 = *v62;
    v63 = v62 + 2;
    v60 += ~(v60 >> 1);
    if (v64 < v56)
    {
      v59 = v63;
    }

    else
    {
      v60 = v61;
    }
  }

  while (v60);
LABEL_96:
  if (v59 == &v57[2 * v58] || *v59 != v56)
  {
LABEL_98:
    v70 = 0;
    goto LABEL_99;
  }

  v70 = v59[1];
LABEL_99:
  v46 = mlir::DenseElementsAttr::get(v9, v70, v92, v93);
  v7 = v46;
LABEL_100:
  v71 = v92;
  v72 = v93;
  if (v93)
  {
    v73 = llvm::APFloatBase::PPCDoubleDouble(v46);
    v74 = &v71[32 * v72 - 24];
    v75 = -32 * v72;
    do
    {
      while (v73 == *v74)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v74);
        v74 = (v76 - 32);
        v75 += 32;
        if (!v75)
        {
          goto LABEL_105;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v74);
      v74 = (v77 - 32);
      v75 += 32;
    }

    while (v75);
LABEL_105:
    v71 = v92;
  }

  if (v71 != v94)
  {
    free(v71);
  }

  if ((v82 & 1) == 0)
  {
    v78 = v83;
    v83 = 0;
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }
  }

  if ((v97 & 1) != 0 && (v95 & 1) == 0)
  {
    v79 = v96[0];
    v96[0] = 0;
    if (v79)
    {
      (*(*v79 + 8))(v79);
    }
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::TruncFOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth < mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::TruncFOp::verify(mlir::Block ***this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::FloatType::getWidth(v36);
  v30[0] = v2;
  if (Width > mlir::FloatType::getWidth(v30))
  {
    return 1;
  }

  v30[0] = "result type ";
  v31 = 259;
  mlir::OpState::emitError(&v32, v30, v36);
  if (v36[0])
  {
    v5 = &v33;
    mlir::DiagnosticArgument::DiagnosticArgument(&v33, v2);
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v33 && v37 + 24 * v38 > &v33)
      {
        v27 = &v33 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v33;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    v9 = ++v38;
    if (v36[0])
    {
      v33 = 3;
      v34 = " must be shorter than operand type ";
      v35 = 35;
      v10 = &v33;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v33 && v37 + 24 * v9 > &v33)
        {
          v28 = &v33 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v33;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v38;
      if (v36[0])
      {
        v14 = &v33;
        mlir::DiagnosticArgument::DiagnosticArgument(&v33, ElementTypeOrSelf);
        v15 = v37;
        if (v38 >= v39)
        {
          if (v37 <= &v33 && v37 + 24 * v38 > &v33)
          {
            v29 = &v33 - v37;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v15 = v37;
            v14 = (v37 + v29);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
            v14 = &v33;
            v15 = v37;
          }
        }

        v16 = &v15[24 * v38];
        v17 = *v14;
        *(v16 + 2) = *(v14 + 2);
        *v16 = v17;
        ++v38;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
  if (v36[0])
  {
    mlir::InFlightDiagnostic::report(v36);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v44;
      v20 = __p;
      if (v44 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v44 = v18;
      operator delete(v20);
    }

    v21 = v41;
    if (v41)
    {
      v22 = v42;
      v23 = v41;
      if (v42 != v41)
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
        v23 = v41;
      }

      v42 = v21;
      operator delete(v23);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }

  return v4;
}

void mlir::arith::AndIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 3);
  v45 = xmmword_1E86D28E0;
  v46 = *&off_1E86D28F0;
  mlir::Pattern::Pattern((v4 + 2), "arith.andi", 10, v44, a2, &v45, 2uLL);
  *v4 = &unk_1F5AEE830;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AndOfExtUI]";
  *(&v45 + 1) = 83;
  v9 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v45 + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v45 + 1);
  }

  v11 = v45 + v10;
  v12 = *(&v45 + 1) - v10;
  if (*(&v45 + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v45 + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 3);
  v45 = xmmword_1E86D2900;
  v46 = *&off_1E86D2910;
  mlir::Pattern::Pattern((v24 + 2), "arith.andi", 10, v44, a2, &v45, 2uLL);
  *v24 = &unk_1F5AEE888;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *&v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::AndOfExtSI]";
  *(&v45 + 1) = 83;
  v29 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v45 + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v45 + 1);
  }

  v31 = v45 + v30;
  v32 = *(&v45 + 1) - v30;
  if (*(&v45 + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v45 + 1) - v30;
  }

  v34 = v31 + v33;
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
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
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

void mlir::arith::OrIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 3);
  v45 = xmmword_1E86D2920;
  v46 = *&off_1E86D2930;
  mlir::Pattern::Pattern((v4 + 2), "arith.ori", 9, v44, a2, &v45, 2uLL);
  *v4 = &unk_1F5AEE8E0;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::OrOfExtUI]";
  *(&v45 + 1) = 82;
  v9 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v45 + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v45 + 1);
  }

  v11 = v45 + v10;
  v12 = *(&v45 + 1) - v10;
  if (*(&v45 + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v45 + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 3);
  v45 = xmmword_1E86D2940;
  v46 = *&off_1E86D2950;
  mlir::Pattern::Pattern((v24 + 2), "arith.ori", 9, v44, a2, &v45, 2uLL);
  *v24 = &unk_1F5AEE938;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *&v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::OrOfExtSI]";
  *(&v45 + 1) = 82;
  v29 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v45 + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v45 + 1);
  }

  v31 = v45 + v30;
  v32 = *(&v45 + 1) - v30;
  if (*(&v45 + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v45 + 1) - v30;
  }

  v34 = v31 + v33;
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
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
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

uint64_t mlir::arith::UIToFPOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::FloatType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::UIToFPOp::fold(void *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = ElementTypeOrSelf;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v82 = *v5;
    mlir::IntegerAttr::getValue(&v82, v80);
    mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(__p, v8, v80);
    if (LODWORD(v80[1]) >= 0x41 && v80[0])
    {
      operator delete[](v80[0]);
    }

    v6 = mlir::FloatAttr::get(v9, __p);
    v22 = __p[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v22)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
    }

    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  __p[0] = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(__p))
  {
    v75 = *v5;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v75, __p);
    *v80 = *__p;
    v81 = v85[0];
    mlir::DenseElementsAttr::IntElementIterator::operator*(v80, __p);
    mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, __p);
    if (LODWORD(__p[1]) >= 0x41 && __p[0])
    {
      operator delete[](__p[0]);
    }

    if (v9)
    {
      v11 = *v9;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
        }
      }

      v15 = v13;
      v16 = v14;
      do
      {
        v17 = v16 >> 1;
        v18 = &v15[2 * (v16 >> 1)];
        v20 = *v18;
        v19 = v18 + 2;
        v16 += ~(v16 >> 1);
        if (v20 < v12)
        {
          v15 = v19;
        }

        else
        {
          v16 = v17;
        }
      }

      while (v16);
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        __p[0] = v9;
        __p[1] = v59;
        ArgOperands = mlir::CallOpInterface::getArgOperands(__p);
        if (!ArgOperands)
        {
          goto LABEL_85;
        }

        goto LABEL_78;
      }
    }

LABEL_77:
    __p[0] = v9;
    __p[1] = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(__p);
    if (!ArgOperands)
    {
      goto LABEL_85;
    }

LABEL_78:
    ArgOperands = mlir::CallableOpInterface::getArgAttrsAttr(__p);
    if (!v56)
    {
LABEL_82:
      v6 = mlir::DenseElementsAttr::get(__p[0], __p[1], &v82, 1);
      v58 = v83[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v6) != v58)
      {
LABEL_86:
        llvm::detail::IEEEFloat::~IEEEFloat(v83);
        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_83;
    }

    v57 = 8 * v56;
    while (*ArgOperands != 0x8000000000000000)
    {
      ArgOperands = (ArgOperands + 8);
      v57 -= 8;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

LABEL_85:
    v6 = 0;
    v60 = v83[0];
    if (llvm::APFloatBase::PPCDoubleDouble(ArgOperands) != v60)
    {
      goto LABEL_86;
    }

LABEL_83:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v21;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v78, v80), BYTE8(v81) != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  LOWORD(v75) = v80[0];
  if (LOBYTE(v80[0]) == 1)
  {
    v76 = v80[1];
  }

  else
  {
    (*(*v80[1] + 16))(&v76);
  }

  v77 = v81;
  __p[0] = v85;
  __p[1] = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  if (NumElements > HIDWORD(__p[1]))
  {
    v82 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(__p, v85, NumElements, 32, &v82);
    v25 = v24;
    v26 = __p[0];
    v27 = LODWORD(__p[1]);
    if (LODWORD(__p[1]))
    {
      v28 = llvm::APFloatBase::PPCDoubleDouble(v24);
      v29 = (v25 + 8);
      v30 = 32 * v27;
      v31 = (v26 + 8);
      do
      {
        while (v28 == v31->n128_u64[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v29, v31);
          v29 = v32 + 2;
          v31 += 2;
          v30 -= 32;
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v29 = (llvm::detail::IEEEFloat::IEEEFloat(v29, v31) + 32);
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
LABEL_40:
      v26 = __p[0];
      if (LODWORD(__p[1]))
      {
        v33 = (__p[0] + 32 * LODWORD(__p[1]) - 24);
        v34 = -32 * LODWORD(__p[1]);
        do
        {
          while (v28 == *v33)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v33);
            v33 = (v35 - 32);
            v34 += 32;
            if (!v34)
            {
              goto LABEL_45;
            }
          }

          llvm::detail::IEEEFloat::~IEEEFloat(v33);
          v33 = (v36 - 32);
          v34 += 32;
        }

        while (v34);
LABEL_45:
        v26 = __p[0];
      }
    }

    v37 = v82;
    if (v26 != v85)
    {
      free(v26);
    }

    __p[0] = v25;
    HIDWORD(__p[1]) = v37;
  }

  v38 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v38)
  {
    v39 = v38;
    v40 = v77;
    do
    {
      while (1)
      {
        if (BYTE1(v75))
        {
          v41 = 0;
        }

        else
        {
          v41 = v40;
        }

        if (v75 == 1)
        {
          v42 = &v76[16 * v41];
          v74 = *(v42 + 2);
          if (v74 > 0x40)
          {
            llvm::APInt::initSlowCase(&v73, v42);
          }

          else
          {
            v73 = *v42;
          }
        }

        else
        {
          (*(*v76 + 24))(&v73);
        }

        mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, &v73);
        if (v74 >= 0x41 && v73)
        {
          operator delete[](v73);
        }

        v43 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(__p, &v82);
        v44 = v83[0];
        if (llvm::APFloatBase::PPCDoubleDouble(v43) != v44)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
        v40 = ++v77;
        if (!--v39)
        {
          goto LABEL_65;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v83);
      v40 = ++v77;
      --v39;
    }

    while (v39);
  }

LABEL_65:
  if (!v9)
  {
    goto LABEL_91;
  }

  v45 = *v9;
  {
    v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v47 = *(v45 + 8);
    v48 = *(v45 + 16);
    if (v48)
    {
      goto LABEL_68;
    }

LABEL_88:
    v48 = 0;
    v49 = v47;
    goto LABEL_89;
  }

  mlir::arith::ExtUIOp::fold();
  v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v47 = *(v45 + 8);
  v48 = *(v45 + 16);
  if (!v48)
  {
    goto LABEL_88;
  }

LABEL_68:
  v49 = v47;
  v50 = v48;
  do
  {
    v51 = v50 >> 1;
    v52 = &v49[2 * (v50 >> 1)];
    v54 = *v52;
    v53 = v52 + 2;
    v50 += ~(v50 >> 1);
    if (v54 < v46)
    {
      v49 = v53;
    }

    else
    {
      v50 = v51;
    }
  }

  while (v50);
LABEL_89:
  if (v49 != &v47[2 * v48] && *v49 == v46)
  {
    v61 = v49[1];
    goto LABEL_92;
  }

LABEL_91:
  v61 = 0;
LABEL_92:
  v62 = mlir::DenseElementsAttr::get(v9, v61, __p[0], LODWORD(__p[1]));
  v6 = v62;
  v63 = __p[0];
  v64 = LODWORD(__p[1]);
  if (LODWORD(__p[1]))
  {
    v65 = llvm::APFloatBase::PPCDoubleDouble(v62);
    v66 = &v63[32 * v64 - 24];
    v67 = -32 * v64;
    do
    {
      while (v65 == *v66)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v66);
        v66 = (v68 - 32);
        v67 += 32;
        if (!v67)
        {
          goto LABEL_97;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v66);
      v66 = (v69 - 32);
      v67 += 32;
    }

    while (v67);
LABEL_97:
    v63 = __p[0];
  }

  if (v63 != v85)
  {
    free(v63);
  }

  if ((v75 & 1) == 0)
  {
    v70 = v76;
    v76 = 0;
    if (v70)
    {
      (*(*v70 + 8))(v70);
    }
  }

  if ((BYTE8(v81) & 1) != 0 && (v80[0] & 1) == 0)
  {
    v71 = v80[1];
    v80[1] = 0;
    if (v71)
    {
      (*(*v71 + 8))(v71);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::SIToFPOp::fold(void *a1, uint64_t a2)
{
  v86 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = ElementTypeOrSelf;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v82 = *v5;
    mlir::IntegerAttr::getValue(&v82, v80);
    mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(__p, v8, v80);
    if (LODWORD(v80[1]) >= 0x41 && v80[0])
    {
      operator delete[](v80[0]);
    }

    v6 = mlir::FloatAttr::get(v9, __p);
    v22 = __p[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v22)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&__p[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&__p[1]);
    }

    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  __p[0] = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(__p))
  {
    v75 = *v5;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v75, __p);
    *v80 = *__p;
    v81 = v85[0];
    mlir::DenseElementsAttr::IntElementIterator::operator*(v80, __p);
    mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, __p);
    if (LODWORD(__p[1]) >= 0x41 && __p[0])
    {
      operator delete[](__p[0]);
    }

    if (v9)
    {
      v11 = *v9;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_77;
        }
      }

      v15 = v13;
      v16 = v14;
      do
      {
        v17 = v16 >> 1;
        v18 = &v15[2 * (v16 >> 1)];
        v20 = *v18;
        v19 = v18 + 2;
        v16 += ~(v16 >> 1);
        if (v20 < v12)
        {
          v15 = v19;
        }

        else
        {
          v16 = v17;
        }
      }

      while (v16);
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        __p[0] = v9;
        __p[1] = v59;
        ArgOperands = mlir::CallOpInterface::getArgOperands(__p);
        if (!ArgOperands)
        {
          goto LABEL_85;
        }

        goto LABEL_78;
      }
    }

LABEL_77:
    __p[0] = v9;
    __p[1] = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(__p);
    if (!ArgOperands)
    {
      goto LABEL_85;
    }

LABEL_78:
    ArgOperands = mlir::CallableOpInterface::getArgAttrsAttr(__p);
    if (!v56)
    {
LABEL_82:
      v6 = mlir::DenseElementsAttr::get(__p[0], __p[1], &v82, 1);
      v58 = v83[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v6) != v58)
      {
LABEL_86:
        llvm::detail::IEEEFloat::~IEEEFloat(v83);
        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_83;
    }

    v57 = 8 * v56;
    while (*ArgOperands != 0x8000000000000000)
    {
      ArgOperands = (ArgOperands + 8);
      v57 -= 8;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

LABEL_85:
    v6 = 0;
    v60 = v83[0];
    if (llvm::APFloatBase::PPCDoubleDouble(ArgOperands) != v60)
    {
      goto LABEL_86;
    }

LABEL_83:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v21;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v78, v80), BYTE8(v81) != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  LOWORD(v75) = v80[0];
  if (LOBYTE(v80[0]) == 1)
  {
    v76 = v80[1];
  }

  else
  {
    (*(*v80[1] + 16))(&v76);
  }

  v77 = v81;
  __p[0] = v85;
  __p[1] = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  if (NumElements > HIDWORD(__p[1]))
  {
    v82 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(__p, v85, NumElements, 32, &v82);
    v25 = v24;
    v26 = __p[0];
    v27 = LODWORD(__p[1]);
    if (LODWORD(__p[1]))
    {
      v28 = llvm::APFloatBase::PPCDoubleDouble(v24);
      v29 = (v25 + 8);
      v30 = 32 * v27;
      v31 = (v26 + 8);
      do
      {
        while (v28 == v31->n128_u64[0])
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v29, v31);
          v29 = v32 + 2;
          v31 += 2;
          v30 -= 32;
          if (!v30)
          {
            goto LABEL_40;
          }
        }

        v29 = (llvm::detail::IEEEFloat::IEEEFloat(v29, v31) + 32);
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
LABEL_40:
      v26 = __p[0];
      if (LODWORD(__p[1]))
      {
        v33 = (__p[0] + 32 * LODWORD(__p[1]) - 24);
        v34 = -32 * LODWORD(__p[1]);
        do
        {
          while (v28 == *v33)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v33);
            v33 = (v35 - 32);
            v34 += 32;
            if (!v34)
            {
              goto LABEL_45;
            }
          }

          llvm::detail::IEEEFloat::~IEEEFloat(v33);
          v33 = (v36 - 32);
          v34 += 32;
        }

        while (v34);
LABEL_45:
        v26 = __p[0];
      }
    }

    v37 = v82;
    if (v26 != v85)
    {
      free(v26);
    }

    __p[0] = v25;
    HIDWORD(__p[1]) = v37;
  }

  v38 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v38)
  {
    v39 = v38;
    v40 = v77;
    do
    {
      while (1)
      {
        if (BYTE1(v75))
        {
          v41 = 0;
        }

        else
        {
          v41 = v40;
        }

        if (v75 == 1)
        {
          v42 = &v76[16 * v41];
          v74 = *(v42 + 2);
          if (v74 > 0x40)
          {
            llvm::APInt::initSlowCase(&v73, v42);
          }

          else
          {
            v73 = *v42;
          }
        }

        else
        {
          (*(*v76 + 24))(&v73);
        }

        mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v82, v8, &v73);
        if (v74 >= 0x41 && v73)
        {
          operator delete[](v73);
        }

        v43 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(__p, &v82);
        v44 = v83[0];
        if (llvm::APFloatBase::PPCDoubleDouble(v43) != v44)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v83);
        v40 = ++v77;
        if (!--v39)
        {
          goto LABEL_65;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v83);
      v40 = ++v77;
      --v39;
    }

    while (v39);
  }

LABEL_65:
  if (!v9)
  {
    goto LABEL_91;
  }

  v45 = *v9;
  {
    v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v47 = *(v45 + 8);
    v48 = *(v45 + 16);
    if (v48)
    {
      goto LABEL_68;
    }

LABEL_88:
    v48 = 0;
    v49 = v47;
    goto LABEL_89;
  }

  mlir::arith::ExtUIOp::fold();
  v46 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v47 = *(v45 + 8);
  v48 = *(v45 + 16);
  if (!v48)
  {
    goto LABEL_88;
  }

LABEL_68:
  v49 = v47;
  v50 = v48;
  do
  {
    v51 = v50 >> 1;
    v52 = &v49[2 * (v50 >> 1)];
    v54 = *v52;
    v53 = v52 + 2;
    v50 += ~(v50 >> 1);
    if (v54 < v46)
    {
      v49 = v53;
    }

    else
    {
      v50 = v51;
    }
  }

  while (v50);
LABEL_89:
  if (v49 != &v47[2 * v48] && *v49 == v46)
  {
    v61 = v49[1];
    goto LABEL_92;
  }

LABEL_91:
  v61 = 0;
LABEL_92:
  v62 = mlir::DenseElementsAttr::get(v9, v61, __p[0], LODWORD(__p[1]));
  v6 = v62;
  v63 = __p[0];
  v64 = LODWORD(__p[1]);
  if (LODWORD(__p[1]))
  {
    v65 = llvm::APFloatBase::PPCDoubleDouble(v62);
    v66 = &v63[32 * v64 - 24];
    v67 = -32 * v64;
    do
    {
      while (v65 == *v66)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v66);
        v66 = (v68 - 32);
        v67 += 32;
        if (!v67)
        {
          goto LABEL_97;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v66);
      v66 = (v69 - 32);
      v67 += 32;
    }

    while (v67);
LABEL_97:
    v63 = __p[0];
  }

  if (v63 != v85)
  {
    free(v63);
  }

  if ((v75 & 1) == 0)
  {
    v70 = v76;
    v76 = 0;
    if (v70)
    {
      (*(*v70 + 8))(v70);
    }
  }

  if ((BYTE8(v81) & 1) != 0 && (v80[0] & 1) == 0)
  {
    v71 = v80[1];
    v80[1] = 0;
    if (v71)
    {
      (*(*v71 + 8))(v71);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::FPToUIOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::IntegerType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::FPToUIOp::fold(void *a1, uint64_t a2)
{
  v85[6] = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  Width = mlir::IntegerType::getWidth(&ElementTypeOrSelf);
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = Width;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v81 = *v5;
    mlir::FloatAttr::getValue(&v81, &ElementTypeOrSelf);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    else
    {
      v74 = 0;
    }

    LOBYTE(v71) = 0;
    BYTE4(v75) = 1;
    v12 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v13 = v12;
    v14 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v13 == 1)
      {
LABEL_21:
        v6 = 0;
        if (v75 < 0x41)
        {
          return v6 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_97:
        if (v74)
        {
          operator delete[](v74);
        }

        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v13 == 1)
      {
        goto LABEL_21;
      }
    }

    v6 = mlir::IntegerAttr::get(v9, &v74);
    if (v75 < 0x41)
    {
      return v6 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_97;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  ElementTypeOrSelf = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&ElementTypeOrSelf))
  {
    v81 = *v5;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v81, &ElementTypeOrSelf);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    else
    {
      v74 = 0;
    }

    LOBYTE(v71) = 0;
    BYTE4(v75) = 1;
    v15 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v16 = v15;
    v17 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_95;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_95;
      }
    }

    if (!v9)
    {
      goto LABEL_88;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_34:
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
LABEL_86:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v57 = v22[1];
          ElementTypeOrSelf = v9;
          v84 = v57;
          if (!mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf))
          {
            goto LABEL_95;
          }

LABEL_89:
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
          if (!v55)
          {
LABEL_93:
            v6 = mlir::DenseElementsAttr::get(ElementTypeOrSelf, v84, &v74, 1);
            goto LABEL_96;
          }

          v56 = 8 * v55;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v56 -= 8;
            if (!v56)
            {
              goto LABEL_93;
            }
          }

LABEL_95:
          v6 = 0;
LABEL_96:
          if (v75 < 0x41)
          {
            return v6 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_97;
        }

LABEL_88:
        ElementTypeOrSelf = v9;
        v84 = 0;
        if (!mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf))
        {
          goto LABEL_95;
        }

        goto LABEL_89;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_86;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v11;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v78, &v74), v77 != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v71 = v74;
  if (v74 == 1)
  {
    v72 = v75;
  }

  else
  {
    (*(*v75 + 16))(&v72);
  }

  v73 = v76;
  ElementTypeOrSelf = v85;
  v84 = 0x300000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  llvm::SmallVectorImpl<llvm::APInt>::reserve(&ElementTypeOrSelf, NumElements);
  v29 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v29)
  {
    v30 = v29;
    v31 = v73;
    do
    {
      if (HIBYTE(v71))
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      if (v71 == 1)
      {
        v33 = v72 + 32 * v32;
        v35 = *(v33 + 1);
        v34 = (v33 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v72) == v35)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
LABEL_49:
            llvm::APInt::initSlowCase(&__p, 0, 0);
            goto LABEL_52;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        (*(*v72 + 24))(&v81);
        v69 = v8;
        if (v8 > 0x40)
        {
          goto LABEL_49;
        }
      }

      __p = 0;
LABEL_52:
      v80 = 0;
      v70 = 1;
      v36 = llvm::APFloat::convertToInteger(&v81, &__p, 0, &v80);
      v37 = v36;
      v38 = v82[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v36) == v38)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v82);
        if (v37 == 1)
        {
LABEL_54:
          if (v69 < 0x41)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v82);
        if (v37 == 1)
        {
          goto LABEL_54;
        }
      }

      v39 = ElementTypeOrSelf;
      if (v84 >= HIDWORD(v84))
      {
        if (ElementTypeOrSelf <= &__p && ElementTypeOrSelf + 16 * v84 > &__p)
        {
          v43 = &__p - ElementTypeOrSelf;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          v39 = ElementTypeOrSelf;
          p_p = (ElementTypeOrSelf + v43);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          p_p = &__p;
          v39 = ElementTypeOrSelf;
        }
      }

      else
      {
        p_p = &__p;
      }

      v41 = v39 + 16 * v84;
      v42 = *(p_p + 2);
      *(v41 + 8) = v42;
      if (v42 > 0x40)
      {
        llvm::APInt::initSlowCase(v41, p_p);
        LODWORD(v84) = v84 + 1;
        if (v69 < 0x41)
        {
          goto LABEL_65;
        }
      }

      else
      {
        *v41 = *p_p;
        LODWORD(v84) = v84 + 1;
        if (v69 < 0x41)
        {
          goto LABEL_65;
        }
      }

LABEL_63:
      if (__p)
      {
        operator delete[](__p);
      }

LABEL_65:
      if (v37 == 1)
      {
        v6 = 0;
        goto LABEL_105;
      }

      v31 = ++v73;
      --v30;
    }

    while (v30);
  }

  if (!v9)
  {
    goto LABEL_103;
  }

  v44 = *v9;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = *(v44 + 8);
    v47 = *(v44 + 16);
    if (v47)
    {
      goto LABEL_77;
    }

LABEL_100:
    v47 = 0;
    v48 = v46;
    goto LABEL_101;
  }

  mlir::arith::ExtUIOp::fold();
  v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  if (!v47)
  {
    goto LABEL_100;
  }

LABEL_77:
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
LABEL_101:
  if (v48 == &v46[2 * v47] || *v48 != v45)
  {
LABEL_103:
    v58 = 0;
    goto LABEL_104;
  }

  v58 = v48[1];
LABEL_104:
  v6 = mlir::DenseElementsAttr::get(v9, v58, ElementTypeOrSelf, v84);
LABEL_105:
  v59 = ElementTypeOrSelf;
  if (v84)
  {
    v60 = (ElementTypeOrSelf + 16 * v84 - 8);
    v61 = -16 * v84;
    v62 = v60;
    do
    {
      v63 = *v62;
      v62 -= 4;
      if (v63 >= 0x41)
      {
        v64 = *(v60 - 1);
        if (v64)
        {
          operator delete[](v64);
        }
      }

      v60 = v62;
      v61 += 16;
    }

    while (v61);
    v59 = ElementTypeOrSelf;
  }

  if (v59 != v85)
  {
    free(v59);
  }

  if ((v71 & 1) == 0)
  {
    v65 = v72;
    v72 = 0;
    if (v65)
    {
      (*(*v65 + 8))(v65);
    }
  }

  if ((v77 & 1) != 0 && (v74 & 1) == 0)
  {
    v66 = v75;
    v75 = 0;
    if (v66)
    {
      (*(*v66 + 8))(v66);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::FPToSIOp::fold(void *a1, uint64_t a2)
{
  v85[6] = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  Width = mlir::IntegerType::getWidth(&ElementTypeOrSelf);
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = Width;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v81 = *v5;
    mlir::FloatAttr::getValue(&v81, &ElementTypeOrSelf);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    else
    {
      v74 = 0;
    }

    LOBYTE(v71) = 0;
    BYTE4(v75) = 0;
    v12 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v13 = v12;
    v14 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v13 == 1)
      {
LABEL_21:
        v6 = 0;
        if (v75 < 0x41)
        {
          return v6 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_97:
        if (v74)
        {
          operator delete[](v74);
        }

        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v13 == 1)
      {
        goto LABEL_21;
      }
    }

    v6 = mlir::IntegerAttr::get(v9, &v74);
    if (v75 < 0x41)
    {
      return v6 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_97;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  ElementTypeOrSelf = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&ElementTypeOrSelf))
  {
    v81 = *v5;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v81, &ElementTypeOrSelf);
    LODWORD(v75) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, 0, 0);
    }

    else
    {
      v74 = 0;
    }

    LOBYTE(v71) = 0;
    BYTE4(v75) = 0;
    v15 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v74, 0, &v71);
    v16 = v15;
    v17 = v84;
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_95;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v84);
      if (v16 == 1)
      {
        goto LABEL_95;
      }
    }

    if (!v9)
    {
      goto LABEL_88;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_34:
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
LABEL_86:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v57 = v22[1];
          ElementTypeOrSelf = v9;
          v84 = v57;
          if (!mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf))
          {
            goto LABEL_95;
          }

LABEL_89:
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&ElementTypeOrSelf);
          if (!v55)
          {
LABEL_93:
            v6 = mlir::DenseElementsAttr::get(ElementTypeOrSelf, v84, &v74, 1);
            goto LABEL_96;
          }

          v56 = 8 * v55;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v56 -= 8;
            if (!v56)
            {
              goto LABEL_93;
            }
          }

LABEL_95:
          v6 = 0;
LABEL_96:
          if (v75 < 0x41)
          {
            return v6 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_97;
        }

LABEL_88:
        ElementTypeOrSelf = v9;
        v84 = 0;
        if (!mlir::CallOpInterface::getArgOperands(&ElementTypeOrSelf))
        {
          goto LABEL_95;
        }

        goto LABEL_89;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_86;
  }

  v78 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v79 = v11;
  if (!v78 || (mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v78, &v74), v77 != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v71 = v74;
  if (v74 == 1)
  {
    v72 = v75;
  }

  else
  {
    (*(*v75 + 16))(&v72);
  }

  v73 = v76;
  ElementTypeOrSelf = v85;
  v84 = 0x300000000;
  NumElements = mlir::ElementsAttr::getNumElements(v78, v79);
  llvm::SmallVectorImpl<llvm::APInt>::reserve(&ElementTypeOrSelf, NumElements);
  v29 = mlir::ElementsAttr::getNumElements(v78, v79);
  if (v29)
  {
    v30 = v29;
    v31 = v73;
    do
    {
      if (HIBYTE(v71))
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      if (v71 == 1)
      {
        v33 = v72 + 32 * v32;
        v35 = *(v33 + 1);
        v34 = (v33 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v72) == v35)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
LABEL_49:
            llvm::APInt::initSlowCase(&__p, 0, 0);
            goto LABEL_52;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v82, v34);
          v69 = v8;
          if (v8 > 0x40)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        (*(*v72 + 24))(&v81);
        v69 = v8;
        if (v8 > 0x40)
        {
          goto LABEL_49;
        }
      }

      __p = 0;
LABEL_52:
      v80 = 0;
      v70 = 0;
      v36 = llvm::APFloat::convertToInteger(&v81, &__p, 0, &v80);
      v37 = v36;
      v38 = v82[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v36) == v38)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v82);
        if (v37 == 1)
        {
LABEL_54:
          if (v69 < 0x41)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v82);
        if (v37 == 1)
        {
          goto LABEL_54;
        }
      }

      v39 = ElementTypeOrSelf;
      if (v84 >= HIDWORD(v84))
      {
        if (ElementTypeOrSelf <= &__p && ElementTypeOrSelf + 16 * v84 > &__p)
        {
          v43 = &__p - ElementTypeOrSelf;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          v39 = ElementTypeOrSelf;
          p_p = (ElementTypeOrSelf + v43);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ElementTypeOrSelf, v84 + 1);
          p_p = &__p;
          v39 = ElementTypeOrSelf;
        }
      }

      else
      {
        p_p = &__p;
      }

      v41 = v39 + 16 * v84;
      v42 = *(p_p + 2);
      *(v41 + 8) = v42;
      if (v42 > 0x40)
      {
        llvm::APInt::initSlowCase(v41, p_p);
        LODWORD(v84) = v84 + 1;
        if (v69 < 0x41)
        {
          goto LABEL_65;
        }
      }

      else
      {
        *v41 = *p_p;
        LODWORD(v84) = v84 + 1;
        if (v69 < 0x41)
        {
          goto LABEL_65;
        }
      }

LABEL_63:
      if (__p)
      {
        operator delete[](__p);
      }

LABEL_65:
      if (v37 == 1)
      {
        v6 = 0;
        goto LABEL_105;
      }

      v31 = ++v73;
      --v30;
    }

    while (v30);
  }

  if (!v9)
  {
    goto LABEL_103;
  }

  v44 = *v9;
  {
    v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v46 = *(v44 + 8);
    v47 = *(v44 + 16);
    if (v47)
    {
      goto LABEL_77;
    }

LABEL_100:
    v47 = 0;
    v48 = v46;
    goto LABEL_101;
  }

  mlir::arith::ExtUIOp::fold();
  v45 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  if (!v47)
  {
    goto LABEL_100;
  }

LABEL_77:
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
LABEL_101:
  if (v48 == &v46[2 * v47] || *v48 != v45)
  {
LABEL_103:
    v58 = 0;
    goto LABEL_104;
  }

  v58 = v48[1];
LABEL_104:
  v6 = mlir::DenseElementsAttr::get(v9, v58, ElementTypeOrSelf, v84);
LABEL_105:
  v59 = ElementTypeOrSelf;
  if (v84)
  {
    v60 = (ElementTypeOrSelf + 16 * v84 - 8);
    v61 = -16 * v84;
    v62 = v60;
    do
    {
      v63 = *v62;
      v62 -= 4;
      if (v63 >= 0x41)
      {
        v64 = *(v60 - 1);
        if (v64)
        {
          operator delete[](v64);
        }
      }

      v60 = v62;
      v61 += 16;
    }

    while (v61);
    v59 = ElementTypeOrSelf;
  }

  if (v59 != v85)
  {
    free(v59);
  }

  if ((v71 & 1) == 0)
  {
    v65 = v72;
    v72 = 0;
    if (v65)
    {
      (*(*v65 + 8))(v65);
    }
  }

  if ((v77 & 1) != 0 && (v74 & 1) == 0)
  {
    v66 = v75;
    v75 = 0;
    if (v66)
    {
      (*(*v66 + 8))(v66);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t areIndexCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v11 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v8);
    result = 0;
    v10 = v9;
    if (v11)
    {
      if (v9)
      {
        if (mlir::Type::isIndex(&v11) && mlir::Type::isSignlessInteger(&v10))
        {
          return 1;
        }

        else
        {
          result = mlir::Type::isSignlessInteger(&v11);
          if (result)
          {
            return mlir::Type::isIndex(&v10);
          }
        }
      }
    }
  }

  return result;
}

unint64_t mlir::arith::IndexCastOp::fold(void *a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = ElementTypeOrSelf;
  }

  else
  {
    v5 = 0;
  }

  v69[0] = v5;
  if (v5)
  {
    Width = mlir::IntegerType::getWidth(v69);
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  else
  {
    Width = 64;
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v9 = *(*v8 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(v8))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v69[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v69))
    {
      v65 = *v7;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v65, v69);
      *v67 = *v69;
      v68 = v70[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(v67, &__p);
      llvm::APInt::sextOrTrunc(&__p, Width, v69);
      if (v63 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v10)
      {
        v12 = *v10;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
          }
        }

        else
        {
          mlir::arith::ExtUIOp::fold();
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
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
          v47 = v16[1];
          v67[0] = v10;
          v67[1] = v47;
          if (!mlir::CallOpInterface::getArgOperands(v67))
          {
            goto LABEL_85;
          }

          goto LABEL_78;
        }
      }

LABEL_77:
      v67[0] = v10;
      v67[1] = 0;
      if (!mlir::CallOpInterface::getArgOperands(v67))
      {
        goto LABEL_85;
      }

LABEL_78:
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v67);
      if (v45)
      {
        v46 = 8 * v45;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_82;
          }
        }

LABEL_85:
        v8 = 0;
        if (LODWORD(v69[1]) < 0x41)
        {
          return v8 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_86;
      }

LABEL_82:
      v8 = mlir::DenseElementsAttr::get(v67[0], v67[1], v69, 1);
      if (LODWORD(v69[1]) < 0x41)
      {
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_86:
      if (v69[0])
      {
        operator delete[](v69[0]);
      }

      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v65 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v7);
    v66 = v22;
    if (!v65 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, v67), BYTE8(v68) != 1))
    {
      v8 = 0;
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(__p) = v67[0];
    if (LOBYTE(v67[0]) == 1)
    {
      v63 = v67[1];
    }

    else
    {
      (*(*v67[1] + 16))(&v63);
    }

    v64 = v68;
    v69[0] = v70;
    v69[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v69, NumElements);
    v24 = mlir::ElementsAttr::getNumElements(v65, v66);
    if (v24)
    {
      v25 = v24;
      v26 = v64;
      do
      {
        if (BYTE1(__p))
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        if (__p == 1)
        {
          v28 = &v63[16 * v27];
          v59 = *(v28 + 2);
          if (v59 > 0x40)
          {
            llvm::APInt::initSlowCase(&v58, v28);
          }

          else
          {
            v58 = *v28;
          }
        }

        else
        {
          (*(*v63 + 24))(&v58);
        }

        llvm::APInt::sextOrTrunc(&v58, Width, &v60);
        if (v59 >= 0x41 && v58)
        {
          operator delete[](v58);
        }

        v29 = v69[0];
        if (LODWORD(v69[1]) >= HIDWORD(v69[1]))
        {
          if (v69[0] <= &v60 && v69[0] + 16 * LODWORD(v69[1]) > &v60)
          {
            v33 = &v60 - v69[0];
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v29 = v69[0];
            v30 = (v69[0] + v33);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v30 = &v60;
            v29 = v69[0];
          }
        }

        else
        {
          v30 = &v60;
        }

        v31 = v29 + 16 * LODWORD(v69[1]);
        v32 = *(v30 + 2);
        *(v31 + 8) = v32;
        if (v32 > 0x40)
        {
          llvm::APInt::initSlowCase(v31, v30);
          ++LODWORD(v69[1]);
          if (v61 >= 0x41)
          {
LABEL_59:
            if (v60)
            {
              operator delete[](v60);
            }
          }
        }

        else
        {
          *v31 = *v30;
          ++LODWORD(v69[1]);
          if (v61 >= 0x41)
          {
            goto LABEL_59;
          }
        }

        v26 = ++v64;
        --v25;
      }

      while (v25);
    }

    if (!v10)
    {
      goto LABEL_92;
    }

    v34 = *v10;
    {
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
        goto LABEL_68;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
LABEL_68:
        v38 = v36;
        v39 = v37;
        do
        {
          v40 = v39 >> 1;
          v41 = &v38[2 * (v39 >> 1)];
          v43 = *v41;
          v42 = v41 + 2;
          v39 += ~(v39 >> 1);
          if (v43 < v35)
          {
            v38 = v42;
          }

          else
          {
            v39 = v40;
          }
        }

        while (v39);
LABEL_90:
        if (v38 != &v36[2 * v37] && *v38 == v35)
        {
          v48 = v38[1];
          goto LABEL_93;
        }

LABEL_92:
        v48 = 0;
LABEL_93:
        v8 = mlir::DenseElementsAttr::get(v10, v48, v69[0], LODWORD(v69[1]));
        v49 = v69[0];
        if (LODWORD(v69[1]))
        {
          v50 = (v69[0] + 16 * LODWORD(v69[1]) - 8);
          v51 = -16 * LODWORD(v69[1]);
          v52 = v50;
          do
          {
            v53 = *v52;
            v52 -= 4;
            if (v53 >= 0x41)
            {
              v54 = *(v50 - 1);
              if (v54)
              {
                operator delete[](v54);
              }
            }

            v50 = v52;
            v51 += 16;
          }

          while (v51);
          v49 = v69[0];
        }

        if (v49 != v70)
        {
          free(v49);
        }

        if ((__p & 1) == 0)
        {
          v55 = v63;
          v63 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((BYTE8(v68) & 1) != 0 && (v67[0] & 1) == 0)
        {
          v56 = v67[1];
          v67[1] = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v37 = 0;
    v38 = v36;
    goto LABEL_90;
  }

  __p = v8;
  mlir::IntegerAttr::getValue(&__p, v67);
  llvm::APInt::sextOrTrunc(v67, Width, v69);
  if (LODWORD(v67[1]) >= 0x41 && v67[0])
  {
    operator delete[](v67[0]);
  }

  v8 = mlir::IntegerAttr::get(v10, v69);
  if (LODWORD(v69[1]) >= 0x41)
  {
    goto LABEL_86;
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::IndexCastOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v45, 2);
  mlir::Pattern::Pattern((v4 + 2), "arith.index_cast", 16, v45, a2, 0, 0);
  *v4 = &unk_1F5AEE990;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::IndexCastOfIndexCast]";
  v46 = 93;
  v9 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (v46 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v46;
  }

  v11 = &v45[v10];
  v12 = v46 - v10;
  if (v46 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v46 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 2);
  v45 = "arith.index_cast";
  v46 = 16;
  mlir::Pattern::Pattern((v24 + 2), "arith.index_cast", 16, v44, a2, &v45, 1uLL);
  *v24 = &unk_1F5AEE9E8;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::IndexCastOfExtSI]";
  v46 = 89;
  v29 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (v46 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v46;
  }

  v31 = &v45[v30];
  v32 = v46 - v30;
  if (v46 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v46 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
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
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

unint64_t mlir::arith::IndexCastUIOp::fold(void *a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = ElementTypeOrSelf;
  }

  else
  {
    v5 = 0;
  }

  v69[0] = v5;
  if (v5)
  {
    Width = mlir::IntegerType::getWidth(v69);
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  else
  {
    Width = 64;
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v9 = *(*v8 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(v8))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v69[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v69))
    {
      v65 = *v7;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v65, v69);
      *v67 = *v69;
      v68 = v70[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(v67, &__p);
      llvm::APInt::zextOrTrunc(&__p, Width, v69);
      if (v63 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v10)
      {
        v12 = *v10;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
          }
        }

        else
        {
          mlir::arith::ExtUIOp::fold();
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_77;
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
          v47 = v16[1];
          v67[0] = v10;
          v67[1] = v47;
          if (!mlir::CallOpInterface::getArgOperands(v67))
          {
            goto LABEL_85;
          }

          goto LABEL_78;
        }
      }

LABEL_77:
      v67[0] = v10;
      v67[1] = 0;
      if (!mlir::CallOpInterface::getArgOperands(v67))
      {
        goto LABEL_85;
      }

LABEL_78:
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v67);
      if (v45)
      {
        v46 = 8 * v45;
        while (*ArgAttrsAttr != 0x8000000000000000)
        {
          ++ArgAttrsAttr;
          v46 -= 8;
          if (!v46)
          {
            goto LABEL_82;
          }
        }

LABEL_85:
        v8 = 0;
        if (LODWORD(v69[1]) < 0x41)
        {
          return v8 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_86;
      }

LABEL_82:
      v8 = mlir::DenseElementsAttr::get(v67[0], v67[1], v69, 1);
      if (LODWORD(v69[1]) < 0x41)
      {
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_86:
      if (v69[0])
      {
        operator delete[](v69[0]);
      }

      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v65 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v7);
    v66 = v22;
    if (!v65 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, v67), BYTE8(v68) != 1))
    {
      v8 = 0;
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(__p) = v67[0];
    if (LOBYTE(v67[0]) == 1)
    {
      v63 = v67[1];
    }

    else
    {
      (*(*v67[1] + 16))(&v63);
    }

    v64 = v68;
    v69[0] = v70;
    v69[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v69, NumElements);
    v24 = mlir::ElementsAttr::getNumElements(v65, v66);
    if (v24)
    {
      v25 = v24;
      v26 = v64;
      do
      {
        if (BYTE1(__p))
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        if (__p == 1)
        {
          v28 = &v63[16 * v27];
          v59 = *(v28 + 2);
          if (v59 > 0x40)
          {
            llvm::APInt::initSlowCase(&v58, v28);
          }

          else
          {
            v58 = *v28;
          }
        }

        else
        {
          (*(*v63 + 24))(&v58);
        }

        llvm::APInt::zextOrTrunc(&v58, Width, &v60);
        if (v59 >= 0x41 && v58)
        {
          operator delete[](v58);
        }

        v29 = v69[0];
        if (LODWORD(v69[1]) >= HIDWORD(v69[1]))
        {
          if (v69[0] <= &v60 && v69[0] + 16 * LODWORD(v69[1]) > &v60)
          {
            v33 = &v60 - v69[0];
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v29 = v69[0];
            v30 = (v69[0] + v33);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(v69, LODWORD(v69[1]) + 1);
            v30 = &v60;
            v29 = v69[0];
          }
        }

        else
        {
          v30 = &v60;
        }

        v31 = v29 + 16 * LODWORD(v69[1]);
        v32 = *(v30 + 2);
        *(v31 + 8) = v32;
        if (v32 > 0x40)
        {
          llvm::APInt::initSlowCase(v31, v30);
          ++LODWORD(v69[1]);
          if (v61 >= 0x41)
          {
LABEL_59:
            if (v60)
            {
              operator delete[](v60);
            }
          }
        }

        else
        {
          *v31 = *v30;
          ++LODWORD(v69[1]);
          if (v61 >= 0x41)
          {
            goto LABEL_59;
          }
        }

        v26 = ++v64;
        --v25;
      }

      while (v25);
    }

    if (!v10)
    {
      goto LABEL_92;
    }

    v34 = *v10;
    {
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
        goto LABEL_68;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v34 + 8);
      v37 = *(v34 + 16);
      if (v37)
      {
LABEL_68:
        v38 = v36;
        v39 = v37;
        do
        {
          v40 = v39 >> 1;
          v41 = &v38[2 * (v39 >> 1)];
          v43 = *v41;
          v42 = v41 + 2;
          v39 += ~(v39 >> 1);
          if (v43 < v35)
          {
            v38 = v42;
          }

          else
          {
            v39 = v40;
          }
        }

        while (v39);
LABEL_90:
        if (v38 != &v36[2 * v37] && *v38 == v35)
        {
          v48 = v38[1];
          goto LABEL_93;
        }

LABEL_92:
        v48 = 0;
LABEL_93:
        v8 = mlir::DenseElementsAttr::get(v10, v48, v69[0], LODWORD(v69[1]));
        v49 = v69[0];
        if (LODWORD(v69[1]))
        {
          v50 = (v69[0] + 16 * LODWORD(v69[1]) - 8);
          v51 = -16 * LODWORD(v69[1]);
          v52 = v50;
          do
          {
            v53 = *v52;
            v52 -= 4;
            if (v53 >= 0x41)
            {
              v54 = *(v50 - 1);
              if (v54)
              {
                operator delete[](v54);
              }
            }

            v50 = v52;
            v51 += 16;
          }

          while (v51);
          v49 = v69[0];
        }

        if (v49 != v70)
        {
          free(v49);
        }

        if ((__p & 1) == 0)
        {
          v55 = v63;
          v63 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((BYTE8(v68) & 1) != 0 && (v67[0] & 1) == 0)
        {
          v56 = v67[1];
          v67[1] = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v37 = 0;
    v38 = v36;
    goto LABEL_90;
  }

  __p = v8;
  mlir::IntegerAttr::getValue(&__p, v67);
  llvm::APInt::zextOrTrunc(v67, Width, v69);
  if (LODWORD(v67[1]) >= 0x41 && v67[0])
  {
    operator delete[](v67[0]);
  }

  v8 = mlir::IntegerAttr::get(v10, v69);
  if (LODWORD(v69[1]) >= 0x41)
  {
    goto LABEL_86;
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::IndexCastUIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v45, 2);
  mlir::Pattern::Pattern((v4 + 2), "arith.index_castui", 18, v45, a2, 0, 0);
  *v4 = &unk_1F5AEEA40;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::IndexCastUIOfIndexCastUI]";
  v46 = 97;
  v9 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (v46 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v46;
  }

  v11 = &v45[v10];
  v12 = v46 - v10;
  if (v46 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v46 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 2);
  v45 = "arith.index_castui";
  v46 = 18;
  mlir::Pattern::Pattern((v24 + 2), "arith.index_castui", 18, v44, a2, &v45, 1uLL);
  *v24 = &unk_1F5AEEA98;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::IndexCastUIOfExtUI]";
  v46 = 91;
  v29 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (v46 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v46;
  }

  v31 = &v45[v30];
  v32 = v46 - v30;
  if (v46 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v46 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
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
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

uint64_t mlir::arith::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
        return IntOrFloatBitWidth == mlir::Type::getIntOrFloatBitWidth(&v11);
      }
    }
  }

  return result;
}

uint64_t areValidCastInputsAndOutputs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v18[2] = *MEMORY[0x1E69E9840];
  if (a2 == 1 && a4 == 1)
  {
    v7 = a1;
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v18[0] = v10;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v17[0] = v11;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || (Values = mlir::SparseElementsAttr::getValues(v18), Values == mlir::SparseElementsAttr::getValues(v17)))
    {
      v16 = mlir::TypeRange::dereference_iterator(v7, 0);
      mlir::ValueRange::ValueRange(v18, &v16, 1uLL);
      v15 = mlir::TypeRange::dereference_iterator(a3, 0);
      mlir::ValueRange::ValueRange(v17, &v15, 1uLL);
      v5 = mlir::verifyCompatibleShapes(v18[0], v18[1], v17[0], v17[1]);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v35 = v1;
    v36 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v36;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v35 + 8);
    v4 = *(v35 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v13 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_25:
  result = mlir::getElementTypeOrSelf(a1);
  v16 = *(*result + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  return result;
}

unint64_t mlir::arith::BitcastOp::fold(void *a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x1E69E9840];
  v2 = **(a2 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::DenseElementsAttr::classof(**(a2 + 40));
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  __p = v5;
  if (v4)
  {
    if (v3)
    {
      v6 = *v3;
      {
        v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        if (!v9)
        {
          goto LABEL_102;
        }
      }

      else
      {
        getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
        v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        if (!v9)
        {
          goto LABEL_102;
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
        v51 = v10[1];
        goto LABEL_103;
      }
    }

LABEL_102:
    v51 = 0;
LABEL_103:
    v57 = v3;
    v58[0] = v51;
    isSplat = mlir::ElementsAttr::isSplat(&v57);
    return mlir::DenseElementsAttr::bitcast(&__p, isSplat) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v16 = *v3;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_28;
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
  if (v20 != &v18[2 * v19] && *v20 == v17 && v20[1])
  {
    return 0;
  }

LABEL_28:
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v54 = v2;
    Value = mlir::FloatAttr::getValue(&v54, &v57);
    v27 = v58[0];
    v28 = llvm::APFloatBase::PPCDoubleDouble(Value);
    if (v28 == v27)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(v58, &__p);
      if (v28 != v58[0])
      {
        goto LABEL_32;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(v58, &__p);
      if (v28 != v58[0])
      {
LABEL_32:
        llvm::detail::IEEEFloat::~IEEEFloat(v58);
        goto LABEL_37;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v58);
    goto LABEL_37;
  }

  v53 = v2;
  mlir::IntegerAttr::getValue(&v53, &__p);
LABEL_37:
  v30 = *(*v3 + 136);
  v46 = v30 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v46 && (v54 = v3) != 0)
  {
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v54);
    v48 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
    if (v48 == FloatSemantics)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v58, FloatSemantics, &__p);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(v58, FloatSemantics, &__p);
    }

    v49 = mlir::FloatAttr::get(v3, &v57);
    if (v48 == v58[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v58);
      result = v49 & 0xFFFFFFFFFFFFFFFBLL;
      if (v56 < 0x41)
      {
        return result;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v58);
      result = v49 & 0xFFFFFFFFFFFFFFFBLL;
      if (v56 < 0x41)
      {
        return result;
      }
    }
  }

  else
  {
    result = mlir::IntegerAttr::get(v3, &__p) & 0xFFFFFFFFFFFFFFFBLL;
    if (v56 < 0x41)
    {
      return result;
    }
  }

  if (__p)
  {
    v50 = result;
    operator delete[](__p);
    return v50;
  }

  return result;
}

void *llvm::cast<mlir::ShapedType,mlir::Type>(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

void llvm::APFloat::~APFloat(llvm::APFloat *this)
{
  v1 = (this + 8);
  v2 = *(this + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v2)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v1);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v1);
  }
}

void *llvm::APFloat::APFloat(void *a1, void *a2, const llvm::APInt **a3)
{
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, a2, a3);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((a1 + 1), a2, a3);
  }

  return a1;
}

void mlir::arith::BitcastOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 2);
  mlir::Pattern::Pattern((v4 + 2), "arith.bitcast", 13, v24, a2, 0, 0);
  *v4 = &unk_1F5AEEAF0;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::BitcastOfBitcast]";
  v25 = 89;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
}

BOOL mlir::arith::applyCmpPredicate(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        return llvm::APInt::compareSigned(this, a3) >= 0;
      }

      else
      {
        return llvm::APInt::compare(this, a3) >> 31;
      }
    }

    else if (a1 == 7)
    {
      return llvm::APInt::compare(this, a3) < 1;
    }

    else if (a1 == 8)
    {
      return llvm::APInt::compare(this, a3) > 0;
    }

    else
    {
      return llvm::APInt::compare(this, a3) >= 0;
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (*(this + 2) > 0x40u)
      {
        return !llvm::APInt::equalSlowCase(this, a3);
      }

      else
      {
        return *this != *a3;
      }
    }

    else if (*(this + 2) > 0x40u)
    {

      return llvm::APInt::equalSlowCase(this, a3);
    }

    else
    {
      return *this == *a3;
    }
  }

  else if (a1 == 2)
  {
    return llvm::APInt::compareSigned(this, a3) >> 31;
  }

  else if (a1 == 3)
  {
    return llvm::APInt::compareSigned(this, a3) < 1;
  }

  else
  {
    return llvm::APInt::compareSigned(this, a3) > 0;
  }
}

void *mlir::arith::CmpIOp::fold(uint64_t *a1, uint64_t a2)
{
  v157 = *MEMORY[0x1E69E9840];
  if (*(*(*a1 + 72) + 24) == *(*(*a1 + 72) + 56))
  {
    v146 = *(*a1 + 80);
    v8 = 0x2A9u >> mlir::IntegerAttr::getInt(&v146);
    v146 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Attribute::getContext(&v146);
    v10 = mlir::BoolAttr::get(Context, (v8 & 1));
    RHS = v10;
    if (v146)
    {
      v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v146);
      if (v11)
      {
        v10 = mlir::DenseElementsAttr::get(v11, v12, &RHS, 1uLL);
      }
    }

    return (v10 & 0xFFFFFFFFFFFFFFFBLL);
  }

  v4 = *(*(a2 + 48) + 8);
  if (!v4)
  {
    goto LABEL_48;
  }

  v147.i32[0] = 1;
  v146 = 0;
  RHS = &v146;
  v5 = mlir::detail::constant_int_value_binder::match(&RHS, v4);
  v6 = v147.i32[0];
  if (v5)
  {
    if (v147.i32[0] < 0x41u)
    {
      v7 = v146 == 0;
      goto LABEL_17;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&v146) > 0x40)
    {
      if (v146)
      {
        operator delete[](v146);
      }

      goto LABEL_48;
    }

    v7 = *v146 == 0;
  }

  else
  {
    v7 = 0;
    if (v147.i32[0] < 0x41u)
    {
      goto LABEL_17;
    }
  }

  if (!v146)
  {
LABEL_17:
    if (!v7)
    {
      goto LABEL_48;
    }

    goto LABEL_18;
  }

  operator delete[](v146);
  if (!v7)
  {
    goto LABEL_48;
  }

LABEL_18:
  v146 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v146);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    goto LABEL_20;
  }

  v20 = *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(*v20 + 136);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v22 = *(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v22 = 0;
  }

  v146 = v22;
  if (!v22)
  {
    if (v21 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v20 = 0;
    }

    v146 = v20;
    if (!v20)
    {
      goto LABEL_20;
    }

    v19 = DefiningOp;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v146);
    if (mlir::IntegerType::getWidth(&RHS) != 1)
    {
      goto LABEL_20;
    }

LABEL_40:
    v146 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    if (mlir::IntegerAttr::getInt(&v146) == 1)
    {
      return (*(*(v19 + 72) + 24) | 4);
    }

    goto LABEL_20;
  }

  v19 = DefiningOp;
  if (mlir::IntegerType::getWidth(&v146) == 1)
  {
    goto LABEL_40;
  }

LABEL_20:
  v146 = *(*(*a1 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&v146);
  if (!v15 || *(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    goto LABEL_48;
  }

  v16 = *(*(*(v15 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(*v16 + 136);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v18 = *(*(*(v15 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v18 = 0;
  }

  v146 = v18;
  if (v18)
  {
    v19 = v15;
    if (mlir::IntegerType::getWidth(&v146) != 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v17 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v16 = 0;
    }

    v146 = v16;
    if (!v16)
    {
      goto LABEL_48;
    }

    v19 = v15;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v146);
    if (mlir::IntegerType::getWidth(&RHS) != 1)
    {
      goto LABEL_48;
    }
  }

  v146 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  if (mlir::IntegerAttr::getInt(&v146) == 1)
  {
    return (*(*(v19 + 72) + 24) | 4);
  }

LABEL_48:
  v23 = *(a2 + 48);
  result = *v23;
  if (!*v23)
  {
    v111 = 0;
    v112 = 0;
    return result;
  }

  if (!*(v23 + 8))
  {
    v147 = vdupq_n_s64(4uLL);
    v148 = xmmword_1E096E650;
    v149 = vdupq_n_s64(5uLL);
    v150 = xmmword_1E096E660;
    v151 = vdupq_n_s64(8uLL);
    v152 = xmmword_1E096E670;
    v153 = vdupq_n_s64(9uLL);
    v155[0] = 0;
    v155[1] = 0;
    v154 = 7;
    v156 = vdupq_n_s64(1uLL);
    RHS = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    Int = mlir::IntegerAttr::getInt(&RHS);
    v31 = &v146;
    if (Int > 4)
    {
      if (Int <= 6)
      {
        if (Int == 5)
        {
          v31 = &v149.u64[1];
        }

        else
        {
          v31 = (&v150 + 8);
        }
      }

      else if (Int == 7)
      {
        v31 = (&v152 + 8);
      }

      else if (Int == 8)
      {
        v31 = &v151.u64[1];
      }

      else
      {
        v31 = &v153.u64[1];
      }
    }

    else if (Int <= 1)
    {
      if (Int)
      {
        v31 = &v156;
      }

      else
      {
        v31 = v155;
      }
    }

    else if (Int != 2)
    {
      if (Int == 3)
      {
        v31 = (&v148 + 8);
      }

      else
      {
        v31 = &v147.u64[1];
      }
    }

    v56 = v31->i64[1];
    v57 = mlir::Attribute::getContext((*a1 + 24));
    v58 = mlir::IntegerType::get(v57, 64, 0);
    *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = mlir::IntegerAttr::get(v58, v56);
    v59 = *a1;
    v60 = *(*a1 + 72);
    v61 = v60[3];
    v62 = v60[7];
    v63 = v60[1];
    if (v63)
    {
      v64 = *v60;
      *v63 = *v60;
      if (v64)
      {
        *(v64 + 8) = v63;
      }
    }

    v60[3] = v62;
    v60[1] = v62;
    v65 = *v62;
    *v60 = *v62;
    if (v65)
    {
      *(v65 + 8) = v60;
    }

    *v62 = v60;
    v66 = v60 + 4;
    v67 = v60[5];
    if (v67)
    {
      v68 = *v66;
      *v67 = *v66;
      if (v68)
      {
        *(v68 + 8) = v67;
      }
    }

    v60[7] = v61;
    v60[5] = v61;
    v69 = *v61;
    v60[4] = *v61;
    if (v69)
    {
      *(v69 + 8) = v66;
    }

    *v61 = v66;
    v70 = *(v59 + 36);
    v71 = v59 - 16;
    if (v70)
    {
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    return (mlir::detail::OpResultImpl::getNextResultAtOffset(v72, 0) | 4);
  }

  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
  v111 = result;
  v112 = v24;
  if (!result)
  {
    return result;
  }

  v25 = *(a2 + 48);
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v111);
  v26 = mlir::Attribute::getContext(&CallableForCallee);
  v27 = mlir::IntegerType::get(v26, 1, 0);
  RHS = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(CallableForCallee);
  v131 = v28;
  if (RHS)
  {
    LOBYTE(v146) = 0;
    v147.i8[8] = 0;
    v29 = mlir::ShapedType::cloneWith(&RHS, &v146, v27);
  }

  else
  {
    if (*(*CallableForCallee + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_62;
    }

    v29 = mlir::UnrankedTensorType::get(v27);
  }

  v27 = v29;
LABEL_62:
  v146 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v32 = mlir::IntegerAttr::getInt(&v146);
  v145 = v27;
  if (!v27)
  {
    goto LABEL_134;
  }

  v33 = *v25;
  if (!*v25)
  {
    goto LABEL_134;
  }

  v35 = v25 + 1;
  v34 = v25[1];
  if (!v34)
  {
    goto LABEL_134;
  }

  v36 = v32;
  if (*(*v33 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    RHS = *v25;
    CallableForCallee = v34;
    Value = mlir::AffineMapAttr::getValue(&RHS);
    if (Value == mlir::AffineMapAttr::getValue(&CallableForCallee))
    {
      mlir::IntegerAttr::getValue(&RHS, &v143);
      mlir::IntegerAttr::getValue(&CallableForCallee, &v141);
      v74 = mlir::arith::applyCmpPredicate(v36, &v143, &v141);
      v147.i32[0] = 1;
      v146 = v74;
      v147.i8[8] = 1;
      if (v142 >= 0x41 && v141)
      {
        operator delete[](v141);
      }

      if (v144 >= 0x41 && v143)
      {
        operator delete[](v143);
      }

      v45 = mlir::IntegerAttr::get(v145, &v146);
LABEL_130:
      if ((v147.i8[8] & 1) != 0 && v147.i32[0] >= 0x41u && v146)
      {
        v75 = v45;
        operator delete[](v146);
        return (v75 & 0xFFFFFFFFFFFFFFFBLL);
      }

      return (v45 & 0xFFFFFFFFFFFFFFFBLL);
    }

LABEL_134:
    v45 = 0;
    return (v45 & 0xFFFFFFFFFFFFFFFBLL);
  }

  if (mlir::DenseElementsAttr::classof(*v25))
  {
    v37 = v33;
  }

  else
  {
    v37 = 0;
  }

  v146 = v37;
  if (v37 && mlir::DenseElementsAttr::isSplat(&v146))
  {
    v38 = *v35;
    v39 = mlir::DenseElementsAttr::classof(*v35) ? v38 : 0;
    v146 = v39;
    if (v39)
    {
      if (mlir::DenseElementsAttr::isSplat(&v146))
      {
        v40 = v25[1];
        RHS = *v25;
        CallableForCallee = v40;
        v41 = mlir::ArrayAttr::getValue(&RHS);
        if (v41 == mlir::ArrayAttr::getValue(&CallableForCallee))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&RHS, &v139);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&CallableForCallee, &__p);
          v42 = mlir::arith::applyCmpPredicate(v36, &v139, &__p);
          v147.i32[0] = 1;
          v146 = v42;
          v147.i8[8] = 1;
          if (v138 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v140 >= 0x41 && v139)
          {
            operator delete[](v139);
          }

          v43 = llvm::cast<mlir::ShapedType,mlir::Type>(&v145);
          v45 = mlir::DenseElementsAttr::get(v43, v44, &v146, 1);
          goto LABEL_130;
        }

        goto LABEL_134;
      }
    }
  }

  v46 = **v25;
  {
    v110 = v46;
    mlir::arith::ConstantOp::verify();
    v47 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v48 = *(v110 + 8);
    v49 = *(v110 + 16);
    if (v49)
    {
      goto LABEL_91;
    }

    return 0;
  }

  v47 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  if (!v49)
  {
    return 0;
  }

LABEL_91:
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
  if (v50 == &v48[2 * v49] || *v50 != v47 || !v50[1])
  {
    return 0;
  }

  v76 = **v35;
  {
    v77 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v78 = *(v76 + 8);
    v79 = *(v76 + 16);
    if (v79)
    {
      goto LABEL_144;
    }

LABEL_151:
    v79 = 0;
    v80 = v78;
    goto LABEL_152;
  }

  v86 = v76;
  mlir::arith::ConstantOp::verify();
  v77 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v78 = *(v86 + 8);
  v79 = *(v86 + 16);
  if (!v79)
  {
    goto LABEL_151;
  }

LABEL_144:
  v80 = v78;
  v81 = v79;
  do
  {
    v82 = v81 >> 1;
    v83 = &v80[2 * (v81 >> 1)];
    v85 = *v83;
    v84 = v83 + 2;
    v81 += ~(v81 >> 1);
    if (v85 < v77)
    {
      v80 = v84;
    }

    else
    {
      v81 = v82;
    }
  }

  while (v81);
LABEL_152:
  if (v80 == &v78[2 * v79])
  {
    return 0;
  }

  if (*v80 != v77)
  {
    return 0;
  }

  if (!v80[1])
  {
    return 0;
  }

  v135 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v25);
  v136 = v87;
  v134[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v25 + 1);
  v134[1] = v88;
  Type = mlir::ElementsAttr::getType(&v135);
  if (Type != mlir::ElementsAttr::getType(v134))
  {
    return 0;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v135, &RHS);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(v134, &CallableForCallee);
  if (v133 == 1 && v129 == 1)
  {
    v123 = RHS;
    if (RHS == 1)
    {
      v124 = v131;
    }

    else
    {
      (*(*v131 + 16))(&v124);
    }

    v125 = v132;
    v120 = CallableForCallee;
    if (CallableForCallee == 1)
    {
      v121 = v127;
    }

    else
    {
      (*(*v127 + 16))(&v121);
    }

    v122 = v128;
    v146 = &v147.i64[1];
    v147.i64[0] = 0x400000000;
    NumElements = mlir::ElementsAttr::getNumElements(v135, v136);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(&v146, NumElements);
    v91 = mlir::ElementsAttr::getNumElements(v135, v136);
    if (v91)
    {
      v92 = v91;
      v93 = v125;
      do
      {
        if (HIBYTE(v123))
        {
          v94 = 0;
        }

        else
        {
          v94 = v93;
        }

        if (v123 == 1)
        {
          v95 = v124 + 16 * v94;
          v116 = *(v95 + 8);
          if (v116 > 0x40)
          {
            llvm::APInt::initSlowCase(&v115, v95);
          }

          else
          {
            v115 = *v95;
          }
        }

        else
        {
          (*(*v124 + 24))(&v115);
        }

        if (HIBYTE(v120))
        {
          v96 = 0;
        }

        else
        {
          v96 = v122;
        }

        if (v120 == 1)
        {
          v97 = v121 + 16 * v96;
          v114 = *(v97 + 8);
          if (v114 <= 0x40)
          {
            v113 = *v97;
            v98 = mlir::arith::applyCmpPredicate(v36, &v115, &v113);
            v118 = 1;
            v117 = v98;
            v119 = 1;
            goto LABEL_187;
          }

          llvm::APInt::initSlowCase(&v113, v97);
        }

        else
        {
          (*(*v121 + 24))(&v113);
        }

        v99 = v114;
        v100 = mlir::arith::applyCmpPredicate(v36, &v115, &v113);
        v118 = 1;
        v117 = v100;
        v119 = 1;
        if (v99 >= 0x41 && v113)
        {
          operator delete[](v113);
        }

LABEL_187:
        if (v116 >= 0x41 && v115)
        {
          operator delete[](v115);
        }

        if (v119 != 1)
        {
          v103 = 0;
          goto LABEL_197;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v146, &v117);
        if ((v119 & 1) != 0 && v118 >= 0x41 && v117)
        {
          operator delete[](v117);
        }

        v93 = ++v125;
        ++v122;
        --v92;
      }

      while (v92);
    }

    v101 = llvm::cast<mlir::ShapedType,mlir::Type>(&v145);
    v103 = mlir::DenseElementsAttr::get(v101, v102, v146, v147.u32[0]) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_197:
    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v146);
    if ((v120 & 1) == 0)
    {
      v104 = v121;
      v121 = 0;
      if (v104)
      {
        (*(*v104 + 8))(v104);
      }
    }

    if ((v123 & 1) == 0)
    {
      v105 = v124;
      v124 = 0;
      if (v105)
      {
        (*(*v105 + 8))(v105);
      }
    }

    result = v103;
  }

  else
  {
    result = 0;
  }

  if (v129 == 1 && (CallableForCallee & 1) == 0)
  {
    v106 = v127;
    v127 = 0;
    if (v106)
    {
      v107 = result;
      (*(*v106 + 8))(v106);
      result = v107;
    }
  }

  if (v133 == 1 && (RHS & 1) == 0)
  {
    v108 = v131;
    v131 = 0;
    if (v108)
    {
      v109 = result;
      (*(*v108 + 8))(v108);
      return v109;
    }
  }

  return result;
}

void mlir::arith::CmpIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 3);
  v45 = "arith.cmpi";
  v46 = 10;
  mlir::Pattern::Pattern((v4 + 2), "arith.cmpi", 10, v44, a2, &v45, 1uLL);
  *v4 = &unk_1F5AEEB48;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::CmpIExtSI]";
  v46 = 82;
  v9 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (v46 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v46;
  }

  v11 = &v45[v10];
  v12 = v46 - v10;
  if (v46 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v46 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_54;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      goto LABEL_55;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 3);
  v45 = "arith.cmpi";
  v46 = 10;
  mlir::Pattern::Pattern((v24 + 2), "arith.cmpi", 10, v44, a2, &v45, 1uLL);
  *v24 = &unk_1F5AEEBA0;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v45 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::CmpIExtUI]";
  v46 = 82;
  v29 = llvm::StringRef::find(&v45, "DesiredTypeName = ", 0x12uLL, 0);
  if (v46 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v46;
  }

  v31 = &v45[v30];
  v32 = v46 - v30;
  if (v46 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v46 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
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
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
}

uint64_t mlir::arith::applyCmpPredicate(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v8 = (a3 + 8);
  if (v7 == v6)
  {
    v9 = llvm::detail::DoubleAPFloat::compare(v5, v8);
  }

  else
  {
    v9 = llvm::detail::IEEEFloat::compare(v5, v8);
  }

  v10 = 0;
  switch(a1)
  {
    case 1uLL:
      v10 = v9 == 1;
      goto LABEL_6;
    case 2uLL:
      result = v9 == 2;
      break;
    case 3uLL:
      result = v9 - 1 < 2;
      break;
    case 4uLL:
      result = v9 == 0;
      break;
    case 5uLL:
      result = v9 < 2;
      break;
    case 6uLL:
      result = (v9 & 0xFFFFFFFD) != 1;
      break;
    case 7uLL:
      result = v9 != 3;
      break;
    case 8uLL:
      result = (v9 & 0xFFFFFFFD) == 1;
      break;
    case 9uLL:
      result = (v9 & 0xFFFFFFFE) == 2;
      break;
    case 0xAuLL:
      v16 = v9 == 1 || (v9 & 0xFFFFFFFE) == 2;
      result = v16;
      break;
    case 0xBuLL:
      v13 = v9 == 3 || v9 == 0;
      result = v13;
      break;
    case 0xCuLL:
      v14 = 0xBu >> (v9 & 0xF);
      if (v9 >= 4)
      {
        LOBYTE(v14) = 0;
      }

      result = v14 & 1;
      break;
    case 0xDuLL:
      result = v9 != 1;
      break;
    case 0xEuLL:
      result = v9 == 3;
      break;
    case 0xFuLL:
      result = 1;
      break;
    default:
LABEL_6:
      result = v10;
      break;
  }

  return result;
}

unint64_t mlir::arith::CmpFOp::fold(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 56);
  v4 = *v3;
  if (*v3 && *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v4 = 0;
  }

  v27 = v4;
  v5 = v3[1];
  if (!v5)
  {
    v6 = 0;
    v26 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }

LABEL_11:
    Value = mlir::FloatAttr::getValue(&v27, &v30);
    v8 = v31;
    v9 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v10 = v32;
    v11 = v9 == v8;
    if (v9 != v8)
    {
      v10 = &v30;
    }

    v12 = *(v10 + 28) & 7;
    if (v11)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v31);
      if (v12 != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v31);
      if (v12 != 1)
      {
        goto LABEL_16;
      }
    }

    v6 = v27;
    v26 = v27;
    goto LABEL_16;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v26 = v6;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (v6)
  {
    v13 = mlir::FloatAttr::getValue(&v26, &v30);
    v14 = v31;
    v15 = llvm::APFloatBase::PPCDoubleDouble(v13);
    v16 = v32;
    v17 = v15 == v14;
    if (v15 != v14)
    {
      v16 = &v30;
    }

    v18 = *(v16 + 28) & 7;
    if (v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v31);
      if (v18 == 1)
      {
LABEL_21:
        v19 = v26;
        v27 = v26;
        result = 0;
        if (!v26)
        {
          return result;
        }

LABEL_29:
        if (!v19)
        {
          return result;
        }

        v30 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
        Int = mlir::IntegerAttr::getInt(&v30);
        mlir::FloatAttr::getValue(&v27, &v30);
        mlir::FloatAttr::getValue(&v26, v28);
        v22 = mlir::arith::applyCmpPredicate(Int, &v30, v28);
        v23 = v29[0];
        v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
        if (v24 == v23)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
          if (v24 != v31)
          {
            goto LABEL_32;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v29);
          if (v24 != v31)
          {
LABEL_32:
            llvm::detail::IEEEFloat::~IEEEFloat(&v31);
LABEL_35:
            Context = mlir::Attribute::getContext((*a1 + 24));
            return mlir::BoolAttr::get(Context, v22) & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v31);
        goto LABEL_35;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v31);
      if (v18 == 1)
      {
        goto LABEL_21;
      }
    }

    v19 = v26;
    result = 0;
    if (!v27)
    {
      return result;
    }

    goto LABEL_29;
  }

  v19 = 0;
  result = 0;
  if (v27)
  {
    goto LABEL_29;
  }

  return result;
}

void mlir::arith::SelectOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v84 = a2;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v85, 2);
  *&v86[0] = "arith.select";
  *(&v86[0] + 1) = 12;
  mlir::Pattern::Pattern((v4 + 2), "arith.select", 12, v85, a2, v86, 1uLL);
  *v4 = &unk_1F5AEEC98;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  *&v86[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::RedundantSelectFalse]";
  *(&v86[0] + 1) = 93;
  v9 = llvm::StringRef::find(v86, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v86[0] + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v86[0] + 1);
  }

  v11 = *&v86[0] + v10;
  v12 = *(&v86[0] + 1) - v10;
  if (*(&v86[0] + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v86[0] + 1) - v10;
  }

  v14 = v11 + v13;
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_106;
  }

  v20 = v6 - v16;
  if (v20 >> 2 > v19)
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
      goto LABEL_107;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v85, 2);
  *&v86[0] = "arith.select";
  *(&v86[0] + 1) = 12;
  mlir::Pattern::Pattern((v24 + 2), "arith.select", 12, v85, a2, v86, 1uLL);
  *v24 = &unk_1F5AEECF0;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  *&v86[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::RedundantSelectTrue]";
  *(&v86[0] + 1) = 92;
  v29 = llvm::StringRef::find(v86, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v86[0] + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v86[0] + 1);
  }

  v31 = *&v86[0] + v30;
  v32 = *(&v86[0] + 1) - v30;
  if (*(&v86[0] + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v86[0] + 1) - v30;
  }

  v34 = v31 + v33;
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
    goto LABEL_106;
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
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
      goto LABEL_107;
    }

    v42 = operator new(8 * v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
  v44 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v85, 2);
  *&v86[0] = "arith.select";
  *(&v86[0] + 1) = 12;
  mlir::Pattern::Pattern((v44 + 2), "arith.select", 12, v85, a2, v86, 1uLL);
  *v44 = &unk_1F5AEED48;
  if (*(v44 + 9))
  {
    v45 = v44[22];
    if (v45 <= v44[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v44 + 20), (v44 + 24), v45, 16);
    v44[22] = v44[22];
    v47 = a1[2];
    v46 = a1[3];
    if (v47 < v46)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  *&v86[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SelectNotCond]";
  *(&v86[0] + 1) = 86;
  v49 = llvm::StringRef::find(v86, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v86[0] + 1) >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = *(&v86[0] + 1);
  }

  v51 = *&v86[0] + v50;
  v52 = *(&v86[0] + 1) - v50;
  if (*(&v86[0] + 1) - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = *(&v86[0] + 1) - v50;
  }

  v54 = v51 + v53;
  v55 = v52 - v53;
  if (v55 >= v55 - 1)
  {
    --v55;
  }

  *(v44 + 8) = v54;
  *(v44 + 9) = v55;
  v45 = v44[22];
  if (v45 > v44[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v44[22] = v45;
  v47 = a1[2];
  v46 = a1[3];
  if (v47 < v46)
  {
LABEL_56:
    *v47 = v44;
    v48 = v47 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v56 = a1[1];
  v57 = v47 - v56;
  v58 = (v47 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
    goto LABEL_106;
  }

  v60 = v46 - v56;
  if (v60 >> 2 > v59)
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
      goto LABEL_107;
    }

    v62 = operator new(8 * v61);
  }

  else
  {
    v62 = 0;
  }

  v63 = &v62[8 * v58];
  *v63 = v44;
  v48 = v63 + 8;
  memcpy(v62, v56, v57);
  a1[1] = v62;
  a1[2] = v48;
  a1[3] = &v62[8 * v61];
  if (v56)
  {
    operator delete(v56);
  }

LABEL_79:
  a1[2] = v48;
  v64 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v85, 1);
  v86[0] = xmmword_1E86D2960;
  v86[1] = *&off_1E86D2970;
  mlir::Pattern::Pattern((v64 + 2), "arith.select", 12, v85, a2, v86, 2uLL);
  *v64 = &unk_1F5AEEDA0;
  if (*(v64 + 9))
  {
    v65 = v64[22];
    if (v65 <= v64[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v64 + 20), (v64 + 24), v65, 16);
    v64[22] = v64[22];
    v67 = a1[2];
    v66 = a1[3];
    if (v67 < v66)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  *&v86[0] = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SelectI1ToNot]";
  *(&v86[0] + 1) = 86;
  v69 = llvm::StringRef::find(v86, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v86[0] + 1) >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = *(&v86[0] + 1);
  }

  v71 = *&v86[0] + v70;
  v72 = *(&v86[0] + 1) - v70;
  if (*(&v86[0] + 1) - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = *(&v86[0] + 1) - v70;
  }

  v74 = v71 + v73;
  v75 = v72 - v73;
  if (v75 >= v75 - 1)
  {
    --v75;
  }

  *(v64 + 8) = v74;
  *(v64 + 9) = v75;
  v65 = v64[22];
  if (v65 > v64[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v64[22] = v65;
  v67 = a1[2];
  v66 = a1[3];
  if (v67 < v66)
  {
LABEL_82:
    *v67 = v64;
    v68 = v67 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v76 = a1[1];
  v77 = v67 - v76;
  v78 = (v67 - v76) >> 3;
  v79 = v78 + 1;
  if ((v78 + 1) >> 61)
  {
LABEL_106:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v80 = v66 - v76;
  if (v80 >> 2 > v79)
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
    if (!(v81 >> 61))
    {
      v82 = operator new(8 * v81);
      goto LABEL_103;
    }

LABEL_107:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v82 = 0;
LABEL_103:
  v83 = &v82[8 * v78];
  *v83 = v64;
  v68 = v83 + 8;
  memcpy(v82, v76, v77);
  a1[1] = v82;
  a1[2] = v68;
  a1[3] = &v82[8 * v81];
  if (v76)
  {
    operator delete(v76);
  }

LABEL_105:
  a1[2] = v68;
  mlir::RewritePatternSet::addImpl<SelectToExtUI,mlir::MLIRContext *&>(a1, 0, 0, &v84);
}