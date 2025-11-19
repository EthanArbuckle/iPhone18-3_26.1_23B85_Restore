BOOL mlir::arith::DivSIOp::getSpeculatability(mlir::arith::DivSIOp *this)
{
  v1 = *(*(*this + 72) + 56);
  v6 = mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  v7 = v1;
  DefiningOp = mlir::Value::getDefiningOp(&v7);
  result = 0;
  if (DefiningOp)
  {
    if (mlir::detail::constant_int_range_predicate_matcher::match(&v6, DefiningOp))
    {
      v5 = mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
      v7 = v1;
      v3 = mlir::Value::getDefiningOp(&v7);
      if (v3)
      {
        if (mlir::detail::constant_int_range_predicate_matcher::match(&v5, v3))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t mlir::arith::CeilDivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v67 == 1;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::CeilDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v67 == 1;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::FloorDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    v67 = 0;
    v59 = &v67;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = v67 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v67) > 0x40)
      {
        if (v67)
        {
          operator delete[](v67);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v67 == 1;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v67)
    {
      operator delete[](v67);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (v67)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v67);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    v67 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  v67 = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&v67);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &v67);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && v67)
    {
      operator delete[](v67);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&v67) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          v67 = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v67, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v67, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, v67, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v67);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &v67, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::RemUIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    Context = 0;
    v59 = &Context;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = Context == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
      {
        if (Context)
        {
          operator delete[](Context);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *Context == 1;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (Context)
    {
      operator delete[](Context);
    }

LABEL_8:
    if (v8)
    {
      Context = mlir::Attribute::getContext((*a1 + 24));
      return mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (Context)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&Context);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    Context = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!Context)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  Context = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&Context);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &Context);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && Context)
    {
      operator delete[](Context);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  Context = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&Context) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          Context = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, Context, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &Context, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::RemSIOp::fold(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v68) = 1;
    Context = 0;
    v59 = &Context;
    v6 = mlir::detail::constant_int_value_binder::match(&v59, v4);
    v7 = v68;
    if (v6)
    {
      if (v68 < 0x41)
      {
        v8 = Context == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
      {
        if (Context)
        {
          operator delete[](Context);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *Context == 1;
    }

    else
    {
      v8 = 0;
      if (v68 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (Context)
    {
      operator delete[](Context);
    }

LABEL_8:
    if (v8)
    {
      Context = mlir::Attribute::getContext((*a1 + 24));
      return mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8)) & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_14;
  }

LABEL_15:
  v41 = 0;
  v40 = &v41;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = v3 + 1;
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v68 = v13;
    if (Context)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&Context);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else
  {
    Context = 0;
    v68 = 0;
  }

  CallableForCallee = 0;
  v15 = *v12;
  if (*v12)
  {
LABEL_22:
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v68 = v16;
    if (!Context)
    {
      goto LABEL_79;
    }

    goto LABEL_28;
  }

LABEL_27:
  Context = v15;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::CallOpInterface::getCallableForCallee(&Context);
  v11 = 0;
  if (!CallableForCallee || !v17 || v17 != CallableForCallee)
  {
    goto LABEL_80;
  }

  v66 = CallableForCallee;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (!*v12)
  {
    goto LABEL_79;
  }

  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v12;
  }

  else
  {
    v11 = 0;
  }

  if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v52 = *v3;
    v49 = v19;
    Value = mlir::AffineMapAttr::getValue(&v52);
    if (Value != mlir::AffineMapAttr::getValue(&v49))
    {
      goto LABEL_79;
    }

    mlir::IntegerAttr::getValue(&v52, &v59);
    mlir::IntegerAttr::getValue(&v49, &__p);
    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v40, &v59, &__p);
    if (v56 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v60 >= 0x41 && v59)
    {
      operator delete[](v59);
    }

    if (v69 != 1)
    {
      goto LABEL_79;
    }

    v11 = mlir::IntegerAttr::get(v66, &Context);
    if ((v69 & 1) == 0)
    {
      goto LABEL_80;
    }

LABEL_69:
    if (v68 >= 0x41 && Context)
    {
      operator delete[](Context);
    }

    goto LABEL_80;
  }

  if (mlir::DenseElementsAttr::classof(*v3))
  {
    v22 = v18;
  }

  else
  {
    v22 = 0;
  }

  Context = v22;
  if (!v22 || !mlir::DenseElementsAttr::isSplat(&Context) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
  {
    if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
    {
      v64 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
      v65 = v28;
      v63[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
      v63[1] = v29;
      Type = mlir::ElementsAttr::getType(&v64);
      if (Type == mlir::ElementsAttr::getType(v63))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v59);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v63, &__p);
        if (v62 == 1 && v58 == 1)
        {
          LOWORD(v52) = v59;
          if (v59 == 1)
          {
            v53 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v53);
          }

          v54 = v61;
          LOWORD(v49) = __p;
          if (__p == 1)
          {
            v50 = v56;
          }

          else
          {
            (*(*v56 + 16))(&v50);
          }

          v51 = v57;
          Context = &v69;
          v68 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
          v34 = mlir::ElementsAttr::getNumElements(v64, v65);
          if (v34)
          {
            v35 = v34;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v44);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v49, &v42);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v46, &v40, &v44, &v42);
              if (v43 >= 0x41 && v42)
              {
                operator delete[](v42);
              }

              if (v45 >= 0x41 && v44)
              {
                operator delete[](v44);
              }

              if (v48 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v46);
              if ((v48 & 1) != 0 && v47 >= 0x41 && v46)
              {
                operator delete[](v46);
              }

              ++v54;
              ++v51;
              if (!--v35)
              {
                goto LABEL_110;
              }
            }

            v11 = 0;
          }

          else
          {
LABEL_110:
            v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
            v11 = mlir::DenseElementsAttr::get(v36, v37, Context, v68);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
          if ((v49 & 1) == 0)
          {
            v38 = v50;
            v50 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if ((v52 & 1) == 0)
          {
            v39 = v53;
            v53 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }
        }

        else
        {
          v11 = 0;
        }

        if (v58 == 1 && (__p & 1) == 0)
        {
          v31 = v56;
          v56 = 0;
          if (v31)
          {
            (*(*v31 + 8))(v31);
          }
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v32 = v60;
          v60 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        goto LABEL_80;
      }
    }

    goto LABEL_79;
  }

  v23 = v3[1];
  v52 = *v3;
  v49 = v23;
  v24 = mlir::ArrayAttr::getValue(&v52);
  if (v24 != mlir::ArrayAttr::getValue(&v49))
  {
    goto LABEL_79;
  }

  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &v59);
  mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v49, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v40, &v59, &__p);
  if (v56 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v60 >= 0x41 && v59)
  {
    operator delete[](v59);
  }

  if (v69 != 1)
  {
LABEL_79:
    v11 = 0;
    goto LABEL_80;
  }

  v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
  v11 = mlir::DenseElementsAttr::get(v25, v26, &Context, 1);
  if (v69)
  {
    goto LABEL_69;
  }

LABEL_80:
  if (v41)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::AndIOp::fold(uint64_t *a1, uint64_t a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 40) + 8);
  if (!v4)
  {
    v62 = 1;
    v61 = 0;
    goto LABEL_21;
  }

  LODWORD(p_p) = 1;
  Context = 0;
  v80 = &Context;
  v5 = mlir::detail::constant_int_value_binder::match(&v80, v4);
  v6 = p_p;
  if (v5)
  {
    if (p_p < 0x41)
    {
      v7 = Context == 0;
      goto LABEL_12;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
    {
      if (Context)
      {
        operator delete[](Context);
      }

      goto LABEL_16;
    }

    v7 = *Context == 0;
  }

  else
  {
    v7 = 0;
    if (p_p < 0x41)
    {
      goto LABEL_12;
    }
  }

  if (!Context)
  {
LABEL_12:
    if (v7)
    {
      return *(*(*a1 + 72) + 56) | 4;
    }

    goto LABEL_16;
  }

  operator delete[](Context);
  if (v7)
  {
    return *(*(*a1 + 72) + 56) | 4;
  }

LABEL_16:
  v9 = *(*(a2 + 40) + 8);
  v62 = 1;
  v61 = 0;
  Context = &v61;
  if (v9 && mlir::detail::constant_int_value_binder::match(&Context, v9))
  {
    v10 = v62;
    if (v62)
    {
      if (v62 > 0x40)
      {
        if (llvm::APInt::countTrailingOnesSlowCase(&v61) != v10)
        {
          goto LABEL_21;
        }
      }

      else if (v61 != (0xFFFFFFFFFFFFFFFFLL >> -v62))
      {
        goto LABEL_21;
      }
    }

    result = *(*(*a1 + 72) + 24) | 4;
    goto LABEL_123;
  }

LABEL_21:
  v11 = *(*a1 + 72);
  v12 = *(v11 + 56);
  v80 = *(v11 + 24);
  v81 = &v61;
  v73 = v12;
  DefiningOp = mlir::Value::getDefiningOp(&v73);
  if (DefiningOp)
  {
    __p = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 2)
    {
      LOBYTE(v70) = 1;
      Context = &v70;
      p_p = &__p;
      mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v80, &Context);
      if (v70 == 1)
      {
        v14 = v62;
        if (!v62)
        {
          goto LABEL_97;
        }

        if (v62 > 0x40)
        {
          if (llvm::APInt::countTrailingOnesSlowCase(&v61) == v14)
          {
            goto LABEL_97;
          }
        }

        else if (v61 == (0xFFFFFFFFFFFFFFFFLL >> -v62))
        {
          goto LABEL_97;
        }
      }
    }
  }

  v15 = *(*a1 + 72);
  v16 = *(v15 + 24);
  v80 = *(v15 + 56);
  v81 = &v61;
  v73 = v16;
  v17 = mlir::Value::getDefiningOp(&v73);
  if (v17)
  {
    __p = v17;
    if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id && (*(v17 + 46) & 0x80) != 0 && *(v17 + 68) == 2)
    {
      LOBYTE(v70) = 1;
      Context = &v70;
      p_p = &__p;
      mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v80, &Context);
      if (v70 == 1)
      {
        v18 = v62;
        if (!v62)
        {
          goto LABEL_97;
        }

        if (v62 <= 0x40)
        {
          if (v61 != (0xFFFFFFFFFFFFFFFFLL >> -v62))
          {
            goto LABEL_41;
          }

LABEL_97:
          Context = mlir::Attribute::getContext((*a1 + 24));
          ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
          goto LABEL_122;
        }

        if (llvm::APInt::countTrailingOnesSlowCase(&v61) == v18)
        {
          goto LABEL_97;
        }
      }
    }
  }

