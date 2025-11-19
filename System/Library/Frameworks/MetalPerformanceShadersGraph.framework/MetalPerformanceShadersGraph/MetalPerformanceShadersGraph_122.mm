void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::LessThanOp,std::less<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
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

  v69[0] = v5;
  v69[1] = v6;
  v78 = v80;
  v79 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v67 = v7;
  v68 = v8;
  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  ElementTypeWithLargestPrecision = 0;
  v65 = v9;
  v66 = v10;
  if (v67 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v67);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v74 = v13;
    v75 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v74);
    v74 = mlir::ElementsAttr::getType(&v67);
    v75 = mlir::ElementsAttr::getType(&v65);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
      v16 = mlir::ElementsAttr::getNumElements(v65, v66);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v65, &v60);
        if (v17)
        {
          v30 = 0;
          v31 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v74, v30, &__p);
            LODWORD(v71[0]) = v59;
            v70 = __p;
            v59 = 0;
            BYTE4(v71[0]) = v31;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v60, v30, &v53);
            v56 = v54;
            v55 = v53;
            v54 = 0;
            v57 = v31;
            if (BYTE4(v71[0]) == 1)
            {
              v32 = llvm::APInt::compare(&v70, &v55);
            }

            else
            {
              v32 = llvm::APInt::compareSigned(&v70, &v55);
            }

            LODWORD(v73[0]) = 1;
            v72 = (v32 >> 31);
            v33 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &v72 && &v78[16 * v79] > &v72)
              {
                v36 = &v72 - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v33 = v78;
                v34 = &v78[v36];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v34 = &v72;
                v33 = v78;
              }
            }

            else
            {
              v34 = &v72;
            }

            v35 = &v33[16 * v79];
            *(v35 + 2) = *(v34 + 2);
            *v35 = *v34;
            *(v34 + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              operator delete[](v72);
            }

            if (v56 >= 0x41 && v55)
            {
              operator delete[](v55);
            }

            if (v54 >= 0x41 && v53)
            {
              operator delete[](v53);
            }

            if (LODWORD(v71[0]) >= 0x41 && v70)
            {
              operator delete[](v70);
            }

            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            ++v30;
          }

          while (v17 != v30);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v65, &v60);
        v72 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v72);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v74, i, &v72);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v60, i, &v70);
            LOBYTE(__p) = 0;
            llvm::APFloat::convert(&v72, v20, 1, &__p);
            LOBYTE(__p) = 0;
            v22 = llvm::APFloat::convert(&v70, v20, 1, &__p);
            v23 = v73[0];
            v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v24 == v23)
            {
              v25 = llvm::detail::DoubleAPFloat::compare(v73, v71);
            }

            else
            {
              v25 = llvm::detail::IEEEFloat::compare(v73, v71);
            }

            v59 = 1;
            __p = (v25 == 0);
            v26 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &__p && &v78[16 * v79] > &__p)
              {
                v29 = &__p - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v26 = v78;
                p_p = &v78[v29];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                p_p = &__p;
                v26 = v78;
              }
            }

            else
            {
              p_p = &__p;
            }

            v28 = &v26[16 * v79];
            *(v28 + 2) = *(p_p + 2);
            *v28 = *p_p;
            *(p_p + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v24 == v71[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v71);
            }

            if (v24 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }
          }
        }
      }

      if ((v62 & 1) == 0)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      if ((v60 & 1) == 0)
      {
        v38 = v61;
        v61 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }
      }

      if ((v76 & 1) == 0)
      {
        v39 = v77;
        v77 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v74 & 1) == 0)
      {
        v40 = v75;
        v75 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v69);
      v43 = v42;
      v44 = mlir::ElementsAttr::isSplat(v69);
      v45 = mlir::RankedTensorType::get(ArgAttrsAttr, v43, v44, 0);
      ElementTypeWithLargestPrecision = (mlir::createElementsAttr(v45, v78, v79) & 0xFFFFFFFFFFFFFFFBLL);
    }
  }

LABEL_105:
  v46 = v78;
  if (v79)
  {
    v47 = &v78[16 * v79 - 8];
    v48 = -16 * v79;
    v49 = v47;
    do
    {
      v50 = *v49;
      v49 -= 4;
      if (v50 >= 0x41)
      {
        v51 = *(v47 - 1);
        if (v51)
        {
          operator delete[](v51);
        }
      }

      v47 = v49;
      v48 += 16;
    }

    while (v48);
    v46 = v78;
  }

  if (v46 != v80)
  {
    free(v46);
  }

  return ElementTypeWithLargestPrecision;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldElementWiseBinaryComparisonOp<mlir::mps::LessThanOrEqualToOp,std::less_equal<void>>>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[8] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
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

  v69[0] = v5;
  v69[1] = v6;
  v78 = v80;
  v79 = 0x400000000;
  v7 = *a3;
  if (*a3)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    if (v8)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v67 = v7;
  v68 = v8;
  v9 = *(a3 + 8);
  if (v9)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  ElementTypeWithLargestPrecision = 0;
  v65 = v9;
  v66 = v10;
  if (v67 && v9)
  {
    Type = mlir::ElementsAttr::getType(&v67);
    v13 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v74 = v13;
    v75 = Type;
    isSplat = mlir::ElementsAttr::isSplat(&v74);
    v74 = mlir::ElementsAttr::getType(&v67);
    v75 = mlir::ElementsAttr::getType(&v65);
    if (ElementTypeWithLargestPrecision)
    {
      isSignedInteger = mlir::Type::isSignedInteger(&isSplat);
      NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
      v16 = mlir::ElementsAttr::getNumElements(v65, v66);
      if (NumElements <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = NumElements;
      }

      v18 = *(*isSplat + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::ElementsAttr::getValues<llvm::APInt>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v65, &v60);
        if (v17)
        {
          v30 = 0;
          v31 = !isSignedInteger;
          do
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v74, v30, &__p);
            LODWORD(v71[0]) = v59;
            v70 = __p;
            v59 = 0;
            BYTE4(v71[0]) = v31;
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v60, v30, &v53);
            v56 = v54;
            v55 = v53;
            v54 = 0;
            v57 = v31;
            if (BYTE4(v71[0]) == 1)
            {
              v32 = llvm::APInt::compare(&v70, &v55);
            }

            else
            {
              v32 = llvm::APInt::compareSigned(&v70, &v55);
            }

            LODWORD(v73[0]) = 1;
            v72 = (v32 < 1);
            v33 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &v72 && &v78[16 * v79] > &v72)
              {
                v36 = &v72 - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v33 = v78;
                v34 = &v78[v36];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v34 = &v72;
                v33 = v78;
              }
            }

            else
            {
              v34 = &v72;
            }

            v35 = &v33[16 * v79];
            *(v35 + 2) = *(v34 + 2);
            *v35 = *v34;
            *(v34 + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (LODWORD(v73[0]) >= 0x41 && v72)
            {
              operator delete[](v72);
            }

            if (v56 >= 0x41 && v55)
            {
              operator delete[](v55);
            }

            if (v54 >= 0x41 && v53)
            {
              operator delete[](v53);
            }

            if (LODWORD(v71[0]) >= 0x41 && v70)
            {
              operator delete[](v70);
            }

            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            ++v30;
          }

          while (v17 != v30);
        }
      }

      else
      {
        if (v18 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          ElementTypeWithLargestPrecision = 0;
          goto LABEL_105;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v67, &v74);
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v65, &v60);
        v72 = ElementTypeWithLargestPrecision;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v72);
        if (v17)
        {
          v20 = FloatSemantics;
          for (i = 0; i != v17; ++i)
          {
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v74, i, &v72);
            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APFloat>>::operator[](&v60, i, &v70);
            LOBYTE(__p) = 0;
            llvm::APFloat::convert(&v72, v20, 1, &__p);
            LOBYTE(__p) = 0;
            v22 = llvm::APFloat::convert(&v70, v20, 1, &__p);
            v23 = v73[0];
            v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
            if (v24 == v23)
            {
              v25 = llvm::detail::DoubleAPFloat::compare(v73, v71);
            }

            else
            {
              v25 = llvm::detail::IEEEFloat::compare(v73, v71);
            }

            v59 = 1;
            __p = (v25 < 2);
            v26 = v78;
            if (v79 >= HIDWORD(v79))
            {
              if (v78 <= &__p && &v78[16 * v79] > &__p)
              {
                v29 = &__p - v78;
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                v26 = v78;
                p_p = &v78[v29];
              }

              else
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
                p_p = &__p;
                v26 = v78;
              }
            }

            else
            {
              p_p = &__p;
            }

            v28 = &v26[16 * v79];
            *(v28 + 2) = *(p_p + 2);
            *v28 = *p_p;
            *(p_p + 2) = 0;
            LODWORD(v79) = v79 + 1;
            if (v59 >= 0x41 && __p)
            {
              operator delete[](__p);
            }

            if (v24 == v71[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v71);
            }

            if (v24 == v73[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v73);
            }
          }
        }
      }

      if ((v62 & 1) == 0)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }
      }

      if ((v60 & 1) == 0)
      {
        v38 = v61;
        v61 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }
      }

      if ((v76 & 1) == 0)
      {
        v39 = v77;
        v77 = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }
      }

      if ((v74 & 1) == 0)
      {
        v40 = v75;
        v75 = 0;
        if (v40)
        {
          (*(*v40 + 8))(v40);
        }
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v69);
      v43 = v42;
      v44 = mlir::ElementsAttr::isSplat(v69);
      v45 = mlir::RankedTensorType::get(ArgAttrsAttr, v43, v44, 0);
      ElementTypeWithLargestPrecision = (mlir::createElementsAttr(v45, v78, v79) & 0xFFFFFFFFFFFFFFFBLL);
    }
  }

LABEL_105:
  v46 = v78;
  if (v79)
  {
    v47 = &v78[16 * v79 - 8];
    v48 = -16 * v79;
    v49 = v47;
    do
    {
      v50 = *v49;
      v49 -= 4;
      if (v50 >= 0x41)
      {
        v51 = *(v47 - 1);
        if (v51)
        {
          operator delete[](v51);
        }
      }

      v47 = v49;
      v48 += 16;
    }

    while (v48);
    v46 = v78;
  }

  if (v46 != v80)
  {
    free(v46);
  }

  return ElementTypeWithLargestPrecision;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBatchToSpaceAndBack<mlir::mps::BatchToSpaceOp>>::externalFold(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v7 = v9;
  v8 = 0x600000000;
  if (mlir::matchConstantWithIntVector<long long>(*(*(a2 + 72) + 120), &v7))
  {
    if (!v8)
    {
LABEL_6:
      v5 = *(*(a2 + 72) + 24) | 4;
      if (v7 == v9)
      {
        return v5;
      }

      goto LABEL_9;
    }

    v3 = 8 * v8;
    v4 = v7;
    while (*v4 == 1)
    {
      ++v4;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  v5 = 0;
  if (v7 != v9)
  {
LABEL_9:
    free(v7);
  }

  return v5;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldBatchToSpaceAndBack<mlir::mps::SpaceToBatchOp>>::externalFold(uint64_t a1, uint64_t a2)
{
  v9[6] = *MEMORY[0x1E69E9840];
  v7 = v9;
  v8 = 0x600000000;
  if (mlir::matchConstantWithIntVector<long long>(*(*(a2 + 72) + 120), &v7))
  {
    if (!v8)
    {
LABEL_6:
      v5 = *(*(a2 + 72) + 24) | 4;
      if (v7 == v9)
      {
        return v5;
      }

      goto LABEL_9;
    }

    v3 = 8 * v8;
    v4 = v7;
    while (*v4 == 1)
    {
      ++v4;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_6;
      }
    }
  }

  v5 = 0;
  if (v7 != v9)
  {
LABEL_9:
    free(v7);
  }

  return v5;
}

uint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldSelectOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v210 = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v188[0] = v6;
  v188[1] = v7;
  v185 = &v187;
  v186 = xmmword_1E096FAF0;
  v8 = *a3;
  if (!*a3)
  {
    v183 = 0;
    v184 = 0;
    goto LABEL_251;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v183 = 0;
    v184 = 0;
    goto LABEL_251;
  }

  v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
  v183 = v8;
  v184 = v9;
  if (!v8)
  {
    goto LABEL_251;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(&v183);
  Type = v10;
  if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!v183)
    {
      goto LABEL_251;
    }

    ArgOperands = mlir::CallOpInterface::getArgOperands(&v183);
    Type = v11;
    v12 = *(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136);
    if (v12 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      goto LABEL_251;
    }

    mlir::ElementsAttr::getValues<llvm::APFloat>(&v183, &ArgOperands);
    LOWORD(v196) = ArgOperands;
    if (ArgOperands == 1)
    {
      v197 = Type;
    }

    else
    {
      (*(*Type + 16))(&v197);
    }

    v13 = v202;
    j = v202;
    LOWORD(__p) = v203;
    if (v203 == 1)
    {
      v193 = v204;
    }

    else
    {
      (*(*v204 + 16))(&v193);
      v13 = j;
    }

    i = v205;
    if (v13 == v205)
    {
      v14 = 0;
LABEL_42:
      v15 = 0;
      if (__p)
      {
        goto LABEL_160;
      }
    }

    else
    {
      if (BYTE1(v196))
      {
        v16 = 0;
      }

      else
      {
        v16 = v13;
      }

      if (v196)
      {
        v17 = v197 + 32 * v16;
        v19 = *(v17 + 1);
        v18 = (v17 + 8);
        v20 = llvm::APFloatBase::PPCDoubleDouble(v197);
        if (v20 == v19)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v18);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v207, v18);
        }
      }

      else
      {
        v25 = (*(*v197 + 24))(&v206);
        v20 = llvm::APFloatBase::PPCDoubleDouble(v25);
      }

      v46 = v208;
      if (v20 != v207)
      {
        v46 = &v206;
      }

      v47 = *(v46 + 28) & 7;
      v14 = v47 != 3;
      if (v20 == v207)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v207);
      }

      while (1)
      {
        v49 = j + 1;
        j = v49;
        if (v49 == i)
        {
          break;
        }

        if (BYTE1(v196))
        {
          v50 = 0;
        }

        else
        {
          v50 = v49;
        }

        if (v196 == 1)
        {
          v51 = v197 + 32 * v50;
          v53 = *(v51 + 1);
          v52 = (v51 + 8);
          if (v20 == v53)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v52);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(&v207, v52);
          }
        }

        else
        {
          (*(*v197 + 24))(&v206);
        }

        if (v20 == v207)
        {
          v48 = (v47 != 3) ^ ((*(v208 + 28) & 7) == 3);
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
          if ((v48 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v54 = (v47 != 3) ^ ((v209 & 7) == 3);
          llvm::detail::IEEEFloat::~IEEEFloat(&v207);
          if ((v54 & 1) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      v15 = 1;
      if (__p)
      {
LABEL_160:
        if ((v196 & 1) == 0)
        {
          v56 = v197;
          v197 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        if ((v203 & 1) == 0)
        {
          v57 = v204;
          v204 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

        if ((ArgOperands & 1) == 0)
        {
          v58 = Type;
          Type = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

        if (v15)
        {
LABEL_170:
          v59 = 1;
          goto LABEL_191;
        }

        mlir::ElementsAttr::getValues<llvm::APFloat>(&v183, &ArgOperands);
        LOWORD(v196) = ArgOperands;
        if (ArgOperands == 1)
        {
          v197 = Type;
        }

        else
        {
          (*(*Type + 16))(&v197);
        }

        v60 = v202;
        j = v202;
        LOWORD(__p) = v203;
        if (v203 == 1)
        {
          v193 = v204;
        }

        else
        {
          (*(*v204 + 16))(&v193);
          v60 = j;
        }

        for (i = v205; v60 != i; j = v60)
        {
          if (BYTE1(v196))
          {
            v78 = 0;
          }

          else
          {
            v78 = v60;
          }

          if (v196 == 1)
          {
            v79 = v197 + 32 * v78;
            v81 = *(v79 + 1);
            v80 = (v79 + 8);
            v82 = llvm::APFloatBase::PPCDoubleDouble(v197);
            if (v82 == v81)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v80);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v207, v80);
            }
          }

          else
          {
            v83 = (*(*v197 + 24))(&v206);
            v82 = llvm::APFloatBase::PPCDoubleDouble(v83);
          }

          if (v82 == v207)
          {
            v84 = v208;
          }

          else
          {
            v84 = &v206;
          }

          v85 = *(v84 + 28);
          v86 = v186;
          if ((v186 + 1) > *(&v186 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&v185, &v187, v186 + 1, 1);
            v86 = v186;
          }

          *(v185 + v86) = (v85 & 7) != 3;
          *&v186 = v186 + 1;
          if (v82 == v207)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v207);
          }

          v60 = j + 1;
        }

        if ((__p & 1) == 0)
        {
          v61 = v193;
          v193 = 0;
          if (v61)
          {
            (*(*v61 + 8))(v61);
          }
        }

        if ((v196 & 1) == 0)
        {
          v40 = v197;
          v197 = 0;
          if (v40)
          {
            goto LABEL_183;
          }
        }

        goto LABEL_184;
      }
    }

    v55 = v193;
    v193 = 0;
    if (v55)
    {
      (*(*v55 + 8))(v55);
    }

    goto LABEL_160;
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(&v183, &ArgOperands);
  LOWORD(v206) = ArgOperands;
  if (ArgOperands == 1)
  {
    v207 = Type;
  }

  else
  {
    (*(*Type + 16))(&v207);
  }

  v21 = v202;
  v208 = v202;
  LOWORD(v196) = v203;
  if (v203 == 1)
  {
    v197 = v204;
  }

  else
  {
    (*(*v204 + 16))(&v197);
    v21 = v208;
  }

  j = v205;
  if (v21 == v205)
  {
    v14 = 0;
    goto LABEL_56;
  }

  if (BYTE1(v206))
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  if (v206)
  {
    v24 = v207 + 16 * v23;
    LODWORD(v193) = *(v24 + 2);
    if (v193 >= 0x41)
    {
      llvm::APInt::initSlowCase(&__p, v24);
    }

    else
    {
      __p = *v24;
    }
  }

  else
  {
    (*(*v207 + 24))(&__p);
  }

  p_p = &__p;
  if (v193 >= 0x41)
  {
    p_p = __p;
  }

  v27 = *p_p;
  v14 = *p_p != 0;
  if (v193 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  v28 = v208 + 1;
  v208 = v28;
  if (v28 != j)
  {
    while (1)
    {
      v33 = BYTE1(v206) ? 0 : v28;
      if (v206 == 1)
      {
        v34 = v207 + 16 * v33;
        LODWORD(v193) = *(v34 + 2);
        if (v193 > 0x40)
        {
          llvm::APInt::initSlowCase(&__p, v34);
        }

        else
        {
          __p = *v34;
        }
      }

      else
      {
        (*(*v207 + 24))(&__p);
      }

      v35 = v193 >= 0x41 ? __p : &__p;
      v36 = (v27 != 0) ^ (*v35 == 0);
      v37 = !__p || v193 < 0x41;
      if ((v36 & 1) == 0)
      {
        break;
      }

      if (!v37)
      {
        operator delete[](__p);
      }

      v28 = v208 + 1;
      v208 = v28;
      if (v28 == j)
      {
        goto LABEL_73;
      }
    }

    if (!v37)
    {
      operator delete[](__p);
    }

LABEL_56:
    v22 = 0;
    if (v196)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

LABEL_73:
  v22 = 1;
  if (v196)
  {
    goto LABEL_76;
  }

LABEL_74:
  v29 = v197;
  v197 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

LABEL_76:
  if ((v206 & 1) == 0)
  {
    v30 = v207;
    v207 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  if ((v203 & 1) == 0)
  {
    v31 = v204;
    v204 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  if ((ArgOperands & 1) == 0)
  {
    v32 = Type;
    Type = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }

  if (v22)
  {
    goto LABEL_170;
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(&v183, &ArgOperands);
  LOWORD(v206) = ArgOperands;
  if (ArgOperands == 1)
  {
    v207 = Type;
  }

  else
  {
    (*(*Type + 16))(&v207);
  }

  v38 = v202;
  v208 = v202;
  LOWORD(v196) = v203;
  if (v203 == 1)
  {
    v197 = v204;
  }

  else
  {
    (*(*v204 + 16))(&v197);
    v38 = v208;
  }

  for (j = v205; v38 != j; v208 = v38)
  {
    if (BYTE1(v206))
    {
      v41 = 0;
    }

    else
    {
      v41 = v38;
    }

    if (v206 == 1)
    {
      v42 = v207 + 16 * v41;
      LODWORD(v193) = *(v42 + 2);
      if (v193 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, v42);
      }

      else
      {
        __p = *v42;
      }
    }

    else
    {
      (*(*v207 + 24))(&__p);
    }

    if (v193 >= 0x41)
    {
      v43 = __p;
    }

    else
    {
      v43 = &__p;
    }

    v44 = *v43;
    v45 = v186;
    if ((v186 + 1) > *(&v186 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v185, &v187, v186 + 1, 1);
      v45 = v186;
    }

    *(v185 + v45) = v44 != 0;
    *&v186 = v186 + 1;
    if (v193 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    v38 = v208 + 1;
  }

  if ((v196 & 1) == 0)
  {
    v39 = v197;
    v197 = 0;
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }
  }

  if ((v206 & 1) == 0)
  {
    v40 = v207;
    v207 = 0;
    if (v40)
    {
LABEL_183:
      (*(*v40 + 8))(v40);
    }
  }

LABEL_184:
  if ((v203 & 1) == 0)
  {
    v62 = v204;
    v204 = 0;
    if (v62)
    {
      (*(*v62 + 8))(v62);
    }
  }

  if ((ArgOperands & 1) == 0)
  {
    v63 = Type;
    Type = 0;
    if (v63)
    {
      (*(*v63 + 8))(v63);
    }
  }

  v59 = 0;
LABEL_191:
  v64 = *(a2 + 72);
  v65 = (*(*(v64 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v65)
  {
    v66 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v65 + 8);
    v64 = *(a2 + 72);
  }

  else
  {
    v66 = 0;
  }

  v182[0] = v65;
  v182[1] = v66;
  v67 = (*(*(v64 + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v67)
  {
    v68 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
  }

  else
  {
    v68 = 0;
  }

  v181[0] = v67;
  v181[1] = v68;
  if (!mlir::CallOpInterface::getArgOperands(v181) || !mlir::CallOpInterface::getArgOperands(v182))
  {
    goto LABEL_251;
  }

  if (!v59)
  {
    v87 = *(a3 + 8);
    if (v87)
    {
      v88 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v87 + 8);
      if (v88)
      {
        v88 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v87 + 8);
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      v88 = 0;
    }

    v179 = v87;
    v180 = v88;
    v89 = *(a3 + 16);
    if (v89)
    {
      v90 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v89 + 8);
      if (v90)
      {
        v90 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v89 + 8);
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v90 = 0;
    }

    ElementTypeWithLargestPrecision = 0;
    v177 = v89;
    v178 = v90;
    if (!v179)
    {
      goto LABEL_252;
    }

    if (!v89)
    {
      goto LABEL_252;
    }

    ArgOperands = mlir::ElementsAttr::getType(&v179);
    Type = mlir::ElementsAttr::getType(&v177);
    if (!ElementTypeWithLargestPrecision)
    {
      goto LABEL_252;
    }

    NumElements = mlir::ElementsAttr::getNumElements(v179, v180);
    if (NumElements != v186 && !mlir::ElementsAttr::isSplat(&v179))
    {
      goto LABEL_251;
    }

    v92 = mlir::ElementsAttr::getNumElements(v177, v178);
    if (v92 != v186 && !mlir::ElementsAttr::isSplat(&v177))
    {
      goto LABEL_251;
    }

    if (*(*mlir::ElementsAttr::isSplat(v188) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      ArgOperands = mlir::ElementsAttr::isSplat(v188);
      if (!llvm::isa<mlir::FloatType,mlir::Type>(&ArgOperands))
      {
        goto LABEL_251;
      }

      ArgOperands = &v202;
      Type = 0x400000000;
      LOBYTE(v196) = 0;
      v199 = 0;
      LOBYTE(__p) = 0;
      v195 = 0;
      if (mlir::ElementsAttr::isSplat(&v179))
      {
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v179, &v206);
        LOWORD(v174) = v206;
        if (v206 == 1)
        {
          v175 = v207;
        }

        else
        {
          (*(*v207 + 16))(&v175);
        }

        v176 = v208;
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v174, &v189);
        std::optional<llvm::APFloat>::operator=[abi:nn200100]<llvm::APFloat,void>(&v196, &v189);
        llvm::APFloat::~APFloat(&v189);
        if ((v174 & 1) == 0)
        {
          v129 = v175;
          v175 = 0;
          if (v129)
          {
            (*(*v129 + 8))(v129);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      }

      if (mlir::ElementsAttr::isSplat(&v177))
      {
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v177, &v206);
        LOWORD(v174) = v206;
        if (v206 == 1)
        {
          v175 = v207;
        }

        else
        {
          (*(*v207 + 16))(&v175);
        }

        v176 = v208;
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v174, &v189);
        std::optional<llvm::APFloat>::operator=[abi:nn200100]<llvm::APFloat,void>(&__p, &v189);
        llvm::APFloat::~APFloat(&v189);
        if ((v174 & 1) == 0)
        {
          v130 = v175;
          v175 = 0;
          if (v130)
          {
            (*(*v130 + 8))(v130);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      }

      mlir::ElementsAttr::getValues<llvm::APFloat>(&v179, &v206);
      LOWORD(v174) = v206;
      if (v206 == 1)
      {
        v175 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v175);
      }

      v176 = v208;
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      mlir::ElementsAttr::getValues<llvm::APFloat>(&v177, &v206);
      LOWORD(v171) = v206;
      if (v206 == 1)
      {
        v172 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v172);
      }

      v173 = v208;
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
      v131 = v186;
      v132 = mlir::ElementsAttr::getNumElements(v179, v180);
      v133 = mlir::ElementsAttr::getNumElements(v177, v178);
      if (v132 <= v133)
      {
        v134 = v133;
      }

      else
      {
        v134 = v132;
      }

      if (v131 <= v134)
      {
        v135 = v134;
      }

      else
      {
        v135 = v131;
      }

      v206 = ElementTypeWithLargestPrecision;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v206);
      if (!v135)
      {
LABEL_446:
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v188);
        v163 = mlir::RankedTensorType::get(ArgAttrsAttr, v162, ElementTypeWithLargestPrecision, 0);
        ElementsAttr = mlir::createElementsAttr(v163, ArgOperands, Type);
        if ((v171 & 1) == 0)
        {
          v165 = v172;
          v172 = 0;
          if (v165)
          {
            v166 = ElementsAttr;
            (*(*v165 + 8))(v165);
            ElementsAttr = v166;
          }
        }

        ElementTypeWithLargestPrecision = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
        if ((v174 & 1) == 0)
        {
          v167 = v175;
          v175 = 0;
          if (v167)
          {
            (*(*v167 + 8))(v167);
          }
        }

        std::optional<llvm::APFloat>::~optional(&__p);
        std::optional<llvm::APFloat>::~optional(&v196);
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ArgOperands);
        goto LABEL_252;
      }

      v137 = FloatSemantics;
      v138 = 0;
      while (1)
      {
        if (v199 == 1)
        {
          v139 = v197;
          if (llvm::APFloatBase::PPCDoubleDouble(FloatSemantics) == v139)
          {
            v140 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, &v197);
          }

          else
          {
            v140 = llvm::detail::IEEEFloat::IEEEFloat(&v207, &v197);
          }

          goto LABEL_419;
        }

        LOWORD(v189) = v174;
        if (v174)
        {
          v141 = v175;
          v142 = v176;
          v190 = v175;
          v191 = v176++;
          if (BYTE1(v174))
          {
            v143 = 0;
          }

          else
          {
            v143 = v142;
          }
        }

        else
        {
          (*(*v175 + 16))(&v190);
          v141 = v190;
          v144 = v176;
          v191 = v176++;
          if ((v189 & 0x100) != 0)
          {
            v143 = 0;
          }

          else
          {
            v143 = v144;
          }

          if ((v189 & 1) == 0)
          {
            v140 = (*(*v190 + 24))(&v206);
            goto LABEL_416;
          }
        }

        v145 = v141 + 32 * v143;
        v147 = *(v145 + 1);
        v146 = (v145 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v141) == v147)
        {
          v140 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v207, v146);
        }

        else
        {
          v140 = llvm::detail::IEEEFloat::IEEEFloat(&v207, v146);
        }

LABEL_416:
        if ((v189 & 1) == 0)
        {
          v140 = v190;
          v190 = 0;
          if (v140)
          {
            v140 = (*(*v140 + 8))(v140);
          }
        }

LABEL_419:
        if (v195 != 1)
        {
          LOWORD(v168) = v171;
          if (v171)
          {
            v149 = v172;
            v150 = v173;
            v169 = v172;
            v170 = v173++;
            if (BYTE1(v171))
            {
              v151 = 0;
            }

            else
            {
              v151 = v150;
            }

            goto LABEL_430;
          }

          (*(*v172 + 16))(&v169);
          v149 = v169;
          v152 = v173;
          v170 = v173++;
          if (BYTE1(v168))
          {
            v151 = 0;
          }

          else
          {
            v151 = v152;
          }

          if (v168)
          {
LABEL_430:
            v153 = v149 + 32 * v151;
            v155 = *(v153 + 1);
            v154 = (v153 + 8);
            if (llvm::APFloatBase::PPCDoubleDouble(v149) == v155)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v190, v154);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v190, v154);
            }
          }

          else
          {
            (*(*v169 + 24))(&v189);
          }

          if ((v168 & 1) == 0)
          {
            v156 = v169;
            v169 = 0;
            if (v156)
            {
              (*(*v156 + 8))(v156);
            }
          }

          goto LABEL_438;
        }

        v148 = v193;
        if (llvm::APFloatBase::PPCDoubleDouble(v140) == v148)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(&v190, &v193);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(&v190, &v193);
        }

