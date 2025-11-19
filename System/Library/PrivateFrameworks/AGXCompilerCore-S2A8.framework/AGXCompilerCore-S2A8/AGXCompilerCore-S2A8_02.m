void sub_23C4BC5F4(void *a1)
{
  sub_23C4BC62C(a1);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C4BC62C(void *a1)
{
  *a1 = &unk_284F13BE8;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 61));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 60));
  v2 = a1[45];
  if (v2 != a1 + 47)
  {
    free(v2);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 17));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 16));
  v3 = a1[1];
  if (v3 != a1 + 3)
  {
    free(v3);
  }

  return a1;
}

llvm::Instruction *sub_23C4BC6B8(uint64_t a1, uint64_t *a2, std::string::size_type a3, std::string::size_type a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  sub_23C49F8D0(&v26, "llvm.fma.");
  v9 = *(v8 + 8);
  if ((v9 & 0xFE) == 0x12)
  {
    std::to_string(&v27, *(v8 + 32));
    v10 = std::string::insert(&v27, 0, "v");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    v24 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v24 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v24 >= 0)
    {
      v13 = HIBYTE(v24);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v26, v12, v13);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    v9 = *(v8 + 8);
  }

  v14 = v9 & 0xFE;
  v15 = v8;
  if (v14 == 18)
  {
    v15 = **(v8 + 16);
  }

  if (v15 == *(a1 + 160))
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

  v19 = sub_23C49B858(a1, v17, size, v8, v8, v8, v8);
  v27.__r_.__value_.__r.__words[0] = a2;
  v27.__r_.__value_.__l.__size_ = a3;
  v27.__r_.__value_.__r.__words[2] = a4;
  v25 = 257;
  v20 = sub_23C497A7C(a1 + 8, *(v19 + 24), v19, &v27, 3, __p);
  llvm::Instruction::setHasAllowReassoc(v20);
  llvm::Instruction::setHasApproxFunc(v20);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

llvm::Value *sub_23C4BC894(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.rsqrt");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BC958(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  v12 = 257;
  v7 = sub_23C4BBCA0(a1 + 8, a2, a3, v11);
  v8 = (*(*a1 + 24))(a1, v7);
  v12 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v12 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v12 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v12 = 257;
  sub_23C4A0BD4(a1 + 8, v8, Select, v11);
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Value *sub_23C4BCACC(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *a2;
  v7 = llvm::ConstantFP::get();
  v26 = 257;
  v8 = sub_23C49EA2C(a1 + 8, a2, v7, v25);
  if (a3)
  {
    v9 = llvm::ConstantFP::get();
    v26 = 257;
    v8 = sub_23C4A0BD4(a1 + 8, v8, v9, v25);
  }

  v10 = sub_23C4BBA04(a1, v8);
  v26 = 257;
  v11 = sub_23C4A0EC4(a1 + 8, v8, v10, v25);
  v12 = llvm::ConstantFP::get();
  v13 = llvm::ConstantFP::get();
  v26 = 257;
  v14 = sub_23C49EA2C(a1 + 8, v11, v12, v25);
  v15 = *(a1 + 344);
  if ((*(v15 + 1650) & 1) == 0)
  {
    v26 = 257;
    v16 = sub_23C4A0EC4(a1 + 8, v13, v14, v25);
    v17 = sub_23C4BCCA4(a1, v14, v16);
    v26 = 257;
    v18 = sub_23C4A0EC4(a1 + 8, v14, v12, v25);
    v14 = sub_23C4BCDAC(a1, v17, v18);
    v15 = *(a1 + 344);
  }

  v24 = v14;
  v19 = 1128;
  if (v6 == *(a1 + 152))
  {
    v19 = 1136;
  }

  v20 = *(v15 + v19);
  if (v20)
  {
    v21 = strlen(*(v15 + v19));
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_23C49EB10(a1, v20, v21, v6, v6);
  v26 = 257;
  return sub_23C497A7C(a1 + 8, *(v22 + 24), v22, &v24, 1, v25);
}

uint64_t sub_23C4BCCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v6 = *(*a2 + 8);
  }

  v8 = (*(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) & 2) == 0 && v6 == 2;
  v9 = *(a1 + 344);
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v10 = (*(*v9 + 48))(v9, &v12, a2, a3, v8);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t sub_23C4BCDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v6 = *(*a2 + 8);
  }

  v8 = (*(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) & 2) == 0 && v6 == 2;
  v9 = *(a1 + 344);
  v12 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v13, (a1 + 8));
  v14 = *(a1 + 104);
  v10 = (*(*v9 + 56))(v9, &v12, a2, a3, v8);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t sub_23C4BCEB4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BCACC(a1, a2, 0);
  v5 = sub_23C4BCACC(a1, a2, 1);
  v8 = 257;
  return sub_23C4BBCA0(a1 + 8, v4, v5, v7);
}

llvm::Value *sub_23C4BCF20(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = **(*a3 + 16);
  if ((*(*a2 + 8) & 0xFE) == 0x12 && (v7 = v5[8], v7 != 1))
  {
    v11 = llvm::UndefValue::get();
    v12 = llvm::UndefValue::get();
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v27 = 257;
        v14 = *(a1 + 192);
        v15 = llvm::ConstantInt::get();
        v16 = sub_23C5057E8(a1 + 8, a2, v15, v26);
        v17 = sub_23C4BCACC(a1, v16, 1);
        ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v5);
        if (ScalarSizeInBits > llvm::Type::getScalarSizeInBits(v6))
        {
          v17 = sub_23C505300(a1, v17, v6);
        }

        v27 = 257;
        v19 = *(a1 + 192);
        v20 = llvm::ConstantInt::get();
        v12 = sub_23C505AA8(a1 + 8, v12, v17, v20, v26);
        v21 = sub_23C4BCACC(a1, v16, 0);
        v27 = 257;
        v22 = *(a1 + 192);
        v23 = llvm::ConstantInt::get();
        v11 = sub_23C505AA8(a1 + 8, v11, v21, v23, v26);
      }
    }

    sub_23C4BA8C0((a1 + 8), v12, a3, 0);
    return v11;
  }

  else
  {
    v8 = sub_23C4BCACC(a1, a2, 1);
    v9 = llvm::Type::getScalarSizeInBits(v5);
    if (v9 > llvm::Type::getScalarSizeInBits(v6))
    {
      v8 = sub_23C505300(a1, v8, v6);
    }

    sub_23C4BA8C0((a1 + 8), v8, a3, 0);

    return sub_23C4BCACC(a1, a2, 0);
  }
}

llvm::Value *sub_23C4BD164(uint64_t a1, uint64_t a2)
{
  v13 = 257;
  v4 = sub_23C49EA2C(a1 + 8, a2, a2, v12);
  v5 = *(a1 + 160);
  v6 = llvm::ConstantFP::get();
  v11[16] = 257;
  v7 = sub_23C4A0EC4(a1 + 8, v4, v6, v11);
  v8 = sub_23C4BBBDC(a1, v7);
  v13 = 257;
  v9 = sub_23C4A0BD4(a1 + 8, a2, v8, v12);
  return sub_23C4BD208(a1, v9);
}

llvm::Value *sub_23C4BD208(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.log");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

llvm::Value *sub_23C4BD2CC(uint64_t a1, uint64_t a2)
{
  v13 = 257;
  v4 = sub_23C49EA2C(a1 + 8, a2, a2, v12);
  v5 = *(a1 + 160);
  v6 = llvm::ConstantFP::get();
  v11[16] = 257;
  v7 = sub_23C4A0BD4(a1 + 8, v4, v6, v11);
  v8 = sub_23C4BBBDC(a1, v7);
  v13 = 257;
  v9 = sub_23C4A0BD4(a1 + 8, a2, v8, v12);
  return sub_23C4BD208(a1, v9);
}

uint64_t sub_23C4BD370(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  v5 = llvm::ConstantFP::get();
  v14 = 257;
  v6 = sub_23C4A0BD4(a1 + 8, v5, a2, v13);
  v14 = 257;
  v7 = sub_23C4A0EC4(a1 + 8, v5, a2, v13);
  v14 = 257;
  v8 = sub_23C4BBCA0(a1 + 8, v6, v7, v13);
  v9 = sub_23C4BD208(a1, v8);
  v10 = *(a1 + 160);
  v11 = llvm::ConstantFP::get();
  v14 = 257;
  return sub_23C49EA2C(a1 + 8, v9, v11, v13);
}

uint64_t sub_23C4BD440(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BD4E0(a1, a2);
  v13 = 257;
  v5 = sub_23C4BB8E4(a1 + 8, a2, v12);
  v6 = sub_23C4BD4E0(a1, v5);
  v13 = 257;
  v7 = sub_23C4A0BD4(a1 + 8, v4, v6, v12);
  v8 = *(a1 + 160);
  v9 = llvm::ConstantFP::get();
  v11[16] = 257;
  return sub_23C49EA2C(a1 + 8, v7, v9, v11);
}

llvm::Value *sub_23C4BD4E0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.exp");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BD5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 257;
  v6 = sub_23C4BBCA0(a1 + 8, a2, a3, v16);
  v7 = *(a1 + 344);
  v18 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
  v8 = *(a1 + 104);
  v20 = v8;
  v12 = v18;
  v13 = v19;
  if (v19)
  {
    llvm::MetadataTracking::track();
    v8 = v20;
  }

  v14 = v8;
  v9 = sub_23C4A2368(v7, &v12, v6, "llvm.trunc");
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v17 = 257;
  v10 = sub_23C49EA2C(a1 + 8, v9, a3, v16);
  v15 = 257;
  return sub_23C4A0EC4(a1 + 8, a2, v10, &v12);
}

uint64_t sub_23C4BD6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 257;
  v6 = sub_23C4BBCA0(a1 + 8, a2, a3, v11);
  v7 = sub_23C4BBA04(a1, v6);
  v12 = 257;
  v8 = sub_23C49EA2C(a1 + 8, v7, a3, v11);
  v10[16] = 257;
  return sub_23C4A0EC4(a1 + 8, a2, v8, v10);
}

uint64_t sub_23C4BD74C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BBA04(a1, a2);
  v20 = 257;
  v5 = sub_23C4A0EC4(a1 + 8, a2, v4, v19);
  v6 = *a2;
  v7 = *(*a2 + 8);
  v8 = v7;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(v6 + 16) + 8);
  }

  if (v8 == 2 && (*(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) & 4) == 0)
  {
    if ((*(*a2 + 8) & 0xFE) == 0x12)
    {
      v7 = *(**(v6 + 16) + 8);
    }

    v9 = v7 == 2;
    v10 = 184;
    if (v9)
    {
      v10 = 192;
      v11 = 160;
    }

    else
    {
      v11 = 152;
    }

    if (v9)
    {
      v12 = v19;
    }

    else
    {
      v12 = &v18;
    }

    v13 = *(a1 + v10);
    v14 = llvm::ConstantInt::get();
    v15 = *(a1 + v11);
    *(v12 + 16) = 257;
    v16 = sub_23C49ACF8(a1 + 8, 49, v14, v15, v12);
    if ((*(v6 + 8) & 0xFE) == 0x12)
    {
      sub_23C5060BC(a1, *(v6 + 32), v16);
    }

    sub_23C4BB410(a1, a2);
    v20 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    llvm::ConstantFP::get();
    v20 = 257;
    return llvm::IRBuilderBase::CreateSelect();
  }

  return v5;
}

uint64_t sub_23C4BD904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, a3, v8);
  v9 = 257;
  return sub_23C4A0BD4(a1 + 8, v6, a4, v8);
}

llvm::Value *sub_23C4BD964(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v9 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, v5, v8);
  return sub_23C4BD9C8(a1, v6);
}

llvm::Value *sub_23C4BD9C8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.exp2");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BDA8C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v6 = sub_23C4BDAFC(a1, a2);
  v9 = 257;
  return sub_23C49EA2C(a1 + 8, v6, v5, v8);
}

llvm::Value *sub_23C4BDAFC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.log2");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BDBC0(uint64_t a1, uint64_t *a2)
{
  sub_23C4BB410(a1, a2);
  v4 = *(a1 + 160);
  llvm::ConstantFP::get();
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v5 = *(a1 + 160);
  llvm::ConstantFP::get();
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v6 = *(a1 + 160);
  llvm::ConstantFP::get();
  v7 = *(a1 + 160);
  llvm::ConstantFP::get();
  v8 = *(a1 + 160);
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateSelect();
  v17 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v19 = 257;
  v10 = sub_23C4A0BD4(a1 + 8, a2, Select, v18);
  v11 = *(a1 + 192);
  v19 = 257;
  v12 = sub_23C4BB4D4(a1 + 8, v10, v11, v18);
  v13 = *(a1 + 160);
  v17 = 257;
  sub_23C49EF30(a1 + 8, v12, v13, &v16);
  v14 = *(a1 + 160);
  llvm::ConstantFP::get();
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v19 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4BDD84(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BD4E0(a1, a2);
  v13 = 257;
  v5 = sub_23C4BB8E4(a1 + 8, a2, v12);
  v6 = sub_23C4BD4E0(a1, v5);
  v13 = 257;
  v7 = sub_23C4A0EC4(a1 + 8, v4, v6, v12);
  v8 = *(a1 + 160);
  v9 = llvm::ConstantFP::get();
  v11[16] = 257;
  return sub_23C49EA2C(a1 + 8, v7, v9, v11);
}

uint64_t sub_23C4BDE24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  v5 = llvm::ConstantFP::get();
  v16 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, v5, v15);
  v7 = sub_23C4BD4E0(a1, v6);
  v8 = *(a1 + 160);
  v9 = llvm::ConstantFP::get();
  v16 = 257;
  v10 = sub_23C4A0EC4(a1 + 8, v7, v9, v15);
  v11 = *(a1 + 160);
  v12 = llvm::ConstantFP::get();
  v16 = 257;
  v13 = sub_23C4A0BD4(a1 + 8, v7, v12, v15);
  v16 = 257;
  return sub_23C4BBCA0(a1 + 8, v10, v13, v15);
}

uint64_t sub_23C4BDEF4(uint64_t a1, uint64_t **a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = &qword_27E1F6980;
  if ((atomic_load_explicit(&qword_27E1F69A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F69A0))
  {
    qword_27E1F6980 = 0;
    *&dword_27E1F6988 = 0;
    qword_27E1F6990 = 0x1800000000;
    __cxa_atexit(sub_23C4BE7C4, &qword_27E1F6980, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F69A0);
  }

  if (!dword_27E1F698C)
  {
    v69 = a2;
    v70 = a1;
    v76 = 0;
    v90 = &v92;
    v91 = xmmword_23C532530;
    while (1)
    {
      v5 = 0;
      do
      {
        v6 = 0;
        v83 = off_278BBF3C0[v5];
        __s = v83 + 2;
        v71 = v5;
        v77 = byte_23C532B33[v5];
        v78 = *v83;
        do
        {
          v7 = off_278BBF3C0[v6];
          if (*v83 == 102)
          {
            v75 = 1;
          }

          else
          {
            v75 = 2;
            if (*v7 != 102)
            {
              v74 = 0;
              v8 = 1;
              goto LABEL_11;
            }
          }

          v74 = 1;
          v8 = 4;
LABEL_11:
          v72 = v6;
          v73 = v8;
          v9 = 0;
          v81 = byte_23C532B33[v6];
          v80 = v7 + 2;
          v82 = off_278BBF3C0[v6];
          do
          {
            v10 = 0;
            v11 = 0;
            v12 = v75;
            if ((v74 & (v9 == 0)) == 0)
            {
              v12 = v9;
            }

            v84 = v12;
            v13 = 1;
            do
            {
              v85 = *v7;
              v86 = *v83;
              *&v91 = 0;
              sub_23C4BE764(&v90, *v83);
              sub_23C4BE764(&v90, v83[1]);
              v14 = *(&off_278BBF3A0 + v76);
              v15 = strlen(v14);
              sub_23C4B01BC(&v90, v14, &v14[v15]);
              v16 = strlen(__s);
              sub_23C4B01BC(&v90, __s, &__s[v16]);
              sub_23C4B01BC(&v90, ".", "");
              sub_23C4BE764(&v90, *v7);
              sub_23C4BE764(&v90, v7[1]);
              v17 = strlen(v14);
              sub_23C4B01BC(&v90, v14, &v14[v17]);
              v18 = strlen(v80);
              sub_23C4B01BC(&v90, v80, &v80[v18]);
              v19 = v9;
              v20 = strlen(*(&off_278BBF418 + v9));
              sub_23C4B01BC(&v90, *(&off_278BBF418 + v9), *(&off_278BBF418 + v9) + v20);
              v21 = strlen(*(&off_278BBF448 + v11));
              sub_23C4B01BC(&v90, *(&off_278BBF448 + v11), *(&off_278BBF448 + v11) + v21);
              v22 = v90;
              v23 = v91;
              v24 = llvm::StringMapImpl::LookupBucketFor();
              v26 = *v4;
              v27 = v24;
              v28 = *(*v4 + 8 * v24);
              if (v28 == -8)
              {
                LODWORD(qword_27E1F6990) = qword_27E1F6990 - 1;
              }

              else if (v28)
              {
                v7 = v82;
                v9 = v19;
                goto LABEL_28;
              }

              v29 = v4;
              v30 = MEMORY[0x23EED4160](v23 + 25, 8);
              v31 = v30;
              v32 = v30 + 24;
              if (v23)
              {
                memcpy((v30 + 24), v22, v23);
              }

              *(v32 + v23) = 0;
              v31[1] = 0;
              v31[2] = 0;
              *v31 = v23;
              *(v26 + 8 * v27) = v31;
              v4 = v29;
              ++*(v29 + 3);
              v33 = (*v29 + 8 * llvm::StringMapImpl::RehashTable(v29));
              v7 = v82;
              v9 = v19;
              while (1)
              {
                v28 = *v33;
                if (*v33 && v28 != -8)
                {
                  break;
                }

                ++v33;
              }

LABEL_28:
              v25.i16[0] = v85;
              v25.i16[1] = v86;
              v35 = vand_s8(vceq_s16(vdup_lane_s32(v25, 0), 0x73007300660066), 0x1000100010001);
              *(v28 + 8) = vuzp1_s8(v35, v35).u32[0];
              *(v28 + 12) = v81;
              *(v28 + 13) = v77;
              *(v28 + 16) = v84;
              *(v28 + 20) = v10;
              v36 = v13 & (v78 != 102);
              v10 = 1;
              v11 = 1;
              v13 = 0;
            }

            while ((v36 & 1) != 0);
            ++v9;
          }

          while (v9 != v73);
          v6 = v72 + 1;
        }

        while (v72 != 10);
        v5 = v71 + 1;
      }

      while (v71 != 10);
      if (++v76 == 4)
      {
        if (v90 != &v92)
        {
          free(v90);
        }

        a2 = v69;
        a1 = v70;
        break;
      }
    }
  }

  Key = llvm::StringMapImpl::FindKey();
  v38 = Key;
  if (Key == -1)
  {
    v38 = *(v4 + 2);
  }

  v39 = *(*v4 + 8 * v38);
  v40 = *(v39 + 8);
  v41 = *a2;
  if (*(v39 + 9) != 1)
  {
    if (*(v39 + 8))
    {
      v46 = sub_23C504E2C(a1, *a2, 1);
      v47 = 0;
      v89 = v46;
      v48 = *(v39 + 13);
      if (v48 <= 0xF)
      {
        if (v48 == 1)
        {
          v62 = *(a1 + 160);
          llvm::ConstantFP::get();
          v93 = 257;
          result = llvm::IRBuilderBase::CreateFCmpHelper();
          goto LABEL_92;
        }

        if (v48 != 8)
        {
LABEL_71:
          v56 = *(v39 + 16);
          if (v56 == 2)
          {
            if (*(v39 + 11) == 1)
            {
              v93 = 257;
              result = sub_23C4BB4D4(a1 + 8, v46, v47, &v90);
            }

            else
            {
              v93 = 257;
              result = sub_23C49B2C8(a1 + 8, v46, v47, &v90);
            }
          }

          else
          {
            if (v56 != 1)
            {
              goto LABEL_75;
            }

            v57 = *(a1 + 344);
            v58 = *(v57 + 1160);
            if (v58)
            {
              v59 = strlen(*(v57 + 1160));
            }

            else
            {
              v59 = 0;
            }

            v66 = sub_23C49EB10(a1, v58, v59, *(a1 + 192), *(a1 + 160));
            v93 = 257;
            v67 = sub_23C497A7C(a1 + 8, *(v66 + 24), v66, &v89, 1, &v90);
            v88 = 257;
            result = sub_23C49B1E4(a1 + 8, v67, v47, 0, v87);
          }

          goto LABEL_92;
        }

        v49 = 176;
      }

      else
      {
        switch(v48)
        {
          case 0x40u:
            v49 = 200;
            break;
          case 0x20u:
            v49 = 192;
            break;
          case 0x10u:
            v49 = 184;
            break;
          default:
            goto LABEL_71;
        }
      }

      v47 = *(a1 + v49);
      goto LABEL_71;
    }

    v52 = 0;
    v53 = *(v39 + 13);
    if (v53 <= 0xF)
    {
      if (v53 == 1)
      {
        v63 = sub_23C506198(a1, *a2, *(v39 + 10));
        v64 = *(a1 + 192);
        v65 = llvm::ConstantInt::get();
        v93 = 257;
        result = sub_23C497D84((a1 + 8), 33, v63, v65, &v90);
        goto LABEL_92;
      }

      if (v53 != 8)
      {
        goto LABEL_81;
      }

      v54 = 176;
    }

    else
    {
      switch(v53)
      {
        case 0x40u:
          v54 = 200;
          break;
        case 0x20u:
          v54 = 192;
          break;
        case 0x10u:
          v54 = 184;
          break;
        default:
LABEL_81:
          if (v53 >= *(v39 + 12))
          {
            if (*(v39 + 10) == 1)
            {
              v93 = 257;
              v60 = a1 + 8;
              v61 = 40;
            }

            else
            {
              v93 = 257;
              v60 = a1 + 8;
              v61 = 39;
            }
          }

          else
          {
            v93 = 257;
            v60 = a1 + 8;
            v61 = 38;
          }

          result = sub_23C49ACF8(v60, v61, v41, v52, &v90);
          goto LABEL_92;
      }
    }

    v52 = *(a1 + v54);
    goto LABEL_81;
  }

  v42 = *(v39 + 13);
  if (*(v39 + 8))
  {
    if (v42 >= *(v39 + 12))
    {
      v55 = *(a1 + 160);
      v93 = 257;
      result = sub_23C4B284C(a1 + 8, v41, v55, &v90);
      goto LABEL_92;
    }

    v43 = *(v39 + 16);
    if (v43 == 1 || v43 == 2)
    {
      v44 = *(a1 + 152);
      v93 = 257;
      result = sub_23C49FEB4(a1 + 8, v41, v44, &v90);
      goto LABEL_92;
    }

LABEL_75:
    result = 0;
    goto LABEL_92;
  }

  v50 = 160;
  if (v42 == 16)
  {
    v50 = 152;
  }

  if (*(v39 + 16) != 1)
  {
    goto LABEL_75;
  }

  v51 = *(a1 + v50);
  if (*(v39 + 10) == 1)
  {
    v93 = 257;
    result = sub_23C49EF30(a1 + 8, v41, v51, &v90);
  }

  else
  {
    v88 = 257;
    result = sub_23C49EF94(a1 + 8, v41, v51, v87);
  }

LABEL_92:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_23C4BE764(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

uint64_t sub_23C4BE7C4(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 25));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4BE840(uint64_t a1, uint64_t **a2)
{
  sub_23C4BEBF4();
  Key = llvm::StringMapImpl::FindKey();
  v5 = 0;
  v6 = qword_27E1F69A8;
  if (Key == -1)
  {
    v7 = dword_27E1F69B0;
  }

  else
  {
    v7 = Key;
  }

  v8 = *(qword_27E1F69A8 + 8 * v7);
  v9 = *(v8 + 8);
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        v16 = *(a1 + 344);
        v28 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
        v30 = *(a1 + 104);
        v5 = (*(*v16 + 96))(v16, &v28, 7, *(a1 + 184), *a2, 1, 0);
        if (v29)
        {
LABEL_20:
          llvm::MetadataTracking::untrack();
        }

        break;
      case 4:
        v24 = *(a1 + 344);
        v25 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (a1 + 8));
        v27 = *(a1 + 104);
        v5 = (*(*v24 + 96))(v24, &v25, 8, *(a1 + 184), *a2, 1, 0);
        if (!v26)
        {
          return v5;
        }

        goto LABEL_20;
      case 5:
        v11 = *a2;
        v12 = *(*a1 + 96);

        return v12(a1, v11);
    }

    return v5;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      v17 = **a2;
      if (*(v17 + 32) == 3)
      {
        if ((*(v17 + 8) & 0xFE) == 0x12)
        {
          v17 = **(v17 + 16);
        }

        v18 = sub_23C50593C(a1, *a2, 4);
        *a2 = v18;
        NullValue = llvm::Constant::getNullValue(v17, v19);
        v38 = 257;
        v21 = *(a1 + 192);
        v22 = llvm::ConstantInt::get();
        *a2 = sub_23C505AA8(a1 + 8, v18, NullValue, v22, v37);
      }

      v23 = *(a1 + 344);
      v34 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (a1 + 8));
      v36 = *(a1 + 104);
      v5 = (*(*v23 + 96))(v23, &v34, 5, *(a1 + 192), *a2, 1, *(*(v6 + 8 * v7) + 12));
      if (!v35)
      {
        return v5;
      }
    }

    else
    {
      if (v9 != 2)
      {
        return v5;
      }

      v10 = *(a1 + 344);
      v31 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (a1 + 8));
      v33 = *(a1 + 104);
      v5 = (*(*v10 + 96))(v10, &v31, 0, *(a1 + 184), *a2, 1, 0);
      if (!v32)
      {
        return v5;
      }
    }

    goto LABEL_20;
  }

  v14 = *a2;
  v15 = *(*a1 + 80);

  return v15(a1, v14, v8 + 12);
}