LABEL_41:
  v19 = *a1;
  Context = *(*(v19 + 72) + 24);
  v20 = mlir::Value::getDefiningOp(&Context);
  if (!v20)
  {
    v21 = *(v19 + 72);
    goto LABEL_47;
  }

  v21 = *(v19 + 72);
  if (*(*(v20 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id || (v22 = *(v21 + 56), v23 = *(v20 + 72), v22 != *(v23 + 24)) && v22 != *(v23 + 56))
  {
LABEL_47:
    Context = *(v21 + 56);
    v20 = mlir::Value::getDefiningOp(&Context);
    if (!v20)
    {
      goto LABEL_56;
    }

    if (*(*(v20 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
    {
      goto LABEL_56;
    }

    v24 = *(*(v19 + 72) + 24);
    v25 = *(v20 + 72);
    if (v24 != *(v25 + 24) && v24 != *(v25 + 56))
    {
      goto LABEL_56;
    }
  }

  if (*(v20 + 36))
  {
    v26 = v20 - 16;
  }

  else
  {
    v26 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0);
  if (NextResultAtOffset)
  {
    result = NextResultAtOffset | 4;
    goto LABEL_123;
  }

LABEL_56:
  v28 = *(a2 + 40);
  ZeroAttr = *v28;
  if (*v28 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_122;
  }

  v31 = v28 + 1;
  v30 = v28[1];
  if (v30 && *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    ZeroAttr = v28[1];
    goto LABEL_122;
  }

  if (ZeroAttr)
  {
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
    p_p = v32;
    if (Context)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&Context);
      ZeroAttr = *v31;
      if (*v31)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    }
  }

  else
  {
    Context = 0;
    p_p = 0;
  }

  CallableForCallee = 0;
  ZeroAttr = *v31;
  if (*v31)
  {
LABEL_63:
    ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
    Context = ZeroAttr;
    p_p = v34;
    if (!ZeroAttr)
    {
      goto LABEL_122;
    }

    goto LABEL_68;
  }

LABEL_67:
  Context = ZeroAttr;
  p_p = 0;
  if (!ZeroAttr)
  {
    goto LABEL_122;
  }

LABEL_68:
  v35 = mlir::CallOpInterface::getCallableForCallee(&Context);
  ZeroAttr = 0;
  if (!CallableForCallee || !v35 || v35 != CallableForCallee)
  {
    goto LABEL_122;
  }

  v87 = CallableForCallee;
  v36 = *v28;
  if (*v28 && *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    ZeroAttr = *v28;
    goto LABEL_122;
  }

  v37 = *v31;
  if (!*v31)
  {
    goto LABEL_121;
  }

  v38 = *(*v37 + 136);
  if (v38 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    ZeroAttr = *v31;
  }

  else
  {
    ZeroAttr = 0;
  }

  if (!v36 || v38 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_122;
  }

  if (v38 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v28))
    {
      v41 = v36;
    }

    else
    {
      v41 = 0;
    }

    Context = v41;
    if (v41 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v28 + 1))
    {
      v42 = v28[1];
      v73 = *v28;
      v70 = v42;
      Value = mlir::ArrayAttr::getValue(&v73);
      if (Value == mlir::ArrayAttr::getValue(&v70))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v73, &v80);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v70, &__p);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v80, &__p);
        if (v77 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (v81 >= 0x41 && v80)
        {
          operator delete[](v80);
        }

        if (v90 == 1)
        {
          v44 = llvm::cast<mlir::ShapedType,mlir::Type>(&v87);
          ZeroAttr = mlir::DenseElementsAttr::get(v44, v45, &Context, 1);
          if ((v90 & 1) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_90;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v28) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v28 + 1))
    {
      v85 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v28);
      v86 = v46;
      v84[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v28 + 1);
      v84[1] = v47;
      Type = mlir::ElementsAttr::getType(&v85);
      if (Type == mlir::ElementsAttr::getType(v84))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v85, &v80);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v84, &__p);
        if (v83 == 1 && v79 == 1)
        {
          LOWORD(v73) = v80;
          if (v80 == 1)
          {
            v74 = v81;
          }

          else
          {
            (*(*v81 + 2))(&v74);
          }

          v75 = v82;
          LOWORD(v70) = __p;
          if (__p == 1)
          {
            v71 = v77;
          }

          else
          {
            (*(*v77 + 16))(&v71);
          }

          v72 = v78;
          Context = &v90;
          p_p = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
          v51 = mlir::ElementsAttr::getNumElements(v85, v86);
          if (v51)
          {
            v52 = v51;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v73, &v65);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v70, &v63);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v67, &v65, &v63);
              if (v64 >= 0x41 && v63)
              {
                operator delete[](v63);
              }

              if (v66 >= 0x41 && v65)
              {
                operator delete[](v65);
              }

              if (v69 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v67);
              if ((v69 & 1) != 0 && v68 >= 0x41 && v67)
              {
                operator delete[](v67);
              }

              ++v75;
              ++v72;
              if (!--v52)
              {
                goto LABEL_146;
              }
            }

            v55 = 0;
          }

          else
          {
LABEL_146:
            v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v87);
            v55 = mlir::DenseElementsAttr::get(v53, v54, Context, p_p);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
          if ((v70 & 1) == 0)
          {
            v56 = v71;
            v71 = 0;
            if (v56)
            {
              (*(*v56 + 8))(v56);
            }
          }

          if ((v73 & 1) == 0)
          {
            v57 = v74;
            v74 = 0;
            if (v57)
            {
              (*(*v57 + 1))(v57);
            }
          }

          ZeroAttr = v55;
        }

        else
        {
          ZeroAttr = 0;
        }

        if (v79 == 1 && (__p & 1) == 0)
        {
          v58 = v77;
          v77 = 0;
          if (v58)
          {
            v59 = ZeroAttr;
            (*(*v58 + 8))(v58);
            ZeroAttr = v59;
          }
        }

        if (v83 != 1)
        {
          goto LABEL_122;
        }

        if (v80)
        {
          goto LABEL_122;
        }

        v60 = v81;
        v81 = 0;
        if (!v60)
        {
          goto LABEL_122;
        }

        v40 = ZeroAttr;
        (*(*v60 + 1))(v60);
LABEL_93:
        ZeroAttr = v40;
        goto LABEL_122;
      }
    }

LABEL_121:
    ZeroAttr = 0;
    goto LABEL_122;
  }

  v73 = *v28;
  v70 = v37;
  v39 = mlir::AffineMapAttr::getValue(&v73);
  if (v39 != mlir::AffineMapAttr::getValue(&v70))
  {
    goto LABEL_121;
  }

  mlir::IntegerAttr::getValue(&v73, &v80);
  mlir::IntegerAttr::getValue(&v70, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v80, &__p);
  if (v77 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v81 >= 0x41 && v80)
  {
    operator delete[](v80);
  }

  if (v90 != 1)
  {
    goto LABEL_121;
  }

  ZeroAttr = mlir::IntegerAttr::get(v87, &Context);
  if (v90)
  {
LABEL_90:
    if (p_p < 0x41 || !Context)
    {
      goto LABEL_122;
    }

    v40 = ZeroAttr;
    operator delete[](Context);
    goto LABEL_93;
  }

LABEL_122:
  result = ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
LABEL_123:
  if (v62 >= 0x41)
  {
    if (v61)
    {
      v49 = result;
      operator delete[](v61);
      return v49;
    }
  }

  return result;
}

unint64_t mlir::arith::OrIOp::fold(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  LODWORD(p_p) = 1;
  v80 = 0;
  v5 = *(*(a2 + 40) + 8);
  v72 = &v80;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = mlir::detail::constant_int_value_binder::match(&v72, v5);
  v7 = v6;
  v8 = p_p;
  if (v6)
  {
    if (p_p > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase(&v80) != v8)
      {
        if (llvm::APInt::countTrailingOnesSlowCase(&v80) != v8)
        {
          if (v80)
          {
            operator delete[](v80);
          }

          goto LABEL_16;
        }

LABEL_14:
        v2 = *(*(a2 + 40) + 8) & 0xFFFFFFFFFFFFFFFBLL;
        if (v8 < 0x41)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }
    }

    else if (v80)
    {
      if (p_p && v80 != (0xFFFFFFFFFFFFFFFFLL >> -p_p))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v2 = *(*(*a1 + 72) + 24) | 4;
  }

  if (v8 < 0x41)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v80)
  {
    operator delete[](v80);
  }

LABEL_15:
  if (v7)
  {
    return v2;
  }

LABEL_16:
  v54 = 1;
  v53 = 0;
  v9 = *(*a1 + 72);
  v10 = *(v9 + 56);
  v72 = *(v9 + 24);
  v73 = &v53;
  v65 = v10;
  DefiningOp = mlir::Value::getDefiningOp(&v65);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  __p = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    goto LABEL_24;
  }

  if ((*(DefiningOp + 46) & 0x80) == 0)
  {
    goto LABEL_24;
  }

  if (*(DefiningOp + 68) != 2)
  {
    goto LABEL_24;
  }

  LOBYTE(v62) = 1;
  v80 = &v62;
  p_p = &__p;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v72, &v80);
  if (v62 != 1)
  {
    goto LABEL_24;
  }

  v12 = v54;
  if (!v54)
  {
    goto LABEL_91;
  }

  if (v54 <= 0x40)
  {
    if (v53 != (0xFFFFFFFFFFFFFFFFLL >> -v54))
    {
      goto LABEL_24;
    }

LABEL_91:
    v35 = *(*(*a1 + 72) + 56);
    goto LABEL_94;
  }

  if (llvm::APInt::countTrailingOnesSlowCase(&v53) == v12)
  {
    goto LABEL_91;
  }

LABEL_24:
  v13 = *(*a1 + 72);
  v14 = *(v13 + 24);
  v72 = *(v13 + 56);
  v73 = &v53;
  v65 = v14;
  v15 = mlir::Value::getDefiningOp(&v65);
  if (!v15 || (__p = v15, *(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id) || (*(v15 + 46) & 0x80) == 0 || *(v15 + 68) != 2 || (LOBYTE(v62) = 1, v80 = &v62, p_p = &__p, mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v72, &v80), v62 != 1))
  {
LABEL_32:
    v17 = *(a2 + 40);
    v18 = *v17;
    if (*v17 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_107;
    }

    v20 = v17 + 1;
    v19 = v17[1];
    if (v19 && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v18 = v17[1];
      goto LABEL_107;
    }

    if (v18)
    {
      v80 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v18);
      p_p = v21;
      if (v80)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v80);
        v18 = *v20;
        if (*v20)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v80 = 0;
      p_p = 0;
    }

    CallableForCallee = 0;
    v18 = *v20;
    if (*v20)
    {
LABEL_39:
      v18 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v18);
      v80 = v18;
      p_p = v23;
      if (!v18)
      {
        goto LABEL_107;
      }