LABEL_438:
        LOBYTE(v168) = 0;
        llvm::APFloat::convert(&v206, v137, 1, &v168);
        LOBYTE(v168) = 0;
        llvm::APFloat::convert(&v189, v137, 1, &v168);
        if (*(v185 + v138))
        {
          v157 = &v206;
        }

        else
        {
          v157 = &v189;
        }

        v158 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&ArgOperands, v157);
        v159 = v190;
        v160 = llvm::APFloatBase::PPCDoubleDouble(v158);
        if (v160 == v159)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v190);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v190);
        }

        if (v160 == v207)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v207);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v207);
        }

        if (v135 == ++v138)
        {
          goto LABEL_446;
        }
      }
    }

    ArgOperands = &v202;
    Type = 0x400000000;
    LOBYTE(v196) = 0;
    LOBYTE(j) = 0;
    LOBYTE(__p) = 0;
    LOBYTE(i) = 0;
    if (mlir::ElementsAttr::isSplat(&v179))
    {
      mlir::ElementsAttr::getValues<llvm::APInt>(&v179, &v206);
      LOWORD(v189) = v206;
      if (v206 == 1)
      {
        v190 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v190);
      }

      v191 = v208;
      mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v189, &v174);
      if (j == 1)
      {
        if (v197 >= 0x41 && v196)
        {
          operator delete[](v196);
        }

        v196 = v174;
        LODWORD(v197) = v175;
        LODWORD(v175) = 0;
      }

      else
      {
        LODWORD(v197) = v175;
        v196 = v174;
        LODWORD(v175) = 0;
        LOBYTE(j) = 1;
      }

      if ((v189 & 1) == 0)
      {
        v96 = v190;
        v190 = 0;
        if (v96)
        {
          (*(*v96 + 8))(v96);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    }

    if (mlir::ElementsAttr::isSplat(&v177))
    {
      mlir::ElementsAttr::getValues<llvm::APInt>(&v177, &v206);
      LOWORD(v189) = v206;
      if (v206 == 1)
      {
        v190 = v207;
      }

      else
      {
        (*(*v207 + 16))(&v190);
      }

      v191 = v208;
      mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v189, &v174);
      if (i == 1)
      {
        if (v193 >= 0x41 && __p)
        {
          operator delete[](__p);
        }

        __p = v174;
        LODWORD(v193) = v175;
        LODWORD(v175) = 0;
      }

      else
      {
        LODWORD(v193) = v175;
        __p = v174;
        LODWORD(v175) = 0;
        LOBYTE(i) = 1;
      }

      if ((v189 & 1) == 0)
      {
        v97 = v190;
        v190 = 0;
        if (v97)
        {
          (*(*v97 + 8))(v97);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(&v179, &v206);
    LOWORD(v189) = v206;
    if (v206 == 1)
    {
      v190 = v207;
    }

    else
    {
      (*(*v207 + 16))(&v190);
    }

    v191 = v208;
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    mlir::ElementsAttr::getValues<llvm::APInt>(&v177, &v206);
    LOWORD(v174) = v206;
    if (v206 == 1)
    {
      v175 = v207;
    }

    else
    {
      (*(*v207 + 16))(&v175);
    }

    v176 = v208;
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v206);
    v98 = v186;
    v99 = mlir::ElementsAttr::getNumElements(v179, v180);
    v100 = mlir::ElementsAttr::getNumElements(v177, v178);
    if (v99 <= v100)
    {
      v101 = v100;
    }

    else
    {
      v101 = v99;
    }

    if (v98 <= v101)
    {
      v102 = v101;
    }

    else
    {
      v102 = v98;
    }

    if (!v102)
    {
LABEL_356:
      v123 = mlir::CallableOpInterface::getArgAttrsAttr(v188);
      v125 = mlir::RankedTensorType::get(v123, v124, ElementTypeWithLargestPrecision, 0);
      v126 = mlir::createElementsAttr(v125, ArgOperands, Type);
      if ((v174 & 1) == 0)
      {
        v127 = v175;
        v175 = 0;
        if (v127)
        {
          (*(*v127 + 8))(v127);
        }
      }

      if ((v189 & 1) == 0)
      {
        v128 = v190;
        v190 = 0;
        if (v128)
        {
          (*(*v128 + 8))(v128);
        }
      }

      if (i == 1 && v193 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      ElementTypeWithLargestPrecision = v126 & 0xFFFFFFFFFFFFFFFBLL;
      if (j == 1 && v197 >= 0x41 && v196)
      {
        operator delete[](v196);
      }

      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&ArgOperands);
      goto LABEL_252;
    }

    v103 = 0;
    while (1)
    {
      if (j == 1)
      {
        LODWORD(v172) = v197;
        if (v197 > 0x40)
        {
          llvm::APInt::initSlowCase(&v171, &v196);
        }

        else
        {
          v171 = v196;
        }

        goto LABEL_318;
      }

      LOWORD(v206) = v189;
      if (v189 == 1)
      {
        v104 = v190;
        v105 = v191;
        v207 = v190;
        v208 = v191++;
        if (BYTE1(v189))
        {
          v106 = 0;
        }

        else
        {
          v106 = v105;
        }
      }

      else
      {
        (*(*v190 + 16))(&v207);
        v104 = v207;
        v107 = v191;
        v208 = v191++;
        if ((v206 & 0x100) != 0)
        {
          v106 = 0;
        }

        else
        {
          v106 = v107;
        }

        if ((v206 & 1) == 0)
        {
          (*(*v207 + 24))(&v171);
          goto LABEL_315;
        }
      }

      v108 = v104 + 16 * v106;
      LODWORD(v172) = *(v108 + 2);
      if (v172 > 0x40)
      {
        llvm::APInt::initSlowCase(&v171, v108);
      }

      else
      {
        v171 = *v108;
      }

LABEL_315:
      if ((v206 & 1) == 0)
      {
        v109 = v207;
        v207 = 0;
        if (v109)
        {
          (*(*v109 + 8))(v109);
        }
      }

LABEL_318:
      if (i != 1)
      {
        LOWORD(v206) = v174;
        if (v174 == 1)
        {
          v110 = v175;
          v111 = v176;
          v207 = v175;
          v208 = v176++;
          if (BYTE1(v174))
          {
            v112 = 0;
          }

          else
          {
            v112 = v111;
          }

          goto LABEL_330;
        }

        (*(*v175 + 16))(&v207);
        v110 = v207;
        v113 = v176;
        v208 = v176++;
        if ((v206 & 0x100) != 0)
        {
          v112 = 0;
        }

        else
        {
          v112 = v113;
        }

        if (v206)
        {
LABEL_330:
          v114 = v110 + 16 * v112;
          LODWORD(v169) = *(v114 + 2);
          if (v169 > 0x40)
          {
            llvm::APInt::initSlowCase(&v168, v114);
          }

          else
          {
            v168 = *v114;
          }
        }

        else
        {
          (*(*v207 + 24))(&v168);
        }

        if ((v206 & 1) == 0)
        {
          v115 = v207;
          v207 = 0;
          if (v115)
          {
            (*(*v115 + 8))(v115);
          }
        }

        goto LABEL_337;
      }

      LODWORD(v169) = v193;
      if (v193 > 0x40)
      {
        llvm::APInt::initSlowCase(&v168, &__p);
      }

      else
      {
        v168 = __p;
      }

LABEL_337:
      if (*(v185 + v103))
      {
        v116 = &v171;
      }

      else
      {
        v116 = &v168;
      }

      v117 = ArgOperands;
      if (Type >= HIDWORD(Type))
      {
        v120 = v116;
        if (ArgOperands <= v116 && &ArgOperands[2 * Type] > v116)
        {
          v122 = v116 - ArgOperands;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ArgOperands, Type + 1);
          v117 = ArgOperands;
          v116 = (ArgOperands + v122);
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ArgOperands, Type + 1);
          v117 = ArgOperands;
          v116 = v120;
        }
      }

      v118 = &v117[2 * Type];
      v119 = *(v116 + 2);
      *(v118 + 8) = v119;
      if (v119 > 0x40)
      {
        llvm::APInt::initSlowCase(v118, v116);
      }

      else
      {
        *v118 = *v116;
      }

      LODWORD(Type) = Type + 1;
      if (v169 >= 0x41 && v168)
      {
        operator delete[](v168);
      }

      if (v172 >= 0x41 && v171)
      {
        operator delete[](v171);
      }

      if (v102 == ++v103)
      {
        goto LABEL_356;
      }
    }
  }

  if (!mlir::CallOpInterface::getArgOperands(v188))
  {
    goto LABEL_251;
  }

  v69 = mlir::CallableOpInterface::getArgAttrsAttr(v188);
  if (v70)
  {
    v71 = 8 * v70;
    while (*v69 != 0x8000000000000000)
    {
      ++v69;
      v71 -= 8;
      if (!v71)
      {
        goto LABEL_205;
      }
    }

    goto LABEL_251;
  }

LABEL_205:
  v72 = mlir::CallableOpInterface::getArgAttrsAttr(v188);
  v74 = v73;
  if (v14)
  {
    v75 = mlir::CallableOpInterface::getArgAttrsAttr(v182);
    if (v74 == v76 && !memcmp(v72, v75, 8 * v74))
    {
      ElementTypeWithLargestPrecision = *(*(a2 + 72) + 56) | 4;
      goto LABEL_252;
    }

    goto LABEL_251;
  }

  v93 = mlir::CallableOpInterface::getArgAttrsAttr(v181);
  if (v74 != v94 || memcmp(v72, v93, 8 * v74))
  {
LABEL_251:
    ElementTypeWithLargestPrecision = 0;
    goto LABEL_252;
  }

  ElementTypeWithLargestPrecision = *(*(a2 + 72) + 88) | 4;
LABEL_252:
  if (v185 != &v187)
  {
    free(v185);
  }

  return ElementTypeWithLargestPrecision;
}