void sub_23C4BEBF4()
{
  if ((atomic_load_explicit(&qword_27E1F69C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F69C8))
  {
    qword_27E1F69A8 = 0;
    *&dword_27E1F69B0 = 0;
    qword_27E1F69B8 = 0x1000000000;
    __cxa_atexit(sub_23C4BF2FC, &qword_27E1F69A8, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F69C8);
  }

  if (!dword_27E1F69B4)
  {
    v0 = 0;
    v1 = 1;
    do
    {
      v2 = 0;
      v60 = v1;
      v3 = off_278BBF458[v0];
      v4 = 1;
      do
      {
        v5 = 0;
        v61 = v4;
        v6 = off_278BBF468[v2];
        do
        {
          v7 = atoi(v3);
          v8 = atoi(v6);
          v9 = off_278BBF478[v5];
          v10 = atoi(v9);
          sub_23C49F8D0(&v67, ".");
          if ((v10 & 0xFE) != 0)
          {
            std::string::append(&v67, "v");
            std::string::append(&v67, v9);
          }

          std::string::append(&v67, "f");
          std::string::append(&v67, v3);
          sub_23C49F8D0(&v66, v9);
          std::string::append(&v66, "x");
          std::string::append(&v66, v6);
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = &v67;
          }

          else
          {
            v11 = v67.__r_.__value_.__r.__words[0];
          }

          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v67.__r_.__value_.__l.__size_;
          }

          std::string::append(&v66, v11, size);
          std::operator+<char>();
          if (v65 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v65 >= 0)
          {
            v14 = v65;
          }

          else
          {
            v14 = v64;
          }

          v15 = (v7 << 32) | (v8 << 40) | (v10 << 48);
          *(*sub_23C4BF1F4(p_p, v14) + 8) = v15 | 0x100000000000000;
          if (v65 < 0)
          {
            operator delete(__p);
          }

          std::operator+<char>();
          if (v65 >= 0)
          {
            v16 = &__p;
          }

          else
          {
            v16 = __p;
          }

          if (v65 >= 0)
          {
            v17 = v65;
          }

          else
          {
            v17 = v64;
          }

          *(*sub_23C4BF1F4(v16, v17) + 8) = v15;
          if (v65 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }

          ++v5;
        }

        while (v5 != 3);
        v4 = 0;
        v2 = 1;
      }

      while ((v61 & 1) != 0);
      v1 = 0;
      v0 = 1;
    }

    while ((v60 & 1) != 0);
    v18 = 0;
    v19 = 1;
    do
    {
      v20 = 0;
      v59 = v19;
      v21 = 1;
      do
      {
        v22 = 0;
        v62 = v21;
        if (v21)
        {
          v23 = ".rgb10.v3f";
        }

        else
        {
          v23 = ".rgb10a2.v4f";
        }

        v24 = (v18 << 40) | v20;
        v25 = 1;
        do
        {
          v26 = v25;
          if (v25)
          {
            v27 = "unorm";
          }

          else
          {
            v27 = "snorm";
          }

          v28 = (v24 | v22) ^ 0x10000000001;
          v29 = 1;
          do
          {
            v30 = v29;
            sub_23C49F8D0(&v67, v27);
            std::string::append(&v67, v23);
            std::string::append(&v67, off_278BBF458[v18]);
            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v67;
            }

            else
            {
              v31 = v67.__r_.__value_.__r.__words[0];
            }

            if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v67.__r_.__value_.__l.__size_;
            }

            *(*sub_23C4BF1F4(v31, v32) + 8) = v28;
            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v67.__r_.__value_.__l.__data_);
            }

            v29 = 0;
          }

          while ((v30 & 1) != 0);
          v25 = 0;
          v22 = 0x100000000;
        }

        while ((v26 & 1) != 0);
        v21 = 0;
        v20 = 0x1000000000000;
      }

      while ((v62 & 1) != 0);
      v19 = 0;
      v18 = 1;
    }

    while ((v59 & 1) != 0);
    v33 = 0;
    v34 = 1;
    do
    {
      v35 = v34;
      sub_23C49F8D0(&v67, "unorm.rgb565.v3f");
      std::string::append(&v67, off_278BBF458[v33]);
      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v67;
      }

      else
      {
        v36 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v36, v37) + 8) = 2;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v34 = 0;
      v33 = 1;
    }

    while ((v35 & 1) != 0);
    v38 = 0;
    v39 = 1;
    do
    {
      v40 = v39;
      sub_23C49F8D0(&v66, "unorm4x8.srgb.v4f");
      v41 = std::string::append(&v66, off_278BBF458[v38]);
      v42 = v41->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v41->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v67;
      }

      else
      {
        v43 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v43, v44) + 8) = 5;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v39 = 0;
      v38 = 1;
    }

    while ((v40 & 1) != 0);
    v45 = 0;
    v46 = 1;
    do
    {
      v47 = v46;
      sub_23C49F8D0(&v66, "unorm.rg11b10f.v3f");
      v48 = std::string::append(&v66, off_278BBF458[v45]);
      v49 = v48->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v67;
      }

      else
      {
        v50 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v50, v51) + 8) = 3;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v46 = 0;
      v45 = 1;
    }

    while ((v47 & 1) != 0);
    v52 = 0;
    v53 = 1;
    do
    {
      v54 = v53;
      sub_23C49F8D0(&v66, "unorm.rgb9e5.v3f");
      v55 = std::string::append(&v66, off_278BBF458[v52]);
      v56 = v55->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v55->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v67;
      }

      else
      {
        v57 = v67.__r_.__value_.__r.__words[0];
      }

      if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = SHIBYTE(v67.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = v67.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BF1F4(v57, v58) + 8) = 4;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      v53 = 0;
      v52 = 1;
    }

    while ((v54 & 1) != 0);
  }
}

uint64_t *sub_23C4BF1F4(const void *a1, size_t a2)
{
  i = (qword_27E1F69A8 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F69B8) = qword_27E1F69B8 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_27E1F69B4;
    ;
  }

  return i;
}

uint64_t sub_23C4BF2FC(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4BF378(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  sub_23C4BEBF4();
  Key = llvm::StringMapImpl::FindKey();
  v9 = 0;
  v10 = qword_27E1F69A8;
  if (Key == -1)
  {
    v11 = dword_27E1F69B0;
  }

  else
  {
    v11 = Key;
  }

  v12 = *(qword_27E1F69A8 + 8 * v11);
  v13 = *(v12 + 8);
  if (v13 > 2)
  {
    switch(v13)
    {
      case 3:
        if (a4 >= 3)
        {
          v27 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v28 = v27 >= 0x66313600;
          v29 = v27 > 0x66313600;
          v30 = !v28;
          v22 = v29 == v30;
          v20 = 160;
          if (v22)
          {
            v20 = 152;
          }
        }

        else
        {
          v20 = 160;
        }

        v31 = *(a1 + v20);
        v32 = *(a1 + 344);
        v46 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (a1 + 8));
        v48 = *(a1 + 104);
        v9 = (*(*v32 + 104))(v32, &v46, 7, v31, *a2, 1, 0);
        if (!v47)
        {
          return v9;
        }

        break;
      case 4:
        if (a4 >= 3)
        {
          v38 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
          v28 = v38 >= 0x66313600;
          v39 = v38 > 0x66313600;
          v40 = !v28;
          v22 = v39 == v40;
          v26 = 160;
          if (v22)
          {
            v26 = 152;
          }
        }

        else
        {
          v26 = 160;
        }

        v41 = *(a1 + v26);
        v42 = *(a1 + 344);
        v43 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (a1 + 8));
        v45 = *(a1 + 104);
        v9 = (*(*v42 + 104))(v42, &v43, 8, v41, *a2, 1, 0);
        if (!v44)
        {
          return v9;
        }

        break;
      case 5:
        v15 = *a2;
        v16 = *(*a1 + 104);

        return v16(a1, v15, a3, a4);
      default:
        return v9;
    }

LABEL_50:
    llvm::MetadataTracking::untrack();
    return v9;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (*(v12 + 14))
      {
        v21 = 5;
      }

      else
      {
        v21 = 4;
      }

      v22 = *(v12 + 13) == 0;
      v23 = 160;
      if (!v22)
      {
        v23 = 152;
      }

      v24 = *(a1 + v23);
      v25 = *(a1 + 344);
      v52 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v53, (a1 + 8));
      v54 = *(a1 + 104);
      v9 = (*(*v25 + 104))(v25, &v52, v21, v24, *a2, 1, *(*(v10 + 8 * v11) + 12));
      if (!v53)
      {
        return v9;
      }
    }

    else
    {
      if (v13 != 2)
      {
        return v9;
      }

      if (a4 >= 3)
      {
        v33 = bswap32(*(a3 + a4 - 3) | (*(a3 + a4 - 1) << 16));
        v28 = v33 >= 0x66313600;
        v34 = v33 > 0x66313600;
        v35 = !v28;
        v22 = v34 == v35;
        v14 = 160;
        if (v22)
        {
          v14 = 152;
        }
      }

      else
      {
        v14 = 160;
      }

      v36 = *(a1 + v14);
      v37 = *(a1 + 344);
      v49 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v50, (a1 + 8));
      v51 = *(a1 + 104);
      v9 = (*(*v37 + 104))(v37, &v49, 0, v36, *a2, 1, 0);
      if (!v50)
      {
        return v9;
      }
    }

    goto LABEL_50;
  }

  v18 = *a2;
  v19 = *(*a1 + 88);

  return v19(a1, v18, v12 + 12);
}

uint64_t sub_23C4BF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 72))(*(a1 + 72));
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
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C4BF8B0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 == 117)
  {
    v8 = sub_23C506630(a1, *a2, v5, 34);
    v9 = a1;
    v10 = v7;
    v11 = 36;
    goto LABEL_5;
  }

  if (v4 == 115)
  {
    v8 = sub_23C506630(a1, *a2, v5, 38);
    v9 = a1;
    v10 = v7;
    v11 = 40;
LABEL_5:

    return sub_23C506630(v9, v8, v10, v11);
  }

  v13 = *(a1 + 344);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = *v6;
  if (((*v6)[1] & 0xFE) == 0x12)
  {
    v14 = *v14[2];
  }

  v15 = (*(*v13 + 72))(v13, &v16, v6, v5, v7, v14 == *(a1 + 160));
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v15;
}

uint64_t sub_23C4BFA14(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a1[23];
  if (*a2 == a1[22])
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *a2;
    if (v4 != v5)
    {
      goto LABEL_7;
    }
  }

  if (*(*(a1[43] + 784) + 42) == 1)
  {
    v6 = a1[24];
  }

LABEL_7:
  if (v6 == v5)
  {
    v7 = "llvm.ctpop.i16";
  }

  else
  {
    v7 = "llvm.ctpop.i32";
  }

  v8 = sub_23C49EB10(a1, v7, 14, v4, v4);
  v14 = 257;
  v15 = sub_23C49ACF8((a1 + 1), 39, a2, v6, v13);
  v12 = 257;
  v9 = sub_23C497A7C((a1 + 1), *(v8 + 24), v8, &v15, 1, v11);
  v14 = 257;
  return sub_23C49ACF8((a1 + 1), 38, v9, v4, v13);
}

uint64_t sub_23C4BFB1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantInt::get();
  v10 = 257;
  v6 = sub_23C49A668(a1 + 8, v5, a2, v9);
  v8[16] = 257;
  return sub_23C4BF7D4(a1 + 8, v6, v5, v8);
}

uint64_t sub_23C4BFB98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = **a2;
  v8 = *(a2 + 16);
  v9 = *(a1 + 192);
  v31 = 257;
  v10 = sub_23C49ACF8(a1 + 8, 39, v5, v9, v30);
  v31 = 257;
  v11 = sub_23C49B560(a1 + 8, v10, v6, v30);
  v12 = sub_23C4BFB1C(a1, v8);
  v29 = 257;
  v13 = sub_23C49A8E0(a1 + 8, v11, v12, v28);
  if (*a3 == 115)
  {
    v14 = *v8;
    v15 = llvm::ConstantInt::get();
    v31 = 257;
    v16 = sub_23C4BF7D4(a1 + 8, v8, v15, v30);
    v29 = 257;
    v17 = sub_23C49A668(a1 + 8, v15, v16, v28);
    v31 = 257;
    v18 = sub_23C49A8E0(a1 + 8, v13, v17, v30);
    v19 = *(a1 + 192);
    v20 = llvm::ConstantInt::get();
    v29 = 257;
    sub_23C497D84((a1 + 8), 33, v18, v20, v28);
    AllOnesValue = llvm::Constant::getAllOnesValue(*(a1 + 192), v21);
    v31 = 257;
    v23 = sub_23C49A668(a1 + 8, AllOnesValue, v8, v30);
    v29 = 257;
    sub_23C49A98C(a1 + 8, v13, v23, v28);
    v31 = 257;
    llvm::IRBuilderBase::CreateSelect();
  }

  v24 = *(a1 + 192);
  v25 = llvm::ConstantInt::get();
  v31 = 257;
  sub_23C497D84((a1 + 8), 32, v8, v25, v30);
  v29 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v31 = 257;
  return sub_23C49ACF8(a1 + 8, 38, Select, v7, v30);
}

uint64_t sub_23C4BFDAC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = **a2;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = sub_23C4BFB1C(a1, v6);
  v25 = 257;
  v9 = sub_23C49A668(a1 + 8, v8, v7, v24);
  v10 = *(a1 + 192);
  v25 = 257;
  v11 = sub_23C49ACF8(a1 + 8, 39, v3, v10, v24);
  v12 = *(a1 + 192);
  v25 = 257;
  v13 = sub_23C49ACF8(a1 + 8, 39, v4, v12, v24);
  v25 = 257;
  v14 = sub_23C4BFF4C(a1 + 8, v9, v24);
  v23 = 257;
  v15 = sub_23C49A8E0(a1 + 8, v11, v14, v22);
  v25 = 257;
  v16 = sub_23C49A668(a1 + 8, v13, v7, v24);
  v23 = 257;
  v17 = sub_23C49A8E0(a1 + 8, v16, v9, v22);
  v25 = 257;
  sub_23C49A98C(a1 + 8, v15, v17, v24);
  v18 = *(a1 + 192);
  v19 = llvm::ConstantInt::get();
  v25 = 257;
  sub_23C497D84((a1 + 8), 32, v6, v19, v24);
  v23 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v25 = 257;
  return sub_23C49ACF8(a1 + 8, 38, Select, v5, v24);
}

uint64_t sub_23C4BFF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *(a2 + 16) <= 0x14u)
  {
    Not = (*(**(a1 + 72) + 208))(*(a1 + 72), a2);
    if (Not)
    {
      v6 = *(Not + 16) >= 0x1Cu;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      sub_23C49B15C(a1, Not, a3);
    }
  }

  else
  {
    Not = llvm::BinaryOperator::CreateNot();
    sub_23C49B15C(a1, Not, a3);
  }

  return Not;
}

uint64_t sub_23C4C0018(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_23C49F8D0(__p, *(*(a1 + 344) + 1088));
  if (v18 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v18 >= 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_23C49EB10(a1, v5, v6, *(a1 + 192), *(a1 + 192));
  v8 = *(a1 + 192);
  v16 = 257;
  v19 = sub_23C49ACF8(a1 + 8, 39, a2, v8, v15);
  v16 = 257;
  v9 = sub_23C497A7C(a1 + 8, *(v7 + 24), v7, &v19, 1, v15);
  v19 = v9;
  v10 = *(v4 + 8);
  v11 = *(a1 + 192);
  v12 = llvm::ConstantInt::get();
  v16 = 257;
  v19 = sub_23C49B560(a1 + 8, v9, v12, v15);
  v16 = 257;
  v13 = sub_23C49ACF8(a1 + 8, 38, v19, v4, v15);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

uint64_t sub_23C4C014C(uint64_t a1, llvm::Constant *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v5 = sub_23C505D44(a1, a2, v15);
  v6 = *&v15[0];
  if (v5 >= 2)
  {
    v7 = v5 - 1;
    v8 = v15 + 1;
    do
    {
      v9 = *v8;
      v14 = 257;
      if (a3)
      {
        v10 = sub_23C49A98C(a1 + 8, v6, v9, v13);
      }

      else
      {
        v10 = sub_23C49A8E0(a1 + 8, v6, v9, v13);
      }

      v6 = v10;
      ++v8;
      --v7;
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_23C4C0224(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  llvm::ConstantFP::get();
  v4 = *a2;
  llvm::ConstantFP::get();
  v5 = *a2;
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  llvm::IRBuilderBase::CreateFCmpHelper();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C0320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = llvm::ConstantFP::get();
  v16 = 257;
  v10 = sub_23C4A0EC4(a1 + 8, v9, a4, v15);
  v14[16] = 257;
  v11 = sub_23C49EA2C(a1 + 8, a2, v10, v14);
  v16 = 257;
  v12 = sub_23C49EA2C(a1 + 8, a3, a4, v15);
  v16 = 257;
  return sub_23C4A0BD4(a1 + 8, v11, v12, v15);
}

uint64_t sub_23C4C03D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {

    return sub_23C50654C(a1, a2, a3);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7 = 257;
    return sub_23C49EA2C(a1 + 8, a2, a3, v6);
  }
}

uint64_t sub_23C4C042C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 704) + *(**(a1 + 704) - 24);
  v5 = *(v4 + 104);
  v7 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (a1 + 8));
  v9 = *(a1 + 104);
  sub_23C49769C(&v7, v4 + 8);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  result = (*(**(a1 + 704) + 24))(*(a1 + 704), a2);
  *(*(a1 + 704) + *(**(a1 + 704) - 24) + 104) = v5;
  return result;
}

uint64_t sub_23C4C0510(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 704) + *(**(a1 + 704) - 24);
  v5 = *(v4 + 104);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  sub_23C49769C(&v9, v4 + 8);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 704);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 104) = v5;
  return (*(v7 + 32))(v6, a2);
}

uint64_t sub_23C4C0608(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C4C042C(a1, a2);
  v5 = sub_23C4BB410(a1, v4);
  v6 = sub_23C4C0510(a1, a2);
  v7 = sub_23C4BB410(a1, v6);
  v10 = 257;
  return sub_23C4A0BD4(a1 + 8, v5, v7, v9);
}

uint64_t sub_23C4C0684(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = 184;
  if (*a2 == *(a1 + 160))
  {
    v7 = 192;
  }

  v8 = (*(*v6 + 136))(v6, &v10, a2, a3, *(a1 + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C0750(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = 152;
  if (*a2 == *(a1 + 192))
  {
    v7 = 160;
  }

  v8 = (*(*v6 + 144))(v6, &v10, a2, a3, *(a1 + v7));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C081C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_23C4C0A44(a1, *a2, v5);
  sub_23C4C0B1C(a1, v4, v5);
  v23 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  Select = llvm::IRBuilderBase::CreateSelect();
  v8 = sub_23C4C0A44(a1, *a2, *(a2 + 8));
  sub_23C4C0A44(a1, v8, *(a2 + 16));
  if (*Select == *(a1 + 160))
  {
    v15 = *(a1 + 192);
    v23 = 257;
    v16 = sub_23C49ACF8(a1 + 8, 49, Select, v15, v22);
    v17 = *(a1 + 192);
    v18 = llvm::ConstantInt::get();
    v23 = 257;
    v13 = sub_23C49A8E0(a1 + 8, v16, v18, v22);
    v19 = *(a1 + 192);
  }

  else
  {
    v9 = *(a1 + 184);
    v23 = 257;
    v10 = sub_23C49ACF8(a1 + 8, 49, Select, v9, v22);
    v11 = *(a1 + 184);
    v12 = llvm::ConstantInt::get();
    v23 = 257;
    v13 = sub_23C49A8E0(a1 + 8, v10, v12, v22);
    v14 = *(a1 + 184);
  }

  v20 = llvm::ConstantInt::get();
  v23 = 257;
  sub_23C497D84((a1 + 8), 34, v13, v20, v22);
  v23 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C0A44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
  }

  v8 = (*(*v6 + 48))(v6, &v10, a2, a3, v7 == *(a1 + 160));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C0B1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 344);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  v7 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(v7 + 16);
  }

  v8 = (*(*v6 + 56))(v6, &v10, a2, a3, v7 == *(a1 + 160));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t sub_23C4C0BF4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  sub_23C4BCCA4(a1, *a2, v4);
  sub_23C4BCDAC(a1, v3, v4);
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateFCmpHelper();
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C0CE8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(*a2 + 32);
  if (*(a2 + 16) == 74)
  {
    v5 = *(a2 - 4);
    v6 = *(v5 + 16);
    if (v5 && v6 == 91)
    {
      v7 = *(v5 - 64);
      v8 = v7[16];
      if (v8 == 73)
      {
        v9 = *(v5 - 64);
      }

      else
      {
        v9 = 0;
      }

      v10 = *(*(v5 - 32) + 16);
      if (v10 == 73)
      {
        v11 = *(v5 - 32);
      }

      else
      {
        v11 = 0;
      }

      if (v9 | v11 && ((v8 - 11) < 2 || *(**(v9 - 32) + 24) == *(a1 + 160)))
      {
        if ((v10 - 11) <= 1)
        {
          v12 = *(a1 + 160);
          goto LABEL_21;
        }

        if (*(**(v11 - 32) + 24) == *(a1 + 160))
        {
LABEL_21:
          v13 = *(*v7 + 32);
          llvm::FixedVectorType::get();
          if (v9)
          {
            v14 = *(v9 - 32);
            if (v11)
            {
LABEL_23:
              v15 = *(v11 - 32);
LABEL_26:
              v16 = *(v5 + 64);
              v17 = *(v5 + 72);
              v33 = 257;
              v2 = sub_23C49AA38(a1 + 8, v14, v15, v16, v17, v32);
              goto LABEL_27;
            }
          }

          else
          {
            v14 = llvm::UndefValue::get();
            if (v11)
            {
              goto LABEL_23;
            }
          }

          v15 = llvm::UndefValue::get();
          goto LABEL_26;
        }
      }
    }

    else if (v5 && v6 == 73 && *(**(v5 - 32) + 24) == *(a1 + 160))
    {
      v2 = *(v5 - 32);
    }
  }

LABEL_27:
  v18 = *(a1 + 192);
  v38 = llvm::ConstantInt::get();
  v19 = *(a1 + 192);
  v39 = llvm::ConstantInt::get();
  v20 = *(a1 + 192);
  v40 = llvm::ConstantInt::get();
  v21 = sub_23C505670(a1, v2, v4 - 1, 1);
  v22 = llvm::ConstantVector::get();
  v33 = 257;
  v23 = sub_23C49A3AC(a1 + 8, v2, v2, v22, v32);
  v33 = 257;
  v24 = sub_23C4BBCA0(a1 + 8, v21, v23, v32);
  v25 = *(a1 + 192);
  v34 = llvm::ConstantInt::get();
  v26 = *(a1 + 192);
  v35 = llvm::ConstantInt::get();
  v27 = *(a1 + 192);
  v36 = llvm::ConstantInt::get();
  v28 = *(a1 + 192);
  v37 = llvm::ConstantInt::get();
  v29 = llvm::ConstantVector::get();
  v33 = 257;
  result = sub_23C49A3AC(a1 + 8, v24, v23, v29, v32);
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4C0FAC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 3)
  {
    v4 = bswap32(*a3 | (*(a3 + 2) << 16));
    v5 = v4 >= 0x69333200;
    v6 = v4 > 0x69333200;
    v7 = !v5;
    v8 = v6 == v7;
    v9 = 184;
    if (v8)
    {
      v9 = 192;
    }
  }

  else
  {
    v9 = 184;
  }

  v10 = *(a1 + v9);
  v11 = *(*(a1 + 344) + 832);
  return llvm::ConstantInt::get();
}

uint64_t sub_23C4C1008(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 == 3)
  {
    v4 = bswap32(*a3 | (*(a3 + 2) << 16));
    v5 = v4 >= 0x69333200;
    v6 = v4 > 0x69333200;
    v7 = !v5;
    v8 = v6 == v7;
    v9 = 184;
    if (v8)
    {
      v9 = 192;
    }
  }

  else
  {
    v9 = 184;
  }

  v10 = *(a1 + v9);
  v11 = *(*(a1 + 344) + 832);
  return llvm::ConstantInt::get();
}

void sub_23C4C1064(uint64_t a1, llvm::Instruction *a2)
{
  if (MGGetBoolAnswer() && (v4 = sub_23C4A2690("AGC_ENABLE_IS_UNIFORM_STRIPPING")) != 0 && *v4 != 48 && atoi(v4))
  {
    v5 = *(a1 + 320);
    Function = llvm::Module::getFunction();
    v7 = *(a2 + 1);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 8);
        llvm::Instruction::eraseFromParent(*(v7 + 24));
        v7 = v8;
      }

      while (v8);
    }

    llvm::Instruction::eraseFromParent(a2);
    if (!*(Function + 1))
    {

      llvm::Function::eraseFromParent(Function);
    }
  }

  else
  {
    v9 = *(a2 - 4);
    v10 = *(v9 + 3);
    Name = llvm::Value::getName(v9);
    v13 = 14;
    if (v12 < 0xE)
    {
      v13 = v12;
    }

    v21[0] = v13 + Name;
    v21[1] = v12 - v13;
    sub_23C4AE5DC(&__dst, v21);
    v14 = std::string::insert(&__dst, 0, "llvm.agx.is.uniform");
    v15 = v14->__r_.__value_.__r.__words[2];
    *__p = *&v14->__r_.__value_.__l.__data_;
    v20 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v16 = *(a1 + 320);
    llvm::Module::getOrInsertFunction();
    *(a2 + 9) = v10;
    sub_23C4C11E8(a2, v17);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_23C4C11E8(uint64_t result, uint64_t a2)
{
  v2 = (result - 32);
  if (*(result - 32))
  {
    v3 = *(result - 24);
    **(result - 16) = v3;
    if (v3)
    {
      *(v3 + 16) = *(result - 16);
    }
  }

  *v2 = a2;
  if (a2)
  {
    v6 = *(a2 + 8);
    v4 = (a2 + 8);
    v5 = v6;
    *(result - 24) = v6;
    if (v6)
    {
      *(v5 + 16) = result - 24;
    }

    *(result - 16) = v4;
    *v4 = v2;
  }

  return result;
}

uint64_t sub_23C4C1230(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 200);
  v5 = 257;
  return sub_23C49ACF8(a1 + 8, 47, a2, v2, v4);
}