LABEL_44:
      v24 = mlir::CallOpInterface::getCallableForCallee(&v80);
      v18 = 0;
      if (!CallableForCallee || !v24 || v24 != CallableForCallee)
      {
        goto LABEL_107;
      }

      v79 = CallableForCallee;
      v25 = *v17;
      if (*v17 && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v18 = *v17;
        goto LABEL_107;
      }

      v26 = *v20;
      if (*v20)
      {
        v27 = *(*v26 + 136);
        if (v27 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v18 = *v20;
        }

        else
        {
          v18 = 0;
        }

        if (!v25 || v27 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          goto LABEL_107;
        }

        if (v27 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v65 = *v17;
          v62 = v26;
          Value = mlir::AffineMapAttr::getValue(&v65);
          if (Value == mlir::AffineMapAttr::getValue(&v62))
          {
            mlir::IntegerAttr::getValue(&v65, &v72);
            mlir::IntegerAttr::getValue(&v62, &__p);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v80, &v72, &__p);
            if (v69 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v73 >= 0x41 && v72)
            {
              operator delete[](v72);
            }

            if (v82 == 1)
            {
              v18 = mlir::IntegerAttr::get(v79, &v80);
              if ((v82 & 1) == 0)
              {
                goto LABEL_107;
              }

LABEL_66:
              if (p_p >= 0x41 && v80)
              {
                v29 = v18;
                operator delete[](v80);
LABEL_69:
                v18 = v29;
                goto LABEL_107;
              }

              goto LABEL_107;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v17))
          {
            v30 = v25;
          }

          else
          {
            v30 = 0;
          }

          v80 = v30;
          if (v30 && mlir::DenseElementsAttr::isSplat(&v80) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v17 + 1))
          {
            v31 = v17[1];
            v65 = *v17;
            v62 = v31;
            v32 = mlir::ArrayAttr::getValue(&v65);
            if (v32 == mlir::ArrayAttr::getValue(&v62))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v65, &v72);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v62, &__p);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v80, &v72, &__p);
              if (v69 >= 0x41 && __p)
              {
                operator delete[](__p);
              }

              if (v73 >= 0x41 && v72)
              {
                operator delete[](v72);
              }

              if (v82 == 1)
              {
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v79);
                v18 = mlir::DenseElementsAttr::get(v33, v34, &v80, 1);
                if ((v82 & 1) == 0)
                {
                  goto LABEL_107;
                }

                goto LABEL_66;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v17) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v17 + 1))
          {
            v77 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17);
            v78 = v38;
            v76[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17 + 1);
            v76[1] = v39;
            Type = mlir::ElementsAttr::getType(&v77);
            if (Type == mlir::ElementsAttr::getType(v76))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v77, &v72);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v76, &__p);
              if (v75 == 1 && v71 == 1)
              {
                LOWORD(v65) = v72;
                if (v72 == 1)
                {
                  v66 = v73;
                }

                else
                {
                  (*(*v73 + 2))(&v66);
                }

                v67 = v74;
                LOWORD(v62) = __p;
                if (__p == 1)
                {
                  v63 = v69;
                }

                else
                {
                  (*(*v69 + 16))(&v63);
                }

                v64 = v70;
                v80 = &v82;
                p_p = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v77, v78);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&v80, NumElements);
                v46 = mlir::ElementsAttr::getNumElements(v77, v78);
                if (v46)
                {
                  v47 = v46;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v65, &v57);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v62, &v55);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v59, &v57, &v55);
                    if (v56 >= 0x41 && v55)
                    {
                      operator delete[](v55);
                    }

                    if (v58 >= 0x41 && v57)
                    {
                      operator delete[](v57);
                    }

                    if (v61 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v80, &v59);
                    if ((v61 & 1) != 0 && v60 >= 0x41 && v59)
                    {
                      operator delete[](v59);
                    }

                    ++v67;
                    ++v64;
                    if (!--v47)
                    {
                      goto LABEL_138;
                    }
                  }

                  v50 = 0;
                }

                else
                {
LABEL_138:
                  v48 = llvm::cast<mlir::ShapedType,mlir::Type>(&v79);
                  v50 = mlir::DenseElementsAttr::get(v48, v49, v80, p_p);
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v80);
                if ((v62 & 1) == 0)
                {
                  v51 = v63;
                  v63 = 0;
                  if (v51)
                  {
                    (*(*v51 + 8))(v51);
                  }
                }

                v18 = v50;
                if ((v65 & 1) == 0)
                {
                  v52 = v66;
                  v66 = 0;
                  if (v52)
                  {
                    (*(*v52 + 1))(v52);
                    v18 = v50;
                  }
                }
              }

              else
              {
                v18 = 0;
              }

              if (v71 == 1 && (__p & 1) == 0)
              {
                v42 = v69;
                v69 = 0;
                if (v42)
                {
                  v43 = v18;
                  (*(*v42 + 8))(v42);
                  v18 = v43;
                }
              }

              if (v75 == 1 && (v72 & 1) == 0)
              {
                v44 = v73;
                v73 = 0;
                if (v44)
                {
                  v29 = v18;
                  (*(*v44 + 1))(v44);
                  goto LABEL_69;
                }
              }

LABEL_107:
              v2 = v18 & 0xFFFFFFFFFFFFFFFBLL;
              if (v54 < 0x41)
              {
                return v2;
              }

              goto LABEL_108;
            }
          }
        }
      }

      v18 = 0;
      goto LABEL_107;
    }

LABEL_43:
    v80 = v18;
    p_p = 0;
    if (!v18)
    {
      goto LABEL_107;
    }

    goto LABEL_44;
  }

  v16 = v54;
  if (v54)
  {
    if (v54 > 0x40)
    {
      if (llvm::APInt::countTrailingOnesSlowCase(&v53) != v16)
      {
        goto LABEL_32;
      }
    }

    else if (v53 != (0xFFFFFFFFFFFFFFFFLL >> -v54))
    {
      goto LABEL_32;
    }
  }

  v35 = *(*(*a1 + 72) + 24);
LABEL_94:
  v80 = v35;
  v36 = mlir::Value::getDefiningOp(&v80);
  if (*(*(v36 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v2 = *(*(v37 + 72) + 56) | 4;
  if (v54 >= 0x41)
  {
LABEL_108:
    if (v53)
    {
      operator delete[](v53);
    }
  }

  return v2;
}

uint64_t mlir::arith::XOrIOp::fold(uint64_t *a1, uint64_t a2)
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 40) + 8);
  if (!v4)
  {
    goto LABEL_15;
  }

  LODWORD(v79) = 1;
  Context = 0;
  v70 = &Context;
  v5 = mlir::detail::constant_int_value_binder::match(&v70, v4);
  v6 = v79;
  if (v5)
  {
    if (v79 < 0x41)
    {
      v7 = Context == 0;
      goto LABEL_11;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
    {
      if (Context)
      {
        operator delete[](Context);
      }

      goto LABEL_15;
    }

    v7 = *Context == 0;
  }

  else
  {
    v7 = 0;
    if (v79 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!Context)
  {
LABEL_11:
    if (v7)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_15;
  }

  operator delete[](Context);
  if (v7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

LABEL_15:
  v9 = *(*a1 + 72);
  if (*(v9 + 24) == *(v9 + 56))
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
  }

  Context = *(v9 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  if (DefiningOp)
  {
    v11 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v12 = *(DefiningOp + 72);
      v13 = *(v12 + 56);
      v14 = *(*(v11 + 72) + 56);
      v15 = *(v12 + 24);
      if (v13 == v14)
      {
        return v15 | 4;
      }

      if (v15 == v14)
      {
        return v13 | 4;
      }
    }
  }

  else
  {
    v11 = *a1;
  }

  Context = *(*(v11 + 72) + 56);
  v17 = mlir::Value::getDefiningOp(&Context);
  if (v17 && *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v24 = *(v17 + 72);
    v25 = *(v24 + 56);
    v26 = *(*(*a1 + 72) + 24);
    v13 = *(v24 + 24);
    if (v25 == v26)
    {
      return v13 | 4;
    }

    if (v13 == v26)
    {
      return v25 | 4;
    }
  }

  v18 = *(a2 + 40);
  ZeroAttr = *v18;
  if (!*v18 || *(*ZeroAttr + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v20 = v18 + 1;
    v19 = v18[1];
    if (v19 && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      ZeroAttr = v18[1];
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (ZeroAttr)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      v79 = v21;
      if (Context)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&Context);
        ZeroAttr = *v20;
        if (*v20)
        {
          goto LABEL_32;
        }

LABEL_39:
        Context = ZeroAttr;
        v79 = 0;
        if (ZeroAttr)
        {
          goto LABEL_40;
        }

        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      Context = 0;
      v79 = 0;
    }

    CallableForCallee = 0;
    ZeroAttr = *v20;
    if (*v20)
    {
LABEL_32:
      ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      Context = ZeroAttr;
      v79 = v23;
      if (!ZeroAttr)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_40:
      v27 = mlir::CallOpInterface::getCallableForCallee(&Context);
      ZeroAttr = 0;
      if (!CallableForCallee || !v27 || v27 != CallableForCallee)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v77 = CallableForCallee;
      v28 = *v18;
      if (*v18 && *(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        ZeroAttr = *v18;
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v29 = *v20;
      if (*v20)
      {
        v30 = *(*v29 + 136);
        if (v30 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          ZeroAttr = *v20;
        }

        else
        {
          ZeroAttr = 0;
        }

        if (!v28 || v30 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v30 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v63 = *v18;
          v60 = v29;
          Value = mlir::AffineMapAttr::getValue(&v63);
          if (Value == mlir::AffineMapAttr::getValue(&v60))
          {
            mlir::IntegerAttr::getValue(&v63, &v70);
            mlir::IntegerAttr::getValue(&v60, &__p);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v70, &__p);
            if (v67 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v71 >= 0x41 && v70)
            {
              operator delete[](v70);
            }

            if (v80 == 1)
            {
              ZeroAttr = mlir::IntegerAttr::get(v77, &Context);
              if ((v80 & 1) == 0 || v79 < 0x41 || !Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v32 = ZeroAttr;
              v33 = Context;
LABEL_65:
              operator delete[](v33);
LABEL_66:
              ZeroAttr = v32;
              return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v18))
          {
            v34 = v28;
          }

          else
          {
            v34 = 0;
          }

          Context = v34;
          if (v34 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v18 + 1))
          {
            v35 = v18[1];
            v63 = *v18;
            v60 = v35;
            v36 = mlir::ArrayAttr::getValue(&v63);
            if (v36 == mlir::ArrayAttr::getValue(&v60))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v63, &v70);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v60, &__p);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v70, &__p);
              if (v67 >= 0x41 && __p)
              {
                operator delete[](__p);
              }

              if (v71 >= 0x41 && v70)
              {
                operator delete[](v70);
              }

              if (v80 == 1)
              {
                v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v77);
                ZeroAttr = mlir::DenseElementsAttr::get(v37, v38, &Context, 1);
                if ((v80 & 1) == 0 || v79 < 0x41)
                {
                  return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
                }

                v32 = ZeroAttr;
                v33 = Context;
                if (!Context)
                {
                  goto LABEL_66;
                }

                goto LABEL_65;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v18) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v18 + 1))
          {
            v75 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v18);
            v76 = v39;
            v74[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v18 + 1);
            v74[1] = v40;
            Type = mlir::ElementsAttr::getType(&v75);
            if (Type == mlir::ElementsAttr::getType(v74))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, &v70);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v74, &__p);
              if (v73 == 1 && v69 == 1)
              {
                LOWORD(v63) = v70;
                if (v70 == 1)
                {
                  v64 = v71;
                }

                else
                {
                  (*(*v71 + 16))(&v64);
                }

                v65 = v72;
                LOWORD(v60) = __p;
                if (__p == 1)
                {
                  v61 = v67;
                }

                else
                {
                  (*(*v67 + 16))(&v61);
                }

                v62 = v68;
                Context = &v80;
                v79 = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v75, v76);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
                v43 = mlir::ElementsAttr::getNumElements(v75, v76);
                if (v43)
                {
                  v44 = v43;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v63, &v55);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v60, &v53);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v57, &v55, &v53);
                    if (v54 >= 0x41 && v53)
                    {
                      operator delete[](v53);
                    }

                    if (v56 >= 0x41 && v55)
                    {
                      operator delete[](v55);
                    }

                    if (v59 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v57);
                    if ((v59 & 1) != 0 && v58 >= 0x41 && v57)
                    {
                      operator delete[](v57);
                    }

                    ++v65;
                    ++v62;
                    if (!--v44)
                    {
                      goto LABEL_117;
                    }
                  }

                  v47 = 0;
                }

                else
                {
LABEL_117:
                  v45 = llvm::cast<mlir::ShapedType,mlir::Type>(&v77);
                  v47 = mlir::DenseElementsAttr::get(v45, v46, Context, v79);
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
                if ((v60 & 1) == 0)
                {
                  v48 = v61;
                  v61 = 0;
                  if (v48)
                  {
                    (*(*v48 + 8))(v48);
                  }
                }

                if ((v63 & 1) == 0)
                {
                  v49 = v64;
                  v64 = 0;
                  if (v49)
                  {
                    (*(*v49 + 8))(v49);
                  }
                }

                ZeroAttr = v47;
              }

              else
              {
                ZeroAttr = 0;
              }

              if (v69 == 1 && (__p & 1) == 0)
              {
                v50 = v67;
                v67 = 0;
                if (v50)
                {
                  v51 = ZeroAttr;
                  (*(*v50 + 8))(v50);
                  ZeroAttr = v51;
                }
              }

              if (v73 != 1)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              if (v70)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v52 = v71;
              v71 = 0;
              if (!v52)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v32 = ZeroAttr;
              (*(*v52 + 8))(v52);
              goto LABEL_66;
            }
          }
        }
      }

      ZeroAttr = 0;
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_39;
  }

  return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::XOrIOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 2);
  *&v65 = "arith.cmpi";
  *(&v65 + 1) = 10;
  mlir::Pattern::Pattern((v4 + 2), "arith.xori", 10, v64, a2, &v65, 1uLL);
  *v4 = &unk_1F5AEE468;
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

  *&v65 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::XOrINotCmpI]";
  *(&v65 + 1) = 84;
  v9 = llvm::StringRef::find(&v65, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v65 + 1) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v65 + 1);
  }

  v11 = v65 + v10;
  v12 = *(&v65 + 1) - v10;
  if (*(&v65 + 1) - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = *(&v65 + 1) - v10;
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
    goto LABEL_80;
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
      goto LABEL_81;
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
  mlir::PatternBenefit::PatternBenefit(&v64, 3);
  v65 = xmmword_1E86D2870;
  v66 = *&off_1E86D2880;
  mlir::Pattern::Pattern((v24 + 2), "arith.xori", 10, v64, a2, &v65, 2uLL);
  *v24 = &unk_1F5AEE4C0;
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

  *&v65 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::XOrIOfExtUI]";
  *(&v65 + 1) = 84;
  v29 = llvm::StringRef::find(&v65, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v65 + 1) >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = *(&v65 + 1);
  }

  v31 = v65 + v30;
  v32 = *(&v65 + 1) - v30;
  if (*(&v65 + 1) - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = *(&v65 + 1) - v30;
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
    goto LABEL_80;
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
      goto LABEL_81;
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
  mlir::PatternBenefit::PatternBenefit(&v64, 3);
  v65 = xmmword_1E86D2890;
  v66 = *&off_1E86D28A0;
  mlir::Pattern::Pattern((v44 + 2), "arith.xori", 10, v64, a2, &v65, 2uLL);
  *v44 = &unk_1F5AEE518;
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

  *&v65 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::XOrIOfExtSI]";
  *(&v65 + 1) = 84;
  v49 = llvm::StringRef::find(&v65, "DesiredTypeName = ", 0x12uLL, 0);
  if (*(&v65 + 1) >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = *(&v65 + 1);
  }

  v51 = v65 + v50;
  v52 = *(&v65 + 1) - v50;
  if (*(&v65 + 1) - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = *(&v65 + 1) - v50;
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
LABEL_80:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
    if (!(v61 >> 61))
    {
      v62 = operator new(8 * v61);
      goto LABEL_77;
    }

LABEL_81:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v62 = 0;
LABEL_77:
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
}