_BYTE *std::optional<llvm::APFloat>::operator=[abi:nn200100]<llvm::APFloat,void>(_BYTE *a1, uint64_t a2)
{
  if (a1[32] == 1)
  {
    llvm::APFloat::Storage::operator=((a1 + 8), (a2 + 8));
  }

  else
  {
    v4 = *(a2 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(a1) == v4)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), (a2 + 8));
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), a2 + 8);
    }

    a1[32] = 1;
  }

  return a1;
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, const llvm::APFloat *a2)
{
  v3 = (a2 + 8);
  v4 = *(a2 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(this + 1, v3);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat((this + 8), v3);
  }

  return this;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldPowerOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (!v5)
  {
    v65 = 0;
    v66 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
  {
    v65 = 0;
    v66 = 0;
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  v65 = v5;
  v66 = v6;
  v7 = *a3;
  if (!*a3 || !mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8))
  {
    v11 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v79 = v11;
    v80 = v12;
    if (!mlir::ElementsAttr::isSplat(&v65))
    {
      return 0;
    }

    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v65);
    mlir::ElementsAttr::value_begin<mlir::Attribute>(&v65, &Type);
    if (BYTE1(Type))
    {
      v13 = 0;
    }

    else
    {
      v13 = v95;
    }

    if (Type == 1)
    {
      v14 = v94[v13];
    }

    else
    {
      v14 = (*(*v94 + 24))(v94, v13);
      if ((Type & 1) == 0)
      {
        v15 = v94;
        v94 = 0;
        if (v15)
        {
          v16 = v14;
          (*(*v15 + 8))(v15);
          v14 = v16;
        }
      }
    }

    v17 = *(*v14 + 136);
    if (v17 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      if (v17 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        return 0;
      }

      v90 = v14;
      mlir::FloatAttr::getValue(&v90, &Type);
      v36 = llvm::detail::IEEEFloat::IEEEFloat(&v88, 1.0);
      v37 = llvm::APFloatBase::IEEEsingle(v36);
      llvm::APFloat::Storage::Storage(&v91, &v88, v37);
      llvm::detail::IEEEFloat::~IEEEFloat(&v88);
      v38 = v94;
      v39 = v91;
      v41 = llvm::APFloatBase::PPCDoubleDouble(v40);
      if (v38 == v39)
      {
        if (v41 == v38)
        {
          IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(&v94, &v91);
        }

        else
        {
          IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(&v94, &v91);
        }

        v42 = IsEqual;
      }

      else
      {
        v42 = 0;
      }

      if (v41 == v91)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v91);
        if (v42)
        {
          goto LABEL_104;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v91);
        if (v42)
        {
LABEL_104:
          v44 = *(*(a2 + 72) + 24) | 4;
LABEL_105:
          if (v41 == v94)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v94);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v94);
          }

          return v44;
        }
      }

      llvm::detail::IEEEFloat::IEEEFloat(&v88, 0.0);
      llvm::APFloat::Storage::Storage(&v91, &v88, v37);
      llvm::detail::IEEEFloat::~IEEEFloat(&v88);
      if (v94 != v91)
      {
        goto LABEL_109;
      }

      if (v41 == v94)
      {
        if (llvm::detail::DoubleAPFloat::bitwiseIsEqual(&v94, &v91))
        {
          goto LABEL_125;
        }
      }

      else if (llvm::detail::IEEEFloat::bitwiseIsEqual(&v94, &v91))
      {
LABEL_125:
        hasStaticShape = mlir::ShapedType::hasStaticShape(&v79);
        llvm::APFloat::~APFloat(&v90);
        if (hasStaticShape)
        {
          llvm::APFloat::APFloat(&v90, 1.0);
          LOBYTE(v88) = 0;
          llvm::APFloat::convert(&v90, v94, 1, &v88);
          llvm::APFloat::APFloat(&v88, &v90);
          v64 = mlir::DenseElementsAttr::get(v79, v80, &v88, 1);
          if (v41 == v89[0])
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v89);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v89);
          }

          v44 = v64 & 0xFFFFFFFFFFFFFFFBLL;
          llvm::APFloat::~APFloat(&v90);
          goto LABEL_105;
        }

LABEL_110:
        llvm::APFloat::~APFloat(&Type);
        return 0;
      }

LABEL_109:
      llvm::APFloat::~APFloat(&v90);
      goto LABEL_110;
    }

    v90 = v14;
    mlir::IntegerAttr::getValue(&v90, &Type);
    v19 = v94;
    if (v94 > 0x40)
    {
      v43 = llvm::APInt::countLeadingZerosSlowCase(&Type);
      if (v43 == v19 - 1)
      {
LABEL_63:
        result = *(*(a2 + 72) + 24) | 4;
        if (v19 < 0x41)
        {
          return result;
        }

LABEL_64:
        if (Type)
        {
          v44 = result;
          operator delete[](Type);
          return v44;
        }

        return result;
      }

      if (v43 != v19)
      {
LABEL_80:
        if (Type)
        {
          operator delete[](Type);
          return 0;
        }

        return 0;
      }
    }

    else if (Type)
    {
      if (Type != 1)
      {
        return 0;
      }

      goto LABEL_63;
    }

    if (mlir::CallOpInterface::getArgOperands(&v79))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v79);
      if (!v49)
      {
LABEL_75:
        v51 = v94;
        isSignedInteger = mlir::Type::isSignedInteger(&ElementTypeOrSelf);
        llvm::APInt::APInt(&v90, v51, 1, isSignedInteger, 1);
        LODWORD(v89[0]) = v91;
        if (v91 > 0x40)
        {
          llvm::APInt::initSlowCase(&v88, &v90);
        }

        else
        {
          v88 = v90;
        }

        v60 = mlir::DenseElementsAttr::get(v79, v80, &v88, 1);
        if (LODWORD(v89[0]) >= 0x41 && v88)
        {
          v61 = v60;
          operator delete[](v88);
          v60 = v61;
        }

        result = v60 & 0xFFFFFFFFFFFFFFFBLL;
        if (v91 >= 0x41 && v90)
        {
          v62 = result;
          operator delete[](v90);
          result = v62;
        }

        if (v94 < 0x41)
        {
          return result;
        }

        goto LABEL_64;
      }

      v50 = 8 * v49;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v50 -= 8;
        if (!v50)
        {
          goto LABEL_75;
        }
      }
    }

    if (v94 < 0x41)
    {
      return 0;
    }

    goto LABEL_80;
  }

  mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
  if (*(a2 + 36))
  {
    v8 = a2 - 16;
  }

  else
  {
    v8 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v9 = *a3;
  if (*a3)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v86 = v9;
  v87 = v10;
  v20 = *(a3 + 8);
  if (v20)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v20 + 8))
    {
      v21 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v20 + 8);
      goto LABEL_41;
    }

    v20 = 0;
  }

  v21 = 0;
LABEL_41:
  result = 0;
  v84 = v20;
  v85 = v21;
  if (v9 && v20)
  {
    v22 = *(a2 + 36) ? a2 - 16 : 0;
    v23 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8) : 0;
    v82 = v23;
    v83 = v24;
    Type = mlir::ElementsAttr::getType(&v86);
    v94 = mlir::ElementsAttr::getType(&v84);
    if (result)
    {
      v25 = result;
      mlir::mps::CPUNDArray::CPUNDArray(&Type, v86, v87);
      mlir::mps::CPUNDArray::CPUNDArray(&v90, v84, v85);
      v81[0] = 0;
      v81[1] = 0;
      if (mlir::CallOpInterface::getArgOperands(&v82))
      {
        v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
        if (!v27)
        {
          goto LABEL_58;
        }

        v28 = 8 * v27;
        while (*v26 != 0x8000000000000000)
        {
          ++v26;
          v28 -= 8;
          if (!v28)
          {
            goto LABEL_58;
          }
        }
      }

      v29 = mlir::ElementsAttr::getType(&v86);
      v30 = mlir::ElementsAttr::getType(&v84);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v29, v30, 0);
      if (!BroadcastedType)
      {
        v44 = 0;
        v82 = 0;
        v83 = 0;
LABEL_98:
        mlir::mps::CPUNDArray::~CPUNDArray(&v90);
        mlir::mps::CPUNDArray::~CPUNDArray(&Type);
        return v44;
      }

      v32 = BroadcastedType;
      v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*BroadcastedType + 8);
      v82 = v32;
      v83 = v33;
LABEL_58:
      if (v25 == mlir::ElementsAttr::isSplat(&v82))
      {
        v34 = v82;
        v35 = v83;
      }

      else
      {
        v45 = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
        v34 = mlir::RankedTensorType::get(v45, v46, v25, 0);
        if (v34)
        {
          v47 = v34;
          v35 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
          v34 = v47;
        }

        else
        {
          v35 = 0;
        }

        v82 = v34;
        v83 = v35;
      }

      mlir::mps::CPUNDArray::tryMakeAliasedArray(v34, v35, v81, &v88);
      mlir::mps::CPUNDArrayArithmeticBinaryKernel::CPUNDArrayArithmeticBinaryKernel(&v79, 4);
      if (v95 <= v92)
      {
        v54 = v92;
      }

      else
      {
        v54 = v95;
      }

      v55 = operator new(0x10uLL);
      v77 = v55 + 2;
      v78 = v55 + 2;
      *v55 = &Type;
      v55[1] = &v90;
      ElementTypeOrSelf = v55;
      v56 = operator new(8uLL);
      v73 = v56;
      *v56 = &v88;
      v74 = v56 + 1;
      v75 = v56 + 1;
      v57 = operator new(0x10uLL);
      v71 = v57 + 2;
      v72 = v57 + 2;
      *v57 = 0;
      v57[1] = 0;
      v70 = v57;
      v58 = operator new(8uLL);
      __p = v58;
      *v58 = 0;
      v68 = v58 + 1;
      v69 = v58 + 1;
      mlir::mps::CPUNDArrayKernel::cpuTilingEngine(&v79, &ElementTypeOrSelf, &v73, &v70, &__p, 0, v54, &v79);
      if (__p)
      {
        v68 = __p;
        operator delete(__p);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (ElementTypeOrSelf)
      {
        v77 = ElementTypeOrSelf;
        operator delete(ElementTypeOrSelf);
      }

      ElementsAttr = v81[0];
      if (!v81[0])
      {
        ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(&v88, 0, 0);
      }

      v44 = ElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
      mlir::mps::CPUNDArray::~CPUNDArray(&v88);
      goto LABEL_98;
    }
  }

  return result;
}

llvm::APFloat *llvm::APFloat::APFloat(llvm::APFloat *this, float a2)
{
  v3 = llvm::detail::IEEEFloat::IEEEFloat(v6, a2);
  v4 = llvm::APFloatBase::IEEEsingle(v3);
  llvm::APFloat::Storage::Storage(this + 8, v6, v4);
  llvm::detail::IEEEFloat::~IEEEFloat(v6);
  return this;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldTransposeOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  if (*a3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
      goto LABEL_6;
    }

    v4 = 0;
  }

  v5 = 0;
LABEL_6:

  return mlir::mps::foldTransposeOp(a2, v4, v5, 0);
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldPermuteOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73[4] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (!v5)
  {
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8))
  {
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
  v7 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8) : 0;
  v61[0] = v7;
  v61[1] = v8;
  if (!mlir::CallOpInterface::getArgOperands(v61))
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v61);
  v10 = v9;
  v71 = v73;
  v72 = 0x400000000;
  mlir::getIntValues<long long>(v5, v6, &v71, 1);
  if (v72)
  {
    v11 = v71;
    v12 = 8 * v72;
    do
    {
      *v11 = mlir::getPositiveAxis(*v11, v10);
      ++v11;
      v12 -= 8;
    }

    while (v12);
  }

  v68 = v70;
  v69 = 0x400000000;
  if (!v10)
  {
    v17 = 0;
    v18 = 1;
    v19 = v70;
    v14 = v70;
    goto LABEL_30;
  }

  if (v10 < 5)
  {
    v13 = 0;
    v14 = v70;
    v15 = v10;
    goto LABEL_20;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v70, v10, 8);
  v13 = v69;
  v14 = v68;
  v15 = v10 - v69;
  if (v10 != v69)
  {
LABEL_20:
    bzero(v14 + 8 * v13, 8 * v15);
  }

  LODWORD(v69) = v10;
  v19 = (v14 + 8 * v10);
  if (!v10)
  {
    v17 = 0;
    v18 = 1;
    goto LABEL_30;
  }

  v20 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v20 >= 3)
  {
    v23 = v20 + 1;
    v21 = (v20 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v22 = (v14 + 8 * v21);
    v24 = xmmword_1E09700F0;
    v25 = v14 + 1;
    v26 = vdupq_n_s64(2uLL);
    v27 = vdupq_n_s64(4uLL);
    v28 = v21;
    do
    {
      v25[-1] = v24;
      *v25 = vaddq_s64(v24, v26);
      v24 = vaddq_s64(v24, v27);
      v25 += 2;
      v28 -= 4;
    }

    while (v28);
    if (v23 == v21)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = 0;
    v22 = v14;
  }

  do
  {
    v22->i64[0] = v21;
    v22 = (v22 + 8);
    ++v21;
  }

  while (v22 != v19);
LABEL_29:
  v18 = 0;
  v17 = 8 * v10;
LABEL_30:
  if (v72 == v10 && !memcmp(v71, v14, v17) || (v18 & 1) != 0)
  {
LABEL_33:
    v16 = (*(*(a2 + 72) + 24) | 4);
  }

  else
  {
    while (1)
    {
      if (v71[v14->i64[0]] != v68->i64[v14->i64[0]])
      {
        v30 = v14->i64[0];
        if (*(mlir::CallableOpInterface::getArgAttrsAttr(v61) + 8 * v30) != 1)
        {
          break;
        }
      }

      v14 = (v14 + 8);
      if (v14 == v19)
      {
        goto LABEL_33;
      }
    }

    ArgOperands = *(*(a2 + 72) + 24);
    if (mlir::Value::getDefiningOp(&ArgOperands))
    {
      __s1 = *(*(a2 + 72) + 24);
      if (*(*(mlir::Value::getDefiningOp(&__s1) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
      {
        v35 = *(*(a2 + 72) + 24);
        if (*v35)
        {
          if (!**v35)
          {
            ArgOperands = *(*(a2 + 72) + 24);
            DefiningOp = mlir::Value::getDefiningOp(&ArgOperands);
            if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
            {
              v37 = DefiningOp;
            }

            else
            {
              v37 = 0;
            }

            ArgOperands = v67;
            v66 = 0x400000000;
            if (mlir::matchConstantWithIntVector<long long>(*(*(v37 + 72) + 56), &ArgOperands))
            {
              __s1 = v64;
              v63 = 0x400000000;
              if (v72)
              {
                v38 = 0;
                v39 = v71;
                v40 = 8 * v72;
                do
                {
                  v41 = *(ArgOperands + *v39);
                  if (v38 >= HIDWORD(v63))
                  {
                    v55 = *(ArgOperands + *v39);
                    v56 = v40;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&__s1, v64, v38 + 1, 8);
                    v41 = v55;
                    v40 = v56;
                    v38 = v63;
                  }

                  *(__s1 + v38) = v41;
                  v38 = v63 + 1;
                  LODWORD(v63) = v63 + 1;
                  ++v39;
                  v40 -= 8;
                }

                while (v40);
                v53 = __s1;
              }

              else
              {
                v38 = 0;
                v53 = v64;
              }

              if (v38 == v69 && !memcmp(v53, v68, 8 * v38))
              {
                v54 = *(*(v37 + 72) + 24);
                if (v53 != v64)
                {
                  free(v53);
                }

                v16 = (v54 | 4);
                if (ArgOperands != v67)
                {
                  free(ArgOperands);
                }

                goto LABEL_34;
              }

              if (v53 != v64)
              {
                free(v53);
              }
            }

            if (ArgOperands != v67)
            {
              free(ArgOperands);
            }
          }
        }
      }
    }

    if (*(a2 + 36))
    {
      v31 = a2 - 16;
    }

    else
    {
      v31 = 0;
    }

    v32 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v32)
    {
      v33 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v60[0] = v32;
    v60[1] = v33;
    if (mlir::CallOpInterface::getArgOperands(v60))
    {
      v16 = *a3;
      if (v16)
      {
        v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
        if (v34)
        {
          v34 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v16 + 8);
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v34 = 0;
      }

      v58 = v16;
      v59 = v34;
      if (v16)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v60);
        v44 = v43;
        ArgOperands = mlir::CallOpInterface::getArgOperands(&v58);
        v66 = v45;
        isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
        v47 = mlir::RankedTensorType::get(ArgAttrsAttr, v44, isSplat, 0);
        if (mlir::ElementsAttr::isSplat(&v58))
        {
          v48 = v58;
          v49 = v59;
          if (v47)
          {
            v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
          }

          else
          {
            v50 = 0;
          }

          v16 = (mlir::reshapeElementsAttr(v48, v49, v47, v50) & 0xFFFFFFFFFFFFFFFBLL);
        }

        else
        {
          mlir::mps::CPUNDArray::CPUNDArray(&ArgOperands, v58, v59);
          v57[0] = 0;
          v57[1] = 0;
          if (v47)
          {
            v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v47 + 8);
          }

          else
          {
            v51 = 0;
          }

          mlir::mps::CPUNDArray::tryMakeAliasedArray(v47, v51, v57, &__s1);
          mlir::mps::transpose(&ArgOperands, &__s1, v71, v72);
          ElementsAttr = v57[0];
          if (!v57[0])
          {
            ElementsAttr = mlir::mps::CPUNDArray::getElementsAttr(&__s1, 0, 0);
          }

          v16 = (ElementsAttr & 0xFFFFFFFFFFFFFFFBLL);
          mlir::mps::CPUNDArray::~CPUNDArray(&__s1);
          mlir::mps::CPUNDArray::~CPUNDArray(&ArgOperands);
        }
      }
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_34:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  return v16;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldScatterOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = *MEMORY[0x1E69E9840];
  v89 = a2;
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8))
  {
    v87 = 0;
    v88 = 0;
    return 0;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
  v87 = v7;
  v88 = v8;
  if (!v7 || !mlir::CallOpInterface::getArgOperands(&v87) || mlir::mps::MaterializeSparseTensorOp::getStorageType(&v89) != 6)
  {
    return 0;
  }

  v9 = *a3;
  if (*a3)
  {
    v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    if (v10)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v85 = v9;
  v86 = v10;
  v11 = *(a3 + 8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v11 + 8);
    if (v12)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v11 + 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v84[0] = v11;
  v84[1] = v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    goto LABEL_25;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8))
  {
    v13 = 0;
LABEL_25:
    v14 = 0;
    goto LABEL_26;
  }

  v14 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8);
