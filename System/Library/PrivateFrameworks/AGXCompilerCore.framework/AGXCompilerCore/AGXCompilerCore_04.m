void _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(std::string *a1, int a2, int a3, int a4)
{
  if (a4)
  {
    std::string::basic_string[abi:nn200100]<0>(&v19, ".v");
    std::to_string(&__p, a4 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v19, p_p, size);
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(&v20, ".");
  }

  if (a2)
  {
    v12 = 102;
  }

  else
  {
    v12 = 105;
  }

  std::string::push_back(&v20, v12);
  v21 = v20;
  memset(&v20, 0, sizeof(v20));
  if (a3)
  {
    v13 = "32";
  }

  else
  {
    v13 = "16";
  }

  v14 = std::string::append(&v21, v13);
  v15 = v14->__r_.__value_.__r.__words[2];
  v22 = *&v14->__r_.__value_.__l.__data_;
  v23 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v16 = &v22;
  }

  else
  {
    v16 = v22;
  }

  if (v23 >= 0)
  {
    v17 = HIBYTE(v23);
  }

  else
  {
    v17 = *(&v22 + 1);
  }

  std::string::append(a1, v16, v17);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }
}

llvm::Value *AGCLLVMObject::buildConvertColor(uint64_t a1, llvm::Value *a2, llvm::Type *a3, unsigned int a4, int a5, int a6)
{
  v8 = a3;
  InsertElement = a2;
  v11 = *a2;
  v12 = *(a3 + 2) & 0xFE;
  if (v12 != 18)
  {
    v8 = llvm::FixedVectorType::get();
  }

  if ((*(v11 + 8) & 0xFE) != 0x12)
  {
    v11 = llvm::FixedVectorType::get();
    v13 = llvm::UndefValue::get();
    v70 = 257;
    v14 = *(a1 + 1904);
    v15 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1712), v13, InsertElement, v15, v69);
  }

  v16 = *(v8 + 8);
  if (*(v11 + 32) != v16)
  {
    InsertElement = AGCLLVMBuilder::extendVector((a1 + 1704), InsertElement, v16);
    v11 = *InsertElement;
  }

  if (v11 == v8)
  {
    if (v12 == 18)
    {
      return InsertElement;
    }

    goto LABEL_64;
  }

  v58 = v12;
  if (!a5)
  {
    if ((*(v11 + 8) & 0xFE) == 0x12)
    {
      v23 = *(**(v11 + 16) + 8);
    }

    else
    {
      v23 = *(v11 + 8);
    }

    if (v23 == 13)
    {
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v11);
      v35 = llvm::Type::getScalarSizeInBits(v8);
      if (ScalarSizeInBits <= v35)
      {
        v70 = 257;
        v37 = a1 + 1712;
        if (a4)
        {
          v38 = 40;
        }

        else
        {
          v38 = 39;
        }

        v36 = InsertElement;
      }

      else
      {
        v36 = AGCLLVMBuilder::clampToWidth((a1 + 1704), InsertElement, v35, a4);
        v70 = 257;
        v37 = a1 + 1712;
        v38 = 38;
      }

      Cast = llvm::IRBuilderBase::CreateCast(v37, v38, v36, v8, v69);
    }

    else
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + 1696), "Warning (Undefined behavior): integer drawbuffer format, but shader is writing floating point");
      }

      Cast = llvm::UndefValue::get();
    }

LABEL_62:
    InsertElement = Cast;
    goto LABEL_63;
  }

  v56 = a6;
  v17 = **(v11 + 16);
  v18 = *(v8 + 8);
  v19 = *(a1 + 1872);
  v20 = llvm::FixedVectorType::get();
  v57 = v8;
  if (v17 == *(a1 + 1888) || v17 == *(a1 + 1896))
  {
    v24 = *(a1 + 1872);
    llvm::FixedVectorType::get();
    v22 = llvm::UndefValue::get();
    if (v17 == *(a1 + 1888))
    {
      v25 = 8;
    }

    else
    {
      v25 = 16;
    }

    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        v70 = 257;
        v27 = *(a1 + 1904);
        v28 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1712), InsertElement, v28, v69);
        v30 = *(a1 + 2168);
        v66 = *(a1 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v67, (a1 + 1712));
        v68 = *(a1 + 1808);
        v31 = (*(*v30 + 96))(v30, &v66, Element, v25, a4, 32);
        if (v67)
        {
          llvm::MetadataTracking::untrack();
        }

        v70 = 257;
        v32 = *(a1 + 1904);
        v33 = llvm::ConstantInt::get();
        v22 = llvm::IRBuilderBase::CreateInsertElement((a1 + 1712), v22, v31, v33, v69);
      }
    }

LABEL_43:
    v41 = **(v57 + 2);
    if (v41 == *(a1 + 1888))
    {
      v42 = 8;
    }

    else
    {
      if (v41 != *(a1 + 1896))
      {
        if (v41 != *(a1 + 1856))
        {
          InsertElement = v22;
          if (v41 != *(a1 + 1872))
          {
            return 0;
          }

          goto LABEL_63;
        }

        v51 = (*(*a1 + 80))(a1);
        if (v51 <= 0x1B && ((1 << v51) & 0x80002C1) != 0 && (v56 & 0xFFFFFFFE) == 2)
        {
          v52 = *(a1 + 2168);
          v60 = *(a1 + 1760);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v61, (a1 + 1712));
          v62 = *(a1 + 1808);
          v22 = AGCLLVMTargetLowerer::buildRTZF16Value(v52, &v60, v22, v56 == 3);
          if (v61)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        v70 = 257;
        Cast = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1712), v22, v57, v69);
        goto LABEL_62;
      }

      v42 = 16;
    }

    InsertElement = llvm::UndefValue::get();
    if (v18)
    {
      for (j = 0; j != v18; ++j)
      {
        v70 = 257;
        v44 = *(a1 + 1904);
        v45 = llvm::ConstantInt::get();
        v46 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1712), v22, v45, v69);
        v47 = *(a1 + 2168);
        v63 = *(a1 + 1760);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v64, (a1 + 1712));
        v65 = *(a1 + 1808);
        v48 = (*(*v47 + 88))(v47, &v63, v46, v42, a4, 1);
        if (v64)
        {
          llvm::MetadataTracking::untrack();
        }

        v70 = 257;
        v49 = *(a1 + 1904);
        v50 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1712), InsertElement, v48, v50, v69);
      }
    }

LABEL_63:
    if (v58 == 18)
    {
      return InsertElement;
    }

LABEL_64:
    v70 = 257;
    v53 = *(a1 + 1904);
    v54 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((a1 + 1712), InsertElement, v54, v69);
  }

  v21 = v20;
  if (v17 == *(a1 + 1856))
  {
    v70 = 257;
    FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1712), InsertElement, v20, v69);
LABEL_42:
    v22 = FPExt;
    goto LABEL_43;
  }

  if (v17 == *(a1 + 1904))
  {
    fwrite("AGC: Warning: shader output of integer type is not compatible with color attachment of floating-point/norm type. Compiler will insert a bitcast but it's an undefined behavior. This will become an error in the future.\n", 0xD9uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v70 = 257;
    FPExt = llvm::IRBuilderBase::CreateCast(a1 + 1712, 49, InsertElement, v21, v69);
    goto LABEL_42;
  }

  v22 = InsertElement;
  if (v17 == *(a1 + 1872))
  {
    goto LABEL_43;
  }

  return 0;
}

uint64_t AGCLLVMGen3TargetLowerer::emulatedColorMask(AGCLLVMGen3TargetLowerer *this, int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a4 > 1) & *(this + 1955);
  if ((a2 - 18) < 4)
  {
    v4 = 1;
  }

  if (v4)
  {
    return a3;
  }

  else
  {
    return 15;
  }
}

llvm::Value *AGCLLVMBuilder::fillUnwrittenChannels(AGCLLVMBuilder *this, llvm::Value *a2, unsigned int a3)
{
  InsertElement = a2;
  v6 = *a2;
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v6 + 16);
  }

  NullValue = llvm::Constant::getNullValue(v7, a2);
  v9 = *(v7 + 2);
  if (v9 > 6u)
  {
    v10 = llvm::ConstantInt::get();
  }

  else
  {
    v10 = llvm::ConstantFP::get();
  }

  v11 = v10;
  v12 = *(v6 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (((a3 >> i) & 1) == 0)
      {
        if (i == 3)
        {
          v14 = v11;
        }

        else
        {
          v14 = NullValue;
        }

        v19 = 257;
        v15 = *(this + 25);
        v16 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v14, v16, v18);
      }
    }
  }

  return InsertElement;
}

llvm::Constant **AGCLLVMStatelessFragmentObject::buildPreEmitSwizzle(void *a1, llvm::Constant **ShuffleVector, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = *(a1 + *(*a1 - 24) + 1904);
    v17 = llvm::ConstantInt::get();
    v7 = *(a1 + *(*a1 - 24) + 1904);
    v18 = llvm::ConstantInt::get();
    v8 = *(a1 + *(*a1 - 24) + 1904);
    v19 = llvm::ConstantInt::get();
    v9 = *(a1 + *(*a1 - 24) + 1904);
    v20 = llvm::ConstantInt::get();
    NullValue = llvm::Constant::getNullValue(*ShuffleVector, v10);
    v12 = a1 + *(*a1 - 24);
    v13 = llvm::ConstantVector::get();
    v16[16] = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v12 + 1712), ShuffleVector, NullValue, v13, v16);
  }

  v14 = *MEMORY[0x277D85DE8];
  return ShuffleVector;
}

uint64_t AGCLLVMObject::buildOutputFormatConversion(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a2;
  if (a4 == 2)
  {
    v11 = *(a1 + 1904);
    v22 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 1712, 49, a2, v11, v21);
    v13 = *(a1 + 2168);
    v15 = *(a1 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 1712));
    v17 = *(a1 + 1808);
    v4 = (*(*v13 + 112))(v13, &v15, 6, *(a1 + 1896), Cast, 0, 0);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else if (a4 == 1)
  {
    v7 = *(a1 + 2032);
    v22 = 257;
    v8 = llvm::IRBuilderBase::CreateCast(a1 + 1712, 38, a2, v7, v21);
    v9 = *(a1 + 2168);
    v18 = *(a1 + 1760);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 1712));
    v20 = *(a1 + 1808);
    v10 = (*(*v9 + 104))(v9, &v18, 6, *(a1 + 1896), v8, 0, 0);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v22 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 1712, 49, v10, a3, v21);
  }

  return v4;
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteOutputPartitionFromState@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, llvm::Value *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v13 = a12;
  if (a12)
  {
    v19 = result;
    if (*a3 - 20 >= 2)
    {
      if (*a3 == 18)
      {
        v13 = 3;
      }
    }

    else
    {
      v13 = 7;
    }

    v34 = *a2;
    v35 = *(a2 + 16);
    if (v35)
    {
      llvm::MetadataTracking::track();
    }

    v36 = *(a2 + 24);
    AGCLLVMTargetLowerer::SetIP(v19, &v34);
    if (v35)
    {
      llvm::MetadataTracking::untrack();
    }

    v20 = *(a6 + 8);
    if ((v20 & 0xFE) == 0x12)
    {
      v20 = *(**(a6 + 16) + 8);
    }

    if ((v20 & 0xFFFFF0FF) == 0xD)
    {
      v21 = *(v19 + 192);
    }

    v33[0] = 0;
    v33[1] = llvm::FixedVectorType::get();
    v22 = *a3;
    LOWORD(v33[0]) = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(*a3, *(a3 + 16));
    WORD1(v33[0]) = v22;
    WORD2(v33[0]) = v13;
    HIWORD(v33[0]) = a3[1];
    v23 = *(a3 + 4);
    v24 = *(v19 + 964);
    v25 = *(v19 + 192);
    v26 = llvm::ConstantInt::get();
    v32 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v19 + 8), v26, a5, v31);
    HIBYTE(v28) = *(a3 + 18);
    LOBYTE(v28) = a13 == 1;
    return (*(*v19 + 1696))(v19, v33, v23, a4, a7, Mul, 0, a8, 0, a10, a11, v28);
  }

  else
  {
    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 24) = 0;
    *(a9 + 16) = 0;
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateRetVoid(llvm::IRBuilderBase *this)
{
  v2 = *(this + 8);
  v3 = llvm::User::operator new(0x40);
  MEMORY[0x20F32FD40](v3, v2, 0, 0);
  v6 = 257;
  llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v3, v5);
  return v3;
}

void AGCLLVMStatelessFragmentObject::addOrRemoveLogicalRasterOrderGroup(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 80);
  v19 = a2 + 72;
  if (v4 != a2 + 72)
  {
    if ((a3 & 0xFFFFFFFE) == 2)
    {
      v6 = BYTE4(a4) & 1;
    }

    else
    {
      v6 = 0;
    }

    v20 = a1 + 238;
    v21 = a1 + 270;
    do
    {
      v7 = v4 - 24;
      if (!v4)
      {
        v7 = 0;
      }

      v8 = v7 + 40;
      for (i = *(v7 + 48); i != v8; i = *(i + 8))
      {
        if (i)
        {
          v10 = i - 24;
        }

        else
        {
          v10 = 0;
        }

        if (*(v10 + 48) || (*(v10 + 23) & 0x20) != 0)
        {
          MetadataImpl = llvm::Instruction::getMetadataImpl();
          if (MetadataImpl)
          {
            if (v6)
            {
              v12 = MetadataImpl;
              v22[0] = v23;
              v22[1] = 0x300000000;
              v13 = *(MetadataImpl + 8);
              if (v13)
              {
                v14 = -8 * v13;
                do
                {
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22, *(v12 + v14));
                  v14 += 8;
                }

                while (v14);
              }

              v15 = *(v20 + *(*a1 - 24));
              llvm::ConstantInt::get();
              v16 = llvm::ValueAsMetadata::get();
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22, v16);
              v17 = *(v21 + *(*a1 - 24));
              llvm::MDTuple::getImpl();
              llvm::Instruction::setMetadata();
              if (v22[0] != v23)
              {
                free(v22[0]);
              }
            }

            else
            {
              llvm::Instruction::setMetadata();
            }
          }
        }
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v19);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMTargetLowerer::buildClampColor(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5)
{
  v42 = *a2;
  v43 = *(a2 + 16);
  if (v43)
  {
    llvm::MetadataTracking::track();
  }

  v44 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v42);
  if (v43)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a4 + 20) == 1 && (*a3 == *(a1 + 312) || *a3 == *(a1 + 296)))
  {
    if (*a4 == *(a4 + 4) && *(a4 + 8) == *(a4 + 12))
    {
      v10 = *a3;
      v11 = llvm::ConstantFP::get();
      v12 = *(a4 + 8);
      v13 = llvm::ConstantFP::get();
      v39 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v40, (a1 + 8));
      v41 = *(a1 + 104);
      a3 = (*(*a1 + 80))(a1, &v39, a3, v11, v13, a5);
      if (v40)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    else
    {
      v14 = AGCLLVMBuilder::subrangeVector(a1, a3, 0, 3, 1);
      v46 = 257;
      v15 = *(a1 + 200);
      v16 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v16, v45);
      v18 = *v14;
      v19 = *a4;
      v20 = llvm::ConstantFP::get();
      v21 = *v14;
      v22 = *(a4 + 8);
      v23 = llvm::ConstantFP::get();
      v24 = *Element;
      v25 = *(a4 + 4);
      v26 = llvm::ConstantFP::get();
      v27 = *Element;
      v28 = *(a4 + 12);
      v29 = llvm::ConstantFP::get();
      v36 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (a1 + 8));
      v38 = *(a1 + 104);
      v30 = (*(*a1 + 80))(a1, &v36, v14, v20, v23, a5);
      if (v37)
      {
        llvm::MetadataTracking::untrack();
      }

      v33 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
      v35 = *(a1 + 104);
      v31 = (*(*a1 + 80))(a1, &v33, Element, v26, v29, a5);
      if (v34)
      {
        llvm::MetadataTracking::untrack();
      }

      return AGCLLVMBuilder::combineRGBA(a1, v30, v31);
    }
  }

  return a3;
}

uint64_t AGCLLVMBuilder::subrangeVector(AGCLLVMBuilder *this, llvm::Value *a2, unsigned int a3, int a4, int a5)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a4 == 1 && a5)
  {
    LOWORD(v24) = 257;
    v7 = *(this + 25);
    v8 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v8, v23);
  }

  else
  {
    v10 = *(this + 25);
    v23[0] = llvm::ConstantInt::get();
    v11 = *(this + 25);
    v23[1] = llvm::ConstantInt::get();
    v12 = *(this + 25);
    v23[2] = llvm::ConstantInt::get();
    v13 = *(this + 25);
    v23[3] = llvm::ConstantInt::get();
    v14 = *(this + 25);
    v24 = llvm::ConstantInt::get();
    v15 = *(this + 25);
    v25 = llvm::ConstantInt::get();
    v16 = *(this + 25);
    v26 = llvm::ConstantInt::get();
    v17 = *(this + 25);
    v27 = llvm::ConstantInt::get();
    v18 = llvm::ConstantVector::get();
    v19 = *a2;
    v20 = llvm::UndefValue::get();
    v22[16] = 257;
    result = llvm::IRBuilderBase::CreateShuffleVector((this + 8), a2, v20, v18, v22);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMTargetLowerer::buildFClamp(void *a1, uint64_t a2, llvm::Value *a3, llvm::Value *a4, llvm::Value *a5, char a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v20 = a1;
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  v24 = a6;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    InsertElement = llvm::UndefValue::get();
    *v34 = 0u;
    v35 = 0u;
    *v32 = 0u;
    v33 = 0u;
    *v30 = 0u;
    v31 = 0u;
    AGCLLVMBuilder::unboxVector(a1, a3, v34);
    AGCLLVMBuilder::unboxVector(a1, a4, v32);
    AGCLLVMBuilder::unboxVector(a1, a5, v30);
    v13 = *(*a3 + 32);
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = AGCLLVMTargetLowerer::buildFClamp(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(&v20, v34[i], v32[i], v30[i]);
        v29 = 257;
        v16 = a1[25];
        v17 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v15, v17, v28);
      }
    }
  }

  else
  {
    InsertElement = AGCLLVMTargetLowerer::buildFClamp(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(&v20, a3, a4, a5);
  }

  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

uint64_t AGCLLVMTargetLowerer::buildFClamp(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (*(a4 + 16) == 17)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (!a3 || *(a3 + 16) != 17)
  {
    goto LABEL_16;
  }

  v10 = *(a3 + 32);
  v11 = llvm::APFloatBase::PPCDoubleDouble(a1) == v10 ? *(a3 + 40) : a3 + 24;
  if ((*(v11 + 28) & 7) != 3 || v9 == 0)
  {
    goto LABEL_16;
  }

  v30 = 0;
  v13 = llvm::detail::IEEEFloat::IEEEFloat(v31, 1.0);
  v14 = llvm::APFloatBase::IEEEdouble(v13);
  MEMORY[0x20F330F50](v32, v31, v14);
  llvm::detail::IEEEFloat::~IEEEFloat(v31);
  v15 = *(v9 + 32);
  llvm::APFloat::convert();
  isExactlyValue = llvm::ConstantFP::isExactlyValue();
  llvm::APFloat::Storage::~Storage(v32);
  if (isExactlyValue)
  {
    v27 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (v8 + 8));
    v29 = *(v8 + 104);
    v17 = (*(*v8 + 40))(v8, &v27, a2, a1[40]);
    if (v28)
    {
LABEL_19:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
LABEL_16:
    v24 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (v8 + 8));
    v26 = *(v8 + 104);
    v18 = (*(*v8 + 56))(v8, &v24, a2, a3, a1[40]);
    if (v25)
    {
      llvm::MetadataTracking::untrack();
    }

    v21 = *(v8 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v22, (v8 + 8));
    v23 = *(v8 + 104);
    v17 = (*(*v8 + 48))(v8, &v21, v18, a4, a1[40]);
    if (v22)
    {
      goto LABEL_19;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildFMin(const char **a1, __int128 *a2, llvm::Value *a3, llvm::Value *a4)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildFMinFMax(a1, &v10, a3, a4, a1[318], a1[319]);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

void llvm::APFloat::Storage::~Storage(llvm::APFloat::Storage *this)
{
  v2 = *this;
  if (llvm::APFloatBase::PPCDoubleDouble(this) == v2)
  {
    v3 = *(this + 1);
    *(this + 1) = 0;
    if (v3)
    {
      v4 = v3 - 16;
      v5 = *(v3 - 8);
      if (v5)
      {
        v6 = (v3 + 32 * v5 - 24);
        v7 = -32 * v5;
        do
        {
          llvm::APFloat::Storage::~Storage(v6);
          v6 = (v8 - 32);
          v7 += 32;
        }

        while (v7);
      }

      MEMORY[0x20F331DA0](v4, 0x1072C801E5F02E8);
    }
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(this);
  }
}

llvm::Value *AGCLLVMTargetLowerer::buildSaturate(uint64_t a1, uint64_t a2, llvm::Value *a3, int a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v8 = *(a2 + 24);
  v24 = v8;
  v25 = a4;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    *v33 = 0u;
    v34 = 0u;
    AGCLLVMBuilder::unboxVector(a1, a3, v33);
    v9 = *(*a3 + 32);
    if (v9)
    {
      v10 = 0;
      InsertElement = 0;
      do
      {
        v12 = v33[v10];
        v29 = v22;
        v30 = v23;
        if (v23)
        {
          llvm::MetadataTracking::track();
        }

        v31 = v24;
        if (v25 == 1 && *(a1 + 1984) != 1)
        {
          v13 = 1320;
        }

        else
        {
          v13 = 1312;
        }

        v14 = AGCLLVMTargetLowerer::CallFPIntrinsic(a1, &v29, v12, *(a1 + v13));
        if (v30)
        {
          llvm::MetadataTracking::untrack();
        }

        if (!InsertElement)
        {
          v15 = *v14;
          v16 = *(*a3 + 32);
          llvm::FixedVectorType::get();
          InsertElement = llvm::UndefValue::get();
        }

        v32 = 257;
        v17 = *(a1 + 200);
        v18 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v14, v18, &v29);
        ++v10;
      }

      while (v9 != v10);
    }

    else
    {
      InsertElement = 0;
    }

    goto LABEL_32;
  }

  v29 = v22;
  v30 = v23;
  if (v23)
  {
    llvm::MetadataTracking::track();
    v31 = v24;
    if ((a4 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = v8;
    if (!a4)
    {
LABEL_28:
      v19 = 1312;
      goto LABEL_30;
    }
  }

  if (*(a1 + 1984) == 1)
  {
    goto LABEL_28;
  }

  v19 = 1320;
LABEL_30:
  InsertElement = AGCLLVMTargetLowerer::CallFPIntrinsic(a1, &v29, a3, *(a1 + v19));
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

LABEL_32:
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v20 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

llvm::Value *AGCLLVMTargetLowerer::CallFPIntrinsic(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v30 = a3;
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a3;
  std::string::basic_string[abi:nn200100]<0>(&v26, a4);
  std::string::append(&v26, ".");
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    std::to_string(&v25, *(v8 + 32));
    v10 = std::string::insert(&v25, 0, "v");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v23 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v23 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v23 >= 0)
    {
      v13 = HIBYTE(v23);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v26, v12, v13);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v9 = *(v8 + 8);
  }

  v14 = v9 & 0xFE;
  v15 = v8;
  if (v14 == 18)
  {
    v15 = **(v8 + 16);
  }

  if (v15 == *(a1 + 168))
  {
    v16 = "f32";
  }

  else
  {
    v16 = "f16";
  }

  std::string::append(&v26, v16);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v26;
  }

  else
  {
    v17 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v17, size, v8, v8);
  v24 = 257;
  v20 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v19 + 24), v19, &v30, 1, __p);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t AGCLLVMBuilder::combineRGBA(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Value *a3)
{
  v5 = AGCLLVMBuilder::extendVector(this, a2, 4);
  v10 = 257;
  v6 = *(this + 25);
  v7 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((this + 8), v5, a3, v7, v9);
}

llvm::Value *AGCLLVMBuilder::extendVector(AGCLLVMBuilder *this, llvm::Value *a2, int a3)
{
  v3 = a2;
  v24 = *MEMORY[0x277D85DE8];
  if ((*(*a2 + 8) & 0xFE) != 0x12)
  {
    llvm::FixedVectorType::get();
    v13 = llvm::UndefValue::get();
    v19 = 257;
    v14 = *(this + 25);
    v15 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v13, v3, v15, v18);
    goto LABEL_5;
  }

  if (*(*a2 + 32) != a3)
  {
    v5 = *(this + 25);
    v20 = llvm::ConstantInt::get();
    v6 = *(this + 25);
    v21 = llvm::ConstantInt::get();
    v7 = *(this + 25);
    v22 = llvm::ConstantInt::get();
    v8 = *(this + 25);
    v23 = llvm::ConstantInt::get();
    v9 = llvm::ConstantVector::get();
    v10 = *v3;
    v11 = llvm::UndefValue::get();
    v19 = 257;
    InsertElement = llvm::IRBuilderBase::CreateShuffleVector((this + 8), v3, v11, v9, v18);
LABEL_5:
    v3 = InsertElement;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t AGCLLVMGen3TargetLowerer::buildReadOutputPartitionFromState(AGCLLVMBuilder *a1, uint64_t a2, unsigned int *a3, uint64_t a4, llvm::Value *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *a2;
  v34 = *(a2 + 16);
  if (v34)
  {
    llvm::MetadataTracking::track();
  }

  v35 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v33);
  if (v34)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = *(a1 + 482);
  v16 = *(a1 + 24);
  v17 = llvm::ConstantInt::get();
  v32 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), a5, v17, v31);
  v19 = *(a6 + 8);
  v20 = a6;
  if ((v19 & 0xFE) == 0x12)
  {
    v20 = **(a6 + 16);
    v19 = *(v20 + 8);
  }

  if ((v19 & 0xFFFFF0FF) == 0xD)
  {
    v20 = *(a1 + 24);
  }

  if (*(a6 + 32) >= a3[1])
  {
    v21 = a3[1];
  }

  else
  {
    v21 = *(a6 + 32);
  }

  if (v21 - 2 <= 2)
  {
    v22 = dword_20E71605C[v21 - 2];
    v20 = llvm::FixedVectorType::get();
  }

  v30 = v20;
  v23 = *a3;
  v29[0] = AGCLLVMGen3TargetLowerer::getUSCFormatFromState(*a3, *(a3 + 16));
  v29[1] = v23;
  v29[2] = ~(-1 << v21);
  v29[3] = v21;
  v24 = (*(*a1 + 1688))(a1, v29, *(a3 + 4), a4, v20, Mul, 0, 0, a7, a8, *(a3 + 18));
  v25 = AGCLLVMBuilder::extendVector(a1, v24, *(a6 + 32));
  if ((*a3 & 0xFFFFFFFE) == 4)
  {
    v26 = *(a1 + 40);
    v32 = 257;
    return llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v25, v26, v31);
  }

  return v25;
}

uint64_t llvm::IRBuilderBase::CreateMul(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 88))(*(this + 9));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t AGCLLVMGen3TargetLowerer::getUSCFormatFromState(AGCLLVMGen3TargetLowerer *this, int a2)
{
  v2 = this - 1;
  result = 5;
  switch(v2)
  {
    case 0:
      result = 10;
      break;
    case 1:
      return result;
    case 2:
      if (a2)
      {
        result = 10;
      }

      else
      {
        result = 4;
      }

      break;
    case 5:
      result = 7;
      break;
    case 6:
      result = 6;
      break;
    case 7:
    case 8:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 17:
    case 21:
      result = 1;
      break;
    case 9:
    case 10:
    case 16:
      result = 2;
      break;
    case 18:
      result = 8;
      break;
    case 19:
      result = 13;
      break;
    case 20:
      result = 12;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer *a1, unsigned __int16 *a2, __int16 a3, uint64_t a4, llvm::Type ***a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v15 = 0;
  v57 = a3;
  v55 = a6;
  v56 = a4;
  v53 = a8;
  v54 = a7;
  v16 = 0;
  v17 = 0;
  if (a4 && a6)
  {
    if (*(a6 + 16) == 16 && *(a4 + 16) == 16)
    {
      v19 = (a6 + 24);
      if (*(a6 + 32) >= 0x41u)
      {
        v19 = *v19;
      }

      v17 = *v19;
      v20 = (a4 + 24);
      if (*(a4 + 32) >= 0x41u)
      {
        v20 = *v20;
      }

      v16 = *v20;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }
  }

  v21 = a11;
  v52 = (*(*a1 + 1672))(a1, *a2, *(a2 + 1), 0, 0, 0);
  v22 = *(a2 + 1);
  v51 = v22;
  if (v52)
  {
    v23 = *(a1 + 19);
    if ((*(v22 + 8) & 0xFE) == 0x12)
    {
      v24 = *(v22 + 32);
      v23 = llvm::FixedVectorType::get();
    }

    v51 = v23;
  }

  v50 = a7 != 0;
  v25 = *(a1 + 24);
  LOWORD(v42) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a6, v25, v41);
  v48[0] = a1;
  v48[1] = &v51;
  v48[2] = a2;
  v48[3] = &v54;
  v48[4] = &a10;
  v48[5] = &v50;
  v48[6] = &v53;
  v48[7] = &Cast;
  v48[8] = &v52;
  v41[0] = a1;
  v41[1] = &v54;
  v41[2] = &a10;
  v41[3] = &v50;
  v42 = &v57;
  v43 = a2;
  v44 = &v55;
  v45 = &v56;
  v46 = &v53;
  p_Cast = &Cast;
  if (((v15 | v21) & 1) == 0)
  {
    v28 = *(a1 + 7);
    v29 = *(a1 + 57);
    v39 = "OffsetLessThanSize_Read";
    v40 = 259;
    v30 = *(v28 + 56);
    operator new();
  }

  llvm::UndefValue::get();
  if (v17 < v16)
  {
    v26 = v15;
  }

  else
  {
    v26 = 0;
  }

  if ((v26 & 1) != 0 || v21)
  {
    v36 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v37, (a1 + 8));
    v38 = *(a1 + 26);
    v31 = *(a1 + 24);
    v32 = llvm::ConstantInt::get();
    v33 = (*(*a1 + 1680))(a1, &v36, v32, a9);
    if (v37)
    {
      llvm::MetadataTracking::untrack();
    }

    v27 = AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(v48, v33);
  }

  else
  {
    v27 = AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_1::operator()(v41);
  }

  return AGCLLVMGen3TargetLowerer::reconcileLLVMReadIntrinsicResultWithIR(a1, a5, *(a2 + 1), v27);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5)
{
  v5 = *(a3 + 8) & 0xFE;
  if (*(a1 + 1889) == 1)
  {
    v6 = a3;
    if (v5 == 18)
    {
      v6 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = a2;
    }

    if (a2 == 12)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    if (a2 == 13)
    {
      v9 = 15;
    }

    else
    {
      v9 = v8;
    }

    if (a5)
    {
      v9 = a2;
    }

    if (v6 == *(a1 + 168) && a4 != 0)
    {
      a2 = v9;
    }
  }

  if (v5 == 18)
  {
    a3 = **(a3 + 16);
  }

  v12 = a2 == 1 && a3 == *(a1 + 168);
  return v12 | (a2 << 16);
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v34[7] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  std::string::basic_string[abi:nn200100]<0>(&v27, *(*a1 + 1632));
  AGCLLVMGen3TargetLowerer::getReadSuffix(&__p, v4, **(a1 + 8), *(*(a1 + 16) + 6));
  v33[0] = v34;
  v33[1] = 0x700000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[24]);
  v30 = v32;
  v31 = 0x700000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, a2);
  v5 = *(*(a1 + 16) + 4);
  v6 = v4[24];
  v7 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v7);
  v8 = **(a1 + 24);
  if (!v8)
  {
    v8 = **(a1 + 32);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v8);
  v9 = **(a1 + 40);
  v10 = v4[24];
  v11 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v11);
  if (**(a1 + 48))
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[30]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, **(a1 + 48));
    std::string::append(&v27, "coords.");
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v33, v4[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, **(a1 + 56));
  v12 = v4[24];
  v13 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v13);
  v14 = v4[24];
  v15 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v30, v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v27, p_p, size);
  v18 = **(a1 + 8);
  llvm::FunctionType::get();
  v19 = v4[54];
  llvm::Module::getOrInsertFunction();
  v29 = 257;
  v21 = llvm::IRBuilderBase::CreateCall((v4 + 1), *(v20 + 24), v20, v30, v31, v28);
  v22 = v4[57];
  v28[0] = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v23 = AGCLLVMGen3TargetLowerer::convertFromF16(v4, v21, **(a1 + 64));
  if (v30 != v32)
  {
    free(v30);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void AGCLLVMGen3TargetLowerer::getReadSuffix(std::string *this, llvm::Type *a2, uint64_t a3, int a4)
{
  v5 = AGCLLVMGen3TargetLowerer::getReadSuffix(llvm::Type *,unsigned short)::num_str[a4];
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    a3 = **(a3 + 16);
  }

  if (*(a2 + 24) == a3)
  {
    v6 = "i16";
  }

  else if (*(a2 + 25) == a3)
  {
    v6 = "i32";
  }

  else if (*(a2 + 19) == a3)
  {
    v6 = "f16";
  }

  else
  {
    v6 = "f32";
  }

  std::string::basic_string[abi:nn200100]<0>(&v8, v6);
  v7 = std::string::insert(&v8, 0, v5);
  *this = *v7;
  v7->__r_.__value_.__r.__words[0] = 0;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

llvm::Value *AGCLLVMGen3TargetLowerer::convertFromF16(AGCLLVMGen3TargetLowerer *this, llvm::Value *a2, int a3)
{
  if (!a3)
  {
    return a2;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = *(*a2 + 32);
    v6 = *(this + 21);
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v20 = 257;
        v9 = *(this + 25);
        v10 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v10, v19);
        v12 = *(this + 21);
        v18[16] = 257;
        FPExt = llvm::IRBuilderBase::CreateFPExt((this + 8), Element, v12, v18);
        v20 = 257;
        v14 = *(this + 25);
        v15 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, FPExt, v15, v19);
      }
    }
  }

  else
  {
    v16 = *(this + 21);
    v20 = 257;
    return llvm::IRBuilderBase::CreateFPExt((this + 8), a2, v16, v19);
  }

  return InsertElement;
}