uint64_t mlir::arith::NegFOp::fold(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v69 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v69);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return *(*(DefiningOp + 72) + 24) | 4;
  }

  v4 = *(a2 + 48);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(*v5 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      if (v6 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v7 = v5;
        }

        else
        {
          v7 = 0;
        }

        v69 = v7;
        if (v7 && mlir::DenseElementsAttr::isSplat(&v69))
        {
          v58 = *v4;
          mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v58, v66);
          mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(&v69, v66);
          v8 = v67[0];
          v10 = llvm::APFloatBase::PPCDoubleDouble(v9);
          if (v10 == v8)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v67);
            if (v72 == 1)
            {
LABEL_32:
              Value = mlir::ArrayAttr::getValue(&v58);
              v5 = mlir::DenseElementsAttr::get(Value, v27, &v69, 1);
              if ((v72 & 1) == 0)
              {
                return v5 & 0xFFFFFFFFFFFFFFFBLL;
              }

              if (v10 == v70)
              {
                goto LABEL_34;
              }

              goto LABEL_30;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v67);
            if (v72 == 1)
            {
              goto LABEL_32;
            }
          }

LABEL_38:
          v5 = 0;
          return v5 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v12 = **v4;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_38;
          }
        }

        else
        {
          mlir::arith::ConstantOp::verify();
          v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_38;
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
        if (v16 == &v14[2 * v15] || *v16 != v13 || !v16[1])
        {
          goto LABEL_38;
        }

        v28 = *v4;
        if (!*v4)
        {
          goto LABEL_54;
        }

        v29 = *v28;
        {
          v30 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          if (v32)
          {
            goto LABEL_44;
          }
        }

        else
        {
          mlir::arith::ConstantOp::verify();
          v30 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          if (v32)
          {
LABEL_44:
            v33 = v31;
            v34 = v32;
            do
            {
              v35 = v34 >> 1;
              v36 = &v33[2 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 2;
              v34 += ~(v34 >> 1);
              if (v38 < v30)
              {
                v33 = v37;
              }

              else
              {
                v34 = v35;
              }
            }

            while (v34);
LABEL_52:
            if (v33 != &v31[2 * v32] && *v33 == v30)
            {
              v39 = v33[1];
LABEL_55:
              v62 = v28;
              v63 = v39;
              mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v62, &v58);
              if (v61 == 1)
              {
                v55 = v58;
                if (v58 == 1)
                {
                  v56 = v59;
                }

                else
                {
                  (*(*v59 + 16))(&v56);
                }

                v57 = v60;
                v69 = &v71;
                v70 = 0x100000000;
                NumElements = mlir::ElementsAttr::getNumElements(v62, v63);
                llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v69, NumElements);
                v41 = mlir::ElementsAttr::getNumElements(v62, v63);
                if (v41)
                {
                  v42 = v41;
                  v43 = v57;
                  do
                  {
                    if (HIBYTE(v55))
                    {
                      v44 = 0;
                    }

                    else
                    {
                      v44 = v43;
                    }

                    if (v55 == 1)
                    {
                      v45 = v56 + 32 * v44;
                      v47 = *(v45 + 1);
                      v46 = (v45 + 8);
                      if (llvm::APFloatBase::PPCDoubleDouble(v56) == v47)
                      {
                        llvm::detail::DoubleAPFloat::DoubleAPFloat(v65, v46);
                      }

                      else
                      {
                        llvm::detail::IEEEFloat::IEEEFloat(v65, v46);
                      }
                    }

                    else
                    {
                      (*(*v56 + 24))(&v64);
                    }

                    mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(v66, &v64);
                    v48 = v65[0];
                    v50 = llvm::APFloatBase::PPCDoubleDouble(v49);
                    if (v50 == v48)
                    {
                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v65);
                      if (v68 != 1)
                      {
LABEL_79:
                        v5 = 0;
                        goto LABEL_80;
                      }
                    }

                    else
                    {
                      llvm::detail::IEEEFloat::~IEEEFloat(v65);
                      if (v68 != 1)
                      {
                        goto LABEL_79;
                      }
                    }

                    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v66);
                    if (v68)
                    {
                      if (v50 == v67[0])
                      {
                        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v67);
                      }

                      else
                      {
                        llvm::detail::IEEEFloat::~IEEEFloat(v67);
                      }
                    }

                    v43 = ++v57;
                    --v42;
                  }

                  while (v42);
                }

                ArgOperands = mlir::CallOpInterface::getArgOperands(&v62);
                v5 = mlir::DenseElementsAttr::get(ArgOperands, v52, v69, v70);
LABEL_80:
                llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v69);
                if ((v55 & 1) == 0)
                {
                  v53 = v56;
                  v56 = 0;
                  if (v53)
                  {
                    (*(*v53 + 8))(v53);
                  }
                }

                if ((v61 & 1) != 0 && (v58 & 1) == 0)
                {
                  v54 = v59;
                  v59 = 0;
                  if (v54)
                  {
                    (*(*v54 + 8))(v54);
                  }
                }

                return v5 & 0xFFFFFFFFFFFFFFFBLL;
              }

              goto LABEL_38;
            }