LABEL_26:
  result = 0;
  v82 = v13;
  v83 = v14;
  if (v85 && v84[0] && v13)
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v85);
    v91 = v16;
    isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
    v79 = mlir::CallOpInterface::getArgOperands(v84);
    v80 = v17;
    v94 = mlir::ElementsAttr::isSplat(&v79);
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v87);
    v21 = mlir::RankedTensorType::get(ArgAttrsAttr, v20, ElementTypeWithLargestPrecision, 0);
    isSplat = mlir::CallOpInterface::getArgOperands(&v85);
    v94 = v22;
    if (*(*mlir::ElementsAttr::isSplat(&isSplat) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      isSplat = mlir::CallOpInterface::getArgOperands(&v85);
      v94 = v23;
      v24 = *(*mlir::ElementsAttr::isSplat(&isSplat) + 136);
      if (v24 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v24 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
      {
        return 0;
      }

      isSplat = ElementTypeWithLargestPrecision;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&isSplat);
      mlir::ElementsAttr::value_begin<llvm::APFloat>(&v85, &v79);
      v76 = 257;
      v77 = 0;
      NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
      llvm::SmallVector<llvm::APFloat,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(&isSplat, &v79, &v76);
      if ((v76 & 1) == 0)
      {
        v26 = v77;
        v77 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      if ((v79 & 1) == 0)
      {
        v27 = v80;
        v80 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }
      }

      if (v94)
      {
        v28 = isSplat;
        v29 = 32 * v94;
        do
        {
          LOBYTE(ArgOperands) = 0;
          llvm::APFloat::convert(v28, FloatSemantics, 1, &ArgOperands);
          v28 += 4;
          v29 -= 32;
        }

        while (v29);
      }

      if (mlir::ElementsAttr::getNumElements(v82, v83) >= 1)
      {
        for (i = 0; i < mlir::ElementsAttr::getNumElements(v82, v83); ++i)
        {
          mlir::ElementsAttr::value_begin<llvm::APInt>(&v82, &v73);
          LOWORD(ArgOperands) = v73;
          if (v73 == 1)
          {
            v31 = v74;
            v91 = v74;
            v92 = i + v75;
            if (HIBYTE(v73))
            {
              v32 = 0;
            }

            else
            {
              v32 = i + v75;
            }
          }

          else
          {
            (*(*v74 + 16))(&v91);
            v31 = v91;
            v92 = i + v75;
            if ((ArgOperands & 0x100) != 0)
            {
              v32 = 0;
            }

            else
            {
              v32 = i + v75;
            }

            if ((ArgOperands & 1) == 0)
            {
              (*(*v91 + 24))(&__p);
              goto LABEL_74;
            }
          }

          v33 = v31 + 16 * v32;
          v34 = *(v33 + 2);
          LODWORD(v71) = v34;
          if (v34 <= 0x40)
          {
            v35 = *v33;
            __p = *v33;
            goto LABEL_76;
          }

          llvm::APInt::initSlowCase(&__p, v33);
LABEL_74:
          v34 = v71;
          if (v71 <= 0x40)
          {
            v35 = __p;
LABEL_76:
            v36 = (v35 << -v34) >> -v34;
            if (v34)
            {
              v37 = v36;
            }

            else
            {
              v37 = 0;
            }

            if (ArgOperands)
            {
              goto LABEL_84;
            }

            goto LABEL_82;
          }

          v37 = *__p;
          operator delete[](__p);
          if (ArgOperands)
          {
            goto LABEL_84;
          }

LABEL_82:
          v38 = v91;
          v91 = 0;
          if (v38)
          {
            (*(*v38 + 8))(v38);
          }

LABEL_84:
          if ((v73 & 1) == 0)
          {
            v39 = v74;
            v74 = 0;
            if (v39)
            {
              (*(*v39 + 8))(v39);
            }
          }

          if (v37 < 0 || v37 >= mlir::ElementsAttr::getNumElements(v85, v86))
          {
            continue;
          }

          mlir::ElementsAttr::value_begin<llvm::APFloat>(v84, &__p);
          v73 = __p;
          if (__p)
          {
            v40 = v71;
            v74 = v71;
            v75 = i + v72;
            if (BYTE1(__p))
            {
              v41 = 0;
            }

            else
            {
              v41 = i + v72;
            }

LABEL_97:
            v42 = v40 + 32 * v41;
            v44 = *(v42 + 1);
            v43 = (v42 + 8);
            if (llvm::APFloatBase::PPCDoubleDouble(v40) == v44)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v91, v43);
              if ((v73 & 1) == 0)
              {
                goto LABEL_103;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v91, v43);
              if ((v73 & 1) == 0)
              {
                goto LABEL_103;
              }
            }

            goto LABEL_105;
          }

          (*(*v71 + 16))(&v74);
          v40 = v74;
          v75 = i + v72;
          if ((v73 & 0x100) != 0)
          {
            v41 = 0;
          }

          else
          {
            v41 = i + v72;
          }

          if (v73)
          {
            goto LABEL_97;
          }

          (*(*v74 + 24))(&ArgOperands);
          if ((v73 & 1) == 0)
          {
LABEL_103:
            v45 = v74;
            v74 = 0;
            if (v45)
            {
              (*(*v45 + 8))(v45);
            }
          }

LABEL_105:
          if ((__p & 1) == 0)
          {
            v46 = v71;
            v71 = 0;
            if (v46)
            {
              (*(*v46 + 8))(v46);
            }
          }

          LOBYTE(v73) = 0;
          llvm::APFloat::convert(&ArgOperands, FloatSemantics, 1, &v73);
          v47 = llvm::APFloat::Storage::operator=(&isSplat[4 * v37 + 1], &v91);
          v48 = v91;
          if (llvm::APFloatBase::PPCDoubleDouble(v47) == v48)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v91);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v91);
          }
        }
      }

      v49 = mlir::createElementsAttr(v21, isSplat, v94) & 0xFFFFFFFFFFFFFFFBLL;
      llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&isSplat);
      return v49;
    }

    mlir::ElementsAttr::value_begin<llvm::APInt>(&v85, &ArgOperands);
    v50 = mlir::ElementsAttr::getNumElements(v85, v86);
    LOWORD(v79) = 257;
    v80 = 0;
    v81 = v50;
    llvm::SmallVector<llvm::APInt,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(&isSplat, &ArgOperands, &v79);
    if ((v79 & 1) == 0)
    {
      v51 = v80;
      v80 = 0;
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }
    }

    if ((ArgOperands & 1) == 0)
    {
      v52 = v91;
      v91 = 0;
      if (v52)
      {
        (*(*v52 + 8))(v52);
      }
    }

    if (mlir::ElementsAttr::getNumElements(v82, v83) < 1)
    {
LABEL_173:
      v49 = mlir::createElementsAttr(v21, isSplat, v94) & 0xFFFFFFFFFFFFFFFBLL;
      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&isSplat);
      return v49;
    }

    v53 = 0;
    while (1)
    {
      mlir::ElementsAttr::value_begin<llvm::APInt>(&v82, &v73);
      v76 = v73;
      if (v73 == 1)
      {
        v54 = v74;
        v77 = v74;
        NumElements = v53 + v75;
        if (HIBYTE(v73))
        {
          v55 = 0;
        }

        else
        {
          v55 = v53 + v75;
        }
      }

      else
      {
        (*(*v74 + 16))(&v77);
        v54 = v77;
        NumElements = v53 + v75;
        if ((v76 & 0x100) != 0)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53 + v75;
        }

        if ((v76 & 1) == 0)
        {
          (*(*v77 + 24))(&__p);
          goto LABEL_132;
        }
      }

      v56 = v54 + 16 * v55;
      v57 = *(v56 + 2);
      LODWORD(v71) = v57;
      if (v57 <= 0x40)
      {
        v58 = *v56;
        __p = *v56;
        goto LABEL_134;
      }

      llvm::APInt::initSlowCase(&__p, v56);
LABEL_132:
      v57 = v71;
      if (v71 <= 0x40)
      {
        v58 = __p;
LABEL_134:
        v59 = (v58 << -v57) >> -v57;
        if (v57)
        {
          v60 = v59;
        }

        else
        {
          v60 = 0;
        }

        if (v76)
        {
          goto LABEL_142;
        }

        goto LABEL_140;
      }

      v60 = *__p;
      operator delete[](__p);
      if (v76)
      {
        goto LABEL_142;
      }

LABEL_140:
      v61 = v77;
      v77 = 0;
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

LABEL_142:
      if ((v73 & 1) == 0)
      {
        v62 = v74;
        v74 = 0;
        if (v62)
        {
          (*(*v62 + 8))(v62);
        }
      }

      if (v60 < 0 || v60 >= mlir::ElementsAttr::getNumElements(v85, v86))
      {
        goto LABEL_119;
      }

      mlir::ElementsAttr::value_begin<llvm::APInt>(v84, &v73);
      v76 = v73;
      if (v73 == 1)
      {
        v63 = v74;
        v77 = v74;
        NumElements = v53 + v75;
        if (HIBYTE(v73))
        {
          v64 = 0;
        }

        else
        {
          v64 = v53 + v75;
        }
      }

      else
      {
        (*(*v74 + 16))(&v77);
        v63 = v77;
        NumElements = v53 + v75;
        if ((v76 & 0x100) != 0)
        {
          v64 = 0;
        }

        else
        {
          v64 = v53 + v75;
        }

        if ((v76 & 1) == 0)
        {
          (*(*v77 + 24))(&__p);
          if (v76)
          {
            goto LABEL_163;
          }

          goto LABEL_161;
        }
      }

      v65 = v63 + 16 * v64;
      LODWORD(v71) = *(v65 + 2);
      if (v71 > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, v65);
        if (v76)
        {
          goto LABEL_163;
        }
      }

      else
      {
        __p = *v65;
        if (v76)
        {
          goto LABEL_163;
        }
      }

LABEL_161:
      v66 = v77;
      v77 = 0;
      if (v66)
      {
        (*(*v66 + 8))(v66);
      }

LABEL_163:
      if ((v73 & 1) == 0)
      {
        v67 = v74;
        v74 = 0;
        if (v67)
        {
          (*(*v67 + 8))(v67);
        }
      }

      v68 = &isSplat[2 * v60];
      if (v68[2] > 0x40 || v71 > 0x40)
      {
        llvm::APInt::assignSlowCase(v68, &__p);
        if (v71 >= 0x41)
        {
LABEL_171:
          if (__p)
          {
            operator delete[](__p);
          }
        }
      }

      else
      {
        *v68 = __p;
        v69 = v71;
        v68[2] = v71;
        if (v69 >= 0x41)
        {
          goto LABEL_171;
        }
      }

LABEL_119:
      if (++v53 >= mlir::ElementsAttr::getNumElements(v82, v83))
      {
        goto LABEL_173;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::verifyTriviallyFoldable(void **a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a1;
  v3 = &a1[a2];
  while (1)
  {
    v4 = *v2;
    if (!*v2)
    {
      v17 = 0;
      v18 = 0;
      return 0;
    }

    if (!mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*v4 + 8))
    {
      v17 = 0;
      v18 = 0;
      return 0;
    }

    v5 = mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*v4 + 8);
    v17 = v4;
    v18 = v5;
    if (!v4)
    {
      return 0;
    }

    CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v17);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*CallableForCallee + 8))
    {
      v15 = 0;
      v16 = 0;
      return 0;
    }

    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*CallableForCallee + 8);
    v15 = CallableForCallee;
    v16 = v7;
    if (!CallableForCallee)
    {
      return 0;
    }

    if (!mlir::CallOpInterface::getArgOperands(&v15))
    {
      return 0;
    }

    mlir::CallableOpInterface::getArgAttrsAttr(&v15);
    if (v8 > 1 || !mlir::CallOpInterface::getArgOperands(&v15))
    {
      return 0;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
    if (v10)
    {
      break;
    }

LABEL_20:
    v12 = mlir::CallableOpInterface::getArgAttrsAttr(&v15);
    if (mlir::ShapedType::getNumElements(v12, v13) >= 1025)
    {
      return 0;
    }

    if (++v2 == v3)
    {
      return 1;
    }
  }

  v11 = 8 * v10;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t mlir::ElementsAttr::value_begin<llvm::APFloat>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  result = mlir::ElementsAttr::try_value_begin<llvm::APFloat>(a1, &v6);
  if (v9 != 1)
  {
    mlir::ElementsAttr::value_begin<llvm::APFloat>(&v6, a1);
  }

  *a2 = v6;
  v5 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v5;
  return result;
}