llvm::Value *AGCLLVMGen3TargetLowerer::reconcileLLVMReadIntrinsicResultWithIR(AGCLLVMGen3TargetLowerer *this, llvm::Type ***a2, llvm::Type *a3, llvm::Value *a4)
{
  v6 = a2;
  v7 = *(a2 + 8);
  if (v7 == 15)
  {
    v8 = a2[2];
    v6 = *v8;
    v7 = *(*v8 + 8);
  }

  if ((v7 & 0xFE) == 0x12)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = 1;
  }

  v10 = *(a3 + 2);
  if ((v10 & 0xFE) == 0x12)
  {
    v11 = *(a3 + 8);
  }

  else
  {
    v11 = 1;
  }

  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v6);
  v13 = llvm::Type::getScalarSizeInBits(a3);
  if ((v7 & 0xFE) == 0x12)
  {
    v7 = *(**(v6 + 2) + 8);
  }

  if (v7 != 13 || ((v10 & 0xFE) != 0x12 ? (v14 = v10) : (v14 = *(**(a3 + 2) + 8)), v14 != 13 || v13 * v11 != ScalarSizeInBits * v9))
  {
    if (v9 >= v11)
    {
      v15 = this;
      if (v11 >= v9)
      {
        goto LABEL_22;
      }

      v16 = v13;
      v18 = AGCLLVMBuilder::extendVector(this, a4, v9);
      v17 = AGCLLVMBuilder::fillUnwrittenChannels(this, v18, ~(-1 << v11));
    }

    else
    {
      v15 = this;
      v16 = v13;
      v17 = AGCLLVMBuilder::subrangeVector(this, a4, 0, v9, 1);
    }

    a4 = v17;
    v13 = v16;
LABEL_22:
    if (ScalarSizeInBits < v13)
    {
      v22 = 257;
      return llvm::IRBuilderBase::CreateCast(v15 + 8, 38, a4, v6, v21);
    }
  }

  return a4;
}

uint64_t AGCLLVMStatelessFragmentObject::buildBlendEquation(uint64_t *a1, llvm::Value *a2, llvm::Type **a3, llvm::Value *a4, llvm::Value *a5, int a6, int a7, int a8, int a9, uint64_t a10, char a11, unsigned __int8 a12)
{
  v18 = a12;
  v19 = (a1 + *(*a1 - 24));
  if (a12)
  {
    Element = AGCLLVMBuilder::subrangeVector((v19 + 213), a2, 0, 3, 1);
    v21 = AGCLLVMBuilder::subrangeVector((a1 + *(*a1 - 24) + 1704), a4, 0, 3, 1);
  }

  else
  {
    v59 = 257;
    v22 = v19[238];
    v23 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((v19 + 214), a2, v23, v58);
    v24 = a1 + *(*a1 - 24);
    v59 = 257;
    v25 = *(v24 + 238);
    v26 = llvm::ConstantInt::get();
    v27 = (v24 + 1712);
    v18 = 0;
    v21 = llvm::IRBuilderBase::CreateExtractElement(v27, a4, v26, v58);
  }

  v28 = v21;
  if (a7 == 6)
  {
    v29 = **(*a2 + 16);
    v30 = llvm::ConstantFP::get();
    if (v18)
    {
      FMul = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 3, v30);
    }

    else
    {
      FMul = v30;
    }

    goto LABEL_10;
  }

  FMul = Element;
  if ((a7 - 1) >= 2)
  {
LABEL_10:
    v48 = v28;
    v31 = a1 + *(*a1 - 24);
    v32 = AGCLLVMStatelessFragmentObject::buildBlendFactor(a1, a2, a3, a4, a5, a6, a8, a10, a11, v18);
    v59 = 257;
    FMul = llvm::IRBuilderBase::CreateFMul((v31 + 1712), FMul, v32, v58);
    v33 = a1 + *(*a1 - 24);
    v34 = AGCLLVMStatelessFragmentObject::buildBlendFactor(a1, a2, a3, a4, a5, a6, a9, a10, a11, v18);
    v59 = 257;
    v28 = llvm::IRBuilderBase::CreateFMul((v33 + 1712), v48, v34, v58);
  }

  v35 = 0;
  if (a7 > 3)
  {
    if (a7 == 4)
    {
      v41 = a1 + *(*a1 - 24);
      v59 = 257;
      v42 = (v41 + 1712);
      v43 = FMul;
      v36 = v28;
    }

    else
    {
      v36 = FMul;
      if (a7 != 5)
      {
        if (a7 == 6)
        {
LABEL_19:
          v37 = a1 + *(*a1 - 24);
          v59 = 257;
          return llvm::IRBuilderBase::CreateFAdd((v37 + 1712), v36, v28, v58);
        }

        return v35;
      }

      v46 = a1 + *(*a1 - 24);
      v59 = 257;
      v42 = (v46 + 1712);
      v43 = v28;
    }

    return llvm::IRBuilderBase::CreateFSub(v42, v43, v36, v58);
  }

  if (a7 == 1)
  {
    v39 = a1 + *(*a1 - 24);
    v40 = *(v39 + 271);
    v55 = *(v39 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v56, (v39 + 1712));
    v57 = *(v39 + 452);
    v35 = (*(*v40 + 48))(v40, &v55, FMul, v28, 0);
    if (!v56)
    {
      return v35;
    }

LABEL_24:
    llvm::MetadataTracking::untrack();
    return v35;
  }

  if (a7 != 2)
  {
    v36 = FMul;
    if (a7 != 3)
    {
      return v35;
    }

    goto LABEL_19;
  }

  v44 = a1 + *(*a1 - 24);
  v45 = *(v44 + 271);
  v52 = *(v44 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v53, (v44 + 1712));
  v54 = *(v44 + 452);
  v35 = (*(*v45 + 56))(v45, &v52, FMul, v28, 0);
  if (v53)
  {
    goto LABEL_24;
  }

  return v35;
}

llvm::Value *AGCLLVMStatelessFragmentObject::buildBlendFactor(uint64_t *a1, llvm::Type **a2, llvm::Type **a3, llvm::Type **a4, llvm::Value *a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  v12 = a3;
  if ((a7 & 0xFFFFFFFC) == 0xC)
  {
    v16 = a1 + *(*a1 - 24);
    if (a6)
    {
      v17 = *(v16 + 267);
      GlobalVariable = llvm::Module::getGlobalVariable();
      if (!GlobalVariable)
      {
        GlobalVariable = llvm::User::operator new(0x58);
        v19 = *a1;
        v20 = a1 + *(*a1 - 24);
        v21 = *(v20 + 267);
        v22 = *(v20 + 252);
        v115[0] = "agc.blend_color";
        v116 = 259;
        v104 = *(*(a1 + *(v19 - 24) + 2168) + 972) | 0x100000000;
        llvm::GlobalVariable::GlobalVariable();
        llvm::GlobalObject::setSection();
        v23 = a1 + *(*a1 - 24);
        v24 = *(v23 + 268);
        v25 = AGCLLVMBuilder::buildGlobalMetadata((v23 + 1704), GlobalVariable);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, v25);
      }
    }

    else
    {
      v28 = *(v16 + 234);
      llvm::FixedVectorType::get();
      v105 = llvm::PointerType::get();
      v29 = a1 + *(*a1 - 24);
      v30 = *(v29 + 238);
      v31 = llvm::ConstantInt::get();
      v116 = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((v29 + 1712), v30, a5, v31, v115);
      v114 = 257;
      GlobalVariable = llvm::IRBuilderBase::CreatePointerCast(v29 + 214, GEP, v105, v113);
    }

    v33 = a1 + *(*a1 - 24);
    v34 = *(v33 + 252);
    v116 = 257;
    llvm::Type::isOpaquePointerTy(*GlobalVariable);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v33 + 214, v34, GlobalVariable, 0, v115);
    v36 = a1 + *(*a1 - 24);
    v37 = *(v36 + 271);
    v110 = *(v36 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v111, (v36 + 1712));
    v112 = *(v36 + 452);
    v38 = AGCLLVMTargetLowerer::buildClampColor(v37, &v110, AlignedLoad, a8, 0);
    if (v111)
    {
      llvm::MetadataTracking::untrack();
    }

    v26 = AGCLLVMObject::buildConvertColor(a1 + *(*a1 - 24), v38, *a2, a9, 1, 0);
    v12 = a3;
  }

  else
  {
    v26 = 0;
  }

  switch(a7)
  {
    case 1:
      v39 = **(*a2 + 2);
      goto LABEL_28;
    case 2:
      v63 = **(*a2 + 2);
LABEL_28:
      v64 = llvm::ConstantFP::get();
      goto LABEL_43;
    case 3:
      goto LABEL_25;
    case 4:
      v58 = a1 + *(*a1 - 24);
      v59 = *a2;
      v42 = llvm::ConstantFP::get();
      v116 = 257;
      v43 = (v58 + 1712);
      v44 = a2;
      goto LABEL_23;
    case 5:
      v51 = a1 + *(*a1 - 24);
      v116 = 257;
      v52 = *(v51 + 238);
      v53 = llvm::ConstantInt::get();
      v54 = (v51 + 1712);
      v55 = a2;
      goto LABEL_42;
    case 6:
      v45 = a1 + *(*a1 - 24);
      goto LABEL_31;
    case 7:
      v50 = 1;
      a2 = a4;
      if (!a10)
      {
        goto LABEL_34;
      }

      goto LABEL_45;
    case 8:
      v60 = a1 + *(*a1 - 24);
      v61 = *a4;
      v42 = llvm::ConstantFP::get();
      v116 = 257;
      v43 = (v60 + 1712);
      v44 = a4;
      goto LABEL_23;
    case 9:
      v100 = a1 + *(*a1 - 24);
      v116 = 257;
      v101 = *(v100 + 238);
      v53 = llvm::ConstantInt::get();
      v54 = (v100 + 1712);
      v55 = a4;
      goto LABEL_42;
    case 10:
      v45 = a1 + *(*a1 - 24);
      a2 = a4;
LABEL_31:
      v116 = 257;
      v67 = *(v45 + 238);
      v47 = llvm::ConstantInt::get();
      v48 = (v45 + 1712);
      v49 = a2;
      goto LABEL_37;
    case 11:
      v78 = a1 + *(*a1 - 24);
      v116 = 257;
      v79 = *(v78 + 238);
      v80 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((v78 + 1712), a2, v80, v115);
      v82 = a4;
      v83 = Element;
      v84 = a1 + *(*a1 - 24);
      v116 = 257;
      v85 = *(v84 + 238);
      v86 = llvm::ConstantInt::get();
      v87 = llvm::IRBuilderBase::CreateExtractElement((v84 + 1712), v82, v86, v115);
      v88 = *v87;
      v89 = llvm::ConstantFP::get();
      v116 = 257;
      FSub = llvm::IRBuilderBase::CreateFSub((v84 + 1712), v89, v87, v115);
      v91 = a1 + *(*a1 - 24);
      v92 = *(v91 + 271);
      v107 = *(v91 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v108, (v91 + 1712));
      v109 = *(v91 + 452);
      v93 = (*(*v92 + 48))(v92, &v107, v83, FSub, 0);
      if (v108)
      {
        llvm::MetadataTracking::untrack();
      }

      v94 = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 4, v93);
      v95 = a1 + *(*a1 - 24);
      v96 = **(*a2 + 2);
      v97 = llvm::ConstantFP::get();
      v116 = 257;
      v98 = *(v95 + 238);
      v99 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((v95 + 1712), v94, v97, v99, v115);
      goto LABEL_24;
    case 12:
      v50 = 1;
      a2 = v26;
      if (a10)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    case 13:
      v56 = a1 + *(*a1 - 24);
      v57 = *v26;
      v42 = llvm::ConstantFP::get();
      v116 = 257;
      v43 = (v56 + 1712);
      v44 = v26;
      goto LABEL_23;
    case 14:
      v68 = a1 + *(*a1 - 24);
      v116 = 257;
      v69 = *(v68 + 238);
      v53 = llvm::ConstantInt::get();
      v54 = (v68 + 1712);
      v55 = v26;
      goto LABEL_42;
    case 15:
      v45 = a1 + *(*a1 - 24);
      v116 = 257;
      v46 = *(v45 + 238);
      v47 = llvm::ConstantInt::get();
      v48 = (v45 + 1712);
      v49 = v26;
      goto LABEL_37;
    case 16:
      v50 = 1;
      a2 = v12;
      if (a10)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    case 17:
      v40 = a1 + *(*a1 - 24);
      v41 = *v12;
      v42 = llvm::ConstantFP::get();
      v116 = 257;
      v43 = (v40 + 1712);
      v44 = v12;
LABEL_23:
      InsertElement = llvm::IRBuilderBase::CreateFSub(v43, v42, v44, v115);
LABEL_24:
      a2 = InsertElement;
LABEL_25:
      v50 = 1;
      if (a10)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    case 18:
      v65 = a1 + *(*a1 - 24);
      v116 = 257;
      v66 = *(v65 + 238);
      v53 = llvm::ConstantInt::get();
      v54 = (v65 + 1712);
      v55 = v12;
LABEL_42:
      v64 = llvm::IRBuilderBase::CreateExtractElement(v54, v55, v53, v115);
      goto LABEL_43;
    case 19:
      v45 = a1 + *(*a1 - 24);
      v116 = 257;
      v74 = *(v45 + 238);
      v47 = llvm::ConstantInt::get();
      v48 = (v45 + 1712);
      v49 = v12;
LABEL_37:
      v75 = llvm::IRBuilderBase::CreateExtractElement(v48, v49, v47, v115);
      v76 = *v75;
      v77 = llvm::ConstantFP::get();
      v116 = 257;
      v64 = llvm::IRBuilderBase::CreateFSub((v45 + 1712), v77, v75, v115);
LABEL_43:
      a2 = v64;
      break;
    default:
      a2 = 0;
      break;
  }

  v50 = 0;
  if (a10)
  {
LABEL_45:
    v102 = (a1 + *(*a1 - 24) + 1704);
    if (v50)
    {
      return AGCLLVMBuilder::subrangeVector(v102, a2, 0, 3, 1);
    }

    else
    {
      return AGCLLVMBuilder::splat(v102, 3, a2);
    }
  }

LABEL_34:
  if (v50)
  {
    v70 = a1 + *(*a1 - 24);
    v116 = 257;
    v71 = *(v70 + 238);
    v72 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v70 + 1712), a2, v72, v115);
  }

  return a2;
}

llvm::Value *AGCLLVMBuilder::splat(AGCLLVMBuilder *this, int a2, llvm::Value *a3)
{
  if (a2 != 1)
  {
    v5 = *(this + 25);
    llvm::ConstantInt::get();
    Splat = llvm::ConstantDataVector::getSplat();
    v7 = *a3;
    llvm::FixedVectorType::get();
    v8 = llvm::UndefValue::get();
    v16 = 257;
    v9 = *(this + 25);
    v10 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), v8, a3, v10, v15);
    v12 = *InsertElement;
    v13 = llvm::UndefValue::get();
    v16 = 257;
    return llvm::IRBuilderBase::CreateShuffleVector((this + 8), InsertElement, v13, Splat, v15);
  }

  return a3;
}

uint64_t llvm::IRBuilderBase::CreateFMul(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 18, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    llvm::IRBuilderBase::setFPAttrs(a1, v7);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

void AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, llvm::Value *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14)
{
  v18 = a13;
  v66 = a3;
  v65 = a4;
  v62 = a7;
  v61 = a8;
  v60 = a13;
  if (*(a6 + 16) == 16)
  {
    v19 = a6;
  }

  else
  {
    v19 = 0;
  }

  if (*(a4 + 16) == 16)
  {
    v20 = a4;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  if (v21)
  {
    v26 = 0;
    v24 = 0;
  }

  else
  {
    v23 = (v19 + 24);
    if (*(v19 + 32) >= 0x41u)
    {
      v23 = *v23;
    }

    v24 = *v23;
    v25 = (v20 + 24);
    if (*(v20 + 32) >= 0x41u)
    {
      v25 = *v25;
    }

    v26 = *v25;
  }

  v27 = a14;
  v28 = a11;
  v29 = *(a1 + 192);
  LOWORD(v52) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a6, v29, v51);
  v30 = AGCLLVMBuilder::extendVector(a1, a5, 4);
  v31 = v30;
  v64 = v30;
  v32 = *(*v30 + 8);
  if ((v32 & 0xFE) == 0x12)
  {
    v32 = *(**(*v30 + 16) + 8);
  }

  if (v32 == 13)
  {
    v33 = v32 >> 8;
    v34 = *(a2 + 1);
    v35 = *(v34 + 8);
    if ((v35 & 0xFE) == 0x12)
    {
      v35 = *(**(v34 + 16) + 8);
    }

    if (v33 >= v35 >> 8)
    {
      v38 = v35 >> 8;
      if (v33 <= v38)
      {
        goto LABEL_30;
      }

      v31 = AGCLLVMBuilder::subrangeVector(a1, v30, 0, 4 / (v33 / v38), 1);
      v34 = *(a2 + 1);
      LOWORD(v52) = 257;
      v36 = a1 + 8;
      v37 = 49;
    }

    else
    {
      LOWORD(v52) = 257;
      v36 = a1 + 8;
      v37 = 39;
    }

    v64 = llvm::IRBuilderBase::CreateCast(v36, v37, v31, v34, v51);
  }

LABEL_30:
  v59[0] = a1;
  v59[1] = a2;
  v59[2] = &v60;
  v59[3] = &v64;
  v59[4] = &v62;
  v59[5] = &a12;
  v59[6] = &v61;
  v59[7] = &a10;
  v59[8] = &Cast;
  v51[0] = a1;
  v51[1] = a2;
  v51[2] = &v60;
  v51[3] = &v64;
  v52 = &v62;
  v53 = &a12;
  v54 = &v61;
  v55 = &v66;
  p_Cast = &Cast;
  v57 = &v65;
  v58 = &a10;
  if (((v22 | v27) & 1) == 0)
  {
    v40 = *(a1 + 56);
    v41 = *(a1 + 456);
    v49 = "OffsetLessThanSize_Write";
    v50 = 259;
    v42 = *(v40 + 56);
    operator new();
  }

  if (v24 < v26)
  {
    v39 = v22;
  }

  else
  {
    v39 = 0;
  }

  if ((v39 & 1) != 0 || v27)
  {
    (*(*a1 + 1672))(a1, *a2, *(a2 + 1), 1, 0, v18);
    v46 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (a1 + 8));
    v48 = *(a1 + 104);
    v43 = *(a1 + 192);
    v44 = llvm::ConstantInt::get();
    v45 = (*(*a1 + 1680))(a1, &v46, v44, v28);
    if (v47)
    {
      llvm::MetadataTracking::untrack();
    }

    AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_0::operator()(v59, v45);
  }

  else
  {
    AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_1::operator()(v51);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 24) = 0;
  *(a9 + 16) = 0;
}

uint64_t llvm::IRBuilderBase::foldConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (*(a3 + 16) >= 0x15u)
  {
    a3 = 0;
  }

  if (*(a4 + 16) >= 0x15u)
  {
    a4 = 0;
  }

  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v5 = (*(**(a1 + 72) + 184))(*(a1 + 72));
    if (v5)
    {
      v9 = *(v5 + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
    }
  }

  return v5;
}

uint64_t llvm::IRBuilderBase::CreateFSub(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 16, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    llvm::IRBuilderBase::setFPAttrs(a1, v7);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

uint64_t llvm::IRBuilderBase::CreateFAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = llvm::IRBuilderBase::foldConstant(a1, 14, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    llvm::IRBuilderBase::setFPAttrs(a1, v7);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v7, a4);
  }

  return v7;
}

void AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_0::operator()(void *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = (*(**a1 + 1672))(*a1, *a1[1], *(a1[1] + 8), 1, 0, *a1[2]);
  if (v5)
  {
    v6 = *(a1[1] + 8);
    if ((*(v6 + 8) & 0xFE) == 0x12)
    {
      v7 = *(v4 + 152);
      v8 = *(v6 + 32);
      llvm::FixedVectorType::get();
      InsertElement = llvm::UndefValue::get();
      if (*(*(a1[1] + 8) + 32))
      {
        v10 = 0;
        do
        {
          v11 = *a1[3];
          v50 = 257;
          v12 = *(v4 + 200);
          v13 = llvm::ConstantInt::get();
          Element = llvm::IRBuilderBase::CreateExtractElement((v4 + 8), v11, v13, v48);
          v15 = *(v4 + 152);
          v47[8] = 257;
          FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v4 + 8), Element, v15, &v45);
          v50 = 257;
          v17 = *(v4 + 200);
          v18 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((v4 + 8), InsertElement, FPTrunc, v18, v48);
          ++v10;
        }

        while (v10 < *(*(a1[1] + 8) + 32));
      }

      *a1[3] = InsertElement;
    }

    else
    {
      v19 = *a1[3];
      v20 = *(v4 + 152);
      v50 = 257;
      *a1[3] = llvm::IRBuilderBase::CreateFPTrunc((v4 + 8), v19, v20, v48);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v42, *(v4 + 1640));
  AGCLLVMGen3TargetLowerer::getWriteSuffix(__p, v4, **a1[3]);
  v48[0] = v49;
  v48[1] = 0x800000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, **a1[3]);
  v45 = v47;
  v46 = 0x800000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, a2);
  v21 = *(a1[1] + 4);
  v22 = *(v4 + 192);
  v23 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, v23);
  v24 = *a1[4];
  if (!v24)
  {
    v24 = *a1[5];
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, v24);
  v25 = *a1[6];
  v26 = *(v4 + 192);
  v27 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, v27);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, *a1[3]);
  if (*a1[7])
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 240));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, *a1[7]);
    std::string::append(&v42, "coords.");
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v48, *(v4 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, *a1[8]);
  v28 = *(v4 + 192);
  v29 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, v29);
  v30 = *(v4 + 192);
  v31 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v45, v31);
  if ((v41 & 0x80u) == 0)
  {
    v32 = __p;
  }

  else
  {
    v32 = __p[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v33 = v41;
  }

  else
  {
    v33 = __p[1];
  }

  std::string::append(&v42, v32, v33);
  v34 = *(v4 + 144);
  llvm::FunctionType::get();
  v35 = *(v4 + 432);
  llvm::Module::getOrInsertFunction();
  v37 = v36;
  if ((v5 & 0xFFFF0000) != 0x20000 || llvm::Type::getScalarSizeInBits(**a1[3]) != 16)
  {
    v44 = 257;
    llvm::IRBuilderBase::CreateCall(v4 + 8, *(v37 + 24), v37, v45, v46, v43);
    v38 = *(v4 + 456);
    v43[0] = llvm::MDString::get();
    llvm::MDTuple::getImpl();
    llvm::Instruction::setMetadata();
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v39 = *MEMORY[0x277D85DE8];
}

_BYTE *AGCLLVMGen3TargetLowerer::getWriteSuffix(AGCLLVMGen3TargetLowerer *this, llvm::Type *a2, uint64_t a3)
{
  if ((*(a3 + 8) & 0xFE) == 0x12)
  {
    a3 = **(a3 + 16);
  }

  if (*(a2 + 24) == a3)
  {
    v3 = "i16";
  }

  else if (*(a2 + 25) == a3)
  {
    v3 = "i32";
  }

  else if (*(a2 + 19) == a3)
  {
    v3 = "f16";
  }

  else
  {
    v3 = "f32";
  }

  return std::string::basic_string[abi:nn200100]<0>(this, v3);
}

void AGCLLVMAGPFragmentShaderGen6::setupPerPrimitiveVaryings(AGCLLVMAGPFragmentShaderGen6 *this)
{
  v91 = *MEMORY[0x277D85DE8];
  if (*(this + 1982))
  {
    v2 = this + *(*this - 24);
    v75 = *(v2 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v76, (v2 + 1712));
    v77 = *(v2 + 452);
    v3 = *(this + 798);
    if (v3 && v3[16] >= 0x1Cu)
    {
      v4 = this + *(*this - 24);
      NextNonDebugInstruction = llvm::Instruction::getNextNonDebugInstruction(v3);
      llvm::IRBuilderBase::SetInsertPoint((v4 + 1712), NextNonDebugInstruction);
    }

    else
    {
      v6 = *(*(this + 20) + 80);
      if (v6)
      {
        v7 = (v6 - 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = this + *(*this - 24);
      FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v7);
      llvm::IRBuilderBase::SetInsertPoint((v8 + 1712), v7, FirstInsertionPt);
    }

    memset(__p, 0, 20);
    v79 = 0;
    v80 = 0u;
    v81[0] = v82;
    v81[1] = 0x500000000;
    llvm::SmallVectorImpl<unsigned int>::assign(v81, 5uLL, -559038737);
    *__p = xmmword_20E70C560;
    LODWORD(__p[2]) = 0;
    *&v80 = AGCLLVMUserFragmentShader::setupInterpolation(this, 7, 0, 1);
    *(&v80 + 1) = v10;
    v11 = AGCLLVMUserFragmentShader::replaceInterpolation(this, __p);
    v12 = this + *(*this - 24);
    v74 = 257;
    v13 = *v11;
    v14 = llvm::ConstantInt::get();
    Shl = llvm::IRBuilderBase::CreateShl((v12 + 1712), v11, v14, v73);
    v16 = this + *(*this - 24);
    v17 = *(v16 + 239);
    v74 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 39, Shl, v17, v73);
    if (v81[0] != v82)
    {
      free(v81[0]);
    }

    AGCLLVMAGPFragmentShader::getFragmentVarying(__p, this, *(this + *(*this - 24) + 1904), "agc.per_prim.primitive_address", 0x1EuLL, 1, 3, 1, 7, 0);
    v19 = AGCLLVMUserFragmentShader::replaceInterpolation(this, __p);
    v20 = this + *(*this - 24);
    v21 = *(v20 + 239);
    v74 = 257;
    v22 = llvm::IRBuilderBase::CreateCast((v20 + 1712), 39, v19, v21, v73);
    v23 = this + *(*this - 24);
    v74 = 257;
    v24 = *v22;
    v25 = llvm::ConstantInt::get();
    v26 = llvm::IRBuilderBase::CreateShl((v23 + 1712), v22, v25, v73);
    if (v81[0] != v82)
    {
      free(v81[0]);
    }

    v27 = this + *(*this - 24);
    LOWORD(v80) = 257;
    v65 = llvm::IRBuilderBase::CreateOr((v27 + 1712), Cast, v26, __p);
    *(this + 7044) = 1;
    if (!*(this + 986))
    {
      AGCLLVMAGPFragmentShaderGen3::getAmplificationVarying(__p, this, *(this + *(*this - 24) + 1904), "air.amplification_id", 0x14uLL);
      v28 = AGCLLVMUserFragmentShader::replaceInterpolation(this, __p);
      llvm::ValueHandleBase::operator=((this + 7872), v28);
      *(this + 6460) = 1;
      if (v81[0] != v82)
      {
        free(v81[0]);
      }
    }

    v29 = *this;
    v30 = *(*(this + *(*this - 24) + 2168) + 1878);
    memset(__p, 0, sizeof(__p));
    v79 = &v80 + 8;
    *&v80 = 0x800000000;
    v82[61] = 0xFFFFFFFFLL;
    v83 = v30;
    v89[7] = 0;
    memset(v84, 0, sizeof(v84));
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    memset(v89, 0, 26);
    v90 = 1;
    v31 = *(this + 1630);
    if (v31)
    {
      v32 = *(this + 814);
      v33 = v31 << 6;
      do
      {
        GenericVaryingAllocator::addVarying(__p, v32);
        v32 += 64;
        v33 -= 64;
      }

      while (v33);
      v29 = *this;
    }

    GenericVaryingAllocator::allocate(__p, *(this + *(v29 - 24) + 2168));
    v72[0] = 0;
    v72[1] = 4 * DWORD1(v85);
    if (v83)
    {
      v34 = (HIDWORD(v86) + 1) >> 1;
    }

    else
    {
      v34 = HIDWORD(v86);
    }

    v35 = v34 + DWORD1(v85);
    v71[0] = 4 * v35;
    v71[1] = 4 * (v35 + DWORD1(v88));
    v36 = this + *(*this - 24);
    v37 = *(v36 + 238);
    v38 = llvm::ConstantInt::get();
    v39 = this + *(*this - 24);
    v40 = *(this + 986);
    v41 = *(v39 + 238);
    v74 = 257;
    v42 = llvm::IRBuilderBase::CreateCast((v39 + 1712), 39, v40, v41, v73);
    v70 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v36 + 1712), v38, v42, v69);
    v43 = *(this + 1982);
    if (v43)
    {
      v44 = *(this + 990);
      v45 = v44 + 16 * v43;
      v46 = this + 1712;
      do
      {
        if (v80)
        {
          v47 = v79;
          v48 = v80 << 6;
          while (*(v47 + 4) != *v44)
          {
            v47 += 64;
            v48 -= 64;
            if (!v48)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
LABEL_29:
          v47 = 0;
        }

        v49 = *(v44 + 8);
        v50 = v72;
        if (v47[57])
        {
          v50 = v71;
        }

        v51 = v50[v47[56]];
        v52 = *(v47 + 13);
        v47[56];
        v53 = *(this + *(*this - 24) + 1904);
        Add = llvm::ConstantInt::get();
        if (v47[57] == 1)
        {
          v55 = *(*this - 24);
          v74 = 257;
          Add = llvm::IRBuilderBase::CreateAdd(&v46[v55], Add, Mul, v73);
        }

        v56 = this + *(*this - 24);
        v57 = *(v56 + 239);
        v74 = 257;
        v58 = llvm::IRBuilderBase::CreateCast((v56 + 1712), 39, Add, v57, v73);
        v70 = 257;
        v59 = llvm::IRBuilderBase::CreateAdd((v56 + 1712), v65, v58, v69);
        v60 = *(*this - 24);
        v61 = *v49;
        v74 = 257;
        llvm::IRBuilderBase::CreateCast(&v46[v60], 48, v59, v61, v73);
        llvm::Value::replaceAllUsesWith();
        v44 += 16;
      }

      while (v44 != v45);
    }

    v62 = this + *(*this - 24);
    v66 = v75;
    v67 = v76;
    if (v76)
    {
      llvm::MetadataTracking::track();
    }

    v68 = v77;
    AGCLLVMBuilder::InsertPoint::restoreIP(&v66, (v62 + 1712));
    if (v67)
    {
      llvm::MetadataTracking::untrack();
    }

    v73[0] = v84;
    std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](v73);
    llvm::SmallVector<GenericVarying,8u>::~SmallVector(&v79);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v76)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