LABEL_54:
            v39 = 0;
            goto LABEL_55;
          }
        }

        v32 = 0;
        v33 = v31;
        goto LABEL_52;
      }

      v58 = *v4;
      mlir::FloatAttr::getValue(&v58, v66);
      mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(&v69, v66);
      v22 = v67[0];
      v24 = llvm::APFloatBase::PPCDoubleDouble(v23);
      if (v24 == v22)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v67);
        if (v72 != 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v67);
        if (v72 != 1)
        {
          goto LABEL_38;
        }
      }

      v25 = mlir::AffineMapAttr::getValue(&v58);
      v5 = mlir::FloatAttr::get(v25, &v69);
      if (v72)
      {
        if (v24 == v70)
        {
LABEL_34:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v70);
          return v5 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_30:
        llvm::detail::IEEEFloat::~IEEEFloat(&v70);
      }
    }
  }

  return v5 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::AddFOp::fold(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v57 = mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v57, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v57 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v58 = v10;
    if (v57)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v57);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v57 = v7;
      v58 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  CallableForCallee = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v57 = v7;
  v58 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::CallOpInterface::getCallableForCallee(&v57);
  v7 = 0;
  if (!CallableForCallee || !v13 || v13 != CallableForCallee)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = CallableForCallee;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(&v46, v56);
          mlir::FloatAttr::getValue(v55, v61);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
          llvm::APFloat::~APFloat(v61);
          llvm::APFloat::~APFloat(v56);
          if (v60 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v57);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v57 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v57) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, v61);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
            llvm::APFloat::~APFloat(v61);
            llvm::APFloat::~APFloat(v56);
            if (v60 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v57, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v57);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, v61);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v64 == 1 && v49 == 1)
            {
              v43[0] = v61[0];
              v43[1] = v61[1];
              if (v61[0] == 1)
              {
                v44 = v62;
              }

              else
              {
                (*(*v62 + 16))(&v44);
              }

              v45 = v63;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v57 = &v59;
              v58 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v57, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v56[32] != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v57, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v57, v58);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v57);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43[0] & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v64 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v61[0])
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v62;
            v62 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::SubFOp::fold(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v57 = mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v57, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v57 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v58 = v10;
    if (v57)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v57);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v57 = v7;
      v58 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  CallableForCallee = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v57 = v7;
  v58 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::CallOpInterface::getCallableForCallee(&v57);
  v7 = 0;
  if (!CallableForCallee || !v13 || v13 != CallableForCallee)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = CallableForCallee;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(&v46, v56);
          mlir::FloatAttr::getValue(v55, v61);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
          llvm::APFloat::~APFloat(v61);
          llvm::APFloat::~APFloat(v56);
          if (v60 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v57);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v57 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v57) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, v61);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
            llvm::APFloat::~APFloat(v61);
            llvm::APFloat::~APFloat(v56);
            if (v60 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v57, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v57);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, v61);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v64 == 1 && v49 == 1)
            {
              v43[0] = v61[0];
              v43[1] = v61[1];
              if (v61[0] == 1)
              {
                v44 = v62;
              }

              else
              {
                (*(*v62 + 16))(&v44);
              }

              v45 = v63;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v57 = &v59;
              v58 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v57, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v56[32] != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v57, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v57, v58);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v57);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43[0] & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v64 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v61[0])
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v62;
            v62 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MaximumFOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v4 = *(a2 + 48);
  v5 = v4[1];
  v58 = mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v5)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v58, v5))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v4 = *(a2 + 48);
  }

  v9 = *v4;
  if (*v4 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v4 + 1;
  v10 = v4[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v4[1];
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v9)
  {
    v58 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
    v59 = v12;
    if (v58)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v58);
      v9 = *v11;
      if (*v11)
      {
        goto LABEL_14;
      }

LABEL_18:
      v58 = v9;
      v59 = 0;
      if (!v9)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  CallableForCallee = 0;
  v9 = *v11;
  if (!*v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
  v58 = v9;
  v59 = v14;
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_19:
  v15 = mlir::CallOpInterface::getCallableForCallee(&v58);
  v9 = 0;
  if (!CallableForCallee || !v15 || v15 != CallableForCallee)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v54 = CallableForCallee;
  v16 = *v4;
  if (*v4 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v4;
  }

  else
  {
    v17 = *v11;
    if (*v11)
    {
      v18 = *(*v17 + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = *v11;
      }

      else
      {
        v9 = 0;
      }

      if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v18 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v47 = *v4;
        v56[0] = v17;
        Value = mlir::AffineMapAttr::getValue(&v47);
        if (Value == mlir::AffineMapAttr::getValue(v56))
        {
          mlir::FloatAttr::getValue(&v47, v57);
          mlir::FloatAttr::getValue(v56, v62);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v57, v62);
          llvm::APFloat::~APFloat(v62);
          llvm::APFloat::~APFloat(v57);
          if (v61 == 1)
          {
            v20 = mlir::FloatAttr::get(v54, &v58);
LABEL_35:
            v21 = v20;
LABEL_57:
            std::optional<llvm::APFloat>::~optional(&v58);
LABEL_58:
            v9 = v21;
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        v58 = v22;
        if (v22 && mlir::DenseElementsAttr::isSplat(&v58) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v23 = v4[1];
          v47 = *v4;
          v56[0] = v23;
          v24 = mlir::ArrayAttr::getValue(&v47);
          if (v24 == mlir::ArrayAttr::getValue(v56))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v47, v57);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v56, v62);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v57, v62);
            llvm::APFloat::~APFloat(v62);
            llvm::APFloat::~APFloat(v57);
            if (v61 == 1)
            {
              v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
              v20 = mlir::DenseElementsAttr::get(v25, v26, &v58, 1);
              goto LABEL_35;
            }

LABEL_56:
            v21 = 0;
            goto LABEL_57;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v52 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4);
          v53 = v27;
          v51[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4 + 1);
          v51[1] = v28;
          Type = mlir::ElementsAttr::getType(&v52);
          if (Type == mlir::ElementsAttr::getType(v51))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v52, v62);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v51, &v47);
            if (v65 == 1 && v50 == 1)
            {
              v44[0] = v62[0];
              v44[1] = v62[1];
              if (v62[0] == 1)
              {
                v45 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v45);
              }

              v46 = v64;
              v41 = v47;
              if (v47 == 1)
              {
                v42 = v48;
              }

              else
              {
                (*(*v48 + 16))(&v42);
              }

              v43 = v49;
              v58 = &v60;
              v59 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v52, v53);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v58, NumElements);
              v31 = mlir::ElementsAttr::getNumElements(v52, v53);
              if (v31)
              {
                v32 = v31;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v44, v56);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v41, v55);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v57, v56, v55);
                  llvm::APFloat::~APFloat(v55);
                  llvm::APFloat::~APFloat(v56);
                  if (v57[32] != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v58, v57);
                  std::optional<llvm::APFloat>::~optional(v57);
                  ++v46;
                  ++v43;
                  if (!--v32)
                  {
                    goto LABEL_68;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v57);
                v35 = 0;
              }

              else
              {
LABEL_68:
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
                v35 = mlir::DenseElementsAttr::get(v33, v34, v58, v59);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v58);
              if ((v41 & 1) == 0)
              {
                v36 = v42;
                v42 = 0;
                if (v36)
                {
                  (*(*v36 + 8))(v36);
                }
              }

              if ((v44[0] & 1) == 0)
              {
                v37 = v45;
                v45 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
                }
              }

              v9 = v35;
            }

            else
            {
              v9 = 0;
            }

            if (v50 == 1 && (v47 & 1) == 0)
            {
              v38 = v48;
              v48 = 0;
              if (v38)
              {
                v39 = v9;
                (*(*v38 + 8))(v38);
                v9 = v39;
              }
            }

            if (v65 != 1)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62[0])
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v40 = v63;
            v63 = 0;
            if (!v40)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v21 = v9;
            (*(*v40 + 8))(v40);
            goto LABEL_58;
          }
        }
      }
    }

    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MaxSIOp::fold(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v74) = 1;
  v73 = 0;
  v5 = *(*(a2 + 40) + 8);
  v65 = &v73;
  if (!v5)
  {
    goto LABEL_23;
  }

  result = mlir::detail::constant_int_value_binder::match(&v65, v5);
  v8 = result;
  v9 = v74;
  if (result)
  {
    if (v74 <= 0x40)
    {
      if ((v73 ^ (-1 << (v74 - 1))) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v10 = 56;
      }

      else
      {
        if (v73 != 1 << (v74 - 1))
        {
          goto LABEL_23;
        }

        v10 = 24;
      }

      goto LABEL_16;
    }

    v11 = result;
    v12 = v74 - 1;
    if ((*(v73 + 8 * ((v74 - 1) >> 6)) >> (v74 - 1)))
    {
      result = llvm::APInt::countTrailingZerosSlowCase(&v73);
      if (result == v12)
      {
        v10 = 24;
LABEL_15:
        v8 = v11;
LABEL_16:
        result = *(*(*a1 + 72) + v10) | 4;
        goto LABEL_17;
      }
    }

    else
    {
      result = llvm::APInt::countTrailingOnesSlowCase(&v73);
      if (result == v12)
      {
        v10 = 56;
        goto LABEL_15;
      }
    }

    v13 = 1;
    v14 = v73;
    if (v73)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_17:
  v13 = v8 ^ 1;
  if (v9 >= 0x41)
  {
    v14 = v73;
    if (v73)
    {
LABEL_19:
      v15 = result;
      operator delete[](v14);
      result = v15;
      if ((v13 & 1) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

LABEL_22:
  if (!v13)
  {
    return result;
  }

LABEL_23:
  v16 = *(a2 + 40);
  v17 = *v16;
  if (*v16 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v19 = v16 + 1;
  v18 = v16[1];
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = v16[1];
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v17)
  {
    v73 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v74 = v20;
    if (v73)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v73);
      v17 = *v19;
      if (*v19)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  CallableForCallee = 0;
  v17 = *v19;
  if (*v19)
  {
LABEL_30:
    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v73 = v17;
    v74 = v22;
    if (!v17)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_35;
  }

LABEL_34:
  v73 = v17;
  v74 = 0;
  if (!v17)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_35:
  v23 = mlir::CallOpInterface::getCallableForCallee(&v73);
  v17 = 0;
  if (!CallableForCallee || !v23 || v23 != CallableForCallee)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v72 = CallableForCallee;
  v24 = *v16;
  if (*v16 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v16;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v25 = *v19;
  if (!*v19)
  {
    goto LABEL_86;
  }

  v26 = *(*v25 + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v19;
  }

  else
  {
    v17 = 0;
  }

  if (!v24 || v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v26 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v16))
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    v73 = v29;
    if (v29 && mlir::DenseElementsAttr::isSplat(&v73) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v30 = v16[1];
      v58 = *v16;
      v55 = v30;
      Value = mlir::ArrayAttr::getValue(&v58);
      if (Value == mlir::ArrayAttr::getValue(&v55))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v58, &v65);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v55, &__p);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &__p);
        if (v62 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (v66 >= 0x41 && v65)
        {
          operator delete[](v65);
        }

        if (v75 == 1)
        {
          v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
          v17 = mlir::DenseElementsAttr::get(v32, v33, &v73, 1);
          if ((v75 & 1) == 0)
          {
            return v17 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_57;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v70 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16);
      v71 = v34;
      v69[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16 + 1);
      v69[1] = v35;
      Type = mlir::ElementsAttr::getType(&v70);
      if (Type == mlir::ElementsAttr::getType(v69))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, &v65);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v69, &__p);
        if (v68 == 1 && v64 == 1)
        {
          LOWORD(v58) = v65;
          if (v65 == 1)
          {
            v59 = v66;
          }

          else
          {
            (*(*v66 + 16))(&v59);
          }

          v60 = v67;
          LOWORD(v55) = __p;
          if (__p == 1)
          {
            v56 = v62;
          }

          else
          {
            (*(*v62 + 16))(&v56);
          }

          v57 = v63;
          v73 = &v75;
          v74 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v70, v71);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v73, NumElements);
          v38 = mlir::ElementsAttr::getNumElements(v70, v71);
          if (v38)
          {
            v39 = v38;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v58, &v50);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v55, &v48);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v52, &v50, &v48);
              if (v49 >= 0x41 && v48)
              {
                operator delete[](v48);
              }

              if (v51 >= 0x41 && v50)
              {
                operator delete[](v50);
              }

              if (v54 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v73, &v52);
              if ((v54 & 1) != 0 && v53 >= 0x41 && v52)
              {
                operator delete[](v52);
              }

              ++v60;
              ++v57;
              if (!--v39)
              {
                goto LABEL_108;
              }
            }

            v42 = 0;
          }

          else
          {
LABEL_108:
            v40 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
            v42 = mlir::DenseElementsAttr::get(v40, v41, v73, v74);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v73);
          if ((v55 & 1) == 0)
          {
            v43 = v56;
            v56 = 0;
            if (v43)
            {
              (*(*v43 + 8))(v43);
            }
          }

          if ((v58 & 1) == 0)
          {
            v44 = v59;
            v59 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v17 = v42;
        }

        else
        {
          v17 = 0;
        }

        if (v64 == 1 && (__p & 1) == 0)
        {
          v45 = v62;
          v62 = 0;
          if (v45)
          {
            v46 = v17;
            (*(*v45 + 8))(v45);
            v17 = v46;
          }
        }

        if (v68 != 1)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v65)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v47 = v66;
        v66 = 0;
        if (!v47)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v28 = v17;
        (*(*v47 + 8))(v47);