void *llvm::SmallVector<llvm::APInt,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APInt>::append<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::APInt>::append<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(uint64_t a1, char *a2, char *a3)
{
  v33 = *a2;
  v34 = a2[1];
  if (v33 == 1)
  {
    v35[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v35);
  }

  v35[1] = *(a2 + 2);
  v30 = *a3;
  v31 = a3[1];
  if (v30 == 1)
  {
    v6 = (a3 + 16);
    v32 = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v32);
    v6 = (a3 + 16);
    *(&v32 + 1) = *(a3 + 2);
    if ((v30 & 1) == 0)
    {
      v7 = v32;
      *&v32 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }

  if ((v33 & 1) == 0)
  {
    v8 = v35[0];
    v35[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v26 = *a2;
  v27 = a2[1];
  if (v26 == 1)
  {
    v28 = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(&v28);
  }

  v29 = *(a2 + 2);
  v22 = *a3;
  v23 = a3[1];
  if (v22 == 1)
  {
    v24 = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v24);
  }

  v25 = *v6;
  v40 = v26;
  v41 = v27;
  if (v26 == 1)
  {
    v42 = v28;
  }

  else
  {
    (*(*v28 + 16))(&v42);
  }

  v9 = v29;
  v43 = v29;
  v36 = v22;
  v37 = v23;
  if (v22 == 1)
  {
    v10 = v25;
    v38 = v24;
    v39 = v25;
  }

  else
  {
    (*(*v24 + 16))(&v38);
    v9 = v43;
    v10 = v25;
    v39 = v25;
    if ((v36 & 1) == 0)
    {
      v11 = v38;
      v38 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if ((v40 & 1) == 0)
  {
    v12 = v42;
    v42 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if ((v22 & 1) == 0)
  {
    v13 = v24;
    v24 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v10 - v9;
  if ((v26 & 1) == 0)
  {
    v15 = v28;
    v28 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = v14 + *(a1 + 8);
  if (v16 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v16);
  }

  v20[0] = *a2;
  v20[1] = a2[1];
  if (v20[0] == 1)
  {
    v21[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v21);
  }

  v21[1] = *(a2 + 2);
  v18[0] = *a3;
  v18[1] = a3[1];
  if (v18[0] == 1)
  {
    v19[0] = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(v19);
  }

  v19[1] = *v6;
  result = llvm::SmallVectorTemplateBase<llvm::APInt,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(v20, v18, *a1 + 16 * *(a1 + 8));
  if ((v18[0] & 1) == 0)
  {
    result = v19[0];
    v19[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v20[0] & 1) == 0)
  {
    result = v21[0];
    v21[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 8) += v14;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::APInt,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *a1;
  v9[1] = *(a1 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a1 + 8);
  }

  else
  {
    (*(**(a1 + 8) + 16))(v10);
  }

  v10[1] = *(a1 + 16);
  v7[0] = *a2;
  v7[1] = *(a2 + 1);
  if (v7[0] == 1)
  {
    v8[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v8);
  }

  v8[1] = *(a2 + 16);
  result = std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(v9, v7, a3);
  if ((v7[0] & 1) == 0)
  {
    result = v8[0];
    v8[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v9[0] & 1) == 0)
  {
    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APInt>,llvm::APInt*>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = *(a1 + 1);
    v6 = v5;
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 1);
    *(a1 + 1) = 0;
  }

  v7 = a1[1];
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = *(a2 + 1);
  if (v9 != 1)
  {
    *(a2 + 1) = 0;
  }

  for (i = *(a2 + 2); i != v8; a3 += 16)
  {
    if (v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = v8;
    }

    if (v4)
    {
      v14 = v6 + 16 * v13;
      v15 = *(v14 + 8);
      *(a3 + 8) = v15;
      if (v15 > 0x40)
      {
        llvm::APInt::initSlowCase(a3, v14);
      }

      else
      {
        *a3 = *v14;
      }
    }

    else
    {
      (*(*v6 + 24))(v6);
    }

    ++v8;
  }

  if ((v9 & 1) == 0 && v10)
  {
    (*(*v10 + 8))(v10);
  }

  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return a3;
}

uint64_t mlir::ElementsAttr::try_value_begin<llvm::APFloat>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  {
    v5 = a1;
    mlir::detail::ElementsAttrTrait<mlir::DenseIntOrFPElementsAttr>::getValueImpl<llvm::APFloat,std::complex<llvm::APFloat>,std::integral_constant<BOOL,false>>();
    a1 = v5;
  }

  result = mlir::BranchOpInterface::getSuccessorOperands(a1, mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id);
  if (v9 == 1)
  {
    v4 = v8;
    if (v6 != 1)
    {
      v8 = 0;
    }

    *a2 = v6;
    *(a2 + 1) = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    if ((v6 & 1) == 0)
    {
      result = v8;
      if (v8)
      {
        return (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t llvm::SmallVector<llvm::APFloat,4u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x400000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APFloat>::append<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::APFloat>::append<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(unsigned int *a1, char *a2, char *a3)
{
  v35 = *a2;
  v36 = a2[1];
  if (v35 == 1)
  {
    v37[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v37);
  }

  v37[1] = *(a2 + 2);
  v32 = *a3;
  v33 = a3[1];
  if (v32 == 1)
  {
    v6 = (a3 + 16);
    v34 = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v34);
    v6 = (a3 + 16);
    *(&v34 + 1) = *(a3 + 2);
    if ((v32 & 1) == 0)
    {
      v7 = v34;
      *&v34 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }

  if ((v35 & 1) == 0)
  {
    v8 = v37[0];
    v37[0] = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v29 = *a2;
  if (v29 == 1)
  {
    v30 = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(&v30);
  }

  v31 = *(a2 + 2);
  v25 = *a3;
  v26 = a3[1];
  if (v25 == 1)
  {
    v27 = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(&v27);
  }

  v28 = *v6;
  LOWORD(v42) = v29;
  if (v29 == 1)
  {
    v43 = v30;
  }

  else
  {
    (*(*v30 + 16))(&v43);
  }

  v9 = v31;
  v44 = v31;
  v38 = v25;
  v39 = v26;
  if (v25 == 1)
  {
    v10 = v28;
    v40 = v27;
    v41 = v28;
  }

  else
  {
    (*(*v27 + 16))(&v40);
    v9 = v44;
    v10 = v28;
    v41 = v28;
    if ((v38 & 1) == 0)
    {
      v11 = v40;
      v40 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }
  }

  if ((v42 & 1) == 0)
  {
    v12 = v43;
    v43 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if ((v25 & 1) == 0)
  {
    v13 = v27;
    v27 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  v14 = v10 - v9;
  if ((v29 & 1) == 0)
  {
    v15 = v30;
    v30 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = v14 + a1[2];
  if (v16 > a1[3])
  {
    v42 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, v16, 32, &v42);
    v18 = v17;
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v17);
    v19 = v42;
    if (*a1 != a1 + 4)
    {
      free(*a1);
    }

    *a1 = v18;
    a1[3] = v19;
  }

  v23[0] = *a2;
  v23[1] = a2[1];
  if (v23[0] == 1)
  {
    v24[0] = *(a2 + 1);
  }

  else
  {
    (*(**(a2 + 1) + 16))(v24);
  }

  v24[1] = *(a2 + 2);
  v21[0] = *a3;
  v21[1] = a3[1];
  if (v21[0] == 1)
  {
    v22[0] = *(a3 + 1);
  }

  else
  {
    (*(**(a3 + 1) + 16))(v22);
  }

  v22[1] = *v6;
  result = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(v23, v21, *a1 + 32 * a1[2]);
  if ((v21[0] & 1) == 0)
  {
    result = v22[0];
    v22[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v23[0] & 1) == 0)
  {
    result = v24[0];
    v24[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  a1[2] += v14;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::APFloat,false>::uninitialized_copy<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *a1;
  v9[1] = *(a1 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a1 + 8);
  }

  else
  {
    (*(**(a1 + 8) + 16))(v10);
  }

  v10[1] = *(a1 + 16);
  v7[0] = *a2;
  v7[1] = *(a2 + 1);
  if (v7[0] == 1)
  {
    v8[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v8);
  }

  v8[1] = *(a2 + 16);
  result = std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(v9, v7, a3);
  if ((v7[0] & 1) == 0)
  {
    result = v8[0];
    v8[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  if ((v9[0] & 1) == 0)
  {
    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(unsigned int *a1, unint64_t a2)
{
  v7 = 0;
  v3 = a1 + 4;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 32, &v7);
  v5 = v4;
  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v4);
  v6 = v7;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v5;
  a1[3] = v6;
}

unsigned int *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(unsigned int *result, uint64_t a2)
{
  v2 = result[2];
  if (v2)
  {
    v4 = result;
    v5 = *result;
    v6 = llvm::APFloatBase::PPCDoubleDouble(result);
    result = (a2 + 8);
    v7 = 32 * v2;
    v8 = (v5 + 8);
    do
    {
      if (v6 == v8->n128_u64[0])
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(result, v8);
      }

      else
      {
        v9 = llvm::detail::IEEEFloat::IEEEFloat(result, v8);
      }

      result = (v9 + 32);
      v8 += 2;
      v7 -= 32;
    }

    while (v7);
    v10 = v4[2];
    if (v10)
    {
      v11 = 32 * v10;
      result = (v11 + *v4 - 24);
      v12 = -v11;
      do
      {
        if (v6 == *result)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(result);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(result);
        }

        result = (v13 - 32);
        v12 += 32;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t std::uninitialized_copy[abi:nn200100]<mlir::detail::ElementsAttrIterator<llvm::APFloat>,llvm::APFloat*>(llvm::APFloatBase *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = *(a1 + 1);
    v16 = v5;
  }

  else
  {
    v16 = 0;
    v5 = *(a1 + 1);
    *(a1 + 1) = 0;
  }

  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a2;
  v9 = *(a2 + 1);
  if (v8 != 1)
  {
    *(a2 + 1) = 0;
  }

  for (i = *(a2 + 2); i != v7; a3 += 32)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    if (v4)
    {
      v13 = v5 + 32 * v12;
      v15 = *(v13 + 8);
      v14 = (v13 + 8);
      if (llvm::APFloatBase::PPCDoubleDouble(a1) == v15)
      {
        a1 = llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v14);
      }

      else
      {
        a1 = llvm::detail::IEEEFloat::IEEEFloat((a3 + 8), v14);
      }
    }

    else
    {
      a1 = (*(*v5 + 24))(v5);
    }

    ++v7;
  }

  if ((v8 & 1) == 0 && v9)
  {
    (*(*v9 + 8))(v9);
  }

  if ((v4 & 1) == 0)
  {
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  return a3;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldGatherOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v98 = a2;
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  v97 = v5;
  if (!v5 || !mlir::TensorType::hasRank(&v97))
  {
    return 0;
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    if (v7)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v95 = v6;
  v96 = v7;
  v8 = *a3;
  if (!v8)
  {
    v93 = 0;
    v94 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v93 = 0;
    v94 = 0;
    return 0;
  }

  v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
  v93 = v8;
  v94 = v9;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v93);
  v109 = v10;
  mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  if (v11 > 1)
  {
    return 0;
  }

  if (!v95)
  {
    return 0;
  }

  v87 = mlir::CallOpInterface::getArgOperands(&v95);
  v88 = v12;
  mlir::CallableOpInterface::getArgAttrsAttr(&v87);
  if (v13 > 1 || mlir::ElementsAttr::getNumElements(v95, v96) > 64)
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v97);
  v16 = v15;
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v93);
  v109 = v17;
  isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
  v19 = mlir::RankedTensorType::get(Value, v16, isSplat, 0);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v98);
  ArgOperands = mlir::CallOpInterface::getArgOperands(&v93);
  v109 = v21;
  if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v93);
    v109 = v22;
    v87 = mlir::ElementsAttr::isSplat(&ArgOperands);
    if (llvm::isa<mlir::FloatType,mlir::Type>(&v87))
    {
      ArgOperands = mlir::CallOpInterface::getArgOperands(&v93);
      v109 = v23;
      mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
      if (v24 <= 1)
      {
        ArgOperands = v110;
        v109 = 0x400000000;
        mlir::ElementsAttr::getValues<llvm::APFloat>(&v93, &v87);
        v102 = v87;
        if (v87 == 1)
        {
          v103 = v88;
        }

        else
        {
          (*(*v88 + 16))(&v103);
        }

        v104 = v89;
        mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v102, &v111);
        llvm::APFloat::APFloat(&__p, v112, 0);
        llvm::APFloat::~APFloat(&v111);
        if ((v102 & 1) == 0)
        {
          v54 = v103;
          v103 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
        mlir::ElementsAttr::getValues<llvm::APInt>(&v95, &v87);
        v82 = v87;
        if (v87 == 1)
        {
          v83 = v88;
        }

        else
        {
          (*(*v88 + 16))(&v83);
        }

        v55 = v89;
        v84 = v89;
        LOWORD(v79) = v90;
        if (v90 == 1)
        {
          v80 = v91;
        }

        else
        {
          (*(*v91 + 16))(&v80);
          v55 = v84;
        }

        v81 = v92;
        if (v55 == v92)
        {
LABEL_137:
          if ((v79 & 1) == 0)
          {
            v56 = v80;
            v80 = 0;
            if (v56)
            {
              (*(*v56 + 8))(v56);
            }
          }

          if ((v82 & 1) == 0)
          {
            v57 = v83;
            v83 = 0;
            if (v57)
            {
              (*(*v57 + 8))(v57);
            }
          }

          mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
          v58 = mlir::createElementsAttr(v19, ArgOperands, v109) & 0xFFFFFFFFFFFFFFFBLL;
          llvm::APFloat::~APFloat(&__p);
          llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ArgOperands);
          return v58;
        }

        while (1)
        {
          if (HIBYTE(v82))
          {
            v59 = 0;
          }

          else
          {
            v59 = v55;
          }

          inited = v83;
          if (v82 == 1)
          {
            v61 = v83 + 16 * v59;
            v62 = *(v61 + 2);
            v86 = v62;
            if (v62 <= 0x40)
            {
              v63 = *v61;
              v85 = *v61;
              goto LABEL_156;
            }

            inited = llvm::APInt::initSlowCase(&v85, v61);
          }

          else
          {
            inited = (*(*v83 + 24))(&v85);
          }

          v62 = v86;
          if (v86 > 0x40)
          {
            v65 = *v85;
            goto LABEL_160;
          }

          v63 = v85;
LABEL_156:
          v64 = (v63 << -v62) >> -v62;
          if (v62)
          {
            v65 = v64;
          }

          else
          {
            v65 = 0;
          }

LABEL_160:
          v66 = *v106;
          v67 = llvm::APFloatBase::PPCDoubleDouble(inited);
          if (v67 == v66)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(&v103, v106);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(&v103, v106);
          }

          if (v65 < 0 && InferredResultTypes)
          {
            v65 += mlir::ElementsAttr::getNumElements(v93, v94);
          }

          if ((v65 & 0x8000000000000000) == 0 && v65 < mlir::ElementsAttr::getNumElements(v93, v94))
          {
            mlir::ElementsAttr::getValues<llvm::APFloat>(&v93, &v111);
            LOWORD(v74) = v111;
            v69 = v111;
            v70 = HIBYTE(v111);
            if (v111 == 1)
            {
              v75 = v112;
            }

            else
            {
              (*(*v112 + 16))(&v75);
              v69 = v74;
              v70 = BYTE1(v74);
            }

            v71 = v113;
            v76 = v113;
            LOBYTE(v77) = v69;
            BYTE1(v77) = v70;
            if (v69)
            {
              v78[0] = v75;
            }

            else
            {
              (*(*v75 + 16))(v78);
              v71 = v76;
            }

            v78[1] = v71 + v65;
            mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v77, &v99);
            llvm::APFloat::Storage::operator=(&v103, &v101);
            llvm::APFloat::~APFloat(&v99);
            if ((v77 & 1) == 0)
            {
              v72 = v78[0];
              v78[0] = 0;
              if (v72)
              {
                (*(*v72 + 8))(v72);
              }
            }

            if ((v74 & 1) == 0)
            {
              v73 = v75;
              v75 = 0;
              if (v73)
              {
                (*(*v73 + 8))(v73);
              }
            }

            mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v111);
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&ArgOperands, &v102);
          if (v67 == v103)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v103);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v103);
          }

          if (v86 >= 0x41 && v85)
          {
            operator delete[](v85);
          }

          v55 = v84 + 1;
          v84 = v55;
          if (v55 == v81)
          {
            goto LABEL_137;
          }
        }
      }
    }

    return 0;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(&v93);
  v109 = v25;
  mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands);
  if (v26 > 1)
  {
    return 0;
  }

  ArgOperands = v110;
  v109 = 0x400000000;
  mlir::ElementsAttr::getValues<llvm::APInt>(&v93, &v87);
  v111 = v87;
  if (v87 == 1)
  {
    v112 = v88;
  }

  else
  {
    (*(*v88 + 16))(&v112);
  }

  v113 = v89;
  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v111, &__p);
  llvm::APInt::APInt(&v79, v106[0], 0, 0, 1);
  if (v106[0] >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if ((v111 & 1) == 0)
  {
    v28 = v112;
    v112 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
  mlir::ElementsAttr::getValues<llvm::APInt>(&v95, &v87);
  LOWORD(__p) = v87;
  if (v87 == 1)
  {
    *v106 = v88;
  }

  else
  {
    (*(*v88 + 16))(v106);
  }

  v29 = v89;
  v107 = v89;
  v102 = v90;
  if (v90 == 1)
  {
    v103 = v91;
  }

  else
  {
    (*(*v91 + 16))(&v103);
    v29 = v107;
  }

  v104 = v92;
  while (v29 != v104)
  {
    if (BYTE1(__p))
    {
      v33 = 0;
    }

    else
    {
      v33 = v29;
    }

    if (__p == 1)
    {
      v34 = *v106 + 16 * v33;
      v35 = *(v34 + 8);
      LODWORD(v78[0]) = v35;
      if (v35 <= 0x40)
      {
        v36 = *v34;
        v77 = *v34;
        goto LABEL_67;
      }

      llvm::APInt::initSlowCase(&v77, v34);
    }

    else
    {
      (*(**v106 + 24))(&v77);
    }

    v35 = v78[0];
    if (LODWORD(v78[0]) <= 0x40)
    {
      v36 = v77;
LABEL_67:
      v37 = (v36 << -v35) >> -v35;
      if (v35)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_71;
    }

    v38 = *v77;
LABEL_71:
    LODWORD(v75) = v80;
    if (v80 > 0x40)
    {
      llvm::APInt::initSlowCase(&v74, &v79);
    }

    else
    {
      v74 = v79;
    }

    if (v38 < 0 && InferredResultTypes)
    {
      v38 += mlir::ElementsAttr::getNumElements(v93, v94);
    }

    if (v38 < 0 || v38 >= mlir::ElementsAttr::getNumElements(v93, v94))
    {
      goto LABEL_111;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(&v93, &v111);
    v82 = v111;
    v40 = v111;
    v41 = HIBYTE(v111);
    if (v111 == 1)
    {
      v83 = v112;
    }

    else
    {
      (*(*v112 + 16))(&v83);
      v40 = v82;
      v41 = HIBYTE(v82);
    }

    v84 = v113;
    v99 = v40;
    v100 = v41;
    if (v40)
    {
      v42 = v83;
      v101.n128_u64[0] = v83;
      v101.n128_u64[1] = v113 + v38;
      if (v41)
      {
        v43 = 0;
      }

      else
      {
        v43 = v113 + v38;
      }

LABEL_92:
      v44 = v42 + 16 * v43;
      v86 = *(v44 + 8);
      if (v86 > 0x40)
      {
        llvm::APInt::initSlowCase(&v85, v44);
      }

      else
      {
        v85 = *v44;
      }

      goto LABEL_96;
    }

    (*(*v83 + 16))(&v101);
    v42 = v101.n128_u64[0];
    v101.n128_u64[1] = v84 + v38;
    if (v100)
    {
      v43 = 0;
    }

    else
    {
      v43 = v84 + v38;
    }

    if (v99)
    {
      goto LABEL_92;
    }

    (*(*v101.n128_u64[0] + 24))(&v85);
LABEL_96:
    if (v75 >= 0x41 && v74)
    {
      operator delete[](v74);
    }

    v74 = v85;
    LODWORD(v75) = v86;
    v86 = 0;
    if ((v99 & 1) == 0)
    {
      v45 = v101.n128_u64[0];
      v101.n128_u64[0] = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }
    }

    if ((v82 & 1) == 0)
    {
      v46 = v83;
      v83 = 0;
      if (v46)
      {
        (*(*v46 + 8))(v46);
      }
    }

    if ((v114 & 1) == 0)
    {
      v47 = v115;
      v115 = 0;
      if (v47)
      {
        (*(*v47 + 8))(v47);
      }
    }

    if ((v111 & 1) == 0)
    {
      v48 = v112;
      v112 = 0;
      if (v48)
      {
        (*(*v48 + 8))(v48);
      }
    }

LABEL_111:
    v49 = ArgOperands;
    if (v109 >= HIDWORD(v109))
    {
      if (ArgOperands <= &v74 && &ArgOperands[16 * v109] > &v74)
      {
        v53 = &v74 - ArgOperands;
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ArgOperands, v109 + 1);
        v49 = ArgOperands;
        v50 = &ArgOperands[v53];
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&ArgOperands, v109 + 1);
        v50 = &v74;
        v49 = ArgOperands;
      }
    }

    else
    {
      v50 = &v74;
    }

    v51 = &v49[16 * v109];
    v52 = *(v50 + 2);
    *(v51 + 8) = v52;
    if (v52 > 0x40)
    {
      llvm::APInt::initSlowCase(v51, v50);
    }

    else
    {
      *v51 = *v50;
    }

    LODWORD(v109) = v109 + 1;
    if (v75 >= 0x41 && v74)
    {
      operator delete[](v74);
    }

    if (LODWORD(v78[0]) >= 0x41 && v77)
    {
      operator delete[](v77);
    }

    v29 = v107 + 1;
    v107 = v29;
  }

  if ((v102 & 1) == 0)
  {
    v30 = v103;
    v103 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  if ((__p & 1) == 0)
  {
    v31 = *v106;
    *v106 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v87);
  v32 = mlir::createElementsAttr(v19, ArgOperands, v109) & 0xFFFFFFFFFFFFFFFBLL;
  if (v80 >= 0x41 && v79)
  {
    operator delete[](v79);
  }

  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&ArgOperands);
  return v32;
}

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2, llvm::APInt *a3)
{
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, a2, a3);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, a2, a3);
  }

  return a1;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldSliceOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  if (!*a3)
  {
    v26 = 0;
    v27 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8))
  {
    v26 = 0;
    v27 = 0;
    return 0;
  }

  v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
  v26 = v4;
  v27 = v5;
  if (!v4)
  {
    return 0;
  }

  Type = mlir::ElementsAttr::getType(&v26);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v25[0] = v7;
  v25[1] = Type;
  v8 = *(a2 + 36) ? a2 - 16 : 0;
  v9 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8) : 0;
  v23 = v9;
  v24 = v10;
  if (!mlir::CallOpInterface::getArgOperands(&v23))
  {
    return 0;
  }

  if (!mlir::CallOpInterface::getArgOperands(v25))
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v23);
  if (v11 != 1)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v25);
  if (v12 != 1)
  {
    return 0;
  }

  v13 = *mlir::CallableOpInterface::getArgAttrsAttr(v25);
  v14 = *(*(a2 + 72) + 88);
  isSplat = 0;
  v31 = 0;
  v28 = &isSplat;
  v29 = v14;
  DefiningOp = mlir::Value::getDefiningOp(&v29);
  if (!DefiningOp)
  {
    return 0;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v28, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  SingleInt = mlir::getSingleIntValue<int>(isSplat, v31);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 0;
  }

  PositiveAxis = mlir::getPositiveAxis(SingleInt, v13);
  if (mlir::ShapedType::hasStaticShape(&v23))
  {
    v19 = *mlir::CallableOpInterface::getArgAttrsAttr(&v23);
  }

  else
  {
    matched = mlir::matchConstantWithIntValue<int>(*(*(a2 + 72) + 120));
    if ((matched & 0x180000000) != 0x100000000)
    {
      return 0;
    }

    v19 = matched & 0x7FFFFFFF;
    if ((v19 + PositiveAxis) > v13)
    {
      return 0;
    }

    isSplat = matched & 0x7FFFFFFF;
    v23 = mlir::ShapedType::clone(&v23, &isSplat, 1);
    v24 = v22;
  }

  if (*(*mlir::ElementsAttr::isSplat(v25) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v20 & 0xFFFFFFFFFFFFFFFBLL;
  }

  isSplat = mlir::ElementsAttr::isSplat(v25);
  if (!llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
  {
    return 0;
  }

  return v20 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::matchConstantWithIntValue<int>(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v8, v9);
    v3 = SingleInt & 0xFF00000000;
    v4 = SingleInt & 0xFFFFFF00;
    v5 = SingleInt;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v4 = 0;
  }

  return v5 | v3 | v4;
}

__n128 *mlir::mps::anonymous namespace::getFoldedSliceResult<llvm::APInt>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  v53[8] = *MEMORY[0x1E69E9840];
  v50[0] = a1;
  v50[1] = a2;
  v49[0] = a3;
  v49[1] = a4;
  v51 = v53;
  v52 = 0x400000000;
  if (a6 >= 5)
  {
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v51, a6);
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(v50, &ArgOperands);
  v8 = ArgOperands;
  LOWORD(__p) = ArgOperands;
  v9 = BYTE1(ArgOperands);
  if (ArgOperands == 1)
  {
    v44 = v39;
  }

  else
  {
    (*(*v39 + 16))(&v44);
    v8 = __p;
    v9 = BYTE1(__p);
  }

  v45 = v40;
  LOBYTE(v46) = v8;
  HIBYTE(v46) = v9;
  if (v8)
  {
    v47 = v44;
    v48 = v40 + a5;
  }

  else
  {
    (*(*v44 + 16))(&v47);
    v48 = v45 + a5;
    if ((__p & 1) == 0)
    {
      v10 = v44;
      v44 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }
  }

  if ((v41 & 1) == 0)
  {
    v11 = v42;
    v42 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  if ((ArgOperands & 1) == 0)
  {
    v12 = v39;
    v39 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  if (v6 >= 1)
  {
    while (1)
    {
      LOWORD(ArgOperands) = v46;
      if (v46 == 1)
      {
        break;
      }

      (*(*v47 + 16))(&v39);
      v13 = v39;
      v16 = v48;
      v40 = v48++;
      if ((ArgOperands & 0x100) != 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = v16;
      }

      if (ArgOperands)
      {
        goto LABEL_28;
      }

      (*(*v39 + 24))(&__p);
LABEL_32:
      v18 = v51;
      if (v52 >= HIDWORD(v52))
      {
        if (v51 <= &__p && &v51[16 * v52] > &__p)
        {
          v22 = &__p - v51;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v51, v52 + 1);
          v18 = v51;
          p_p = &v51[v22];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v51, v52 + 1);
          p_p = &__p;
          v18 = v51;
        }
      }

      else
      {
        p_p = &__p;
      }

      v20 = &v18[16 * v52];
      *(v20 + 2) = *(p_p + 2);
      *v20 = *p_p;
      *(p_p + 2) = 0;
      LODWORD(v52) = v52 + 1;
      if (v44 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if ((ArgOperands & 1) == 0)
      {
        v21 = v39;
        v39 = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }

      if (!--v6)
      {
        goto LABEL_44;
      }
    }

    v13 = v47;
    v14 = v48;
    v39 = v47;
    v40 = v48++;
    if (HIBYTE(v46))
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

LABEL_28:
    v17 = v13 + 16 * v15;
    LODWORD(v44) = *(v17 + 8);
    if (v44 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v17);
    }

    else
    {
      __p = *v17;
    }

    goto LABEL_32;
  }

LABEL_44:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v49);
  v25 = v24;
  ArgOperands = mlir::CallOpInterface::getArgOperands(v50);
  v39 = v26;
  isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
  v28 = mlir::RankedTensorType::get(ArgAttrsAttr, v25, isSplat, 0);
  ElementsAttr = mlir::createElementsAttr(v28, v51, v52);
  if ((v46 & 1) == 0)
  {
    v30 = v47;
    v47 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  v31 = v51;
  if (v52)
  {
    v32 = &v51[16 * v52 - 8];
    v33 = -16 * v52;
    v34 = v32;
    do
    {
      v35 = *v34;
      v34 -= 4;
      if (v35 >= 0x41)
      {
        v36 = *(v32 - 1);
        if (v36)
        {
          operator delete[](v36);
        }
      }

      v32 = v34;
      v33 += 16;
    }

    while (v33);
    v31 = v51;
  }

  if (v31 != v53)
  {
    free(v31);
  }

  return ElementsAttr;
}