BOOL AGCLLVMAGPFragmentShaderGen3::setupShaderOutputs(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v65[4] = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2168);
  v3 = (*(*v2 + 688))(v2);
  v4 = *(this + 660);
  v5 = *v4;
  if ((*v4 & 0x1F) != 0x17)
  {
    v6 = v3;
    v7 = v4 + 1;
    v8 = -1;
    while (v8 != 6)
    {
      v9 = *v7++;
      ++v8;
      if ((v9 & 0x1F) == 0x17)
      {
        v10 = -1;
        if ((~v5 & 0xFF000) == 0)
        {
          goto LABEL_14;
        }

        v11 = -1;
        if (v8 < 7)
        {
          goto LABEL_28;
        }

LABEL_9:
        v12 = v4 + 1;
        v13 = -1;
        while (v13 != 6)
        {
          v14 = *v12++;
          ++v13;
          if ((~v14 & 0xFF000) == 0)
          {
            if (v13 < 7)
            {
              goto LABEL_13;
            }

            break;
          }
        }

        v10 = 0;
        v11 = 0;
        for (i = 0; i != 8; ++i)
        {
          if ((v4[8] >> i))
          {
            v16 = v4[i];
            if ((v16 & 0x1F) == 0x17)
            {
              goto LABEL_63;
            }

            v17 = (v16 & 0x1F) - 2;
            if (v17 > 0x14)
            {
              v20 = 0;
              v21 = 0;
            }

            else
            {
              v18 = qword_20E716068[v17];
              v19 = qword_20E716260[v17];
              v20 = qword_20E7161B8[v17] | qword_20E716110[v17];
              v21 = v19 | v18;
            }

            v60[0] = v20;
            v60[1] = v21;
            if ((~v16 & 0xFF000) == 0)
            {
LABEL_63:
              std::__throw_bad_optional_access[abi:nn200100]();
            }

            v22 = 0;
            v23 = 0;
            v24 = *(v6 + 964);
            do
            {
              if (!((1 << v22) >> (v16 >> 5)))
              {
                v23 |= *(v60 + v22);
              }

              ++v22;
            }

            while (v22 != 4);
            __dst[0] = v23;
            __dst[1] = 0;
            std::bitset<128ul>::operator<<=[abi:nn200100](__dst, v24 * (v16 >> 12));
            v11 |= __dst[0];
            v10 |= __dst[1];
          }
        }

        goto LABEL_28;
      }
    }

    if ((~v5 & 0xFF000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_13:
  v10 = -1;
LABEL_14:
  v11 = -1;
LABEL_28:
  v25 = *(this + *(*this - 24) + 2136);
  v26 = *(*(llvm::Module::getFunction() + 8) + 24);
  v27 = llvm::CallBase::arg_end(v26);
  v28 = (v26 - 32 * (*(v26 + 5) & 0x7FFFFFF));
  if (((v27 - v28) & 0x1FFFFFFFE0) != 0)
  {
    v29 = *v28;
    v30 = **v28;
    if (v30)
    {
      v31 = *(v30 + 8) == 16;
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      llvm::DataLayout::getStructLayout();
    }

    llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v26);
  }

  else
  {
    v29 = 0;
  }

  v32 = *(this + 660);
  if ((~*v32 & 0xFF000) == 0)
  {
    v33 = 1;
    if (!v29)
    {
      goto LABEL_62;
    }

    goto LABEL_46;
  }

  v34 = v32 + 1;
  v35 = -1;
  while (v35 != 6)
  {
    v36 = *v34++;
    ++v35;
    if ((~v36 & 0xFF000) == 0)
    {
      goto LABEL_45;
    }
  }

  v35 = 7;
LABEL_45:
  v33 = v35 < 7;
  if (v29)
  {
LABEL_46:
    v37 = *(this + 8);
    if (v37)
    {
      v58 = v32[8];
      v59 = v33;
      v62 = 0;
      v38 = *(v37 + 8);
      if (v38)
      {
        v39 = 0;
        do
        {
          v40 = *(v37 - 8 * v38 + 8 * v39);
          if (v40 && isStringMDNode(*(v40 - 8 * *(v40 + 8)), "air.imageblock_data"))
          {
            v41 = *(*(this + 660) + 32);
            if ((~v41 & 0x1FF000) == 0)
            {
              goto LABEL_63;
            }

            v42 = (v41 >> 12) & 0x1FF;
            v43 = *this;
            v44 = *(*(this + *(*this - 24) + 2168) + 964) * v42;
            if (v44 > 0x40)
            {
              v11 = -1;
              __dst[0] = ~(-1 << v44);
              __dst[1] = 0;
              std::bitset<128ul>::operator<<=[abi:nn200100](__dst, 0x40uLL);
              v10 |= __dst[1];
              v43 = *this;
            }

            else
            {
              v11 |= ~(-1 << v44);
            }

            __dst[0] = v65;
            __dst[1] = 0x500000000;
            v45 = *(v43 - 24);
            v61 = 257;
            v60[0] = llvm::IRBuilderBase::CreateExtractValue(this + v45 + 1712, v29, &v62, 1, v60);
            v46 = *v60[0];
            v63[0] = &unk_2825585F0;
            v63[1] = this;
            v63[2] = v60;
            v63[3] = v63;
            AGCLLVMAGPFragmentShaderGen3::setupLIBStructValueFromType(this, v46, __dst, this + 7552, 0, 1, v63);
            std::__function::__value_func<void ()(llvm::Type *,llvm::SmallVectorImpl<unsigned int> &,unsigned int)>::~__value_func[abi:nn200100](v63);
            v47 = *(this + 8);
            llvm::MDNode::replaceOperandWith();
            if (__dst[0] != v65)
            {
              free(__dst[0]);
            }
          }

          v39 = v62 + 1;
          v62 = v39;
          v37 = *(this + 8);
          v38 = *(v37 + 8);
        }

        while (v39 < v38);
      }

      v48 = v59;
      if ((v58 & 0x1FF000) == 0x1FF000)
      {
        v48 = 1;
      }

      if ((v48 & 1) == 0)
      {
        __dst[0] = v11;
        __dst[1] = 0;
        std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](__dst);
        __dst[0] = v11;
        __dst[1] = v10;
        std::bitset<128ul>::operator>>=[abi:nn200100](__dst, 0x40uLL);
        std::__bitset<2ul,128ul>::to_ullong[abi:nn200100](__dst);
        v49 = *(this + *(*this - 24) + 2136);
        llvm::Module::getOrInsertNamedMetadata();
        v50 = this + *(*this - 24);
        v51 = *(v50 + 270);
        v52 = *(v50 + 239);
        llvm::ConstantInt::get();
        __dst[0] = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
        v53 = this + *(*this - 24);
        v54 = *(v53 + 270);
        v55 = *(v53 + 239);
        llvm::ConstantInt::get();
        __dst[0] = llvm::ValueAsMetadata::get();
        llvm::MDTuple::getImpl();
        llvm::NamedMDNode::addOperand();
      }
    }
  }

LABEL_62:
  result = AGCLLVMUserFragmentShader::setupShaderOutputs(this);
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL AGCLLVMUserFragmentShader::setupShaderOutputs(AGCLLVMUserFragmentShader *this)
{
  v110[8] = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  v4 = *(*(Function + 8) + 24);
  v5 = llvm::CallBase::arg_end(v4);
  v6 = (v4 - 32 * (*(v4 + 5) & 0x7FFFFFF));
  v96 = Function;
  if (((v5 - v6) & 0x1FFFFFFFE0) != 0)
  {
    v97 = *v6;
    v7 = **v6;
    v8 = *(*(this + 8) + 8);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v97 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v4);
  v9 = v8;
  v109[0] = v110;
  v109[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(v109, v8, 0);
  if (v8)
  {
    if (*(v7 + 8) == 16)
    {
      AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, v97, v109);
    }

    else
    {
      *v109[0] = v97;
    }

    v10 = 0;
    v11 = 0;
    v94 = this + 1904;
    v95 = this + 1712;
    do
    {
      v12 = *(*(this + 8) - 8 * *(*(this + 8) + 8) + 8 * v10);
      if (!v12)
      {
        goto LABEL_61;
      }

      v13 = *v12;
      if (v13 > 0x22)
      {
        goto LABEL_61;
      }

      if (((0x7FFFFFFF0uLL >> v13) & 1) == 0)
      {
        goto LABEL_61;
      }

      v14 = *&v12[-8 * *(v12 + 2)];
      if (!v14 || *v14)
      {
        goto LABEL_61;
      }

      String = llvm::MDString::getString(v14);
      v17 = String;
      v18 = v16;
      v19 = *(v109[0] + v10);
      if (v16 > 11)
      {
        if (v16 == 12)
        {
          if (*String == 0x65766F632E726961 && *(String + 8) == 1701273970)
          {
            goto LABEL_61;
          }
        }

        else if (v16 == 17)
        {
          v26 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
          if (v26 && *(String + 16) == 116)
          {
            v101 = 0;
            LODWORD(v102) = 0;
            LODWORD(v105) = 1;
            if (!parseMDInt(0, v12, &v105, &v102))
            {
              goto LABEL_118;
            }

            LODWORD(v105) = 2;
            if (!parseMDInt(0, v12, &v105, &v101))
            {
              goto LABEL_118;
            }

            v28 = this + 32 * v102 + 5792;
            if (!v101)
            {
              v28 = this + 32 * v102 + 5536;
            }

            v29 = *(v28 + 3);
            if (v29)
            {
              v30 = *(*this - 24);
              goto LABEL_59;
            }

            goto LABEL_61;
          }
        }
      }

      else if (v16 == 9)
      {
        if (*String == 0x747065642E726961 && *(String + 8) == 104)
        {
          v30 = *(*this - 24);
          v29 = *(this + 760);
          goto LABEL_59;
        }
      }

      else if (v16 == 11 && *String == 0x6E6574732E726961 && *(String + 3) == 0x6C69636E6574732ELL)
      {
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*v19);
        v22 = this + *(*this - 24);
        v23 = *(v22 + 237);
        v108 = 257;
        if (ScalarSizeInBits > 0x10)
        {
          v24 = (v22 + 1712);
          v25 = 38;
        }

        else
        {
          v24 = (v22 + 1712);
          v25 = 39;
        }

        Cast = llvm::IRBuilderBase::CreateCast(v24, v25, v19, v23, &v105);
        v29 = *(this + 763);
        v52 = &v95[*(*this - 24)];
        goto LABEL_60;
      }

      if (AGCLLVMUserFragmentShader::isSampleMaskVariant(String, v16))
      {
        if (AGCLLVMUserFragmentShader::getEffectiveFragmentRate(*(this + 1618), v17, v18))
        {
          v33 = this + *(*this - 24);
          v34 = *(v33 + 238);
          if (((*(*(this + 660) + 32) >> 10) & 3) != 0)
          {
            v35 = llvm::ConstantInt::get();
            v108 = 257;
            v36 = llvm::IRBuilderBase::CreateAnd((v33 + 1712), v19, v35, &v105);
            v37 = this + *(*this - 24);
            v38 = (*(*(this + 660) + 32) >> 10) & 3;
            v39 = *(v37 + 238);
            v40 = llvm::ConstantInt::get();
            v108 = 257;
            Shl = llvm::IRBuilderBase::CreateShl((v37 + 1712), v36, v40, &v105);
            v42 = *(*this - 24);
            v108 = 257;
            Select = llvm::IRBuilderBase::CreateOr(&v95[v42], Shl, v36, &v105);
          }

          else
          {
            v44 = llvm::ConstantInt::get();
            v108 = 257;
            v45 = llvm::IRBuilderBase::CreateAnd((v33 + 1712), v19, v44, &v105);
            v46 = this + *(*this - 24);
            v47 = *(v46 + 238);
            v48 = llvm::ConstantInt::get();
            v108 = 257;
            llvm::IRBuilderBase::CreateICmp(v46 + 214, 32, v45, v48, &v105);
            v49 = *(this + *(*this - 24) + 1904);
            llvm::ConstantInt::get();
            v50 = *&v94[*(*this - 24)];
            llvm::ConstantInt::get();
            v108 = 257;
            Select = llvm::IRBuilderBase::CreateSelect();
          }

          v19 = Select;
        }

        if (*(v19 + 16) - 11 <= 1)
        {
          v51 = *&v94[*(*this - 24)];
          v19 = llvm::ConstantInt::get();
        }

        v30 = *(*this - 24);
        v29 = *(this + 766);
LABEL_59:
        v52 = &v95[v30];
        Cast = v19;
LABEL_60:
        llvm::IRBuilderBase::CreateAlignedStore(v52, Cast, v29, 0);
      }

LABEL_61:
      v11 = ++v10 >= v9;
    }

    while (v9 != v10);
  }

  if (v97)
  {
    EraseInstructionChain(v97);
  }

  llvm::Instruction::eraseFromParent(v4);
  llvm::Function::eraseFromParent(v96);
  if (*(this + 6445) == 1)
  {
    v105 = v107;
    v106 = 0x400000000;
    v54 = *(this + 806);
    v55 = *(v54 + 1);
    if (v55)
    {
      do
      {
        v56 = *(v55 + 24);
        v55 = *(v55 + 8);
        llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v56);
        v57 = this + *(*this - 24);
        if (*(this + 6462))
        {
          v58 = *(v57 + 271);
          v98 = *(v57 + 110);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v99, (v57 + 1712));
          v100 = *(v57 + 452);
          v59 = *(this + *(*this - 24) + 1904);
          v60 = llvm::ConstantInt::get();
          (*(*v58 + 624))(v58, &v98, v60);
          if (v99)
          {
            llvm::MetadataTracking::untrack();
          }
        }

        else
        {
          v61 = *(v57 + 220);
          v62 = *(v57 + 221);
          v104[8] = 257;
          v63 = llvm::BasicBlock::splitBasicBlock();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v105, v63);
          v64 = *(v61 + 40);
          if (v64 == v61 + 40)
          {
            v67 = 0;
          }

          else
          {
            v65 = v64 - 24;
            if (v64)
            {
              v66 = v64 - 24;
            }

            else
            {
              v66 = 0;
            }

            if (*(v66 + 16) - 29 >= 0xB)
            {
              v67 = 0;
            }

            else
            {
              v67 = v65;
            }
          }

          v68 = *(this + 776);
          v69 = (v67 - 32);
          if (*(v67 - 32))
          {
            v70 = *(v67 - 24);
            **(v67 - 16) = v70;
            if (v70)
            {
              *(v70 + 16) = *(v67 - 16);
            }
          }

          *v69 = v68;
          if (v68)
          {
            v73 = *(v68 + 8);
            v71 = (v68 + 8);
            v72 = v73;
            *(v67 - 24) = v73;
            if (v73)
            {
              *(v72 + 16) = v67 - 24;
            }

            *(v67 - 16) = v71;
            *v71 = v69;
          }
        }

        llvm::Instruction::eraseFromParent(v56);
      }

      while (v55);
      v54 = *(this + 806);
    }

    llvm::Function::eraseFromParent(v54);
    v102 = v104;
    v103 = 0x400000000;
    v74 = v106;
    if (v106)
    {
      do
      {
        v75 = *(v105 + v74 - 1);
        LODWORD(v106) = v74 - 1;
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v102, v75);
        v76 = v75 + 5;
        for (i = v75[6]; i != v76; i = i[1])
        {
          if (i)
          {
            v78 = i - 3;
          }

          else
          {
            v78 = 0;
          }

          v79 = *v78;
          llvm::UndefValue::get();
          llvm::Value::replaceAllUsesWith();
        }

        v80 = *v76;
        if (*v76 != v76)
        {
          v81 = (v80 - 3);
          v82 = v80 ? (v80 - 3) : 0;
          v83 = *(v82 + 16) - 29;
          v84 = v83 >= 0xB ? 0 : v81;
          if (v83 <= 0xA)
          {
            NumSuccessors = llvm::Instruction::getNumSuccessors(v81);
            if (NumSuccessors)
            {
              v86 = NumSuccessors;
              for (j = 0; j != v86; ++j)
              {
                Successor = llvm::Instruction::getSuccessor(v84);
                if (llvm::BasicBlock::getSinglePredecessor(Successor))
                {
                  v89 = llvm::Instruction::getSuccessor(v84);
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v105, v89);
                }

                v90 = llvm::Instruction::getSuccessor(v84);
                llvm::BasicBlock::removePredecessor(v90, v75);
              }
            }
          }
        }

        llvm::BasicBlock::dropAllReferences(v75);
        v74 = v106;
      }

      while (v106);
      while (v103)
      {
        v91 = *(v102 + v103 - 1);
        LODWORD(v103) = v103 - 1;
        llvm::BasicBlock::eraseFromParent(v91);
      }
    }

    if (v102 != v104)
    {
      free(v102);
    }

    if (v105 != v107)
    {
      free(v105);
    }
  }

  AGCLLVMFragmentShader::inlineReadAndWriteCalls((this + 4536));
  v11 = 1;
LABEL_118:
  if (v109[0] != v110)
  {
    free(v109[0]);
  }

  v92 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t llvm::IRBuilderBase::CreateAlignedStore(unsigned int **a1, llvm::Type **a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, *a2);
  }

  v8 = llvm::User::operator new(0x40);
  llvm::StoreInst::StoreInst();
  v16 = 257;
  (*(*a1[10] + 16))(a1[10], v8, v15, a1[6], a1[7]);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *a1;
    v11 = &v10[4 * v9];
    do
    {
      v12 = *v10;
      v13 = *(v10 + 1);
      llvm::Instruction::setMetadata();
      v10 += 4;
    }

    while (v10 != v11);
  }

  return v8;
}

uint64_t EraseInstructionChain(llvm::Value *a1)
{
  v1 = 0;
  if (a1 && *(a1 + 16) >= 0x1Cu)
  {
    if (*(a1 + 1))
    {
      return 0;
    }

    else
    {
      LODWORD(v1) = 0;
      while (1)
      {
        v2 = *(a1 + 5);
        if ((v2 & 0x7FFFFFF) == 0)
        {
          break;
        }

        v3 = (v2 & 0x40000000) != 0 ? *(a1 - 1) : (a1 - 32 * (v2 & 0x7FFFFFF));
        v4 = *v3;
        if (*(*v3 + 16) <= 0x1Bu)
        {
          break;
        }

        llvm::Instruction::eraseFromParent(a1);
        v1 = (v1 + 1);
        a1 = v4;
        if (*(v4 + 1))
        {
          return v1;
        }
      }

      llvm::Instruction::eraseFromParent(a1);
      return (v1 + 1);
    }
  }

  return v1;
}

void AGCLLVMFragmentShader::inlineReadAndWriteCalls(AGCLLVMFragmentShader *this)
{
  AGCLLVMObject::replaceLIBSpillingFunctions((this + *(*this - 24)));
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("AGC_DISABLE_EARLY_STATELESS_PSO_INLINING", v2)) == 0 || *Value == 48 || !atoi(Value))
  {
    v21[0] = 0;
    v21[1] = 0;
    v20 = v21;
    v4 = *this;
    v5 = *(this + *(*this - 24) + 2136);
    v6 = v5 + 24;
    v7 = *(v5 + 32);
    if (v7 != v5 + 24)
    {
      do
      {
        if (v7)
        {
          v8 = (v7 - 56);
        }

        else
        {
          v8 = 0;
        }

        Name = llvm::Value::getName(v8);
        if (v10 >= 0x14 && (*Name == 0x646165722E636761 ? (v11 = *(Name + 8) == 0x7562656D6172665FLL) : (v11 = 0), v11 ? (v12 = *(Name + 16) == 1919247974) : (v12 = 0), v12) || (v13 = llvm::Value::getName(v8), v14 >= 0x15) && (*v13 == 0x746972772E636761 ? (v15 = v13[1] == 0x62656D6172665F65) : (v15 = 0), v15 ? (v16 = *(v13 + 13) == 0x726566667562656DLL) : (v16 = 0), v16))
        {
          if (*(v8 + 9) != (v8 + 72))
          {
            v17 = v21[0];
            if (!v21[0])
            {
LABEL_34:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v18 = v17;
                v19 = v17[4];
                if (v8 >= v19)
                {
                  break;
                }

                v17 = *v18;
                if (!*v18)
                {
                  goto LABEL_34;
                }
              }

              if (v19 >= v8)
              {
                break;
              }

              v17 = v18[1];
              if (!v17)
              {
                goto LABEL_34;
              }
            }
          }
        }

        v7 = *(v7 + 8);
      }

      while (v7 != v6);
      v4 = *this;
    }

    AGCLLVMObject::inlineAndRemoveFunctions(*(this + *(v4 - 24) + 2136), &v20);
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v21[0]);
  }
}

void AGCLLVMObject::replaceLIBSpillingFunctions(AGCLLVMObject *this)
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v2 = *(this + 267);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v3 = *(this + 270);
    v10 = "entry";
    v11 = 259;
    operator new();
  }

  v4 = *(this + 267);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v5 = *(this + 270);
    v10 = "entry";
    v11 = 259;
    operator new();
  }

  v6 = *(this + 267);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v7 = *(this + 270);
    v10 = "entry";
    v11 = 259;
    operator new();
  }

  v8 = *(this + 267);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v9 = *(this + 270);
    v10 = "entry";
    v11 = 259;
    operator new();
  }

  AGCLLVMObject::inlineAndRemoveFunctions(*(this + 267), &v13);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v14[0]);
}

void AGCLLVMObject::inlineAndRemoveFunctions(uint64_t a1, void *a2)
{
  v35[16] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v34 = 0x1000000000;
  v3 = a1 + 24;
  v4 = *(a1 + 32);
  if (v4 != a1 + 24)
  {
    do
    {
      v5 = v4 - 56;
      if (!v4)
      {
        v5 = 0;
      }

      v6 = v5 + 72;
      for (i = *(v5 + 80); i != v6; i = *(i + 8))
      {
        v8 = i - 24;
        if (!i)
        {
          v8 = 0;
        }

        v9 = v8 + 40;
        for (j = *(v8 + 48); j != v9; j = *(j + 8))
        {
          if (j)
          {
            v11 = j - 24;
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v11 + 16);
          if (v12 == 84)
          {
            v13 = v11;
          }

          else
          {
            v13 = 0;
          }

          if (j)
          {
            if (v12 == 84)
            {
              v14 = *(v11 - 32);
              if (v14)
              {
                if (!*(v14 + 16))
                {
                  v15 = *(v11 + 72);
                  v16 = a2[1];
                  v17 = *(v14 + 24) != v15 || v16 == 0;
                  if (!v17)
                  {
                    do
                    {
                      v18 = v16[4];
                      if (v14 >= v18)
                      {
                        if (v18 >= v14)
                        {
                          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v33, v13);
                          break;
                        }

                        ++v16;
                      }

                      v16 = *v16;
                    }

                    while (v16);
                  }
                }
              }
            }
          }
        }
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    if (v34)
    {
      v19 = v33;
      v20 = 8 * v34;
      do
      {
        v21 = *v19;
        v28[0] = &v29;
        v28[1] = 0x800000000;
        v30 = v32;
        v31 = 0x800000000;
        v32[64] = 1;
        llvm::InlineFunction();
        if (v30 != v32)
        {
          free(v30);
        }

        llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(v28);
        ++v19;
        v20 -= 8;
      }

      while (v20);
    }
  }

  v24 = *a2;
  v22 = a2 + 1;
  v23 = v24;
  if (v24 != v22)
  {
    do
    {
      llvm::Function::eraseFromParent(v23[4]);
      v25 = v23[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v23[2];
          v17 = *v26 == v23;
          v23 = v26;
        }

        while (!v17);
      }

      v23 = v26;
    }

    while (v26 != v22);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v27 = *MEMORY[0x277D85DE8];
}

char **llvm::SmallVector<llvm::WeakTrackingVH,8u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[24 * v3 - 24];
    v5 = -24 * v3;
    do
    {
      v6 = *(v4 + 2);
      if (v6 != -8192 && v6 != -4096 && v6 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v4);
      }

      v4 = (v4 - 24);
      v5 += 24;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_2()
{

  operator new();
}

__n128 OUTLINED_FUNCTION_3(uint64_t a1)
{
  result = *v1;
  *(a1 + 8) = *v1;
  *(a1 + 24) = v1[1].n128_u64[0];
  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

uint64_t llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Function,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    v18 = (16 * v3);
    if (v3)
    {
      v19 = (v4 + 8);
      v20 = v18;
      do
      {
        v21 = *(v19 - 1);
        if ((v21 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v33 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), v21, &v33);
          v22 = v33;
          *v33 = *(v19 - 1);
          v23 = *v19;
          *v19 = 0;
          v22[1] = v23;
          ++*(a1 + 8);
          v24 = *v19;
          *v19 = 0;
          if (v24)
          {
            (*(*v24 + 8))(v24);
          }
        }

        v19 += 2;
        v20 -= 16;
      }

      while (v20);
    }

    return llvm::deallocate_buffer(v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v25 = *(a1 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
      v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
      v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
      v30 = vdupq_n_s64(v28);
      v31 = (result + 16);
      do
      {
        v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_20E70C4F0)));
        if (v32.i8[0])
        {
          *(v31 - 2) = -4096;
        }

        if (v32.i8[4])
        {
          *v31 = -4096;
        }

        v26 += 2;
        v31 += 4;
      }

      while (v29 != v26);
    }
  }

  return result;
}