LABEL_60:
        v17 = v28;
        return v17 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_86:
    v17 = 0;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v58 = *v16;
  v55 = v25;
  v27 = mlir::AffineMapAttr::getValue(&v58);
  if (v27 != mlir::AffineMapAttr::getValue(&v55))
  {
    goto LABEL_86;
  }

  mlir::IntegerAttr::getValue(&v58, &v65);
  mlir::IntegerAttr::getValue(&v55, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &__p);
  if (v62 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v66 >= 0x41 && v65)
  {
    operator delete[](v65);
  }

  if (v75 != 1)
  {
    goto LABEL_86;
  }

  v17 = mlir::IntegerAttr::get(v72, &v73);
  if (v75)
  {
LABEL_57:
    if (v74 < 0x41 || !v73)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v28 = v17;
    operator delete[](v73);
    goto LABEL_60;
  }

  return v17 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MaxUIOp::fold(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v71) = 1;
  v70 = 0;
  v5 = *(*(a2 + 40) + 8);
  v62 = &v70;
  if (!v5)
  {
    goto LABEL_21;
  }

  result = mlir::detail::constant_int_value_binder::match(&v62, v5);
  v8 = result;
  v9 = v71;
  if (result)
  {
    v10 = a1;
    if (!v71)
    {
LABEL_7:
      v11 = 56;
LABEL_16:
      result = *(*(*v10 + 72) + v11) | 4;
      goto LABEL_17;
    }

    if (v71 <= 0x40)
    {
      if (v70 != (0xFFFFFFFFFFFFFFFFLL >> -v71))
      {
        if (v70)
        {
          goto LABEL_21;
        }

        v11 = 24;
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    if (llvm::APInt::countTrailingOnesSlowCase(&v70) == v9)
    {
      v11 = 56;
LABEL_15:
      v10 = a1;
      goto LABEL_16;
    }

    if (llvm::APInt::countLeadingZerosSlowCase(&v70) == v9)
    {
      v11 = 24;
      goto LABEL_15;
    }

    if (v70)
    {
      operator delete[](v70);
    }

LABEL_21:
    v13 = *(a2 + 40);
    v14 = *v13;
    if (*v13 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v16 = v13 + 1;
    v15 = v13[1];
    if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = v13[1];
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (v14)
    {
      v70 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
      v71 = v17;
      if (v70)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v70);
        v14 = *v16;
        if (*v16)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    CallableForCallee = 0;
    v14 = *v16;
    if (*v16)
    {
LABEL_28:
      v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
      v70 = v14;
      v71 = v19;
      if (!v14)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_33;
    }

LABEL_32:
    v70 = v14;
    v71 = 0;
    if (!v14)
    {
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

LABEL_33:
    v20 = mlir::CallOpInterface::getCallableForCallee(&v70);
    v14 = 0;
    if (!CallableForCallee || !v20 || v20 != CallableForCallee)
    {
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v69 = CallableForCallee;
    v21 = *v13;
    if (*v13 && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = *v13;
      return v14 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v22 = *v16;
    if (*v16)
    {
      v23 = *(*v22 + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = *v16;
      }

      else
      {
        v14 = 0;
      }

      if (!v21 || v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v55 = *v13;
        v52 = v22;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (Value == mlir::AffineMapAttr::getValue(&v52))
        {
          mlir::IntegerAttr::getValue(&v55, &v62);
          mlir::IntegerAttr::getValue(&v52, &__p);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v70, &v62, &__p);
          if (v59 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v63 >= 0x41 && v62)
          {
            operator delete[](v62);
          }

          if (v72 == 1)
          {
            v14 = mlir::IntegerAttr::get(v69, &v70);
            if (v72)
            {
LABEL_55:
              if (v71 < 0x41 || !v70)
              {
                return v14 & 0xFFFFFFFFFFFFFFFBLL;
              }

              v25 = v14;
              operator delete[](v70);
              goto LABEL_58;
            }

            return v14 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v13))
        {
          v26 = v21;
        }

        else
        {
          v26 = 0;
        }

        v70 = v26;
        if (v26 && mlir::DenseElementsAttr::isSplat(&v70) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v13 + 1))
        {
          v27 = v13[1];
          v55 = *v13;
          v52 = v27;
          v28 = mlir::ArrayAttr::getValue(&v55);
          if (v28 == mlir::ArrayAttr::getValue(&v52))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v55, &v62);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v52, &__p);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v70, &v62, &__p);
            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v63 >= 0x41 && v62)
            {
              operator delete[](v62);
            }

            if (v72 == 1)
            {
              v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v69);
              v14 = mlir::DenseElementsAttr::get(v29, v30, &v70, 1);
              if ((v72 & 1) == 0)
              {
                return v14 & 0xFFFFFFFFFFFFFFFBLL;
              }

              goto LABEL_55;
            }
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v13) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v13 + 1))
        {
          v67 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v13);
          v68 = v31;
          v66[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v13 + 1);
          v66[1] = v32;
          Type = mlir::ElementsAttr::getType(&v67);
          if (Type == mlir::ElementsAttr::getType(v66))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v67, &v62);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(v66, &__p);
            if (v65 == 1 && v61 == 1)
            {
              LOWORD(v55) = v62;
              if (v62 == 1)
              {
                v56 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v56);
              }

              v57 = v64;
              LOWORD(v52) = __p;
              if (__p == 1)
              {
                v53 = v59;
              }

              else
              {
                (*(*v59 + 16))(&v53);
              }

              v54 = v60;
              v70 = &v72;
              v71 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v70, NumElements);
              v35 = mlir::ElementsAttr::getNumElements(v67, v68);
              if (v35)
              {
                v36 = v35;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v55, &v47);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v52, &v45);
                  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v49, &v47, &v45);
                  if (v46 >= 0x41 && v45)
                  {
                    operator delete[](v45);
                  }

                  if (v48 >= 0x41 && v47)
                  {
                    operator delete[](v47);
                  }

                  if (v51 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v70, &v49);
                  if ((v51 & 1) != 0 && v50 >= 0x41 && v49)
                  {
                    operator delete[](v49);
                  }

                  ++v57;
                  ++v54;
                  if (!--v36)
                  {
                    goto LABEL_108;
                  }
                }

                v39 = 0;
              }

              else
              {
LABEL_108:
                v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v69);
                v39 = mlir::DenseElementsAttr::get(v37, v38, v70, v71);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v70);
              if ((v52 & 1) == 0)
              {
                v40 = v53;
                v53 = 0;
                if (v40)
                {
                  (*(*v40 + 8))(v40);
                }
              }

              if ((v55 & 1) == 0)
              {
                v41 = v56;
                v56 = 0;
                if (v41)
                {
                  (*(*v41 + 8))(v41);
                }
              }

              v14 = v39;
            }

            else
            {
              v14 = 0;
            }

            if (v61 == 1 && (__p & 1) == 0)
            {
              v42 = v59;
              v59 = 0;
              if (v42)
              {
                v43 = v14;
                (*(*v42 + 8))(v42);
                v14 = v43;
              }
            }

            if (v65 != 1)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v44 = v63;
            v63 = 0;
            if (!v44)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v14;
            (*(*v44 + 8))(v44);