llvm::APFloatBase *mlir::mps::anonymous namespace::getFoldedSliceResult<llvm::APFloat>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a6;
  v57[16] = *MEMORY[0x1E69E9840];
  v49[0] = a1;
  v49[1] = a2;
  v48[0] = a3;
  v48[1] = a4;
  v55 = v57;
  v56 = 0x400000000;
  if (a6 >= 5)
  {
    ArgOperands = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v55, v57, a6, 32, &ArgOperands);
    v9 = v8;
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(&v55, v8);
    v10 = ArgOperands;
    if (v55 != v57)
    {
      free(v55);
    }

    v55 = v9;
    HIDWORD(v56) = v10;
  }

  mlir::ElementsAttr::getValues<llvm::APFloat>(v49, &ArgOperands);
  v11 = ArgOperands;
  v41 = ArgOperands;
  v12 = BYTE1(ArgOperands);
  if (ArgOperands == 1)
  {
    v43 = v51;
  }

  else
  {
    (*(*v51 + 16))(&v43);
    v11 = v41;
    v12 = HIBYTE(v41);
  }

  v44 = v52;
  LOBYTE(v45) = v11;
  HIBYTE(v45) = v12;
  if (v11)
  {
    v46 = v43;
    v47 = v52 + a5;
  }

  else
  {
    (*(*v43 + 16))(&v46);
    v47 = v44 + a5;
    if ((v41 & 1) == 0)
    {
      v13 = v43;
      v43 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }
  }

  if ((v53 & 1) == 0)
  {
    v14 = v54;
    v54 = 0;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  if ((ArgOperands & 1) == 0)
  {
    v15 = v51;
    v51 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (v6 >= 1)
  {
    do
    {
      v42 = v45;
      if (v45 == 1)
      {
        v16 = v46;
        v17 = v47;
        v43 = v46;
        v44 = v47++;
        if (HIBYTE(v45))
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }
      }

      else
      {
        (*(*v46 + 16))(&v43);
        v16 = v43;
        v19 = v47;
        v44 = v47++;
        if ((v42 & 0x100) != 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v19;
        }

        if ((v42 & 1) == 0)
        {
          (*(*v43 + 24))(&ArgOperands);
          goto LABEL_34;
        }
      }

      v20 = v16 + 32 * v18;
      v22 = *(v20 + 1);
      v21 = (v20 + 8);
      if (llvm::APFloatBase::PPCDoubleDouble(v16) == v22)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(&v51, v21);
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(&v51, v21);
      }

LABEL_34:
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v55, &ArgOperands);
      v23 = v51;
      if (llvm::APFloatBase::PPCDoubleDouble(v24) == v23)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v51);
        if ((v42 & 1) == 0)
        {
LABEL_38:
          v25 = v43;
          v43 = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v51);
        if ((v42 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      --v6;
    }

    while (v6);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v48);
  v28 = v27;
  ArgOperands = mlir::CallOpInterface::getArgOperands(v49);
  v51 = v29;
  isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
  v31 = mlir::RankedTensorType::get(ArgAttrsAttr, v28, isSplat, 0);
  ElementsAttr = mlir::createElementsAttr(v31, v55, v56);
  v33 = ElementsAttr;
  if ((v45 & 1) == 0)
  {
    ElementsAttr = v46;
    v46 = 0;
    if (ElementsAttr)
    {
      ElementsAttr = (*(*ElementsAttr + 8))(ElementsAttr);
    }
  }

  v34 = v55;
  v35 = v56;
  if (v56)
  {
    v36 = llvm::APFloatBase::PPCDoubleDouble(ElementsAttr);
    v37 = &v34[32 * v35 - 24];
    v38 = -32 * v35;
    do
    {
      if (v36 == *v37)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v37);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v37);
      }

      v37 = (v39 - 32);
      v38 += 32;
    }

    while (v38);
    v34 = v55;
  }

  if (v34 != v57)
  {
    free(v34);
  }

  return v33;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldStridedSliceOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v79 = a2;
  v4 = *a3;
  if (*a3)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
    if (v5)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v4 + 8);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v78[0] = v4;
  v78[1] = v5;
  v6 = *(a3 + 8);
  if (v6)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    if (v7)
    {
      v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v77[0] = v6;
  v77[1] = v7;
  v8 = *(a3 + 24);
  if (!v8)
  {
    goto LABEL_15;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v8 = 0;
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
LABEL_16:
  result = 0;
  v76[0] = v8;
  v76[1] = v9;
  if (!v4 || !v6 || !v8)
  {
    return result;
  }

  v11 = *a3;
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::TypedAttr>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  isSplat = v11;
  v81 = v12;
  CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&isSplat);
  v14 = CallableForCallee;
  if (CallableForCallee)
  {
    CallableForCallee = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*CallableForCallee + 8);
  }

  v75[0] = v14;
  v75[1] = CallableForCallee;
  if (*(v79 + 36))
  {
    v15 = v79 - 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v74[0] = v16;
  v74[1] = v17;
  if (!mlir::CallOpInterface::getArgOperands(v75))
  {
    return 0;
  }

  if (!mlir::CallOpInterface::getArgOperands(v74))
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v74);
  if (v18 > 1)
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v75);
  if (v19 > 1)
  {
    return 0;
  }

  Index = mlir::pdl::ResultOp::getIndex(&v79);
  mlir::CallableOpInterface::getArgAttrsAttr(v74);
  if (v21 == 1)
  {
    v22 = *mlir::CallableOpInterface::getArgAttrsAttr(v74);
  }

  else
  {
    v22 = 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v75);
  if (v23 == 1)
  {
    v24 = *mlir::CallableOpInterface::getArgAttrsAttr(v75);
  }

  else
  {
    v24 = 1;
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(v77, &isSplat);
  LOWORD(ArgOperands) = isSplat;
  if (isSplat)
  {
    v25 = v81;
    v86 = v81;
    v87 = v82;
    if (BYTE1(isSplat))
    {
      v26 = 0;
    }

    else
    {
      v26 = v82;
    }

LABEL_48:
    v27 = v25 + 16 * v26;
    LODWORD(v72) = *(v27 + 8);
    if (v72 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v27);
    }

    else
    {
      __p = *v27;
    }

    goto LABEL_52;
  }

  (*(*v81 + 16))(&v86);
  v25 = v86;
  v87 = v82;
  if (BYTE1(ArgOperands))
  {
    v26 = 0;
  }

  else
  {
    v26 = v82;
  }

  if (ArgOperands)
  {
    goto LABEL_48;
  }

  (*(*v86 + 24))(&__p);
LABEL_52:
  if (v72 > 0x40)
  {
    v28 = *__p;
    operator delete[](__p);
  }

  else if (v72)
  {
    v28 = (__p << -v72) >> -v72;
  }

  else
  {
    v28 = 0;
  }

  if ((ArgOperands & 1) == 0)
  {
    v29 = v86;
    v86 = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  if ((v83 & 1) == 0)
  {
    v30 = v84;
    v84 = 0;
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }
  }

  if ((isSplat & 1) == 0)
  {
    v31 = v81;
    v81 = 0;
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }
  }

  mlir::ElementsAttr::getValues<llvm::APInt>(v76, &isSplat);
  LOWORD(ArgOperands) = isSplat;
  if (isSplat)
  {
    v32 = v81;
    v86 = v81;
    v87 = v82;
    if (BYTE1(isSplat))
    {
      v33 = 0;
    }

    else
    {
      v33 = v82;
    }

LABEL_74:
    v34 = v32 + 16 * v33;
    LODWORD(v72) = *(v34 + 8);
    if (v72 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v34);
    }

    else
    {
      __p = *v34;
    }

    goto LABEL_78;
  }

  (*(*v81 + 16))(&v86);
  v32 = v86;
  v87 = v82;
  if (BYTE1(ArgOperands))
  {
    v33 = 0;
  }

  else
  {
    v33 = v82;
  }

  if (ArgOperands)
  {
    goto LABEL_74;
  }

  (*(*v86 + 24))(&__p);
LABEL_78:
  if (v72 > 0x40)
  {
    v35 = *__p;
    operator delete[](__p);
  }

  else if (v72)
  {
    v35 = (__p << -v72) >> -v72;
  }

  else
  {
    v35 = 0;
  }

  if ((ArgOperands & 1) == 0)
  {
    v36 = v86;
    v86 = 0;
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }
  }

  if ((v83 & 1) == 0)
  {
    v37 = v84;
    v84 = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }
  }

  if ((isSplat & 1) == 0)
  {
    v38 = v81;
    v81 = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }
  }

  PositiveAxis = mlir::getPositiveAxis(v28, v24);
  if (PositiveAxis >= v24 - 1)
  {
    v40 = v24 - 1;
  }

  else
  {
    v40 = PositiveAxis;
  }

  if (PositiveAxis < 0)
  {
    v40 = 0;
  }

  if (Index)
  {
    v41 = (v24 - 1) & (v35 >> 63);
  }

  else
  {
    v41 = v40;
  }

  if (*(*mlir::ElementsAttr::isSplat(v75) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    isSplat = mlir::ElementsAttr::isSplat(v75);
    if (llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
    {
      isSplat = &v82;
      v81 = 0x400000000;
      mlir::ElementsAttr::getValues<llvm::APFloat>(v78, &ArgOperands);
      LOWORD(__p) = ArgOperands;
      if (ArgOperands == 1)
      {
        v72 = v86;
      }

      else
      {
        (*(*v86 + 16))(&v72);
      }

      v73 = v87;
      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ArgOperands);
      v56 = v73 + v41;
      v73 += v41;
      if (v22 >= 1)
      {
        do
        {
          if (BYTE1(__p))
          {
            v65 = 0;
          }

          else
          {
            v65 = v56;
          }

          if (__p == 1)
          {
            v66 = v72 + 32 * v65;
            v68 = *(v66 + 1);
            v67 = (v66 + 8);
            if (llvm::APFloatBase::PPCDoubleDouble(v72) == v68)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(&v86, v67);
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(&v86, v67);
            }
          }

          else
          {
            (*(*v72 + 24))(&ArgOperands);
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&isSplat, &ArgOperands);
          v69 = v86;
          if (llvm::APFloatBase::PPCDoubleDouble(v70) == v69)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v86);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v86);
          }

          v56 = v73 + v35;
          v73 += v35;
          --v22;
        }

        while (v22);
      }

      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v74);
      v59 = v58;
      ArgOperands = mlir::CallOpInterface::getArgOperands(v78);
      v86 = v60;
      v61 = mlir::ElementsAttr::isSplat(&ArgOperands);
      v62 = mlir::RankedTensorType::get(ArgAttrsAttr, v59, v61, 0);
      v63 = mlir::createElementsAttr(v62, isSplat, v81) & 0xFFFFFFFFFFFFFFFBLL;
      if ((__p & 1) == 0)
      {
        v64 = v72;
        v72 = 0;
        if (v64)
        {
          (*(*v64 + 8))(v64);
        }
      }

      llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&isSplat);
      return v63;
    }

    return 0;
  }

  isSplat = &v82;
  v81 = 0x400000000;
  mlir::ElementsAttr::getValues<llvm::APInt>(v78, &ArgOperands);
  LOWORD(__p) = ArgOperands;
  if (ArgOperands == 1)
  {
    v72 = v86;
  }

  else
  {
    (*(*v86 + 16))(&v72);
  }

  v73 = v87;
  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ArgOperands);
  v42 = v73 + v41;
  v73 += v41;
  if (v22 >= 1)
  {
    do
    {
      if (BYTE1(__p))
      {
        v50 = 0;
      }

      else
      {
        v50 = v42;
      }

      if (__p == 1)
      {
        v51 = v72 + 16 * v50;
        LODWORD(v86) = *(v51 + 2);
        if (v86 > 0x40)
        {
          llvm::APInt::initSlowCase(&ArgOperands, v51);
        }

        else
        {
          ArgOperands = *v51;
        }
      }

      else
      {
        (*(*v72 + 24))(&ArgOperands);
      }

      v52 = isSplat;
      if (v81 >= HIDWORD(v81))
      {
        if (isSplat <= &ArgOperands && &isSplat[16 * v81] > &ArgOperands)
        {
          v55 = &ArgOperands - isSplat;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&isSplat, v81 + 1);
          v52 = isSplat;
          p_ArgOperands = &isSplat[v55];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&isSplat, v81 + 1);
          p_ArgOperands = &ArgOperands;
          v52 = isSplat;
        }
      }

      else
      {
        p_ArgOperands = &ArgOperands;
      }

      v54 = &v52[16 * v81];
      *(v54 + 2) = *(p_ArgOperands + 2);
      *v54 = *p_ArgOperands;
      *(p_ArgOperands + 2) = 0;
      LODWORD(v81) = v81 + 1;
      if (v86 >= 0x41 && ArgOperands)
      {
        operator delete[](ArgOperands);
      }

      v42 = v73 + v35;
      v73 += v35;
      --v22;
    }

    while (v22);
  }

  v43 = mlir::CallableOpInterface::getArgAttrsAttr(v74);
  v45 = v44;
  v46 = mlir::ElementsAttr::isSplat(v74);
  v47 = mlir::RankedTensorType::get(v43, v45, v46, 0);
  v48 = mlir::createElementsAttr(v47, isSplat, v81) & 0xFFFFFFFFFFFFFFFBLL;
  if ((__p & 1) == 0)
  {
    v49 = v72;
    v72 = 0;
    if (v49)
    {
      (*(*v49 + 8))(v49);
    }
  }

  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&isSplat);
  return v48;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldCropOp>::externalFold(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  {
    return 0;
  }

  v6 = *a3;
  if (!v6)
  {
    v24 = 0;
    v25 = 0;
    return 0;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8))
  {
    v24 = 0;
    v25 = 0;
    return 0;
  }

  v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
  v24 = v6;
  v25 = v7;
  Type = mlir::ElementsAttr::getType(&v24);
  v9 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v23[0] = v9;
  v23[1] = Type;
  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v21 = v11;
  v22 = v12;
  if (!mlir::CallOpInterface::getArgOperands(&v21))
  {
    return 0;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(&v21);
  if (v13 != 1)
  {
    return 0;
  }

  v14 = *mlir::CallableOpInterface::getArgAttrsAttr(&v21);
  if (v14 == 0x8000000000000000)
  {
    return 0;
  }

  v15 = *(*(a2 + 72) + 88);
  isSplat = 0;
  v28 = 0;
  v26 = &isSplat;
  v29 = v15;
  DefiningOp = mlir::Value::getDefiningOp(&v29);
  if (!DefiningOp)
  {
    return 0;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v26, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  SingleInt = mlir::getSingleIntValue<int>(isSplat, v28);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 0;
  }

  v18 = SingleInt;
  if (*(*mlir::ElementsAttr::isSplat(v23) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return v19 & 0xFFFFFFFFFFFFFFFBLL;
  }

  isSplat = mlir::ElementsAttr::isSplat(v23);
  if (!llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
  {
    return 0;
  }

  return v19 & 0xFFFFFFFFFFFFFFFBLL;
}

void *mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldConcatOp>::externalFold(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  v110[4] = *MEMORY[0x1E69E9840];
  v100 = a2;
  v5 = a4 - 1;
  if (a4 == 2)
  {
    v6 = *(*(a2 + 72) + 24);
    v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    }

    else
    {
      v8 = 0;
    }

    v105 = v7;
    v106 = v8;
    if (mlir::CallOpInterface::getArgOperands(&v105))
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v105);
      if (v9 >= 1)
      {
        return (v6 | 4);
      }
    }

    a2 = v100;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    if (v13)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v99[0] = v12;
  v99[1] = v13;
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v100);
  result = 0;
  if (!InferredResultTypes && v99[0])
  {
    if (!mlir::CallOpInterface::getArgOperands(v99))
    {
      return 0;
    }

    v108 = v110;
    v109 = 0x400000000;
    v15 = &a3[v5];
    if (v5)
    {
      v16 = a3;
      do
      {
        v17 = *v16;
        if (!*v16)
        {
          v105 = 0;
          v106 = 0;
          goto LABEL_134;
        }

        if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8))
        {
          v105 = 0;
          v106 = 0;
          goto LABEL_134;
        }

        v18 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v17 + 8);
        v105 = v17;
        v106 = v18;
        if (!v17)
        {
          goto LABEL_134;
        }

        Type = mlir::ElementsAttr::getType(&v105);
        if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8))
        {
          v93 = 0;
          v94 = 0;
          goto LABEL_134;
        }

        v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        v93 = Type;
        v94 = v20;
        if (!Type)
        {
          goto LABEL_134;
        }

        if (!mlir::CallOpInterface::getArgOperands(&v93))
        {
          goto LABEL_134;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v93);
        if (v21 > 1 || !mlir::CallOpInterface::getArgOperands(&v93))
        {
          goto LABEL_134;
        }

        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v93);
        if (v23)
        {
          v24 = 8 * v23;
          while (*ArgAttrsAttr != 0x8000000000000000)
          {
            ++ArgAttrsAttr;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_134;
        }

LABEL_39:
        v25 = v93;
        v26 = v109;
        if (v109 >= HIDWORD(v109))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v108, v110, v109 + 1, 8);
          v26 = v109;
        }

        v108[v26] = v25;
        v27 = (v109 + 1);
        LODWORD(v109) = v109 + 1;
        ++v16;
      }

      while (v16 != v15);
      if (result)
      {
        goto LABEL_45;
      }

      goto LABEL_185;
    }

    if (result)
    {
LABEL_45:
      v28 = result;
      v29 = *(*mlir::ElementsAttr::isSplat(v99) + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        v105 = v107;
        v106 = 0x400000000;
        if (v5)
        {
          do
          {
            v66 = *a3;
            if (*a3)
            {
              v67 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v66 + 8);
            }

            else
            {
              v67 = 0;
            }

            v85 = v66;
            v86 = v67;
            mlir::ElementsAttr::getValues<llvm::APInt>(&v85, &v93);
            LOWORD(v102) = v93;
            if (v93 == 1)
            {
              v103 = v94;
            }

            else
            {
              (*(*v94 + 16))(&v103);
            }

            v68 = v95;
            v104 = v95;
            v90 = v96;
            if (v96 == 1)
            {
              v91 = v97;
            }

            else
            {
              (*(*v97 + 16))(&v91);
              v68 = v104;
            }

            v69 = v98;
            v92 = v98;
            while (v68 != v69)
            {
              if (BYTE1(v102))
              {
                v70 = 0;
              }

              else
              {
                v70 = v68;
              }

              if (v102 == 1)
              {
                v71 = v103 + 16 * v70;
                LODWORD(v89) = *(v71 + 2);
                if (v89 > 0x40)
                {
                  llvm::APInt::initSlowCase(&__p, v71);
                }

                else
                {
                  __p = *v71;
                }
              }

              else
              {
                (*(*v103 + 24))(&__p);
              }

              v72 = v105;
              if (v106 >= HIDWORD(v106))
              {
                if (v105 <= &__p && &v105[16 * v106] > &__p)
                {
                  v76 = &__p - v105;
                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v105, v106 + 1);
                  v72 = v105;
                  p_p = &v105[v76];
                }

                else
                {
                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v105, v106 + 1);
                  p_p = &__p;
                  v72 = v105;
                }
              }

              else
              {
                p_p = &__p;
              }

              v74 = &v72[16 * v106];
              v75 = *(p_p + 2);
              *(v74 + 8) = v75;
              if (v75 > 0x40)
              {
                llvm::APInt::initSlowCase(v74, p_p);
              }

              else
              {
                *v74 = *p_p;
              }

              LODWORD(v106) = v106 + 1;
              if (v89 >= 0x41 && __p)
              {
                operator delete[](__p);
              }

              v68 = ++v104;
              v69 = v92;
            }

            if ((v90 & 1) == 0)
            {
              v77 = v91;
              v91 = 0;
              if (v77)
              {
                (*(*v77 + 8))(v77);
              }
            }

            if ((v102 & 1) == 0)
            {
              v78 = v103;
              v103 = 0;
              if (v78)
              {
                (*(*v78 + 8))(v78);
              }
            }

            if ((v96 & 1) == 0)
            {
              v79 = v97;
              v97 = 0;
              if (v79)
              {
                (*(*v79 + 8))(v79);
              }
            }

            if ((v93 & 1) == 0)
            {
              v80 = v94;
              v94 = 0;
              if (v80)
              {
                (*(*v80 + 8))(v80);
              }
            }

            ++a3;
          }

          while (a3 != v15);
        }

        v81 = mlir::CallableOpInterface::getArgAttrsAttr(v99);
        v83 = mlir::RankedTensorType::get(v81, v82, v28, 0);
        v65 = mlir::createElementsAttr(v83, v105, v106) & 0xFFFFFFFFFFFFFFFBLL;
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v105);
      }

      else
      {
        if (v29 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v29 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
LABEL_134:
          result = 0;
          goto LABEL_185;
        }

        v105 = v107;
        v106 = 0x400000000;
        v93 = v28;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v93);
        if (v5)
        {
          v47 = FloatSemantics;
          do
          {
            v48 = *a3;
            if (*a3)
            {
              v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v48 + 8);
            }

            else
            {
              v49 = 0;
            }

            __p = v48;
            v89 = v49;
            mlir::ElementsAttr::getValues<llvm::APFloat>(&__p, &v93);
            v90 = v93;
            if (v93 == 1)
            {
              v91 = v94;
            }

            else
            {
              (*(*v94 + 16))(&v91);
            }

            v50 = v95;
            v92 = v95;
            LOWORD(v85) = v96;
            if (v96 == 1)
            {
              v86 = v97;
            }

            else
            {
              (*(*v97 + 16))(&v86);
              v50 = v92;
            }

            v51 = v98;
            v87 = v98;
            while (v50 != v51)
            {
              if (HIBYTE(v90))
              {
                v52 = 0;
              }

              else
              {
                v52 = v50;
              }

              if (v90 == 1)
              {
                v53 = v91 + 32 * v52;
                v55 = *(v53 + 1);
                v54 = (v53 + 8);
                if (llvm::APFloatBase::PPCDoubleDouble(v91) == v55)
                {
                  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v103, v54);
                }

                else
                {
                  llvm::detail::IEEEFloat::IEEEFloat(&v103, v54);
                }
              }

              else
              {
                (*(*v91 + 24))(&v102);
              }

              v101 = 0;
              llvm::APFloat::convert(&v102, v47, 1, &v101);
              v56 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v105, &v102);
              v57 = v103;
              if (llvm::APFloatBase::PPCDoubleDouble(v56) == v57)
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v103);
              }

              else
              {
                llvm::detail::IEEEFloat::~IEEEFloat(&v103);
              }

              v50 = ++v92;
              v51 = v87;
            }

            if ((v85 & 1) == 0)
            {
              v58 = v86;
              v86 = 0;
              if (v58)
              {
                (*(*v58 + 8))(v58);
              }
            }

            if ((v90 & 1) == 0)
            {
              v59 = v91;
              v91 = 0;
              if (v59)
              {
                (*(*v59 + 8))(v59);
              }
            }

            if ((v96 & 1) == 0)
            {
              v60 = v97;
              v97 = 0;
              if (v60)
              {
                (*(*v60 + 8))(v60);
              }
            }

            if ((v93 & 1) == 0)
            {
              v61 = v94;
              v94 = 0;
              if (v61)
              {
                (*(*v61 + 8))(v61);
              }
            }

            ++a3;
          }

          while (a3 != v15);
        }

        v62 = mlir::CallableOpInterface::getArgAttrsAttr(v99);
        v64 = mlir::RankedTensorType::get(v62, v63, v28, 0);
        v65 = mlir::createElementsAttr(v64, v105, v106) & 0xFFFFFFFFFFFFFFFBLL;
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v105);
      }

      result = v65;
    }