uint64_t llvm::optional_detail::OptionalStorage<llvm::TargetLibraryInfoImpl,false>::reset(uint64_t result)
{
  if (*(result + 200) == 1)
  {
    v1 = result;
    v2 = *(result + 176);
    if (v2)
    {
      *(v1 + 184) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 152);
    if (v3)
    {
      *(v1 + 160) = v3;
      operator delete(v3);
    }

    llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::destroyAll((v1 + 120));
    result = llvm::deallocate_buffer(*(v1 + 120), (32 * *(v1 + 136)));
    *(v1 + 200) = 0;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>,unsigned int,std::string,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,std::string>>::destroyAll(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = 32 * v1;
    do
    {
      if (*v2 <= 0xFFFFFFFD && *(v2 + 31) < 0)
      {
        operator delete(*(v2 + 8));
      }

      v2 += 32;
      v3 -= 32;
    }

    while (v3);
  }
}

char *llvm::PassInfoMixin<AGCLLVMPrintModulePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x48)
  {
    v1 = v0;
  }

  else
  {
    v1 = 72;
  }

  v2 = &aStringrefLlvmG_91[v1];
  v3 = 72 - v1;
  if ((72 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 72 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

char *llvm::PassInfoMixin<AGCLLVMVerifyModulePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x49)
  {
    v1 = v0;
  }

  else
  {
    v1 = 73;
  }

  v2 = &aStringrefLlvmG_89[v1];
  v3 = 73 - v1;
  if ((73 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 73 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void llvm::detail::PassModel<llvm::Module,AGCLLVMVerifyModulePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::run(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *(a1 + 24);
  llvm::AnalysisManager<llvm::Module>::getResultImpl();
}

char *llvm::PassInfoMixin<llvm::DCEPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x3F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 63;
  }

  v2 = &aStringrefLlvmG_93[v1];
  v3 = 63 - v1;
  if ((63 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 63 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::run()
{
  v0 = *MEMORY[0x277D85DE8];
  llvm::TargetLibraryAnalysis::run();
  operator new();
}

uint64_t llvm::TargetLibraryInfo::TargetLibraryInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 24;
  *(a1 + 16) = 0x600000000;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a1 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v4 >= 7)
    {
      *(a1 + 16) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(*(a1 + 8), *(a2 + 8), 8 * *(a2 + 16));
    *(a1 + 16) = v4;
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void llvm::detail::AnalysisResultModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::TargetLibraryInfo,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator,true>::~AnalysisResultModel(void *a1)
{
  *a1 = &unk_2825B0188;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    free(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void llvm::detail::AnalysisPassModel<llvm::Function,llvm::TargetLibraryAnalysis,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>::Invalidator>::~AnalysisPassModel(void *a1)
{
  *a1 = &unk_2825B0158;
  llvm::optional_detail::OptionalStorage<llvm::TargetLibraryInfoImpl,false>::reset((a1 + 1));

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserObject::setupIndirectSamplersAGP(AGCLLVMUserObject *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v24 = *MEMORY[0x277D85DE8];
  if (*(v1 + 14) == 1)
  {
    v2 = *MEMORY[0x277D85DE8];

    AGCLLVMUserObject::setupIndirectSamplersGL(v1);
  }

  else
  {
    v3 = v1 + *(*v1 - 24);
    if ((*(*(v3 + 211) + 1954) & 1) == 0)
    {
      v4 = *(v3 + 267);
      v7 = 0;
      v6 = 0u;
      bzero(v8, 0x2C0uLL);
      v8[6] = v10;
      v9 = 16;
      v10[16] = v12;
      v11 = 8;
      v12[12] = 0u;
      v13 = 0;
      v14 = v16;
      v15 = 16;
      memset(&v16[128], 0, 44);
      v17 = v19;
      v18 = 2;
      v19[1] = 0u;
      v20 = 0;
      v21 = &v23;
      v22 = 2;
      operator new();
    }

    v5 = *MEMORY[0x277D85DE8];
  }
}

void llvm::SROAPass::~SROAPass(llvm::SROAPass *this)
{
  v2 = *(this + 84);
  if (v2 != this + 688)
  {
    free(v2);
  }

  llvm::deallocate_buffer(*(this + 81), (8 * *(this + 166)));
  v3 = *(this + 77);
  if (v3 != this + 632)
  {
    free(v3);
  }

  llvm::deallocate_buffer(*(this + 74), (8 * *(this + 152)));
  v4 = *(this + 71);
  if (v4)
  {
    *(this + 72) = v4;
    operator delete(v4);
  }

  v5 = *(this + 53);
  if (v5 != this + 440)
  {
    free(v5);
  }

  llvm::deallocate_buffer(*(this + 50), (8 * *(this + 104)));
  llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(*(this + 24), (*(this + 24) + 24 * *(this + 50)));
  v6 = *(this + 24);
  if (v6 != this + 208)
  {
    free(v6);
  }

  v7 = *(this + 6);
  if (v7 != this + 64)
  {
    free(v7);
  }

  llvm::deallocate_buffer(*(this + 3), (8 * *(this + 10)));
}

uint64_t llvm::SROAPass::SROAPass(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v4;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 48) = a1 + 64;
  v5 = a1 + 48;
  LODWORD(v4) = *(v5 - 12);
  *(v5 - 12) = *(a2 + 36);
  *(a2 + 36) = v4;
  LODWORD(v4) = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v4;
  *(v5 + 8) = 0x1000000000;
  if (*(a2 + 56))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v5, a2 + 48);
  }

  v6 = (a1 + 208);
  *(a1 + 192) = a1 + 208;
  v7 = (a1 + 192);
  *(a1 + 200) = 0x800000000;
  v8 = *(a2 + 200);
  if (v8 && a1 != a2)
  {
    v9 = *(a2 + 192);
    if (v9 == (a2 + 208))
    {
      if (v8 > 8)
      {
        llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(a1 + 208, (a1 + 208));
        *(a1 + 200) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v10 = &v9[3 * v8];
      do
      {
        llvm::ValueHandleBase::ValueHandleBase(v6, 2u, v9);
        v9 += 3;
        v6 = (v6 + 24);
      }

      while (v9 != v10);
      v11 = *(a2 + 192);
      *(a1 + 200) = v8;
      llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(v11, (v11 + 24 * *(a2 + 200)));
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(a1 + 208, (a1 + 208));
      if (*v7 != v6)
      {
        free(*v7);
      }

      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a2 + 192) = a2 + 208;
      *(a2 + 204) = 0;
    }

    *(a2 + 200) = 0;
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 400) = 0;
  *(a1 + 408) = *(a2 + 408);
  *(a2 + 408) = 0;
  v12 = *(a1 + 412);
  *(a1 + 412) = *(a2 + 412);
  *(a2 + 412) = v12;
  v13 = *(a1 + 416);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = v13;
  *(a1 + 424) = a1 + 440;
  *(a1 + 432) = 0x1000000000;
  if (*(a2 + 432))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(a1 + 424, a2 + 424);
  }

  *(a1 + 584) = 0;
  v14 = 0uLL;
  *(a1 + 568) = 0u;
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a2 + 584) = 0;
  *(a2 + 568) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a1 + 600) = *(a2 + 600);
  *(a2 + 600) = 0;
  v15 = *(a1 + 604);
  *(a1 + 604) = *(a2 + 604);
  *(a2 + 604) = v15;
  v16 = *(a1 + 608);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 608) = v16;
  *(a1 + 616) = a1 + 632;
  *(a1 + 624) = 0x200000000;
  v17 = *(a2 + 624);
  if (v17 && a1 != a2)
  {
    v18 = *(a2 + 616);
    if (v18 == a2 + 632)
    {
      if (v17 >= 3)
      {
        *(a1 + 624) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*(a1 + 616), *(a2 + 616), 8 * *(a2 + 624));
      *(a1 + 624) = v17;
      *(a2 + 624) = 0;
      v14 = 0uLL;
    }

    else
    {
      v19 = *(a2 + 624);
      *(a1 + 616) = v18;
      *(a1 + 624) = v19;
      *(a2 + 616) = a2 + 632;
      *(a2 + 624) = 0;
    }
  }

  *(a1 + 664) = 0;
  *(a1 + 648) = v14;
  *(a1 + 648) = *(a2 + 648);
  *(a2 + 648) = 0;
  *(a1 + 656) = *(a2 + 656);
  *(a2 + 656) = 0;
  v20 = *(a1 + 660);
  *(a1 + 660) = *(a2 + 660);
  *(a2 + 660) = v20;
  v21 = *(a1 + 664);
  *(a1 + 664) = *(a2 + 664);
  *(a2 + 664) = v21;
  *(a1 + 672) = a1 + 688;
  *(a1 + 680) = 0x200000000;
  v22 = *(a2 + 680);
  if (v22 && a1 != a2)
  {
    v23 = *(a2 + 672);
    if (v23 == a2 + 688)
    {
      if (v22 >= 3)
      {
        *(a1 + 680) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(*(a1 + 672), *(a2 + 672), 8 * *(a2 + 680));
      *(a1 + 680) = v22;
      *(a2 + 680) = 0;
    }

    else
    {
      v24 = *(a2 + 680);
      *(a1 + 672) = v23;
      *(a1 + 680) = v24;
      *(a2 + 672) = a2 + 688;
      *(a2 + 680) = 0;
    }
  }

  return a1;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::WeakVH,false>::destroy_range(uint64_t result, llvm::ValueHandleBase *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 1);
      v2 = (v2 - 24);
      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList(v2);
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t llvm::InstructionWorklist::InstructionWorklist(uint64_t a1, uint64_t a2)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x10000000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(a1, a2);
  }

  *(a1 + 2080) = 0;
  *(a1 + 2064) = 0u;
  *(a1 + 2064) = *(a2 + 2064);
  *(a2 + 2064) = 0;
  *(a1 + 2072) = *(a2 + 2072);
  *(a2 + 2072) = 0;
  v4 = *(a1 + 2076);
  *(a1 + 2076) = *(a2 + 2076);
  *(a2 + 2076) = v4;
  v5 = *(a1 + 2080);
  *(a1 + 2080) = *(a2 + 2080);
  *(a2 + 2080) = v5;
  v6 = a1 + 2088;
  *(a1 + 2088) = 1;
  v7 = 2096;
  v8 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  do
  {
    *(a1 + v7) = v8;
    v7 += 16;
  }

  while (v7 != 2224);
  v9 = *(a2 + 2088);
  *(a2 + 2088) = *(a1 + 2088) & 0xFFFFFFFE | v9 & 1;
  *(a1 + 2088) = v9 & 0xFFFFFFFE | *(a1 + 2088) & 1;
  v10 = *(a1 + 2092);
  *(a1 + 2092) = *(a2 + 2092);
  *(a2 + 2092) = v10;
  v11 = *(a1 + 2088);
  v12 = *(a2 + 2088);
  if ((v11 & 1) == 0)
  {
    v13 = a1 + 2088;
    v6 = a2 + 2088;
    if ((v12 & 1) == 0)
    {
      v14 = *(a1 + 2096);
      *(a1 + 2096) = *(a2 + 2096);
      *(a2 + 2096) = v14;
      LODWORD(v14) = *(a1 + 2104);
      *(a1 + 2104) = *(a2 + 2104);
      *(a2 + 2104) = v14;
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v11 = *(a2 + 2088);
  v13 = a2 + 2088;
  if ((v12 & 1) == 0)
  {
LABEL_9:
    v22 = *(v13 + 8);
    *v13 = v11 | 1;
    for (i = 8; i != 136; i += 8)
    {
      *(v13 + i) = *(v6 + i);
    }

    *v6 &= ~1u;
    *(v6 + 8) = v22;
    goto LABEL_18;
  }

  v16 = 0;
  v17 = a1 + 2096;
  v18 = a2 + 2096;
  do
  {
    v19 = *(v17 + v16);
    v20 = *(v18 + v16);
    if (v19 != -4096 && v20 == -4096)
    {
      *(v17 + v16) = -4096;
    }

    else
    {
      *(v17 + v16) = v20;
    }

    *(v18 + v16) = v19;
    v16 += 8;
  }

  while (v16 != 128);
LABEL_18:
  *(a1 + 2224) = a1 + 2240;
  *(a1 + 2232) = 0x1000000000;
  if (*(a2 + 2232))
  {
    llvm::SmallVectorImpl<llvm::MDNode *>::operator=(a1 + 2224, a2 + 2224);
  }

  return a1;
}

char *llvm::PassInfoMixin<llvm::SROAPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x40)
  {
    v1 = v0;
  }

  else
  {
    v1 = 64;
  }

  v2 = &aStringrefLlvmG_94[v1];
  v3 = 64 - v1;
  if ((64 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 64 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

char *llvm::PassInfoMixin<llvm::InstCombinePass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x47)
  {
    v1 = v0;
  }

  else
  {
    v1 = 71;
  }

  v2 = &aStringrefLlvmG_95[v1];
  v3 = 71 - v1;
  if ((71 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 71 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

void llvm::detail::PassModel<llvm::Function,llvm::InstCombinePass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(uint64_t a1)
{
  *a1 = &unk_2825B0118;
  v2 = *(a1 + 2232);
  if (v2 != (a1 + 2248))
  {
    free(v2);
  }

  if ((*(a1 + 2096) & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 2104), (8 * *(a1 + 2112)));
  }

  llvm::deallocate_buffer(*(a1 + 2072), (16 * *(a1 + 2088)));
  v3 = *(a1 + 8);
  if (v3 != (a1 + 24))
  {
    free(v3);
  }

  JUMPOUT(0x20F331DC0);
}

void llvm::detail::PassModel<llvm::Function,llvm::SROAPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Function>>::~PassModel(void *a1)
{
  *a1 = &unk_2825B00D8;
  llvm::SROAPass::~SROAPass((a1 + 1));

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMUserObject::allocateTexturesAndSamplers(AGCLLVMUserObject *this)
{
  v1 = this;
  v273[2] = *MEMORY[0x277D85DE8];
  AGCLLVMUserObject::getDimensionFunctionMap(this);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v2);
  AGCLLVMUserObject::getUniqueIDFunctionSet(v3);
  AGCLLVMUserObject::getTextureAtomicFunctionSet(v4);
  v207 = v211;
  v208 = v211;
  v209 = 8;
  v210 = 0;
  v179 = (*(*(v1 + *(*v1 - 24)) + 80))(v1 + *(*v1 - 24));
  v6 = *(v1 + 15);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v8 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", v5)) != 0 && *Value != 48 && atoi(Value) || *(*(v1 + *(*v1 - 24) + 2168) + 1900) != 0;
  v182 = v8;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v10 = AGCEnv::isEnabled(void)::is_internal == 1 && (v9 = AGCEnv::getValue("AGC_FORCE_BINDLESS", v5)) != 0 && *v9 != 48 && atoi(v9) || *(*(v1 + *(*v1 - 24) + 2168) + 1900) != 0;
  v180 = v10;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v188 = v6;
  v181 = 0;
  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v11 = AGCEnv::getValue("AGC_FORCE_BINDLESS_HEAP", v5);
    if (v11)
    {
      if (*v11 != 48 && atoi(v11))
      {
        v181 = 1;
      }
    }
  }

  v186 = *(v1 + 879);
  v184 = *(v1 + 882);
  v12 = *v1;
  v13 = *(v1 + *(*v1 - 24) + 2136);
  v14 = *(v13 + 32);
  v191 = v13 + 24;
  v193 = v1;
  if (v14 == v13 + 24)
  {
    v16 = 0;
    v15 = 0;
    v190 = 0;
LABEL_90:
    v41 = *(v1 + *(v12 - 24) + 2136);
    v42 = v41 + 24;
    v43 = *(v41 + 32);
    if (v43 != v41 + 24)
    {
      v44 = 0;
      v45 = 0;
      while (1)
      {
        v46 = v43 - 56;
        if (!v43)
        {
          v46 = 0;
        }

        v47 = v46 + 72;
        v48 = *(v46 + 80);
        if (v48 == v46 + 72)
        {
          v50 = 0;
        }

        else
        {
          do
          {
            v49 = v48 - 24;
            if (!v48)
            {
              v49 = 0;
            }

            v50 = *(v49 + 48);
            if (v50 != v49 + 40)
            {
              break;
            }

            v48 = *(v48 + 8);
          }

          while (v48 != v47);
        }

        while (v48 != v47)
        {
          v51 = (v50 - 24);
          if (v50)
          {
            v52 = v50 - 24;
          }

          else
          {
            v52 = 0;
          }

          v53 = *(v52 + 16);
          if (v50 && v53 == 60)
          {
            goto LABEL_107;
          }

          if (!v50 || v53 != 77)
          {
            if (v50 && v53 == 75)
            {
LABEL_107:
              v51 = *(v50 - 56);
            }

            else if (!v50 || v53 != 76)
            {
              goto LABEL_124;
            }

            v54 = *v51;
            if (!*v51)
            {
              goto LABEL_124;
            }

            goto LABEL_113;
          }

          v54 = **(v50 - 56);
          if (*(v54 + 8) != 15)
          {
            goto LABEL_124;
          }

LABEL_113:
          if ((llvm::Type::isOpaquePointerTy(v54) & 1) == 0 && ((*(v54 + 8) >> 8) - 1) <= 1)
          {
            isTextureOrSamplerType = AGCLLVMUserObject::isTextureOrSamplerType(v193, **(v54 + 16));
            v44 |= isTextureOrSamplerType;
            v45 |= (isTextureOrSamplerType >> 8) & 1;
            if (!*(v193 + 950) || (v44) && (!*(v193 + 478) || (v45))
            {
              goto LABEL_132;
            }
          }

LABEL_124:
          v50 = *(v50 + 8);
          v56 = v48 - 24;
          if (!v48)
          {
            v56 = 0;
          }

          while (v50 == v56 + 40)
          {
            v48 = *(v48 + 8);
            if (v48 == v47)
            {
              break;
            }

            v56 = v48 - 24;
            if (!v48)
            {
              v56 = 0;
            }

            v50 = *(v56 + 48);
          }
        }

        v43 = *(v43 + 8);
        if (v43 == v42)
        {
LABEL_132:
          v1 = v193;
          goto LABEL_134;
        }
      }
    }

    LOBYTE(v45) = 0;
    v44 = 0;
LABEL_134:
    v57 = *(v1 + 3858) | v44;
    *(v1 + 3858) = v57 & 1;
    *(v1 + 3859) |= v45 != 0;
    *(v1 + 3913) = v16 & 1;
    if (*(*(v1 + *(*v1 - 24) + 2168) + 1869))
    {
      v58 = 0;
      v59 = v179 == 27;
      v60 = v188;
    }

    else
    {
      v60 = v188;
      v59 = v179 == 27;
      if (v57 & 1 | ((v184 + v186) > 0x30) || (AGCLLVMUserObject::needsDylibResources(v1) & 1) != 0)
      {
        v58 = 1;
      }

      else
      {
        v58 = *(v1 + 15) | v190 | (v180 || v181);
      }
    }

    if (*(*(v1 + *(*v1 - 24) + 2168) + 1869))
    {
      v61 = 0;
      if ((v58 & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else if (*(v1 + 3859) & 1) != 0 || ((AGCLLVMUserObject::needsDylibResources(v1) | v182))
    {
      v61 = 1;
      if ((v58 & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    else
    {
      v61 = *(v1 + 15);
      if ((v58 & 1) == 0)
      {
        goto LABEL_151;
      }
    }

    if ((*(v1 + 3858) & 1) == 0 && (AGCLLVMUserObject::needsDylibResources(v1) & 1) == 0 && ((v181 | v190 | v15 | *(v1 + 15)) & 1) == 0)
    {
      v62 = (v179 != 27) & (v16 ^ 1);
      goto LABEL_152;
    }

LABEL_151:
    v62 = 0;
LABEL_152:
    *(v1 + 3767) = v62;
    if (v61 & 1) == 0 || (*(v1 + 3859) & 1) != 0 || (AGCLLVMUserObject::needsDylibResources(v1) & 1) != 0 || (*(v1 + 15))
    {
      LOBYTE(v63) = 0;
    }

    else
    {
      v63 = *(*(v1 + *(*v1 - 24) + 2168) + 1900);
      if (v63)
      {
        LOBYTE(v63) = (v179 != 27) & ~v15;
      }
    }

    v64 = v60 | v59;
    *(v1 + 3896) = v63;
    v206 = 1;
    if ((*(*v1 + 416))(v1))
    {
      if ((v60 | v59))
      {
        if (v206 == 1)
        {
          v65 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 0);
        }

        else
        {
          v65 = 0;
        }

        v206 = v65;
        __p = v1;
        v245[0] = &unk_2825A8350;
        v245[1] = &__p;
        v246 = v245;
        for (i = *(v1 + 408); i; i = *i)
        {
          std::function<void ()(llvm::Function *)>::operator()(v246, i[5]);
        }

        v148 = v245;
LABEL_231:
        std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v148);
        goto LABEL_235;
      }

      if (v61)
      {
        if (*(v1 + 3896) == 1)
        {
          v250 = 0;
          v249 = 0;
          v248 = &v249;
          v247 = &unk_2825A73D0;
          __p = &v225 + 8;
          *&v225 = 0x400000000;
          if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
          {
            if (v206 == 1)
            {
              v146 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 0);
            }

            else
            {
              v146 = 0;
            }

            v206 = v146;
          }

          v243[0] = &unk_2825A85D8;
          v243[1] = &v247;
          v244 = v243;
          for (j = *(v1 + 396); j; j = *j)
          {
            std::function<void ()(llvm::Function *)>::operator()(v244, j[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v243);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(&v247, &__p, v1 + 1024);
          AGCLLVMUserObject::createSamplerHeapIndexArray(v1, &__p);
          v265 = v1;
          v242 = 0;
          operator new();
        }

        if (*(*(v1 + *(*v1 - 24) + 2168) + 1900))
        {
          v250 = 0;
          v249 = 0;
          v248 = &v249;
          v247 = &unk_2825A73D0;
          __p = &v225 + 8;
          *&v225 = 0x400000000;
          if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
          {
            if (v206 == 1)
            {
              v157 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 0);
            }

            else
            {
              v157 = 0;
            }

            v206 = v157;
          }

          v240[0] = &unk_2825A86F8;
          v240[1] = &v247;
          v241 = v240;
          for (k = *(v1 + 396); k; k = *k)
          {
            std::function<void ()(llvm::Function *)>::operator()(v241, k[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v240);
          v238[0] = &unk_2825A8788;
          v238[1] = &v247;
          v239 = v238;
          for (m = *(v1 + 420); m; m = *m)
          {
            std::function<void ()(llvm::Function *)>::operator()(v239, m[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v238);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(&v247, &__p, v1 + 1024);
          AGCLLVMUserObject::createSamplerHeapIndexArray(v1, &__p);
          if (*(v1 + 421))
          {
            AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(v1, &__p, v1 + 2008);
          }

          v265 = v1;
          v237 = 0;
          operator new();
        }

        if (v182)
        {
          v250 = 0;
          v249 = 0;
          v248 = &v249;
          v247 = &unk_2825A73D0;
          __p = &v225 + 8;
          *&v225 = 0x400000000;
          v235[0] = &unk_2825A89C8;
          v235[1] = &v247;
          v236 = v235;
          for (n = *(v1 + 396); n; n = *n)
          {
            std::function<void ()(llvm::Function *)>::operator()(v236, n[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v235);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(&v247, &__p, v1 + 1024);
          AGCLLVMUserObject::createSamplerArrays(v1, &__p);
          v265 = v1;
          v234 = 0;
          operator new();
        }

        if (*(v1 + 3856) == 1)
        {
          if (v206 == 1)
          {
            v173 = AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(v1, 1);
          }

          else
          {
            v173 = 0;
          }

          v206 = v173;
        }

        else
        {
          __p = &unk_20E75F419;
          v225 = 0u;
          v226 = 0u;
          v227 = 1065353216;
          if (v206 == 1)
          {
            v201[0] = 0;
            v201[1] = 0;
            v200 = v201;
            std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(&v200, *(v1 + 128), v1 + 129);
            AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(v1, v1 + 3144, &__p, &v200);
          }

          v206 = 0;
          std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::~__hash_table(&v225);
        }

        __p = v1;
        v232[0] = &unk_2825A8AE8;
        v232[1] = &v206;
        v232[2] = &__p;
        v233 = v232;
        for (ii = *(v1 + 408); ii; ii = *ii)
        {
          std::function<void ()(llvm::Function *)>::operator()(v233, ii[5]);
        }

        v148 = v232;
        goto LABEL_231;
      }

      if (v206 == 1)
      {
        v203[0] = 0;
        v203[1] = 0;
        v202 = v203;
        std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(&v202, *(v1 + 128), v1 + 129);
        AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(v1, v1 + 3144, v1 + 3240, &v202);
      }
    }

    else if (v206 == 1)
    {
      v183 = v60 | v59;
      v66 = v205;
      v205[0] = 0;
      v205[1] = 0;
      v204 = v205;
      std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(&v204, *(v1 + 128), v1 + 129);
      __p = &v225 + 8;
      *&v225 = 0x400000000;
      v273[0] = 0;
      v273[1] = 0;
      v271 = &unk_2825A73D0;
      v272 = v273;
      v258[0] = &unk_2825A7FA8;
      v258[1] = &v271;
      v259 = v258;
      for (jj = *(v1 + 396); jj; jj = *jj)
      {
        std::function<void ()(llvm::Function *)>::operator()(v259, jj[5]);
      }

      std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v258);
      v256[0] = &unk_2825A8038;
      v256[1] = &v271;
      v257 = v256;
      for (kk = *(v1 + 408); kk; kk = *kk)
      {
        std::function<void ()(llvm::Function *)>::operator()(v257, kk[5]);
      }

      std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v256);
      memset(v254, 0, sizeof(v254));
      v255 = 1065353216;
      v69 = v272;
      if (v272 == v273)
      {
LABEL_213:
        TypeAllocSize = v254;
        LOBYTE(v212) = 1;
        v247 = &unk_2825A80C8;
        v248 = &v212;
        v249 = &TypeAllocSize;
        v250 = &v247;
        for (mm = *(v1 + 396); mm; mm = *mm)
        {
          std::function<void ()(llvm::Function *)>::operator()(v250, mm[5]);
        }

        std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&v247);
        v265 = &unk_2825A8158;
        v266 = &v212;
        v267 = &TypeAllocSize;
        v268 = &v265;
        for (nn = *(v1 + 408); nn; nn = *nn)
        {
          std::function<void ()(llvm::Function *)>::operator()(v268, nn[5]);
        }

        std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&v265);
        v145 = v212;
      }

      else
      {
        v192 = v1 + 2168;
        v189 = v1 + 1872;
        v185 = v1 + 2136;
        v187 = v58;
        while (1)
        {
          v70 = v205[0];
          if (!v205[0])
          {
            break;
          }

          v71 = *(v69 + 9);
          v72 = v66;
          do
          {
            v73 = v70;
            v74 = v72;
            v75 = *(v70 + 9) + *(v70 + 8);
            if (v75 > v71)
            {
              v72 = v70;
            }

            v70 = v70[v75 <= v71];
          }

          while (v70);
          if (v72 == v66)
          {
            break;
          }

          if (v75 > v71)
          {
            v76 = (v73 + 4);
          }

          else
          {
            v73 = v74;
            v76 = (v74 + 4);
          }

          if (v71 < *(v73 + 8))
          {
            break;
          }

          v77 = *(v69 + 7);
          if (*(v69 + 8) != v77)
          {
            break;
          }

          v78 = v66;
          AGCLLVMUserObject::Sampler::getAllocationInfo(&v212, v76, v77);
          v79 = v212;
          v80 = (v212 >> 20) & 0x7FF;
          v81 = v212 & 0xFFFFFLL;
          v82 = llvm::User::operator new(0x58);
          v83 = *(*v1 - 24);
          if ((v79 & 0x80000000) != 0)
          {
            TypeAllocSize = v80;
            v262 = ".";
            v264 = 776;
            v84 = 2;
            v85 = 8;
            v86 = &v265;
            v265 = &TypeAllocSize;
            v267 = v81;
          }

          else
          {
            LODWORD(v265) = v81;
            v84 = 8;
            v85 = 1;
            v86 = v265;
          }

          v87 = v1 + v83;
          v88 = *(v87 + 267);
          v89 = *(*(v87 + 271) + 1792);
          v269 = v84;
          v270 = v85;
          v247 = "agc.sampler_words";
          v249 = v86;
          v251 = 3;
          v252 = v84;
          llvm::GlobalVariable::GlobalVariable();
          *(v82 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v90 = __clz(*(*&v192[*(*v1 - 24)] + 1812)) ^ 0x13F;
          llvm::GlobalObject::setAlignment();
          v91 = v1 + *(*v1 - 24);
          v92 = *(v91 + 268);
          v93 = AGCLLVMBuilder::buildGlobalMetadata((v91 + 1704), v82);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v92, v93);
          if ((*(*v1 + 384))(v1))
          {
            NullValue = llvm::User::operator new(0x58);
            v95 = *(*v1 - 24);
            if ((v79 & 0x80000000) != 0)
            {
              TypeAllocSize = v80;
              v262 = ".";
              v264 = 776;
              v265 = &TypeAllocSize;
              v267 = v81;
              v96 = 2;
              v97 = 8;
              v98 = &v265;
            }

            else
            {
              LODWORD(v265) = v81;
              v96 = 8;
              v97 = 1;
              v98 = v265;
            }

            v102 = v1 + v95;
            v103 = *(v102 + 267);
            v104 = *(v102 + 234);
            v269 = v96;
            v270 = v97;
            v247 = "agc.es1_sampler_lod_bias";
            v249 = v98;
            v250 = v266;
            v251 = 3;
            v252 = v96;
            llvm::GlobalVariable::GlobalVariable();
            *(NullValue + 80) |= 1u;
            llvm::GlobalObject::setSection();
            v105 = v1 + *(*v1 - 24);
            v106 = *(v105 + 268);
            v107 = AGCLLVMBuilder::buildGlobalMetadata((v105 + 1704), NullValue);
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v106, v107);
          }

          else
          {
            v99 = *&v189[*(*v1 - 24)];
            v100 = llvm::PointerType::get();
            NullValue = llvm::Constant::getNullValue(v100, v101);
          }

          v108 = llvm::User::operator new(0x58);
          v109 = *v1;
          v110 = v1 + *(*v1 - 24);
          v111 = *(v110 + 267);
          v112 = *(v110 + 239);
          if ((v79 & 0x80000000) != 0)
          {
            TypeAllocSize = v80;
            v262 = ".";
            v264 = 776;
            v265 = &TypeAllocSize;
            v267 = v81;
            v113 = 2;
            v114 = 8;
            v115 = &v265;
          }

          else
          {
            LODWORD(v265) = v81;
            v113 = 8;
            v114 = 1;
            v115 = v265;
          }

          v269 = v113;
          v270 = v114;
          v247 = "agc.sampler_unique_id";
          v249 = v115;
          v251 = 3;
          v252 = v113;
          v177 = *(*&v192[*(v109 - 24)] + 972) | 0x100000000;
          llvm::GlobalVariable::GlobalVariable();
          *(v108 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v116 = v1 + *(*v1 - 24);
          v117 = *(v116 + 268);
          v118 = AGCLLVMBuilder::buildGlobalMetadata((v116 + 1704), v108);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v117, v118);
          v119 = llvm::User::operator new(0x58);
          v120 = (v1 + *(*v1 - 24));
          v121 = v120[267];
          v122 = v120[238];
          if ((v79 & 0x80000000) != 0)
          {
            TypeAllocSize = v80;
            v262 = ".";
            v264 = 776;
            v265 = &TypeAllocSize;
            v267 = v81;
            v123 = 2;
            v124 = 8;
            v125 = &v265;
          }

          else
          {
            LODWORD(v265) = v81;
            v123 = 8;
            v124 = 1;
            v125 = v265;
          }

          v269 = v123;
          v270 = v124;
          v247 = "agc.sampler_heap_index";
          v249 = v125;
          v251 = 3;
          v252 = v123;
          v178 = *(v120[271] + 972) | 0x100000000;
          llvm::GlobalVariable::GlobalVariable();
          *(v119 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v126 = v1 + *(*v1 - 24);
          v127 = *(v126 + 268);
          v128 = AGCLLVMBuilder::buildGlobalMetadata((v126 + 1704), v119);
          v129 = v127;
          v1 = v193;
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v129, v128);
          if ((*(v213 + 9) & 1) == 0)
          {
            v130 = *(*&v192[*(*v193 - 24)] + 1792);
            v247 = llvm::PointerType::get();
            v131 = *&v189[*(*v193 - 24)];
            v248 = llvm::PointerType::get();
            v132 = v193 + *(*v193 - 24);
            v133 = *(v132 + 239);
            v134 = *(*(v132 + 271) + 972);
            v249 = llvm::PointerType::get();
            llvm::StructType::setBody();
          }

          v247 = v82;
          v248 = NullValue;
          v249 = v108;
          llvm::ConstantStruct::get();
          v135 = llvm::User::operator new(0x58);
          v136 = *&v185[*(*v193 - 24)];
          if ((v79 & 0x80000000) != 0)
          {
            TypeAllocSize = v80;
            v262 = ".";
            v264 = 776;
            v265 = &TypeAllocSize;
            v267 = v81;
            v137 = 2;
            v138 = 8;
            v139 = &v265;
          }

          else
          {
            LODWORD(v265) = v81;
            v137 = 8;
            v138 = 1;
            v139 = v265;
          }

          v66 = v78;
          v269 = v137;
          v270 = v138;
          v247 = "agc.sampler_state_struct_ptr";
          v249 = v139;
          v251 = 3;
          v252 = v137;
          llvm::GlobalVariable::GlobalVariable();
          *(v135 + 80) |= 1u;
          llvm::GlobalVariable::setInitializer();
          *llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](v193 + 688, v135) = v81;
          v247 = 4;
          v248 = 0;
          v249 = v135;
          v140 = v135;
          v58 = v187;
          if (v135 != -8192)
          {
            v140 = v135;
            if (v135 != -4096)
            {
              v140 = v135;
              if (v135)
              {
                llvm::ValueHandleBase::AddToUseList(&v247);
                v140 = v249;
              }
            }
          }

          std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(v193 + 816, v140);
          if (v249 != -8192 && v249 != -4096 && v249)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v247);
          }

          v247 = v69 + 28;
          std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v254, *(v69 + 7))[3] = v135;
          v141 = v69[1];
          if (v141)
          {
            do
            {
              v142 = v141;
              v141 = *v141;
            }

            while (v141);
          }

          else
          {
            do
            {
              v142 = v69[2];
              v20 = *v142 == v69;
              v69 = v142;
            }

            while (!v20);
          }

          v69 = v142;
          if (v142 == v273)
          {
            goto LABEL_213;
          }
        }

        v145 = 0;
      }

      v64 = v183;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v254);
      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v273[0]);
      if (__p != &v225 + 8)
      {
        free(__p);
      }

      v206 = v145 & 1;
      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v205[0]);
LABEL_235:
      if ((*(*v1 + 400))(v1))
      {
        if (v64)
        {
          if (&v207 != (v1 + 1048))
          {
            llvm::SmallPtrSetImplBase::CopyFrom((v1 + 1048), &v207);
          }

          AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(v1);
          __p = v1;
          v230[0] = &unk_2825A8F20;
          v230[1] = &__p;
          v231 = v230;
          for (i1 = *(v1 + 402); i1; i1 = *i1)
          {
            std::function<void ()(llvm::Function *)>::operator()(v231, i1[5]);
          }

          v150 = v230;
LABEL_242:
          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v150);
LABEL_294:
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3096));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3144));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3192));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3240));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3288));
          AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup((v1 + 3336));
          v163 = v206;
          goto LABEL_295;
        }

        if (v58)
        {
          if (*(v1 + 3767) == 1)
          {
            if (&v207 != (v1 + 1048))
            {
              llvm::SmallPtrSetImplBase::CopyFrom((v1 + 1048), &v207);
            }

            v267 = 0;
            v268 = 0;
            v265 = &unk_2825A73D0;
            v266 = &v267;
            __p = &v225 + 8;
            *&v225 = 0x400000000;
            v247 = &v249;
            v152 = *v1;
            v248 = 0x400000000;
            TypeAllocSize = llvm::DataLayout::getTypeAllocSize((v1 + 224), *(*(v1 + *(v152 - 24) + 2168) + 1784));
            LODWORD(v261) = v153;
            LODWORD(v254[0]) = llvm::TypeSize::operator unsigned long long();
            if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
            {
              AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(v1);
            }

            v228[0] = &unk_2825A91F0;
            v228[1] = &v265;
            v229 = v228;
            for (i2 = *(v1 + 390); i2; i2 = *i2)
            {
              std::function<void ()(llvm::Function *)>::operator()(v229, i2[5]);
            }

            std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v228);
            addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(&v265, &__p, v1 + 1000);
            TypeAllocSize = v1;
            v261 = v254;
            operator new();
          }

          if (!*(*(v1 + *(*v1 - 24) + 2168) + 1900))
          {
            if (v206 == 1)
            {
              v167 = v208;
              if (v208 == v207)
              {
                v168 = (&v209 + 4);
              }

              else
              {
                v168 = &v209;
              }

              v169 = *v168;
              v170 = &v208[8 * v169];
              if (v169)
              {
                v171 = 8 * v169;
                do
                {
                  if (*v167 < 0xFFFFFFFFFFFFFFFELL)
                  {
                    goto LABEL_311;
                  }

                  v167 += 8;
                  v171 -= 8;
                }

                while (v171);
                v167 = v170;
              }

LABEL_311:
              std::vector<llvm::Value *>::vector[abi:nn200100]<llvm::SmallPtrSetIterator<llvm::Value *>,0>(&__p, v167, v170, v170);
              AGCLLVMUserObject::allocateBindlessTextures(v1, &__p, v1 + 3192, v1 + 3096, v1 + 3288);
            }

            goto LABEL_294;
          }

          if (&v207 != (v1 + 1048))
          {
            llvm::SmallPtrSetImplBase::CopyFrom((v1 + 1048), &v207);
          }

          __p = &v225 + 8;
          *&v225 = 0x800000000;
          v250 = 0;
          v249 = 0;
          v248 = &v249;
          v247 = &unk_2825A73D0;
          if (AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(v1))
          {
            AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(v1);
          }

          v222[0] = &unk_2825A9310;
          v222[1] = &v247;
          v223 = v222;
          for (i3 = *(v1 + 390); i3; i3 = *i3)
          {
            std::function<void ()(llvm::Function *)>::operator()(v223, i3[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v222);
          v220[0] = &unk_2825A93A0;
          v220[1] = &v247;
          v221 = v220;
          for (i4 = *(v1 + 414); i4; i4 = *i4)
          {
            std::function<void ()(llvm::Function *)>::operator()(v221, i4[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v220);
          addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex16x2,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(&v247, &__p, v1 + 1000);
          AGCLLVMUserObject::createTextureHeapIndexArray(v1, &__p);
          if (*(v1 + 415))
          {
            AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(v1, &__p, v1 + 1816);
          }

          v265 = v1;
          v218[0] = &unk_2825A9430;
          v218[1] = &v247;
          v218[2] = &v265;
          v219 = v218;
          for (i5 = *(v1 + 390); i5; i5 = *i5)
          {
            std::function<void ()(llvm::Function *)>::operator()(v219, i5[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v218);
          TypeAllocSize = v1;
          v216[0] = &unk_2825A94C0;
          v216[1] = &v247;
          v216[2] = &TypeAllocSize;
          v217 = v216;
          for (i6 = *(v1 + 414); i6; i6 = *i6)
          {
            std::function<void ()(llvm::Function *)>::operator()(v217, i6[5]);
          }

          std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v216);
          std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v249);
          if (__p != &v225 + 8)
          {
            free(__p);
          }

          __p = v1;
          v214[0] = &unk_2825A9550;
          v214[1] = &__p;
          v215 = v214;
          for (i7 = *(v1 + 402); i7; i7 = *i7)
          {
            std::function<void ()(llvm::Function *)>::operator()(v215, i7[5]);
          }

          v150 = v214;
          goto LABEL_242;
        }

        if (!AGCLLVMUserObject::allTextureUsesAreDirect(v1, *(v1 + 390)) || !AGCLLVMUserObject::allTextureUsesAreDirect(v1, *(v1 + 402)))
        {
          if (v206 == 1)
          {
            v195[0] = 0;
            v195[1] = 0;
            v194 = v195;
            std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(&v194, *(v1 + 125), v1 + 126);
            v250 = 0;
            v249 = 0;
            v248 = &v249;
            v247 = &unk_2825A73D0;
            __p = &v225 + 8;
            *&v225 = 0x400000000;
            v265 = &unk_2825A8FB0;
            v266 = &v247;
            v268 = &v265;
            for (i8 = *(v1 + 390); i8; i8 = *i8)
            {
              std::function<void ()(llvm::Function *)>::operator()(v268, i8[5]);
            }

            std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&v265);
            TypeAllocSize = &unk_2825A9040;
            v261 = &v247;
            p_TypeAllocSize = &TypeAllocSize;
            for (i9 = *(v1 + 402); i9; i9 = *i9)
            {
              std::function<void ()(llvm::Function *)>::operator()(p_TypeAllocSize, i9[5]);
            }

            std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](&TypeAllocSize);
            addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex16x2,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(&v247, &__p, &v194);
            AGCLLVMUserObject::createTextureArrays(v1, &__p);
            AGCLLVMUserObject::createTextureHeapIndexArray(v1, &__p);
            v258[0] = v1;
            LOBYTE(v256[0]) = 1;
            operator new();
          }

          v206 = 0;
          *(v1 + 2392) = 1;
          goto LABEL_294;
        }

        if (v206 == 1)
        {
          v197[0] = 0;
          v197[1] = 0;
          v196 = v197;
          std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(&v196, *(v1 + 125), v1 + 126);
          v206 = AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(v1, v1 + 3096, v1 + 3192, &v196);
          v151 = v197[0];
          goto LABEL_245;
        }
      }

      else if (v206 == 1)
      {
        v199[0] = 0;
        v199[1] = 0;
        v198 = v199;
        std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(&v198, *(v1 + 125), v1 + 126);
        v206 = AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(v1, v1 + 3096, v1 + 3192, &v198);
        v151 = v199[0];
LABEL_245:
        std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v151);
        goto LABEL_294;
      }

      v206 = 0;
      goto LABEL_294;
    }

    v206 = 0;
    goto LABEL_235;
  }

  v190 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 8);
    if (v14)
    {
      v18 = (v14 - 56);
    }

    else
    {
      v18 = 0;
    }

    llvm::Value::getName(v18);
    Key = llvm::StringMapImpl::FindKey();
    v20 = Key == -1 || dword_28117E5F8 == Key;
    v21 = !v20;
    AGCLLVMUserObject::getSampleFunctionInfo(&v247, v1, (v14 - 56));
    if (v253 == 1)
    {
      v22 = BYTE6(v250);
      v23 = BYTE6(v250);
      if (*(v14 - 38))
      {
        llvm::Function::BuildLazyArguments((v14 - 56));
        v23 = BYTE6(v250);
      }

      __p = *(*(v14 + 32) + 40 * v23);
      v24 = __p;
      llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v193 + 942, &__p);
      if (v24)
      {
        v25 = *(v24 + 8) == 15;
      }

      else
      {
        v25 = 0;
      }

      if (v25 && (llvm::Type::isOpaquePointerTy(v24) & 1) == 0)
      {
        v265 = **(v24 + 2);
        llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v193 + 942, &v265);
      }

      v26 = HIBYTE(v250);
      v1 = v193;
      if (HIBYTE(v250))
      {
        if (*(v14 - 38))
        {
          llvm::Function::BuildLazyArguments((v14 - 56));
          v26 = HIBYTE(v250);
        }

        *(v193 + 478) = *(*(v14 + 32) + 40 * v26);
      }

      if (*(**(*(v14 - 32) + 16) + 8) == 16)
      {
        v27 = &v265;
        v265 = &unk_2825A7F60;
        v266 = &v265;
        v268 = &v265;
        v28 = *(v14 - 48);
        if (!v28)
        {
          goto LABEL_82;
        }

        do
        {
          v29 = *(v28 + 24);
          if (v29)
          {
            __p = &v226 + 8;
            *&v225 = &v226 + 8;
            *(&v225 + 1) = 16;
            LODWORD(v226) = 0;
            v30 = std::function<BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(v268, v29);
            if (v225 != __p)
            {
              free(v225);
            }

            v16 |= v30;
          }

          v28 = *(v28 + 8);
        }

        while (v28);
        v27 = v268;
        if (v268 == &v265)
        {
LABEL_82:
          ((*v27)[4])(v27);
        }

        else if (v268)
        {
          (*(*v268 + 40))(v268);
        }
      }

      goto LABEL_83;
    }

    llvm::Value::getName((v14 - 56));
    v31 = llvm::StringMapImpl::FindKey();
    if (v31 != -1 && v31 != dword_28117E5D8 || (llvm::Value::getName((v14 - 56)), v32 = llvm::StringMapImpl::FindKey(), v32 != -1) && v32 != dword_28117E598 || (llvm::Value::getName((v14 - 56)), v33 = llvm::StringMapImpl::FindKey(), v33 != -1) && v33 != dword_28117E5F8 && (__p = llvm::Value::getName((v14 - 56)), *&v225 = v34, llvm::StringRef::find() == -1))
    {
      if (*(v14 - 38))
      {
        llvm::Function::BuildLazyArguments((v14 - 56));
      }

      __p = **(v14 + 32);
      v38 = __p;
      llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &__p);
      if (v38 && *(v38 + 8) == 15 && (llvm::Type::isOpaquePointerTy(v38) & 1) == 0)
      {
        v265 = **(v38 + 2);
        llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &v265);
      }

      v22 = 0;
      goto LABEL_83;
    }

    llvm::Value::getName((v14 - 56));
    v35 = llvm::StringMapImpl::FindKey();
    if (v35 != -1 && v35 != dword_28117DBF0)
    {
      break;
    }