LABEL_58:
            v14 = v25;
            return v14 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    v14 = 0;
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  if (v9 >= 0x41 && v70)
  {
    v12 = result;
    operator delete[](v70);
    result = v12;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t mlir::arith::MinimumFOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v4 = *(a2 + 48);
  v5 = v4[1];
  v58 = mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v5)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v58, v5))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v4 = *(a2 + 48);
  }

  v9 = *v4;
  if (*v4 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v4 + 1;
  v10 = v4[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v4[1];
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v9)
  {
    v58 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
    v59 = v12;
    if (v58)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v58);
      v9 = *v11;
      if (*v11)
      {
        goto LABEL_14;
      }

LABEL_18:
      v58 = v9;
      v59 = 0;
      if (!v9)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  CallableForCallee = 0;
  v9 = *v11;
  if (!*v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
  v58 = v9;
  v59 = v14;
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_19:
  v15 = mlir::CallOpInterface::getCallableForCallee(&v58);
  v9 = 0;
  if (!CallableForCallee || !v15 || v15 != CallableForCallee)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v54 = CallableForCallee;
  v16 = *v4;
  if (*v4 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v4;
  }

  else
  {
    v17 = *v11;
    if (*v11)
    {
      v18 = *(*v17 + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = *v11;
      }

      else
      {
        v9 = 0;
      }

      if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v18 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v47 = *v4;
        v56[0] = v17;
        Value = mlir::AffineMapAttr::getValue(&v47);
        if (Value == mlir::AffineMapAttr::getValue(v56))
        {
          mlir::FloatAttr::getValue(&v47, v57);
          mlir::FloatAttr::getValue(v56, v62);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v57, v62);
          llvm::APFloat::~APFloat(v62);
          llvm::APFloat::~APFloat(v57);
          if (v61 == 1)
          {
            v20 = mlir::FloatAttr::get(v54, &v58);
LABEL_35:
            v21 = v20;
LABEL_57:
            std::optional<llvm::APFloat>::~optional(&v58);
LABEL_58:
            v9 = v21;
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        v58 = v22;
        if (v22 && mlir::DenseElementsAttr::isSplat(&v58) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v23 = v4[1];
          v47 = *v4;
          v56[0] = v23;
          v24 = mlir::ArrayAttr::getValue(&v47);
          if (v24 == mlir::ArrayAttr::getValue(v56))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v47, v57);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v56, v62);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v57, v62);
            llvm::APFloat::~APFloat(v62);
            llvm::APFloat::~APFloat(v57);
            if (v61 == 1)
            {
              v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
              v20 = mlir::DenseElementsAttr::get(v25, v26, &v58, 1);
              goto LABEL_35;
            }

LABEL_56:
            v21 = 0;
            goto LABEL_57;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v52 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4);
          v53 = v27;
          v51[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4 + 1);
          v51[1] = v28;
          Type = mlir::ElementsAttr::getType(&v52);
          if (Type == mlir::ElementsAttr::getType(v51))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v52, v62);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v51, &v47);
            if (v65 == 1 && v50 == 1)
            {
              v44[0] = v62[0];
              v44[1] = v62[1];
              if (v62[0] == 1)
              {
                v45 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v45);
              }

              v46 = v64;
              v41 = v47;
              if (v47 == 1)
              {
                v42 = v48;
              }

              else
              {
                (*(*v48 + 16))(&v42);
              }

              v43 = v49;
              v58 = &v60;
              v59 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v52, v53);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v58, NumElements);
              v31 = mlir::ElementsAttr::getNumElements(v52, v53);
              if (v31)
              {
                v32 = v31;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v44, v56);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v41, v55);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v57, v56, v55);
                  llvm::APFloat::~APFloat(v55);
                  llvm::APFloat::~APFloat(v56);
                  if (v57[32] != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v58, v57);
                  std::optional<llvm::APFloat>::~optional(v57);
                  ++v46;
                  ++v43;
                  if (!--v32)
                  {
                    goto LABEL_68;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v57);
                v35 = 0;
              }

              else
              {
LABEL_68:
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
                v35 = mlir::DenseElementsAttr::get(v33, v34, v58, v59);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v58);
              if ((v41 & 1) == 0)
              {
                v36 = v42;
                v42 = 0;
                if (v36)
                {
                  (*(*v36 + 8))(v36);
                }
              }

              if ((v44[0] & 1) == 0)
              {
                v37 = v45;
                v45 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
                }
              }

              v9 = v35;
            }

            else
            {
              v9 = 0;
            }

            if (v50 == 1 && (v47 & 1) == 0)
            {
              v38 = v48;
              v48 = 0;
              if (v38)
              {
                v39 = v9;
                (*(*v38 + 8))(v38);
                v9 = v39;
              }
            }

            if (v65 != 1)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62[0])
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v40 = v63;
            v63 = 0;
            if (!v40)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v21 = v9;
            (*(*v40 + 8))(v40);
            goto LABEL_58;
          }
        }
      }
    }

    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinNumFOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v4 = *(a2 + 48);
  v5 = v4[1];
  v58 = mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v5)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v58, v5))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v4 = *(a2 + 48);
  }

  v9 = *v4;
  if (*v4 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v4 + 1;
  v10 = v4[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v4[1];
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v9)
  {
    v58 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
    v59 = v12;
    if (v58)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v58);
      v9 = *v11;
      if (*v11)
      {
        goto LABEL_14;
      }

LABEL_18:
      v58 = v9;
      v59 = 0;
      if (!v9)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  CallableForCallee = 0;
  v9 = *v11;
  if (!*v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
  v58 = v9;
  v59 = v14;
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_19:
  v15 = mlir::CallOpInterface::getCallableForCallee(&v58);
  v9 = 0;
  if (!CallableForCallee || !v15 || v15 != CallableForCallee)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v54 = CallableForCallee;
  v16 = *v4;
  if (*v4 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v4;
  }

  else
  {
    v17 = *v11;
    if (*v11)
    {
      v18 = *(*v17 + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = *v11;
      }

      else
      {
        v9 = 0;
      }

      if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v18 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v47 = *v4;
        v56[0] = v17;
        Value = mlir::AffineMapAttr::getValue(&v47);
        if (Value == mlir::AffineMapAttr::getValue(v56))
        {
          mlir::FloatAttr::getValue(&v47, v57);
          mlir::FloatAttr::getValue(v56, v62);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v57, v62);
          llvm::APFloat::~APFloat(v62);
          llvm::APFloat::~APFloat(v57);
          if (v61 == 1)
          {
            v20 = mlir::FloatAttr::get(v54, &v58);
LABEL_35:
            v21 = v20;
LABEL_57:
            std::optional<llvm::APFloat>::~optional(&v58);
LABEL_58:
            v9 = v21;
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        v58 = v22;
        if (v22 && mlir::DenseElementsAttr::isSplat(&v58) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v23 = v4[1];
          v47 = *v4;
          v56[0] = v23;
          v24 = mlir::ArrayAttr::getValue(&v47);
          if (v24 == mlir::ArrayAttr::getValue(v56))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v47, v57);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v56, v62);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v57, v62);
            llvm::APFloat::~APFloat(v62);
            llvm::APFloat::~APFloat(v57);
            if (v61 == 1)
            {
              v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
              v20 = mlir::DenseElementsAttr::get(v25, v26, &v58, 1);
              goto LABEL_35;
            }

LABEL_56:
            v21 = 0;
            goto LABEL_57;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v52 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4);
          v53 = v27;
          v51[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4 + 1);
          v51[1] = v28;
          Type = mlir::ElementsAttr::getType(&v52);
          if (Type == mlir::ElementsAttr::getType(v51))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v52, v62);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v51, &v47);
            if (v65 == 1 && v50 == 1)
            {
              v44[0] = v62[0];
              v44[1] = v62[1];
              if (v62[0] == 1)
              {
                v45 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v45);
              }

              v46 = v64;
              v41 = v47;
              if (v47 == 1)
              {
                v42 = v48;
              }

              else
              {
                (*(*v48 + 16))(&v42);
              }

              v43 = v49;
              v58 = &v60;
              v59 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v52, v53);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v58, NumElements);
              v31 = mlir::ElementsAttr::getNumElements(v52, v53);
              if (v31)
              {
                v32 = v31;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v44, v56);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v41, v55);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v57, v56, v55);
                  llvm::APFloat::~APFloat(v55);
                  llvm::APFloat::~APFloat(v56);
                  if (v57[32] != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v58, v57);
                  std::optional<llvm::APFloat>::~optional(v57);
                  ++v46;
                  ++v43;
                  if (!--v32)
                  {
                    goto LABEL_68;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v57);
                v35 = 0;
              }

              else
              {
LABEL_68:
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
                v35 = mlir::DenseElementsAttr::get(v33, v34, v58, v59);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v58);
              if ((v41 & 1) == 0)
              {
                v36 = v42;
                v42 = 0;
                if (v36)
                {
                  (*(*v36 + 8))(v36);
                }
              }

              if ((v44[0] & 1) == 0)
              {
                v37 = v45;
                v45 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
                }
              }

              v9 = v35;
            }

            else
            {
              v9 = 0;
            }

            if (v50 == 1 && (v47 & 1) == 0)
            {
              v38 = v48;
              v48 = 0;
              if (v38)
              {
                v39 = v9;
                (*(*v38 + 8))(v38);
                v9 = v39;
              }
            }

            if (v65 != 1)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62[0])
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v40 = v63;
            v63 = 0;
            if (!v40)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v21 = v9;
            (*(*v40 + 8))(v40);
            goto LABEL_58;
          }
        }
      }
    }

    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinSIOp::fold(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v74) = 1;
  v73 = 0;
  v5 = *(*(a2 + 40) + 8);
  v65 = &v73;
  if (!v5)
  {
    goto LABEL_23;
  }

  result = mlir::detail::constant_int_value_binder::match(&v65, v5);
  v8 = result;
  v9 = v74;
  if (result)
  {
    if (v74 <= 0x40)
    {
      if (v73 == 1 << (v74 - 1))
      {
        v10 = 56;
      }

      else
      {
        if ((v73 ^ (-1 << (v74 - 1))) != 0xFFFFFFFFFFFFFFFFLL)
        {
          goto LABEL_23;
        }

        v10 = 24;
      }

      goto LABEL_16;
    }

    v11 = result;
    v12 = v74 - 1;
    if ((*(v73 + 8 * ((v74 - 1) >> 6)) >> (v74 - 1)))
    {
      result = llvm::APInt::countTrailingZerosSlowCase(&v73);
      if (result == v12)
      {
        v10 = 56;
LABEL_15:
        v8 = v11;
LABEL_16:
        result = *(*(*a1 + 72) + v10) | 4;
        goto LABEL_17;
      }
    }

    else
    {
      result = llvm::APInt::countTrailingOnesSlowCase(&v73);
      if (result == v12)
      {
        v10 = 24;
        goto LABEL_15;
      }
    }

    v13 = 1;
    v14 = v73;
    if (v73)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_17:
  v13 = v8 ^ 1;
  if (v9 >= 0x41)
  {
    v14 = v73;
    if (v73)
    {
LABEL_19:
      v15 = result;
      operator delete[](v14);
      result = v15;
      if ((v13 & 1) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

LABEL_22:
  if (!v13)
  {
    return result;
  }

LABEL_23:
  v16 = *(a2 + 40);
  v17 = *v16;
  if (*v16 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v19 = v16 + 1;
  v18 = v16[1];
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = v16[1];
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v17)
  {
    v73 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v74 = v20;
    if (v73)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v73);
      v17 = *v19;
      if (*v19)
      {
        goto LABEL_30;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  CallableForCallee = 0;
  v17 = *v19;
  if (*v19)
  {
LABEL_30:
    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v17);
    v73 = v17;
    v74 = v22;
    if (!v17)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_35;
  }

LABEL_34:
  v73 = v17;
  v74 = 0;
  if (!v17)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_35:
  v23 = mlir::CallOpInterface::getCallableForCallee(&v73);
  v17 = 0;
  if (!CallableForCallee || !v23 || v23 != CallableForCallee)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v72 = CallableForCallee;
  v24 = *v16;
  if (*v16 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v16;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v25 = *v19;
  if (!*v19)
  {
    goto LABEL_86;
  }

  v26 = *(*v25 + 136);
  if (v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v17 = *v19;
  }

  else
  {
    v17 = 0;
  }

  if (!v24 || v26 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v26 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v16))
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    v73 = v29;
    if (v29 && mlir::DenseElementsAttr::isSplat(&v73) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v30 = v16[1];
      v58 = *v16;
      v55 = v30;
      Value = mlir::ArrayAttr::getValue(&v58);
      if (Value == mlir::ArrayAttr::getValue(&v55))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v58, &v65);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v55, &__p);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &__p);
        if (v62 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        if (v66 >= 0x41 && v65)
        {
          operator delete[](v65);
        }

        if (v75 == 1)
        {
          v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
          v17 = mlir::DenseElementsAttr::get(v32, v33, &v73, 1);
          if ((v75 & 1) == 0)
          {
            return v17 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_57;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v16 + 1))
    {
      v70 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16);
      v71 = v34;
      v69[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v16 + 1);
      v69[1] = v35;
      Type = mlir::ElementsAttr::getType(&v70);
      if (Type == mlir::ElementsAttr::getType(v69))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v70, &v65);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v69, &__p);
        if (v68 == 1 && v64 == 1)
        {
          LOWORD(v58) = v65;
          if (v65 == 1)
          {
            v59 = v66;
          }

          else
          {
            (*(*v66 + 16))(&v59);
          }

          v60 = v67;
          LOWORD(v55) = __p;
          if (__p == 1)
          {
            v56 = v62;
          }

          else
          {
            (*(*v62 + 16))(&v56);
          }

          v57 = v63;
          v73 = &v75;
          v74 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v70, v71);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v73, NumElements);
          v38 = mlir::ElementsAttr::getNumElements(v70, v71);
          if (v38)
          {
            v39 = v38;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v58, &v50);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v55, &v48);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v52, &v50, &v48);
              if (v49 >= 0x41 && v48)
              {
                operator delete[](v48);
              }

              if (v51 >= 0x41 && v50)
              {
                operator delete[](v50);
              }

              if (v54 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v73, &v52);
              if ((v54 & 1) != 0 && v53 >= 0x41 && v52)
              {
                operator delete[](v52);
              }

              ++v60;
              ++v57;
              if (!--v39)
              {
                goto LABEL_108;
              }
            }

            v42 = 0;
          }

          else
          {
LABEL_108:
            v40 = llvm::cast<mlir::ShapedType,mlir::Type>(&v72);
            v42 = mlir::DenseElementsAttr::get(v40, v41, v73, v74);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v73);
          if ((v55 & 1) == 0)
          {
            v43 = v56;
            v56 = 0;
            if (v43)
            {
              (*(*v43 + 8))(v43);
            }
          }

          if ((v58 & 1) == 0)
          {
            v44 = v59;
            v59 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v17 = v42;
        }

        else
        {
          v17 = 0;
        }

        if (v64 == 1 && (__p & 1) == 0)
        {
          v45 = v62;
          v62 = 0;
          if (v45)
          {
            v46 = v17;
            (*(*v45 + 8))(v45);
            v17 = v46;
          }
        }

        if (v68 != 1)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v65)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v47 = v66;
        v66 = 0;
        if (!v47)
        {
          return v17 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v28 = v17;
        (*(*v47 + 8))(v47);
LABEL_60:
        v17 = v28;
        return v17 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_86:
    v17 = 0;
    return v17 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v58 = *v16;
  v55 = v25;
  v27 = mlir::AffineMapAttr::getValue(&v58);
  if (v27 != mlir::AffineMapAttr::getValue(&v55))
  {
    goto LABEL_86;
  }

  mlir::IntegerAttr::getValue(&v58, &v65);
  mlir::IntegerAttr::getValue(&v55, &__p);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v73, &v65, &__p);
  if (v62 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v66 >= 0x41 && v65)
  {
    operator delete[](v65);
  }

  if (v75 != 1)
  {
    goto LABEL_86;
  }

  v17 = mlir::IntegerAttr::get(v72, &v73);
  if (v75)
  {
LABEL_57:
    if (v74 < 0x41 || !v73)
    {
      return v17 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v28 = v17;
    operator delete[](v73);
    goto LABEL_60;
  }

  return v17 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MinUIOp::fold(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  LODWORD(v70) = 1;
  v69 = 0;
  v5 = *(*(a2 + 40) + 8);
  v61 = &v69;
  if (!v5)
  {
    goto LABEL_19;
  }

  result = mlir::detail::constant_int_value_binder::match(&v61, v5);
  v8 = result;
  v9 = v70;
  if (result)
  {
    if (v70 <= 0x40)
    {
      if (v69)
      {
        if (v70 && v69 != (0xFFFFFFFFFFFFFFFFLL >> -v70))
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }

LABEL_11:
      v10 = 56;
LABEL_14:
      result = *(*(*a1 + 72) + v10) | 4;
      goto LABEL_15;
    }

    if (llvm::APInt::countLeadingZerosSlowCase(&v69) == v9)
    {
      goto LABEL_11;
    }

    if (llvm::APInt::countTrailingOnesSlowCase(&v69) == v9)
    {
LABEL_13:
      v10 = 24;
      goto LABEL_14;
    }

    if (v69)
    {
      operator delete[](v69);
    }

LABEL_19:
    v12 = *(a2 + 40);
    v13 = *v12;
    if (*v12 && *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v15 = v12 + 1;
    v14 = v12[1];
    if (v14 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v13 = v12[1];
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (v13)
    {
      v69 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
      v70 = v16;
      if (v69)
      {
        CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v69);
        v13 = *v15;
        if (*v15)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    CallableForCallee = 0;
    v13 = *v15;
    if (*v15)
    {
LABEL_26:
      v13 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
      v69 = v13;
      v70 = v18;
      if (!v13)
      {
        return v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_31;
    }

LABEL_30:
    v69 = v13;
    v70 = 0;
    if (!v13)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

LABEL_31:
    v19 = mlir::CallOpInterface::getCallableForCallee(&v69);
    v13 = 0;
    if (!CallableForCallee || !v19 || v19 != CallableForCallee)
    {
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v68 = CallableForCallee;
    v20 = *v12;
    if (*v12 && *(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v13 = *v12;
      return v13 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *v15;
    if (*v15)
    {
      v22 = *(*v21 + 136);
      if (v22 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v13 = *v15;
      }

      else
      {
        v13 = 0;
      }

      if (!v20 || v22 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v13 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v54 = *v12;
        v51 = v21;
        Value = mlir::AffineMapAttr::getValue(&v54);
        if (Value == mlir::AffineMapAttr::getValue(&v51))
        {
          mlir::IntegerAttr::getValue(&v54, &v61);
          mlir::IntegerAttr::getValue(&v51, &__p);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v69, &v61, &__p);
          if (v58 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v62 >= 0x41 && v61)
          {
            operator delete[](v61);
          }

          if (v71 == 1)
          {
            v13 = mlir::IntegerAttr::get(v68, &v69);
            if (v71)
            {
LABEL_53:
              if (v70 < 0x41 || !v69)
              {
                return v13 & 0xFFFFFFFFFFFFFFFBLL;
              }

              v24 = v13;
              operator delete[](v69);
              goto LABEL_56;
            }

            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v12))
        {
          v25 = v20;
        }

        else
        {
          v25 = 0;
        }

        v69 = v25;
        if (v25 && mlir::DenseElementsAttr::isSplat(&v69) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v12 + 1))
        {
          v26 = v12[1];
          v54 = *v12;
          v51 = v26;
          v27 = mlir::ArrayAttr::getValue(&v54);
          if (v27 == mlir::ArrayAttr::getValue(&v51))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v54, &v61);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v51, &__p);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v69, &v61, &__p);
            if (v58 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v62 >= 0x41 && v61)
            {
              operator delete[](v61);
            }

            if (v71 == 1)
            {
              v28 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
              v13 = mlir::DenseElementsAttr::get(v28, v29, &v69, 1);
              if ((v71 & 1) == 0)
              {
                return v13 & 0xFFFFFFFFFFFFFFFBLL;
              }

              goto LABEL_53;
            }
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v12) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v12 + 1))
        {
          v66 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v12);
          v67 = v30;
          v65[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v12 + 1);
          v65[1] = v31;
          Type = mlir::ElementsAttr::getType(&v66);
          if (Type == mlir::ElementsAttr::getType(v65))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v66, &v61);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(v65, &__p);
            if (v64 == 1 && v60 == 1)
            {
              LOWORD(v54) = v61;
              if (v61 == 1)
              {
                v55 = v62;
              }

              else
              {
                (*(*v62 + 16))(&v55);
              }

              v56 = v63;
              LOWORD(v51) = __p;
              if (__p == 1)
              {
                v52 = v58;
              }

              else
              {
                (*(*v58 + 16))(&v52);
              }

              v53 = v59;
              v69 = &v71;
              v70 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v66, v67);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v69, NumElements);
              v34 = mlir::ElementsAttr::getNumElements(v66, v67);
              if (v34)
              {
                v35 = v34;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v54, &v46);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v51, &v44);
                  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v48, &v46, &v44);
                  if (v45 >= 0x41 && v44)
                  {
                    operator delete[](v44);
                  }

                  if (v47 >= 0x41 && v46)
                  {
                    operator delete[](v46);
                  }

                  if (v50 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v69, &v48);
                  if ((v50 & 1) != 0 && v49 >= 0x41 && v48)
                  {
                    operator delete[](v48);
                  }

                  ++v56;
                  ++v53;
                  if (!--v35)
                  {
                    goto LABEL_106;
                  }
                }

                v38 = 0;
              }

              else
              {
LABEL_106:
                v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
                v38 = mlir::DenseElementsAttr::get(v36, v37, v69, v70);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v69);
              if ((v51 & 1) == 0)
              {
                v39 = v52;
                v52 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                }
              }

              if ((v54 & 1) == 0)
              {
                v40 = v55;
                v55 = 0;
                if (v40)
                {
                  (*(*v40 + 8))(v40);
                }
              }

              v13 = v38;
            }

            else
            {
              v13 = 0;
            }

            if (v60 == 1 && (__p & 1) == 0)
            {
              v41 = v58;
              v58 = 0;
              if (v41)
              {
                v42 = v13;
                (*(*v41 + 8))(v41);
                v13 = v42;
              }
            }

            if (v64 != 1)
            {
              return v13 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v61)
            {
              return v13 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v43 = v62;
            v62 = 0;
            if (!v43)
            {
              return v13 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v24 = v13;
            (*(*v43 + 8))(v43);
LABEL_56:
            v13 = v24;
            return v13 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    v13 = 0;
    return v13 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_15:
  if (v9 >= 0x41 && v69)
  {
    v11 = result;
    operator delete[](v69);
    result = v11;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t mlir::arith::MulFOp::fold(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v57 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v57, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v57 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v58 = v10;
    if (v57)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v57);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v57 = v7;
      v58 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  CallableForCallee = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v57 = v7;
  v58 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::CallOpInterface::getCallableForCallee(&v57);
  v7 = 0;
  if (!CallableForCallee || !v13 || v13 != CallableForCallee)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = CallableForCallee;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(&v46, v56);
          mlir::FloatAttr::getValue(v55, v61);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
          llvm::APFloat::~APFloat(v61);
          llvm::APFloat::~APFloat(v56);
          if (v60 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v57);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v57 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v57) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, v61);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
            llvm::APFloat::~APFloat(v61);
            llvm::APFloat::~APFloat(v56);
            if (v60 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v57, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v57);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, v61);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v64 == 1 && v49 == 1)
            {
              v43[0] = v61[0];
              v43[1] = v61[1];
              if (v61[0] == 1)
              {
                v44 = v62;
              }

              else
              {
                (*(*v62 + 16))(&v44);
              }

              v45 = v63;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v57 = &v59;
              v58 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v57, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v56[32] != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v57, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v57, v58);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v57);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43[0] & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v64 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v61[0])
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v62;
            v62 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::MulFOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 3);
  v25 = "arith.mulf";
  v26 = 10;
  mlir::Pattern::Pattern((v4 + 2), "arith.mulf", 10, v24, a2, &v25, 1uLL);
  *v4 = &unk_1F5AEE570;
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

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::MulFOfNegF]";
  v26 = 83;
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