uint64_t *sub_23C4C126C(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x23EED4160](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 24) = 0;
  *(v11 + 28) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t sub_23C4C1364(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *a2;
  if (*a3 == 115)
  {
    v8 = sub_23C506630(a1, v7, v5, 40);
    v9 = sub_23C506630(a1, v4, v5, 38);
    v17 = 257;
    sub_23C497D84((a1 + 8), 41, v6, v8, v16);
    v15 = 257;
    v10 = (a1 + 8);
    v11 = 39;
  }

  else
  {
    v12 = sub_23C506630(a1, v7, v5, 36);
    v9 = sub_23C506630(a1, v4, v5, 34);
    v17 = 257;
    sub_23C497D84((a1 + 8), 37, v6, v12, v16);
    v15 = 257;
    v10 = (a1 + 8);
    v11 = 35;
  }

  sub_23C497D84(v10, v11, v6, v9, v14);
  llvm::IRBuilderBase::CreateSelect();
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C14B8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BCDAC(a1, *a2, a2[1]);
  v5 = a2[2];

  return sub_23C4BCDAC(a1, v4, v5);
}

uint64_t sub_23C4C1504(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C4C0B1C(a1, *a2, *(a2 + 8));
  v5 = *(a2 + 16);

  return sub_23C4C0B1C(a1, v4, v5);
}

uint64_t sub_23C4C1550(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*a3 == 115)
  {
    v6 = 38;
  }

  else
  {
    v6 = 34;
  }

  v7 = sub_23C506630(a1, *a2, *(a2 + 8), v6);

  return sub_23C506630(a1, v7, v5, v6);
}

uint64_t sub_23C4C15C0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4BCCA4(a1, *a2, a2[1]);
  v5 = a2[2];

  return sub_23C4BCCA4(a1, v4, v5);
}

uint64_t sub_23C4C160C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C4C0A44(a1, *a2, *(a2 + 8));
  v5 = *(a2 + 16);

  return sub_23C4C0A44(a1, v4, v5);
}

uint64_t sub_23C4C1658(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*a3 == 115)
  {
    v6 = 40;
  }

  else
  {
    v6 = 36;
  }

  v7 = sub_23C506630(a1, *a2, *(a2 + 8), v6);

  return sub_23C506630(a1, v7, v5, v6);
}

uint64_t sub_23C4C16C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v11 = 257;
  v6 = sub_23C49ADDC(a1 + 8, v4, v5, v10);
  v7 = a2[2];
  v9[16] = 257;
  return sub_23C49A474(a1 + 8, v6, v7, v9);
}

uint64_t sub_23C4C1730(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v6 = 257;
  return sub_23C49ADDC(a1 + 8, v3, v2, v5);
}

uint64_t sub_23C4C17B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 344);
  v7 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v8, (a1 + 8));
  v9 = *(a1 + 104);
  v5 = (*(*v4 + 40))(v4, &v7, a2, 0);
  if (v8)
  {
    llvm::MetadataTracking::untrack();
  }

  return v5;
}

uint64_t sub_23C4C185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 344);
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  v9 = (*(*v8 + 72))(v8, &v11, a2, a3, a4, 0);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  return v9;
}

uint64_t sub_23C4C1918(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v10 = *(a1 + 104);
  v5 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v5 = **(v5 + 16);
  }

  v6 = (*(*v4 + 40))(v4, &v8, a2, v5 == *(a1 + 160));
  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4C19F0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a3 == 115)
  {
    v4 = 40;
  }

  else
  {
    v4 = 36;
  }

  return sub_23C506630(a1, *a2, *(a2 + 8), v4);
}

uint64_t sub_23C4C1A10(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a3 == 115)
  {
    v4 = 38;
  }

  else
  {
    v4 = 34;
  }

  return sub_23C506630(a1, *a2, *(a2 + 8), v4);
}

uint64_t sub_23C4C1A30(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *a3;
  v8 = **a2;
  v9 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v8);
  if (v7 == 115)
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v11 = v9 + 130;
        break;
      case 32:
        v11 = v9 + 132;
        break;
      case 16:
        v11 = v9 + 131;
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v11 = v9 + 133;
        break;
      case 32:
        v11 = v9 + 135;
        break;
      case 16:
        v11 = v9 + 134;
        break;
      default:
        goto LABEL_16;
    }
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = strlen(*v11);
    v14 = sub_23C49B858(a1, v12, v13, v8, v8, v8, v8);
    v36[0] = v5;
    v36[1] = v4;
    v36[2] = v6;
    v35 = 257;
    result = sub_23C497A7C(a1 + 8, *(v14 + 24), v14, v36, 3, v34);
    goto LABEL_19;
  }

LABEL_16:
  v32 = 0;
  v33 = 0;
  v31 = 0;
  sub_23C4D5768(*(a1 + 72), v8, v7 == 115, &v33, &v32, &v31);
  v16 = v31;
  v35 = 257;
  if (v7 == 115)
  {
    v17 = sub_23C4D58A8(a1 + 8, v5, v31, v34);
    v35 = 257;
    v18 = sub_23C4D58A8(a1 + 8, v4, v16, v34);
    v35 = 257;
    v19 = sub_23C4D58A8(a1 + 8, v6, v16, v34);
    v35 = 257;
    v20 = sub_23C49ADDC(a1 + 8, v17, v18, v34);
    v35 = 257;
    v21 = sub_23C49A474(a1 + 8, v20, v19, v34);
    v35 = 257;
    sub_23C497D84((a1 + 8), 40, v21, v33, v34);
    v37 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v35 = 257;
    sub_23C497D84((a1 + 8), 38, Select, v32, v34);
    v37 = 257;
    v23 = llvm::IRBuilderBase::CreateSelect();
    v35 = 257;
    result = sub_23C4D58A8(a1 + 8, v23, v8, v34);
  }

  else
  {
    v24 = sub_23C4A6F5C(a1 + 8, v5, v31, v34);
    v35 = 257;
    v25 = sub_23C4A6F5C(a1 + 8, v4, v16, v34);
    v35 = 257;
    v26 = sub_23C4A6F5C(a1 + 8, v6, v16, v34);
    v35 = 257;
    v27 = sub_23C49ADDC(a1 + 8, v24, v25, v34);
    v35 = 257;
    v28 = sub_23C49A474(a1 + 8, v27, v26, v34);
    v35 = 257;
    sub_23C497D84((a1 + 8), 34, v28, v32, v34);
    v37 = 257;
    v29 = llvm::IRBuilderBase::CreateSelect();
    v35 = 257;
    result = sub_23C4A6F5C(a1 + 8, v29, v8, v34);
  }

LABEL_19:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4C1DC0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = **a2;
  v8 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v7);
  if (v6 == 115)
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 124;
        break;
      case 32:
        v10 = v8 + 126;
        break;
      case 16:
        v10 = v8 + 125;
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 127;
        break;
      case 32:
        v10 = v8 + 129;
        break;
      case 16:
        v10 = v8 + 128;
        break;
      default:
        goto LABEL_16;
    }
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = strlen(*v10);
    v13 = sub_23C49B938(a1, v11, v12, v7, v7, v7);
    v40[0] = v4;
    v40[1] = v5;
    v39 = 257;
    result = sub_23C497A7C(a1 + 8, *(v13 + 24), v13, v40, 2, v38);
    goto LABEL_20;
  }

LABEL_16:
  v36 = 0;
  v37 = 0;
  v35 = 0;
  sub_23C4D5768(*(a1 + 72), v7, v6 == 115, &v37, &v36, &v35);
  v39 = 257;
  if (v6 == 115)
  {
    v15 = sub_23C4BF7D4(a1 + 8, v4, v5, v38);
    v39 = 257;
    v16 = sub_23C4D5948((a1 + 8), v4, v5, v38);
    v41 = 257;
    v17 = sub_23C4D5948((a1 + 8), v5, v15, v40);
    v34 = 257;
    v18 = sub_23C4BFF4C(a1 + 8, v17, v33);
    v32 = 257;
    v19 = sub_23C49A8E0(a1 + 8, v16, v18, v31);
    v20 = *v4;
    v21 = llvm::ConstantInt::get();
    v30 = 257;
    sub_23C497D84((a1 + 8), 40, v19, v21, v29);
    v22 = *v4;
    v23 = llvm::ConstantInt::get();
    v39 = 257;
    sub_23C497D84((a1 + 8), 39, v4, v23, v38);
    v24 = *v4;
    v39 = 257;
    sub_23C49ACF8(a1 + 8, 38, v36, v24, v38);
    v25 = *v4;
    v41 = 257;
    sub_23C49ACF8(a1 + 8, 38, v37, v25, v40);
    v34 = 257;
    llvm::IRBuilderBase::CreateSelect();
    v39 = 257;
  }

  else
  {
    v26 = sub_23C4BF7D4(a1 + 8, v4, v5, v38);
    v39 = 257;
    sub_23C497D84((a1 + 8), 34, v26, v4, v38);
    v27 = *v4;
    llvm::ConstantInt::get();
    v41 = 257;
  }

  result = llvm::IRBuilderBase::CreateSelect();
LABEL_20:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4C20FC(uint64_t a1, llvm::Type ***a2, unsigned __int8 *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = **a2;
  v8 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v7);
  if (v6 == 115)
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 118;
        break;
      case 32:
        v10 = v8 + 120;
        break;
      case 16:
        v10 = v8 + 119;
        break;
      default:
        goto LABEL_16;
    }
  }

  else
  {
    switch(ScalarSizeInBits)
    {
      case 8:
        v10 = v8 + 121;
        break;
      case 32:
        v10 = v8 + 123;
        break;
      case 16:
        v10 = v8 + 122;
        break;
      default:
        goto LABEL_16;
    }
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = strlen(*v10);
    v13 = sub_23C49B938(a1, v11, v12, v7, v7, v7);
    v29[0] = v4;
    v29[1] = v5;
    v28 = 257;
    result = sub_23C497A7C(a1 + 8, *(v13 + 24), v13, v29, 2, v27);
    goto LABEL_19;
  }

LABEL_16:
  v25 = 0;
  v26 = 0;
  v24 = 0;
  sub_23C4D5768(*(a1 + 72), v7, v6 == 115, &v26, &v25, &v24);
  if (v6 == 115)
  {
    v15 = v24;
    v28 = 257;
    v16 = sub_23C4D58A8(a1 + 8, v4, v24, v27);
    v28 = 257;
    v17 = sub_23C4D58A8(a1 + 8, v5, v15, v27);
    v28 = 257;
    v18 = sub_23C49A474(a1 + 8, v16, v17, v27);
    v28 = 257;
    sub_23C497D84((a1 + 8), 38, v18, v25, v27);
    v30 = 257;
    sub_23C497D84((a1 + 8), 40, v18, v26, v29);
    llvm::IRBuilderBase::CreateSelect();
    Select = llvm::IRBuilderBase::CreateSelect();
    v20 = *v4;
    v28 = 257;
    result = sub_23C4D58A8(a1 + 8, Select, v20, v27);
  }

  else
  {
    v28 = 257;
    v21 = sub_23C49A474(a1 + 8, v4, v5, v27);
    v28 = 257;
    sub_23C497D84((a1 + 8), 36, v21, v4, v27);
    v22 = *v4;
    v30 = 257;
    sub_23C4A6F5C(a1 + 8, v25, v22, v29);
    result = llvm::IRBuilderBase::CreateSelect();
  }

LABEL_19:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4C23DC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a3 == 117)
  {
    v12 = 257;
    v6 = (a1 + 8);
    v7 = 36;
  }

  else
  {
    v12 = 257;
    v6 = (a1 + 8);
    v7 = 40;
  }

  sub_23C497D84(v6, v7, v4, v5, v11);
  v12 = 257;
  sub_23C4BF7D4(a1 + 8, v5, v4, v11);
  v10 = 257;
  sub_23C4BF7D4(a1 + 8, v4, v5, v9);
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4C24B0(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = *a2;
  if (*a3 == 117)
  {
    return v3;
  }

  v5 = *v3;
  if ((*(*v3 + 8) & 0xFE) == 0x12)
  {
    v5 = **(*v3 + 16);
  }

  v6 = *(a1 + 344);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v5);
  switch(ScalarSizeInBits)
  {
    case 8:
      v8 = v6 + 114;
      break;
    case 32:
      v8 = v6 + 116;
      break;
    case 16:
      v8 = v6 + 115;
      break;
    default:
LABEL_14:
      v13 = llvm::ConstantInt::get();
      v19 = 257;
      sub_23C497D84((a1 + 8), 40, v3, v13, v18);
      v17[16] = 257;
      if (*(v3 + 16) <= 0x14u)
      {
        v15 = (*(**(a1 + 80) + 192))(*(a1 + 80), v3, 0, 0);
        if (v15)
        {
          v16 = *(v15 + 16) >= 0x1Cu;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          sub_23C49B15C((a1 + 8), v15, v17);
        }
      }

      else
      {
        v19 = 257;
        Neg = llvm::BinaryOperator::CreateNeg();
        sub_23C49B15C((a1 + 8), Neg, v17);
      }

      v19 = 257;
      return llvm::IRBuilderBase::CreateSelect();
  }

  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_14;
  }

  v10 = strlen(*v8);
  v11 = sub_23C49EB10(a1, v9, v10, v5, v5);

  return sub_23C506244(a1, v11, v3);
}

uint64_t sub_23C4C27D4(uint64_t a1)
{
  v2 = *(a1 + 320);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    if (v3)
    {
      v6 = (v3 - 56);
    }

    else
    {
      v6 = 0;
    }

    v3 = *(v3 + 8);
    Name = llvm::Value::getName(v6);
    v16[0] = 0;
    v16[1] = 0;
    v14 = 0;
    v15 = 0;
    if (sub_23C4C28BC(Name, v8, v16, &v14) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(a1 + 712);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1)
      {
        v11 = *(v9 + 8);
      }

      else
      {
        v11 = Key;
      }

      v12 = (*v9 + 8 * v11);
      if (v12 != (**(a1 + 712) + 8 * *(*(a1 + 712) + 8)))
      {
        sub_23C4C2978(a1 + 352, v5, *v12 + 8, v14, v15);
      }
    }
  }

  return *(a1 + 720);
}

uint64_t sub_23C4C28BC(_DWORD *a1, unint64_t a2, char **a3, char **a4)
{
  if (a2 < 4 || *a1 != 779250017)
  {
    return 0;
  }

  v7 = (a1 + 1);
  v8 = a2 - 4;
  if (a2 == 4 || (v9 = memchr(a1 + 1, 46, v8)) == 0 || (v10 = (v9 - v7), v9 - v7 == -1))
  {
    v14 = 0;
    *a3 = v7;
    a3[1] = v8;
    v13 = &unk_23C53F34D;
  }

  else
  {
    if (v8 >= v10)
    {
      v11 = (v9 - v7);
    }

    else
    {
      v11 = v8;
    }

    *a3 = v7;
    a3[1] = v11;
    if (v8 >= (v10 + 1))
    {
      v12 = (v10 + 1);
    }

    else
    {
      v12 = v8;
    }

    v13 = &v7[v12];
    v14 = v8 - v12;
  }

  *a4 = v13;
  a4[1] = v14;
  return 1;
}

uint64_t sub_23C4C2978(uint64_t a1, llvm::Function *this, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v6 = this;
  v96 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 16);
  if (v8 != 9)
  {
    if (v8 == 8)
    {
      v9 = *a3;
      if (*a3)
      {
        v10 = strlen(*a3);
        v93[0] = &v93[3];
        *&v93[1] = xmmword_23C532530;
        sub_23C4B01BC(v93, v9, &v9[v10]);
      }

      else
      {
        v93[2] = 64;
        v93[0] = &v93[3];
        v93[1] = 0;
      }

      sub_23C4B01BC(v93, ".", "");
      sub_23C4B01BC(v93, a4, &a5[a4]);
      v71 = *(v6 + 3);
      v72 = *(a1 + 320);
      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (v93[0] != &v93[3])
      {
        free(v93[0]);
      }

      goto LABEL_93;
    }

    v16 = **(*(this + 3) + 16);
    v17 = ((*(v16 + 8) & 0xFE) == 18) & *(a3 + 21);
    if (v17 == 1)
    {
      v18 = *(v16 + 32);
    }

    else
    {
      v18 = 1;
    }

    v78 = v18;
    v75 = *(a1 + 104);
    v19 = *(this + 1);
    if (!v19)
    {
LABEL_89:
      *(a1 + 104) = v75;
      v6 = this;
      goto LABEL_93;
    }

    v77 = **(*(this + 3) + 16);
    while (1)
    {
      v20 = *(v19 + 24);
      v79 = *(v19 + 8);
      FastMathFlags = sub_23C497EEC(v20);
      if (FastMathFlags)
      {
        FastMathFlags = llvm::Instruction::getFastMathFlags(v20);
      }

      *(a1 + 104) = FastMathFlags;
      sub_23C4C30FC(a1 + 8, v20);
      v22 = llvm::UndefValue::get();
      if (v78)
      {
        break;
      }

LABEL_86:
      if (*v20 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v20);
      v19 = v79;
      if (!v79)
      {
        goto LABEL_89;
      }
    }

    v23 = 0;
    while (1)
    {
      v83 = v22;
      v95 = 0;
      v94 = 0u;
      memset(v93, 0, sizeof(v93));
      v24 = sub_23C4B88A0(v20) - v20 + 32 * (*(v20 + 5) & 0x7FFFFFF);
      if ((v24 & 0x1FFFFFFFE0) != 0)
      {
        v25 = (v24 >> 5);
        v26 = v93;
        v27 = v20;
        do
        {
          v28 = (v27 - 32 * (*(v20 + 5) & 0x7FFFFFF));
          v29 = *v28;
          *v26 = *v28;
          if (v17 && (*(*v29 + 8) & 0xFE) == 0x12)
          {
            v92 = 257;
            v30 = *(a1 + 192);
            v31 = llvm::ConstantInt::get();
            *v26 = sub_23C5057E8(a1 + 8, v29, v31, &PrimitiveSizeInBits);
          }

          ++v26;
          v27 = (v27 + 32);
          --v25;
        }

        while (v25);
      }

      if (*(a3 + 20))
      {
        v32 = *v93[0];
        if ((*(*v93[0] + 8) & 0xFE) == 0x12)
        {
          v32 = **(v32 + 2);
        }

        PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v32);
        v91 = v33;
        if (llvm::TypeSize::operator unsigned long long() == 32)
        {
          v34 = 0;
        }

        else
        {
          v35 = *(a1 + 160);
          if ((*(*v93[0] + 8) & 0xFE) == 0x12)
          {
            v36 = *(*v93[0] + 32);
            v37 = *(a1 + 160);
            v35 = llvm::FixedVectorType::get();
          }

          if ((v24 & 0x1FFFFFFFE0) != 0)
          {
            v38 = (v24 >> 5);
            v39 = v93;
            do
            {
              v40 = *v39;
              if (*(**v39 + 8) != 15)
              {
                v92 = 257;
                *v39 = sub_23C4B284C(a1 + 8, v40, v35, &PrimitiveSizeInBits);
              }

              ++v39;
              --v38;
            }

            while (v38);
          }

          v34 = 1;
        }
      }

      else
      {
        v34 = 0;
      }

      v41 = *(a1 + 344);
      v87 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v88, (a1 + 8));
      v89 = *(a1 + 104);
      sub_23C49769C(&v87, v41 + 8);
      if (v88)
      {
        llvm::MetadataTracking::untrack();
      }

      v42 = 0;
      v43 = *(a3 + 16);
      if (v43 <= 3)
      {
        switch(v43)
        {
          case 1:
            v56 = *a3;
            v57 = *(a3 + 8);
            v58 = (*(a1 + 344) + (v57 >> 1));
            if (v57)
            {
              v56 = *(*v58 + v56);
            }

            v66 = (v56)(v58);
            goto LABEL_75;
          case 2:
            v49 = *a3;
            v65 = *(a3 + 8);
            v51 = *v20;
            v52 = (*(a1 + 344) + (v65 >> 1));
            if (v65)
            {
LABEL_64:
              v49 = *(*v52 + v49);
            }

LABEL_65:
            v66 = (v49)(v52, v51);
LABEL_75:
            v42 = v66;
            break;
          case 3:
            v49 = *a3;
            v50 = *(a3 + 8);
            v51 = v93[0];
            v52 = (*(a1 + 344) + (v50 >> 1));
            if (v50)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
        }
      }

      else
      {
        if (v43 <= 5)
        {
          if (v43 == 4)
          {
            v59 = (v93[0] + 24);
            if (*(v93[0] + 8) >= 0x41u)
            {
              v59 = *v59;
            }

            v47 = *v59;
            v44 = *a3;
            v60 = *(a3 + 8);
            v46 = *v20;
            v48 = (*(a1 + 344) + (v60 >> 1));
            if (v60)
            {
              v44 = *(*v48 + v44);
            }
          }

          else
          {
            v44 = *a3;
            v45 = *(a3 + 8);
            v46 = v93[0];
            v47 = v93[1];
            v48 = (*(a1 + 344) + (v45 >> 1));
            if (v45)
            {
              v44 = *(*v48 + v44);
            }
          }

          v66 = (v44)(v48, v46, v47);
          goto LABEL_75;
        }

        if (v43 == 6)
        {
          v53 = *a3;
          v61 = *(a3 + 8);
          v62 = v93[0];
          v63 = v93[1];
          v64 = v93[2];
          v55 = (*(a1 + 344) + (v61 >> 1));
          if ((v61 & 1) == 0)
          {
            goto LABEL_74;
          }

          v66 = (*(*v55 + v53))(v55, v93[0], v93[1], v93[2]);
          goto LABEL_75;
        }

        if (v43 == 7)
        {
          v53 = *a3;
          v54 = *(a3 + 8);
          v55 = (*(a1 + 344) + (v54 >> 1));
          if (v54)
          {
            v53 = *(*v55 + v53);
          }

          v62 = v93;
          v64 = a5;
          v63 = a4;
LABEL_74:
          v66 = (v53)(v55, v62, v63, v64);
          goto LABEL_75;
        }
      }

      v67 = *(a1 + 344);
      v84 = *(v67 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v85, (v67 + 8));
      v86 = *(v67 + 104);
      sub_23C49769C(&v84, a1 + 8);
      if (v85)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v34)
      {
        v68 = *v20;
        if (v17 && (*(v68 + 8) & 0xFE) == 0x12)
        {
          v68 = **(v68 + 16);
        }

        v92 = 257;
        v42 = sub_23C49FEB4(a1 + 8, v42, v68, &PrimitiveSizeInBits);
      }

      if (v17)
      {
        v92 = 257;
        v69 = *(a1 + 192);
        v70 = llvm::ConstantInt::get();
        v42 = sub_23C505AA8(a1 + 8, v83, v42, v70, &PrimitiveSizeInBits);
      }

      ++v23;
      v22 = v42;
      if (v23 == v78)
      {
        goto LABEL_86;
      }
    }
  }

  v11 = *(this + 1);
  while (v11)
  {
    v12 = *(v11 + 24);
    v11 = *(v11 + 8);
    v13 = *a3;
    v14 = *(a3 + 8);
    v15 = (*(a1 + 344) + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v15 + v13);
    }

    (v13)(v15, v12);
  }

LABEL_93:
  result = llvm::Function::eraseFromParent(v6);
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4C30FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 56) = a2 + 24;
  v3 = *(a2 + 48);
  v5 = v3;
  if (v3)
  {
    llvm::MetadataTracking::track();
    v3 = v5;
  }

  result = sub_23C49779C(a1, v3);
  if (v5)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t *sub_23C4C3164(const void *a1, size_t a2)
{
  i = (qword_27E1F69F8 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F6A08) = qword_27E1F6A08 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 41, 8);
  v9 = v8;
  v10 = v8 + 40;
  if (a2)
  {
    memcpy((v8 + 40), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x1800000000;
  *i = v9;
  ++dword_27E1F6A04;
    ;
  }

  return i;
}

uint64_t *sub_23C4C3270(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x23EED4160](a3 + 25, 8);
  v11 = v10;
  v12 = v10 + 24;
  if (a3)
  {
    memcpy((v10 + 24), a2, a3);
  }

  *(v12 + a3) = 0;
  v11[1] = 0;
  v11[2] = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t sub_23C4C3364(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4C33B0(a1, a2);
  v7 = 257;
  return sub_23C4BBCA0(a1 + 8, v4, a2, v6);
}

llvm::Value *sub_23C4C33B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v11 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, a2, v10);
  v9[16] = 257;
  v7 = sub_23C4A0EC4(a1 + 8, v5, v6, v9);
  return sub_23C4BBBDC(a1, v7);
}

uint64_t sub_23C4C3434(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23C4C33B0(a1, a2);
  v7 = 257;
  return sub_23C4BBCA0(a1 + 8, a2, v4, v6);
}

uint64_t sub_23C4C3480(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v12 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, a2, v11);
  v10[16] = 257;
  v7 = sub_23C4A0BD4(a1 + 8, v5, v6, v10);
  v8 = sub_23C4BBBDC(a1, v7);
  v12 = 257;
  return sub_23C4BBCA0(a1 + 8, v5, v8, v11);
}