LABEL_86:
    v15 |= v21;
    v14 = v17;
    if (v17 == v191)
    {
      v12 = *v1;
      goto LABEL_90;
    }
  }

  if (*(v14 - 38))
  {
    llvm::Function::BuildLazyArguments((v14 - 56));
  }

  __p = **(v14 + 32);
  v36 = __p;
  llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &__p);
  if (v36 && *(v36 + 8) == 15 && (llvm::Type::isOpaquePointerTy(v36) & 1) == 0)
  {
    v265 = **(v36 + 2);
    llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(v1 + 942, &v265);
  }

  if (!((*(v14 - 48) != 0) | v190 & 1))
  {
    v22 = 0;
    v190 = 0;
LABEL_83:
    v39 = *(v18 + 1);
    if (v39)
    {
      v40 = 32 * v22;
      do
      {
        llvm::SmallPtrSetImpl<void *>::insert(&__p, &v207, *(*(v39 + 24) - 32 * (*(*(v39 + 24) + 20) & 0x7FFFFFF) + v40));
        v39 = *(v39 + 8);
      }

      while (v39);
    }

    goto LABEL_86;
  }

  v37 = (v1 + *(*v1 - 24));
  if (*(v37[90].__r_.__value_.__l.__size_ + 1923))
  {
    v22 = 0;
    v190 = 1;
    goto LABEL_83;
  }

  std::string::append(v37 + 69, "Texture atomics not supported on device architecture.");
  v163 = 0;
LABEL_295:
  if (v208 != v207)
  {
    free(v208);
  }

  v164 = *MEMORY[0x277D85DE8];
  return v163 & 1;
}

void AGCLLVMUserObject::getDimensionFunctionMap(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map = 0;
    *&dword_28117E5D8 = 0;
    qword_28117E5E0 = 0x1800000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::DimensionFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getIsNullTextureFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getIsNullTextureFunctionSet(void)::is_null_texture_function_set = 0;
    *&dword_28117E598 = 0;
    qword_28117E5A0 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getIsNullTextureFunctionSet(void)::is_null_texture_function_set, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getTextureAtomicFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set = 0;
    *&dword_28117DBF0 = 0;
    qword_28117DBF8 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getTextureAtomicFunctionSet(void)::texture_atomic_function_set, &dword_20E4E1000);
  }
}

void AGCLLVMUserObject::getUniqueIDFunctionSet(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set = 0;
    *&dword_28117E5F8 = 0;
    qword_28117E600 = 0x800000000;
    __cxa_atexit(llvm::StringSet<llvm::MallocAllocator>::~StringSet, &AGCLLVMUserObject::getUniqueIDFunctionSet(void)::uniqueID_function_set, &dword_20E4E1000);
  }
}

uint64_t AGCLLVMUserObject::getSampleFunctionInfo(AGCLLVMUserObject *this, llvm::Function *a2, llvm::Value *a3)
{
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(a2 + 4448));
  llvm::Value::getName(a3);
  result = llvm::StringMapImpl::FindKey();
  v8 = result;
  if (result == -1)
  {
    v8 = *(SampleFunctionMap + 2);
  }

  if (v8 == *(SampleFunctionMap + 2))
  {
    v9 = 0;
    *this = 0;
  }

  else
  {
    v10 = *SampleFunctionMap + 8 * v8;
    if (*(a2 + 4448) == 1 && *(*(a3 + 3) + 12) - 1 < *(*v10 + 37))
    {
      v11 = AGCLLVMUserObject::getSampleFunctionMap(0);
      llvm::Value::getName(a3);
      result = llvm::StringMapImpl::FindKey();
      v12 = result;
      if (result == -1)
      {
        v12 = *(v11 + 2);
      }

      v10 = *v11 + 8 * v12;
    }

    v13 = *v10;
    v14 = *(v13 + 24);
    *this = *(v13 + 8);
    *(this + 1) = v14;
    *(this + 2) = *(v13 + 40);
    *(this + 6) = *(v13 + 56);
    v9 = 1;
  }

  *(this + 56) = v9;
  return result;
}

uint64_t llvm::SetVector<llvm::Type *,llvm::SmallVector<llvm::Type *,2u>,llvm::SmallDenseSet<llvm::Type *,2u,llvm::DenseMapInfo<llvm::Type *,void>>>::insert(_DWORD *a1, uint64_t *a2)
{
  v9 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(a1, *a2, &v9);
  if (result)
  {
    return result;
  }

  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
    goto LABEL_13;
  }

  if (v6 + ~v5 - a1[1] <= v6 >> 3)
  {
LABEL_13:
    llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::grow(a1, v6);
    v9 = 0;
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(a1, *a2, &v9);
  }

  v7 = v9;
  *a1 += 2;
  if (*v7 != -4096)
  {
    --a1[1];
  }

  v8 = *a2;
  *v7 = *a2;

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((a1 + 6), v8);
}

uint64_t AGCLLVMUserObject::isTextureOrSamplerType(AGCLLVMUserObject *this, llvm::Type *a2)
{
  v4 = a2 >> 4;
  if (*(this + 3768))
  {
    v6 = this + 3776;
    v5 = 2;
  }

  else
  {
    v5 = *(this + 946);
    if (!v5)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v6 = *(this + 472);
  }

  v7 = v5 - 1;
  v8 = (v4 ^ (a2 >> 9)) & v7;
  v9 = *&v6[8 * v8];
  if (v9 == a2)
  {
    v10 = 1;
  }

  else
  {
    v19 = 1;
    do
    {
      v10 = v9 != -4096;
      if (v9 == -4096)
      {
        break;
      }

      v20 = v8 + v19++;
      v8 = v20 & v7;
      v9 = *&v6[8 * v8];
      v10 = 1;
    }

    while (v9 != a2);
  }

LABEL_7:
  v11 = *(this + 478);
  v12 = v11 == a2;
  if ((*(a2 + 2) & 0xFE) != 0x10)
  {
    return v10 | ((v11 == a2) << 8);
  }

  v13 = *(this + 962);
  if (v13)
  {
    v14 = *(this + 479);
    LODWORD(v15) = (v4 ^ (a2 >> 9)) & (v13 - 1);
    v16 = v14 + 16 * v15;
    v17 = *v16;
    if (*v16 == a2)
    {
LABEL_10:
      if (v16 != v14 + 16 * v13)
      {
        return *(v16 + 8);
      }
    }

    else
    {
      v21 = 1;
      while (v17 != -4096)
      {
        v22 = v15 + v21++;
        v15 = v22 & (v13 - 1);
        v17 = *(v14 + 16 * v15);
        if (v17 == a2)
        {
          v16 = v14 + 16 * v15;
          goto LABEL_10;
        }
      }
    }
  }

  if (*(a2 + 2) == 17)
  {
    isTextureOrSamplerType = AGCLLVMUserObject::isTextureOrSamplerType(this, **(a2 + 2));
    LOBYTE(v10) = isTextureOrSamplerType & 1;
    v12 = (isTextureOrSamplerType >> 8) & 1;
  }

  else if (*(a2 + 2) == 16)
  {
    v23 = *(a2 + 3);
    if (v23)
    {
      v24 = *(a2 + 2);
      v25 = 8 * v23;
      do
      {
        v26 = *v24++;
        v27 = AGCLLVMUserObject::isTextureOrSamplerType(this, v26);
        LOBYTE(v10) = v27 & 1 | v10;
        v12 |= (v27 >> 8) & 1;
        v25 -= 8;
      }

      while (v25);
    }
  }

  v18 = v10 | (v12 << 8);
  v33 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 479), *(this + 962), a2, &v33) & 1) == 0)
  {
    v29 = *(this + 960);
    v30 = *(this + 962);
    if (4 * v29 + 4 >= 3 * v30)
    {
      v30 *= 2;
    }

    else if (v30 + ~v29 - *(this + 961) > v30 >> 3)
    {
LABEL_32:
      v31 = v33;
      ++*(this + 960);
      if (*v31 != -4096)
      {
        --*(this + 961);
      }

      *v31 = a2;
      *(v31 + 8) = v18;
      return v18;
    }

    llvm::DenseMap<llvm::Type *,std::pair<BOOL,BOOL>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::pair<BOOL,BOOL>>>::grow(this + 3832, v30);
    v33 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*(this + 479), *(this + 962), a2, &v33);
    goto LABEL_32;
  }

  return v18;
}

uint64_t AGCLLVMUserObject::shouldUseGBTIndirectionForGlobalBindings(AGCLLVMUserObject *this)
{
  if ((AGCLLVMUserObject::mayBeCalledFromIntersectionFunction(this) & 1) != 0 || (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 27)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 15);
  }

  return v2 & 1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 8 * (v13 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t AGCLLVMUserObject::areIndirectSamplersSupported(AGCLLVMUserObject *this)
{
  if (*(this + 14) == 1)
  {
    v1 = *(*(this + *(*this - 24) + 2168) + 1865);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::grow(uint64_t a1, unsigned int a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a2 >= 3)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if (*a1)
  {
    v8 = v16;
    for (i = 8; i != 24; i += 8)
    {
      v10 = *(a1 + i);
      if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *v8++ = v10;
      }
    }

    if (a2 > 2)
    {
      *a1 &= ~1u;
      v11 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v11;
    }

    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::moveFromOldBuckets(a1, v16, v8);
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 2)
    {
      v14 = a2;
      *(a1 + 8) = MEMORY[0x20F330650](8 * a2, 8);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    return llvm::deallocate_buffer(v6, (8 * v7));
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 24;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 8 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_20E70C4F0)));
    if (v13.i8[0])
    {
      *(v8 + 8 * v10) = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 8 * v10 + 8) = -4096;
    }

    v10 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v14 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::Type *,llvm::detail::DenseSetEmpty,2u,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>,llvm::Type *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseSetPair<llvm::Type *>>::LookupBucketFor<llvm::Type *>(v5, v14, &v15);
      *v15 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      v13 = *(a2 + 8);
      *(v3 + 9) = v13;
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        result = AGCLLVMUserObject::Sampler::getAllocationInfo(&v21, (v9 + 4), i);
        v15 = *a2;
        if (v13 >= *(a2 + 12))
        {
          if (v15 <= &v21 && v15 + 24 * v13 > &v21)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v15 + 24 * *(a2 + 8);
        v17 = v21;
        *(v16 + 16) = v22;
        *v16 = v17;
        v13 = *(a2 + 8) + 1;
        *(a2 + 8) = v13;
      }

      v18 = v3[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v3[2];
          v20 = *v19 == v3;
          v3 = v19;
        }

        while (!v20);
      }

      v3 = v19;
    }

    while (v19 != v4);
  }

  return result;
}

void AGCLLVMUserObject::createSamplerHeapIndexArray(void *a1, uint64_t a2)
{
  AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, (a1 + 259));
  v4 = a1 + 82;
  llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(v4, *(a2 + 8));
  if (*(a2 + 8))
  {
    v5 = 0;
    v6 = *a2;
    v7 = *v4;
    do
    {
      v8 = *v6;
      v6 += 6;
      *(v7 + 4 * v5++) = v8;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = llvm::ArrayType::get(*(a3 + 32), *(a2 + 8));
  v7 = 1;
  v8 = llvm::User::operator new(0x58);
  v9 = *(a1 + *(*a1 - 24) + 2136);
  v10 = *(a3 + 24);
  v11 = "_indirect";
  if (*v10)
  {
    v31[0] = "_indirect";
    v7 = 3;
    v11 = v10;
  }

  v30[0] = v11;
  v32 = 3;
  v33 = v7;
  v29 = *(a3 + 56) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    v12 = strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v30[0] = v31;
  v30[1] = 0x2000000000;
  v13 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v30, v13);
  v14 = *(a3 + 60);
  v15 = *(a1 + *(*a1 - 24) + 1904);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v16 = *(a2 + 8);
  if (v16)
  {
    v17 = *a2;
    v18 = 24 * v16;
    do
    {
      v19 = *v17;
      v17 += 6;
      v20 = *(a1 + *(*a1 - 24) + 1904);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v21 = *(a1 + *(*a1 - 24) + 2160);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v30, Impl);
      v18 -= 24;
    }

    while (v18);
  }

  v23 = a1 + *(*a1 - 24);
  v24 = *(v23 + 268);
  v25 = *(v23 + 270);
  v26 = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, v26);
  llvm::ValueHandleBase::operator=(a3, v8);
  *(a3 + 48) = v6;
  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t iterateResourceUsers(llvm::Constant *this, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v4 = *(this + 1);
    while (v4)
    {
      v13 = v17;
      v14 = v17;
      v15 = 4;
      v16 = 0;
      v5 = *(v4 + 8);
      v6 = *(v4 + 24);
      if (v6)
      {
        v7 = *(v6 + 16) == 5;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        for (i = *(v6 + 8); i; i = *(i + 8))
        {
          llvm::SmallPtrSetImpl<void *>::insert(v12, &v13, *(i + 24));
        }
      }

      else
      {
        llvm::SmallPtrSetImpl<void *>::insert(v12, &v13, v6);
      }

      std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::__value_func[abi:nn200100](v18, a2);
      v9 = iterateResourceUsers(&v13, v18);
      std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v18);
      if (v14 != v13)
      {
        free(v14);
      }

      v4 = v5;
      if ((v9 & 1) == 0)
      {
        result = 0;
        goto LABEL_17;
      }
    }

    llvm::Constant::removeDeadConstantUsers(this);
  }

  result = 1;
LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    v3 = a2;
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v2 != a2)
      {
        bzero((*a1 + 4 * v2), 4 * a2 - 4 * v2);
      }
    }

    *(a1 + 8) = v3;
  }
}

uint64_t std::function<void ()(llvm::Function *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2>,void ()(llvm::Function *)>::operator()(v3);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v6[0] = &unk_2825A8398;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::areIndirectTexturesSupported(AGCLLVMUserObject *this)
{
  if (*(this + 14) == 1)
  {
    v1 = *(*(this + *(*this - 24) + 2168) + 1865);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t iterateResourceUsers(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = 16;
  if (v3 == *a1)
  {
    v4 = 20;
  }

  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = a1[1]; *i >= 0xFFFFFFFFFFFFFFFELL; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return 1;
      }
    }
  }

  else
  {
    i = a1[1];
  }

  v8 = (v3 + 8 * v5);
  if (i == v8)
  {
    return 1;
  }

  while (1)
  {
    v14 = *i;
    v9 = *(a2 + 24);
    if (!v9)
    {
      break;
    }

    result = (*(*v9 + 48))(v9, &v14);
    ++i;
    if (result)
    {
      v11 = i == v8;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      while (*i >= 0xFFFFFFFFFFFFFFFELL)
      {
        if (++i == v8)
        {
          return result;
        }
      }

      if (i != v8)
      {
        continue;
      }
    }

    return result;
  }

  v12 = std::__throw_bad_function_call[abi:nn200100]();
  return AGCArgumentBuffer::Resource::Bounds::Bounds(v12, v13);
}