LABEL_185:
    if (v108 != v110)
    {
      v84 = result;
      free(v108);
      return v84;
    }
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldReshapeOp>::externalFold(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  v41[0] = v5;
  v41[1] = v6;
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v40[0] = v8;
  v40[1] = v9;
  v10 = *a3;
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v10 + 8))
  {
    v10 = 0;
LABEL_14:
    v38 = v10;
    v39 = 0;
    goto LABEL_21;
  }

  v11 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v10 + 8);
  v38 = v10;
  v39 = v11;
  if (mlir::CallOpInterface::getArgOperands(v40))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v40);
    if (!v13)
    {
LABEL_20:
      Type = mlir::ElementsAttr::getType(&v38);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(Type);
      LOBYTE(v42) = 0;
      v43 = 0;
      v17 = mlir::ShapedType::cloneWith(v40, &v42, ElementTypeOrSelf);
      return mlir::reshapeElementsAttr(v10, v11, v17, v18) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v14 = 8 * v13;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  if (!mlir::CallOpInterface::getArgOperands(v41))
  {
    return 0;
  }

  if (!mlir::CallOpInterface::getArgOperands(v40))
  {
    return 0;
  }

  v20 = mlir::CallableOpInterface::getArgAttrsAttr(v41);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v40);
  if (v22 != v24 || memcmp(v20, v23, 8 * v22))
  {
    return 0;
  }

  v25 = mlir::CallableOpInterface::getArgAttrsAttr(v40);
  if (v26)
  {
    v27 = (v26 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v27 >= 3)
    {
      v30 = v27 + 1;
      v31 = (v27 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v29 = (v25 + 8 * v31);
      v32 = (v25 + 16);
      v33 = 0uLL;
      v34 = vnegq_f64(0);
      v35 = v31;
      v36 = 0uLL;
      do
      {
        v33 = vsubq_s64(v33, vceqq_s64(v32[-1], v34));
        v36 = vsubq_s64(v36, vceqq_s64(*v32, v34));
        v32 += 2;
        v35 -= 4;
      }

      while (v35);
      v28 = vaddvq_s64(vaddq_s64(v36, v33));
      if (v30 == v31)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v28 = 0;
      v29 = v25;
    }

    do
    {
      v37 = *v29++;
      if (v37 == 0x8000000000000000)
      {
        ++v28;
      }
    }

    while (v29 != (v25 + 8 * v26));
LABEL_35:
    if (v28 > 1)
    {
      return 0;
    }
  }

  return *(*(a2 + 72) + 24) | 4;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldGetCoordOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  {
    return 0;
  }

  v6 = *a3;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(**a3 + 8))
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v32[0] = v6;
  v32[1] = v7;
  v8 = *(a3 + 8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8))
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  result = 0;
  v31[0] = v8;
  v31[1] = v9;
  if (v6 && v8)
  {
    if (mlir::ElementsAttr::getNumElements(v6, v7) != 1 || mlir::ElementsAttr::getNumElements(v8, v9) != 1)
    {
      return 0;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v31, &v34);
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v34, 0, &__p);
    if (v30 > 0x40)
    {
      v11 = *__p;
      operator delete[](__p);
    }

    else if (v30)
    {
      v11 = (__p << -v30) >> -v30;
    }

    else
    {
      v11 = 0;
    }

    if ((v37 & 1) == 0)
    {
      v12 = v38;
      v38 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    if ((v34 & 1) == 0)
    {
      v13 = v35;
      v35 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    if (v11)
    {
      return 0;
    }

    mlir::ElementsAttr::getValues<llvm::APInt>(v32, &v34);
    mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&v34, 0, &__p);
    if (v30 > 0x40)
    {
      v14 = *__p;
      operator delete[](__p);
    }

    else if (v30)
    {
      v14 = (__p << -v30) >> -v30;
    }

    else
    {
      v14 = 0;
    }

    if ((v37 & 1) == 0)
    {
      v15 = v38;
      v38 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    if ((v34 & 1) == 0)
    {
      v16 = v35;
      v35 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    __p = mlir::getElementTypeOrSelf(v32[0]);
    if (mlir::Type::getIntOrFloatBitWidth(&__p) == 32)
    {
      v34 = &v36;
      v35 = 0xC00000000;
      if (v14 < 1)
      {
        v17 = 0;
      }

      else
      {
        LODWORD(v17) = 0;
        for (i = 0; i != v14; ++i)
        {
          if (v17 >= HIDWORD(v35))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, &v36, v17 + 1, 4);
            LODWORD(v17) = v35;
          }

          *(v34 + v17) = i;
          v17 = (v35 + 1);
          LODWORD(v35) = v35 + 1;
        }
      }

      v33 = v17;
      Context = mlir::Attribute::getContext((a2 + 24));
      v22 = mlir::IntegerType::get(Context, 32, 1u);
      v23 = mlir::RankedTensorType::get(&v33, 1, v22, 0);
      v24 = v34;
      v25 = 4 * v35;
    }

    else
    {
      v34 = &v36;
      v35 = 0x600000000;
      if (v14 < 1)
      {
        v19 = 0;
      }

      else
      {
        LODWORD(v19) = 0;
        for (j = 0; j != v14; ++j)
        {
          if (v19 >= HIDWORD(v35))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, &v36, v19 + 1, 8);
            LODWORD(v19) = v35;
          }

          *(v34 + v19) = j;
          v19 = (v35 + 1);
          LODWORD(v35) = v35 + 1;
        }
      }

      v33 = v19;
      v26 = mlir::Attribute::getContext((a2 + 24));
      v27 = mlir::IntegerType::get(v26, 64, 1u);
      v23 = mlir::RankedTensorType::get(&v33, 1, v27, 0);
      v24 = v34;
      v25 = 8 * v35;
    }

    RawElementsAttr = mlir::createRawElementsAttr(v23, v24, v25);
    if (v34 != &v36)
    {
      free(v34);
    }

    return RawElementsAttr & 0xFFFFFFFFFFFFFFFBLL;
  }

  return result;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldInitRandomPhiloxStateOp>::externalFold(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
LABEL_5:
    v8 = *a3;
    if (*a3)
    {
      v9 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v10 = a3[1];
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = 0;
      v10 = a3[1];
      if (v10)
      {
LABEL_7:
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v10 + 8);
        v12 = a3[2];
        if (v12)
        {
LABEL_8:
          v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
LABEL_13:
          v35[0] = v36;
          v35[1] = 0x100000000;
          v33[0] = &v34;
          v33[1] = 0x100000000;
          v31[0] = &v32;
          v31[1] = 0x100000000;
          mlir::getIntValues<long long>(v8, v9, v35, 1);
          mlir::getIntValues<long long>(v10, v11, v33, 1);
          mlir::getIntValues<long long>(v12, v13, v31, 1);
          v27 = 1;
          v15 = *v33[0];
          v16 = *v31[0];
          v28 = *v35[0];
          v29 = v15;
          v30 = v16;
          if (*(a2 + 36))
          {
            v17 = a2 - 16;
          }

          else
          {
            v17 = 0;
          }

          v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v18)
          {
            v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
          }

          else
          {
            v19 = 0;
          }

          v26[0] = v18;
          v26[1] = v19;
          if (mlir::CallOpInterface::getArgOperands(v26))
          {
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v26);
            v22 = v21;
            ElementTypeOrSelf = mlir::getElementTypeOrSelf(v26[0]);
            v24 = mlir::RankedTensorType::get(ArgAttrsAttr, v22, ElementTypeOrSelf, 0);
            v14 = mlir::createRawElementsAttr(v24, &v27, 0x1CuLL) & 0xFFFFFFFFFFFFFFFBLL;
          }

          else
          {
            v14 = 0;
          }

          if (v31[0] != &v32)
          {
            free(v31[0]);
          }

          if (v33[0] != &v34)
          {
            free(v33[0]);
          }

          if (v35[0] != v36)
          {
            free(v35[0]);
          }

          return v14;
        }

LABEL_12:
        v13 = 0;
        goto LABEL_13;
      }
    }

    v11 = 0;
    v12 = a3[2];
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v6 = 8 * a4;
  v7 = a3;
  while (*v7)
  {
    ++v7;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

unint64_t mlir::detail::ExternalFoldInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::FoldPadOp>::externalFold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79[6] = *MEMORY[0x1E69E9840];
  v62 = a2;
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8))
  {
    v60 = 0;
    v61 = 0;
    return 0;
  }

  v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
  v60 = v5;
  v61 = v6;
  if (!v5 || !mlir::CallOpInterface::getArgOperands(&v60) || !mlir::CallOpInterface::getArgOperands(&v60))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
  if (v8)
  {
    v9 = 8 * v8;
    while (*ArgAttrsAttr != 0x8000000000000000)
    {
      ++ArgAttrsAttr;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

LABEL_14:
  v10 = mlir::CallableOpInterface::getArgAttrsAttr(&v60);
  if (mlir::ShapedType::getNumElements(v10, v11) > 64)
  {
    return 0;
  }

  v12 = *a3;
  if (*a3)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
    if (v13)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v12 + 8);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v59[0] = v12;
  v59[1] = v13;
  v14 = *(a3 + 8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
    if (v15)
    {
      v15 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v58[0] = v14;
  v58[1] = v15;
  if (!v59[0])
  {
    return 0;
  }

  ArgOperands = mlir::CallOpInterface::getArgOperands(v59);
  v78 = v16;
  if (!mlir::CallOpInterface::getArgOperands(&ArgOperands))
  {
    return 0;
  }

  isSplat = mlir::CallOpInterface::getArgOperands(v59);
  v73 = v17;
  mlir::CallableOpInterface::getArgAttrsAttr(&isSplat);
  if (v18 > 1 || !v58[0])
  {
    return 0;
  }

  StorageType = mlir::mps::MaterializeSparseTensorOp::getStorageType(&v62);
  mlir::ElementsAttr::getValues<llvm::APInt>(v58, &ArgOperands);
  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&ArgOperands, 0, &isSplat);
  if (v73 > 0x40)
  {
    v20 = *isSplat;
    operator delete[](isSplat);
  }

  else if (v73)
  {
    v20 = isSplat << -v73 >> -v73;
  }

  else
  {
    v20 = 0;
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ArgOperands);
  mlir::ElementsAttr::getValues<llvm::APInt>(v58, &ArgOperands);
  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::operator[](&ArgOperands, 1, &isSplat);
  if (v73 > 0x40)
  {
    v21 = *isSplat;
    operator delete[](isSplat);
  }

  else if (v73)
  {
    v21 = isSplat << -v73 >> -v73;
  }

  else
  {
    v21 = 0;
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ArgOperands);
  ArgOperands = mlir::CallOpInterface::getArgOperands(v59);
  v78 = v22;
  if (*(*mlir::ElementsAttr::isSplat(&ArgOperands) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    ArgOperands = mlir::CallOpInterface::getArgOperands(v59);
    v78 = v23;
    isSplat = mlir::ElementsAttr::isSplat(&ArgOperands);
    if (llvm::isa<mlir::FloatType,mlir::Type>(&isSplat))
    {
      v70.n128_u64[0] = v71;
      v70.n128_u64[1] = 0x100000000;
      mlir::ElementsAttr::getValues<llvm::APFloat>(v59, &ArgOperands);
      v55 = ArgOperands;
      if (ArgOperands == 1)
      {
        v56 = v78;
      }

      else
      {
        (*(*v78 + 16))(&v56);
      }

      v57 = v79[0];
      mlir::ElementsAttr::getValues<llvm::APFloat>(v59, &isSplat);
      LOWORD(__p) = v74;
      if (v74 == 1)
      {
        v54[0] = v75;
      }

      else
      {
        (*(*v75 + 16))(v54);
      }

      v54[1] = v76;
      llvm::SmallVector<llvm::APFloat,1u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(&v65, &v55, &__p);
      if ((__p & 1) == 0)
      {
        v29 = v54[0];
        v54[0] = 0;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&isSplat);
      if ((v55 & 1) == 0)
      {
        v30 = v56;
        v56 = 0;
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }
      }

      mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&ArgOperands);
      if (StorageType > 1)
      {
        if (StorageType == 2)
        {
          v43 = v65;
          if (v20)
          {
            v44 = 32 * v20;
            v45 = -32 * v20;
            v46 = v65 + v44 - 32;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v70, v46);
              v46 -= 32;
              v45 += 32;
            }

            while (v45);
            v43 = v65;
          }

          llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v70, v43, &v43[32 * v66]);
          if (v21)
          {
            v47 = -32 * v21;
            v48 = v65 + 32 * v66 - 32;
            do
            {
              llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v70, v48);
              v48 -= 32;
              v47 += 32;
            }

            while (v47);
          }

          goto LABEL_108;
        }

        if (StorageType != 3)
        {
LABEL_108:
          ArgOperands = v70.n128_u32[2];
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v59[0]);
          v50 = mlir::RankedTensorType::get(&ArgOperands, 1, ElementTypeOrSelf, 0);
          v41 = mlir::createElementsAttr(v50, v70.n128_i64[0], v70.n128_u32[2]) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_109:
          llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v65);
          llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v70);
          return v41;
        }

        llvm::APFloat::APFloat(&isSplat, v65);
        llvm::APFloat::APFloat(&v63, (v65 + 32 * v66 - 32));
        ArgOperands = v79;
        v78 = 0x100000000;
        llvm::SmallVectorImpl<llvm::APFloat>::assign(&ArgOperands, v20, &isSplat);
        llvm::SmallVectorImpl<llvm::APFloat>::operator=(&v70, &ArgOperands);
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ArgOperands);
        llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v70, v65, v65 + 32 * v66);
        llvm::SmallVectorImpl<llvm::APFloat>::append(&v70, v21, &v63);
        llvm::APFloat::~APFloat(&v63);
      }

      else
      {
        if (StorageType)
        {
          if (StorageType == 1)
          {
            v31 = v65;
            if (v20)
            {
              v32 = 32 * v20;
              v33 = -32 * v20;
              v34 = v65 + v32;
              do
              {
                llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v70, v34);
                v34 -= 32;
                v33 += 32;
              }

              while (v33);
              v31 = v65;
            }

            llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v70, v31, &v31[32 * v66]);
            if (v21)
            {
              v35 = -32 * v21;
              v36 = v65 + 32 * v66 - 64;
              do
              {
                llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v70, v36);
                v36 -= 32;
                v35 += 32;
              }

              while (v35);
            }
          }

          goto LABEL_108;
        }

        v63 = llvm::dyn_cast_or_null<mlir::ElementsAttr,mlir::Attribute>((a3 + 16));
        v64[0] = v42;
        if (!v63 || (mlir::ElementsAttr::isSplat(&v63) & 1) == 0)
        {
          v41 = 0;
          goto LABEL_109;
        }

        mlir::ElementsAttr::getSplatValue<llvm::APFloat>(&v63, &isSplat);
        ArgOperands = v79;
        v78 = 0x100000000;
        llvm::SmallVectorImpl<llvm::APFloat>::assign(&ArgOperands, v20, &isSplat);
        llvm::SmallVectorImpl<llvm::APFloat>::operator=(&v70, &ArgOperands);
        llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&ArgOperands);
        llvm::SmallVectorImpl<llvm::APFloat>::append<llvm::APFloat const*,void>(&v70, v65, v65 + 32 * v66);
        llvm::SmallVectorImpl<llvm::APFloat>::append(&v70, v21, &isSplat);
      }

      llvm::APFloat::~APFloat(&isSplat);
      goto LABEL_108;
    }

    return 0;
  }

  ArgOperands = v79;
  v78 = 0x300000000;
  mlir::ElementsAttr::getValues<llvm::APInt>(v59, &v70);
  LOWORD(v63) = v70.n128_u16[0];
  if (v70.n128_u8[0] == 1)
  {
    v64[0] = v70.n128_u64[1];
  }

  else
  {
    (*(*v70.n128_u64[1] + 16))(v64);
  }

  v64[1] = v71[0];
  mlir::ElementsAttr::getValues<llvm::APInt>(v59, &v65);
  v55 = v67;
  if (v67 == 1)
  {
    v56 = v68;
  }

  else
  {
    (*(*v68 + 16))(&v56);
  }

  v57 = v69;
  llvm::SmallVector<llvm::APInt,3u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(&isSplat, &v63, &v55);
  if ((v55 & 1) == 0)
  {
    v25 = v56;
    v56 = 0;
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v65);
  if ((v63 & 1) == 0)
  {
    v26 = v64[0];
    v64[0] = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v70);
  if (StorageType > 1)
  {
    if (StorageType == 2)
    {
      std::reverse_copy[abi:nn200100]<llvm::APInt *,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(isSplat, isSplat + 16 * v20, &ArgOperands);
      llvm::SmallVectorImpl<llvm::APInt>::append(&ArgOperands, &isSplat);
      v27 = (isSplat + 16 * v73);
      goto LABEL_94;
    }

    if (StorageType != 3)
    {
      goto LABEL_95;
    }

    v28 = isSplat;
    LODWORD(v66) = *(isSplat + 8);
    if (v66 > 0x40)
    {
      llvm::APInt::initSlowCase(&v65, isSplat);
      v28 = isSplat;
    }

    else
    {
      v65 = *isSplat;
    }

    v51 = v28 + 16 * v73;
    v52 = (v51 - 16);
    LODWORD(v54[0]) = *(v51 - 8);
    if (LODWORD(v54[0]) > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, v52);
    }

    else
    {
      __p = *v52;
    }

    v70.n128_u64[0] = v71;
    v70.n128_u64[1] = 0x300000000;
    llvm::SmallVectorImpl<llvm::APInt>::assign(&v70, v20, &v65);
    llvm::SmallVectorImpl<llvm::APInt>::operator=(&ArgOperands, &v70);
    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v70);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ArgOperands, &isSplat);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ArgOperands, v21, &__p);
    if (LODWORD(v54[0]) >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v66 < 0x41)
    {
      goto LABEL_95;
    }

    v38 = v65;
    if (!v65)
    {
      goto LABEL_95;
    }

    goto LABEL_122;
  }

  if (!StorageType)
  {
    v65 = llvm::dyn_cast_or_null<mlir::ElementsAttr,mlir::Attribute>((a3 + 16));
    v66 = v37;
    if (!v65 || (mlir::ElementsAttr::isSplat(&v65) & 1) == 0)
    {
      v41 = 0;
      goto LABEL_96;
    }

    mlir::ElementsAttr::getSplatValue<llvm::APInt>(&v65, &__p);
    v70.n128_u64[0] = v71;
    v70.n128_u64[1] = 0x300000000;
    llvm::SmallVectorImpl<llvm::APInt>::assign(&v70, v20, &__p);
    llvm::SmallVectorImpl<llvm::APInt>::operator=(&ArgOperands, &v70);
    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v70);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ArgOperands, &isSplat);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ArgOperands, v21, &__p);
    if (LODWORD(v54[0]) < 0x41)
    {
      goto LABEL_95;
    }

    v38 = __p;
    if (!__p)
    {
      goto LABEL_95;
    }