uint64_t sub_23C4C351C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v12 = 257;
  v6 = sub_23C49EA2C(a1 + 8, a2, a2, v11);
  v10[16] = 257;
  v7 = sub_23C4A0BD4(a1 + 8, v5, v6, v10);
  v8 = sub_23C4BBBDC(a1, v7);
  v12 = 257;
  return sub_23C4BBCA0(a1 + 8, a2, v8, v11);
}

uint64_t sub_23C4C35C0(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        v4 = *(*a1 + 8 * i);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          if (*(v4 + 5))
          {
            v7 = *(v4 + 4);
            if (v7)
            {
              v8 = 0;
              v9 = 8 * v7;
              do
              {
                v10 = *(v4[1] + v8);
                if (v10 != -8 && v10 != 0)
                {
                  llvm::deallocate_buffer(v10, (*v10 + 25));
                }

                v8 += 8;
              }

              while (v9 != v8);
            }
          }

          free(v4[1]);
          llvm::deallocate_buffer(v4, (v6 + 41));
        }
      }
    }
  }

  free(*a1);
  return a1;
}

BOOL sub_23C4C36B8(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (!v2)
  {
    return v2;
  }

  v3 = sub_23C4B1878(a1 + *(*a1 - 24));
  v58 = sub_23C4B03D4(v3, v4);
  v60 = 0;
  v61 = 0;
  v5 = 22;
  v62 = 0;
  do
  {
    v6 = a1 + *(*a1 - 24);
    *(v6 + 774) = 1;
    v7 = *(v6 + 736);
    v8 = *(v6 + 752);
    v9 = *(v6 + 744);
    if (*(v6 + 784) == 1)
    {
      v10 = sub_23C4B2F14(v6 + 704, 0);
      sub_23C4B0980((v6 + 704), 4, v10);
    }

    if (v5 == 16)
    {
      v11 = 2;
      v12 = sub_23C4B0A6C(v6 + 704, 2);
      sub_23C4B0980((v6 + 704), 6, v12);
      v13 = sub_23C4B0A6C(v6 + 704, 2);
      sub_23C4B0980((v6 + 704), 8, v13);
LABEL_7:
      v14 = sub_23C4B2F14(v6 + 704, v11);
      sub_23C4B0980((v6 + 704), 10, v14);
      goto LABEL_11;
    }

    if (*(v6 + 784) == 1)
    {
      v15 = sub_23C4B0A6C(v6 + 704, 0);
      sub_23C4B0980((v6 + 704), 6, v15);
      if (*(v6 + 784))
      {
        v16 = sub_23C4B0A6C(v6 + 704, 0);
        sub_23C4B0980((v6 + 704), 8, v16);
        v11 = 0;
        if (*(v6 + 784))
        {
          goto LABEL_7;
        }
      }
    }

LABEL_11:
    v59 = sub_23C4B03D4(v6 + 704, v7 - v8 + v9);
    sub_23C4C3CEC(&v60, &v59);
    --v5;
  }

  while (v5);
  v17 = v60;
  if (v61 == v60)
  {
    v18 = &unk_27E1F74FC;
  }

  else
  {
    v18 = v60;
  }

  v19 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v18, (v61 - v60) >> 2);
  v20 = a1 + *(*a1 - 24);
  *(v20 + 774) = 1;
  v21 = *(v20 + 744);
  v22 = *(v20 + 736) - *(v20 + 752);
  if (*(v20 + 784) == 1)
  {
    v23 = sub_23C4B0A6C(v20 + 704, 0);
    sub_23C4B0980((v20 + 704), 4, v23);
    if (*(v20 + 784))
    {
      v24 = sub_23C4B0A6C(v20 + 704, 0);
      sub_23C4B0980((v20 + 704), 6, v24);
      if (*(v20 + 784))
      {
        v25 = sub_23C4B0A6C(v20 + 704, 0);
        sub_23C4B0980((v20 + 704), 8, v25);
        if (*(v20 + 784))
        {
          v26 = sub_23C4B0A6C(v20 + 704, 0);
          sub_23C4B0980((v20 + 704), 10, v26);
          if (*(v20 + 784))
          {
            v27 = sub_23C4B0A6C(v20 + 704, 0);
            sub_23C4B0980((v20 + 704), 12, v27);
          }
        }
      }
    }
  }

  v28 = *(a1 + 12);
  if (v28 <= 4)
  {
    v28 = 4;
  }

  sub_23C4B0A04((v20 + 704), 14, v28 - 4);
  v29 = sub_23C4B03D4(v20 + 704, v22 + v21);
  v30 = a1 + *(*a1 - 24);
  *(v30 + 774) = 1;
  v31 = *(v30 + 744);
  v32 = *(v30 + 736) - *(v30 + 752);
  if (*(v30 + 784) == 1)
  {
    v33 = sub_23C4B0A6C(v30 + 704, 0);
    sub_23C4B0980((v30 + 704), 14, v33);
    if (*(v30 + 784))
    {
      v34 = sub_23C4B0A6C(v30 + 704, 0);
      sub_23C4B0980((v30 + 704), 12, v34);
      if (*(v30 + 784))
      {
        v35 = sub_23C4B0A6C(v30 + 704, 0);
        sub_23C4B0980((v30 + 704), 10, v35);
        if (*(v30 + 784))
        {
          v36 = sub_23C4B0A6C(v30 + 704, 0);
          sub_23C4B0980((v30 + 704), 8, v36);
          if (*(v30 + 784))
          {
            v37 = sub_23C4B0A6C(v30 + 704, 0);
            sub_23C4B0980((v30 + 704), 6, v37);
            if (*(v30 + 784))
            {
              v38 = sub_23C4B0A6C(v30 + 704, 0);
              sub_23C4B0980((v30 + 704), 4, v38);
            }
          }
        }
      }
    }
  }

  v39 = sub_23C4B03D4(v30 + 704, v32 + v31);
  v40 = a1 + *(*a1 - 24);
  *(v40 + 774) = 1;
  v41 = *(v40 + 736);
  v42 = *(v40 + 752);
  v43 = *(v40 + 744);
  v44 = sub_23C4B2F14(v40 + 704, 1);
  sub_23C4B0980((v40 + 704), 6, v44);
  if (*(v40 + 784) == 1)
  {
    v45 = sub_23C4B2F14(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 8, v45);
  }

  sub_23C4B0A04((v40 + 704), 10, *(a1 + 12));
  if (*(v40 + 784) == 1)
  {
    v46 = sub_23C4B0A6C(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 12, v46);
    if (*(v40 + 784))
    {
      v47 = sub_23C4B0A6C(v40 + 704, 0);
      sub_23C4B0980((v40 + 704), 14, v47);
    }
  }

  sub_23C4B02B4((v40 + 704), 16, v29);
  sub_23C4B02B4((v40 + 704), 18, v39);
  if (*(v40 + 784) == 1)
  {
    v48 = sub_23C4B2F14(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 20, v48);
  }

  v49 = v41 - v42;
  sub_23C4B02B4((v40 + 704), 22, v19);
  if (*(v40 + 784) == 1)
  {
    v50 = sub_23C4B0A6C(v40 + 704, 0);
    sub_23C4B0980((v40 + 704), 26, v50);
  }

  v51 = sub_23C4B03D4(v40 + 704, v49 + v43);
  v52 = a1 + *(*a1 - 24);
  *(v52 + 774) = 1;
  v53 = *(v52 + 744);
  v54 = *(v52 + 736) - *(v52 + 752);
  sub_23C4B5F88((v52 + 704), v58);
  sub_23C4C521C((v52 + 704), v51);
  v55 = a1 + *(*a1 - 24);
  v56 = sub_23C4B03D4(v52 + 704, v54 + v53);
  sub_23C4B1AD8(v55 + 704, v56);
  if (v17)
  {
    operator delete(v17);
  }

  return v2;
}