AGCArgumentBuffer::Resource::Bounds *AGCArgumentBuffer::Resource::Bounds::Bounds(AGCArgumentBuffer::Resource::Bounds *this, llvm::Constant *a2)
{
  AggregateElement = llvm::Constant::getAggregateElement(a2);
  v5 = llvm::Constant::getAggregateElement(a2);
  v6 = (AggregateElement + 24);
  if (*(AggregateElement + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  *this = *v6;
  v7 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v7 = *v7;
  }

  *(this + 1) = *v7;
  return this;
}

void IntervalMap<unsigned int>::insert(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_111:
    operator new();
  }

  v9 = (a1 + 16);
  v10 = *(a1 + 16);
  do
  {
    v11 = *(v10 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * v13);
  }

  while (v10);
  v14 = (a1 + 16);
  do
  {
    v15 = *(v7 + 28);
    v16 = v15 > HIDWORD(a2);
    v17 = v15 <= HIDWORD(a2);
    if (v16)
    {
      v14 = v7;
    }

    v7 = *(v7 + 8 * v17);
  }

  while (v7);
  if (v9 == v14)
  {
    v14 = v9;
  }

  else
  {
    v18 = v9;
    do
    {
      if (*(v18 + 7) < v4)
      {
        v4 = *(v18 + 7);
      }

      if (v6 <= *(v18 + 8))
      {
        LODWORD(v6) = *(v18 + 8);
      }

      (**a1)(a1, a3, *(v18 + 9));
      v19 = v18[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v18[2];
          v50 = *v20 == v18;
          v18 = v20;
        }

        while (!v50);
      }

      v18 = v20;
    }

    while (v20 != v14);
  }

  v21 = (a1 + 8);
  if (v9 == v14)
  {
    goto LABEL_110;
  }

  do
  {
    v22 = v9;
    v23 = v9[1];
    v24 = v9;
    if (v23)
    {
      do
      {
        v9 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      do
      {
        v9 = v24[2];
        v50 = *v9 == v24;
        v24 = v9;
      }

      while (!v50);
    }

    if (*v21 == v22)
    {
      *v21 = v9;
    }

    v25 = *(a1 + 16);
    --*(a1 + 24);
    v26 = *v22;
    v27 = v22;
    if (*v22)
    {
      v28 = v22[1];
      if (!v28)
      {
        v27 = v22;
LABEL_40:
        v30 = 0;
        v29 = v27[2];
        *(v26 + 16) = v29;
        goto LABEL_41;
      }

      do
      {
        v27 = v28;
        v28 = *v28;
      }

      while (v28);
    }

    v26 = v27[1];
    if (v26)
    {
      goto LABEL_40;
    }

    v29 = v27[2];
    v30 = 1;
LABEL_41:
    v31 = *v29;
    if (*v29 == v27)
    {
      *v29 = v26;
      if (v27 == v25)
      {
        v31 = 0;
        v25 = v26;
      }

      else
      {
        v31 = v29[1];
      }
    }

    else
    {
      v29[1] = v26;
    }

    v32 = *(v27 + 24);
    if (v27 != v22)
    {
      v33 = v22[2];
      v27[2] = v33;
      v33[*v33 != v22] = v27;
      v35 = *v22;
      v34 = v22[1];
      *(v35 + 16) = v27;
      *v27 = v35;
      v27[1] = v34;
      if (v34)
      {
        *(v34 + 16) = v27;
      }

      *(v27 + 24) = *(v22 + 24);
      if (v25 == v22)
      {
        v25 = v27;
      }
    }

    if (!v25 || !v32)
    {
      goto LABEL_104;
    }

    if (!v30)
    {
      *(v26 + 24) = 1;
      goto LABEL_104;
    }

    while (1)
    {
      v36 = v31[2];
      v37 = *v36;
      v38 = *(v31 + 24);
      if (*v36 == v31)
      {
        break;
      }

      if ((v31[3] & 1) == 0)
      {
        *(v31 + 24) = 1;
        *(v36 + 24) = 0;
        v39 = v36[1];
        v40 = *v39;
        v36[1] = *v39;
        if (v40)
        {
          *(v40 + 16) = v36;
        }

        v41 = v36[2];
        v39[2] = v41;
        v41[*v41 != v36] = v39;
        *v39 = v36;
        v36[2] = v39;
        if (v25 == *v31)
        {
          v25 = v31;
        }

        v31 = *(*v31 + 8);
      }

      v42 = *v31;
      if (*v31 && *(v42 + 24) != 1)
      {
        v43 = v31[1];
        if (v43 && (v43[3] & 1) == 0)
        {
LABEL_90:
          v42 = v31;
        }

        else
        {
          *(v42 + 24) = 1;
          *(v31 + 24) = 0;
          v51 = v42[1];
          *v31 = v51;
          if (v51)
          {
            *(v51 + 16) = v31;
          }

          v52 = v31[2];
          v42[2] = v52;
          v52[*v52 != v31] = v42;
          v42[1] = v31;
          v31[2] = v42;
          v43 = v31;
        }

        v53 = v42[2];
        *(v42 + 24) = *(v53 + 24);
        *(v53 + 24) = 1;
        *(v43 + 24) = 1;
        v54 = *(v53 + 8);
        v55 = *v54;
        *(v53 + 8) = *v54;
        if (v55)
        {
          *(v55 + 16) = v53;
        }

        v56 = *(v53 + 16);
        v54[2] = v56;
        v56[*v56 != v53] = v54;
        *v54 = v53;
        goto LABEL_103;
      }

      v43 = v31[1];
      if (v43 && *(v43 + 24) != 1)
      {
        goto LABEL_90;
      }

      *(v31 + 24) = 0;
      v44 = v31[2];
      if (v44 == v25 || (v44[24] & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_82:
      v31 = *(*(v44 + 2) + 8 * (**(v44 + 2) == v44));
    }

    if ((v31[3] & 1) == 0)
    {
      *(v31 + 24) = 1;
      *(v36 + 24) = 0;
      v45 = v37[1];
      *v36 = v45;
      if (v45)
      {
        *(v45 + 16) = v36;
      }

      v46 = v36[2];
      v37[2] = v46;
      v46[*v46 != v36] = v37;
      v37[1] = v36;
      v36[2] = v37;
      v47 = v31[1];
      if (v25 == v47)
      {
        v25 = v31;
      }

      v31 = *v47;
    }

    v48 = *v31;
    if (*v31 && *(v48 + 24) != 1)
    {
      goto LABEL_99;
    }

    v49 = v31[1];
    if (!v49 || *(v49 + 24) == 1)
    {
      *(v31 + 24) = 0;
      v44 = v31[2];
      v50 = v44[24] != 1 || v44 == v25;
      if (v50)
      {
LABEL_84:
        v44[24] = 1;
        goto LABEL_104;
      }

      goto LABEL_82;
    }

    if (v48 && (v48[3] & 1) == 0)
    {
LABEL_99:
      v49 = v31;
      goto LABEL_100;
    }

    *(v49 + 24) = 1;
    *(v31 + 24) = 0;
    v57 = *v49;
    v31[1] = *v49;
    if (v57)
    {
      *(v57 + 16) = v31;
    }

    v58 = v31[2];
    v49[2] = v58;
    v58[*v58 != v31] = v49;
    *v49 = v31;
    v31[2] = v49;
    v48 = v31;
LABEL_100:
    v53 = v49[2];
    *(v49 + 24) = *(v53 + 24);
    *(v53 + 24) = 1;
    *(v48 + 24) = 1;
    v54 = *v53;
    v59 = *(*v53 + 8);
    *v53 = v59;
    if (v59)
    {
      *(v59 + 16) = v53;
    }

    v60 = *(v53 + 16);
    v54[2] = v60;
    v60[*v60 != v53] = v54;
    v54[1] = v53;
LABEL_103:
    *(v53 + 16) = v54;
LABEL_104:
    operator delete(v22);
  }

  while (v9 != v14);
LABEL_110:
  v61 = *v8;
  if (!*v8)
  {
    goto LABEL_111;
  }

  while (1)
  {
    v8 = v61;
    if (v6 < *(v61 + 28))
    {
      goto LABEL_110;
    }

    if (*(v61 + 32) >= v4)
    {
      break;
    }

    v61 = *(v61 + 8);
    if (!v61)
    {
      goto LABEL_111;
    }
  }
}

unint64_t addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      *(v3 + 9) = *(a2 + 8);
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        AGCLLVMUserObject::Texture::getAllocationInfo(v19, (v9 + 4), i);
        result = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(a2, v19);
        v14 = (*a2 + 32 * *(a2 + 8));
        v15 = *(result + 16);
        *v14 = *result;
        v14[1] = v15;
        ++*(a2 + 8);
      }

      v16 = v3[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v3[2];
          v18 = *v17 == v3;
          v3 = v17;
        }

        while (!v18);
      }

      v3 = v17;
    }

    while (v17 != v4);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void AGCLLVMUserObject::createTextureHeapIndexArray(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *(a1 + 2396) = *(a2 + 8);
  v22 = 0;
  LOWORD(v21) = 0;
  v20 = 0xFFFFFFFF00400000;
  v23 = 0;
  v4 = &v20;
  v5 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(a2, &v20);
  v6 = (*a2 + 32 * *(a2 + 8));
  v7 = v5[1];
  *v6 = *v5;
  v6[1] = v7;
  ++*(a2 + 8);
  v8 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, a1 + 1752);
  v20 = &v22;
  v21 = 0x800000000;
  v9 = *(a2 + 8);
  if (v9)
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = 4;
    do
    {
      v14 = *(*a2 + v13);
      if (v14 != -1)
      {
        v4 = v4 & 0xFFFFFF0000000000 | 4;
        llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v20, v11 + v14, v4);
        v9 = *(a2 + 8);
      }

      ++v12;
      v11 += 0x400000000;
      v13 += 32;
    }

    while (v12 < v9);
    if (v21)
    {
      v15 = a1 + *(*a1 - 24);
      if ((*(v15 + 2284) & 1) == 0)
      {
        v17 = std::__throw_bad_optional_access[abi:nn200100]();
        AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(v17, v18, v19);
        return;
      }

      (*(**(v15 + 2168) + 184))(*(v15 + 2168), v10, &v20, *(v15 + 2280));
    }
  }

  if (v20 != &v22)
  {
    free(v20);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = llvm::ArrayType::get(*(a3 + 32), *(a2 + 8));
  v7 = 1;
  v8 = llvm::User::operator new(0x58);
  v9 = *(a1 + *(*a1 - 24) + 2136);
  v10 = *(a3 + 24);
  v11 = "_indirect";
  if (*v10)
  {
    v31[0] = "_indirect";
    v7 = 3;
    v11 = v10;
  }

  v30[0] = v11;
  v32 = 3;
  v33 = v7;
  v29 = *(a3 + 56) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  if (*(a3 + 40))
  {
    v12 = strlen(*(a3 + 40));
  }

  llvm::GlobalObject::setSection();
  v30[0] = v31;
  v30[1] = 0x2000000000;
  v13 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v30, v13);
  v14 = *(a3 + 60);
  v15 = *(a1 + *(*a1 - 24) + 1904);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v16 = *(a2 + 8);
  if (v16)
  {
    v17 = *a2;
    v18 = 32 * v16;
    do
    {
      v19 = *v17;
      v17 += 8;
      v20 = *(a1 + *(*a1 - 24) + 1904);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      v21 = *(a1 + *(*a1 - 24) + 2160);
      Impl = llvm::MDTuple::getImpl();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v30, Impl);
      v18 -= 32;
    }

    while (v18);
  }

  v23 = a1 + *(*a1 - 24);
  v24 = *(v23 + 268);
  v25 = *(v23 + 270);
  v26 = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v24, v26);
  llvm::ValueHandleBase::operator=(a3, v8);
  *(a3 + 48) = v6;
  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 32 * v2 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

void AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::cleanup(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *this)
{
  for (i = *(this + 3); i; i = *i)
  {
    llvm::Function::eraseFromParent(i[5]);
  }

  if (*(this + 4))
  {
    std::__hash_table<std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::__unordered_map_hasher<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::hash<llvm::Type *>,std::equal_to<llvm::Type *>,true>,std::__unordered_map_equal<llvm::Type *,std::__hash_value_type<llvm::Type *,llvm::WeakVH>,std::equal_to<llvm::Type *>,std::hash<llvm::Type *>,true>,std::allocator<std::__hash_value_type<llvm::Type *,llvm::WeakVH>>>::__deallocate_node(*(this + 3));
    *(this + 3) = 0;
    v3 = *(this + 2);
    if (v3)
    {
      for (j = 0; j != v3; ++j)
      {
        *(*(this + 1) + 8 * j) = 0;
      }
    }

    *(this + 4) = 0;
  }
}

uint64_t AGCLLVMUserObject::replaceTexturesAndSamplers(AGCLLVMUserObject *this)
{
  v1 = this;
  v768 = *MEMORY[0x277D85DE8];
  AGCLLVMUserObject::getDimensionFunctionMap(this);
  AGCLLVMUserObject::getTextureFenceFunctionSet(v2);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v3);
  AGCLLVMUserObject::getUniqueIDFunctionSet(v4);
  AGCLLVMUserObject::getTextureAtomicFunctionSet(v5);
  v6 = *(v1 + *(*v1 - 24) + 2136);
  v7 = *(v6 + 32);
  v8 = v6 + 24;
  v690 = v1 + 2168;
  v722 = v1;
  if (v7 != v6 + 24)
  {
    v9 = 0;
    v10 = 0;
    v11 = v1 + 1712;
    v705 = v1 + 2136;
    v707 = v1 + 1912;
    v703 = v1 + 2160;
    v694 = v6 + 24;
    do
    {
      v720 = *(v7 + 8);
      if (v7)
      {
        v12 = (v7 - 56);
      }

      else
      {
        v12 = 0;
      }

      v699 = v12;
      Name = llvm::Value::getName(v12);
      if (v14 >= 0x14)
      {
        v15 = *Name == 0x5F7465672E726961 && *(Name + 8) == 0x6D61735F64616572;
        if (v15 && *(Name + 16) == 1919249520)
        {
          v17 = llvm::Value::getName((v7 - 56));
          v19 = v18 < 0x11 || *(v17 + v18 - 17) != 0x5F65727574786574 || *(v17 + v18 - 9) != 0x315F726566667562 || *(v17 + v18 - 1) != 100;
          v22 = llvm::Value::getName((v7 - 56));
          if (v23 >= 3)
          {
            v24 = (*(v22 + v23 - 3) ^ 0x315F | *(v22 + v23 - 1) ^ 0x64) == 0;
            if ((*(v22 + v23 - 3) ^ 0x315F | *(v22 + v23 - 1) ^ 0x64) == 0 && !v19)
            {
              v24 = *(*&v690[*(*v1 - 24)] + 1884);
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = *(v7 - 48);
          if (v25)
          {
            if (v24)
            {
              v26 = 0;
            }

            else
            {
              v26 = 2;
            }

            v715 = v26;
            v27 = &unk_20E75F419;
            if (v24)
            {
              v27 = "_1d";
            }

            v696 = v27;
            v711 = *v27;
            do
            {
              v28 = *(v25 + 24);
              v25 = *(v25 + 8);
              llvm::IRBuilderBase::SetInsertPoint(&v11[*(*v1 - 24)], v28);
              if (v24)
              {
                v29 = v10;
              }

              else
              {
                v29 = v9;
              }

              if (!v29)
              {
                InternalConstSampler = AGCLLVMUserObject::getInternalConstSampler(v1, v715);
                v32 = v31;
                llvm::ArrayType::get(*&v707[*(*v1 - 24)], 2);
                __p.__r_.__value_.__r.__words[0] = InternalConstSampler;
                __p.__r_.__value_.__l.__size_ = v32;
                v33 = 1;
                v29 = llvm::User::operator new(0x58);
                v34 = v1 + *(*v1 - 24);
                v35 = *(v34 + 267);
                v36 = *(v34 + 270);
                v37 = llvm::IntegerType::get();
                llvm::ArrayType::get(v37, 2);
                llvm::ConstantDataSequential::getImpl();
                if (v711)
                {
                  *&v744[16] = v696;
                  v33 = 3;
                }

                *v744 = "__agc_internal_read_sampler";
                LOBYTE(v745) = 3;
                BYTE1(v745) = v33;
                llvm::GlobalVariable::GlobalVariable();
                if (v24)
                {
                  v10 = v29;
                }

                else
                {
                  v9 = v29;
                }

                v1 = v722;
                v38 = *&v705[*(*v722 - 24)];
                llvm::Module::getOrInsertNamedMetadata();
                *v744 = 0uLL;
                v39 = *&v703[*(*v722 - 24)];
                *v744 = llvm::MDString::get();
                *&v744[8] = llvm::ValueAsMetadata::get();
                v40 = *&v703[*(*v722 - 24)];
                llvm::MDTuple::getImpl();
                llvm::NamedMDNode::addOperand();
              }

              v41 = *(*v1 - 24);
              v42 = *v28;
              LOWORD(v745) = 257;
              llvm::IRBuilderBase::CreateCast(&v11[v41], 49, v29, v42, v744);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v28);
            }

            while (v25);
          }

          llvm::Function::eraseFromParent(v699);
          v8 = v694;
        }
      }

      v7 = v720;
    }

    while (v720 != v8);
  }

  v741 = v743;
  v742 = 0x800000000;
  ConstantSamplers = AGCLLVMUserObject::extractConstantSamplers(v1, &v741);
  v738 = v740;
  v739 = 0x800000000;
  v736[0] = v737;
  v736[1] = 0x800000000;
  v44 = v1 + 1712;
  v721 = v1 + 1712;
  if (v742)
  {
    v45 = v741;
    v46 = (v741 + 8 * v742);
    v712 = v1 + 1912;
    while (1)
    {
      v47 = *v45;
      __p.__r_.__value_.__r.__words[0] = 0;
      v762.__r_.__value_.__r.__words[0] = 0;
      AGCLLVMUserObject::isConstantSampler(v1, v47, &__p, &v762);
      v48 = __p.__r_.__value_.__r.__words[0];
      v49 = v762.__r_.__value_.__r.__words[0];
      v50 = *(v1 + 122);
      v51 = *(v1 + 123);
      if (v50 >= v51)
      {
        v53 = *(v1 + 121);
        v54 = v50 - v53;
        v55 = (v50 - v53) >> 4;
        v56 = v55 + 1;
        if ((v55 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v57 = v51 - v53;
        if (v57 >> 3 > v56)
        {
          v56 = v57 >> 3;
        }

        if (v57 >= 0x7FFFFFFFFFFFFFF0)
        {
          v58 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v56;
        }

        if (v58)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v58);
        }

        v59 = (16 * v55);
        *v59 = __p.__r_.__value_.__r.__words[0];
        v59[1] = v49;
        v52 = 16 * v55 + 16;
        memcpy(0, v53, v54);
        v60 = *(v1 + 121);
        *(v1 + 121) = 0;
        *(v1 + 122) = v52;
        *(v1 + 123) = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v50 = __p.__r_.__value_.__r.__words[0];
        *(v50 + 1) = v49;
        v52 = (v50 + 16);
      }

      *(v1 + 122) = v52;
      v61 = *v1;
      if (*(*&v690[*(*v1 - 24)] + 1900))
      {
LABEL_94:
        v73 = (*(*&v61 + 416))(v1);
        v74 = *(*v1 - 24);
        if (!v73)
        {
          std::string::append((v1 + v74 + 1656), "Indirect samplers are not supported");
          v92 = 0;
          goto LABEL_720;
        }

        if (*(*&v690[v74] + 1900))
        {
          AGCLLVMUserObject::getBindlessConstantSampler(v1, v48, v49, *v47);
        }

        else
        {
          if (v739 >= HIDWORD(v739))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v738 + v739) = ((*(v1 + 119) - *(v1 + 118)) >> 4) | 0x100000000;
          LODWORD(v739) = v739 + 1;
          v75 = *&v712[*(*v1 - 24)];
          v76 = llvm::ConstantInt::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v736, v76);
          ConstantSamplerGlobal = AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(v1, v48, v49);
          if ((*(v1 + 15) & 1) != 0 || *(v1 + 3856) == 1)
          {
            v78 = AGCLLVMUserObject::buildSamplerArgumentPointer(v1, ConstantSamplerGlobal, 0);
            v79 = *(*v1 - 24);
            v80 = *v47;
            LOWORD(v745) = 257;
            v81 = &v721[v79];
            v82 = 50;
          }

          else
          {
            v83 = v1 + *(*v1 - 24);
            v84 = *(v83 + 239);
            v78 = llvm::ConstantInt::get();
            v80 = *v47;
            LOWORD(v745) = 257;
            v81 = (v83 + 1712);
            v82 = 48;
          }

          llvm::IRBuilderBase::CreateCast(v81, v82, v78, v80, v744);
        }

        ConstantSamplers = llvm::Value::replaceAllUsesWith();
        goto LABEL_104;
      }

      SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(v1 + 4448));
      AGCLLVMUserObject::getUniqueIDFunctionSet(SampleFunctionMap);
      *v744 = &v744[16];
      *&v744[8] = 0x2000000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v744, v47);
      v63 = *&v744[8];
      if (!*&v744[8])
      {
LABEL_88:
        v72 = 0;
        goto LABEL_90;
      }

      while (1)
      {
        v64 = *(*v744 + 8 * v63-- - 8);
        *&v744[8] = v63;
        v65 = *(v64 + 8);
        if (v65)
        {
          break;
        }

LABEL_87:
        v1 = v722;
        if (!v63)
        {
          goto LABEL_88;
        }
      }

      while (1)
      {
        v66 = *(v65 + 24);
        v67 = *(v66 + 16);
        if (v67 <= 0x1B)
        {
          if (v67 != 5 || *(v66 + 18) != 49)
          {
            goto LABEL_89;
          }

          goto LABEL_73;
        }

        if (v67 == 84)
        {
          break;
        }

        if (v67 != 77)
        {
          goto LABEL_89;
        }

LABEL_73:
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v744, v66);
LABEL_74:
        v65 = *(v65 + 8);
        if (!v65)
        {
          v63 = *&v744[8];
          goto LABEL_87;
        }
      }

      v68 = *(v66 - 32);
      if (v68 && !*(v68 + 16) && *(v68 + 24) == *(v66 + 72))
      {
        llvm::Value::getName(v68);
        Key = llvm::StringMapImpl::FindKey();
        if (Key != -1 && Key != SampleFunctionMap[2])
        {
          goto LABEL_74;
        }

        v70 = llvm::StringMapImpl::FindKey();
        if (v70 != -1 && v70 != dword_28117E5F8)
        {
          goto LABEL_74;
        }
      }

LABEL_89:
      v72 = 1;
      v1 = v722;
LABEL_90:
      ConstantSamplers = *v744;
      if (*v744 != &v744[16])
      {
        free(*v744);
      }

      if (v72)
      {
        v61 = *v1;
        goto LABEL_94;
      }

LABEL_104:
      if (++v45 == v46)
      {
        v44 = v721;
        if (v739 && !*(*(v1 + *(*v1 - 24) + 2168) + 1900))
        {
          v85 = llvm::ArrayType::get(*(v1 + 271), v739);
          v86 = 1;
          v87 = llvm::User::operator new(0x58);
          v88 = *(v1 + *(*v1 - 24) + 2136);
          v89 = *(v1 + 270);
          v90 = "_indirect";
          if (*v89)
          {
            *&v744[16] = "_indirect";
            v86 = 3;
            v90 = v89;
          }

          *v744 = v90;
          LOBYTE(v745) = 3;
          BYTE1(v745) = v86;
          v663 = *(v1 + 548) | 0x100000000;
          llvm::GlobalVariable::GlobalVariable();
          if (*(v1 + 272))
          {
            v91 = strlen(*(v1 + 272));
          }

          llvm::GlobalObject::setSection();
          *v744 = &v744[16];
          *&v744[8] = 0x2000000000;
          v93 = llvm::ValueAsMetadata::get();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v744, v93);
          v94 = *(v1 + 549);
          v95 = *(v1 + *(*v1 - 24) + 1904);
          llvm::ConstantInt::get();
          v96 = llvm::ValueAsMetadata::get();
          if (v739)
          {
            v97 = v96;
            v98 = v738;
            v99 = 8 * v739;
            do
            {
              *&__p.__r_.__value_.__l.__data_ = v97;
              v100 = *v98;
              v98 += 2;
              v101 = *(v1 + *(*v1 - 24) + 1904);
              llvm::ConstantInt::get();
              __p.__r_.__value_.__l.__size_ = llvm::ValueAsMetadata::get();
              v102 = *(v1 + *(*v1 - 24) + 2160);
              Impl = llvm::MDTuple::getImpl();
              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v744, Impl);
              v99 -= 8;
            }

            while (v99);
          }

          v104 = v1 + *(*v1 - 24);
          v105 = *(v104 + 268);
          v106 = *(v104 + 270);
          v107 = llvm::MDTuple::getImpl();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v105, v107);
          llvm::ValueHandleBase::operator=((v1 + 2136), v87);
          *(v1 + 273) = v85;
          if (*v744 != &v744[16])
          {
            free(*v744);
          }

          v108 = llvm::ArrayType::get(*(v1 + *(*v1 - 24) + 1912), v739);
          v109 = llvm::User::operator new(0x58);
          v110 = v1 + *(*v1 - 24);
          v111 = *(v110 + 267);
          llvm::ArrayType::get(*(v110 + 239), v739);
          *v744 = "agc.constant_sampler_unique_id";
          LOWORD(v745) = 259;
          llvm::GlobalVariable::GlobalVariable();
          *(v109 + 80) |= 1u;
          llvm::ConstantArray::get();
          llvm::GlobalVariable::setInitializer();
          ConstantSamplers = llvm::ValueHandleBase::operator=((v1 + 2264), v109);
          *(v1 + 289) = v108;
          v44 = v721;
        }

        break;
      }
    }
  }

  AGCLLVMUserObject::getGetNullTextureFunctionSet(ConstantSamplers);
  v112 = *v1;
  v113 = *(v1 + *(*v1 - 24) + 2136);
  v114 = *(v113 + 32);
  v115 = v113 + 24;
  if (v114 == v113 + 24)
  {
    goto LABEL_165;
  }

  v708 = v113 + 24;
  v713 = v1 + 1880;
  v116 = &qword_28117E000;
  do
  {
    v117 = *(v114 + 8);
    if (v114)
    {
      v118 = (v114 - 56);
    }

    else
    {
      v118 = 0;
    }

    llvm::Value::getName(v118);
    v119 = llvm::StringMapImpl::FindKey();
    if (v119 != -1 && v119 != *(v116 + 350))
    {
      v716 = (v114 - 56);
      v120 = AGCLLVMUserObject::getSampleFunctionMap(*(v1 + 4448));
      AGCLLVMUserObject::getDimensionFunctionMap(v120);
      AGCLLVMUserObject::getIsNullTextureFunctionSet(v121);
      AGCLLVMUserObject::getUniqueIDFunctionSet(v122);
      v124 = **(*(v114 - 32) + 16);
      v125 = v1 + *(*v1 - 24);
      if ((*(*(v125 + 271) + 1869) & 1) != 0 || *(v1 + 2392) == 1)
      {
        v126 = *(v1 + 599);
        v127 = *(v125 + 238);
        llvm::ConstantInt::get();
        llvm::ConstantExpr::getIntToPtr();
      }

      else
      {
        llvm::Constant::getNullValue(**(*(v114 - 32) + 16), v123);
      }

      v128 = *(v114 - 48);
      if (!v128)
      {
        goto LABEL_162;
      }

      while (1)
      {
        v129 = *(v128 + 24);
        v128 = *(v128 + 8);
        v130 = *(v129 + 1);
        if (!v130)
        {
          goto LABEL_161;
        }

        do
        {
          v131 = *(v130 + 24);
          v130 = *(v130 + 8);
          if (v131)
          {
            if (*(v131 + 16) == 84)
            {
              v132 = *(v131 - 4);
              if (v132)
              {
                if (!*(v132 + 16) && *(v132 + 24) == *(v131 + 9))
                {
                  llvm::Value::getName(*(v131 - 4));
                  v133 = llvm::StringMapImpl::FindKey();
                  v134 = v133;
                  if (v133 == -1)
                  {
                    v134 = v120[2];
                  }

                  v135 = *v120 + 8 * v134;
                  llvm::Value::getName(v132);
                  v136 = llvm::StringMapImpl::FindKey();
                  v138 = v136 != -1 && v136 != dword_28117E5D8;
                  if (v135 != *v120 + 8 * v120[2] || v138)
                  {
                    v140 = *v131;
                    llvm::UndefValue::get();
LABEL_157:
                    llvm::Value::replaceAllUsesWith();
                    llvm::Instruction::eraseFromParent(v131);
                    continue;
                  }

                  llvm::Value::getName(v132);
                  v141 = llvm::StringMapImpl::FindKey();
                  if (v141 != -1 && v141 != dword_28117E5F8)
                  {
                    llvm::Constant::getNullValue(*v131, v142);
                    goto LABEL_157;
                  }

                  llvm::Value::getName(v132);
                  v143 = llvm::StringMapImpl::FindKey();
                  if (v143 != -1 && v143 != dword_28117E598)
                  {
                    v144 = *&v713[*(*v722 - 24)];
                    llvm::ConstantInt::get();
                    goto LABEL_157;
                  }
                }
              }
            }
          }
        }

        while (v130);
        if (*(v129 + 1))
        {
          llvm::Value::replaceAllUsesWith();
        }

LABEL_161:
        llvm::Instruction::eraseFromParent(v129);
        if (!v128)
        {
LABEL_162:
          llvm::Function::eraseFromParent(v716);
          v1 = v722;
          v115 = v708;
          v116 = &qword_28117E000;
          break;
        }
      }
    }

    v114 = v117;
  }

  while (v117 != v115);
  v112 = *v1;
  v44 = v721;