uint64_t mlir::arith::DivFOp::fold(uint64_t a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v57 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v57, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v57 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v58 = v10;
    if (v57)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v57);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v57 = v7;
      v58 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  CallableForCallee = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v57 = v7;
  v58 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::CallOpInterface::getCallableForCallee(&v57);
  v7 = 0;
  if (!CallableForCallee || !v13 || v13 != CallableForCallee)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = CallableForCallee;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(&v46, v56);
          mlir::FloatAttr::getValue(v55, v61);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
          llvm::APFloat::~APFloat(v61);
          llvm::APFloat::~APFloat(v56);
          if (v60 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v57);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v57 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v57) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, v61);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v57, v56, v61);
            llvm::APFloat::~APFloat(v61);
            llvm::APFloat::~APFloat(v56);
            if (v60 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v57, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v57);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, v61);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v64 == 1 && v49 == 1)
            {
              v43[0] = v61[0];
              v43[1] = v61[1];
              if (v61[0] == 1)
              {
                v44 = v62;
              }

              else
              {
                (*(*v62 + 16))(&v44);
              }

              v45 = v63;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v57 = &v59;
              v58 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v57, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v56[32] != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v57, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v57, v58);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v57);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43[0] & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v64 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v61[0])
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v62;
            v62 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::DivFOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 3);
  v25 = "arith.divf";
  v26 = 10;
  mlir::Pattern::Pattern((v4 + 2), "arith.divf", 10, v24, a2, &v25, 1uLL);
  *v4 = &unk_1F5AEE5C8;
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

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DivFOfNegF]";
  v26 = 83;
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

unint64_t mlir::arith::RemFOp::fold(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 48);
  v3 = *v2;
  if (*v2 && *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v5 = v2 + 1;
  v4 = v2[1];
  if (v4 && *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = v2[1];
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v3)
  {
    v54 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v3);
    v55 = v6;
    if (v54)
    {
      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v54);
      v3 = *v5;
      if (*v5)
      {
        goto LABEL_8;
      }

LABEL_12:
      v54 = v3;
      v55 = 0;
      if (!v3)
      {
        return v3 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

  CallableForCallee = 0;
  v3 = *v5;
  if (!*v5)
  {
    goto LABEL_12;
  }

LABEL_8:
  v3 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v3);
  v54 = v3;
  v55 = v8;
  if (!v3)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_13:
  v9 = mlir::CallOpInterface::getCallableForCallee(&v54);
  v3 = 0;
  if (!CallableForCallee || !v9 || v9 != CallableForCallee)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v50 = CallableForCallee;
  v10 = *v2;
  if (*v2 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = *v2;
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = *v5;
  if (!*v5)
  {
    goto LABEL_50;
  }

  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = *v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v10 || v12 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v43 = *v2;
    v52[0] = v11;
    Value = mlir::AffineMapAttr::getValue(&v43);
    if (Value == mlir::AffineMapAttr::getValue(v52))
    {
      mlir::FloatAttr::getValue(&v43, v53);
      mlir::FloatAttr::getValue(v52, v58);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v54, v53, v58);
      llvm::APFloat::~APFloat(v58);
      llvm::APFloat::~APFloat(v53);
      if (v57 == 1)
      {
        v19 = mlir::FloatAttr::get(v50, &v54);
        goto LABEL_42;
      }

LABEL_52:
      v21 = 0;
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (mlir::DenseElementsAttr::classof(*v2))
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v54 = v14;
  if (v14 && mlir::DenseElementsAttr::isSplat(&v54) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v2 + 1))
  {
    v15 = v2[1];
    v43 = *v2;
    v52[0] = v15;
    v16 = mlir::ArrayAttr::getValue(&v43);
    if (v16 == mlir::ArrayAttr::getValue(v52))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v43, v53);
      mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v52, v58);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v54, v53, v58);
      llvm::APFloat::~APFloat(v58);
      llvm::APFloat::~APFloat(v53);
      if (v57 == 1)
      {
        v17 = llvm::cast<mlir::ShapedType,mlir::Type>(&v50);
        v19 = mlir::DenseElementsAttr::get(v17, v18, &v54, 1);
LABEL_42:
        v21 = v19;
LABEL_53:
        std::optional<llvm::APFloat>::~optional(&v54);
LABEL_54:
        v3 = v21;
        return v3 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (!llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v2) || !llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v2 + 1) || (v48 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v2), v49 = v22, v47[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v2 + 1), v47[1] = v23, Type = mlir::ElementsAttr::getType(&v48), Type != mlir::ElementsAttr::getType(v47)))
  {
LABEL_50:
    v3 = 0;
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v48, v58);
  mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v47, &v43);
  if (v61 == 1 && v46 == 1)
  {
    v40[0] = v58[0];
    v40[1] = v58[1];
    if (v58[0] == 1)
    {
      v41 = v59;
    }

    else
    {
      (*(*v59 + 16))(&v41);
    }

    v42 = v60;
    v37 = v43;
    if (v43 == 1)
    {
      v38 = v44;
    }

    else
    {
      (*(*v44 + 16))(&v38);
    }

    v39 = v45;
    v54 = &v56;
    v55 = 0x400000000;
    NumElements = mlir::ElementsAttr::getNumElements(v48, v49);
    llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v54, NumElements);
    v30 = mlir::ElementsAttr::getNumElements(v48, v49);
    if (v30)
    {
      v31 = v30;
      while (1)
      {
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(v40, v52);
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v37, v51);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v53, v52, v51);
        llvm::APFloat::~APFloat(v51);
        llvm::APFloat::~APFloat(v52);
        if (v53[32] != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v54, v53);
        std::optional<llvm::APFloat>::~optional(v53);
        ++v42;
        ++v39;
        if (!--v31)
        {
          goto LABEL_72;
        }
      }

      std::optional<llvm::APFloat>::~optional(v53);
      v34 = 0;
    }

    else
    {
LABEL_72:
      v32 = llvm::cast<mlir::ShapedType,mlir::Type>(&v50);
      v34 = mlir::DenseElementsAttr::get(v32, v33, v54, v55);
    }

    llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v54);
    if ((v37 & 1) == 0)
    {
      v35 = v38;
      v38 = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }
    }

    v3 = v34;
    if ((v40[0] & 1) == 0)
    {
      v36 = v41;
      v41 = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
        v3 = v34;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (v46 == 1 && (v43 & 1) == 0)
  {
    v26 = v44;
    v44 = 0;
    if (v26)
    {
      v27 = v3;
      (*(*v26 + 8))(v26);
      v3 = v27;
    }
  }

  if (v61 == 1 && (v58[0] & 1) == 0)
  {
    v28 = v59;
    v59 = 0;
    if (v28)
    {
      v21 = v3;
      (*(*v28 + 8))(v28);
      goto LABEL_54;
    }
  }

  return v3 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::ExtUIOp::fold(uint64_t *a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v75[0] = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v75);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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
      llvm::APInt::zext(v73, v9, v75);
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
      llvm::APInt::zext(&__p, v9, v75);
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

        llvm::APInt::zext(&v64, v9, &v66);
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

uint64_t checkWidthChangeCast<std::greater,mlir::IntegerType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        return IntOrFloatBitWidth > mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::ExtUIOp::verify(mlir::Block ***this)
{
  v47 = *MEMORY[0x1E69E9840];
  v32 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v32[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v32 - 1) & 0xFFFFFFFFFFFFFFF8));
  v36[0] = ElementTypeOrSelf;
  Width = mlir::IntegerType::getWidth(v36);
  v30[0] = v2;
  if (Width < mlir::IntegerType::getWidth(v30))
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