LABEL_122:
    operator delete[](v38);
    goto LABEL_95;
  }

  if (StorageType == 1)
  {
    std::reverse_copy[abi:nn200100]<llvm::APInt *,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(isSplat + 16, isSplat + 16 + 16 * v20, &ArgOperands);
    llvm::SmallVectorImpl<llvm::APInt>::append(&ArgOperands, &isSplat);
    v27 = (isSplat + 16 * v73 - 16);
LABEL_94:
    std::copy[abi:nn200100]<std::reverse_iterator<llvm::APInt *>,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(v27, v27, &v27[-16 * v21], &v27[-16 * v21], &ArgOperands);
  }

LABEL_95:
  v70.n128_u64[0] = v78;
  v39 = mlir::getElementTypeOrSelf(v59[0]);
  v40 = mlir::RankedTensorType::get(&v70, 1, v39, 0);
  v41 = mlir::createElementsAttr(v40, ArgOperands, v78) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_96:
  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&isSplat);
  llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&ArgOperands);
  return v41;
}

void *mlir::ElementsAttr::getSplatValue<llvm::APInt>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::ElementsAttr::value_begin<llvm::APInt>(a1, v7);
  result = v8;
  if (v7[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = v9;
  }

  if (v7[0] == 1)
  {
    v5 = &v8[16 * v4];
    v6 = *(v5 + 2);
    *(a2 + 8) = v6;
    if (v6 > 0x40)
    {
      result = llvm::APInt::initSlowCase(a2, v5);
      if (v7[0])
      {
        return result;
      }
    }

    else
    {
      *a2 = *v5;
      if (v7[0])
      {
        return result;
      }
    }
  }

  else
  {
    result = (*(*v8 + 24))();
    if (v7[0])
    {
      return result;
    }
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void llvm::SmallVectorImpl<llvm::APInt>::append(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a1 + 8);
  if (v5 + v4 > *(a1 + 12))
  {
    llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v5 + v4);
    v5 = *(a1 + 8);
  }

  if (v4)
  {
    v6 = *a1 + 16 * v5;
    v7 = 16 * v4;
    do
    {
      v8 = *(v3 + 8);
      *(v6 + 8) = v8;
      if (v8 <= 0x40)
      {
        *v6 = *v3;
      }

      else
      {
        llvm::APInt::initSlowCase(v6, v3);
      }

      v3 += 16;
      v6 += 16;
      v7 -= 16;
    }

    while (v7);
    LODWORD(v5) = *(a1 + 8);
  }

  *(a1 + 8) = v5 + v4;
}

void llvm::SmallVectorImpl<llvm::APInt>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = v6 + a2;
  if (v7 > *(a1 + 12))
  {
    v12 = *a1 + 16 * v6;
    if (*a1 <= a3 && v12 > a3)
    {
      v14 = a3 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v7);
      v3 = *a1 + v14;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v7);
    }
  }

  v8 = *(a1 + 8);
  if (a2)
  {
    v9 = *a1 + 16 * v8;
    v10 = a2;
    do
    {
      v11 = *(v3 + 8);
      *(v9 + 8) = v11;
      if (v11 <= 0x40)
      {
        *v9 = *v3;
      }

      else
      {
        llvm::APInt::initSlowCase(v9, v3);
      }

      v9 += 16;
      --v10;
    }

    while (v10);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + a2;
}

uint64_t std::reverse_copy[abi:nn200100]<llvm::APInt *,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 != a1)
  {
    v4 = a2;
    v6 = *(a3 + 8);
    do
    {
      v4 -= 16;
      v7 = *a3;
      v8 = v4;
      if (v6 >= *(a3 + 12))
      {
        if (v7 <= v4 && v7 + 16 * v6 > v4)
        {
          v12 = v4 - v7;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a3, v6 + 1);
          v7 = *a3;
          v8 = *a3 + v12;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a3, v6 + 1);
          v7 = *a3;
          v8 = v4;
        }
      }

      v9 = v7 + 16 * *(a3 + 8);
      v10 = *(v8 + 8);
      *(v9 + 8) = v10;
      if (v10 <= 0x40)
      {
        *v9 = *v8;
      }

      else
      {
        llvm::APInt::initSlowCase(v9, v8);
      }

      v6 = *(a3 + 8) + 1;
      *(a3 + 8) = v6;
    }

    while (v4 != a1);
  }

  return a3;
}

uint64_t std::copy[abi:nn200100]<std::reverse_iterator<llvm::APInt *>,std::back_insert_iterator<llvm::SmallVector<llvm::APInt,3u>>>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a4)
  {
    v8 = a2;
    v9 = *(a5 + 8);
    do
    {
      v8 -= 16;
      v10 = *a5;
      v11 = v8;
      if (v9 >= *(a5 + 12))
      {
        if (v10 <= v8 && v10 + 16 * v9 > v8)
        {
          v15 = v8 - v10;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a5, v9 + 1);
          v10 = *a5;
          v11 = *a5 + v15;
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a5, v9 + 1);
          v10 = *a5;
          v11 = v8;
        }
      }

      v12 = v10 + 16 * *(a5 + 8);
      v13 = *(v11 + 8);
      *(v12 + 8) = v13;
      if (v13 > 0x40)
      {
        llvm::APInt::initSlowCase(v12, v11);
      }

      else
      {
        *v12 = *v11;
      }

      v9 = *(a5 + 8) + 1;
      *(a5 + 8) = v9;
    }

    while (v8 != a4);
  }

  return a5;
}

llvm::APFloatBase *mlir::ElementsAttr::getSplatValue<llvm::APFloat>@<X0>(mlir::BranchOpInterface *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::ElementsAttr::value_begin<llvm::APFloat>(a1, v8);
  if (v8[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = v10;
  }

  if (v8[0] == 1)
  {
    v4 = v9 + 32 * v3;
    v6 = *(v4 + 1);
    v5 = (v4 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(v9) == v6)
    {
      result = llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v5);
      if (v8[0])
      {
        return result;
      }
    }

    else
    {
      result = llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v5);
      if (v8[0])
      {
        return result;
      }
    }
  }

  else
  {
    result = (*(*v9 + 24))();
    if (v8[0])
    {
      return result;
    }
  }

  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void llvm::SmallVectorImpl<llvm::APFloat>::append(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v6 = a1[2];
  v7 = v6 + a2;
  if (v7 > a1[3])
  {
    v15 = *a1 + 32 * v6;
    if (*a1 <= a3 && v15 > a3)
    {
      v17 = a3 - *a1;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v7);
      v3 = *a1 + v17;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v7);
    }
  }

  v8 = a1[2];
  if (a2)
  {
    v9 = *a1;
    v10 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v11 = (v9 + 32 * v8 + 8);
    v12 = a2;
    do
    {
      v14 = (v3 + 8);
      if (v10 == *(v3 + 8))
      {
        v13 = llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, v14);
      }

      else
      {
        v13 = llvm::detail::IEEEFloat::IEEEFloat(v11, v14);
      }

      v11 = (v13 + 4);
      --v12;
    }

    while (v12);
    LODWORD(v8) = a1[2];
  }

  a1[2] = v8 + a2;
}

void *llvm::SmallVector<llvm::APInt,3u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APInt>::append<mlir::detail::ElementsAttrIterator<llvm::APInt>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

void llvm::SmallVectorImpl<llvm::APInt>::assign(uint64_t a1, unint64_t a2, llvm::APInt *a3)
{
  if (*(a1 + 12) >= a2)
  {
    v6 = *(a1 + 8);
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (v7)
    {
      v8 = *a1;
      do
      {
        if (v8[2] > 0x40 || *(a3 + 2) > 0x40u)
        {
          llvm::APInt::assignSlowCase(v8, a3);
        }

        else
        {
          *v8 = *a3;
          v8[2] = *(a3 + 2);
        }

        v8 += 4;
        --v7;
      }

      while (v7);
      v6 = *(a1 + 8);
    }

    v9 = v6 - a2;
    if (v6 >= a2)
    {
      if (v6 > a2)
      {
        v13 = 16 * v6;
        v14 = 16 * v6 + *a1 - 8;
        v15 = 16 * a2 - v13;
        v16 = v14;
        do
        {
          v17 = *v16;
          v16 -= 4;
          if (v17 >= 0x41)
          {
            v18 = *(v14 - 8);
            if (v18)
            {
              operator delete[](v18);
            }
          }

          v14 = v16;
          v15 += 16;
        }

        while (v15);
      }
    }

    else
    {
      v10 = *a1 + 16 * v6;
      do
      {
        v12 = *(a3 + 2);
        *(v10 + 8) = v12;
        if (v12 > 0x40)
        {
          llvm::APInt::initSlowCase(v10, a3);
        }

        else
        {
          *v10 = *a3;
        }

        v10 += 16;
      }

      while (!__CFADD__(v9++, 1));
    }

    *(a1 + 8) = a2;
  }

  else
  {

    llvm::SmallVectorTemplateBase<llvm::APInt,false>::growAndAssign(a1, a2, a3);
  }
}

void llvm::SmallVectorTemplateBase<llvm::APInt,false>::growAndAssign(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = 0;
  v6 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, &v21);
  v8 = v7;
  if (a2)
  {
    v9 = v7;
    v10 = a2;
    do
    {
      v11 = *(a3 + 8);
      *(v9 + 8) = v11;
      if (v11 <= 0x40)
      {
        *v9 = *a3;
      }

      else
      {
        llvm::APInt::initSlowCase(v9, a3);
      }

      v9 += 16;
      --v10;
    }

    while (v10);
  }

  v12 = *a1;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = 16 * v13;
    v15 = v12 + 16 * v13 - 8;
    v16 = -v14;
    v17 = v15;
    do
    {
      v18 = *v17;
      v17 -= 4;
      if (v18 >= 0x41)
      {
        v19 = *(v15 - 8);
        if (v19)
        {
          operator delete[](v19);
        }
      }

      v15 = v17;
      v16 += 16;
    }

    while (v16);
    v12 = *a1;
  }

  v20 = v21;
  if (v12 != v6)
  {
    free(v12);
  }

  *a1 = v8;
  *(a1 + 8) = a2;
  *(a1 + 12) = v20;
}

uint64_t llvm::SmallVectorImpl<llvm::APInt>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != a2 + 2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = 16 * v7;
        v9 = &v6[2 * v7 - 1];
        v10 = -v8;
        v11 = v9;
        do
        {
          v12 = *v11;
          v11 -= 4;
          if (v12 >= 0x41)
          {
            v13 = *(v9 - 8);
            if (v13)
            {
              operator delete[](v13);
            }
          }

          v9 = v11;
          v10 += 16;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v14 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_13:
      *v14 = 0;
      return a1;
    }

    v14 = a2 + 1;
    v16 = *(a2 + 2);
    v17 = *(a1 + 8);
    if (v17 >= v16)
    {
      v23 = *a1;
      if (v16)
      {
        v24 = v5 + 16 * v16;
        do
        {
          if (*(v23 + 2) >= 0x41u && *v23)
          {
            operator delete[](*v23);
          }

          *v23 = *v5;
          *(v23 + 2) = *(v5 + 8);
          *(v5 + 8) = 0;
          v5 += 16;
          v23 += 2;
        }

        while (v5 != v24);
        v25 = *a1;
        v17 = *(a1 + 8);
      }

      else
      {
        v25 = *a1;
      }

      v42 = &v25[2 * v17];
      while (v42 != v23)
      {
        v43 = *(v42 - 2);
        v42 -= 2;
        if (v43 >= 0x41 && *v42)
        {
          operator delete[](*v42);
        }
      }

      *(a1 + 8) = v16;
      v44 = *(a2 + 2);
      if (v44)
      {
        v45 = 16 * v44;
        v46 = 16 * v44 + *a2 - 8;
        v47 = -v45;
        v48 = v46;
        do
        {
          v49 = *v48;
          v48 -= 4;
          if (v49 >= 0x41)
          {
            v50 = *(v46 - 8);
            if (v50)
            {
              operator delete[](v50);
            }
          }

          v46 = v48;
          v47 += 16;
        }

        while (v47);
      }

      goto LABEL_13;
    }

    if (*(a1 + 12) >= v16)
    {
      if (v17)
      {
        v26 = v5 + 16 * v17;
        v27 = (*a1 + 8);
        do
        {
          if (*v27 >= 0x41u)
          {
            v28 = *(v27 - 1);
            if (v28)
            {
              operator delete[](v28);
            }
          }

          *(v27 - 1) = *v5;
          *v27 = *(v5 + 8);
          v27 += 4;
          *(v5 + 8) = 0;
          v5 += 16;
        }

        while (v5 != v26);
        goto LABEL_38;
      }
    }

    else
    {
      if (v17)
      {
        v18 = 16 * v17 + *a1 - 8;
        v19 = -16 * v17;
        v20 = v18;
        do
        {
          v21 = *v20;
          v20 -= 4;
          if (v21 >= 0x41)
          {
            v22 = *(v18 - 8);
            if (v22)
            {
              operator delete[](v22);
            }
          }

          v18 = v20;
          v19 += 16;
        }

        while (v19);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v16);
    }

    v17 = 0;
LABEL_38:
    v29 = *a2;
    v30 = *(a2 + 2);
    if (v17 != v30)
    {
      v31 = (16 * v17) | 8;
      v32 = (*a1 + v31);
      v33 = 16 * v30 - 16 * v17;
      v34 = (v29 + v31);
      do
      {
        *v32 = *v34;
        *(v32 - 1) = *(v34 - 1);
        *v34 = 0;
        v34 += 4;
        v32 += 4;
        v33 -= 16;
      }

      while (v33);
      v29 = *a2;
    }

    *(a1 + 8) = v16;
    v35 = *v14;
    if (v35)
    {
      v36 = 16 * v35;
      v37 = v36 + v29 - 8;
      v38 = -v36;
      v39 = v37;
      do
      {
        v40 = *v39;
        v39 -= 4;
        if (v40 >= 0x41)
        {
          v41 = *(v37 - 8);
          if (v41)
          {
            operator delete[](v41);
          }
        }

        v37 = v39;
        v38 += 16;
      }

      while (v38);
    }

    goto LABEL_13;
  }

  return a1;
}

uint64_t llvm::SmallVector<llvm::APFloat,1u>::SmallVector<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x100000000;
  v11[0] = *a2;
  v11[1] = *(a2 + 1);
  if (v11[0] == 1)
  {
    v12[0] = *(a2 + 8);
  }

  else
  {
    (*(**(a2 + 8) + 16))(v12);
  }

  v12[1] = *(a2 + 16);
  v9[0] = *a3;
  v9[1] = *(a3 + 1);
  if (v9[0] == 1)
  {
    v10[0] = *(a3 + 8);
  }

  else
  {
    (*(**(a3 + 8) + 16))(v10);
  }

  v10[1] = *(a3 + 16);
  llvm::SmallVectorImpl<llvm::APFloat>::append<mlir::detail::ElementsAttrIterator<llvm::APFloat>,void>(a1, v11, v9);
  if ((v9[0] & 1) == 0)
  {
    v6 = v10[0];
    v10[0] = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if ((v11[0] & 1) == 0)
  {
    v7 = v12[0];
    v12[0] = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  return a1;
}

unsigned int *llvm::SmallVectorImpl<llvm::APFloat>::operator=(__n128 *this, unsigned int *a2)
{
  v2 = this;
  if (this != a2)
  {
    v5 = a2 + 4;
    v4 = *a2;
    if (*a2 == a2 + 4)
    {
      v12 = a2 + 2;
      v14 = a2[2];
      v15 = this->n128_u32[2];
      if (v15 >= v14)
      {
        v21 = this->n128_u64[0];
        if (v14)
        {
          v22 = 32 * v14;
          v23 = (v4 + 8);
          do
          {
            this = llvm::APFloat::Storage::operator=((v21 + 8), v23);
            v21 += 32;
            v23 += 2;
            v22 -= 32;
          }

          while (v22);
          v24 = *v2;
          v15 = v2[2];
        }

        else
        {
          v24 = this->n128_u64[0];
        }

        v31 = &v24[2 * v15];
        if (v31 != v21)
        {
          v32 = llvm::APFloatBase::PPCDoubleDouble(this);
          this = (v31 - 24);
          do
          {
            if (v32 == this->n128_u64[0])
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(this);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(this);
            }

            v34 = v33 - 8;
            this = (v33 - 32);
          }

          while (v34 != v21);
        }

        v2[2] = v14;
        v35 = a2[2];
        if (v35)
        {
          v36 = *a2;
          v37 = llvm::APFloatBase::PPCDoubleDouble(this);
          v38 = (32 * v35 + v36 - 24);
          v39 = -32 * v35;
          do
          {
            if (v37 == *v38)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v38);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v38);
            }

            v38 = (v40 - 32);
            v39 += 32;
          }

          while (v39);
        }
      }

      else
      {
        if (this->n128_u32[3] >= v14)
        {
          if (v15)
          {
            v25 = (this->n128_u64[0] + 8);
            v26 = 32 * v15;
            v27 = (v4 + 8);
            do
            {
              this = llvm::APFloat::Storage::operator=(v25, v27);
              v25 = (v25 + 32);
              v27 += 2;
              v26 -= 32;
            }

            while (v26);
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          if (v15)
          {
            v16 = this->n128_u64[0];
            v17 = llvm::APFloatBase::PPCDoubleDouble(this);
            v18 = (32 * v15 + v16 - 24);
            v19 = -32 * v15;
            do
            {
              if (v17 == *v18)
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v18);
              }

              else
              {
                llvm::detail::IEEEFloat::~IEEEFloat(v18);
              }

              v18 = (v20 - 32);
              v19 += 32;
            }

            while (v19);
          }

          v2[2] = 0;
          v54 = 0;
          llvm::SmallVectorBase<unsigned int>::mallocForGrow(v2, v2 + 4, v14, 32, &v54);
          v29 = v28;
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(v2, v28);
          v30 = v54;
          this = *v2;
          if (*v2 != v2 + 4)
          {
            free(this);
          }

          v15 = 0;
          *v2 = v29;
          v2[3] = v30;
        }

        v41 = *a2;
        v42 = a2[2];
        if (v15 != v42)
        {
          v43 = *v2;
          v44 = llvm::APFloatBase::PPCDoubleDouble(this);
          v45 = (32 * v15) | 8;
          this = (v43 + v45);
          v46 = 32 * v42 - 32 * v15;
          v47 = (v41 + v45);
          do
          {
            if (v44 == v47->n128_u64[0])
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(this, v47);
            }

            else
            {
              v48 = llvm::detail::IEEEFloat::IEEEFloat(this, v47);
            }

            this = (v48 + 32);
            v47 += 2;
            v46 -= 32;
          }

          while (v46);
          v41 = *a2;
        }

        v2[2] = v14;
        v49 = *v12;
        if (v49)
        {
          v50 = llvm::APFloatBase::PPCDoubleDouble(this);
          v51 = (32 * v49 + v41 - 24);
          v52 = -32 * v49;
          do
          {
            if (v50 == *v51)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v51);
            }

            else
            {
              llvm::detail::IEEEFloat::~IEEEFloat(v51);
            }

            v51 = (v53 - 32);
            v52 += 32;
          }

          while (v52);
        }
      }
    }

    else
    {
      v6 = this->n128_u64[0];
      v7 = this->n128_u32[2];
      if (v7)
      {
        v8 = llvm::APFloatBase::PPCDoubleDouble(this);
        v9 = &v6[8 * v7 - 6];
        v10 = -32 * v7;
        do
        {
          if (v8 == *v9)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v9);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v9);
          }

          v9 = (v11 - 32);
          v10 += 32;
        }

        while (v10);
        v6 = *v2;
      }

      if (v6 != v2 + 4)
      {
        free(v6);
      }

      *v2 = *a2;
      v12 = a2 + 2;
      *(v2 + 1) = *(a2 + 1);
      *a2 = v5;
      a2[3] = 0;
    }

    *v12 = 0;
  }

  return v2;
}