LABEL_165:
  v733 = v735;
  v734 = 0x1000000000;
  v145 = *(v1 + *(*&v112 - 24) + 2136);
  v146 = *(v145 + 32);
  v147 = v145 + 24;
  if (v146 == v145 + 24)
  {
    LOBYTE(v670) = 0;
    goto LABEL_508;
  }

  v697 = 0;
  LODWORD(v670) = 0;
  v148 = v1 + 1704;
  v700 = (v1 + 1904);
  v704 = v1 + 2136;
  v674 = v1 + 2160;
  v665 = v1 + 1912;
  v691 = v1 + 1880;
  v695 = v145 + 24;
  v714 = v1 + 1704;
  while (2)
  {
    v149 = *(v146 + 8);
    v150 = (v146 - 56);
    if (v146)
    {
      v151 = (v146 - 56);
    }

    else
    {
      v151 = 0;
    }

    AGCLLVMUserObject::getSampleFunctionInfo(&v762, v1, v151);
    if (v764 == 1)
    {
      if (v763 && *(*&v690[*(*v1 - 24)] + 1884) == 1)
      {
        HIDWORD(v762.__r_.__value_.__r.__words[0]) = 0;
      }

      if ((AGCLLVMUserObject::replaceSamplerFunctionUses(v1, v146 - 56, &v762) & 1) == 0)
      {
LABEL_506:
        v92 = 0;
        goto LABEL_718;
      }

      if (*(v146 - 48))
      {
        v697 = 1;
        goto LABEL_281;
      }

LABEL_256:
      llvm::Function::eraseFromParent(v150);
      goto LABEL_281;
    }

    llvm::Value::getName((v146 - 56));
    v152 = llvm::StringMapImpl::FindKey();
    v706 = v149;
    v709 = v146;
    v717 = (v146 - 56);
    if (v152 == -1 || v152 == dword_28117E5D8)
    {
      llvm::Value::getName((v146 - 56));
      v192 = llvm::StringMapImpl::FindKey();
      if (v192 != -1 && v192 != dword_28117E5F8)
      {
        v193 = (v146 - 56);
        *v744 = llvm::Value::getName(v717);
        *&v744[8] = v194;
        if (v194 == 28 && !llvm::StringRef::compare_insensitive() || (__p.__r_.__value_.__r.__words[0] = llvm::Value::getName(v717), __p.__r_.__value_.__l.__size_ = v195, v195 == 28) && !llvm::StringRef::compare_insensitive())
        {
          llvm::Value::getName(v717);
          v196 = *(v146 - 32);
          v197 = *&v704[*(*v1 - 24)];
          llvm::Module::getOrInsertFunction();
          if (llvm::GlobalValue::isDeclaration(v198))
          {
            v199 = *&v674[*(*v1 - 24)];
            *v744 = "entry";
            LOWORD(v745) = 259;
            operator new();
          }
        }

        *v744 = llvm::Value::getName(v717);
        *&v744[8] = v233;
        v234 = llvm::StringRef::find();
        if (*(v146 - 38))
        {
          llvm::Function::BuildLazyArguments(v717);
        }

        isOpaquePointerTy = llvm::Type::isOpaquePointerTy(**(v146 + 32));
        v236 = *(v146 - 48);
        if (!v236)
        {
          goto LABEL_279;
        }

        v237 = isOpaquePointerTy;
        do
        {
          v238 = *(v236 + 24);
          v236 = *(v236 + 8);
          v239 = *(v238 - 4 * (*(v238 + 5) & 0x7FFFFFF));
          if (*(v239 + 16) - 11 > 1)
          {
            llvm::IRBuilderBase::SetInsertPoint(&v721[*(*v1 - 24)], v238);
            if (v237)
            {
              llvm::Value::getName(v193);
              v241 = *&v704[*(*v1 - 24)];
              Function = llvm::Module::getFunction();
              v729.n128_u64[0] = v239;
              if (AGCLLVMUserObject::isConstantSampler(v1, v239, &__p, v723))
              {
                v243 = v1 + *(*v1 - 24);
                v244 = *(v243 + 239);
                LOWORD(v745) = 257;
                llvm::Type::isOpaquePointerTy(*v239);
                v245 = v244;
                v1 = v722;
                AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v243 + 214, v245, v239, 0, v744);
                v247 = (v1 + *(*v1 - 24));
                v248 = llvm::PointerType::get(v247[270], 2);
                LOWORD(v745) = 257;
                v149 = v706;
                v249 = (v247 + 214);
                v193 = v717;
                v729.n128_u64[0] = llvm::IRBuilderBase::CreateCast(v249, 48, AlignedLoad, v248, v744);
              }

              v250 = *(*v1 - 24);
              LOWORD(v745) = 257;
              llvm::IRBuilderBase::CreateCall(&v721[v250], *(Function + 24), Function, &v729, 1, v744);
            }

            else if (v234 == -1)
            {
              v252 = *(*v1 - 24);
              v253 = AGCLLVMUserObject::buildImageArgumentPointer(v1, v239, 9u);
              LOWORD(v745) = 257;
              v254 = &v714[v252];
              v193 = v717;
              AGCLLVMBuilder::CreateLoad(v254, v253, v744);
            }

            else
            {
              *v744 = 0;
              if (AGCLLVMUserObject::isConstantSampler(v1, v239, v744, &__p) && (v251 = v1 + *(*v1 - 24), !*(*(v251 + 271) + 1900)))
              {
                v255 = *(v251 + 239);
                llvm::ConstantInt::get();
              }

              else
              {
                AGCLLVMUserObject::buildSamplerArgumentPointer(v1, v239, 2u);
              }
            }
          }

          else
          {
            v240 = *v238;
            llvm::UndefValue::get();
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v238);
        }

        while (v236);
        v148 = v714;
        v147 = v695;
        if (*(v709 - 48))
        {
          v697 = 1;
        }

        else
        {
LABEL_279:
          llvm::Function::eraseFromParent(v193);
        }

        goto LABEL_280;
      }

      llvm::Value::getName(v717);
      v200 = llvm::StringMapImpl::FindKey();
      if (v200 != -1 && v200 != dword_28117E5B8)
      {
        v201 = *(v146 - 48);
        v150 = (v146 - 56);
        if (v201)
        {
          while (1)
          {
            v202 = *(v201 + 24);
            v201 = *(v201 + 8);
            v203 = *(v202 - 4 * (*(v202 + 5) & 0x7FFFFFF));
            if (v203[16] - 11 > 1)
            {
              if (((*(*v1 + 400))(v1) & 1) == 0 && *(llvm::Value::stripPointerCasts(v203) + 16) > 0x14u)
              {
                goto LABEL_227;
              }

              llvm::IRBuilderBase::SetInsertPoint(&v721[*(*v1 - 24)], v202);
              v205 = v1 + *(*v1 - 24);
              v206 = *(v205 + 271);
              if (*(v206 + 1064))
              {
                v207 = strlen(*(v206 + 1064));
              }

              v208 = *(v205 + 231);
              inserted = AGCLLVMBuilder::getOrInsertFunction<>((v205 + 1704));
              v210 = *(*v1 - 24);
              LOWORD(v745) = 257;
              llvm::IRBuilderBase::CreateCall(&v721[v210], *(inserted + 24), inserted, 0, 0, v744);
              v146 = v709;
            }

            else
            {
              v204 = *v202;
              llvm::UndefValue::get();
            }

            llvm::Value::replaceAllUsesWith();
            llvm::Instruction::eraseFromParent(v202);
LABEL_227:
            if (!v201)
            {
              goto LABEL_244;
            }
          }
        }

        goto LABEL_246;
      }

      v150 = (v146 - 56);
      llvm::Value::getName(v717);
      v211 = llvm::StringMapImpl::FindKey();
      if (v211 == -1 || v211 == dword_28117E598)
      {
        llvm::Value::getName(v717);
        v212 = llvm::StringMapImpl::FindKey();
        if (v212 != -1)
        {
          v44 = v721;
          if (v212 == dword_28117DBF0)
          {
            goto LABEL_281;
          }

          v213 = *(*v1 - 24);
          if (*(*&v690[v213] + 1943) == 1)
          {
            v682 = *(v700 + v213);
            v214 = llvm::Value::getName(v717);
            v216 = 11;
            if (v215 < 0xB)
            {
              v216 = v215;
            }

            v217 = v215 - v216;
            v218 = v216 + v214;
            v726 = (v216 + v214);
            v727 = v215 - v216;
            if (v215 - v216 >= 4)
            {
              if (*v218 == 1684107116)
              {
                v664 = 0;
                v689 = 0;
                v219 = 1;
LABEL_334:
                v44 = v721;
                goto LABEL_335;
              }

              if (v217 == 4)
              {
                LOBYTE(v219) = 1;
              }

              else
              {
                LOBYTE(v219) = 0;
                if (*v218 == 1919906931 && *(v218 + 4) == 101)
                {
                  v664 = 0;
                  v219 = 2;
                  v269 = 1;
                  goto LABEL_333;
                }
              }
            }

            else
            {
              v219 = 1;
              if (v217 != 3)
              {
                v664 = 0;
LABEL_332:
                v269 = 2;
LABEL_333:
                v689 = v269;
                goto LABEL_334;
              }
            }

            if (*v218 == 26989 && *(v218 + 2) == 110)
            {
              v683 = *&v665[*(*v1 - 24)];
              v259 = 10;
            }

            else
            {
              if (*v218 != 24941 || *(v218 + 2) != 120)
              {
                if (v217 >= 0x10)
                {
                  if (*v218 == 0x5F657261706D6F63 && *(v218 + 8) == 0x65676E6168637865)
                  {
                    v664 = 0;
                    v219 = 1;
                    v269 = 3;
                    goto LABEL_333;
                  }
                }

                else if (v217 < 8)
                {
                  if (v219)
                  {
                    goto LABEL_330;
                  }

                  goto LABEL_326;
                }

                if (*v218 == 0x65676E6168637865)
                {
LABEL_330:
                  v664 = 0;
                  goto LABEL_331;
                }

LABEL_326:
                if (*v218 != 1668572518 || *(v218 + 4) != 104)
                {
                  goto LABEL_330;
                }

                if (v217 >= 6)
                {
                  v510 = 6;
                }

                else
                {
                  v510 = v215 - v216;
                }

                v511 = llvm::StringRef::find();
                v512 = v511 == -1 && llvm::StringRef::find() != -1;
                v513 = (v218 + v510);
                v514 = v217 - v510;
                if (v217 - v510 < 3)
                {
                  v44 = v721;
                  v146 = v709;
                  if (v514 != 2)
                  {
                    v664 = 0;
LABEL_492:
                    v219 = 1;
                    v689 = 2;
LABEL_335:
                    v681 = llvm::StringRef::find();
                    if (v681 != -1)
                    {
                      v270 = 0;
                      v718 = *(*&v690[*(*v1 - 24)] + 1884) ^ 1;
                      v679 = 1;
                      v271 = 4;
LABEL_337:
                      v678 = v271;
LABEL_343:
                      v686 = llvm::StringRef::find();
                      v273 = *(v146 - 48);
                      if (!v273)
                      {
LABEL_402:
                        LODWORD(v670) = 1;
                        v149 = v706;
                        goto LABEL_281;
                      }

                      v675 = 0;
                      v688 = v219;
                      v274 = v219 + v270 + 1;
                      if (v686 == -1)
                      {
                        v275 = v274;
                      }

                      else
                      {
                        v275 = v219 + v270 + 2;
                      }

                      v677 = v275;
                      v672 = v275 + 1;
                      if (v718 == 1)
                      {
                        v276 = 2;
                      }

                      else
                      {
                        v276 = 3;
                      }

                      v673 = 32 * v274;
                      while (1)
                      {
                        v277 = *(v273 + 3);
                        v693 = *(v273 + 1);
                        llvm::IRBuilderBase::SetInsertPoint(&v44[*(*v1 - 24)], v277);
                        *&v744[16] = 0;
                        *&v744[23] = 0;
                        v745 = 0u;
                        v746 = 0u;
                        v747 = 0u;
                        v748 = 0u;
                        v749 = 0;
                        v753 = 0;
                        v752 = 0u;
                        v751 = 0u;
                        v750 = 0u;
                        v755 = 0u;
                        memset(v756, 0, sizeof(v756));
                        v758 = 0u;
                        memset(v759, 0, 29);
                        v757 = 0u;
                        v759[29] = 1;
                        v760 = 0;
                        LOBYTE(v761) = 0;
                        v754 = 4;
                        *&v744[8] = 4;
                        v278 = *(v277 + 5) & 0x7FFFFFF;
                        *v744 = 2;
                        *&v744[4] = v718;
                        v279 = *(v277 - 4 * v278);
                        *&v745 = AGCLLVMUserObject::buildBindlessIndexAsPtr(v1, v279);
                        *&v746 = AGCLLVMUserObject::buildImageArgumentPointer(v1, v279, 0);
                        v280 = AGCLLVMUserObject::getInternalConstSampler(v1, v678);
                        v282 = v281;
                        v283 = *(v700 + *(*v1 - 24));
                        v284 = llvm::PointerType::get();
                        v285 = v282;
                        v286 = v277;
                        BindlessConstantSampler = AGCLLVMUserObject::getBindlessConstantSampler(v1, v280, v285, v284);
                        *(&v745 + 1) = AGCLLVMUserObject::buildBindlessSamplerIndex(v1, BindlessConstantSampler);
                        *(&v748 + 1) = AGCLLVMUserObject::buildSamplerArgumentPointer(v1, BindlessConstantSampler, 0);
                        v288 = *(v277 + 4 * v688 + -4 * (*(v277 + 5) & 0x7FFFFFF));
                        *&v752 = v288;
                        if (*(v1 + 4448) == 1 && (v718 & 1) == 1 && *(*(v709 - 32) + 12) - 1 == v672 + dword_20E70CAE0[v689])
                        {
                          *(&v752 + 1) = *(v277 + 4 * v677 + -4 * (*(v277 + 5) & 0x7FFFFFF));
                          v675 = 1;
                        }

                        if (v718 == 3)
                        {
                          v288 = AGCLLVMBuilder::extendVector(&v148[*(*v1 - 24)], v288, 4);
                          *&v752 = v288;
                        }

                        v289 = *v1;
                        v290 = v277;
                        if (v681 != -1)
                        {
                          v291 = *v1;
                          if ((*(*&v690[*(*&v289 - 24)] + 1884) & 1) == 0)
                          {
                            v292 = *v288;
                            llvm::FixedVectorType::get();
                            v293 = *&v690[*(*v1 - 24)];
                            (*(*v293 + 912))(v293, v294, v295);
                            v296 = llvm::ConstantInt::get();
                            v297 = *&v690[*(*v1 - 24)];
                            (*(*v297 + 912))(v297, v298, v299);
                            v300 = llvm::ConstantInt::get();
                            v301 = *(*v1 - 24);
                            LOWORD(v767) = 257;
                            v302 = llvm::IRBuilderBase::CreateAnd(&v721[v301], v752, v296, &__p);
                            v303 = *(*v722 - 24);
                            LOWORD(v767) = 257;
                            llvm::IRBuilderBase::CreateLShr(&v721[v303], v752, v300, &__p);
                            v304 = AGCLLVMUserObject::buildImageTextureBufferLength(v722, v279);
                            v305 = v722 + *(*v722 - 24);
                            v306 = *(v305 + 238);
                            LOWORD(v767) = 257;
                            Cast = llvm::IRBuilderBase::CreateCast((v305 + 1712), 39, v752, v306, &__p);
                            v724 = 257;
                            llvm::IRBuilderBase::CreateICmp(v305 + 214, 36, Cast, v304, v723);
                            v308 = *&v690[*(*v722 - 24)];
                            v44 = v721;
                            (*(*v308 + 912))(v308, v309, v310);
                            v148 = v714;
                            llvm::ConstantInt::get();
                            v311 = *(*v722 - 24);
                            LOWORD(v767) = 257;
                            Select = llvm::IRBuilderBase::CreateSelect();
                            v286 = v290;
                            v313 = llvm::UndefValue::get();
                            v314 = &v714[*(*v722 - 24)];
                            LOWORD(v767) = 257;
                            v315 = *(v314 + 25);
                            v316 = llvm::ConstantInt::get();
                            v317 = v302;
                            v1 = v722;
                            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v314 + 8), v313, v317, v316, &__p);
                            v319 = &v714[*(*v722 - 24)];
                            LOWORD(v767) = 257;
                            v320 = *(v319 + 25);
                            v321 = llvm::ConstantInt::get();
                            *&v752 = llvm::IRBuilderBase::CreateInsertElement((v319 + 8), InsertElement, Select, v321, &__p);
                            v289 = *v722;
                          }
                        }

                        *&v757 = 0;
                        v322 = *&v691[*(*&v289 - 24)];
                        v323 = llvm::ConstantInt::get();
                        if (v686 != -1)
                        {
                          v324 = *(v286 + v673 + -32 * (*(v286 + 5) & 0x7FFFFFF));
                          v753 = v324;
                          v325 = *(*v1 - 24);
                          v326 = *v324;
                          v327 = llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          ICmp = llvm::IRBuilderBase::CreateICmp(&v44[v325], 34, v324, v327, &__p);
                          v724 = 257;
                          v323 = llvm::IRBuilderBase::CreateOr(&v44[v325], v323, ICmp, v723);
                        }

                        if ((v679 & 1) == 0)
                        {
                          v329 = *(v286 + 4 * v688 + -4 * (*(v286 + 5) & 0x7FFFFFF) + 4);
                          *&v758 = v329;
                          v330 = *(*v1 - 24);
                          v331 = *v329;
                          v332 = llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          v333 = llvm::IRBuilderBase::CreateICmp(&v44[v330], 34, v329, v332, &__p);
                          v724 = 257;
                          llvm::IRBuilderBase::CreateOr(&v44[v330], v323, v333, v723);
                        }

                        v334 = v752;
                        v335 = *(*v1 - 24);
                        if ((*(*v752 + 8) & 0xFE) == 0x12)
                        {
                          v336 = &v148[v335];
                          LOWORD(v767) = 257;
                          v337 = *&v148[v335 + 200];
                          v338 = llvm::ConstantInt::get();
                          llvm::IRBuilderBase::CreateExtractElement((v336 + 8), v334, v338, &__p);
                          v339 = *(*v1 - 24);
                          v340 = v752;
                          v341 = *v752;
                          if ((*(*v752 + 8) & 0xFE) == 0x12)
                          {
                            v341 = **(v341 + 16);
                          }

                          v342 = (v1 + v339);
                          if (v341 != *(v1 + v339 + 1904))
                          {
                            v343 = v342[237];
                          }

                          llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          v344 = llvm::IRBuilderBase::CreateSelect();
                          v724 = 257;
                          v345 = v342[238];
                          v346 = llvm::ConstantInt::get();
                          *&v752 = llvm::IRBuilderBase::CreateInsertElement((v342 + 214), v340, v344, v346, v723);
                          v44 = v721;
                          v286 = v290;
                        }

                        else
                        {
                          if (*v752 != *(v1 + v335 + 1904))
                          {
                            v347 = *(v1 + v335 + 1896);
                          }

                          llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          *&v752 = llvm::IRBuilderBase::CreateSelect();
                        }

                        if (v718)
                        {
                          v754 = 1;
                          v348 = *(v700 + *(*v1 - 24));
                          *&v755 = llvm::ConstantInt::get();
                        }

                        else
                        {
                          v754 = 3;
                        }

                        *v744 = 11;
                        if (*(&v752 + 1))
                        {
                          if (*(*(&v752 + 1) + 16) > 0x14u)
                          {
                            v349 = 0;
                            goto LABEL_383;
                          }

                          if ((llvm::Constant::isZeroValue(*(&v752 + 1)) & 1) == 0)
                          {
                            v349 = *(&v752 + 1) == 0;
                            goto LABEL_383;
                          }

                          *(&v752 + 1) = 0;
                        }

                        v349 = 1;
LABEL_383:
                        v350 = *v1;
                        if ((*(*&v690[*(*v1 - 24)] + 1953) & 1) == 0 && !v349)
                        {
                          for (i = 0; i != v276; ++i)
                          {
                            v352 = &v148[*(*v1 - 24)];
                            v353 = v752;
                            LOWORD(v767) = 257;
                            v354 = *(v352 + 25);
                            v355 = llvm::ConstantInt::get();
                            Element = llvm::IRBuilderBase::CreateExtractElement((v352 + 8), v353, v355, &__p);
                            v357 = &v148[*(*v1 - 24)];
                            v358 = *(&v752 + 1);
                            LOWORD(v767) = 257;
                            v359 = *(v357 + 25);
                            v360 = llvm::ConstantInt::get();
                            v361 = llvm::IRBuilderBase::CreateExtractElement((v357 + 8), v358, v360, &__p);
                            v362 = v1 + *(*v1 - 24);
                            v363 = v752;
                            LOWORD(v767) = 257;
                            Add = llvm::IRBuilderBase::CreateAdd((v362 + 1712), Element, v361, &__p);
                            v724 = 257;
                            v365 = *(v362 + 238);
                            v366 = llvm::ConstantInt::get();
                            llvm::IRBuilderBase::CreateInsertElement((v362 + 1712), v363, Add, v366, v723);
                          }

                          *(&v752 + 1) = 0;
                          v350 = *v1;
                          v286 = v290;
                        }

                        v367 = (v1 + *(*&v350 - 24));
                        v368 = v367[135].n128_u64[1];
                        v729 = v367[110];
                        llvm::IRBuilderBase::getCurrentDebugLocation(&v730, &v367[107]);
                        v731 = v367[113].n128_u32[0];
                        v369 = (*(*v368 + 288))(v368, &v729, v744);
                        if (v730)
                        {
                          llvm::MetadataTracking::untrack();
                        }

                        v370 = v1 + *(*v1 - 24);
                        v371 = *(v370 + 239);
                        LOWORD(v767) = 257;
                        v372 = llvm::IRBuilderBase::CreateCast((v370 + 1712), 49, v369, v371, &__p);
                        v373 = v1 + *(*v1 - 24);
                        v374 = *(v373 + 239);
                        v375 = llvm::ConstantInt::get();
                        LOWORD(v767) = 257;
                        llvm::IRBuilderBase::CreateICmp(v373 + 214, 32, v372, v375, &__p);
                        v376 = *(*v1 - 24);
                        v377 = llvm::PointerType::get();
                        LOWORD(v767) = 257;
                        v378 = llvm::IRBuilderBase::CreateCast(&v44[v376], 48, v372, v377, &__p);
                        v379 = *v286;
                        v380 = llvm::UndefValue::get();
                        if (v689 > 1)
                        {
                          if (v689 == 2)
                          {
                            v411 = *(v286 + 4 * (v677 + v675) + -4 * (*(v286 + 5) & 0x7FFFFFF));
                            v412 = &v714[*(*v722 - 24)];
                            LOWORD(v767) = 257;
                            v413 = *(v412 + 25);
                            v414 = llvm::ConstantInt::get();
                            v415 = llvm::IRBuilderBase::CreateExtractElement((v412 + 8), v411, v414, &__p);
                            v670 &= 0xFFFFFFFFFFFF0000;
                            AtomicRMW = llvm::IRBuilderBase::CreateAtomicRMW(&v721[*(*v722 - 24)], v664, v378, v415, 0);
                            v417 = v722 + *(*v722 - 24);
                            v418 = *(v417 + 238);
                            if (*v415 == v418)
                            {
                              LOWORD(v767) = 257;
                              llvm::IRBuilderBase::CreateCast((v417 + 1712), 49, AtomicRMW, v418, &__p);
                              v419 = *(v722 + *(*v722 - 24) + 1904);
                              llvm::ConstantInt::get();
                              LOWORD(v767) = 257;
                              v420 = llvm::IRBuilderBase::CreateSelect();
                              v421 = &v714[*(*v722 - 24)];
                              LOWORD(v767) = 257;
                              v422 = *(v421 + 25);
                              v423 = llvm::ConstantInt::get();
                              v424 = llvm::IRBuilderBase::CreateInsertElement((v421 + 8), v380, v420, v423, &__p);
                              v425 = &v714[*(*v722 - 24)];
                              v426 = *(v425 + 25);
                              v427 = llvm::ConstantInt::get();
                              LOWORD(v767) = 257;
                              v428 = *(v425 + 25);
                              v429 = llvm::ConstantInt::get();
                              v430 = llvm::IRBuilderBase::CreateInsertElement((v425 + 8), v424, v427, v429, &__p);
                              v431 = &v714[*(*v722 - 24)];
                              v432 = *(v431 + 25);
                              v433 = llvm::ConstantInt::get();
                              LOWORD(v767) = 257;
                              v434 = *(v431 + 25);
                              v435 = llvm::ConstantInt::get();
                              v436 = llvm::IRBuilderBase::CreateInsertElement((v431 + 8), v430, v433, v435, &__p);
                              v437 = &v714[*(*v722 - 24)];
                              v438 = *(v437 + 25);
                              v439 = llvm::ConstantInt::get();
                              LOWORD(v767) = 257;
                              v440 = *(v437 + 25);
                              v441 = llvm::ConstantInt::get();
                              llvm::IRBuilderBase::CreateInsertElement((v437 + 8), v436, v439, v441, &__p);
                            }

                            v44 = v721;
                            v147 = v695;
                            v148 = v714;
                            goto LABEL_401;
                          }

                          v448 = *(v286 + 4 * (v677 + v675) + -4 * (*(v286 + 5) & 0x7FFFFFF));
                          v667 = v448;
                          v449 = v722;
                          v450 = *(*v722 - 24);
                          LOWORD(v767) = 257;
                          v290 = v286;
                          Load = AGCLLVMBuilder::CreateLoad(&v714[v450], v448, &__p);
                          v452 = *(v290 + 4 * (v677 + v675) + -4 * (*(v290 + 5) & 0x7FFFFFF) + 4);
                          v453 = &v714[*(*v722 - 24)];
                          LOWORD(v767) = 257;
                          v454 = *(v453 + 25);
                          v455 = llvm::ConstantInt::get();
                          v666 = llvm::IRBuilderBase::CreateExtractElement((v453 + 8), Load, v455, &__p);
                          v456 = &v714[*(*v722 - 24)];
                          LOWORD(v767) = 257;
                          v457 = *(v456 + 25);
                          v458 = llvm::ConstantInt::get();
                          v459 = llvm::IRBuilderBase::CreateExtractElement((v456 + 8), v452, v458, &__p);
                          v671 &= 0xFFFFFFFFFFFF0000;
                          AtomicCmpXchg = llvm::IRBuilderBase::CreateAtomicCmpXchg(&v721[*(*v722 - 24)], v378, v666, v459, 0);
                          v461 = *(*v722 - 24);
                          LODWORD(v723[0]) = 0;
                          LOWORD(v767) = 257;
                          llvm::IRBuilderBase::CreateExtractValue(&v721[v461], AtomicCmpXchg, v723, 1, &__p);
                          v462 = *(v449 + *(*v449 - 24) + 1904);
                          llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          v463 = llvm::IRBuilderBase::CreateSelect();
                          v464 = *Load;
                          v465 = llvm::UndefValue::get();
                          v466 = &v714[*(*v722 - 24)];
                          LOWORD(v767) = 257;
                          v467 = *(v466 + 25);
                          v468 = llvm::ConstantInt::get();
                          v469 = llvm::IRBuilderBase::CreateInsertElement((v466 + 8), v465, v463, v468, &__p);
                          v470 = &v714[*(*v722 - 24)];
                          v471 = *(v470 + 25);
                          v472 = llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          v473 = *(v470 + 25);
                          v474 = llvm::ConstantInt::get();
                          v475 = llvm::IRBuilderBase::CreateInsertElement((v470 + 8), v469, v472, v474, &__p);
                          v476 = &v714[*(*v722 - 24)];
                          v477 = *(v476 + 25);
                          v478 = llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          v479 = *(v476 + 25);
                          v480 = llvm::ConstantInt::get();
                          v481 = llvm::IRBuilderBase::CreateInsertElement((v476 + 8), v475, v478, v480, &__p);
                          v482 = &v714[*(*v722 - 24)];
                          v483 = *(v482 + 25);
                          v484 = llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          v485 = *(v482 + 25);
                          v486 = llvm::ConstantInt::get();
                          v487 = v484;
                          v148 = v714;
                          v488 = llvm::IRBuilderBase::CreateInsertElement((v482 + 8), v481, v487, v486, &__p);
                          llvm::IRBuilderBase::CreateAlignedStore(&v721[*(*v722 - 24)], v488, v667, 0);
                          v489 = *(*v722 - 24);
                          LOWORD(v767) = 257;
                          llvm::IRBuilderBase::CreateICmp(&v721[v489], 32, v666, v463, &__p);
                          v490 = *(v449 + *(*v449 - 24) + 1880);
                          llvm::ConstantInt::get();
                          v44 = v721;
                          v491 = *&v691[*(*v722 - 24)];
                          llvm::ConstantInt::get();
                          LOWORD(v767) = 257;
                          llvm::IRBuilderBase::CreateSelect();
                        }

                        else
                        {
                          if (v689)
                          {
                            v442 = (v286 - 4 * (*(v286 + 5) & 0x7FFFFFF))[4];
                            v443 = &v714[*(*v722 - 24)];
                            LOWORD(v767) = 257;
                            v444 = *(v443 + 25);
                            v445 = llvm::ConstantInt::get();
                            v446 = llvm::IRBuilderBase::CreateExtractElement((v443 + 8), v442, v445, &__p);
                            v447 = v378;
                            v148 = v714;
                            v669 &= 0xFFFFFFFFFFFF0000;
                            llvm::IRBuilderBase::CreateAtomicRMW(&v44[*(*v722 - 24)], 0, v447, v446, 0);
                          }

                          else
                          {
                            v381 = v722;
                            v382 = v722 + *(*v722 - 24);
                            v383 = *(v382 + 238);
                            v384 = llvm::ConstantInt::get();
                            v668 &= 0xFFFFFFFFFFFF0000;
                            v385 = llvm::IRBuilderBase::CreateAtomicRMW(v382 + 214, 1, v378, v384, 0);
                            v386 = v381 + *(*v381 - 24);
                            v387 = *(v386 + 238);
                            LOWORD(v767) = 257;
                            llvm::IRBuilderBase::CreateCast((v386 + 1712), 49, v385, v387, &__p);
                            v388 = *(v381 + *(*v381 - 24) + 1904);
                            llvm::ConstantInt::get();
                            LOWORD(v767) = 257;
                            v389 = llvm::IRBuilderBase::CreateSelect();
                            v148 = v714;
                            v390 = &v714[*(*v722 - 24)];
                            LOWORD(v767) = 257;
                            v391 = *(v390 + 25);
                            v392 = llvm::ConstantInt::get();
                            v393 = llvm::IRBuilderBase::CreateInsertElement((v390 + 8), v380, v389, v392, &__p);
                            v394 = &v714[*(*v722 - 24)];
                            v395 = *(v394 + 25);
                            v396 = llvm::ConstantInt::get();
                            LOWORD(v767) = 257;
                            v397 = *(v394 + 25);
                            v398 = llvm::ConstantInt::get();
                            v399 = llvm::IRBuilderBase::CreateInsertElement((v394 + 8), v393, v396, v398, &__p);
                            v400 = &v714[*(*v722 - 24)];
                            v401 = *(v400 + 25);
                            v402 = llvm::ConstantInt::get();
                            LOWORD(v767) = 257;
                            v403 = *(v400 + 25);
                            v404 = llvm::ConstantInt::get();
                            v405 = llvm::IRBuilderBase::CreateInsertElement((v400 + 8), v399, v402, v404, &__p);
                            v44 = v721;
                            v406 = &v714[*(*v722 - 24)];
                            v407 = *(v406 + 25);
                            v408 = llvm::ConstantInt::get();
                            LOWORD(v767) = 257;
                            v409 = *(v406 + 25);
                            v410 = llvm::ConstantInt::get();
                            llvm::IRBuilderBase::CreateInsertElement((v406 + 8), v405, v408, v410, &__p);
                          }

                          v290 = v286;
                        }

                        v147 = v695;
LABEL_401:
                        llvm::Value::replaceAllUsesWith();
                        llvm::Instruction::eraseFromParent(v290);
                        v1 = v722;
                        v273 = v693;
                        if (!v693)
                        {
                          goto LABEL_402;
                        }
                      }
                    }

                    if (llvm::StringRef::find() != -1)
                    {
                      v270 = 0;
                      v679 = 1;
                      v678 = 2;
                      v272 = 1;
LABEL_340:
                      v718 = v272;
                      goto LABEL_343;
                    }

                    if (llvm::StringRef::find() != -1)
                    {
                      v678 = 0;
                      v270 = 0;
                      v718 = 0;
                      v679 = 1;
                      goto LABEL_343;
                    }

                    if (llvm::StringRef::find() == -1)
                    {
                      if (llvm::StringRef::find() != -1)
                      {
                        v679 = 0;
                        v270 = 1;
                        v272 = 2;
                        v678 = 2;
                        goto LABEL_340;
                      }

                      v270 = 0;
                      v718 = 0;
                    }

                    else
                    {
                      v270 = 0;
                      v718 = 3;
                    }

                    v679 = 1;
                    v271 = 2;
                    goto LABEL_337;
                  }

                  goto LABEL_437;
                }

                v516 = *v513 == 25697 && *(v513 + 2) == 100;
                v44 = v721;
                v146 = v709;
                if (v516)
                {
                  if (v512)
                  {
                    v515 = 11;
                  }

                  else
                  {
                    v515 = 1;
                  }

                  goto LABEL_491;
                }

                if (*v513 == 30067 && *(v513 + 2) == 98)
                {
                  if (v512)
                  {
                    v515 = 12;
                  }

                  else
                  {
                    v515 = 2;
                  }

                  goto LABEL_491;
                }

                if (*v513 == 24941 && *(v513 + 2) == 120)
                {
                  if (v511 == -1)
                  {
                    v515 = 9;
                  }

                  else
                  {
                    v515 = 7;
                  }

                  goto LABEL_491;
                }

                if (*v513 == 26989 && *(v513 + 2) == 110)
                {
                  if (v511 == -1)
                  {
                    v515 = 10;
                  }

                  else
                  {
                    v515 = 8;
                  }

                  goto LABEL_491;
                }

                if (*v513 == 28257 && *(v513 + 2) == 100)
                {
                  v515 = 3;
                }

                else
                {
                  if (*v513 != 28536 || *(v513 + 2) != 114)
                  {
LABEL_437:
                    if (bswap32(*v513) >> 16 == 28530)
                    {
                      v515 = 5;
                    }

                    else
                    {
                      v515 = 0;
                    }

                    goto LABEL_491;
                  }

                  v515 = 6;
                }

LABEL_491:
                v664 = v515;
                goto LABEL_492;
              }

              v684 = *&v665[*(*v1 - 24)];
              v259 = 9;
            }

            v664 = v259;
LABEL_331:
            v219 = 1;
            goto LABEL_332;
          }

          if (!*(v146 - 48))
          {
            goto LABEL_256;
          }

          v229 = llvm::Value::getName(v717);
          v231 = 11;
          if (v230 < 0xB)
          {
            v231 = v230;
          }

          v729.n128_u64[0] = v231 + v229;
          v729.n128_u64[1] = v230 - v231;
          if (*(v1 + 4448) != 1 || llvm::StringRef::find() == -1 && llvm::StringRef::find() == -1)
          {
LABEL_421:
            LODWORD(v670) = 1;
LABEL_280:
            v44 = v721;
            goto LABEL_281;
          }

          if (v729.n128_u64[1] >= 5)
          {
            v260 = bswap64(*v729.n128_u64[0] | (*(v729.n128_u64[0] + 4) << 32));
            v261 = v260 >= 0x73746F7265000000;
            v262 = v260 > 0x73746F7265000000;
            v263 = !v261;
            if (v262 == v263)
            {
              v232 = 3;
            }

            else
            {
              v232 = 2;
            }
          }

          else
          {
            v232 = 2;
          }

          if (llvm::StringRef::find() == -1)
          {
            v264 = v232;
          }

          else
          {
            v264 = v232 + 1;
          }

          if (v729.n128_u64[1] < 4)
          {
            goto LABEL_318;
          }

          if (*v729.n128_u64[0] == 1684107116)
          {
            goto LABEL_403;
          }

          if (v729.n128_u64[1] == 4)
          {
LABEL_318:
            v266 = 3;
            goto LABEL_404;
          }

          if (*v729.n128_u64[0] == 1919906931 && *(v729.n128_u64[0] + 4) == 101)
          {
LABEL_403:
            v266 = 2;
            goto LABEL_404;
          }

          if (v729.n128_u64[1] < 0x10)
          {
            goto LABEL_318;
          }

          v522 = bswap64(*v729.n128_u64[0]);
          if (v522 == 0x636F6D706172655FLL)
          {
            v522 = bswap64(*(v729.n128_u64[0] + 8));
            v523 = 0x65786368616E6765;
            if (v522 == 0x65786368616E6765)
            {
              v524 = 0;
LABEL_478:
              if (v524)
              {
                v266 = 3;
              }

              else
              {
                v266 = 5;
              }

LABEL_404:
              v492 = *(v146 - 32);
              v493 = *(v492 + 12);
              if (v493 - 1 == v264 + v266 + 1)
              {
                v494 = 0;
                *v744 = &v744[16];
                *&v744[8] = 0x1000000000;
                do
                {
                  v495 = v264 + 1;
                  if (v494 != v264)
                  {
                    v495 = v494 + 1;
                    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v744, *(*(v492 + 16) + 8 * (v494 + 1)));
                    v493 = *(v492 + 12);
                  }

                  v494 = v495;
                }

                while (v495 < (v493 - 1));
                v496 = **(v492 + 16);
                v497 = llvm::FunctionType::get();
                v498 = *(v709 - 24);
                v499 = llvm::Value::getName(v717);
                LOWORD(v767) = 1283;
                __p.__r_.__value_.__r.__words[0] = "__placeholder.";
                __p.__r_.__value_.__r.__words[2] = v499;
                v766 = v500;
                v501 = *&v704[*(*v1 - 24)];
                v502 = llvm::User::operator new(0x78);
                *(MEMORY[0x20F331170](v502, v497, v498 & 0xF, 0xFFFFFFFFLL, &__p, v501) + 112) = *(v709 + 56);
                v503 = *(v709 - 48);
                while (v503)
                {
                  v504 = *(v503 + 24);
                  v503 = *(v503 + 8);
                  llvm::IRBuilderBase::SetInsertPoint(&v721[*(*v1 - 24)], v504);
                  v505 = 0;
                  __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
                  __p.__r_.__value_.__l.__size_ = 0x1000000000;
                  for (j = v504; ; j = (j + 32))
                  {
                    v507 = llvm::CallBase::arg_end(v504);
                    v508 = *(v504 + 5) & 0x7FFFFFF;
                    if (v505 >= ((v507 - (v504 + 32 * -v508)) >> 5))
                    {
                      break;
                    }

                    if (v264 != v505)
                    {
                      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, *(j - 4 * v508));
                    }

                    ++v505;
                  }

                  v509 = *(*v1 - 24);
                  v724 = 257;
                  llvm::IRBuilderBase::CreateCall(&v721[v509], *(v502 + 24), v502, __p.__r_.__value_.__l.__data_, LODWORD(__p.__r_.__value_.__r.__words[1]), v723);
                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v504);
                  if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
                  {
                    free(__p.__r_.__value_.__l.__data_);
                  }
                }

                llvm::Function::eraseFromParent(v717);
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v733, v502);
                if (*v744 != &v744[16])
                {
                  free(*v744);
                }

                v147 = v695;
                v148 = v714;
              }

              goto LABEL_421;
            }
          }

          else
          {
            v523 = 0x636F6D706172655FLL;
          }

          if (v522 < v523)
          {
            v524 = -1;
          }

          else
          {
            v524 = 1;
          }

          goto LABEL_478;
        }
      }

      else
      {
        v220 = *(v146 - 48);
        if (!v220)
        {
          goto LABEL_246;
        }

        do
        {
          v221 = *(v220 + 24);
          v220 = *(v220 + 8);
          v222 = *(v221 - 4 * (*(v221 + 5) & 0x7FFFFFF));
          if (v222[16] - 11 > 1)
          {
            llvm::IRBuilderBase::SetInsertPoint(&v721[*(*v1 - 24)], v221);
            v224 = AGCLLVMUserObject::buildImageHeapIndex(v1, v222);
            v225 = *(*v1 - 24);
            LOWORD(v745) = 257;
            NullValue = llvm::Constant::getNullValue(*v224, v226);
            v228 = &v721[v225];
            v150 = v717;
            v146 = v709;
            llvm::IRBuilderBase::CreateICmp(v228, 32, v224, NullValue, v744);
          }

          else
          {
            v223 = *v221;
            llvm::UndefValue::get();
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v221);
        }

        while (v220);
LABEL_244:
        if (!*(v146 - 48))
        {
LABEL_246:
          llvm::Function::eraseFromParent(v150);
          goto LABEL_247;
        }

        v697 = 1;
      }