void sub_23C4C3CEC(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_23C496CE8();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_23C4B1830(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_23C4C3DE0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v10, &unk_23C53F34D);
  sub_23C49F8D0(v8, "passthrough_size");
  sub_23C4B7004(&v12, v8, *(a1 + 16));
  sub_23C49F8D0(__p, "pad_size");
  sub_23C4B7004(&v13, __p, *(a1 + 20));
  sub_23C4B70B4(a2, v10, &v12, 2);
  for (i = 0; i != -6; i -= 3)
  {
    if (SHIBYTE(v13.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v12 + i * 8 + 24));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4C3F20(uint64_t a1)
{
  v2 = *(a1 + *(*a1 - 24) + 320);
  v3 = v2 + 24;
  for (i = *(v2 + 32); i != v3; i = *(i + 8))
  {
    if (i)
    {
      v5 = (i - 56);
    }

    else
    {
      v5 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v5) & 1) == 0)
    {
      sub_23C4B22E0(a1 + *(*a1 - 24), v5);
      break;
    }
  }

  sub_23C4B2B20((a1 + *(*a1 - 24)));
  v6 = (*(*(a1 + *(*a1 - 24)) + 24))(a1 + *(*a1 - 24));
  if (sub_23C4B00BC(v6))
  {
    v7 = (*(*(a1 + *(*a1 - 24)) + 24))(a1 + *(*a1 - 24));
    v34 = *(a1 + *(*a1 - 24) + 696);
    sub_23C4AA240(v7, "------ Start compilation key description for %s shader %u  ------", v8, v9, v10, v11, v12, v13, v7);
    v14 = (*(*(a1 + *(*a1 - 24)) + 72))(__p);
    if (v37 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    sub_23C4AA240(v14, v21, v15, v16, v17, v18, v19, v20, v33);
    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    v22 = (*(*(a1 + *(*a1 - 24)) + 24))(a1 + *(*a1 - 24));
    v35 = *(a1 + *(*a1 - 24) + 696);
    sub_23C4AA240(v22, "------ End compilation key description for %s shader %u  ------", v23, v24, v25, v26, v27, v28, v22);
  }

  v29 = a1 + *(*a1 - 24);
  v30 = *(v29 + 400);
  v31 = *(v29 + 320);
  if (*(a1 + 8) == 1)
  {
    if ((sub_23C4AF8FC(v30, v29, v31, 1, 2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = sub_23C4AF8FC(v30, v29, v31, 1, 3);
    if (!result)
    {
      return result;
    }
  }

  result = (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24));
  if (result)
  {
    sub_23C4C420C(a1 + *(*a1 - 24));
    return 1;
  }

  return result;
}

void sub_23C4C420C(uint64_t a1)
{
  v2 = (*(*a1 + 24))(a1);
  if (sub_23C4B00BC(v2))
  {
    if (*(a1 + 736) - *(a1 + 752) + *(a1 + 744))
    {
      operator new();
    }

    if (*(a1 + 928) - *(a1 + 944) + *(a1 + 936))
    {
      v3 = (*(**(a1 + 344) + 496))(*(a1 + 344));
      v4 = *(a1 + 944);
      __p[0] = 0;
      __p[1] = 0;
      v30 = 0;
      sub_23C530100(v3, v4, __p);
      v5 = (*(*a1 + 24))(a1);
      v27 = *(a1 + 696);
      sub_23C4AA240(v5, "------ Start Target Translator Metadata %s shader %d ------\n", v6, v7, v8, v9, v10, v11, v5);
      if (v30 >= 0)
      {
        v19 = __p;
      }

      else
      {
        LOBYTE(v19) = __p[0];
      }

      sub_23C4AA240(v12, "%s", v13, v14, v15, v16, v17, v18, v19);
      v20 = (*(*a1 + 24))(a1);
      v28 = *(a1 + 696);
      sub_23C4AA240(v20, "------ End Target Translator Metadata %s shader %d ------\n", v21, v22, v23, v24, v25, v26, v20);
      sub_23C53018C(v3);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_23C4C50F8(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 24);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C518C(uint64_t a1)
{
  sub_23C4B130C(a1 + 24);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4C521C(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return sub_23C4B0A04(v3, 6, v4);
  }

  return result;
}

BOOL sub_23C4C52A0(uint64_t a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v69 = sub_23C4B03D4(v3, v4);
    v74 = 0;
    v75 = 0;
    v5 = 22;
    v76 = 0;
    do
    {
      v6 = a1 + *(*a1 - 24);
      *(v6 + 774) = 1;
      v7 = *(v6 + 736);
      v8 = *(v6 + 752);
      v9 = *(v6 + 744);
      if (*(v6 + 784) == 1)
      {
        v10 = sub_23C4B2F14(v6 + 704, 0);
        sub_23C4B0980((v6 + 704), 4, v10);
        if (*(v6 + 784))
        {
          v11 = sub_23C4B0A6C(v6 + 704, 0);
          sub_23C4B0980((v6 + 704), 6, v11);
          if (*(v6 + 784))
          {
            v12 = sub_23C4B0A6C(v6 + 704, 0);
            sub_23C4B0980((v6 + 704), 8, v12);
            if (*(v6 + 784))
            {
              v13 = sub_23C4B2F14(v6 + 704, 0);
              sub_23C4B0980((v6 + 704), 10, v13);
            }
          }
        }
      }

      LODWORD(v71) = sub_23C4B03D4(v6 + 704, v7 - v8 + v9);
      sub_23C4C3CEC(&v74, &v71);
      --v5;
    }

    while (v5);
    v14 = v74;
    if (v75 == v74)
    {
      v15 = &unk_27E1F74FC;
    }

    else
    {
      v15 = v74;
    }

    v68 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v15, (v75 - v74) >> 2);
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v16 = a1 + *(*a1 - 24);
    *(v16 + 774) = 1;
    v17 = *(v16 + 744);
    v18 = *(v16 + 736) - *(v16 + 752);
    if (*(v16 + 784) == 1)
    {
      v19 = sub_23C4B0A6C(v16 + 704, 0);
      sub_23C4B0980((v16 + 704), 4, v19);
      if (*(v16 + 784))
      {
        v20 = sub_23C4B0A6C(v16 + 704, 0);
        sub_23C4B0980((v16 + 704), 6, v20);
      }
    }

    v21 = sub_23C4B0A6C(v16 + 704, 3);
    sub_23C4B0980((v16 + 704), 8, v21);
    sub_23C4B0A04((v16 + 704), 12, *(a1 + 16));
    v22 = sub_23C4B2F14(v16 + 704, 3);
    sub_23C4B0980((v16 + 704), 10, v22);
    v70 = sub_23C4B03D4(v16 + 704, v18 + v17);
    sub_23C4C3CEC(&v71, &v70);
    v23 = v71;
    if (v72 == v71)
    {
      v24 = &unk_27E1F744C;
    }

    else
    {
      v24 = v71;
    }

    v67 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v24, (v72 - v71) >> 2);
    v25 = a1 + *(*a1 - 24);
    *(v25 + 774) = 1;
    v26 = *(v25 + 744);
    v27 = *(v25 + 736) - *(v25 + 752);
    if (*(v25 + 784) == 1)
    {
      v28 = sub_23C4B0A6C(v25 + 704, 0);
      sub_23C4B0980((v25 + 704), 4, v28);
      if (*(v25 + 784))
      {
        v29 = sub_23C4B0A6C(v25 + 704, 0);
        sub_23C4B0980((v25 + 704), 6, v29);
        if (*(v25 + 784))
        {
          v30 = sub_23C4B0A6C(v25 + 704, 0);
          sub_23C4B0980((v25 + 704), 8, v30);
          if (*(v25 + 784))
          {
            v31 = sub_23C4B0A6C(v25 + 704, 0);
            sub_23C4B0980((v25 + 704), 10, v31);
            if (*(v25 + 784))
            {
              v32 = sub_23C4B0A6C(v25 + 704, 0);
              sub_23C4B0980((v25 + 704), 12, v32);
            }
          }
        }
      }
    }

    v33 = *(a1 + 12);
    if (v33 <= 4)
    {
      v33 = 4;
    }

    sub_23C4B0A04((v25 + 704), 14, v33 - 4);
    v34 = sub_23C4B03D4(v25 + 704, v27 + v26);
    v35 = a1 + *(*a1 - 24);
    *(v35 + 774) = 1;
    v36 = *(v35 + 744);
    v37 = *(v35 + 736) - *(v35 + 752);
    if (*(v35 + 784) == 1)
    {
      v38 = sub_23C4B0A6C(v35 + 704, 0);
      sub_23C4B0980((v35 + 704), 14, v38);
      if (*(v35 + 784))
      {
        v39 = sub_23C4B0A6C(v35 + 704, 0);
        sub_23C4B0980((v35 + 704), 12, v39);
        if (*(v35 + 784))
        {
          v40 = sub_23C4B0A6C(v35 + 704, 0);
          sub_23C4B0980((v35 + 704), 10, v40);
          if (*(v35 + 784))
          {
            v41 = sub_23C4B0A6C(v35 + 704, 0);
            sub_23C4B0980((v35 + 704), 8, v41);
            if (*(v35 + 784))
            {
              v42 = sub_23C4B0A6C(v35 + 704, 0);
              sub_23C4B0980((v35 + 704), 6, v42);
              if (*(v35 + 784))
              {
                v43 = sub_23C4B0A6C(v35 + 704, 0);
                sub_23C4B0980((v35 + 704), 4, v43);
              }
            }
          }
        }
      }
    }

    v44 = sub_23C4B03D4(v35 + 704, v37 + v36);
    v45 = a1 + *(*a1 - 24);
    *(v45 + 774) = 1;
    v46 = *(v45 + 744);
    v47 = *(v45 + 736) - *(v45 + 752);
    sub_23C4C521C((v45 + 704), v67);
    v48 = sub_23C4B03D4(v45 + 704, v47 + v46);
    v49 = a1 + *(*a1 - 24);
    *(v49 + 774) = 1;
    v50 = *(v49 + 736);
    v51 = *(v49 + 752);
    v52 = *(v49 + 744);
    sub_23C4B5F88((v49 + 704), v48);
    v53 = sub_23C4B2F14(v49 + 704, 1);
    sub_23C4B0980((v49 + 704), 6, v53);
    if (*(v49 + 784) == 1)
    {
      v54 = sub_23C4B2F14(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 8, v54);
    }

    sub_23C4B0A04((v49 + 704), 10, *(a1 + 12));
    if (*(v49 + 784) == 1)
    {
      v55 = sub_23C4B0A6C(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 12, v55);
      if (*(v49 + 784))
      {
        v56 = sub_23C4B0A6C(v49 + 704, 0);
        sub_23C4B0980((v49 + 704), 14, v56);
      }
    }

    sub_23C4B02B4((v49 + 704), 16, v34);
    sub_23C4B02B4((v49 + 704), 18, v44);
    if (*(v49 + 784) == 1)
    {
      v57 = sub_23C4B2F14(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 20, v57);
    }

    v58 = v50 - v51;
    sub_23C4B02B4((v49 + 704), 22, v68);
    if (*(v49 + 784) == 1)
    {
      v59 = sub_23C4B0A6C(v49 + 704, 0);
      sub_23C4B0980((v49 + 704), 26, v59);
    }

    v60 = sub_23C4B03D4(v49 + 704, v58 + v52);
    v61 = a1 + *(*a1 - 24);
    *(v61 + 774) = 1;
    v62 = *(v61 + 744);
    v63 = *(v61 + 736) - *(v61 + 752);
    sub_23C4B5F88((v61 + 704), v69);
    sub_23C4C521C((v61 + 704), v60);
    v64 = a1 + *(*a1 - 24);
    v65 = sub_23C4B03D4(v61 + 704, v63 + v62);
    sub_23C4B1AD8(v64 + 704, v65);
    if (v23)
    {
      operator delete(v23);
    }

    if (v14)
    {
      operator delete(v14);
    }
  }

  return v2;
}

void sub_23C4C5A24(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v7, &unk_23C53F34D);
  sub_23C49F8D0(v5, "vertex_stride");
  sub_23C4B7004(&__p, v5, *(a1 + 12));
  sub_23C4B70B4(a2, v7, &__p, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_23C4C5B04(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 24);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C5B98(uint64_t a1)
{
  sub_23C4B130C(a1 + 24);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4C5C2C(uint64_t a1)
{
  result = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (result)
  {
    v76 = result;
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v75 = sub_23C4B03D4(v3, v4);
    v81 = 0;
    v82 = 0;
    v5 = 22;
    v83 = 0;
    do
    {
      v6 = a1 + *(*a1 - 24);
      *(v6 + 774) = 1;
      v7 = *(v6 + 736);
      v8 = *(v6 + 752);
      v9 = *(v6 + 744);
      if (*(v6 + 784) == 1)
      {
        v10 = sub_23C4B2F14(v6 + 704, 0);
        sub_23C4B0980((v6 + 704), 4, v10);
        if (*(v6 + 784))
        {
          v11 = sub_23C4B0A6C(v6 + 704, 0);
          sub_23C4B0980((v6 + 704), 6, v11);
          if (*(v6 + 784))
          {
            v12 = sub_23C4B0A6C(v6 + 704, 0);
            sub_23C4B0980((v6 + 704), 8, v12);
            if (*(v6 + 784))
            {
              v13 = sub_23C4B2F14(v6 + 704, 0);
              sub_23C4B0980((v6 + 704), 10, v13);
            }
          }
        }
      }

      LODWORD(v78) = sub_23C4B03D4(v6 + 704, v7 - v8 + v9);
      sub_23C4C3CEC(&v81, &v78);
      --v5;
    }

    while (v5);
    __p = v81;
    if (v82 == v81)
    {
      v14 = &unk_27E1F74FC;
    }

    else
    {
      v14 = v81;
    }

    v73 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v14, (v82 - v81) >> 2);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    if (*(a1 + 32) != -1)
    {
      v15 = a1 + *(*a1 - 24);
      *(v15 + 774) = 1;
      v16 = *(v15 + 744);
      v17 = *(v15 + 736) - *(v15 + 752);
      if (*(v15 + 784) == 1)
      {
        v18 = sub_23C4B0A6C(v15 + 704, 0);
        sub_23C4B0980((v15 + 704), 4, v18);
        if (*(v15 + 784))
        {
          v19 = sub_23C4B0A6C(v15 + 704, 0);
          sub_23C4B0980((v15 + 704), 6, v19);
        }
      }

      v20 = sub_23C4B0A6C(v15 + 704, 3);
      sub_23C4B0980((v15 + 704), 8, v20);
      sub_23C4B0A04((v15 + 704), 12, *(a1 + 32));
      v21 = sub_23C4B2F14(v15 + 704, 4);
      sub_23C4B0980((v15 + 704), 10, v21);
      v77 = sub_23C4B03D4(v15 + 704, v17 + v16);
      sub_23C4C3CEC(&v78, &v77);
    }

    if (*(a1 + 36) != -1)
    {
      v22 = a1 + *(*a1 - 24);
      *(v22 + 774) = 1;
      v23 = *(v22 + 744);
      v24 = *(v22 + 736) - *(v22 + 752);
      if (*(v22 + 784) == 1)
      {
        v25 = sub_23C4B0A6C(v22 + 704, 0);
        sub_23C4B0980((v22 + 704), 4, v25);
        if (*(v22 + 784))
        {
          v26 = sub_23C4B0A6C(v22 + 704, 0);
          sub_23C4B0980((v22 + 704), 6, v26);
        }
      }

      v27 = sub_23C4B0A6C(v22 + 704, 3);
      sub_23C4B0980((v22 + 704), 8, v27);
      sub_23C4B0A04((v22 + 704), 12, *(a1 + 36));
      v28 = sub_23C4B2F14(v22 + 704, 2);
      sub_23C4B0980((v22 + 704), 10, v28);
      v77 = sub_23C4B03D4(v22 + 704, v24 + v23);
      sub_23C4C3CEC(&v78, &v77);
    }

    v29 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, &unk_27E1F744B, 0);
    v30 = v78;
    if (v79 == v78)
    {
      v31 = &unk_27E1F744C;
    }

    else
    {
      v31 = v78;
    }

    v32 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v31, (v79 - v78) >> 2);
    v33 = a1 + *(*a1 - 24);
    *(v33 + 774) = 1;
    v34 = *(v33 + 744);
    v35 = *(v33 + 736) - *(v33 + 752);
    if (*(v33 + 784) == 1)
    {
      v36 = sub_23C4B0A6C(v33 + 704, 0);
      sub_23C4B0980((v33 + 704), 4, v36);
      if (*(v33 + 784))
      {
        v37 = sub_23C4B0A6C(v33 + 704, 0);
        sub_23C4B0980((v33 + 704), 6, v37);
        if (*(v33 + 784))
        {
          v38 = sub_23C4B0A6C(v33 + 704, 0);
          sub_23C4B0980((v33 + 704), 8, v38);
          if (*(v33 + 784))
          {
            v39 = sub_23C4B0A6C(v33 + 704, 0);
            sub_23C4B0980((v33 + 704), 10, v39);
            if (*(v33 + 784))
            {
              v40 = sub_23C4B0A6C(v33 + 704, 0);
              sub_23C4B0980((v33 + 704), 12, v40);
              if (*(v33 + 784))
              {
                v41 = sub_23C4B0A6C(v33 + 704, 0);
                sub_23C4B0980((v33 + 704), 14, v41);
              }
            }
          }
        }
      }
    }

    v42 = sub_23C4B03D4(v33 + 704, v35 + v34);
    v43 = a1 + *(*a1 - 24);
    *(v43 + 774) = 1;
    v44 = *(v43 + 744);
    v45 = *(v43 + 736) - *(v43 + 752);
    if (*(v43 + 784) == 1)
    {
      v46 = sub_23C4B0A6C(v43 + 704, 0);
      sub_23C4B0980((v43 + 704), 14, v46);
      if (*(v43 + 784))
      {
        v47 = sub_23C4B0A6C(v43 + 704, 0);
        sub_23C4B0980((v43 + 704), 12, v47);
        if (*(v43 + 784))
        {
          v48 = sub_23C4B0A6C(v43 + 704, 0);
          sub_23C4B0980((v43 + 704), 10, v48);
          if (*(v43 + 784))
          {
            v49 = sub_23C4B0A6C(v43 + 704, 0);
            sub_23C4B0980((v43 + 704), 8, v49);
            if (*(v43 + 784))
            {
              v50 = sub_23C4B0A6C(v43 + 704, 0);
              sub_23C4B0980((v43 + 704), 6, v50);
              if (*(v43 + 784))
              {
                v51 = sub_23C4B0A6C(v43 + 704, 0);
                sub_23C4B0980((v43 + 704), 4, v51);
              }
            }
          }
        }
      }
    }

    v52 = sub_23C4B03D4(v43 + 704, v45 + v44);
    v53 = a1 + *(*a1 - 24);
    *(v53 + 774) = 1;
    v54 = *(v53 + 744);
    v55 = *(v53 + 736) - *(v53 + 752);
    sub_23C4B5F88((v53 + 704), v29);
    sub_23C4C521C((v53 + 704), v32);
    v56 = sub_23C4B03D4(v53 + 704, v55 + v54);
    v57 = a1 + *(*a1 - 24);
    *(v57 + 774) = 1;
    v58 = *(v57 + 736);
    v59 = *(v57 + 752);
    v60 = *(v57 + 744);
    sub_23C4B5F88((v57 + 704), v56);
    if (*(v57 + 784) == 1)
    {
      v61 = sub_23C4B2F14(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 6, v61);
    }

    sub_23C4B2DFC((v57 + 704), 8, *(a1 + 44) != 0);
    sub_23C4B0A04((v57 + 704), 10, *(a1 + 40));
    if (*(v57 + 784) == 1)
    {
      v62 = sub_23C4B0A6C(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 12, v62);
      if (*(v57 + 784))
      {
        v63 = sub_23C4B0A6C(v57 + 704, 0);
        sub_23C4B0980((v57 + 704), 14, v63);
      }
    }

    sub_23C4B02B4((v57 + 704), 16, v42);
    sub_23C4B02B4((v57 + 704), 18, v52);
    if (*(v57 + 784) == 1)
    {
      v64 = sub_23C4B2F14(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 20, v64);
    }

    v65 = v58 - v59;
    sub_23C4B02B4((v57 + 704), 22, v73);
    if (*(v57 + 784) == 1)
    {
      v66 = sub_23C4B0A6C(v57 + 704, 0);
      sub_23C4B0980((v57 + 704), 26, v66);
    }

    v67 = sub_23C4B03D4(v57 + 704, v65 + v60);
    v68 = a1 + *(*a1 - 24);
    *(v68 + 774) = 1;
    v69 = *(v68 + 744);
    v70 = *(v68 + 736) - *(v68 + 752);
    sub_23C4B5F88((v68 + 704), v75);
    sub_23C4C521C((v68 + 704), v67);
    v71 = a1 + *(*a1 - 24);
    v72 = sub_23C4B03D4(v68 + 704, v70 + v69);
    sub_23C4B1AD8(v71 + 704, v72);
    if (v30)
    {
      operator delete(v30);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v76;
  }

  return result;
}

void sub_23C4C64E8(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  sub_23C49F8D0(v22, "AGCTABlitState");
  sub_23C49F8D0(v20, "blitType");
  sub_23C4B705C(&v24, v20, off_278BBF580[*v3 & 7]);
  sub_23C49F8D0(v18, "primitiveSizePOT");
  sub_23C4B7004(&v25, v18, (*v3 >> 8) & 7);
  sub_23C49F8D0(v16, "primitiveCount");
  sub_23C4B7004(&v26, v16, (*v3 >> 11));
  sub_23C49F8D0(v14, "loopCount");
  sub_23C4B7004(&v27, v14, (*v3 >> 19) & 0xF);
  sub_23C49F8D0(v12, "sampleCountPOT");
  sub_23C4B7004(&v28, v12, (*v3 >> 23) & 3);
  sub_23C49F8D0(v10, "regionOffset");
  sub_23C4B7004(&v29, v10, (*v3 >> 25) & 1);
  sub_23C49F8D0(v8, "blitTextureFormat");
  sub_23C4B7004(&v30, v8, *v3 >> 3);
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v31, __p, (*v3 >> 27) & 0xF);
  sub_23C4B70B4(a2, v22, &v24, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v31.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v31.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23C4C6764(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 48);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C67F8(uint64_t a1)
{
  sub_23C4B130C(a1 + 48);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C4C688C(void *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = a1 + *(*a1 - 24);
    if (*(*(v3 + 43) + 1672) == 1)
    {
      v18 = 0x8000000000008000;
      sub_23C4B2C10(&v18, (v3 + 704));
      operator new();
    }

    v4 = sub_23C4B1878(a1 + *(*a1 - 24));
    v5 = v4;
    v7 = v6;
    if (*(*(a1 + *(*a1 - 24) + 344) + 1672) == 1)
    {
      sub_23C4C6A98(v4, 0);
    }

    v8 = sub_23C4B03D4(v5, v7);
    v9 = sub_23C510F9C(a1 + 2);
    v11 = sub_23C4B03D4(v9, v10);
    v12 = a1 + *(*a1 - 24);
    v12[774] = 1;
    v13 = *(v12 + 186);
    v14 = *(v12 + 184) - *(v12 + 188);
    sub_23C4B5F88(v12 + 88, v8);
    sub_23C4B5FF0(v12 + 88, v11);
    v15 = a1 + *(*a1 - 24);
    v16 = sub_23C4B03D4((v12 + 704), v14 + v13);
    sub_23C4B1AD8((v15 + 704), v16);
  }

  return v2;
}

uint64_t *sub_23C4C6A98(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return sub_23C4B0A04(v3, 10, v4);
  }

  return result;
}

void sub_23C4C6B1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23C4C6CD8(&v8, *(a1 + 544));
  v4 = *(a1 + 584);
  sub_23C49F8D0(v17, "AGCColorMaskState");
  sub_23C49F8D0(v15, "redEnableBits");
  sub_23C4B7424(&v19, v15, *v4);
  sub_23C49F8D0(v13, "greenEnableBits");
  sub_23C4B7424(&v20, v13, v4[1]);
  sub_23C49F8D0(v11, "blueEnableBits");
  sub_23C4B7424(&v21, v11, v4[2]);
  sub_23C49F8D0(__p, "alphaEnableBits");
  sub_23C4B7424(&v22, __p, v4[3]);
  sub_23C4B70B4(&v7, v17, &v19, 4);
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v22.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v22.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  sub_23C4B7AC8(a2, &v8.__r_.__value_.__l.__data_, &v7.__r_.__value_.__l.__data_);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C4C6CD8(std::string *a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v45, "AGCDrawBufferState");
  sub_23C49F8D0(v43, "enabledBits");
  sub_23C4B7424(&v55, v43, *(a2 + 32));
  sub_23C49F8D0(v41, "sampleCount");
  sub_23C4B7004(&v56, v41, (*(a2 + 32) >> 8) & 0xF);
  sub_23C49F8D0(v39, "colorSampleCount");
  sub_23C4B7004(&v57, v39, *(a2 + 32) >> 12);
  sub_23C49F8D0(v37, "outputPartitionSize");
  sub_23C4B7004(&v58, v37, *(a2 + 34));
  sub_23C49F8D0(v35, "LIBSpilling");
  sub_23C4B7004(&v59, v35, HIBYTE(*(a2 + 32)) & 1);
  sub_23C49F8D0(v33, "unused");
  sub_23C4B7004(&v60, v33, *(a2 + 32) >> 25);
  sub_23C49F8D0(v31, "encoded : ");
  sub_23C49F8D0(v29, "encoded[0]");
  sub_23C4C718C(&v28, a2);
  sub_23C4B733C(&v47, v29, &v28);
  sub_23C49F8D0(v26, "encoded[1]");
  sub_23C4C718C(&v25, (a2 + 4));
  sub_23C4B733C(&v48, v26, &v25);
  sub_23C49F8D0(v23, "encoded[2]");
  sub_23C4C718C(&v22, (a2 + 8));
  sub_23C4B733C(&v49, v23, &v22);
  sub_23C49F8D0(v20, "encoded[3]");
  sub_23C4C718C(&v19, (a2 + 12));
  sub_23C4B733C(&v50, v20, &v19);
  sub_23C49F8D0(v17, "encoded[4]");
  sub_23C4C718C(&v16, (a2 + 16));
  sub_23C4B733C(&v51, v17, &v16);
  sub_23C49F8D0(v14, "encoded[5]");
  sub_23C4C718C(&v13, (a2 + 20));
  sub_23C4B733C(&v52, v14, &v13);
  sub_23C49F8D0(v11, "encoded[6]");
  sub_23C4C718C(&v10, (a2 + 24));
  sub_23C4B733C(&v53, v11, &v10);
  sub_23C49F8D0(v8, "encoded[7]");
  sub_23C4C718C(&__p, (a2 + 28));
  sub_23C4B733C(&v54, v8, &__p);
  sub_23C4B70B4(&v61, v31, &v47, 8);
  sub_23C4B70B4(a1, v45, &v55, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v61.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v61.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  for (j = 0; j != -24; j -= 3)
  {
    if (SHIBYTE(v54.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v54.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C4C718C(std::string *a1, _DWORD *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v20, "AGCDrawBuffer");
  sub_23C49F8D0(v18, "pbeSourceFormat");
  sub_23C4B705C(&v22, v18, off_278BBF5B8[*a2 & 0x1F]);
  sub_23C49F8D0(v16, "numWrittenComponents");
  sub_23C4B7004(&v23, v16, *a2 >> 5);
  sub_23C49F8D0(v14, "gammaCorrection");
  sub_23C4B7004(&v24, v14, (*a2 >> 8) & 1);
  sub_23C49F8D0(v12, "colorSpaceConversion");
  sub_23C4B705C(&v25, v12, off_278BBF670[(*a2 >> 9) & 7]);
  sub_23C49F8D0(v10, "preEmitSwizzle");
  sub_23C4B705C(&v26, v10, off_278BBF698[(*a2 >> 12) & 7]);
  sub_23C49F8D0(v8, "outputPartitionOffset");
  sub_23C4B7004(&v27, v8, (*a2 >> 15));
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v28, __p, *a2 >> 23);
  sub_23C4B70B4(a1, v20, &v22, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v28.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v28.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23C4C73EC(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 592);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C746C(uint64_t a1)
{
  sub_23C4B130C(a1 + 576);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C74D4(uint64_t a1)
{
  sub_23C4B130C(a1 + 592);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C7580(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_23C4C6CD8(&v8, *(a1 + 544));
  v4 = *(a1 + 584);
  sub_23C49F8D0(v13, "AGCBackgroundObjectState");
  sub_23C49F8D0(v11, "dimensionBits");
  std::to_string(&v15, *v4);
  sub_23C4B733C(&v16, v11, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v15, "arrayBits");
  sub_23C4C7728(&v17, &v15.__r_.__value_.__l.__data_, v4[1]);
  sub_23C49F8D0(__p, "clearedBits");
  sub_23C4C7728(&v18, __p, *(v4 + 3));
  sub_23C4B70B4(&v7, v13, &v16, 3);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v18.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v18.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  sub_23C4B7AC8(a2, &v8.__r_.__value_.__l.__data_, &v7.__r_.__value_.__l.__data_);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C4C7728(std::string *a1, const void **a2, unsigned __int8 a3)
{
  std::to_string(&v5, a3);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4C7794(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 592);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C7814(uint64_t a1)
{
  sub_23C4B130C(a1 + 576);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C787C(uint64_t a1)
{
  sub_23C4B130C(a1 + 592);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C4C7910(uint64_t *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v5 = sub_23C4B03D4(v3, v4);
    v6 = a1 + *(*a1 - 24);
    *(v6 + 774) = 1;
    v7 = *(v6 + 744);
    v8 = *(v6 + 736) - *(v6 + 752);
    sub_23C4B5F88((v6 + 704), v5);
    v9 = a1 + *(*a1 - 24);
    v10 = sub_23C4B03D4(v6 + 704, v8 + v7);
    sub_23C4B1AD8(v9 + 704, v10);
    if (*(a1 + 25) == 1)
    {
      v11 = a1 + *(*a1 - 24);
      *(v11 + 966) = 1;
      v12 = *(v11 + 936);
      v13 = *(v11 + 928) - *(v11 + 944);
      v14 = sub_23C4B2F14(v11 + 896, 1);
      sub_23C4B0980((v11 + 896), 4, v14);
      if (*(v11 + 976) == 1)
      {
        v15 = sub_23C4B2F14(v11 + 896, 0);
        sub_23C4B0980((v11 + 896), 6, v15);
        if (*(v11 + 976))
        {
          v16 = sub_23C4B0A6C(v11 + 896, 0);
          sub_23C4B0980((v11 + 896), 8, v16);
          if (*(v11 + 976))
          {
            v17 = sub_23C4B0A6C(v11 + 896, 0);
            sub_23C4B0980((v11 + 896), 10, v17);
          }
        }
      }

      v18 = sub_23C4B03D4(v11 + 896, v13 + v12);
      v19 = *a1;
      v20 = a1 + *(*a1 - 24);
      *(v20 + 966) = 1;
      v21 = *(v20 + 936);
      v22 = *(v20 + 928) - *(v20 + 944);
      if (v18)
      {
        v23 = v18;
        sub_23C4B08D8(v20 + 896, 4uLL);
        sub_23C4B0A04((v20 + 896), 8, *(v20 + 928) - *(v20 + 944) + *(v20 + 936) - v23 + 4);
        v19 = *a1;
      }

      v24 = a1 + *(v19 - 24);
      v25 = sub_23C4B03D4(v20 + 896, v22 + v21);
      sub_23C4B1AD8(v24 + 896, v25);
    }
  }

  return v2;
}

void sub_23C4C7B94(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v101 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  sub_23C49F8D0(v74, "AGCEndOfTileState");
  sub_23C49F8D0(v72, "emitMask");
  sub_23C4B7424(&v93, v72, *(v3 + 72));
  sub_23C49F8D0(v70, "conditionalMask");
  sub_23C4B7424(&v94, v70, *(v3 + 74));
  sub_23C49F8D0(v68, "sampleCount");
  sub_23C4C8324(&v95, v68, *(v3 + 76) & 0xFLL);
  sub_23C49F8D0(v66, "outputPartitionSize");
  sub_23C4C8324(&v96, v66, (*(v3 + 72) >> 36) & 0x7FLL);
  sub_23C49F8D0(v64, "numEmits");
  sub_23C4C8324(&v97, v64, (*(v3 + 72) >> 43) & 0x1FLL);
  sub_23C49F8D0(v62, "dummyEmitIndex");
  sub_23C4C8324(&v98, v62, *(v3 + 78) & 0x1FLL);
  sub_23C49F8D0(v60, "unused");
  sub_23C4C8324(&v99, v60, *(v3 + 72) >> 54);
  sub_23C49F8D0(v58, "encoded : ");
  sub_23C49F8D0(v56, "encoded[0]");
  sub_23C4C837C(&v55, v3);
  sub_23C4B733C(&v76, v56, &v55);
  sub_23C49F8D0(v53, "encoded[1]");
  sub_23C4C837C(&v52, (v3 + 4));
  sub_23C4B733C(&v77, v53, &v52);
  sub_23C49F8D0(v50, "encoded[2]");
  sub_23C4C837C(&v49, (v3 + 8));
  sub_23C4B733C(&v78, v50, &v49);
  sub_23C49F8D0(v47, "encoded[3]");
  sub_23C4C837C(&v46, (v3 + 12));
  sub_23C4B733C(&v79, v47, &v46);
  sub_23C49F8D0(v44, "encoded[4]");
  sub_23C4C837C(&v43, (v3 + 16));
  sub_23C4B733C(&v80, v44, &v43);
  sub_23C49F8D0(v41, "encoded[5]");
  sub_23C4C837C(&v40, (v3 + 20));
  sub_23C4B733C(&v81, v41, &v40);
  sub_23C49F8D0(v38, "encoded[6]");
  sub_23C4C837C(&v37, (v3 + 24));
  sub_23C4B733C(&v82, v38, &v37);
  sub_23C49F8D0(v35, "encoded[7]");
  sub_23C4C837C(&v34, (v3 + 28));
  sub_23C4B733C(&v83, v35, &v34);
  sub_23C49F8D0(v32, "encoded[8]");
  sub_23C4C837C(&v31, (v3 + 32));
  sub_23C4B733C(&v84, v32, &v31);
  sub_23C49F8D0(v29, "encoded[9]");
  sub_23C4C837C(&v28, (v3 + 36));
  sub_23C4B733C(&v85, v29, &v28);
  sub_23C49F8D0(v26, "encoded[10]");
  sub_23C4C837C(&v25, (v3 + 40));
  sub_23C4B733C(&v86, v26, &v25);
  sub_23C49F8D0(v23, "encoded[11]");
  sub_23C4C837C(&v22, (v3 + 44));
  sub_23C4B733C(&v87, v23, &v22);
  sub_23C49F8D0(v20, "encoded[12]");
  sub_23C4C837C(&v19, (v3 + 48));
  sub_23C4B733C(&v88, v20, &v19);
  sub_23C49F8D0(v17, "encoded[13]");
  sub_23C4C837C(&v16, (v3 + 52));
  sub_23C4B733C(&v89, v17, &v16);
  sub_23C49F8D0(v14, "encoded[14]");
  sub_23C4C837C(&v13, (v3 + 56));
  sub_23C4B733C(&v90, v14, &v13);
  sub_23C49F8D0(v11, "encoded[15]");
  sub_23C4C837C(&v10, (v3 + 60));
  sub_23C4B733C(&v91, v11, &v10);
  sub_23C49F8D0(v8, "encoded[16]");
  sub_23C4C837C(&__p, (v3 + 64));
  sub_23C4B733C(&v92, v8, &__p);
  sub_23C4B70B4(&v100, v58, &v76, 17);
  sub_23C4B70B4(a2, v74, &v93, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v100.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v100.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  v5 = 51;
  do
  {
    if (v76.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v74[v5]);
    }

    v5 -= 3;
  }

  while (v5 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (v67 < 0)
  {
    operator delete(v66[0]);
  }

  if (v69 < 0)
  {
    operator delete(v68[0]);
  }

  if (v71 < 0)
  {
    operator delete(v70[0]);
  }

  if (v73 < 0)
  {
    operator delete(v72[0]);
  }

  if (v75 < 0)
  {
    operator delete(v74[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C4C8324(std::string *a1, const void **a2, unint64_t __val)
{
  std::to_string(&v5, __val);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4C837C(std::string *a1, unsigned __int8 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v16, "AGCEmitState");
  sub_23C49F8D0(v14, "slotIndex");
  sub_23C4B7004(&v18, v14, *a2);
  sub_23C49F8D0(v12, "channelFormat");
  sub_23C4B7004(&v19, v12, a2[1]);
  sub_23C49F8D0(v10, "dimension");
  sub_23C4B7004(&v20, v10, a2[2]);
  sub_23C49F8D0(v8, "gammaCorrection");
  sub_23C4B7004(&v21, v8, HIBYTE(*a2) & 1);
  sub_23C49F8D0(__p, "sparse");
  sub_23C4B7004(&v22, __p, (*a2 >> 25) & 1);
  sub_23C4B70B4(a1, v16, &v18, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v22.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v22.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

const char *sub_23C4C8538(void *a1)
{
  if ((*(*(a1 + *(*a1 - 40) + 16) + 78) & 0x20) != 0)
  {
    return "sw_eot";
  }

  else
  {
    return "eot";
  }
}

void sub_23C4C8574(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 32);

  JUMPOUT(0x23EED50C0);
}

const char *sub_23C4C85FC(uint64_t a1)
{
  if ((*(*(a1 + 16) + 78) & 0x20) != 0)
  {
    return "sw_eot";
  }

  else
  {
    return "eot";
  }
}

void sub_23C4C8620(uint64_t a1)
{
  sub_23C4B130C(a1 + 32);

  JUMPOUT(0x23EED50C0);
}

BOOL sub_23C4C86C4(void *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C4B1878(a1 + *(*a1 - 24));
    v5 = sub_23C4B03D4(v3, v4);
    v6 = a1 + *(*a1 - 24);
    v6[774] = 1;
    v7 = *(v6 + 186);
    v8 = *(v6 + 184) - *(v6 + 188);
    sub_23C4B5F88(v6 + 88, v5);
    v9 = a1 + *(*a1 - 24);
    v10 = sub_23C4B03D4((v6 + 704), v8 + v7);
    sub_23C4B1AD8((v9 + 704), v10);
  }

  return v2;
}

uint64_t sub_23C4C87DC(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  if (sub_23C4B00BC(v2))
  {
    v3 = (*(*a1 + 16))(a1);
    v27 = *(a1 + *(*a1 - 24) + 696);
    sub_23C4AA240(v3, "------ Start compilation key description for %s shader %u  ------", v4, v5, v6, v7, v8, v9, v3);
    v10 = (*(*a1 + 40))(__p, a1);
    if (v30 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    sub_23C4AA240(v10, v17, v11, v12, v13, v14, v15, v16, v26);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v18 = (*(*a1 + 16))(a1);
    v28 = *(a1 + *(*a1 - 24) + 696);
    sub_23C4AA240(v18, "------ End compilation key description for %s shader %u  ------", v19, v20, v21, v22, v23, v24, v18);
  }

  result = sub_23C4AF8FC(*(a1 + *(*a1 - 24) + 400), (a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 320), 1, 2);
  if (result)
  {
    result = (*(*a1 + 8))(a1);
    if (result)
    {
      sub_23C4C420C(a1 + *(*a1 - 24));
      return 1;
    }
  }

  return result;
}

void sub_23C4C89C0(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 8);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C8A40(uint64_t a1)
{
  sub_23C4B130C(a1 + 8);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C8B08(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  sub_23C4C6CD8(&v13, *(a1 + 544));
  v4 = *(a1 + 584);
  if (v4)
  {
    sub_23C49F8D0(&v30, "AGC3DBlitState");
    sub_23C49F8D0(v28, "blitType");
    sub_23C4B705C(&v31, v28, off_278BBF6C8[*v4 & 7]);
    sub_23C49F8D0(v26, "readBufferSampleCount");
    sub_23C4B7004(&v32, v26, (*v4 >> 3) & 0xF);
    sub_23C49F8D0(v24, "sample3D");
    sub_23C4B7004(&v33, v24, (*v4 >> 7) & 1);
    sub_23C49F8D0(v22, "regionOffset");
    sub_23C4B7004(&v34, v22, (*v4 >> 8) & 1);
    sub_23C49F8D0(v20, "remapAddress");
    sub_23C4B7004(&v35, v20, (*v4 >> 9) & 1);
    sub_23C49F8D0(v18, "remapAddressPOT");
    sub_23C4B7004(&v36, v18, (*v4 >> 10) & 1);
    sub_23C49F8D0(v16, "strideDiscard");
    sub_23C4B7004(&v37, v16, (*v4 >> 11) & 1);
    sub_23C49F8D0(__p, "blitTextureFormat");
    sub_23C4B7004(&v38, __p, (*v4 >> 12) & 0x1F);
    sub_23C4B70B4(&v12, &v30, &v31, 8);
    for (i = 0; i != -24; i -= 3)
    {
      if (SHIBYTE(v38.__r_.__value_.__r.__words[i + 2]) < 0)
      {
        operator delete(*(&v38.__r_.__value_.__l.__data_ + i * 8));
      }
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (v29 < 0)
    {
      operator delete(v28[0]);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_23C49F8D0(&v12, &unk_23C53F34D);
  }

  sub_23C4B7AC8(&v30, &v13.__r_.__value_.__l.__data_, &v12.__r_.__value_.__l.__data_);
  v6 = std::string::append(&v30, "\ntoken type : ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 592);
  if ((atomic_load_explicit(&qword_27E1F7098, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7098))
  {
    sub_23C49F8D0(byte_27E1F6A20, "AGCStreamTokenUnknownShader");
    sub_23C49F8D0(&byte_27E1F6A20[24], "AGCStreamTokenGLSLVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[48], "AGCStreamTokenGLSLFragmentShader");
    sub_23C49F8D0(&byte_27E1F6A20[72], "AGCStreamTokenMetalVertexProgram");
    sub_23C49F8D0(&byte_27E1F6A20[96], "AGCStreamTokenMetalFragmentProgram");
    sub_23C49F8D0(&byte_27E1F6A20[120], "AGCStreamTokenMetalTileProgram");
    sub_23C49F8D0(&byte_27E1F6A20[144], "AGCStreamTokenMetalComputeProgram");
    sub_23C49F8D0(&byte_27E1F6A20[168], "AGCStreamTokenClearFragmentShader");
    sub_23C49F8D0(&byte_27E1F6A20[192], "AGCStreamTokenResolveFragmentShaderGL");
    sub_23C49F8D0(&byte_27E1F6A20[216], "AGCStreamTokenBackgroundObjectFragmentShader");
    sub_23C49F8D0(&byte_27E1F6A20[240], "AGCStreamToken3DBlitFragmentShader");
    sub_23C49F8D0(&byte_27E1F6A20[264], "AGCStreamTokenTABlitVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[288], "AGCStreamTokenBlitComputeShader");
    sub_23C49F8D0(&byte_27E1F6A20[312], "AGCStreamTokenBlitSparseShader");
    sub_23C49F8D0(&byte_27E1F6A20[336], "AGCStreamTokenEndOfTileProgram");
    sub_23C49F8D0(&byte_27E1F6A20[360], "AGCStreamTokenExecuteIndirectESLGenerationVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[384], "AGCStreamTokenExecuteIndirectRangeExecutionVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[408], "AGCStreamTokenExecuteIndirectRangeExecutionComputeShader");
    sub_23C49F8D0(&byte_27E1F6A20[432], "AGCStreamTokenExecuteIndirectCDMPatchUpShader");
    sub_23C49F8D0(&byte_27E1F6A20[456], "AGCStreamTokenVisibilityVertexClearShader");
    sub_23C49F8D0(&byte_27E1F6A20[480], "AGCStreamTokenTileDispatchVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[504], "AGCStreamTokenClearVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[528], "AGCStreamTokenResolveVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[552], "AGCStreamTokenBlitVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[576], "AGCStreamTokenVDMStateSyncProgram");
    sub_23C49F8D0(&byte_27E1F6A20[600], "AGCStreamTokenContextSaveProgram");
    sub_23C49F8D0(&byte_27E1F6A20[624], "AGCStreamTokenContextRestoreProgram");
    sub_23C49F8D0(&byte_27E1F6A20[648], "AGCStreamTokenToggledContextSaveProgram");
    sub_23C49F8D0(&byte_27E1F6A20[672], "AGCStreamTokenToggledContextRestoreProgram");
    sub_23C49F8D0(&byte_27E1F6A20[696], "AGCStreamTokenComputeFlushProgram");
    sub_23C49F8D0(&byte_27E1F6A20[720], "AGCStreamTokenComputeFlushProgramWithFWInterrupt");
    sub_23C49F8D0(&byte_27E1F6A20[744], "AGCStreamTokenComputeFenceProgram");
    sub_23C49F8D0(&byte_27E1F6A20[768], "AGCStreamTokenComputeTGSizeOptimizationProgram");
    sub_23C49F8D0(&byte_27E1F6A20[792], "AGCStreamTokenSwTessellationNonBucketedEmitDrawCommandsVSProgram");
    sub_23C49F8D0(&byte_27E1F6A20[816], "AGCStreamTokenSwTessellationBucketedComputeInstanceCountsVSProgram");
    sub_23C49F8D0(&byte_27E1F6A20[840], "AGCStreamTokenSwTessellationBucketedSumInstanceCountsVSProgram");
    sub_23C49F8D0(&byte_27E1F6A20[864], "AGCStreamTokenSwTessellationBucketedEmitDrawCommandsVSProgram");
    sub_23C49F8D0(&byte_27E1F6A20[888], "AGCStreamTokenVDMNOPDBGProgram");
    sub_23C49F8D0(&byte_27E1F6A20[912], "AGCStreamTokenSwTessellationBucketedClearInstanceCountsProgram");
    sub_23C49F8D0(&byte_27E1F6A20[936], "AGCStreamTokenUtilityProgram");
    sub_23C49F8D0(&byte_27E1F6A20[960], "AGCStreamTokenNumGfxShaders");
    sub_23C49F8D0(&byte_27E1F6A20[984], "AGCStreamTokenBitCodeGLIR");
    sub_23C49F8D0(&byte_27E1F6A20[1008], "AGCStreamTokenVertexContextStateGL");
    sub_23C49F8D0(&byte_27E1F6A20[1032], "AGCStreamTokenFragmentContextStateGL");
    sub_23C49F8D0(&byte_27E1F6A20[1056], "AGCStreamTokenVertexContextStateAGP");
    sub_23C49F8D0(&byte_27E1F6A20[1080], "AGCStreamTokenFragmentContextStateAGP");
    sub_23C49F8D0(&byte_27E1F6A20[1104], "AGCStreamTokenSamplerRemapState");
    sub_23C49F8D0(&byte_27E1F6A20[1128], "AGCStreamTokenSamplerPCFState");
    sub_23C49F8D0(&byte_27E1F6A20[1152], "AGCStreamTokenDrawBufferState");
    sub_23C49F8D0(&byte_27E1F6A20[1176], "AGCStreamTokenTileState");
    sub_23C49F8D0(&byte_27E1F6A20[1200], "AGCStreamTokenBackgroundObjectState");
    sub_23C49F8D0(&byte_27E1F6A20[1224], "AGCStreamTokenEndOfTileState");
    sub_23C49F8D0(&byte_27E1F6A20[1248], "AGCStreamToken3DBlitState");
    sub_23C49F8D0(&byte_27E1F6A20[1272], "AGCStreamTokenTABlitState");
    sub_23C49F8D0(&byte_27E1F6A20[1296], "AGCStreamTokenCDMBlitState");
    sub_23C49F8D0(&byte_27E1F6A20[1320], "AGCStreamTokenBlitSparseState");
    sub_23C49F8D0(&byte_27E1F6A20[1344], "AGCStreamTokenVaryingSemantics");
    sub_23C49F8D0(&byte_27E1F6A20[1368], "AGCStreamTokenVaryingTypes");
    sub_23C49F8D0(&byte_27E1F6A20[1392], "AGCStreamTokenClearFragmentColorMaskState");
    sub_23C49F8D0(&byte_27E1F6A20[1416], "AGCStreamTokenComputeContextStateAGP");
    sub_23C49F8D0(&byte_27E1F6A20[1440], "AGCStreamTokenTexUnitBiasState");
    sub_23C49F8D0(&byte_27E1F6A20[1464], "AGCStreamTokenTessellationDriverState");
    sub_23C49F8D0(&byte_27E1F6A20[1488], "AGCStreamTokenExecuteIndirectDriverState");
    sub_23C49F8D0(&byte_27E1F6A20[1512], "AGCStreamTokenGPUGatherVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[1536], "AGCStreamTokenGPUGatherComputeShader");
    sub_23C49F8D0(&byte_27E1F6A20[1560], "AGCStreamTokenPDSPatchUpVertexShader");
    sub_23C49F8D0(&byte_27E1F6A20[1584], "AGCStreamTokenPDSPatchUpComputeShader");
    sub_23C49F8D0(&byte_27E1F6A20[1608], "ACGStreamTokenArch");
    sub_23C49F8D0(&byte_27E1F6A20[1632], "AGCStreamTokenEnd");
    __cxa_atexit(sub_23C4C9530, byte_27E1F6A20, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F7098);
  }

  v9 = &byte_27E1F6A20[24 * v8];
  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  v10 = std::string::append(&v31, v9);
  *a2 = *v10;
  v10->__r_.__value_.__r.__words[0] = 0;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4C9530(uint64_t a1)
{
  v2 = 1656;
  do
  {
    if (*(a1 + v2 - 1) < 0)
    {
      operator delete(*(a1 + v2 - 24));
    }

    v2 -= 24;
  }

  while (v2);
  return a1;
}

const char *sub_23C4C957C(void *a1)
{
  v1 = *(a1 + *(*a1 - 40) + 592);
  v2 = "texture fetch";
  if (v1 == 10)
  {
    v2 = "blit3D";
  }

  if (v1 == 8)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void sub_23C4C95C4(void *a1)
{
  sub_23C4B130C(a1 + *(*a1 - 32) + 600);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C9644(uint64_t a1)
{
  sub_23C4B130C(a1 + 584);

  JUMPOUT(0x23EED50C0);
}

const char *sub_23C4C96A0(uint64_t a1)
{
  v1 = *(a1 + 592);
  v2 = "texture fetch";
  if (v1 == 10)
  {
    v2 = "blit3D";
  }

  if (v1 == 8)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void sub_23C4C96D0(uint64_t a1)
{
  sub_23C4B130C(a1 + 600);

  JUMPOUT(0x23EED50C0);
}

void sub_23C4C9748(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[1];
  *(a1 + 8) = 0;
  operator new();
}

uint64_t sub_23C4C99DC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = llvm::User::operator new(0x58);
  v7 = (a1 + *(*a1 - 24));
  v8 = v7[40];
  v9 = v7[24];
  v21[0] = "agc.region_offsets";
  v22 = 259;
  v20 = *(v7[43] + 836) | 0x100000000;
  v10 = llvm::GlobalVariable::GlobalVariable();
  *(v10 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  sub_23C506A1C((a1 + *(*a1 - 24)));
  v11 = (a1 + *(*a1 - 24));
  v22 = 257;
  v12 = sub_23C497C88(v11 + 1, **(*v6 + 16), v6, 0, v21);
  v13 = a1 + *(*a1 - 24);
  v14 = *(v13 + 24);
  v15 = llvm::ConstantInt::get();
  v22 = 257;
  *a2 = sub_23C49A8E0((v13 + 8), v12, v15, v21);
  v16 = a1 + *(*a1 - 24);
  v22 = 257;
  v17 = *v12;
  v18 = llvm::ConstantInt::get();
  result = sub_23C49B560((v16 + 8), v12, v18, v21);
  *a3 = result;
  return result;
}

uint64_t sub_23C4C9BA0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v123 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    v7 = *(a4 + 32);
  }

  else
  {
    v7 = 1;
  }

  if (a2 <= 14)
  {
    if (a2 > 12)
    {
      if (a2 == 13)
      {
        v39 = *(a1 + *(*a1 - 24) + 192);
        v118 = llvm::ConstantInt::get();
        v40 = *(a1 + *(*a1 - 24) + 192);
        v119 = llvm::ConstantInt::get();
        v41 = *(a1 + *(*a1 - 24) + 192);
        v120 = llvm::ConstantInt::get();
        v42 = *(a1 + *(*a1 - 24) + 192);
        v121 = llvm::ConstantInt::get();
        v43 = a1 + *(*a1 - 24);
        v44 = llvm::ConstantVector::get();
        v117 = 257;
        v45 = sub_23C49A3AC((v43 + 8), a3, a3, v44, v116);
        v46 = a1 + *(*a1 - 24);
        v47 = *(v46 + 43);
        v110 = *(v46 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v111, (v46 + 8));
        v112 = *(v46 + 26);
        v17 = (*(*v47 + 96))(v47, &v110, 1, v4, v45, 1, 0);
        if (!v111)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v26 = *(a1 + *(*a1 - 24) + 192);
        v118 = llvm::ConstantInt::get();
        v27 = *(a1 + *(*a1 - 24) + 192);
        v119 = llvm::ConstantInt::get();
        v28 = *(a1 + *(*a1 - 24) + 192);
        v120 = llvm::ConstantInt::get();
        v29 = *(a1 + *(*a1 - 24) + 192);
        v121 = llvm::ConstantInt::get();
        v30 = a1 + *(*a1 - 24);
        v31 = llvm::ConstantVector::get();
        v117 = 257;
        v32 = sub_23C49A3AC((v30 + 8), a3, a3, v31, v116);
        v33 = a1 + *(*a1 - 24);
        v34 = *(v33 + 43);
        v107 = *(v33 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v108, (v33 + 8));
        v109 = *(v33 + 26);
        v17 = (*(*v34 + 96))(v34, &v107, 2, v4, v32, 1, 0);
        if (!v108)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_29;
    }

    if (a2 == 11)
    {
      v37 = a1 + *(*a1 - 24);
      v38 = *(v37 + 43);
      v101 = *(v37 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v102, (v37 + 8));
      v103 = *(v37 + 26);
      v17 = (*(*v38 + 96))(v38, &v101, 6, v4, a3, 0, 0);
      if (!v102)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    if (a2 == 12)
    {
      v18 = *(a1 + *(*a1 - 24) + 192);
      v118 = llvm::ConstantInt::get();
      v19 = *(a1 + *(*a1 - 24) + 192);
      v119 = llvm::ConstantInt::get();
      v20 = *(a1 + *(*a1 - 24) + 192);
      v120 = llvm::ConstantInt::get();
      v21 = a1 + *(*a1 - 24);
      v22 = llvm::ConstantVector::get();
      v117 = 257;
      v23 = sub_23C49A3AC((v21 + 8), a3, a3, v22, v116);
      v24 = a1 + *(*a1 - 24);
      v25 = *(v24 + 43);
      v113 = *(v24 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v114, (v24 + 8));
      v115 = *(v24 + 26);
      v17 = (*(*v25 + 96))(v25, &v113, 0, v4, v23, 1, 0);
      if (!v114)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (a2 > 16)
  {
    switch(a2)
    {
      case 17:
        v48 = a1 + *(*a1 - 24);
        v49 = *(v48 + 43);
        v95 = *(v48 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v96, (v48 + 8));
        v97 = *(v48 + 26);
        v17 = (*(*v49 + 96))(v49, &v95, 8, v4, a3, 0, 0);
        if (!v96)
        {
          goto LABEL_39;
        }

        goto LABEL_29;
      case 18:
        v59 = *(a1 + *(*a1 - 24) + 160);
        v60 = llvm::ConstantFP::get();
        v61 = a1 + *(*a1 - 24);
        v117 = 257;
        v62 = *(v61 + 24);
        v63 = llvm::ConstantInt::get();
        v64 = sub_23C5057E8((v61 + 8), a3, v63, v116);
        v65 = a1 + *(*a1 - 24);
        v66 = *(v65 + 20);
        v117 = 257;
        v67 = sub_23C49ACF8((v65 + 8), 49, v64, v66, v116);
        v122 = 257;
        v68 = sub_23C49EA2C((v65 + 8), v67, v60, &v118);
        v69 = *(a1 + *(*a1 - 24) + 192);
        v94 = 257;
        v70 = sub_23C49B2C8((v65 + 8), v68, v69, v93);
        goto LABEL_38;
      case 19:
        v8 = *(a1 + *(*a1 - 24) + 192);
        v118 = llvm::ConstantInt::get();
        v9 = *(a1 + *(*a1 - 24) + 192);
        v119 = llvm::ConstantInt::get();
        v10 = *(a1 + *(*a1 - 24) + 192);
        v120 = llvm::ConstantInt::get();
        v11 = *(a1 + *(*a1 - 24) + 192);
        v121 = llvm::ConstantInt::get();
        v12 = a1 + *(*a1 - 24);
        v13 = llvm::ConstantVector::get();
        v117 = 257;
        v14 = sub_23C49A3AC((v12 + 8), a3, a3, v13, v116);
        v15 = a1 + *(*a1 - 24);
        v16 = *(v15 + 43);
        v90 = *(v15 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v91, (v15 + 8));
        v92 = *(v15 + 26);
        v17 = (*(*v16 + 120))(v16, &v90, v14);
        if (v91)
        {
          goto LABEL_29;
        }

        goto LABEL_39;
    }

LABEL_31:
    if (v7 == 4)
    {
      v77 = a1 + *(*a1 - 24);
      v117 = 257;
      v75 = (v77 + 8);
      v76 = v116;
      v74 = a3;
    }

    else
    {
      if (v7 != 1)
      {
        v17 = llvm::UndefValue::get();
        if (v7)
        {
          v80 = 0;
          v81 = v7;
          do
          {
            v82 = a1 + *(*a1 - 24);
            v117 = 257;
            v83 = *(v82 + 24);
            v84 = llvm::ConstantInt::get();
            v85 = sub_23C5057E8((v82 + 8), a3, v84, v116);
            v86 = v4;
            if ((*(v4 + 8) & 0xFE) == 0x12)
            {
              v86 = **(v4 + 16);
            }

            v122 = 257;
            v87 = sub_23C49B1E4((v82 + 8), v85, v86, 0, &v118);
            v94 = 257;
            v88 = *(v82 + 24);
            v89 = llvm::ConstantInt::get();
            v17 = sub_23C505AA8((v82 + 8), v17, v87, v89, v93);
            ++v80;
          }

          while (v81 != v80);
        }

        goto LABEL_39;
      }

      v71 = a1 + *(*a1 - 24);
      v117 = 257;
      v72 = *(v71 + 24);
      v73 = llvm::ConstantInt::get();
      v74 = sub_23C5057E8((v71 + 8), a3, v73, v116);
      if ((*(v4 + 8) & 0xFE) == 0x12)
      {
        v4 = **(v4 + 16);
      }

      v122 = 257;
      v75 = (v71 + 8);
      v76 = &v118;
    }

    v70 = sub_23C49B1E4(v75, v74, v4, 0, v76);
LABEL_38:
    v17 = v70;
    goto LABEL_39;
  }

  if (a2 != 15)
  {
    v35 = a1 + *(*a1 - 24);
    v36 = *(v35 + 43);
    v98 = *(v35 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v99, (v35 + 8));
    v100 = *(v35 + 26);
    v17 = (*(*v36 + 96))(v36, &v98, 7, v4, a3, 0, 0);
    if (!v99)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  v50 = *(a1 + *(*a1 - 24) + 192);
  v118 = llvm::ConstantInt::get();
  v51 = *(a1 + *(*a1 - 24) + 192);
  v119 = llvm::ConstantInt::get();
  v52 = *(a1 + *(*a1 - 24) + 192);
  v120 = llvm::ConstantInt::get();
  v53 = *(a1 + *(*a1 - 24) + 192);
  v121 = llvm::ConstantInt::get();
  v54 = a1 + *(*a1 - 24);
  v55 = llvm::ConstantVector::get();
  v117 = 257;
  v56 = sub_23C49A3AC((v54 + 8), a3, a3, v55, v116);
  v57 = a1 + *(*a1 - 24);
  v58 = *(v57 + 43);
  v104 = *(v57 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v105, (v57 + 8));
  v106 = *(v57 + 26);
  v17 = (*(*v58 + 96))(v58, &v104, 3, v4, v56, 1, 0);
  if (v105)
  {
LABEL_29:
    llvm::MetadataTracking::untrack();
  }

LABEL_39:
  v78 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_23C4CA824(uint64_t result, void *a2, int a3)
{
  switch(a3)
  {
    case 1:
      v4 = *(a2 + *(*a2 - 24) + 176);
      goto LABEL_18;
    case 2:
      v4 = *(a2 + *(*a2 - 24) + 184);
      goto LABEL_18;
    case 3:
    case 18:
      v4 = *(a2 + *(*a2 - 24) + 192);
      goto LABEL_16;
    case 4:
      v8 = 0;
      v4 = *(a2 + *(*a2 - 24) + 160);
      goto LABEL_19;
    case 5:
      v4 = *(a2 + *(*a2 - 24) + 224);
      goto LABEL_18;
    case 6:
      v4 = *(a2 + *(*a2 - 24) + 232);
      goto LABEL_18;
    case 7:
      v4 = *(a2 + *(*a2 - 24) + 240);
      goto LABEL_16;
    case 8:
      v4 = *(a2 + *(*a2 - 24) + 280);
      goto LABEL_18;
    case 9:
      v4 = *(a2 + *(*a2 - 24) + 288);
LABEL_18:
      v8 = 7;
      goto LABEL_19;
    case 10:
      v4 = *(a2 + *(*a2 - 24) + 296);
LABEL_16:
      v8 = 6;
LABEL_19:
      v7 = v4;
      break;
    case 11:
      v6 = a2 + *(*a2 - 24);
      v4 = *(v6 + 24);
      v7 = *(v6 + 36);
      v8 = 7;
      break;
    case 12:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[23];
      goto LABEL_8;
    case 13:
    case 14:
    case 15:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[23];
      goto LABEL_21;
    case 16:
    case 17:
      v5 = (a2 + *(*a2 - 24));
      v4 = v5[24];
LABEL_8:
      v7 = v5[31];
      goto LABEL_22;
    case 19:
      v3 = (a2 + *(*a2 - 24));
      v4 = v3[36];
LABEL_21:
      v7 = v3[33];
LABEL_22:
      v8 = 1;
      break;
    default:
      v4 = 0;
      v7 = 0;
      v8 = 9;
      break;
  }

  *result = v7;
  *(result + 8) = v4;
  *(result + 16) = v8;
  return result;
}

uint64_t sub_23C4CAAB8(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v92 = *MEMORY[0x277D85DE8];
  if (a2 <= 14)
  {
    if (a2 <= 12)
    {
      if (a2 != 11)
      {
        if (a2 == 12)
        {
          v10 = a1 + *(*a1 - 24);
          v11 = *(v10 + 43);
          v84 = *(v10 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v85, (v10 + 8));
          v86 = *(v10 + 26);
          if ((*(a4 + 8) & 0xFE) == 0x12)
          {
            a4 = **(a4 + 16);
          }

          v9 = (*(*v11 + 104))(v11, &v84, 0, a4, a3, 1, 0);
          if (v85)
          {
            llvm::MetadataTracking::untrack();
          }

          v12 = *(a1 + *(*a1 - 24) + 192);
          v87 = llvm::ConstantInt::get();
          v13 = *(a1 + *(*a1 - 24) + 192);
          v88 = llvm::ConstantInt::get();
          v14 = *(a1 + *(*a1 - 24) + 192);
          v89 = llvm::ConstantInt::get();
          v15 = a1 + *(*a1 - 24);
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      v24 = a1 + *(*a1 - 24);
      v25 = *(v24 + 43);
      v70 = *(v24 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v71, (v24 + 8));
      v72 = *(v24 + 26);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      a3 = (*(*v25 + 104))(v25, &v70, 6, a4, a3, 0, 0);
      if (!v71)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    if (a2 == 13)
    {
      v26 = a1 + *(*a1 - 24);
      v27 = *(v26 + 43);
      v79 = *(v26 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v80, (v26 + 8));
      v81 = *(v26 + 26);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v27 + 104))(v27, &v79, 1, a4, a3, 1, 0);
      if (!v80)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = a1 + *(*a1 - 24);
      v17 = *(v16 + 43);
      v76 = *(v16 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (v16 + 8));
      v78 = *(v16 + 26);
      if ((*(a4 + 8) & 0xFE) == 0x12)
      {
        a4 = **(a4 + 16);
      }

      v9 = (*(*v17 + 104))(v17, &v76, 2, a4, a3, 1, 0);
      if (!v77)
      {
        goto LABEL_21;
      }
    }

    llvm::MetadataTracking::untrack();
LABEL_21:
    v18 = *(a1 + *(*a1 - 24) + 192);
    v87 = llvm::ConstantInt::get();
    v19 = *(a1 + *(*a1 - 24) + 192);
    v88 = llvm::ConstantInt::get();
    v20 = *(a1 + *(*a1 - 24) + 192);
    v89 = llvm::ConstantInt::get();
    v21 = *(a1 + *(*a1 - 24) + 192);
LABEL_44:
    v90 = llvm::ConstantInt::get();
    v15 = a1 + *(*a1 - 24);
LABEL_45:
    v36 = llvm::ConstantVector::get();
    v83 = 257;
    v37 = sub_23C49A3AC((v15 + 8), v9, v9, v36, v82);
LABEL_46:
    a3 = v37;
    goto LABEL_47;
  }

  if (a2 > 16)
  {
    if (a2 != 17)
    {
      if (a2 == 18)
      {
        v40 = *(a1 + *(*a1 - 24) + 160);
        v41 = llvm::ConstantFP::get();
        v42 = *(a1 + *(*a1 - 24) + 192);
        v43 = llvm::ConstantInt::get();
        v44 = *(a1 + *(*a1 - 24) + 192);
        v45 = llvm::ConstantInt::get();
        v46 = a1 + *(*a1 - 24);
        v47 = *(v46 + 24);
        v48 = llvm::ConstantInt::get();
        v83 = 257;
        v49 = sub_23C49A8E0((v46 + 8), a3, v48, v82);
        v50 = a1 + *(*a1 - 24);
        v83 = 257;
        v51 = sub_23C49A474((v50 + 8), v49, v43, v82);
        v52 = *(a1 + *(*a1 - 24) + 160);
        v91 = 257;
        sub_23C49ACF8((v50 + 8), 49, v51, v52, &v87);
        v53 = a1 + *(*a1 - 24);
        v54 = *(v53 + 20);
        v83 = 257;
        v55 = sub_23C49EF94((v53 + 8), v49, v54, v82);
        v91 = 257;
        sub_23C4BBCA0((v53 + 8), v55, v41, &v87);
        v56 = (a1 + *(*a1 - 24));
        v83 = 257;
        sub_23C497D84(v56 + 1, 34, v49, v45, v82);
        v57 = a1 + *(*a1 - 24);
        v83 = 257;
        Select = llvm::IRBuilderBase::CreateSelect();
        v59 = a1 + *(*a1 - 24);
        v60 = *(v59 + 24);
        v83 = 257;
        v37 = sub_23C49ACF8((v59 + 8), 49, Select, v60, v82);
        goto LABEL_46;
      }

      if (a2 == 19)
      {
        v7 = a1 + *(*a1 - 24);
        v8 = *(v7 + 43);
        v61 = *(v7 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v62, (v7 + 8));
        v63 = *(v7 + 26);
        v9 = (*(*v8 + 112))(v8, &v61, a3);
        if (!v62)
        {
LABEL_43:
          v32 = *(a1 + *(*a1 - 24) + 192);
          v87 = llvm::ConstantInt::get();
          v33 = *(a1 + *(*a1 - 24) + 192);
          v88 = llvm::ConstantInt::get();
          v34 = *(a1 + *(*a1 - 24) + 192);
          v89 = llvm::ConstantInt::get();
          v35 = *(a1 + *(*a1 - 24) + 192);
          goto LABEL_44;
        }

LABEL_42:
        llvm::MetadataTracking::untrack();
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    v28 = a1 + *(*a1 - 24);
    v29 = *(v28 + 43);
    v64 = *(v28 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v65, (v28 + 8));
    v66 = *(v28 + 26);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    a3 = (*(*v29 + 104))(v29, &v64, 8, a4, a3, 0, 0);
    if (!v65)
    {
      goto LABEL_47;
    }

LABEL_38:
    llvm::MetadataTracking::untrack();
    goto LABEL_47;
  }

  if (a2 == 15)
  {
    v30 = a1 + *(*a1 - 24);
    v31 = *(v30 + 43);
    v73 = *(v30 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v74, (v30 + 8));
    v75 = *(v30 + 26);
    if ((*(a4 + 8) & 0xFE) == 0x12)
    {
      a4 = **(a4 + 16);
    }

    v9 = (*(*v31 + 104))(v31, &v73, 3, a4, a3, 1, 0);
    if (!v74)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v22 = a1 + *(*a1 - 24);
  v23 = *(v22 + 43);
  v67 = *(v22 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v68, (v22 + 8));
  v69 = *(v22 + 26);
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    a4 = **(a4 + 16);
  }

  a3 = (*(*v23 + 104))(v23, &v67, 7, a4, a3, 0, 0);
  if (v68)
  {
    goto LABEL_38;
  }

LABEL_47:
  v38 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_23C4CB510(unsigned int **a1)
{
  v2 = a1[8];
  v3 = llvm::User::operator new(0x40);
  MEMORY[0x23EED3B90](v3, v2, 0, 0);
  v11 = 257;
  result = (*(*a1[10] + 16))(a1[10], v3, v10, a1[6], a1[7]);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *a1;
    v7 = &v6[4 * v5];
    do
    {
      v8 = *v6;
      v9 = *(v6 + 1);
      result = llvm::Instruction::setMetadata();
      v6 += 4;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_23C4CB5CC(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23C4B1190(a1 + 24, a2, a3);
  sub_23C4C9748(a1, off_284F13F38);
}

uint64_t sub_23C4CBA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(a1 + 72) + 104))(*(a1 + 72));
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
      sub_23C49B15C(a1, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

void sub_23C4CBB40(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23C4B1190(a1 + 24, a2, a3);
  sub_23C4C9748(a1, off_284F14078);
}

void sub_23C4CC3EC(uint64_t *a1, _DWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = *(a1 + *(*a1 - 24) + 344);
  *(a1 + 8) = (*(*v4 + 312))(v4, &v16, 4);
  v5 = *a1;
  if (v16)
  {
    v6 = a1 + *(*a1 - 24);
    operator new();
  }

  v13 = 0;
  v7 = a1 + *(v5 - 24);
  v8 = strlen(off_278BBF510[*a2 & 7]);
  v9 = *(v7 + 144);
  llvm::FunctionType::get();
  v10 = *(v7 + 320);
  llvm::Module::getOrInsertFunction();
  a1[2] = v11;
  *(v11 + 18) = *(v11 + 18) & 0xC00F | 0x660;
  v12 = *(a1 + *(*a1 - 24) + 336);
  v14 = "entry";
  v15 = 259;
  operator new();
}

void sub_23C4CCD24(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23C4B1190(a1 + 48, a2, a3);
  sub_23C4C9748(a1, off_284F141B8);
}

void sub_23C4CF68C(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23C4B1190(a1 + 592, a2, a3);
  sub_23C4CF13C(a1, off_284F144B8);
}

uint64_t sub_23C4D09AC(uint64_t *a1, unsigned int a2, _DWORD *a3, unsigned int a4, int a5, uint64_t a6)
{
  v123 = *MEMORY[0x277D85DE8];
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 192);
  v12 = *(*(v10 + 344) + 1536);
  llvm::FixedVectorType::get();
  v13 = llvm::User::operator new(0x58);
  v14 = *(a1 + *(*a1 - 24) + 320);
  v15 = a2;
  v119 = "agc.pbe_words";
  v121[0] = a2;
  LOWORD(v122) = 2051;
  llvm::GlobalVariable::GlobalVariable();
  v16 = *(a1 + *(*a1 - 24) + 344);
  if (*(v16 + 1616))
  {
    v17 = strlen(*(v16 + 1616));
  }

  llvm::GlobalObject::setSection();
  v18 = __clz(*(*(a1 + *(*a1 - 24) + 344) + 1628)) ^ 0x13F;
  llvm::GlobalObject::setAlignment();
  v19 = (a1 + *(*a1 - 24));
  v20 = *(v19[43] + 1624);
  v107 = v13;
  sub_23C506A1C(v19);
  v21 = llvm::User::operator new(0x58);
  v22 = a1 + *(*a1 - 24);
  v23 = *(v22 + 320);
  v24 = *(v22 + 192);
  llvm::FixedVectorType::get();
  v119 = "agc.emit_info";
  v121[0] = a2;
  LOWORD(v122) = 2051;
  v99 = *(*(a1 + *(*a1 - 24) + 344) + 836) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v108 = v21;
  sub_23C506A1C((a1 + *(*a1 - 24)));
  v25 = *(a1[2] + 4 * a2);
  if (*a3 != v25)
  {
    v26 = *a1;
    if (*(*(a1 + *(*a1 - 24) + 344) + 1480))
    {
      v27 = a3;
      v28 = llvm::User::operator new(0x58);
      v29 = a1 + *(*a1 - 24);
      v30 = *(v29 + 320);
      llvm::Type::getInt8PtrTy(*(v29 + 336), 1);
      v119 = "agc.framebuffer_slot";
      v121[0] = v25;
      LOWORD(v122) = 2051;
      v100 = *(*(a1 + *(*a1 - 24) + 344) + 836) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      llvm::GlobalObject::setSection();
      sub_23C506A1C((a1 + *(*a1 - 24)));
      v31 = a1 + *(*a1 - 24);
      LOWORD(v122) = 257;
      v32 = sub_23C497C88((v31 + 8), **(*v28 + 16), v28, 0, &v119);
      v33 = a1 + *(*a1 - 24);
      v34 = *(v33 + 344);
      v35 = *(v34 + 1480);
      if (v35)
      {
        v36 = strlen(*(v34 + 1480));
      }

      else
      {
        v36 = 0;
      }

      v38 = sub_23C49EB10(v33, v35, v36, *(v33 + 192), *(v33 + 192));
      v39 = a1 + *(*a1 - 24);
      v40 = *(v39 + 584);
      __src[0] = llvm::ConstantInt::get();
      LOWORD(v122) = 257;
      v37 = sub_23C497A7C(v39 + 8, *(v38 + 24), v38, __src, 1, &v119);
      v26 = *a1;
    }

    else
    {
      v27 = a3;
      v37 = 0;
      v32 = 0;
    }

    v41 = a1 + *(v26 - 24);
    v42 = *(v41 + 344);
    v114 = *(v41 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v115, (v41 + 8));
    v116 = *(v41 + 104);
    v43 = (*(*v42 + 232))(v42, &v114, a2 & 7, a1[2], v32, v37, *(a1 + 25));
    if (v115)
    {
      llvm::MetadataTracking::untrack();
    }

    if (v43)
    {
      v44 = a1 + *(*a1 - 24);
      *(v44 + 56) = v43;
      *(v44 + 64) = v43 + 40;
    }

    *v27 = v25;
  }

  if (a6)
  {
    v45 = a1 + *(*a1 - 24);
    v46 = *(v45 + 336);
    v119 = "cond_emit";
    LOWORD(v122) = 259;
    v47 = *(*(v45 + 56) + 56);
    operator new();
  }

  if ((*(a1[2] + 4 * a2) & 0x2000000) != 0)
  {
    *(a1 + 24) = 1;
    v48 = a1 + *(*a1 - 24);
    v49 = *(v48 + 344);
    if (*(v49 + 1456))
    {
      v50 = strlen(*(v49 + 1456));
    }

    v51 = *(v48 + 160);
    v52 = sub_23C4A0414(v48);
    v53 = a1 + *(*a1 - 24);
    v54 = *(v53 + 344);
    if (*(v54 + 1464))
    {
      v55 = strlen(*(v54 + 1464));
    }

    v56 = *(v53 + 160);
    v57 = sub_23C4A0414(v53);
    v58 = a1 + *(*a1 - 24);
    LOWORD(v122) = 257;
    v106 = sub_23C497A7C(v58 + 8, **(*v52 + 16), v52, 0, 0, &v119);
    v59 = a1 + *(*a1 - 24);
    LOWORD(v122) = 257;
    v105 = sub_23C497A7C(v59 + 8, **(*v57 + 16), v57, 0, 0, &v119);
    v60 = llvm::User::operator new(0x58);
    v61 = a1 + *(*a1 - 24);
    v62 = *(v61 + 320);
    v63 = *(v61 + 192);
    llvm::PointerType::get();
    v119 = "agc.sstt_address";
    v121[0] = a2;
    LOWORD(v122) = 2051;
    v101 = *(*(a1 + *(*a1 - 24) + 344) + 836) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    v60[80] |= 1u;
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v64 = a1 + *(*a1 - 24);
    LOWORD(v122) = 257;
    v104 = sub_23C497C88((v64 + 8), **(*v60 + 16), v60, 0, &v119);
    v65 = llvm::User::operator new(0x58);
    v66 = a1 + *(*a1 - 24);
    v67 = *(v66 + 320);
    v68 = *(v66 + 192);
    llvm::PointerType::get();
    v119 = "agc.queue_address";
    v121[0] = a2;
    LOWORD(v122) = 2051;
    v102 = *(*(a1 + *(*a1 - 24) + 344) + 836) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    v65[80] |= 1u;
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v69 = a1 + *(*a1 - 24);
    LOWORD(v122) = 257;
    v70 = sub_23C497C88((v69 + 8), **(*v65 + 16), v65, 0, &v119);
    v71 = llvm::User::operator new(0x58);
    v72 = (a1 + *(*a1 - 24));
    v73 = v72[40];
    v74 = v72[24];
    v119 = "agc.slice_level";
    v121[0] = a2;
    LOWORD(v122) = 2051;
    v103 = *(v72[43] + 836) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    v75 = a1 + *(*a1 - 24);
    LOWORD(v122) = 257;
    v76 = sub_23C497C88((v75 + 8), **(*v71 + 16), v71, 0, &v119);
    v77 = (a1 + *(*a1 - 24));
    v78 = v77[18];
    v79 = v77[24];
    v80 = llvm::PointerType::get();
    v81 = *(a1 + *(*a1 - 24) + 192);
    v82 = llvm::PointerType::get();
    v83 = a1 + *(*a1 - 24);
    v84 = *(v83 + 160);
    v85 = *(v83 + 192);
    __src[0] = v80;
    __src[1] = v82;
    __src[2] = v84;
    __src[3] = v84;
    v118 = v85;
    v119 = v121;
    v120 = 0x500000000;
    sub_23C49BA18(&v119, __src, &v119);
    llvm::FunctionType::get();
    v86 = v77[40];
    llvm::Module::getOrInsertFunction();
    v88 = v87;
    if (v119 != v121)
    {
      free(v119);
    }

    v119 = v70;
    v120 = v104;
    v121[0] = v106;
    v121[1] = v105;
    v122 = v76;
    v89 = a1 + *(*a1 - 24);
    LOWORD(v118) = 257;
    sub_23C497A7C(v89 + 8, *(v88 + 24), v88, &v119, 5, __src);
  }

  v90 = a1 + *(*a1 - 24);
  v91 = *(v90 + 344);
  v111 = *(v90 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v112, (v90 + 8));
  v113 = *(v90 + 104);
  result = (*(*v91 + 224))(v91, &v111, v107, a4, a1[2] + 4 * v15, v108, 0);
  if (v112)
  {
    result = llvm::MetadataTracking::untrack();
  }

  if (a5)
  {
    v93 = a1 + *(*a1 - 24);
    v94 = *(v93 + 344);
    if (*(v94 + 1544))
    {
      v95 = strlen(*(v94 + 1544));
    }

    v96 = *(v93 + 144);
    v97 = sub_23C4A0414(v93);
    LOWORD(v122) = 257;
    result = sub_23C497A7C(v93 + 8, **(*v97 + 16), v97, 0, 0, &v119);
  }

  v98 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23C4D1DB4(uint64_t *a1, uint64_t a2, llvm::Type *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  sub_23C4B1190((a1 + 1), a2, a3);
  *a1 = &unk_284F14658;
  a1[1] = &unk_284F14700;
  sub_23C49F8D0(__p, "utility_program");
  v5 = sub_23C4AF200(a3, __p);
  v6 = *a1;
  *(a1 + *(*a1 - 24) + 320) = v5;
  if (v16 < 0)
  {
    operator delete(__p[0]);
    v6 = *a1;
  }

  *(*(a1 + *(v6 - 24) + 344) + 320) = *(a1 + *(v6 - 24) + 320);
  v7 = *(a1 + *(v6 - 24) + 320);
  Function = llvm::Module::getFunction();
  __p[0] = *(Function + 112);
  llvm::AttributeList::getFnAttrs(__p);
  v9 = *(a1 + *(*a1 - 24) + 336);
  v14 = llvm::AttributeSet::addAttribute();
  v10 = *(a1 + *(*a1 - 24) + 336);
  LODWORD(__p[0]) = -1;
  __p[1] = v14;
  *(Function + 112) = llvm::AttributeList::get();
  *(Function + 18) = *(Function + 18) & 0xC00F | 0x6A0;
  __p[0] = "agc.main";
  v17 = 259;
  llvm::Value::setName();
  sub_23C4B2A60((a1 + *(*a1 - 24)));
  v11 = *a1;
  *(a1 + *(*a1 - 24) + 104) = -1;
  *(*(a1 + *(v11 - 24) + 344) + 104) = -1;
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_23C4D204C(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1 + *(*a1 - 24);
  v3 = *(v2 + 144);
  v4 = sub_23C4A0414(v2);
  *(v4 + 18) = *(v4 + 18) & 0xC00F | 0x650;
  v5 = *(a1 + *(*a1 - 24) + 336);
  v6 = "entry";
  WORD4(v7) = 259;
  operator new();
}

uint64_t sub_23C4D2E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + *(*a1 - 24);
  v15 = 257;
  *a4 = sub_23C4CBA68((v9 + 8), a2, a3, v14);
  v10 = (a1 + *(*a1 - 24));
  v13[16] = 257;
  result = sub_23C49EBEC((v10 + 1), 22, a2, a3, v13);
  v12 = result;
  if (!result)
  {
    v15 = 257;
    v12 = llvm::BinaryOperator::Create();
    result = sub_23C49B15C(v10 + 1, v12, v13);
  }

  *a5 = v12;
  return result;
}

void sub_23C4D2F54(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_23C4B1190(a1 + 600, a2, a3);
  sub_23C4CF13C(a1, off_284F148B0);
}

uint64_t sub_23C4D56F8(llvm::ValueHandleBase *this, uint64_t a2)
{
  v3 = *(this + 2);
  if (v3 != a2)
  {
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(this);
    }

    *(this + 2) = a2;
    if (a2 != -8192 && a2 != -4096 && a2)
    {
      llvm::ValueHandleBase::AddToUseList(this);
    }
  }

  return a2;
}

uint64_t sub_23C4D5768(int a1, llvm::Type *this, int a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  llvm::Type::getScalarSizeInBits(this);
  *a6 = llvm::IntegerType::get();
  result = llvm::Type::getScalarSizeInBits(this);
  switch(result)
  {
    case 0x20:
      if (!a3)
      {
        goto LABEL_10;
      }

      break;
    case 0x10:
      if (!a3)
      {
        goto LABEL_10;
      }

      break;
    case 8:
      if (a3)
      {
        break;
      }

LABEL_10:
      *a4 = llvm::ConstantInt::get();
      v13 = *a6;
      result = llvm::ConstantInt::get();
      goto LABEL_11;
    default:
      return result;
  }

  *a4 = llvm::ConstantInt::getSigned();
  v12 = *a6;
  result = llvm::ConstantInt::getSigned();
LABEL_11:
  *a5 = result;
  return result;
}

uint64_t sub_23C4D58A8(uint64_t a1, llvm::Type **a2, llvm::Type *a3, uint64_t a4)
{
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
  v9 = llvm::Type::getScalarSizeInBits(a3);
  if (ScalarSizeInBits >= v9)
  {
    if (ScalarSizeInBits <= v9)
    {
      return a2;
    }

    v10 = 38;
  }

  else
  {
    v10 = 40;
  }

  return sub_23C49ACF8(a1, v10, a2, a3, a4);
}

uint64_t sub_23C4D5948(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23C49EBEC(a1, 30, a2, a3, a4);
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    sub_23C49B15C(a1, v6, a4);
  }

  return v6;
}

uint64_t sub_23C4D59E0(const void *a1, size_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  if (!a2)
  {
    return 1;
  }

  v17 = 0;
  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    syslog(3, "Unable to create log directory");
    return 0;
  }

  v10 = MEMORY[0x277CCACA8];
  if (qword_27E1F70A8 != -1)
  {
    dispatch_once(&qword_27E1F70A8, &unk_284F15658);
  }

  v11 = [v10 stringWithFormat:@"%@/%s_%@_%s.log", @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/AGX", a3, objc_msgSend(qword_27E1F70A0, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "date")), a4];
  v12 = fopen([v11 UTF8String], "wb");
  if (!v12)
  {
    [v11 UTF8String];
    syslog(3, "Failure to create log file: %s");
    return 0;
  }

  v13 = v12;
  if (a5 && fwrite(a5, 1uLL, 4uLL, v12) != 4 || (v14 = 1, v15 = fwrite(a1, 1uLL, a2, v13), fclose(v13), v15 != a2))
  {
    [v11 UTF8String];
    syslog(3, "Failed to write log file (wrote %zu bytes, expected %zu bytes): %s");
    return 0;
  }

  return v14;
}

uint64_t sub_23C4D5BA0()
{
  qword_27E1F70A0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [qword_27E1F70A0 setDateStyle:1];
  v0 = qword_27E1F70A0;

  return MEMORY[0x2821F9670](v0, sel_setDateFormat_);
}

BOOL sub_23C4D5C10(void *a1)
{
  v2 = sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128));
  if (v2)
  {
    v3 = sub_23C503B2C(a1);
    v4 = sub_23C511A84(a1);
    v5 = a1 + *(*a1 - 24);
    v5[774] = 1;
    v6 = *(v5 + 186);
    v7 = *(v5 + 184) - *(v5 + 188);
    sub_23C4B5F88(v5 + 88, v3);
    sub_23C4B5FF0(v5 + 88, v4);
    v8 = a1 + *(*a1 - 24);
    v9 = sub_23C4B03D4((v5 + 704), v7 + v6);
    sub_23C4B1AD8((v8 + 704), v9);
  }

  return v2;
}

void sub_23C4D5D24(void *a1@<X0>, std::string *a2@<X8>)
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = a1[478];
  sub_23C49F8D0(v49, "AGCFragmentContextStateGL");
  sub_23C49F8D0(&v54, "AGCFragmentContextState");
  sub_23C49F8D0(v52, "fragmentState");
  sub_23C49F8D0(&v90, "AGCFragmentState");
  sub_23C49F8D0(&v75, "GL and Metal state:");
  sub_23C49F8D0(&v73, "alphaToCoverage");
  sub_23C4B7004(&v76, &v73.__r_.__value_.__l.__data_, *v4 & 1);
  sub_23C49F8D0(v71, "alphaToOne");
  sub_23C4B7004(&v77, v71, (*v4 >> 1) & 1);
  sub_23C49F8D0(v69, "sampleCoverage");
  sub_23C4B7004(&v78, v69, (*v4 >> 2) & 1);
  sub_23C49F8D0(&v79, "GL specific state:");
  sub_23C49F8D0(v67, "depthStencilWriteDisabled");
  sub_23C4B7004(&v80, v67, (*v4 >> 4) & 1);
  sub_23C49F8D0(&v66, "logicOp");
  sub_23C4B7004(&v81, &v66.__r_.__value_.__l.__data_, (*v4 >> 5) & 1);
  sub_23C49F8D0(v64, "logicOpState");
  sub_23C4B705C(&v82, v64, off_278BBF720[(*v4 >> 6) & 0x1F]);
  sub_23C49F8D0(&v63, "alphaTest");
  sub_23C4B7004(&v83, &v63.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  sub_23C49F8D0(&v62, "alphaTestFunc");
  sub_23C4B705C(&v84, &v62.__r_.__value_.__l.__data_, off_278BBF7A8[*v4 >> 12]);
  sub_23C49F8D0(&v61, "smoothPoints");
  sub_23C4B7004(&v85, &v61.__r_.__value_.__l.__data_, HIWORD(*v4) & 1);
  sub_23C49F8D0(&v60, "pointSpriteEnabled");
  sub_23C4B7004(&v86, &v60.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  sub_23C49F8D0(v58, "outputPointSize");
  sub_23C4B7004(&v87, v58, (*v4 >> 18) & 1);
  sub_23C49F8D0(&v57, "shaderDebugEnable");
  sub_23C4B7004(&v88, &v57.__r_.__value_.__l.__data_, (*v4 >> 19) & 1);
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v89, __p, *v4 >> 20);
  sub_23C4D6FAC(&v51, &v90, 0, &v75, 15);
  v5 = 360;
  do
  {
    if (v75.__r_.__value_.__s.__data_[v5 - 1] < 0)
    {
      operator delete(*(&v74.__r_.__value_.__l.__data_ + v5));
    }

    v5 -= 24;
  }

  while (v5);
  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v90, v52, &v51);
  sub_23C49F8D0(v64, "colorMaskState");
  sub_23C49F8D0(&v73, "AGCColorMaskState");
  sub_23C49F8D0(v71, "redEnableBits");
  sub_23C4D7238(&v75, v71, *(v4 + 8));
  sub_23C49F8D0(v69, "greenEnableBits");
  sub_23C4D7238(&v76, v69, *(v4 + 9));
  sub_23C49F8D0(v67, "blueEnableBits");
  sub_23C4D7238(&v77, v67, *(v4 + 10));
  sub_23C49F8D0(&v66, "alphaEnableBits");
  sub_23C4D7238(&v78, &v66.__r_.__value_.__l.__data_, *(v4 + 11));
  sub_23C4D6FAC(&v63, &v73, 0, &v75, 4);
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v78.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v78.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v91, v64, &v63);
  sub_23C4D6FAC(&v73, &v54, 0, &v90, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v91.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v90 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v61, "blendState");
  sub_23C49F8D0(&v90, "AGCBlendState");
  sub_23C49F8D0(v71, "enabled");
  if (v4[4])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  sub_23C4B705C(&v75, v71, v8);
  sub_23C49F8D0(v69, "src");
  sub_23C4B705C(&v76, v69, off_278BBF7F0[(v4[4] >> 1) & 0x1F]);
  sub_23C49F8D0(v67, "dst");
  sub_23C4B705C(&v77, v67, off_278BBF7F0[(v4[4] >> 6) & 0x1F]);
  sub_23C49F8D0(&v66, "srcA");
  sub_23C4B705C(&v78, &v66.__r_.__value_.__l.__data_, off_278BBF7F0[v4[4] >> 11]);
  sub_23C49F8D0(v64, "dstA");
  sub_23C4B705C(&v79, v64, off_278BBF7F0[*(v4 + 9) & 0x1F]);
  sub_23C49F8D0(&v63, "equation");
  sub_23C4B705C(&v80, &v63.__r_.__value_.__l.__data_, off_278BBF890[(v4[4] >> 21) & 7]);
  sub_23C49F8D0(&v62, "equationA");
  sub_23C4B705C(&v81, &v62.__r_.__value_.__l.__data_, off_278BBF890[*(v4 + 19) & 7]);
  sub_23C4D6FAC(&v60, &v90, 0, &v75, 7);
  for (k = 0; k != -21; k -= 3)
  {
    if (SHIBYTE(v81.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v81.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v74, &v61.__r_.__value_.__l.__data_, &v60);
  sub_23C4D6FAC(&v38, v49, 0, &v73, 2);
  for (m = 0; m != -6; m -= 3)
  {
    if (SHIBYTE(v74.__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(*(&v73 + m * 8 + 24));
    }
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  v11 = a1[370];
  sub_23C49F8D0(&v73, "AGCDrawBufferState");
  sub_23C49F8D0(v71, "enabledBits");
  sub_23C4D7238(&v90, v71, *(v11 + 32));
  sub_23C49F8D0(v69, "sampleCount");
  sub_23C4B7004(&v91, v69, (*(v11 + 32) >> 8) & 0xF);
  sub_23C49F8D0(v67, "colorSampleCount");
  sub_23C4B7004(&v92, v67, *(v11 + 32) >> 12);
  sub_23C49F8D0(&v66, "outputPartitionSize");
  sub_23C4B7004(&v93, &v66.__r_.__value_.__l.__data_, *(v11 + 34));
  sub_23C49F8D0(v64, "LIBSpilling");
  sub_23C4B7004(&v94, v64, HIBYTE(*(v11 + 32)) & 1);
  sub_23C49F8D0(&v63, "unused");
  sub_23C4B7004(&v95, &v63.__r_.__value_.__l.__data_, *(v11 + 32) >> 25);
  sub_23C49F8D0(&v62, "encoded : ");
  sub_23C49F8D0(&v61, "encoded[0]");
  sub_23C4D7424(&v60, v11);
  sub_23C4B733C(&v75, &v61.__r_.__value_.__l.__data_, &v60);
  sub_23C49F8D0(v58, "encoded[1]");
  sub_23C4D7424(&v57, (v11 + 4));
  sub_23C4B733C(&v76, v58, &v57);
  sub_23C49F8D0(__p, "encoded[2]");
  sub_23C4D7424(&v54, (v11 + 8));
  sub_23C4B733C(&v77, __p, &v54);
  sub_23C49F8D0(v52, "encoded[3]");
  sub_23C4D7424(&v51, (v11 + 12));
  sub_23C4B733C(&v78, v52, &v51);
  sub_23C49F8D0(v49, "encoded[4]");
  sub_23C4D7424(&v48, (v11 + 16));
  sub_23C4B733C(&v79, v49, &v48);
  sub_23C49F8D0(v46, "encoded[5]");
  sub_23C4D7424(&v45, (v11 + 20));
  sub_23C4B733C(&v80, v46, &v45);
  sub_23C49F8D0(v43, "encoded[6]");
  sub_23C4D7424(&v42, (v11 + 24));
  sub_23C4B733C(&v81, v43, &v42);
  sub_23C49F8D0(v40, "encoded[7]");
  sub_23C4D7424(&v39, (v11 + 28));
  sub_23C4B733C(&v82, v40, &v39);
  sub_23C4D6FAC(&v96, &v62, 0, &v75, 8);
  sub_23C4D6FAC(&v37, &v73, 0, &v90, 7);
  for (n = 0; n != -21; n -= 3)
  {
    if (SHIBYTE(v96.__r_.__value_.__r.__words[n + 2]) < 0)
    {
      operator delete(*(&v96.__r_.__value_.__l.__data_ + n * 8));
    }
  }

  for (ii = 0; ii != -24; ii -= 3)
  {
    if (SHIBYTE(v82.__r_.__value_.__r.__words[ii + 2]) < 0)
    {
      operator delete(*(&v82.__r_.__value_.__l.__data_ + ii * 8));
    }
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  v14 = a1[485];
  sub_23C49F8D0(&v90, &unk_23C53F34D);
  for (jj = 1; jj != 33; ++jj)
  {
    std::to_string(&v73, v14[jj]);
    v16 = std::string::append(&v73, " ");
    v17 = v16->__r_.__value_.__r.__words[2];
    *&v75.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
    v75.__r_.__value_.__r.__words[2] = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v75;
    }

    else
    {
      v18 = v75.__r_.__value_.__r.__words[0];
    }

    if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v75.__r_.__value_.__l.__size_;
    }

    std::string::append(&v90, v18, size);
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v73.__r_.__value_.__l.__data_);
    }
  }

  sub_23C49F8D0(&v73, "AGCSamplerRemapStateGL");
  sub_23C49F8D0(v71, "samplerCount");
  sub_23C4B7004(&v75, v71, *v14);
  sub_23C49F8D0(v69, "samplerToTexUnitMap");
  std::operator+<char>();
  v20 = std::string::append(&v66, "]");
  v21 = v20->__r_.__value_.__r.__words[2];
  *v67 = *&v20->__r_.__value_.__l.__data_;
  v68 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B733C(&v76, v69, v67);
  sub_23C4D6FAC(&v60, &v73, 0, &v75, 2);
  for (kk = 0; kk != -6; kk -= 3)
  {
    if (SHIBYTE(v76.__r_.__value_.__r.__words[kk + 2]) < 0)
    {
      operator delete(*(&v75 + kk * 8 + 24));
    }
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  if (v72 < 0)
  {
    operator delete(v71[0]);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  v23 = a1[483];
  if (v23)
  {
    sub_23C49F8D0(&v62, &unk_23C53F34D);
    for (mm = 0; mm != 32; ++mm)
    {
      sub_23C49F8D0(&v90, "AGCSamplerPCFState");
      sub_23C49F8D0(&v73, "compareFunc");
      sub_23C4B705C(&v75, &v73.__r_.__value_.__l.__data_, off_278BBF7A8[*(v23 + 2 * mm) & 0xF]);
      sub_23C49F8D0(v71, "clampPCFEnabled");
      sub_23C4D7674(&v76, v71, (*(v23 + 2 * mm) >> 4) & 1);
      sub_23C49F8D0(v69, "mipmapMinFilterEnabled");
      sub_23C4D7674(&v77, v69, (*(v23 + 2 * mm) >> 5) & 1);
      sub_23C49F8D0(v67, "trilinearMinFilterEnabled");
      sub_23C4D7674(&v78, v67, (*(v23 + 2 * mm) >> 6) & 1);
      sub_23C49F8D0(&v66, "linearMinFilterEnabled");
      sub_23C4D7674(&v79, &v66.__r_.__value_.__l.__data_, (*(v23 + 2 * mm) >> 7) & 1);
      sub_23C49F8D0(v64, "linearMagFilterEnabled");
      sub_23C4D7674(&v80, v64, HIBYTE(*(v23 + 2 * mm)) & 1);
      sub_23C49F8D0(&v63, "unused");
      sub_23C4D7674(&v81, &v63.__r_.__value_.__l.__data_, *(v23 + 2 * mm) >> 9);
      sub_23C4D6FAC(&v61, &v90, 1, &v75, 7);
      for (nn = 0; nn != -21; nn -= 3)
      {
        if (SHIBYTE(v81.__r_.__value_.__r.__words[nn + 2]) < 0)
        {
          operator delete(*(&v81.__r_.__value_.__l.__data_ + nn * 8));
        }
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67[0]);
      }

      if (v70 < 0)
      {
        operator delete(v69[0]);
      }

      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v61;
      }

      else
      {
        v26 = v61.__r_.__value_.__r.__words[0];
      }

      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v61.__r_.__value_.__l.__size_;
      }

      std::string::append(&v62, v26, v27);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    sub_23C49F8D0(&v90, "AGCSamplerPCFStates");
    sub_23C49F8D0(&v75, "pcf : ");
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_23C49F988(&v76, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    }

    else
    {
      v76 = v62;
    }

    sub_23C4D6FAC(&v73, &v90, 0, &v75, 2);
    for (i1 = 0; i1 != -6; i1 -= 3)
    {
      if (SHIBYTE(v76.__r_.__value_.__r.__words[i1 + 2]) < 0)
      {
        operator delete(*(&v75 + i1 * 8 + 24));
      }
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    sub_23C49F8D0(&v73, &unk_23C53F34D);
  }

  sub_23C4B7AC8(&v90, &v38.__r_.__value_.__l.__data_, &v37.__r_.__value_.__l.__data_);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v60;
  }

  else
  {
    v29 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v60.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v90, v29, v30);
  v32 = v31->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v73;
  }

  else
  {
    v33 = v73.__r_.__value_.__r.__words[0];
  }

  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v73.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v75, v33, v34);
  *a2 = *v35;
  v35->__r_.__value_.__r.__words[0] = 0;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_23C4D6FAC(std::string *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_23C49F988(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v29 = *(a2 + 16);
  }

  sub_23C4D76CC(&v30.__r_.__value_.__l.__data_, __dst, a3);
  sub_23C49F8D0(v23, "{");
  sub_23C4D76CC(&__p, v23, a3);
  if ((v27 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = v26;
  }

  v11 = std::string::append(&v30, p_p, v10);
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst[0]);
  }

  if (a5)
  {
    for (i = 24 * a5; i; i -= 24)
    {
      if (*(a4 + 23) < 0)
      {
        sub_23C49F988(&v30, *a4, *(a4 + 8));
      }

      else
      {
        v30 = *a4;
      }

      v14 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_23C49F988(&v22, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      }

      else
      {
        v22 = v30;
      }

      sub_23C4D76CC(&__p, &v22, a3 + 1);
      if ((v27 & 0x80u) == 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      if ((v27 & 0x80u) == 0)
      {
        v16 = v27;
      }

      else
      {
        v16 = v26;
      }

      std::string::append(&v31, v15, v16);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
        if (v14 < 0)
        {
LABEL_39:
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }

      else if (v14 < 0)
      {
        goto LABEL_39;
      }

      a4 += 24;
    }
  }

  sub_23C49F8D0(v20, "}");
  sub_23C4D76CC(&v30.__r_.__value_.__l.__data_, v20, a3);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v31;
  }

  else
  {
    v17 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v19 = std::string::insert(&v30, 0, v17, size);
  *a1 = *v19;
  v19->__r_.__value_.__r.__words[0] = 0;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_23C4D7238(std::string *a1, const void **a2, unsigned int a3)
{
  v5 = a3;
  sub_23C4B0E40(v11);
  v6 = sub_23C4AA520(&v12, "0x", 2);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v6, v5);
  std::stringbuf::str();
  sub_23C4B733C(a1, a2, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED5050](&v16);
}

void sub_23C4D7424(std::string *a1, _DWORD *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v20, "AGCDrawBuffer");
  sub_23C49F8D0(v18, "pbeSourceFormat");
  sub_23C4B705C(&v22, v18, off_278BBF8C8[*a2 & 0x1F]);
  sub_23C49F8D0(v16, "numWrittenComponents");
  sub_23C4B7004(&v23, v16, *a2 >> 5);
  sub_23C49F8D0(v14, "gammaCorrection");
  sub_23C4B7004(&v24, v14, (*a2 >> 8) & 1);
  sub_23C49F8D0(v12, "colorSpaceConversion");
  sub_23C4B705C(&v25, v12, off_278BBF980[(*a2 >> 9) & 7]);
  sub_23C49F8D0(v10, "preEmitSwizzle");
  sub_23C4B705C(&v26, v10, off_278BBF9A8[(*a2 >> 12) & 7]);
  sub_23C49F8D0(v8, "outputPartitionOffset");
  sub_23C4B7004(&v27, v8, (*a2 >> 15));
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v28, __p, *a2 >> 23);
  sub_23C4D6FAC(a1, v20, 0, &v22, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v28.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v28.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23C4D7674(std::string *a1, const void **a2, unsigned __int16 a3)
{
  std::to_string(&v5, a3);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4D76CC(void **a1, std::string::value_type *a2, int a3)
{
  sub_23C49F8D0(&v14, &unk_23C53F34D);
  for (; a3; --a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  sub_23C4ADD34(a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_23C4D7860(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F15690;
  v1[490] = &unk_284F158C0;
  v1[304] = &unk_284F15848;
  v2 = v1[488];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 486));
  }

  sub_23C4B7DD0(v1, off_284F15928);
  sub_23C4B130C((v1 + 490));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4D794C(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F15690;
  v1[490] = &unk_284F158C0;
  v1[304] = &unk_284F15848;
  v2 = v1[488];
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((v1 + 486));
  }

  sub_23C4B7DD0(v1, off_284F15928);

  return sub_23C4B130C((v1 + 490));
}

void sub_23C4D7A20(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F15690;
  v2 = (a1 + 186);
  a1[186] = &unk_284F158C0;
  *a1 = &unk_284F15848;
  v3 = a1[184];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 182));
  }

  sub_23C4B7DD0(v1, off_284F15928);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4D7AF4(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F15690;
  v2 = (a1 + 186);
  a1[186] = &unk_284F158C0;
  *a1 = &unk_284F15848;
  v3 = a1[184];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 182));
  }

  sub_23C4B7DD0(v1, off_284F15928);

  return sub_23C4B130C(v2);
}

uint64_t sub_23C4D7BC0(void *a1, uint64_t *a2)
{
  v4 = *(*a1 - 24);
  v5 = sub_23C4D7CBC(a1);
  v6 = sub_23C49ABAC(a1 + v4, v5);
  v7 = (a1 + *(*a1 - 24));
  v15 = 257;
  v8 = sub_23C497C88(v7 + 1, **(*v6 + 16), v6, 0, v14);
  v9 = a1 + *(*a1 - 24);
  v10 = *a2;
  v15 = 257;
  v11 = sub_23C49FEB4((v9 + 8), v8, v10, v14);
  v12 = a1 + *(*a1 - 24);
  v15 = 257;
  return sub_23C49EA2C((v12 + 8), a2, v11, v14);
}

uint64_t sub_23C4D7CBC(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  result = a1[488];
  if (!result)
  {
    v3 = **(a1 + *(*a1 - 24) + 160);
    llvm::StructType::get();
    v4 = llvm::User::operator new(0x58);
    v5 = a1 + *(*a1 - 24);
    v6 = *(v5 + 40);
    v8 = *(*(v5 + 43) + 836) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    llvm::GlobalObject::setSection();
    sub_23C506A1C((a1 + *(*a1 - 24)));
    sub_23C4D56F8((a1 + 486), v4);
    result = a1[488];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4D7E14(void *a1, uint64_t a2)
{
  v4 = *(*a1 - 24);
  v5 = sub_23C4D7CBC(a1);
  v6 = sub_23C49ABAC(a1 + v4, v5);
  v7 = *(*a1 - 24);
  v8 = sub_23C4D7CBC(a1);
  v9 = sub_23C49ABAC(a1 + v7, v8);
  v10 = (a1 + *(*a1 - 24));
  v19 = 257;
  v11 = sub_23C497C88(v10 + 1, **(*v6 + 16), v6, 0, v18);
  v12 = (a1 + *(*a1 - 24));
  v19 = 257;
  v13 = sub_23C497C88(v12 + 1, **(*v9 + 16), v9, 0, v18);
  v14 = a1 + *(*a1 - 24);
  v19 = 257;
  v15 = sub_23C49EA2C((v14 + 8), a2, v11, v18);
  v17[16] = 257;
  return sub_23C4A0BD4((v14 + 8), v15, v13, v17);
}

void sub_23C4D7F84(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23C4D819C();
  sub_23C4B8D20();
  sub_23C4B8DA4();
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(a2 + 32);
  }

  else
  {
    v8 = 1;
  }

  v39 = 0;
  LODWORD(v28) = 3;
  sub_23C506AF0(0, a3, &v28, &v39);
  v9 = a3 - 8 * *(a3 + 8);
  v10 = *(v9 + 32);
  if (v10)
  {
    if (*v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v9 + 32);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 + 40);
  if (v12)
  {
    if (*v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  String = llvm::MDString::getString(v11);
  v16 = v15;
  v17 = llvm::MDString::getString(v13);
  v19 = v18;
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  v29 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 1;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v28 = MEMORY[0x277D821F8] + 16;
  v36 = __p;
  sub_23C4AE584(&v28);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    a2 = **(a2 + 16);
  }

  llvm::Type::print(a2, &v28);
  v20 = *(v36 + 23);
  if (v20 >= 0)
  {
    v21 = v36;
  }

  else
  {
    v21 = *v36;
  }

  if (v20 >= 0)
  {
    v22 = *(v36 + 23);
  }

  else
  {
    v22 = v36[1];
  }

  v23 = *(*sub_23C4B8F30(v17, v19) + 8);
  v24 = *(*sub_23C4B8E28(String, v16) + 8);
  if (v24 == 1)
  {
    v25 = 3;
  }

  else
  {
    v25 = v23;
  }

  *a4 = v8;
  *(a4 + 4) = v24;
  *(a4 + 8) = v25;
  v26 = sub_23C4D8220(v21, v22);
  v27 = v39;
  *(a4 + 12) = *(*v26 + 8);
  *(a4 + 16) = v27;
  *(a4 + 24) = sub_23C50B2E8(a1, 1, v27, v8);
  llvm::raw_ostream::~raw_ostream(&v28);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C4D819C()
{
  if ((atomic_load_explicit(&qword_27E1F7520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7520))
  {
    qword_27E1F7500 = 0;
    unk_27E1F7508 = 0;
    qword_27E1F7510 = 0x1000000000;
    __cxa_atexit(sub_23C4D8328, &qword_27E1F7500, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7520);
  }
}

uint64_t *sub_23C4D8220(const void *a1, size_t a2)
{
  i = (qword_27E1F7500 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7510) = qword_27E1F7510 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_27E1F750C;
    ;
  }

  return i;
}

uint64_t sub_23C4D8328(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4D83C4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 3872);
  if (v2)
  {
    return *(v2 + a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C4D83EC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 3864);
  if (v2)
  {
    return *(v2 + 2 * a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C4D8404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 3880);
  if (*v2 > a2)
  {
    return v2[a2 + 1];
  }

  return a2;
}

uint64_t sub_23C4D8428(void *a1)
{
  v2 = sub_23C510528(a1);
  v3 = *(a1 + *(*a1 - 24) + 344);
  (*(*v3 + 160))(v3, a1[370]);
  return v2;
}

void sub_23C4D8498(uint64_t *a1)
{
  *a1 = &unk_284F15690;
  v2 = (a1 + 490);
  a1[490] = &unk_284F158C0;
  a1[304] = &unk_284F15848;
  v3 = a1[488];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 486));
  }

  sub_23C4B7DD0(a1, off_284F15928);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4D8570(uint64_t *a1)
{
  *a1 = &unk_284F15690;
  v2 = (a1 + 490);
  a1[490] = &unk_284F158C0;
  a1[304] = &unk_284F15848;
  v3 = a1[488];
  if (v3 != -8192 && v3 != -4096 && v3 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 486));
  }

  sub_23C4B7DD0(a1, off_284F15928);
  sub_23C4B130C(v2);
  return a1;
}

uint64_t sub_23C4D8628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_23C4B1190(a1 + 3920, a2, *a3);
  v15 = sub_23C511214(a1, off_284F15928, a3, a4, a7, 1);
  *a1 = &unk_284F15690;
  *(a1 + 3920) = &unk_284F158C0;
  *(a1 + 2432) = &unk_284F15848;
  *(a1 + 3864) = a6;
  *(a1 + 3872) = a8;
  *(a1 + 3880) = a5;
  *(a1 + 3888) = 4;
  *(a1 + 3896) = 0u;
  sub_23C52F648(v15);
  v16 = (a3 + 168);
  v17 = *(a3 + 191);
  if (v17 < 0)
  {
    if (*(a3 + 176) != 22)
    {
LABEL_15:
      v23 = 0;
      goto LABEL_16;
    }

    v16 = *v16;
  }

  else if (v17 != 22)
  {
    goto LABEL_15;
  }

  v18 = *v16;
  v19 = v16[1];
  v20 = *(v16 + 14);
  v23 = v18 == 0x746E656D67617246 && v19 == 0x505F65746174535FLL && v20 == 0x6D6172676F72505FLL;
LABEL_16:
  *(a1 + 3912) = v23;
  return a1;
}

void sub_23C4D87A4(uint64_t isDeclaration, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v91[16] = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v8 = isDeclaration + 24;
  v9 = *(isDeclaration + 32);
  if (v9 != isDeclaration + 24)
  {
    v76 = isDeclaration + 24;
    while (1)
    {
      v10 = v9 ? v9 - 56 : 0;
      isDeclaration = llvm::GlobalValue::isDeclaration(v10);
      if ((isDeclaration & 1) == 0)
      {
        break;
      }

LABEL_115:
      v9 = *(v9 + 8);
      if (v9 == v8)
      {
        v72 = v81;
        v73 = HIDWORD(v81);
        v74 = v82;
        goto LABEL_118;
      }
    }

    v85 = 0;
    v86 = 0;
    v87 = 0;
    v84[0] = 0;
    v84[1] = 0;
    v83 = v84;
    if (*(v10 + 18))
    {
      llvm::Function::BuildLazyArguments(v10);
      v11 = *(v10 + 88);
      if (*(v10 + 18))
      {
        llvm::Function::BuildLazyArguments(v10);
        v12 = *(v10 + 88);
LABEL_12:
        v13 = (v12 + 40 * *(v10 + 96));
        while (v11 != v13)
        {
          if (*(*v11 + 8) == 15)
          {
            if (llvm::Argument::hasNoAliasAttr(v11))
            {
              sub_23C4D8DAC(v11, &v85, &v83, &v80);
            }
          }

          v11 = (v11 + 40);
        }

        v89 = v91;
        v90 = 0x1000000000;
        v14 = *(v10 + 80);
        v15 = v14 - 24;
        if (!v14)
        {
          v15 = 0;
        }

        v16 = *(v15 + 48);
        v17 = v15 + 40;
        if (v16 != v15 + 40)
        {
          do
          {
            v18 = *(v16 + 8);
            v19 = v16 - 24;
            if (v16)
            {
              v20 = v16 - 24;
            }

            else
            {
              v20 = 0;
            }

            if (*(v20 + 16) == 59)
            {
              sub_23C49B500(&v89, v19);
            }

            v16 = v18;
          }

          while (v18 != v17);
          if (v90)
          {
            v21 = v89;
            v22 = 8 * v90;
            do
            {
              v23 = *v21;
              if (*(*v21 + 1))
              {
                ++HIDWORD(v80);
                sub_23C4D8DAC(v23, &v85, &v83, &v80);
              }

              else
              {
                llvm::Instruction::eraseFromParent(v23);
                ++v82;
              }

              ++v21;
              v22 -= 8;
            }

            while (v22);
          }
        }

        LODWORD(v90) = 0;
        if (v86)
        {
          v24 = *(v10 + 80);
          v78 = v10 + 72;
          if (v24 != v10 + 72)
          {
            v77 = v9;
            v25 = 0;
            v79 = 0;
            while (1)
            {
              v26 = v24 - 24;
              if (v24)
              {
                v27 = v24 - 24;
              }

              else
              {
                v27 = 0;
              }

              v28 = *(v27 + 48);
              v29 = v27 + 40;
              if (v28 != v27 + 40)
              {
                do
                {
                  v30 = (v28 - 24);
                  if (v28)
                  {
                    v31 = v28 - 24;
                  }

                  else
                  {
                    v31 = 0;
                  }

                  v32 = *(v28 + 8);
                  LODWORD(v80) = v80 + 1;
                  v33 = *(v31 + 16);
                  if (v28 && v33 == 61)
                  {
                    v34 = *(v28 - 56);
                    v88 = 0;
                    v35 = v85;
                    v36 = v87;
                    v37 = sub_23C4D92F8(v85, v87, v34, &v88);
                    v38 = v88;
                    if (v37)
                    {
                      v39 = v88 == v35 + 32 * v36;
                    }

                    else
                    {
                      v39 = 1;
                    }

                    if (!v39)
                    {
                      *(v88 + 8) = *(v28 - 88);
                      *(v38 + 16) = v25;
                    }

                    goto LABEL_84;
                  }

                  if (v33 != 60)
                  {
                    if (v33 != 84)
                    {
                      v30 = 0;
                    }

                    v46 = v84[0];
                    if (v33 == 84 && v84[0] != 0)
                    {
                      v48 = v84;
                      do
                      {
                        v49 = v46;
                        v50 = v48;
                        v51 = v46[4];
                        if (v51 >= v30)
                        {
                          v48 = v46;
                        }

                        v46 = v46[v51 < v30];
                      }

                      while (v46);
                      if (v48 != v84)
                      {
                        if (v51 < v30)
                        {
                          v49 = v50;
                        }

                        if (v30 >= v49[4])
                        {
                          v52 = 0;
                          for (i = v30; ; i = (i + 32))
                          {
                            v54 = sub_23C4B88A0(v30);
                            v55 = *(v30 + 5) & 0x7FFFFFF;
                            if (v52 >= ((v54 - (v30 + 32 * -v55)) >> 5))
                            {
                              break;
                            }

                            v56 = *(i - 4 * v55);
                            v88 = 0;
                            v57 = v85;
                            v58 = v87;
                            v59 = sub_23C4D92F8(v85, v87, v56, &v88);
                            v60 = v88;
                            if (v59)
                            {
                              v61 = v88 == v57 + 32 * v58;
                            }

                            else
                            {
                              v61 = 1;
                            }

                            if (!v61)
                            {
                              *(v88 + 8) = 0;
                              *(v60 + 16) = v25;
                            }

                            ++v52;
                          }
                        }
                      }
                    }

                    goto LABEL_84;
                  }

                  v40 = *(v28 - 56);
                  v88 = 0;
                  v41 = v85;
                  v42 = v87;
                  v43 = sub_23C4D92F8(v85, v87, v40, &v88);
                  v44 = v88;
                  if (v43)
                  {
                    v45 = v88 == v41 + 32 * v42;
                  }

                  else
                  {
                    v45 = 1;
                  }

                  if (!v45)
                  {
                    if (*(v88 + 16) == v25)
                    {
                      if (!*(v88 + 8))
                      {
                        goto LABEL_83;
                      }
                    }

                    else
                    {
                      if (*(v88 + 21) != 1)
                      {
LABEL_83:
                        *(v88 + 8) = v30;
                        *(v44 + 16) = v25;
                        *(v44 + 20) = 0;
                        goto LABEL_84;
                      }

                      v62 = *v30;
                      llvm::UndefValue::get();
                    }

                    llvm::Value::replaceAllUsesWith();
                    llvm::Instruction::eraseFromParent(v30);
                    --*(v44 + 24);
                    LODWORD(v81) = v81 + 1;
                    v79 = 1;
                  }

LABEL_84:
                  v28 = v32;
                }

                while (v32 != v29);
              }

              v24 = *(v24 + 8);
              if (v24 == v78)
              {
                break;
              }

              if (v24)
              {
                v63 = (v24 - 24);
              }

              else
              {
                v63 = 0;
              }

              if (llvm::BasicBlock::getSinglePredecessor(v63) != v26)
              {
                ++v25;
              }
            }

            v8 = v76;
            v9 = v77;
            if ((v79 & 1) != 0 && v86)
            {
              if (v87)
              {
                v64 = 32 * v87;
                v65 = v85;
                while ((*v65 | 0x1000) == 0xFFFFFFFFFFFFF000)
                {
                  v65 = (v65 + 32);
                  v64 -= 32;
                  if (!v64)
                  {
                    goto LABEL_112;
                  }
                }
              }

              else
              {
                v65 = v85;
              }

              v66 = (v85 + 32 * v87);
              if (v65 != v66)
              {
                v67 = HIDWORD(v81);
                v68 = v82;
LABEL_102:
                if (*(v65 + 20) == 1 && !*(v65 + 6))
                {
                  v69 = *v65;
                  v70 = *(*v65 + 8);
                  if (v70)
                  {
                    do
                    {
                      v71 = *(v70 + 24);
                      v70 = *(v70 + 8);
                      llvm::Instruction::eraseFromParent(v71);
                      ++v67;
                    }

                    while (v70);
                    v69 = *v65;
                  }

                  v68 += sub_23C4D9264(v69);
                }

                while (1)
                {
                  v65 = (v65 + 32);
                  if (v65 == v66)
                  {
                    break;
                  }

                  if ((*v65 | 0x1000) != 0xFFFFFFFFFFFFF000)
                  {
                    if (v65 != v66)
                    {
                      goto LABEL_102;
                    }

                    break;
                  }
                }

                HIDWORD(v81) = v67;
                v82 = v68;
              }
            }
          }
        }

LABEL_112:
        if (v89 != v91)
        {
          free(v89);
        }

        sub_23C4B1570(v84[0]);
        isDeclaration = llvm::deallocate_buffer(v85, (32 * v87));
        goto LABEL_115;
      }
    }

    else
    {
      v11 = *(v10 + 88);
    }

    v12 = v11;
    goto LABEL_12;
  }

  v74 = 0;
  v73 = 0;
  v72 = 0;
LABEL_118:
  if (v73 + v72 + v74)
  {
    sub_23C4AA240(isDeclaration, "SimplifyGenericIR: %u alloca's, Removed %u loads, %u stores, %u other out of %u insts, total %4.2f %c insts\n", a3, a4, a5, a6, a7, a8, SBYTE4(v80));
  }

  else
  {
    sub_23C4AA240(isDeclaration, "SimplifyGenericIR: %u alloca's, unable to simplify the IR\n", a3, a4, a5, a6, a7, a8, SBYTE4(v80));
  }

  v75 = *MEMORY[0x277D85DE8];
}