LABEL_247:
      v44 = v721;
      goto LABEL_281;
    }

    v153 = *(v146 - 48);
    if (!v153)
    {
      goto LABEL_214;
    }

    v154 = *(AGCLLVMUserObject::getDimensionFunctionMap(void)::dimension_function_map + 8 * v152);
    while (2)
    {
      v155 = *(v153 + 24);
      v153 = *(v153 + 8);
      v156 = *(v155 - 4 * (*(v155 + 5) & 0x7FFFFFF));
      if (v156[16] - 11 <= 1)
      {
        v157 = *v155;
        llvm::UndefValue::get();
        goto LABEL_183;
      }

      if (((*(*v722 + 400))(v722) & 1) != 0 || *(llvm::Value::stripPointerCasts(v156) + 16) <= 0x14u)
      {
        llvm::IRBuilderBase::SetInsertPoint(&v44[*(*v722 - 24)], v155);
        v158 = *(v154 + 12);
        if (v158 > 2)
        {
          if (v158 == 3)
          {
            v183 = *(*v722 - 24);
            v184 = AGCLLVMUserObject::buildImageArgumentPointer(v722, v156, 2u);
            LOWORD(v745) = 257;
            v185 = AGCLLVMBuilder::CreateLoad(&v714[v183], v184, v744);
            v150 = v717;
            v186 = &v714[*(*v722 - 24)];
            v187 = *(v154 + 12);
            LOWORD(v745) = 257;
            v188 = *(v186 + 25);
            v189 = llvm::ConstantInt::get();
            v190 = (v186 + 8);
            v44 = v721;
            llvm::IRBuilderBase::CreateExtractElement(v190, v185, v189, v744);
          }

          else
          {
            if (v158 == 4)
            {
              v160 = v722;
              v161 = *(*v722 - 24);
              v162 = v156;
              v163 = 5;
            }

            else
            {
              if (v158 != 5)
              {
                goto LABEL_183;
              }

              v160 = v722;
              v161 = *(*v722 - 24);
              v162 = v156;
              v163 = 6;
            }

            v191 = AGCLLVMUserObject::buildImageArgumentPointer(v160, v162, v163);
            LOWORD(v745) = 257;
            AGCLLVMBuilder::CreateLoad(&v714[v161], v191, v744);
          }
        }

        else if (v158 < 3)
        {
          if (v158 || (*(v154 + 16) & 1) == 0)
          {
            v164 = *(*v722 - 24);
            v165 = AGCLLVMUserObject::buildImageArgumentPointer(v722, v156, 2u);
            LOWORD(v745) = 257;
            v166 = AGCLLVMBuilder::CreateLoad(&v714[v164], v165, v744);
            v167 = &v714[*(*v722 - 24)];
            v168 = *(v154 + 12);
            LOWORD(v745) = 257;
            v169 = *(v167 + 25);
            v170 = llvm::ConstantInt::get();
            v171 = (v167 + 8);
            v44 = v721;
            v159 = llvm::IRBuilderBase::CreateExtractElement(v171, v166, v170, v744);
          }

          else
          {
            v159 = AGCLLVMUserObject::buildImageTextureBufferLength(v722, v156);
          }

          v172 = v159;
          v173 = llvm::CallBase::arg_end(v155);
          v174 = (v155 - 32 * (*(v155 + 5) & 0x7FFFFFF));
          if (((v173 - v174) & 0x1FFFFFFFE0) == 0x40)
          {
            v175 = AGCLLVMBuilder::i32Extend(&v714[*(*v722 - 24)], v174[4], 0);
            v176 = *(*v722 - 24);
            LOWORD(v745) = 257;
            LShr = llvm::IRBuilderBase::CreateLShr(&v44[v176], v172, v175, v744);
            v178 = *(v700 + *(*v722 - 24));
            v179 = llvm::ConstantInt::get();
            v180 = *(v700 + *(*v722 - 24));
            llvm::ConstantInt::get();
            v181 = *(*v722 - 24);
            LOWORD(v745) = 257;
            llvm::IRBuilderBase::CreateICmp(&v44[v181], 32, LShr, v179, v744);
            v182 = *(*v722 - 24);
            LOWORD(v745) = 257;
            v149 = v706;
            llvm::IRBuilderBase::CreateSelect();
          }

          v150 = v717;
        }

LABEL_183:
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v155);
      }

      if (v153)
      {
        continue;
      }

      break;
    }

    v1 = v722;
    if (*(v709 - 48))
    {
      v697 = 1;
      goto LABEL_215;
    }

LABEL_214:
    llvm::Function::eraseFromParent(v150);
LABEL_215:
    v147 = v695;
    v148 = v714;
LABEL_281:
    v146 = v149;
    if (v149 != v147)
    {
      continue;
    }

    break;
  }

  if (v734)
  {
    v525 = v733;
    v526 = 8 * v734;
    do
    {
      v527 = llvm::Value::getName(*v525);
      if (v528 >= 0xE)
      {
        v529 = 14;
      }

      else
      {
        v529 = v528;
      }

      v762.__r_.__value_.__r.__words[0] = v529 + v527;
      v762.__r_.__value_.__l.__size_ = v528 - v529;
      llvm::StringRef::str(&__p, &v762);
      LOWORD(v745) = 260;
      *v744 = &__p;
      llvm::Value::setName();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v525;
      v526 -= 8;
    }

    while (v526);
  }

  v112 = *v1;
  if (v697)
  {
    if ((*(*&v112 + 400))(v1))
    {
      v530 = "Could not statically determine the target of a texture write";
    }

    else
    {
      v530 = "Could not resolve texture/sampler references";
    }

    std::string::append((v1 + *(*v1 - 24) + 1656), v530);
    goto LABEL_506;
  }

LABEL_508:
  v531 = v1 + *(*&v112 - 24);
  if ((*(*(v531 + 211) + 1954) & 1) == 0)
  {
    v532 = *(v531 + 267);
    memset(&__p, 0, sizeof(__p));
    operator new();
  }

  v533 = *(v1 + 102);
  v534 = (v1 + 824);
  if (v533 != (v1 + 824))
  {
    v535 = v722 + 1696;
    do
    {
      v536 = v533[6];
      if (v536)
      {
        if (*(v536 + 1))
        {
          if (AGCTargetPrinter::isValidToPrintMessage(*&v535[*(*v722 - 24)]))
          {
            v537 = *&v535[*(*v722 - 24)];
            __p.__r_.__value_.__r.__words[0] = llvm::Value::getName(v536);
            __p.__r_.__value_.__l.__size_ = v538;
            llvm::StringRef::str(v744, &__p);
            v539 = v744[23] >= 0 ? v744 : *v744;
            AGCTargetPrinter::printMessage(v537, "%s: image or sample GV %s still has references: \n", "void AGCLLVMUserObject::cleanupSamplerGlobalVariables()", v539);
            if ((v744[23] & 0x80000000) != 0)
            {
              operator delete(*v744);
            }
          }

          v540 = *(v536 + 1);
          if (v540)
          {
            v541 = MEMORY[0x277D821F8] + 16;
            do
            {
              memset(&__p, 0, sizeof(__p));
              *&v744[8] = 0;
              BYTE8(v745) = 0;
              *&v746 = 0;
              DWORD2(v746) = 1;
              *&v744[24] = 0;
              *&v745 = 0;
              *&v744[16] = 0;
              *v744 = v541;
              *&v747 = &__p;
              llvm::raw_ostream::SetUnbuffered(v744);
              llvm::Value::print(*(v540 + 24), v744);
              if (AGCTargetPrinter::isValidToPrintMessage(*&v535[*(*v722 - 24)]))
              {
                v542 = *v722;
                v543 = v747;
                if (*(v747 + 23) < 0)
                {
                  v543 = *v747;
                }

                AGCTargetPrinter::printMessage(*&v535[*(*v722 - 24)], "\t%s\n", v543);
              }

              llvm::raw_ostream::~raw_ostream(v744);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v540 = *(v540 + 8);
            }

            while (v540);
          }
        }

        else
        {
          llvm::GlobalVariable::eraseFromParent(v533[6]);
        }
      }

      v544 = v533[1];
      if (v544)
      {
        do
        {
          v545 = v544;
          v544 = *v544;
        }

        while (v544);
      }

      else
      {
        do
        {
          v545 = v533[2];
          v15 = *v545 == v533;
          v533 = v545;
        }

        while (!v15);
      }

      v533 = v545;
    }

    while (v545 != v534);
  }

  v546 = v722;
  std::__tree<llvm::WeakVH>::destroy(*(v722 + 103));
  *(v722 + 102) = v534;
  *v534 = 0u;
  v547 = *(v722 + 190);
  v548 = v721;
  if (v547 || *(v722 + 191))
  {
    v549 = (v722 + 752);
    v550 = *(v722 + 192);
    if (v550 <= 4 * v547 || v550 < 0x41)
    {
      *&v744[8] = 2uLL;
      *&v744[24] = -4096;
      *v744 = &unk_2825A7378;
      *&v745 = 0;
      *&__p.__r_.__value_.__r.__words[1] = 2uLL;
      v766 = -8192;
      __p.__r_.__value_.__r.__words[0] = &unk_2825A7378;
      v767 = 0;
      if (v550)
      {
        v555 = *v549;
        v556 = 48 * v550;
        v557 = (v555 + 32);
        do
        {
          llvm::ValueHandleBase::operator=((v557 - 3), &v744[8]);
          *v557 = v745;
          v557 += 6;
          v556 -= 48;
        }

        while (v556);
        v558 = v766;
        *(v722 + 95) = 0;
        if (v558 != -8192 && v558 != -4096 && v558 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&__p.__r_.__value_.__r.__words[1]);
        }
      }

      else
      {
        *(v722 + 95) = 0;
      }

      if (*&v744[24] != -8192 && *&v744[24] != -4096 && *&v744[24])
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v744[8]);
      }

      v548 = v721;
    }

    else
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::destroyAll(v722 + 752);
      v551 = 1 << (33 - __clz(v547 - 1));
      if (v551 <= 64)
      {
        v551 = 64;
      }

      if (v547)
      {
        v552 = v551;
      }

      else
      {
        v552 = 0;
      }

      if (v552 == *(v722 + 192))
      {
LABEL_549:
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(v722 + 752);
      }

      else
      {
        llvm::deallocate_buffer(*v549, (48 * v550));
        if (v552)
        {
          v553 = (4 * v552 / 3u + 1) | ((4 * v552 / 3u + 1) >> 1);
          v554 = v553 | (v553 >> 2) | ((v553 | (v553 >> 2)) >> 4);
          LODWORD(v554) = (((v554 | (v554 >> 8)) >> 16) | v554 | (v554 >> 8)) + 1;
          *(v722 + 192) = v554;
          *(v722 + 94) = MEMORY[0x20F330650](48 * v554, 8);
          goto LABEL_549;
        }

        *v549 = 0;
        *(v722 + 95) = 0;
        *(v722 + 192) = 0;
      }
    }
  }

  llvm::optional_detail::OptionalStorage<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,false>::reset(v722 + 776);
  if (*(v722 + 118) == *(v722 + 119))
  {
    goto LABEL_744;
  }

  v560 = *v722;
  v561 = *(v722 + *(*v722 - 24) + 2136);
  v562 = v561 + 8;
  v563 = *(v561 + 16);
  if (v563 == v561 + 8)
  {
    v566 = 0;
    v565 = 0;
    v564 = 0;
  }

  else
  {
    v564 = 0;
    v565 = 0;
    v566 = 0;
    do
    {
      if (v563)
      {
        v567 = (v563 - 56);
      }

      else
      {
        v567 = 0;
      }

      if (*(v567 + 1))
      {
        if ((*(v567 + 34) & 0x40) != 0 && (v568 = llvm::GlobalObject::getSectionImpl(v567), v569 == 11) && (*v568 == 0x74735F6567616D69 ? (v570 = *(v568 + 3) == 0x65746174735F6567) : (v570 = 0), v570))
        {
          if (*(*v567 + 8) == 17)
          {
            v564 = (v564 + *(*v567 + 32));
          }

          else
          {
            v564 = (v564 + 1);
          }
        }

        else if ((*(v567 + 34) & 0x40) != 0 && (v571 = llvm::GlobalObject::getSectionImpl(v567), v572 == 13) && (*v571 == 0x5F72656C706D6173 ? (v573 = *(v571 + 5) == 0x65746174735F7265) : (v573 = 0), v573))
        {
          ++v565;
        }

        else if ((*(v567 + 34) & 0x40) != 0 && (SectionImpl = llvm::GlobalObject::getSectionImpl(v567), v575 == 15) && (*SectionImpl == 0x746E6174736E6F63 ? (v576 = *(SectionImpl + 7) == 0x7265766972645F74) : (v576 = 0), v576) || (*(v567 + 34) & 0x40) != 0 && (v577 = llvm::GlobalObject::getSectionImpl(v567), v578 == 16) && (*v577 == 0x746E6174736E6F63 ? (v579 = v577[1] == 0x72656C706D61735FLL) : (v579 = 0), v579))
        {
          ++v566;
        }
      }

      v563 = *(v563 + 8);
    }

    while (v563 != v562);
    v546 = v722;
    v560 = *v722;
  }

  v580 = *&v546[*(*&v560 - 24) + 2168];
  v581 = v565 + v566;
  v582 = (*(*v580 + 504))(v580, v564, (v565 + v566));
  v548 = v721;
  if (v582)
  {
LABEL_744:
    if (((*(*v546 + 408))(v546) & 1) == 0)
    {
      v583 = *&v546[*(*v546 - 24) + 2136];
      v584 = *(v583 + 32);
      v676 = (v583 + 24);
      if (v584 != (v583 + 24))
      {
        v710 = v546 + 2160;
        v685 = v546 + 2136;
        v585 = 0x7867612E6D766C6CLL;
        do
        {
          v680 = v584[1];
          v719 = (v584 - 7);
          if (v584)
          {
            v586 = (v584 - 7);
          }

          else
          {
            v586 = 0;
          }

          v587 = *&v690[*(*v546 - 24)];
          v588 = llvm::Value::getName(v586);
          if ((*(*v587 + 888))(v587, v588, v589))
          {
            if (*(*&v690[*(*v546 - 24)] + 1865) == 1 && llvm::Value::hasNUsesOrMore(v719))
            {
              {
                AGCLLVMUserObject::replaceIndirectTextureWriteFunctionUses(llvm::Function *)::force_inline_env_var = 1;
              }

              v590 = AGCLLVMUserObject::replaceIndirectTextureWriteFunctionUses(llvm::Function *)::force_inline_env_var;
            }

            else
            {
              v590 = 1;
            }

            v687 = v590;
            v591 = *(v584 - 6);
            if (v591)
            {
              v701 = 0;
              do
              {
                v592 = 0;
                v593 = *(v591 + 24);
                v692 = *(v591 + 8);
                v762.__r_.__value_.__r.__words[0] = &v762.__r_.__value_.__r.__words[2];
                v762.__r_.__value_.__l.__size_ = 0x1000000000;
                while (1)
                {
                  v594 = llvm::CallBase::arg_end(v593);
                  v595 = v593 - 32 * (*(v593 + 20) & 0x7FFFFFF);
                  if (v592 >= ((v594 - v595) >> 5))
                  {
                    v698 = 0;
                    LODWORD(v592) = 0;
                    goto LABEL_639;
                  }

                  v596 = *(v595 + 32 * v592);
                  v597 = *v596;
                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v762, v596);
                  v598 = *(v596 + 16);
                  do
                  {
                    if (v598 != 77)
                    {
                      break;
                    }

                    v596 = *(v596 - 32);
                    v598 = *(v596 + 16);
                  }

                  while (v596);
                  if (v598 == 84)
                  {
                    v599 = *(v596 - 32);
                    if (v599)
                    {
                      if (!*(v599 + 16) && *(v599 + 24) == *(v596 + 72))
                      {
                        v600 = llvm::Value::getName(v599);
                        if (v601 == 21)
                        {
                          v602 = *v600 == v585 && v600[1] == 0x657275747865742ELL;
                          if (v602 && *(v600 + 13) == 0x6574617453657275)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }

                  ++v592;
                }

                v698 = *(v596 - 32 * (*(v596 + 20) & 0x7FFFFFF) + 32);
LABEL_639:
                v604 = (v592 + 1);
                for (k = v593 + 32 * v604; ; k += 32)
                {
                  v606 = llvm::CallBase::arg_end(v593);
                  v607 = *(v593 + 20) & 0x7FFFFFF;
                  if (v604 >= ((v606 - (v593 + 32 * -v607)) >> 5))
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v762, *(k - 32 * v607));
                  LODWORD(v604) = v604 + 1;
                }

                if (v698 && *(v698 + 16) >= 0x15u)
                {
                  v608 = v701;
                  if (!(v687 & 1 | (v701 != 0)))
                  {
                    v609 = llvm::Value::getName(v719);
                    v610 = *&v690[*(*v546 - 24)];
                    if ((*(*v610 + 896))(v610, v609, v611))
                    {
                      v612 = *(v593 - 32 * (*(v593 + 20) & 0x7FFFFFF));
                      v613 = (v612 + 24);
                      if (*(v612 + 32) >= 0x41u)
                      {
                        v613 = *v613;
                      }

                      v614 = *v613;
                    }

                    else
                    {
                      v614 = -1;
                    }

                    v732.n128_u64[0] = llvm::Value::getName(v719);
                    v732.n128_u64[1] = v615;
                    if (v614 < 0)
                    {
                      v616 = 8;
                    }

                    else
                    {
                      v616 = 9;
                    }

                    if (v614 < 0)
                    {
                      v617 = "llvm.agx";
                    }

                    else
                    {
                      v617 = "llvm.agx2";
                    }

                    llvm::StringRef::split(&v729, &v732, v617, v616);
                    llvm::StringRef::str(&v726, &v730);
                    if (v614 < 0)
                    {
                      std::string::basic_string[abi:nn200100]<0>(&v725, "agx.air.indirect");
                    }

                    else
                    {
                      std::string::basic_string[abi:nn200100]<0>(v744, "agx2.air.indirect.format");
                      std::to_string(&__p, v614);
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        p_p = &__p;
                      }

                      else
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        size = __p.__r_.__value_.__l.__size_;
                      }

                      v620 = std::string::append(v744, p_p, size);
                      v621 = v620->__r_.__value_.__r.__words[2];
                      *&v725.__r_.__value_.__l.__data_ = *&v620->__r_.__value_.__l.__data_;
                      v725.__r_.__value_.__r.__words[2] = v621;
                      v620->__r_.__value_.__l.__size_ = 0;
                      v620->__r_.__value_.__r.__words[2] = 0;
                      v620->__r_.__value_.__r.__words[0] = 0;
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }

                      if ((v744[23] & 0x80000000) != 0)
                      {
                        operator delete(*v744);
                      }
                    }

                    if ((v728 & 0x80u) == 0)
                    {
                      v622 = &v726;
                    }

                    else
                    {
                      v622 = v726;
                    }

                    if ((v728 & 0x80u) == 0)
                    {
                      v623 = v728;
                    }

                    else
                    {
                      v623 = v727;
                    }

                    std::string::append(&v725, v622, v623);
                    v624 = *&v685[*(*v546 - 24)];
                    v608 = llvm::Module::getFunction();
                    if (!v608)
                    {
                      *v744 = &v744[16];
                      *&v744[8] = 0x1000000000;
                      if (*(v584 - 38))
                      {
                        llvm::Function::BuildLazyArguments(v719);
                      }

                      for (m = v584[4]; ; m += 5)
                      {
                        if (*(v584 - 19))
                        {
                          llvm::Function::BuildLazyArguments(v719);
                        }

                        if (m == (v584[4] + 40 * v584[5]))
                        {
                          Int16Ty = llvm::Type::getInt16Ty(*&v546[*(*v546 - 24) + 1776], v625);
                          *(*v744 + 8 * v592) = Int16Ty;
                          v629 = *&v546[*(*v546 - 24) + 1848];
                          llvm::FunctionType::get();
                          v630 = *&v685[*(*v546 - 24)];
                          llvm::Module::getOrInsertFunction();
                          __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__r.__words[2];
                          __p.__r_.__value_.__l.__size_ = 0x1000000000;
                          v702 = v631;
                          if (*(v631 + 12))
                          {
                            v632 = 0;
                            v633 = 0;
                            do
                            {
                              if (*(v631 + 9))
                              {
                                llvm::Function::BuildLazyArguments(v702);
                                v631 = v702;
                              }

                              llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&__p, *(v631 + 11) + v632);
                              v631 = v702;
                              ++v633;
                              v632 += 40;
                            }

                            while (v633 < *(v702 + 12));
                          }

                          v634 = *&v710[*(*v546 - 24)];
                          v723[0] = "entry";
                          v724 = 259;
                          operator new();
                        }

                        v627 = *m;
                        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v744, v627);
                      }
                    }

                    if (SHIBYTE(v725.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v635 = v608;
                      operator delete(v725.__r_.__value_.__l.__data_);
                      v608 = v635;
                    }

                    v585 = 0x7867612E6D766C6CLL;
                    if (v728 < 0)
                    {
                      v636 = v608;
                      operator delete(v726);
                      v608 = v636;
                    }
                  }

                  v701 = v608;
                  v637 = *(v593 + 40);
                  *v744 = "indirect.tex.write.end";
                  LOWORD(v745) = 259;
                  v638 = llvm::BasicBlock::splitBasicBlock();
                  v639 = *(v637 + 40);
                  if (v639 == v637 + 40)
                  {
                    v642 = 0;
                  }

                  else
                  {
                    v640 = (v639 - 24);
                    if (v639)
                    {
                      v641 = v639 - 24;
                    }

                    else
                    {
                      v641 = 0;
                    }

                    if (*(v641 + 16) - 29 >= 0xB)
                    {
                      v642 = 0;
                    }

                    else
                    {
                      v642 = v640;
                    }
                  }

                  llvm::Instruction::eraseFromParent(v642);
                  v643 = &v546[*(*v546 - 24)];
                  *(v643 + 220) = v637;
                  *(v643 + 221) = v637 + 40;
                  v644 = &v546[*(*v546 - 24)];
                  v645 = *(v644 + 237);
                  LOWORD(v745) = 257;
                  v646 = llvm::IRBuilderBase::CreateCast((v644 + 1712), 38, v698, v645, v744);
                  if (v687)
                  {
                    v647 = v585;
                    v648 = *(v546 + 879);
                    v649 = v646;
                    llvm::IRBuilderBase::CreateSwitch(&v548[*(*v546 - 24)], v646, v638, v648);
                    if (v648)
                    {
                      v650 = *v649;
                      llvm::ConstantInt::get();
                      v651 = *&v546[*(*v546 - 24) + 1904];
                      llvm::ConstantInt::get();
                      v652 = *&v710[*(*v722 - 24)];
                      *v744 = "indirect.switch.case";
                      LOWORD(v745) = 259;
                      v653 = *(v637 + 56);
                      operator new();
                    }

                    v585 = v647;
                  }

                  else
                  {
                    *(v762.__r_.__value_.__r.__words[0] + 8 * v592) = v646;
                    v654 = *(*v546 - 24);
                    LOWORD(v745) = 257;
                    llvm::IRBuilderBase::CreateCall(&v548[v654], *(v701 + 3), v701, v762.__r_.__value_.__l.__data_, LODWORD(v762.__r_.__value_.__r.__words[1]), v744);
                    llvm::IRBuilderBase::CreateBr(&v548[*(*v546 - 24)], v638);
                  }

                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v593);
                }

                if (v762.__r_.__value_.__l.__data_ != &v762.__r_.__value_.__r.__words[2])
                {
                  free(v762.__r_.__value_.__l.__data_);
                }

                v591 = v692;
              }

              while (v692);
            }
          }

          v584 = v680;
        }

        while (v680 != v676);
      }
    }

    if (v670)
    {
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(v546, 0, 0);
      v92 = 1;
      AGCLLVMUserObject::buildBindlessImageArgumentPointer(v546, 0, 1);
      AGCLLVMUserObject::buildImageTextureBufferLength(v546, 0);
    }

    else
    {
      v92 = 1;
    }
  }

  else
  {
    std::to_string(&v762, v581 + v564);
    v657 = std::string::insert(&v762, 0, "Total number of textures and samplers (");
    v658 = v657->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v657->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v658;
    v657->__r_.__value_.__l.__size_ = 0;
    v657->__r_.__value_.__r.__words[2] = 0;
    v657->__r_.__value_.__r.__words[0] = 0;
    v659 = std::string::append(&__p, ") exceeds GPU allowance.");
    v660 = v659->__r_.__value_.__r.__words[2];
    *v744 = *&v659->__r_.__value_.__l.__data_;
    *&v744[16] = v660;
    v659->__r_.__value_.__l.__size_ = 0;
    v659->__r_.__value_.__r.__words[2] = 0;
    v659->__r_.__value_.__r.__words[0] = 0;
    if (v744[23] >= 0)
    {
      v661 = v744;
    }

    else
    {
      v661 = *v744;
    }

    if (v744[23] >= 0)
    {
      v662 = v744[23];
    }

    else
    {
      v662 = *&v744[8];
    }

    std::string::append(&v546[*(*v546 - 24) + 1656], v661, v662);
    if ((v744[23] & 0x80000000) != 0)
    {
      operator delete(*v744);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v762.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v762.__r_.__value_.__l.__data_);
    }

    v92 = 0;
  }

LABEL_718:
  if (v733 != v735)
  {
    free(v733);
  }

LABEL_720:
  if (v736[0] != v737)
  {
    free(v736[0]);
  }

  if (v738 != v740)
  {
    free(v738);
  }

  if (v741 != v743)
  {
    free(v741);
  }

  v655 = *MEMORY[0x277D85DE8];
  return v92;
}