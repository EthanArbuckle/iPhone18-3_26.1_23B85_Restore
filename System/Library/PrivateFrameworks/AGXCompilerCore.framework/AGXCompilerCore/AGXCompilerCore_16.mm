uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8B78;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_2825A8B30;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = iterateResourceUsers(v4, v7);
    result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v11 = 257;
  AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_17>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8B30;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_18>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8AE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A8AA0;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A7D20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 238);
  v9 = llvm::ConstantInt::get();
  v23 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v22);
  v11 = v5 + *(*v5 - 24);
  v12 = v5[253];
  v13 = *(v11 + 238);
  v24[0] = llvm::ConstantInt::get();
  v24[1] = Add;
  v23 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v11 + 1704), v12, v24, 2, v22);
  v21 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v11 + 1704), GEP, v20);
  v16 = v5 + *(*v5 - 24);
  v17 = *v3;
  v23 = 257;
  result = llvm::IRBuilderBase::CreateCast((v16 + 1712), 48, Load, v17, v22);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_15>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8AA0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_16>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8A58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8A10;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8A10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_14>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A89C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_2825A8980;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = iterateResourceUsers(v4, v7);
    result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v11 = 257;
  AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_12>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8980;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_13>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8938;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A88F0;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A7D20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 238);
  v9 = llvm::ConstantInt::get();
  v22 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v21);
  v11 = *(v5 + *(*v5 - 24) + 1904);
  v12 = llvm::ConstantInt::get();
  v23 = v25;
  v24 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(&v23, 1uLL, v12);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v23, Add);
  v13 = v5 + *(*v5 - 24);
  v14 = v5[253];
  v22 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v13 + 1704), v14, v23, v24, v21);
  v16 = v5 + *(*v5 - 24);
  v17 = *v3;
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 49, GEP, v17, v21);
  if (v23 != v25)
  {
    free(v23);
  }

  v19 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A88F0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_11>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A88A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A8860;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A7D20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 238);
  v9 = llvm::ConstantInt::get();
  v22 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v21);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 48, Add, v12, v21);
  v14 = (v5 + *(*v5 - 24));
  v15 = v5[263];
  v16 = AGCLLVMUserObject::buildSamplerArgumentPointer(v5, Cast, 3u);
  v22 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v14 + 214, v15, v16, 0, v21);
  v18 = v5 + *(*v5 - 24);
  v19 = *v3;
  v22 = 257;
  return llvm::IRBuilderBase::CreateCast((v18 + 1712), 48, AlignedLoad, v19, v21);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8860;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_9>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A87D0;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A87D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_7>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8788;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8740;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8740;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_6>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A86F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A86B0;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A7D20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 238);
  v9 = llvm::ConstantInt::get();
  v15 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v14);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v15 = 257;
  return llvm::IRBuilderBase::CreateCast((v11 + 1712), 48, Add, v12, v14);
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_4>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A86B0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_5>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8620;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8620;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_3>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A85D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A8548;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A7D20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = *(v5 + *(*v5 - 24) + 1904);
  v7 = llvm::ConstantInt::get();
  v8 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v9 = v5 + *(*v5 - 24);
  v22 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v9 + 1712), v7, v8, v21);
  v11 = v5 + *(*v5 - 24);
  v12 = *(v11 + 239);
  v21[0] = "extended_offset";
  v22 = 259;
  Cast = llvm::IRBuilderBase::CreateCast((v11 + 1712), 39, Add, v12, v21);
  v14 = v5 + *(*v5 - 24);
  v15 = *(v14 + 239);
  v16 = llvm::ConstantInt::get();
  v22 = 257;
  v17 = llvm::IRBuilderBase::CreateAdd((v14 + 1712), Cast, v16, v21);
  v18 = v5 + *(*v5 - 24);
  v19 = *v3;
  v22 = 257;
  return llvm::IRBuilderBase::CreateCast((v18 + 1712), 48, v17, v19, v21);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8548;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8590;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A8548;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A7D20;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8500;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A84B8;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A84B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8470;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8428;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8428;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A83E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v11 = 257;
  AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_1>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8398;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_2>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8350;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = *a2;
    v4 = *(result + 16);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    operator new();
  }

  *v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = *a2 - 32 * (*(*a2 + 5) & 0x7FFFFFF);
  if ((**(a1 + 8) & 1) == 0)
  {
    v6 = *(v5 + 96);
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    if (!*v7)
    {
      goto LABEL_41;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(v5 + 64);
  v10 = (v9 + 24);
  v11 = *(v9 + 32);
  v12 = v10;
  if (v11 >= 0x41)
  {
    v12 = *v10;
  }

  v15 = *(v8 + 8);
  v13 = v8 + 8;
  v14 = v15;
  if (v15)
  {
    v16 = *v12;
    v17 = v13;
    do
    {
      v18 = *(v14 + 32);
      v19 = v18 >= v16;
      v20 = v18 < v16;
      if (v19)
      {
        v17 = v14;
      }

      v14 = *(v14 + 8 * v20);
    }

    while (v14);
    if (v17 != v13 && *(v17 + 32) <= v16)
    {
      v22 = *(a1 + 24);
      if (v11 >= 0x41)
      {
        v10 = *v10;
      }

      LODWORD(__p) = *v10;
      v73[0] = &__p;
      v23 = std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, __p);
      v24 = *(v23 + 9) - *(v23 + 8) + 1;
      llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), v3);
      if (**(a1 + 40) == 1)
      {
        v25 = *(v4 + *(*v4 - 24) + 1888);
        v26 = llvm::PointerType::get();
        NullValue = llvm::Constant::getNullValue(v26, v27);
        v29 = v4 + *(*v4 - 24);
        v30 = *(v29 + 271);
        v31 = *(v29 + 267);
        v73[0] = **(v17 + 40);
        v32 = (*(*v30 + 1416))();
        v33 = v4 + *(*v4 - 24);
        v34 = *(v17 + 40);
        v72[0] = NullValue;
        v72[1] = v34;
        v75 = 257;
        v35 = llvm::IRBuilderBase::CreateCall((v33 + 1712), *(v32 + 24), v32, v72, 2, v73);
        v36 = *(v4 + *(*v4 - 24) + 1904);
        v71 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v33 + 1712), 47, v35, v36, &__p);
        if (v24 >= 2)
        {
          v38 = v4 + *(*v4 - 24);
          v39 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
          v75 = 257;
          Cast = llvm::IRBuilderBase::CreateAdd((v38 + 1712), Cast, v39, v73);
        }

        v40 = *v4;
        v41 = v4 + *(*v4 - 24);
        if (**(a1 + 48))
        {
          v42 = v4[363];
          if (!v42)
          {
            std::string::basic_string[abi:nn200100]<0>(&__p, "agc.global_sampler_api_reference_array");
            v43 = (*(**(v4 + *(*v4 - 24) + 2168) + 488))();
            v44 = v43;
            llvm::ArrayType::get(*(v4 + *(*v4 - 24) + 1912), v43);
            v45 = llvm::User::operator new(0x58);
            v46 = *(v4 + *(*v4 - 24) + 2136);
            v75 = 260;
            v73[0] = &__p;
            v47 = llvm::GlobalVariable::GlobalVariable();
            *(v47 + 80) |= 1u;
            v73[0] = v74;
            v73[1] = 0x1C00000000;
            if (v43)
            {
              v48 = 0;
              do
              {
                v49 = *(v4 + *(*v4 - 24) + 1912);
                v50 = llvm::ConstantInt::get();
                llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v73, v50);
                ++v48;
              }

              while (v44 != v48);
            }

            llvm::ConstantArray::get();
            llvm::GlobalVariable::setInitializer();
            llvm::ValueHandleBase::operator=((v4 + 361), v45);
            if (v73[0] != v74)
            {
              free(v73[0]);
            }

            if (v70 < 0)
            {
              operator delete(__p);
            }

            v42 = v4[363];
            v40 = *v4;
          }

          v65 = *(v4 + *(v40 - 24) + 1904);
          __p = llvm::ConstantInt::get();
          v69 = Cast;
          v75 = 257;
          GEP = AGCLLVMBuilder::CreateGEP((v41 + 1704), v42, &__p, 2, v73);
          v66 = v4 + *(*v4 - 24);
          v55 = *v3;
          v75 = 257;
          v56 = (v66 + 1712);
          v57 = 49;
          goto LABEL_40;
        }

        v55 = *v3;
        v75 = 257;
        v56 = (v41 + 1712);
        v57 = 48;
      }

      else
      {
        Cast = *(v17 + 40);
        if (v24 >= 2)
        {
          v51 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
          v52 = v4 + *(*v4 - 24);
          v53 = *(v52 + 238);
          __p = llvm::ConstantInt::get();
          v69 = v51;
          v75 = 257;
          Cast = AGCLLVMBuilder::CreateGEP((v52 + 1704), Cast, &__p, 2, v73);
        }

        v54 = v4 + *(*v4 - 24);
        if ((**(a1 + 48) & 1) == 0)
        {
          v59 = *(v54 + 238);
          v60 = llvm::PointerType::get();
          v61 = v4 + *(*v4 - 24);
          v62 = *(v61 + 238);
          v75 = 257;
          v63 = llvm::IRBuilderBase::CreateCast((v61 + 1712), 49, Cast, v60, v73);
          v71 = 257;
          llvm::Type::isOpaquePointerTy(*v63);
          GEP = llvm::IRBuilderBase::CreateAlignedLoad(v61 + 214, v62, v63, 0, &__p);
          v64 = v4 + *(*v4 - 24);
          v55 = *v3;
          v75 = 257;
          v56 = (v64 + 1712);
          v57 = 48;
          goto LABEL_40;
        }

        v55 = *v3;
        v75 = 257;
        v56 = (v54 + 1712);
        v57 = 49;
      }

      GEP = Cast;
LABEL_40:
      llvm::IRBuilderBase::CreateCast(v56, v57, GEP, v55, v73);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v3);
LABEL_41:
      result = 1;
      goto LABEL_42;
    }
  }

  result = 0;
LABEL_42:
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A82C0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8308;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = *a2;
    v4 = *(result + 16);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    operator new();
  }

  *v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8278;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6 = &unk_2825A81E8;
  v7 = *v3;
  v8 = &v6;
  iterateResourceUsers(v2, &v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF);
  if (**(a1 + 8))
  {
    goto LABEL_5;
  }

  v5 = *(v4 + 96);
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  if (*v6)
  {
LABEL_5:
    v7 = *(a1 + 16);
    v8 = *(v4 + 64);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v12 = *(v7 + 8);
    v10 = (v7 + 8);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = *v9;
    v14 = v10;
    do
    {
      v15 = v11[7];
      v16 = v15 >= v13;
      v17 = v15 < v13;
      if (v16)
      {
        v14 = v11;
      }

      v11 = *&v11[2 * v17];
    }

    while (v11);
    if (v14 != v10 && v14[7] <= v13)
    {
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v23 = v14[8];
      v24 = v14[9];
      if (v26 < v23)
      {
        v23 = v26;
      }

      if (v24 <= HIDWORD(v26))
      {
        v24 = HIDWORD(v26);
      }

      v14[8] = v23;
      v14[9] = v24;
    }

    else
    {
LABEL_15:
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v18 = v26;
      v19 = *(a1 + 16);
      v20 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF) + 64);
      v21 = (v20 + 24);
      if (*(v20 + 32) >= 0x41u)
      {
        v21 = *v21;
      }

      v25 = *v21;
      v26 = &v25;
      std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v19, v25)[4] = v18;
    }
  }

  return 1;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A81E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8230;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6 = &unk_2825A81E8;
  v7 = *v3;
  v8 = &v6;
  iterateResourceUsers(v2, &v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A81A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_2825A8110;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = iterateResourceUsers(v4, v7);
    result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v9, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::find<unsigned int>(v3, v9);
  v5 = v4;
  if (v4)
  {
    v6 = v4[3];
    v7 = *v2;
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v5 != 0;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8110;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8158;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_2825A8110;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = iterateResourceUsers(v4, v7);
    result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A80C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8080;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8080;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8038;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A7FF0;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7FF0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7FA8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0>,BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(uint64_t a1, void **a2, llvm::SmallPtrSetImplBase *this)
{
  v4 = *a2;
  llvm::SmallPtrSetImpl<void *>::insert(v10, this, *a2);
  if (v10[16] != 1)
  {
    return 0;
  }

  v5 = v4;
  while (1)
  {
    v5 = v5[1];
    result = v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = v5[3];
    v8 = *(v7 + 16);
    if (!v7 || v8 != 92)
    {
      if (!v7 || v8 != 83)
      {
        if (v7 && v8 == 85)
        {
          if (*(v7 - 96) == v4)
          {
            return 1;
          }
        }

        else
        {
          result = 1;
          if (!v7 || v8 != 95)
          {
            return result;
          }
        }
      }

      v9 = *(*(a1 + 8) + 24);

      return std::function<BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(v9, v7);
    }

    if (*(v7 + 72) != 1 || **(v7 + 64))
    {
      return 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_0>,BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7F60;
  a2[1] = v2;
  return result;
}

BOOL AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::$_5::operator()(uint64_t a1)
{
  v2 = *(a1 - 32);
  if (!v2 || *(v2 + 16) || *(v2 + 24) != *(a1 + 72))
  {
    v2 = 0;
  }

  Name = llvm::Value::getName(v2);
  if (v4 < 0x10)
  {
    if (v4 < 0xE)
    {
      return 0;
    }

LABEL_12:
    v6 = *Name == 0x622E67772E726961 && *(Name + 6) == 0x726569727261622ELL;
    if (v6 || v4 >= 0x15 && (*Name == 0x646D69732E726961 ? (v7 = Name[1] == 0x61622E70756F7267) : (v7 = 0), v7 ? (v8 = *(Name + 13) == 0x726569727261622ELL) : (v8 = 0), v8))
    {
      v9 = (a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
      v10 = (*v9 + 24);
      if (*(*v9 + 32) >= 0x41u)
      {
        v10 = *v10;
      }

      v11 = *v10;
      v12 = v9[4];
      v13 = (v12 + 24);
      if (*(v12 + 32) >= 0x41u)
      {
        v13 = *v13;
      }

      if ((v11 & 5) != 0)
      {
        return (*v13 & 0xFFFFFFFELL) == 2;
      }
    }

    return 0;
  }

  if (*Name != 0x6D6F74612E726961 || Name[1] != 0x65636E65662E6369)
  {
    goto LABEL_12;
  }

  v15 = (a1 - 32 * (*(a1 + 20) & 0x7FFFFFF));
  v16 = (*v15 + 24);
  if (*(*v15 + 32) >= 0x41u)
  {
    v16 = *v16;
  }

  v17 = v15[4];
  v18 = (v17 + 24);
  if (*(v17 + 32) >= 0x41u)
  {
    v18 = *v18;
  }

  v19 = *v16;
  v20 = v15[8];
  v21 = (v20 + 24);
  if (*(v20 + 32) >= 0x41u)
  {
    v21 = *v21;
  }

  if ((v19 & 5) != 0)
  {
    v22 = *v18 - 3;
    if ((*v21 & 0xFFFFFFFELL) == 2 && v22 < 3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::operator[](uint64_t a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(*a1, *(a1 + 16), *a2, &v10);
  v5 = v10;
  if (v4)
  {
    return v5 + 8;
  }

  v11 = v10;
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
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(*a1, *(a1 + 16), *a2, &v11);
    v6 = *(a1 + 8);
    v5 = v11;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  v8 = *a2;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 24) = 0u;
  *v5 = v8;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x800000000;
  *(v5 + 88) = v5 + 120;
  *(v5 + 96) = v5 + 120;
  *(v5 + 104) = 8;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 184 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 184 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 184 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 184 * v10 - 184;
      v13 = vdupq_n_s64(v12 / 0xB8);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[23] = -4096;
        }

        v11 += 2;
        result += 46;
      }

      while (((v12 / 0xB8 + 2) & 0x3FFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = 184 * v3;
      v16 = (v4 + 88);
      do
      {
        v17 = *(v16 - 11);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>,llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,AGCLLVMUserObject::optimizeReleaseAtomicsByDisableSmashing(void)::InfoPerFunc>>::LookupBucketFor<llvm::Function *>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = v17;
          v18[1] = (v18 + 3);
          v18[2] = 0x800000000;
          if (*(v16 - 18))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=((v18 + 1), (v16 - 10));
          }

          llvm::SmallPtrSetImplBase::SmallPtrSetImplBase();
          ++*(a1 + 8);
          v19 = v16[1];
          if (v19 != *v16)
          {
            free(v19);
          }

          v20 = *(v16 - 10);
          if (v16 - 8 != v20)
          {
            free(v20);
          }
        }

        v16 += 23;
        v15 -= 184;
      }

      while (v15);
    }

    return llvm::deallocate_buffer(v4, (184 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = 184 * v21 - 184;
      v24 = vdupq_n_s64(v23 / 0xB8);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_20E70C4F0)));
        if (v25.i8[0])
        {
          *result = -4096;
        }

        if (v25.i8[4])
        {
          result[23] = -4096;
        }

        v22 += 2;
        result += 46;
      }

      while (((v23 / 0xB8 + 2) & 0x3FFFFFFFFFFFFFELL) != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>,llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>::LookupBucketFor<llvm::BasicBlock *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 72 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 72 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 72 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    v15 = 9 * v3;
    if (v3)
    {
      v16 = v4 + 24;
      v17 = 8 * v15;
      do
      {
        v18 = *(v16 - 3);
        if ((v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v27 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>,llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>,llvm::DenseMapInfo<llvm::BasicBlock *,void>,llvm::detail::DenseMapPair<llvm::BasicBlock *,llvm::SmallVector<llvm::CallInst *,6u>>>::LookupBucketFor<llvm::BasicBlock *>(*a1, *(a1 + 16), v18, &v27);
          v19 = v27;
          *v27 = *(v16 - 3);
          v19[2] = 0x600000000;
          v19[1] = v19 + 3;
          v20 = (v19 + 1);
          if (*(v16 - 2))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v20, (v16 - 16));
          }

          ++*(a1 + 8);
          v21 = *(v16 - 2);
          if (v16 != v21)
          {
            free(v21);
          }
        }

        v16 += 72;
        v17 -= 72;
      }

      while (v17);
    }

    return llvm::deallocate_buffer(v4, (8 * v15));
  }

  else
  {
    *(a1 + 8) = 0;
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = 72 * v22 - 72;
      v25 = vdupq_n_s64(v24 / 0x48);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v23), xmmword_20E70C4F0)));
        if (v26.i8[0])
        {
          *result = -4096;
        }

        if (v26.i8[4])
        {
          result[9] = -4096;
        }

        v23 += 2;
        result += 18;
      }

      while (((v24 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v23);
    }
  }

  return result;
}

void AGCLLVMUserObject::remapDriverBindpoint(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 168);
  if (*(v4 + 18))
  {
    llvm::Function::BuildLazyArguments(*(a1 + 168));
    v6 = *(a1 + 168);
    v5 = *(v4 + 88);
    if (*(v6 + 18))
    {
      llvm::Function::BuildLazyArguments(*(a1 + 168));
    }

    v4 = v6;
  }

  else
  {
    v5 = *(v4 + 88);
  }

  v7 = *(v4 + 88) + 40 * *(v4 + 96);
  if (v5 == v7)
  {
    return;
  }

  v76 = a1 + 1712;
  v75 = *(v4 + 88) + 40 * *(v4 + 96);
  do
  {
    v8 = *(*(a1 + 80) + 8 * *(v5 + 32));
    if (*(v5 + 8))
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_107;
    }

    v10 = *(*(a1 + 168) + 80);
    v11 = v10 ? v10 - 24 : 0;
    v12 = *a1;
    v13 = *(v11 + 40);
    v14 = v13 ? (v13 - 24) : 0;
    llvm::IRBuilderBase::SetInsertPoint((v76 + *(*a1 - 24)), v14);
    if (!isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), "air.buffer") && !isStringMDNode(*(v8 - 8 * *(v8 + 8) + 8), "air.indirect_buffer"))
    {
      goto LABEL_107;
    }

    v83 = 0;
    v84 = 0;
    LODWORD(v15) = *(v8 + 8);
    if (v15 < 3)
    {
      goto LABEL_34;
    }

    v16 = 2;
    while (1)
    {
      v17 = *(v8 - 8 * v15 + 8 * v16);
      if (!*v17)
      {
        break;
      }

LABEL_33:
      if (++v16 >= v15)
      {
        goto LABEL_34;
      }
    }

    String = llvm::MDString::getString(v17);
    if (v19 != 12)
    {
      LODWORD(v15) = *(v8 + 8);
      goto LABEL_33;
    }

    v20 = *String == 0x5F6772612E726961 && *(String + 8) == 1701667182;
    v15 = *(v8 + 8);
    if (!v20)
    {
      goto LABEL_33;
    }

    v21 = *(v8 - 8 * v15 + 8 * (v16 + 1));
    if (!v21 || *v21)
    {
      v16 += 2;
      goto LABEL_33;
    }

    v83 = llvm::MDString::getString(v21);
    v84 = v73;
LABEL_34:
    Key = llvm::StringMapImpl::FindKey();
    v23 = *a2;
    if (Key == -1)
    {
      v24 = *(a2 + 2);
    }

    else
    {
      v24 = Key;
    }

    v25 = *(v23 + 8 * v24);
    v26 = *(v25 + 12);
    if (v26 <= 1)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          std::string::basic_string[abi:nn200100]<0>(&v77, "agc.");
          llvm::StringRef::str(__p, &v83);
          if ((v80 & 0x80u) == 0)
          {
            v27 = __p;
          }

          else
          {
            v27 = __p[0];
          }

          if ((v80 & 0x80u) == 0)
          {
            v28 = v80;
          }

          else
          {
            v28 = __p[1];
          }

          v29 = std::string::append(&v77, v27, v28);
          v30 = v29->__r_.__value_.__r.__words[2];
          v81 = *&v29->__r_.__value_.__l.__data_;
          v82 = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          if (v80 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v77.__r_.__value_.__l.__data_);
          }

          v31 = *(v5 + 8);
          if (v31)
          {
            v32 = **(v31 + 24);
          }

          else
          {
            v32 = 0;
          }

          v58 = 1;
          v59 = llvm::User::operator new(0x58);
          v60 = *a1;
          v61 = *(a1 + 2136 + *(*a1 - 24));
          v62 = &v81;
          if (v82 < 0)
          {
            v62 = v81;
          }

          v78 = 257;
          if (*v62)
          {
            v77.__r_.__value_.__r.__words[0] = v62;
            v58 = 3;
          }

          LOBYTE(v78) = v58;
          v74 = *(*(a1 + 2168 + *(v60 - 24)) + 972) | 0x100000000;
          llvm::GlobalVariable::GlobalVariable();
          *(v59 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v63 = (a1 + 1704 + *(*a1 - 24));
          v64 = *(v23 + 8 * v24);
          v65 = *(v64 + 20);
          v66 = *(v64 + 24);
          v67 = *(v63 + 55);
          v68 = AGCLLVMBuilder::buildGlobalMetadata(v63, v59);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v67, v68);
          v69 = *(*a1 - 24);
          v78 = 257;
          llvm::Type::isOpaquePointerTy(*v59);
          llvm::IRBuilderBase::CreateAlignedLoad((v76 + v69), v32, v59, 0, &v77);
          v70 = *(v5 + 8);
          if (v70)
          {
            do
            {
              v71 = *(v70 + 8);
              v72 = *(v70 + 24);
              llvm::Value::replaceAllUsesWith();
              llvm::Instruction::eraseFromParent(v72);
              v70 = v71;
            }

            while (v71);
          }

          v7 = v75;
          if (SHIBYTE(v82) < 0)
          {
            operator delete(v81);
          }
        }
      }

      else
      {
        AGCLLVMUserObject::replaceBufferInputArgument(a1, v5, *(v5 + 32), v8, *(v25 + 16));
      }

      goto LABEL_107;
    }

    if (v26 == 2)
    {
      v53 = *(v25 + 16);
      v54 = *(a1 + 1904 + *(*a1 - 24));
      llvm::ConstantInt::get();
      v55 = *(v5 + 8);
      if (v55)
      {
        do
        {
          v56 = *(v55 + 8);
          v57 = *(v55 + 24);
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v57);
          v55 = v56;
        }

        while (v56);
      }

      goto LABEL_107;
    }

    if (v26 != 3)
    {
      goto LABEL_107;
    }

    *&v77.__r_.__value_.__r.__words[1] = 0uLL;
    v77.__r_.__value_.__r.__words[0] = &v77.__r_.__value_.__l.__size_;
    v81 = 0uLL;
    v82 = 0;
    __p[0] = v5;
    std::vector<llvm::User *>::push_back[abi:nn200100](&v81, __p);
LABEL_55:
    v33 = *(&v81 + 1);
    v34 = v81;
    while (v81 != v33)
    {
      v35 = *(v33 - 8);
      v33 -= 8;
      *(&v81 + 1) = v33;
      v36 = *(v35 + 8);
      if (v36)
      {
        do
        {
          __p[0] = *(v36 + 24);
          std::vector<llvm::User *>::push_back[abi:nn200100](&v81, __p);
          v37 = *(v36 + 24);
          size = v77.__r_.__value_.__l.__size_;
          if (!v77.__r_.__value_.__l.__size_)
          {
LABEL_64:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v39 = size;
              v40 = *(size + 32);
              if (v37 >= v40)
              {
                break;
              }

              size = *v39;
              if (!*v39)
              {
                goto LABEL_64;
              }
            }

            if (v40 >= v37)
            {
              break;
            }

            size = v39[1];
            if (!size)
            {
              goto LABEL_64;
            }
          }

          v36 = *(v36 + 8);
        }

        while (v36);
        goto LABEL_55;
      }
    }

    v41 = v77.__r_.__value_.__r.__words[0];
    if (v77.__r_.__value_.__l.__data_ == &v77.__r_.__value_.__r.__words[1])
    {
      goto LABEL_84;
    }

    while (2)
    {
      v42 = *(v41 + 32);
      v43 = *(v42 + 20);
      if ((v43 & 0x40000000) != 0)
      {
        v45 = *(v42 - 8);
        v44 = v43 & 0x7FFFFFF;
        if (!v44)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v44 = v43 & 0x7FFFFFF;
        v45 = v42 - 32 * v44;
        if (!v44)
        {
          goto LABEL_77;
        }
      }

      v46 = 32 * v44;
      v47 = (v45 + 16);
      do
      {
        if (*(v47 - 2))
        {
          v48 = *(v47 - 1);
          **v47 = v48;
          if (v48)
          {
            *(v48 + 16) = *v47;
          }
        }

        *(v47 - 2) = 0;
        v47 += 4;
        v46 -= 32;
      }

      while (v46);
LABEL_77:
      v49 = *(v41 + 8);
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = v49->__r_.__value_.__r.__words[0];
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = *(v41 + 16);
          v9 = v50->__r_.__value_.__r.__words[0] == v41;
          v41 = v50;
        }

        while (!v9);
      }

      v41 = v50;
      if (v50 != &v77.__r_.__value_.__r.__words[1])
      {
        continue;
      }

      break;
    }

    v41 = v77.__r_.__value_.__r.__words[0];
LABEL_84:
    if (v41 != &v77.__r_.__value_.__r.__words[1])
    {
      do
      {
        llvm::Instruction::eraseFromParent(*(v41 + 32));
        v51 = *(v41 + 8);
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = v51->__r_.__value_.__r.__words[0];
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = *(v41 + 16);
            v9 = v52->__r_.__value_.__r.__words[0] == v41;
            v41 = v52;
          }

          while (!v9);
        }

        v41 = v52;
      }

      while (v52 != &v77.__r_.__value_.__r.__words[1]);
    }

    if (v34)
    {
      *(&v81 + 1) = v34;
      operator delete(v34);
    }

    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v77.__r_.__value_.__l.__size_);
LABEL_107:
    v5 += 40;
  }

  while (v5 != v7);
}

uint64_t AGCLLVMUserObject::detectTextureWrites(AGCLLVMUserObject *this)
{
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(this + 4448));
  v3 = *(this + *(*this - 24) + 2136);
  v4 = *(v3 + 32);
  v5 = v3 + 24;
  if (v4 == v3 + 24)
  {
    return 0;
  }

  v6 = SampleFunctionMap;
  while (1)
  {
    v7 = v4 ? (v4 - 56) : 0;
    v8 = *(v4 + 8);
    llvm::Value::getName(v7);
    Key = llvm::StringMapImpl::FindKey();
    v10 = Key == -1 || Key == *(v6 + 2);
    if (!v10 && *(*(*v6 + 8 * Key) + 8) == 3 && *(v4 - 48))
    {
      break;
    }

    v4 = v8;
    if (v8 == v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObject::isThreadgroupMemoryUsed(AGCLLVMUserObject *this)
{
  v1 = *(this + *(*this - 24) + 2136);
  v2 = v1 + 8;
  for (i = *(v1 + 16); ; i = *(i + 8))
  {
    if (i == v2)
    {
      return 0;
    }

    v4 = (i - 56);
    if (!i)
    {
      v4 = 0;
    }

    v5 = *v4;
    if (*v4)
    {
      v6 = *(v5 + 8);
      if ((v6 & 0xFE) == 0x12)
      {
        v6 = *(**(v5 + 16) + 8);
      }

      if ((v6 & 0xFFFFFF00) == 0x300 && v4[1])
      {
        break;
      }
    }
  }

  return 1;
}

uint64_t AGCLLVMUserObject::buildRecordRaytraceForGin1122(uint64_t a1, __int128 *a2)
{
  v4 = a1 + *(*a1 - 24);
  v19 = *a2;
  v20 = *(a2 + 2);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v19, v4 + 1712);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  if (!(*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) || (result = (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)), result == 8))
  {
    result = (*(*a1 + 392))(a1);
    if ((result & 1) == 0)
    {
      if ((*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24)) == 8)
      {
        v6 = a1 + *(*a1 - 24);
        v7 = *(v6 + 1760);
        v8 = *(v6 + 1768);
        v17 = "record_ray_trace_exit";
        v18 = 259;
        llvm::BasicBlock::splitBasicBlock();
        v9 = *(a1 + *(*a1 - 24) + 2160);
        v17 = "record_ray_trace";
        v18 = 259;
        v10 = *(v7 + 56);
        operator new();
      }

      v11 = a1 + *(*a1 - 24);
      v12 = *(v11 + 2168);
      v14 = *(v11 + 1760);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (v11 + 1712));
      v16 = *(v11 + 1808);
      (*(*v12 + 1408))(v12, &v14, a1 + 3984);
      if (v15)
      {
        llvm::MetadataTracking::untrack();
      }

      result = (*(*(a1 + *(*a1 - 24)) + 80))(a1 + *(*a1 - 24));
      if (result == 8)
      {
        result = llvm::IRBuilderBase::CreateBr((a1 + *(*a1 - 24) + 1712), 0);
        v13 = a1 + *(*a1 - 24);
        *(v13 + 1760) = 0;
        *(v13 + 1768) = 40;
      }
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::getFragmentBuiltinPsoStateType(AGCLLVMUserObject *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = llvm::ArrayType::get(*(this + *(*this - 24) + 1912), 0x10);
  llvm::ArrayType::get(*(this + *(*this - 24) + 1896), 8);
  v3 = *v2;
  llvm::StructType::get();
  v4 = **(this + *(*this - 24) + 1904);
  result = llvm::StructType::get();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::getFragmentBuiltinEncoderStateType(AGCLLVMUserObject *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *llvm::ArrayType::get(*(this + *(*this - 24) + 1872), 0x10);
  result = llvm::StructType::get();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMUserObject::replaceSimdgroupAtomicWaitNotify(void)::$_0::operator()(void *a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1[21] + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + *(*a1 - 24) + 1712), v5);
  v6 = (a1 + *(*a1 - 24));
  v7 = v6[271];
  v8 = *(v7 + 1032);
  if (v8)
  {
    v9 = strlen(*(v7 + 1032));
  }

  else
  {
    v9 = 0;
  }

  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v6 + 213), v8, v9, v6[231], v6[237], v6[237]);
  v11 = *(a1 + *(*a1 - 24) + 1896);
  v16[0] = llvm::ConstantInt::get();
  v12 = *(a1 + *(*a1 - 24) + 1896);
  v16[1] = llvm::ConstantInt::get();
  v15[16] = 257;
  result = llvm::IRBuilderBase::CreateCall((v6 + 214), *(v10 + 24), v10, v16, 2, v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::SimdgroupAtomicWaitNotify::foundBarrierDominatingAllSideEffectsAndExternalCalls(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8))
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = 296 * v2;
      v4 = *a2;
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 37;
        v3 -= 296;
        if (!v3)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v4 = *a2;
    }

    if (v4 != (*a2 + 296 * v2))
    {
      v7 = *v4;
      llvm::DomTreeBuilder::Calculate<llvm::DominatorTreeBase<llvm::BasicBlock,false>>();
    }
  }

LABEL_10:
  llvm::deallocate_buffer(0, 0);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::destroyAll(0, 0);
  llvm::deallocate_buffer(0, 0);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::destroyAll(0, 0);
  llvm::deallocate_buffer(0, 0);
  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v10 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), *a2, &v10);
  v6 = v10;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 12) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::grow(a1, v8);
    v10 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), *a2, &v10);
    v6 = v10;
  }

  ++*(a1 + 8);
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  v9 = *a2;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *v6 = v9;
  *(v6 + 8) = v6 + 24;
  *&result = 0x100000000;
  *(v6 + 16) = 0x100000000;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0;
  return result;
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), *a2, &v9);
  v6 = v9;
  if (v4)
  {
    return result;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (4 * v7 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_9;
  }

  if (v8 + ~v7 - *(a1 + 12) <= v8 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::grow(a1, v8);
    v9 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), *a2, &v9);
    v6 = v9;
  }

  ++*(a1 + 8);
  if (*v6 != -4096)
  {
    --*(a1 + 12);
  }

  *v6 = *a2;
  v6[1] = (v6 + 3);
  *&result = 0x400000000;
  v6[2] = 0x400000000;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 56 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 56 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::lookup(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>,llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,AGCLLVMUserObject::SimdgroupAtomicWaitNotify::callsites_lists_t>>::LookupBucketFor<llvm::Function const*>(a2, a3, a4, &v9);
  if (result)
  {
    v6 = v9;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x400000000;
    if (*(v6 + 16))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1, v6 + 8);
    }

    *(a1 + 48) = a1 + 64;
    *(a1 + 56) = 0x400000000;
    if (*(v6 + 64))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1 + 48, v6 + 56);
    }

    *(a1 + 96) = a1 + 112;
    *(a1 + 104) = 0x400000000;
    if (*(v6 + 112))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1 + 96, v6 + 104);
    }

    *(a1 + 144) = a1 + 160;
    *(a1 + 152) = 0x400000000;
    if (*(v6 + 160))
    {
      llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(a1 + 144, v6 + 152);
    }

    *(a1 + 192) = a1 + 208;
    result = a1 + 192;
    *(a1 + 200) = 0x400000000;
    if (*(v6 + 208))
    {
      result = llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(result, v6 + 200);
    }

    *(a1 + 240) = a1 + 256;
    v7 = (a1 + 240);
    *(a1 + 248) = 0x400000000;
    v8 = *(v6 + 256);
    if (v8 && v7 != (v6 + 248))
    {
      if (v8 >= 5)
      {
        *(a1 + 248) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      result = memcpy(*v7, *(v6 + 248), 8 * *(v6 + 256));
      *(a1 + 248) = v8;
    }
  }

  else
  {
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *a1 = a1 + 16;
    *(a1 + 8) = 0x400000000;
    *(a1 + 48) = a1 + 64;
    *(a1 + 60) = 4;
    *(a1 + 96) = a1 + 112;
    *(a1 + 108) = 4;
    *(a1 + 144) = a1 + 160;
    *(a1 + 156) = 4;
    *(a1 + 192) = a1 + 208;
    *(a1 + 204) = 4;
    *(a1 + 240) = a1 + 256;
    *(a1 + 252) = 4;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::destroyAll(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 56 * a2;
    v3 = (a1 + 24);
    do
    {
      if ((*(v3 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 2);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 7;
      v2 -= 56;
    }

    while (v2);
  }
}

void *llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 56 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (56 * v10 - 56) / 0x38;
      v13 = vdupq_n_s64(v12);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[7] = -4096;
        }

        v11 += 2;
        result += 14;
      }

      while (((v12 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = v4 + 24;
      v16 = 56 * v3;
      do
      {
        v17 = *(v15 - 3);
        if ((v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>,llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::SmallVector<llvm::CallInst const*,4u>>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), v17, &v26);
          v18 = v26;
          *v26 = *(v15 - 3);
          v18[2] = 0x400000000;
          v18[1] = v18 + 3;
          v19 = (v18 + 1);
          if (*(v15 - 2))
          {
            llvm::SmallVectorImpl<llvm::MDNode *>::operator=(v19, (v15 - 16));
          }

          ++*(a1 + 8);
          v20 = *(v15 - 2);
          if (v15 != v20)
          {
            free(v20);
          }
        }

        v15 += 56;
        v16 -= 56;
      }

      while (v16);
    }

    return llvm::deallocate_buffer(v4, (56 * v3));
  }

  else
  {
    *(a1 + 8) = 0;
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = (56 * v21 - 56) / 0x38;
      v24 = vdupq_n_s64(v23);
      do
      {
        v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_20E70C4F0)));
        if (v25.i8[0])
        {
          *result = -4096;
        }

        if (v25.i8[4])
        {
          result[7] = -4096;
        }

        v22 += 2;
        result += 14;
      }

      while (((v23 + 2) & 0xFFFFFFFFFFFFFFELL) != v22);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 80 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 80 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

void *llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](v8, 80 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 80 * v10 - 80;
      v13 = vdupq_n_s64(v12 / 0x50);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[10] = -4096;
        }

        v11 += 2;
        result += 20;
      }

      while (((v12 / 0x50 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    v15 = 5 * v3;
    if (v3)
    {
      v16 = v4 + 24;
      v17 = 16 * v15;
      do
      {
        v18 = *(v16 - 3);
        if ((v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>,llvm::Function const*,llvm::DominatorTree,llvm::DenseMapInfo<llvm::Function const*,void>,llvm::detail::DenseMapPair<llvm::Function const*,llvm::DominatorTree>>::LookupBucketFor<llvm::Function const*>(*a1, *(a1 + 16), v18, &v24);
          *v24 = *(v16 - 3);
          llvm::DominatorTreeBase<llvm::BasicBlock,false>::DominatorTreeBase();
        }

        v16 += 80;
        v17 -= 80;
      }

      while (v17);
    }

    return llvm::deallocate_buffer(v4, (16 * v15));
  }

  else
  {
    *(a1 + 8) = 0;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = 80 * v19 - 80;
      v22 = vdupq_n_s64(v21 / 0x50);
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v20), xmmword_20E70C4F0)));
        if (v23.i8[0])
        {
          *result = -4096;
        }

        if (v23.i8[4])
        {
          result[10] = -4096;
        }

        v20 += 2;
        result += 20;
      }

      while (((v21 / 0x50 + 2) & 0x7FFFFFFFFFFFFFELL) != v20);
    }
  }

  return result;
}

uint64_t AGCLLVMUserVertexShader::buildGin1122WA(AGCLLVMUserVertexShader *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v4 = Function;
    v5 = *(this + *(*this - 24) + 1904);
    llvm::PointerType::get();
    llvm::Function::addFnAttr();
    *(v4 + 32) = *(v4 + 32) & 0xFFFFBFC0 | 0x4007;
    v6 = *(this + *(*this - 24) + 2160);
    v9 = "entry";
    LOWORD(v10) = 259;
    operator new();
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

llvm::Value *AGCLLVMUserVertexShader::getVertexAmpId(void *a1, int a2)
{
  v3 = 1608;
  if (a2)
  {
    v4 = 85;
  }

  else
  {
    v3 = 1600;
    v4 = 84;
  }

  v5 = *(*(a1 + *(*a1 - 24) + 2168) + v3);
  DriverGlobalConstant = AGCLLVMUserVertexShader::getDriverGlobalConstant(a1, v4);
  if (v5)
  {
    v6 = strlen(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1 + *(*a1 - 24) + 1704, v5, v6, *(a1 + *(*a1 - 24) + 1904), *(a1 + *(*a1 - 24) + 1904));
  v8 = a1 + *(*a1 - 24);
  v10[16] = 257;
  return llvm::IRBuilderBase::CreateCall((v8 + 1712), *(v7 + 24), v7, &DriverGlobalConstant, 1, v10);
}

uint64_t AGCLLVMUserVertexShader::getDriverGlobalConstant(void *a1, unsigned int a2)
{
  v3 = &a1[3 * a2];
  v4 = (v3 + 785);
  if (!v3[787])
  {
    v6 = 1;
    v7 = llvm::User::operator new(0x58);
    v8 = (a1 + *(*a1 - 24));
    v9 = v8[267];
    v10 = v8[238];
    if (*AGCShared::EnumNamesConstantType(void)::names[a2])
    {
      v18[2] = AGCShared::EnumNamesConstantType(void)::names[a2];
      v6 = 3;
    }

    v18[0] = "agc.driver_constants.";
    LOBYTE(v19) = 3;
    HIBYTE(v19) = v6;
    v17 = *(v8[271] + 972) | 0x100000000;
    llvm::GlobalVariable::GlobalVariable();
    *(v7 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v11 = a1 + *(*a1 - 24);
    v12 = *(v11 + 268);
    v13 = AGCLLVMBuilder::buildGlobalMetadata((v11 + 1704), v7);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v12, v13);
    llvm::ValueHandleBase::operator=(v4, v7);
  }

  v14 = a1 + *(*a1 - 24);
  v15 = *(v4 + 2);
  v19 = 257;
  return AGCLLVMBuilder::CreateLoad((v14 + 1704), v15, v18);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(uint64_t result)
{
  *(result + 8) = 0;
  v7[0] = 2;
  v7[1] = 0;
  v8 = -4096;
  v9 = 0;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *result;
    v3 = *result + 48 * v1;
    result = *result + 8;
    do
    {
      v4 = llvm::ValueHandleBase::ValueHandleBase(result, (LODWORD(v7[0]) >> 1) & 3, v7);
      *(v4 - 1) = &unk_2825A95E0;
      *(v4 + 3) = v9;
      v5 = v4 + 40;
      result = v4 + 48;
      v2 += 48;
    }

    while (v5 != v3);
    if (v8 != -8192 && v8 != -4096 && v8 != 0)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v7);
    }
  }

  return result;
}

void *llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825A95E0;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v3 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v12, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(v3 + 24);
  v14 = v4;
  v19 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v4, v4[2].i32[0], v13, &v19);
  if (result)
  {
    v6 = v19;
  }

  else
  {
    v6 = (*v4 + 48 * v4[2].u32[0]);
  }

  v7 = v14;
  if ((*v14 + 48 * v14[2].u32[0]) != v6)
  {
    v8 = v6[5];
    v20[0] = 2;
    v20[1] = 0;
    v21 = -8192;
    v22 = 0;
    v19 = &unk_2825A95E0;
    llvm::ValueHandleBase::operator=((v6 + 1), v20);
    v9 = v21;
    v6[4] = v22;
    if (v9 != -8192 && v9 != -4096 && v9)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    v7[1] = vadd_s32(v7[1], 0x1FFFFFFFFLL);
    v10 = v14;
    llvm::CallbackVH::CallbackVH(&v15, a2);
    v15 = &unk_2825A95E0;
    v18 = v10;
    llvm::ValueHandleBase::ValueHandleBase(v20, (LODWORD(v16[0]) >> 1) & 3, v16);
    v19 = &unk_2825A95E0;
    v22 = v18;
    v23 = v8;
    v24 = 0;
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v10, *(v10 + 16), v21, &v24);
    if ((result & 1) == 0)
    {
      v11 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>>(v10, &v19, v24);
      result = llvm::ValueHandleBase::operator=((v11 + 1), v20);
      v11[4] = v22;
      v11[5] = v23;
    }

    if (v21 != -8192 && v21 != -4096 && v21)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v20);
    }

    if (v17 != -8192 && v17 != -4096 && v17)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v16);
    }
  }

  if (v13 != -8192 && v13 != -4096)
  {
    if (v13)
    {
      return llvm::ValueHandleBase::RemoveFromUseList(v12);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::grow(a1, v6);
  v8 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), *(a2 + 24), &v8);
  a3 = v8;
LABEL_3:
  ++*(a1 + 8);
  if (*(a3 + 24) != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x20F330650](v8, 48 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(a1);
    v21[0] = 2;
    v21[1] = 0;
    v22 = -4096;
    v23 = 0;
    v19 = 0;
    v20 = &unk_2825A95E0;
    v17[0] = 2;
    v17[1] = 0;
    v18 = -8192;
    v9 = 3 * v3;
    if (v3)
    {
      v10 = (v4 + 24);
      v11 = 16 * v9;
      do
      {
        v12 = *v10;
        if (*v10 != v22 && v12 != v18)
        {
          v24 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v12, &v24);
          v14 = v24;
          llvm::ValueHandleBase::operator=((v24 + 8), v10 - 2);
          *(v14 + 32) = v10[1];
          *(v14 + 40) = v10[2];
          ++*(a1 + 8);
          v12 = *v10;
        }

        if (v12 != -8192 && v12 != -4096 && v12 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList((v10 - 2));
        }

        v10 += 6;
        v11 -= 48;
      }

      while (v11);
      if (v18 != -8192 && v18 != -4096 && v18)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v17);
      }
    }

    if (v22 != -8192 && v22 != -4096 && v22)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v21);
    }

    return llvm::deallocate_buffer(v4, (16 * v9));
  }

  else
  {

    return llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(a1);
  }
}

uint64_t llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v7, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v9 = v2;
  v10 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*v2, *(v2 + 16), v8, &v10);
  if (result)
  {
    v4 = v10;
    v11[0] = 2;
    v11[1] = 0;
    v12 = -8192;
    v13 = 0;
    v10 = &unk_2825A95E0;
    result = llvm::ValueHandleBase::operator=((v4 + 1), v11);
    v5 = v12;
    v4[4] = v13;
    if (v5 != -8192 && v5 != -4096 && v5)
    {
      result = llvm::ValueHandleBase::RemoveFromUseList(v11);
    }

    *(v2 + 8) = vadd_s32(*(v2 + 8), 0x1FFFFFFFFLL);
  }

  if (v8 != -8192 && v8 != -4096 && v8 != 0)
  {
    return llvm::ValueHandleBase::RemoveFromUseList(v7);
  }

  return result;
}

unsigned int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, (a1 + 16), (a1 + 32));
        v22 = *(a2 - 16);
        v23 = *(a1 + 32);
        if (v22 >= v23)
        {
          if (v23 < v22)
          {
            return 1;
          }

          v25 = *(a2 - 8);
          v24 = *(a1 + 40);
          if (v25 >= v24)
          {
            return 1;
          }
        }

        else
        {
          v24 = *(a1 + 40);
          v25 = *(a2 - 8);
        }

        *(a1 + 32) = v22;
        *(a2 - 16) = v23;
        *(a1 + 40) = v25;
        *(a2 - 8) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 16);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return 1;
          }

          v29 = *(a1 + 40);
          v28 = *(a1 + 24);
          if (v29 >= v28)
          {
            return 1;
          }
        }

        else
        {
          v28 = *(a1 + 24);
          v29 = *(a1 + 40);
        }

        *(a1 + 16) = v26;
        *(a1 + 32) = v27;
        *(a1 + 24) = v29;
        *(a1 + 40) = v28;
        v30 = *a1;
        if (v26 >= *a1)
        {
          if (v30 < v26)
          {
            return 1;
          }

          v31 = *(a1 + 8);
          if (v29 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 8);
        }

        *a1 = v26;
        *(a1 + 16) = v30;
        *(a1 + 8) = v29;
        result = 1;
        *(a1 + 24) = v31;
        return result;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
LABEL_6:
        *a1 = v5;
        *(a2 - 16) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 8) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 8);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 8);
      v17 = *(v10 + 8);
    }

    *v11 = v15;
    *(v11 + 8) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      v10 -= 16;
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v10 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 >= v21)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v10 = a1 + v18 + 32;
LABEL_27:
    *v10 = v14;
    *(v10 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

llvm::Value *AGCLLVMUserVertexShader::createVIRead(AGCLLVMUserVertexShader *this)
{
  v2 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(this + *(*this - 24) + 1704, "agc.read_vi.f32", 15, *(this + *(*this - 24) + 1872), *(this + *(*this - 24) + 1904));
  v3 = this + *(*this - 24);
  v4 = *(v3 + 238);
  v7 = llvm::ConstantInt::get();
  v6[16] = 257;
  return llvm::IRBuilderBase::CreateCall((v3 + 1712), *(v2 + 24), v2, &v7, 1, v6);
}

uint64_t AGCLLVMBuilder::bitCastElements(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Type *a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v6 = *(*a2 + 32);
    a3 = llvm::FixedVectorType::get();
  }

  v9 = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 49, a2, a3, v8);
}

uint64_t AGCLLVMBuilder::concatenateVectors(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Value *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(this + 25);
  v15 = llvm::ConstantInt::get();
  v7 = *(this + 25);
  v16 = llvm::ConstantInt::get();
  v8 = *(this + 25);
  v17 = llvm::ConstantInt::get();
  v9 = *(this + 25);
  v18 = llvm::ConstantInt::get();
  v10 = (*(*a3 + 32) + *(*a2 + 32));
  v11 = llvm::ConstantVector::get();
  v14[16] = 257;
  result = llvm::IRBuilderBase::CreateShuffleVector((this + 8), a2, a3, v11, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMBuilder::CreateInsertElement(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Value *a3, unsigned int a4, const llvm::Twine *a5)
{
  v9 = *(this + 25);
  v10 = llvm::ConstantInt::get();

  return llvm::IRBuilderBase::CreateInsertElement((this + 8), a2, a3, v10, a5);
}

llvm::Value *AGCLLVMBuilder::i32Extend(AGCLLVMBuilder *this, llvm::Type **a2, int a3)
{
  v4 = a2;
  v6 = *a2;
  if (llvm::Type::getScalarSizeInBits(*a2) != 32)
  {
    v7 = *(this + 25);
    if ((*(v6 + 2) & 0xFE) == 0x12)
    {
      v8 = *(v6 + 8);
      v9 = *(this + 25);
      v7 = llvm::FixedVectorType::get();
    }

    v13 = 257;
    if (a3)
    {
      v10 = 40;
    }

    else
    {
      v10 = 39;
    }

    return llvm::IRBuilderBase::CreateCast(this + 8, v10, v4, v7, v12);
  }

  return v4;
}

uint64_t AGCLLVMBuilder::buildICmpSel(unsigned int **this, llvm::CmpInst **a2, llvm::Value *a3, uint64_t a4)
{
  v5 = a3;
  if (*a2 != *a3)
  {
    v5 = AGCLLVMBuilder::splat(this, *(*a2 + 8), a3);
  }

  v10 = 257;
  llvm::IRBuilderBase::CreateICmp(this + 1, a4, a2, v5, v9);
  v10 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t AGCLLVMBuilder::clampToWidth(unsigned int **this, llvm::CmpInst **a2, unsigned int a3, int a4)
{
  if ((*(*a2 + 2) & 0xFE) == 0x12)
  {
    v6 = **(*a2 + 2);
  }

  if (a4)
  {
    v7 = llvm::ConstantInt::get();
    v8 = AGCLLVMBuilder::buildICmpSel(this, a2, v7, 40);
    v9 = llvm::ConstantInt::get();
    v10 = this;
    v11 = v8;
    v12 = 38;
  }

  else
  {
    v9 = llvm::ConstantInt::get();
    v10 = this;
    v11 = a2;
    v12 = 36;
  }

  return AGCLLVMBuilder::buildICmpSel(v10, v11, v9, v12);
}

uint64_t AGCLLVMBuilder::buildGlobalMetadata(AGCLLVMBuilder *this, llvm::GlobalVariable *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::ValueAsMetadata::get();
  v3 = *(this + 25);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v4 = *(this + 25);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v5 = *(this + 57);
  result = llvm::MDTuple::getImpl();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMBuilder::setupGlobalMetadata(AGCLLVMBuilder *this, llvm::GlobalVariable *a2)
{
  v2 = *(this + 55);
  v3 = AGCLLVMBuilder::buildGlobalMetadata(this, a2);

  return llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v2, v3);
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t *std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x20F330EC0]();
    MEMORY[0x20F331DC0](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](a1);
  }

  return a1;
}

void llvm::function_ref<llvm::Optional<std::string> ()(llvm::StringRef)>::callback_fn<llvm::$_0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  a1[24] = 0;
}

{
  *a1 = 0;
  a1[24] = 0;
}

BOOL AGCLLVMComputePrograms::constructReply(AGCLLVMComputePrograms *this)
{
  v2 = AGCDeserializedReply::deserialize((this + 2288), *(*(this + 211) + 152), *(*(this + 211) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply(this);
    v3 = AGCLLVMObject::constructFlatReply(this);
    v5 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    *(this + 4358) = 1;
    v6 = *(this + 1082);
    v7 = *(this + 1080) - *(this + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((this + 4288), v5);
    v8 = flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v7 + v6);
    flatbuffers::FlatBufferBuilder::Finish((this + 4288), v8, v9);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>(this, this + 1072);
  }

  return v2;
}

void AGCLLVMComputePrograms::getCompilationKeyDescription(AGCLLVMComputePrograms *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v26, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v23, "token");
  std::to_string(&v34, *(this + 1292));
  if ((v24 & 0x80u) == 0)
  {
    v4 = v24;
  }

  else
  {
    v4 = v23[1];
  }

  v5 = &v35;
  std::string::basic_string[abi:nn200100](&v35, v4 + 3);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v35.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if ((v24 & 0x80u) == 0)
    {
      v6 = v23;
    }

    else
    {
      v6 = v23[0];
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 2112032;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v34;
  }

  else
  {
    v7 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v34.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v35, v7, size);
  v10 = v9->__r_.__value_.__r.__words[0];
  v11 = v9->__r_.__value_.__l.__size_;
  v25[0] = v9->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v9->__r_.__value_.__r.__words[2] + 3);
  v12 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v26;
  }

  _agcIndentedLine(&v34.__r_.__value_.__l.__data_, &v33, 0);
  std::string::basic_string[abi:nn200100]<0>(v28, "{");
  _agcIndentedLine(&__p, v28, 0);
  if ((v32 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v32 & 0x80u) == 0)
  {
    v14 = v32;
  }

  else
  {
    v14 = v31;
  }

  v15 = std::string::append(&v34, p_p, v14);
  v16 = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
LABEL_38:
    v34.__r_.__value_.__r.__words[0] = v10;
    v34.__r_.__value_.__l.__size_ = v11;
    LODWORD(v34.__r_.__value_.__r.__words[2]) = v25[0];
    *(&v34.__r_.__value_.__r.__words[2] + 3) = *(v25 + 3);
    *(&v34.__r_.__value_.__s + 23) = v12;
LABEL_41:
    v17 = 0;
    v27 = v34;
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v34, v10, v11);
  if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  std::string::__init_copy_ctor_external(&v27, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  v17 = 1;
LABEL_42:
  _agcIndentedLine(&__p, &v27, 1);
  if ((v32 & 0x80u) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p;
  }

  if ((v32 & 0x80u) == 0)
  {
    v19 = v32;
  }

  else
  {
    v19 = v31;
  }

  std::string::append(&v35, v18, v19);
  if (v32 < 0)
  {
    operator delete(__p);
  }

  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v27.__r_.__value_.__l.__data_);
  if (v17)
  {
LABEL_52:
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_53:
  std::string::basic_string[abi:nn200100]<0>(&__p, "}");
  _agcIndentedLine(&v34.__r_.__value_.__l.__data_, &__p, 0);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v35;
  }

  else
  {
    v20 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v35.__r_.__value_.__l.__size_;
  }

  v22 = std::string::insert(&v34, 0, v20, v21);
  *a2 = *v22;
  v22->__r_.__value_.__r.__words[0] = 0;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v10);
LABEL_65:
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

uint64_t AGCLLVMComputePrograms::compile(AGCLLVMComputePrograms *this)
{
  if (*(this + 1292) == 39)
  {
    v2 = *(this + 267);
    GlobalVariable = llvm::Module::getGlobalVariable();
    if (GlobalVariable)
    {
      v4 = GlobalVariable;
      llvm::GlobalObject::setSection();
      v5 = *(this + 268);
      v6 = AGCLLVMBuilder::buildGlobalMetadata((this + 1704), v4);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v5, v6);
    }

    v7 = *(this + 267);
    v8 = llvm::Module::getGlobalVariable();
    if (v8)
    {
      v9 = *(this + 268);
      v10 = AGCLLVMBuilder::buildGlobalMetadata((this + 1704), v8);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v9, v10);
    }

    v11 = *(this + 267);
    v12 = llvm::Module::getGlobalVariable();
    if (v12)
    {
      v13 = *(this + 268);
      v14 = AGCLLVMBuilder::buildGlobalMetadata((this + 1704), v12);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v13, v14);
    }
  }

  v15 = *(this + 267);
  v24[0] = "agx.compute_driver_bindings";
  v25 = 259;
  if (!llvm::Module::getNamedMetadata(v15, v24))
  {
    v20 = *(this + 267);
    v21 = v20 + 24;
    for (i = *(v20 + 32); i != v21; i = *(i + 8))
    {
      if (i)
      {
        v23 = (i - 56);
      }

      else
      {
        v23 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v23) & 1) == 0)
      {
        (*(*this + 192))(this, v23);
        break;
      }
    }
  }

  v16 = *(this + 211);
  v17 = *(this + 267);
  v24[0] = 0x10000;
  v18 = AGCLLVMCtx::compile(v16, this, v17, 1, 3, v24);
  result = 0;
  if (v18)
  {
    return (*(*this + 160))(this);
  }

  return result;
}

void AGCLLVMComputePrograms::~AGCLLVMComputePrograms(AGCLLVMComputePrograms *this)
{
  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

BOOL AGCLLVMContextSwitchProgram::constructReply(AGCLLVMContextSwitchProgram *this)
{
  v2 = AGCDeserializedReply::deserialize((this + 2288), *(*(this + 211) + 152), *(*(this + 211) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply(this);
    v3 = AGCLLVMObject::constructFlatReply(this);
    flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    *(this + 4358) = 1;
    v5 = *(this + 1082);
    v6 = *(this + 1080) - *(this + 1084);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 536, 4, 0);
    flatbuffers::FlatBufferBuilder::AddElement<signed char>(this + 536, 6, AGCLLVMContextSwitchProgram::constructReply(void)::vi_inputs);
    flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v6 + v5);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  return v2;
}

void AGCLLVMContextSwitchProgram::getCompilationKeyDescription(AGCLLVMContextSwitchProgram *this@<X0>, std::string *a2@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = this + 4096;
  std::string::basic_string[abi:nn200100]<0>(&v24, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v22, "save");
  if (v3[1072])
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  _agcFieldString<char const*>(&v34, v22, v4);
  std::string::basic_string[abi:nn200100]<0>(v20, "toggle");
  if (v3[1073])
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  _agcFieldString<char const*>(&v35, v20, v5);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v24;
  }

  _agcIndentedLine(&v32.__r_.__value_.__l.__data_, &v31, 0);
  std::string::basic_string[abi:nn200100]<0>(v26, "{");
  _agcIndentedLine(&__p, v26, 0);
  if ((v30 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v30 & 0x80u) == 0)
  {
    v7 = v30;
  }

  else
  {
    v7 = v29;
  }

  v8 = std::string::append(&v32, p_p, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  for (i = 0; i != 6; i += 3)
  {
    v11 = (&v34 + i * 8);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v32, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = *v11;
    }

    v12 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v32;
    }

    _agcIndentedLine(&__p, &v25, 1);
    if ((v30 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v14 = v30;
    }

    else
    {
      v14 = v29;
    }

    std::string::append(&v33, v13, v14);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if ((v12 & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(v32.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "}");
  _agcIndentedLine(&v32.__r_.__value_.__l.__data_, &__p, 0);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v33;
  }

  else
  {
    v15 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v32, 0, v15, size);
  *a2 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v30 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v34 + j * 8 + 24));
    }
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMContextSwitchProgram::getShaderType(AGCLLVMContextSwitchProgram *this)
{
  if (*(this + 5168))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

const char *AGCLLVMContextSwitchProgram::dumpType(AGCLLVMContextSwitchProgram *this)
{
  if (*(this + 5169))
  {
    v1 = "context_save_toggle";
  }

  else
  {
    v1 = "context_save";
  }

  v2 = "context_restore";
  if (*(this + 5169))
  {
    v2 = "context_restore_toggle";
  }

  if (*(this + 5168))
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t AGCLLVMContextSwitchProgram::compile(AGCLLVMContextSwitchProgram *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  v3 = *(this + 5168);
  v4 = *(this + 267);
  Function = llvm::Module::getFunction();
  *(Function + 112) = 0;
  *(Function + 18) = *(Function + 18) & 0xC00F | 0x6A0;
  if (v2[1072] == 1)
  {
    v6 = *(this + 267);
    v7 = llvm::Module::getFunction();
    v8 = *(this + 271);
    if (*(v8 + 1760))
    {
      v9 = strlen(*(v8 + 1760));
    }

    v10 = *(this + 238);
    AGCLLVMBuilder::getOrInsertFunction<>(this + 1704);
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v7);
    (*(**(this + 271) + 400))();
  }

  v11 = *(this + 267);
  v12 = llvm::Module::getFunction();
  if (v12)
  {
    v13 = v12;
    v14 = *(this + 271);
    if (*(v14 + 1768))
    {
      v15 = strlen(*(v14 + 1768));
    }

    v16 = *(v13 + 3);
    v17 = *(this + 267);
    llvm::Module::getOrInsertFunction();
    llvm::Value::replaceAllUsesWith();
    llvm::Function::eraseFromParent(v13);
  }

  if (v2[1072] == 1 && *(*(this + 271) + 1847) == 1)
  {
    v18 = *(Function + 80);
    v19 = v18 - 24;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = *(v19 + 40);
    if (v20 == v19 + 40)
    {
      v23 = 0;
    }

    else
    {
      v21 = (v20 - 24);
      if (v20)
      {
        v22 = v20 - 24;
      }

      else
      {
        v22 = 0;
      }

      if (*(v22 + 16) - 29 >= 0xB)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }
    }

    llvm::IRBuilderBase::SetInsertPoint((this + 1712), v23);
    v24 = *(this + 271);
    if (*(v24 + 1024))
    {
      v25 = strlen(*(v24 + 1024));
    }

    v26 = *(this + 231);
    inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + 1704);
    v43 = 257;
    llvm::IRBuilderBase::CreateCall(this + 1712, *(inserted + 24), inserted, 0, 0, &v42);
  }

  v28 = *(this + 267);
  llvm::Module::getOrInsertNamedMetadata();
  if (v2[1073] == 1)
  {
    operator new();
  }

  v42 = "agc.main";
  v43 = 259;
  llvm::Value::setName();
  v29 = *(this + 267);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (GlobalVariable)
  {
    v31 = GlobalVariable;
    llvm::GlobalObject::setSection();
    v32 = *(this + 268);
    v33 = AGCLLVMBuilder::buildGlobalMetadata((this + 1704), v31);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v32, v33);
  }

  v34 = *(this + 267);
  v35 = llvm::Module::getFunction();
  (*(*this + 192))(this, v35);
  v36 = *(this + 211);
  v37 = *(this + 267);
  v42 = 0x10000;
  if (AGCLLVMCtx::compile(v36, this, v37, 1, 3, &v42))
  {
    v38 = *(*this + 160);
    v39 = *MEMORY[0x277D85DE8];

    return v38(this);
  }

  else
  {
    v41 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

void AGCLLVMContextSwitchProgram::~AGCLLVMContextSwitchProgram(AGCLLVMContextSwitchProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMContextSwitchProgram::create(AGCLLVMContextSwitchProgram *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 4) + 28);
  v4 = v3 > 0x1B;
  v5 = (1 << v3) & 0xE7F4000;
  if (!v4 && v5 != 0)
  {
    operator new();
  }

  operator new();
}

void AGCContextSwitchProgramG13::getCompilationKeyDescription(AGCContextSwitchProgramG13 *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v27, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v24, "save");
  if (*(this + 5168))
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  std::string::basic_string[abi:nn200100]<0>(&v35, v4);
  if ((v25 & 0x80u) == 0)
  {
    v5 = v25;
  }

  else
  {
    v5 = v24[1];
  }

  v6 = &v36;
  std::string::basic_string[abi:nn200100](&v36, v5 + 3);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v36.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if ((v25 & 0x80u) == 0)
    {
      v7 = v24;
    }

    else
    {
      v7 = v24[0];
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 2112032;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v35;
  }

  else
  {
    v8 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v36, v8, size);
  v11 = v10->__r_.__value_.__r.__words[0];
  v12 = v10->__r_.__value_.__l.__size_;
  v26[0] = v10->__r_.__value_.__r.__words[2];
  *(v26 + 3) = *(&v10->__r_.__value_.__r.__words[2] + 3);
  v13 = SHIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v27;
  }

  _agcIndentedLine(&v35.__r_.__value_.__l.__data_, &v34, 0);
  std::string::basic_string[abi:nn200100]<0>(v29, "{");
  _agcIndentedLine(&__p, v29, 0);
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v15 = v33;
  }

  else
  {
    v15 = v32;
  }

  v16 = std::string::append(&v35, p_p, v15);
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
LABEL_41:
    v35.__r_.__value_.__r.__words[0] = v11;
    v35.__r_.__value_.__l.__size_ = v12;
    LODWORD(v35.__r_.__value_.__r.__words[2]) = v26[0];
    *(&v35.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
    *(&v35.__r_.__value_.__s + 23) = v13;
LABEL_44:
    v18 = 0;
    v28 = v35;
    goto LABEL_45;
  }

  std::string::__init_copy_ctor_external(&v35, v11, v12);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  std::string::__init_copy_ctor_external(&v28, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  v18 = 1;
LABEL_45:
  _agcIndentedLine(&__p, &v28, 1);
  if ((v33 & 0x80u) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p;
  }

  if ((v33 & 0x80u) == 0)
  {
    v20 = v33;
  }

  else
  {
    v20 = v32;
  }

  std::string::append(&v36, v19, v20);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v18)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if (v18)
  {
LABEL_55:
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_56:
  std::string::basic_string[abi:nn200100]<0>(&__p, "}");
  _agcIndentedLine(&v35.__r_.__value_.__l.__data_, &__p, 0);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v36;
  }

  else
  {
    v21 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v36.__r_.__value_.__l.__size_;
  }

  v23 = std::string::insert(&v35, 0, v21, v22);
  *a2 = *v23;
  v23->__r_.__value_.__r.__words[0] = 0;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

  operator delete(v11);
LABEL_68:
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

uint64_t AGCContextSwitchProgramG13::getShaderType(AGCContextSwitchProgramG13 *this)
{
  if (*(this + 5168))
  {
    return 10;
  }

  else
  {
    return 11;
  }
}

const char *AGCContextSwitchProgramG13::dumpType(AGCContextSwitchProgramG13 *this)
{
  if (*(this + 5168))
  {
    return "context_save";
  }

  else
  {
    return "context_restore";
  }
}

uint64_t AGCContextSwitchProgramG13::compile(AGCContextSwitchProgramG13 *this)
{
  if (AGCLLVMObjectBase::dumpShaderToFile(this) && AGCTargetPrinter::isValidToPrintMessage(*(this + 212)))
  {
    v2 = *(this + 212);
    v3 = (*(*this + 48))(this);
    AGCTargetPrinter::printMessage(v2, "Generating %s program from hand written asm", v3);
  }

  return 1;
}

void AGCContextSwitchProgramG13::~AGCContextSwitchProgramG13(AGCContextSwitchProgramG13 *this)
{
  *this = &unk_2825A98A0;
  *(this + 213) = &unk_2825A99B0;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 5176));
  AGCLLVMObject::~AGCLLVMObject(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825A98A0;
  *(this + 213) = &unk_2825A99B0;
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder((this + 5176));

  AGCLLVMObject::~AGCLLVMObject(this);
}

uint64_t AGCLLVMPassthroughVertexShader::constructReply(AGCLLVMPassthroughVertexShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (!result)
  {
    return result;
  }

  v65 = result;
  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
  v64 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
  v5 = 22;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  do
  {
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1080);
    v8 = *(v6 + 1084);
    v9 = *(v6 + 1082);
    if (v6[4368] == 1)
    {
      v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 4, v10);
    }

    if (v5 == 16)
    {
      v11 = 2;
      v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 2);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 6, v12);
      v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 2);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 8, v13);
LABEL_7:
      v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), v11);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 10, v14);
      goto LABEL_11;
    }

    if (v6[4368] == 1)
    {
      v15 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 6, v15);
      if (v6[4368])
      {
        v16 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 8, v16);
        v11 = 0;
        if (v6[4368])
        {
          goto LABEL_7;
        }
      }
    }

LABEL_11:
    v66 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v7 - v8 + v9);
    std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v67, &v66);
    --v5;
  }

  while (v5);
  v17 = v67;
  if (v68 == v67)
  {
    v18 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v18 = v67;
  }

  v63 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v18, (v68 - v67) >> 2);
  v19 = this + *(*this - 24);
  v19[4358] = 1;
  v20 = *(v19 + 1080);
  v21 = *(v19 + 1084);
  v22 = *(v19 + 1082);
  if (v19[4368] == 1)
  {
    v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 4, v23);
    if (v19[4368])
    {
      v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 6, v24);
      if (v19[4368])
      {
        v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 8, v25);
        if (v19[4368])
        {
          v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 16, v26);
          if (v19[4368])
          {
            v27 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 10, v27);
            if (v19[4368])
            {
              v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 12, v28);
            }
          }
        }
      }
    }
  }

  v29 = v20 - v21;
  v30 = *(this + 18);
  if (v30 <= 4)
  {
    v30 = 4;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v19 + 536, 14, v30 - 4);
  if (v19[4368] == 1)
  {
    v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 18, v31);
  }

  v32 = flatbuffers::FlatBufferBuilder::EndTable((v19 + 4288), v29 + v22);
  v33 = this + *(*this - 24);
  v33[4358] = 1;
  v34 = *(v33 + 1082);
  v35 = *(v33 + 1080) - *(v33 + 1084);
  if (v33[4368] == 1)
  {
    v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 18, v36);
    if (v33[4368])
    {
      v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 16, v37);
      if (v33[4368])
      {
        v38 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 14, v38);
        if (v33[4368])
        {
          v39 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 12, v39);
          if (v33[4368])
          {
            v40 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 10, v40);
            if (v33[4368])
            {
              v41 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 8, v41);
              if (v33[4368])
              {
                v42 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 6, v42);
                if (v33[4368])
                {
                  v43 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v33 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v33 + 536, 4, v43);
                }
              }
            }
          }
        }
      }
    }
  }

  v44 = flatbuffers::FlatBufferBuilder::EndTable((v33 + 4288), v35 + v34);
  v45 = this + *(*this - 24);
  v45[4358] = 1;
  v46 = *(v45 + 1080);
  v47 = *(v45 + 1084);
  v48 = *(v45 + 1082);
  v49 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v45 + 4288), 1);
  flatbuffers::FlatBufferBuilder::TrackField(v45 + 536, 6, v49);
  if (v45[4368] == 1)
  {
    v50 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 536, 8, v50);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v45 + 536, 10, *(this + 18));
  if (v45[4368] == 1)
  {
    v51 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 536, 12, v51);
    if (v45[4368])
    {
      v52 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v45 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v45 + 536, 14, v52);
    }
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v45 + 4288), 16, v32);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v45 + 4288), 18, v44);
  if (v45[4368] == 1)
  {
    v53 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 536, 20, v53);
  }

  v54 = v46 - v47;
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v45 + 4288), 22, v63);
  if (v45[4368] == 1)
  {
    v55 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v45 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v45 + 536, 26, v55);
  }

  v56 = flatbuffers::FlatBufferBuilder::EndTable((v45 + 4288), v54 + v48);
  v57 = this + *(*this - 24);
  v57[4358] = 1;
  v58 = *(v57 + 1082);
  v59 = *(v57 + 1080) - *(v57 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v57 + 4288), v64);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v57 + 4288), v56);
  v60 = *(*this - 24);
  v61 = flatbuffers::FlatBufferBuilder::EndTable((v57 + 4288), v59 + v58);
  flatbuffers::FlatBufferBuilder::Finish((this + v60 + 4288), v61, v62);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  if (v17)
  {
    operator delete(v17);
  }

  return v65;
}

void AGCLLVMPassthroughVertexShader::getCompilationKeyDescription(AGCLLVMPassthroughVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v10, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v8, "passthrough_size");
  _agcFieldString<unsigned int>(&v12, v8, *(this + 19));
  std::string::basic_string[abi:nn200100]<0>(__p, "pad_size");
  _agcFieldString<unsigned int>(&v13, __p, *(this + 20));
  _agcGroupWithHeader(a2, v10, &v12, 2);
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

uint64_t AGCLLVMDriverShader::compile(AGCLLVMDriverShader *this)
{
  AGCLLVMObject::eraseLogicalRasterOrderGroupMetadata((this + *(*this - 24)));
  v2 = *(this + *(*this - 24) + 2136);
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
      (*(*(this + *(*this - 24)) + 192))(this + *(*this - 24), v5);
      break;
    }
  }

  AGCLLVMObject::enableTempRegistersLimit((this + *(*this - 24)));
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = (this + *(*this - 24));
      v7 = v6[212];
      v8 = (*(*v6 + 48))(v6);
      AGCTargetPrinter::printMessage(v7, "------ Start compilation key description for %s shader %u  ------", v8, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v9 = (this + *(*this - 24));
      v10 = v9[212];
      (*(*v9 + 136))(__p);
      if (v20 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      AGCTargetPrinter::printMessage(v10, "%s", v11);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v12 = (this + *(*this - 24));
      v13 = v12[212];
      v14 = (*(*v12 + 48))(v12);
      AGCTargetPrinter::printMessage(v13, "------ End compilation key description for %s shader %u  ------", v14, *(this + *(*this - 24) + 5088));
    }
  }

  v15 = this + *(*this - 24);
  v16 = *(v15 + 211);
  v17 = *(v15 + 267);
  if (*(this + 8) == 1)
  {
    __p[0] = 0x10000;
    if ((AGCLLVMCtx::compile(v16, v15, v17, 1, 2, __p) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __p[0] = 0x10000;
    result = AGCLLVMCtx::compile(v16, v15, v17, 1, 3, __p);
    if (!result)
    {
      return result;
    }
  }

  return (*(*(this + *(*this - 24)) + 160))(this + *(*this - 24));
}

void virtual thunk toAGCLLVMPassthroughVertexShader::~AGCLLVMPassthroughVertexShader(AGCLLVMPassthroughVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 88));
}

void AGCLLVMPassthroughVertexShader::~AGCLLVMPassthroughVertexShader(AGCLLVMPassthroughVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 88));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 88));
}

BOOL AGCLLVMDriverVertexFetchShader::constructReply(AGCLLVMDriverVertexFetchShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v5 = 22;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    while (1)
    {
      v6 = this + *(*this - 24);
      v6[4358] = 1;
      v7 = *(v6 + 1080);
      v8 = *(v6 + 1084);
      v9 = *(v6 + 1082);
      v10 = v6[4368];
      if (v10 == 1)
      {
        v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 4, v11);
        LOBYTE(v10) = v6[4368];
      }

      if (v5 == 16)
      {
        if (v10)
        {
          v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 6, v12);
          if (v6[4368])
          {
            v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 8, v13);
          }
        }

        v14 = 2;
      }

      else
      {
        if ((v10 & 1) == 0)
        {
          goto LABEL_14;
        }

        v16 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 6, v16);
        if ((v6[4368] & 1) == 0)
        {
          goto LABEL_14;
        }

        v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 8, v17);
        v14 = 0;
        if ((v6[4368] & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v15 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), v14);
      flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 10, v15);
LABEL_14:
      LODWORD(v26[0]) = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v7 - v8 + v9);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v27, v26);
      if (!--v5)
      {
        if (v28 == v27)
        {
          v18 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
        }

        else
        {
          v18 = v27;
        }

        flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v18, (v28 - v27) >> 2);
        memset(v26, 0, sizeof(v26));
        v19 = this + *(*this - 24);
        v19[4358] = 1;
        v20 = *(v19 + 1082);
        v21 = *(v19 + 1080) - *(v19 + 1084);
        if (v19[4368] == 1)
        {
          v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 4, v22);
          if (v19[4368])
          {
            v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 6, v23);
            if (v19[4368])
            {
              v24 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 8, v24);
              if (v19[4368])
              {
                v25 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v19 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v19 + 536, 10, v25);
              }
            }
          }
        }

        flatbuffers::FlatBufferBuilder::EndTable((v19 + 4288), v21 + v20);
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
      }
    }
  }

  return result;
}

void AGCLLVMPassthroughVertexShaderWithVertexFetch::getCompilationKeyDescription(AGCLLVMPassthroughVertexShaderWithVertexFetch *this@<X0>, std::string *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v10, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v8, "passthrough_size");
  _agcFieldString<unsigned int>(&v12, v8, *(this + 22));
  std::string::basic_string[abi:nn200100]<0>(__p, "pad_size");
  _agcFieldString<unsigned int>(&v13, __p, *(this + 23));
  _agcGroupWithHeader(a2, v10, &v12, 2);
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

void virtual thunk toAGCLLVMPassthroughVertexShaderWithVertexFetch::~AGCLLVMPassthroughVertexShaderWithVertexFetch(AGCLLVMPassthroughVertexShaderWithVertexFetch *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));
}

void AGCLLVMPassthroughVertexShaderWithVertexFetch::~AGCLLVMPassthroughVertexShaderWithVertexFetch(AGCLLVMPassthroughVertexShaderWithVertexFetch *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 96));
}

BOOL AGCLLVMTileDispatchVertexShaderRect::constructReply(AGCLLVMTileDispatchVertexShaderRect *this)
{
  v2 = AGCLLVMDriverVertexFetchShader::constructReply(this);
  if (v2)
  {
    v3 = this + *(*this - 24);
    v3[4454] = 1;
    v4 = *(v3 + 1104);
    v5 = *(v3 + 1108);
    v6 = *(v3 + 1106);
    if (v3[4464] == 1)
    {
      v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 548, 14, v7);
      if (v3[4464])
      {
        v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v3 + 548, 12, v8);
        if (v3[4464])
        {
          v9 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v3 + 548, 10, v9);
          if (v3[4464])
          {
            v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v3 + 548, 8, v10);
          }
        }
      }
    }

    v11 = v4 - v5;
    v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v3 + 548, 6, v12);
    if (v3[4464] == 1)
    {
      v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v3 + 4384), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v3 + 548, 4, v13);
    }

    v14 = flatbuffers::FlatBufferBuilder::EndTable((v3 + 4384), v11 + v6);
    v15 = this + *(*this - 24);
    v15[4454] = 1;
    v16 = *(v15 + 1106);
    v17 = *(v15 + 1104) - *(v15 + 1108);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v15 + 4384), v14);
    v18 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4384), v17 + v16);
    flatbuffers::FlatBufferBuilder::Finish((this + *(*this - 24) + 4384), v18, v19);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG11::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

void virtual thunk toAGCLLVMTileDispatchVertexShaderRect::~AGCLLVMTileDispatchVertexShaderRect(AGCLLVMTileDispatchVertexShaderRect *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));
}

void AGCLLVMTileDispatchVertexShaderRect::~AGCLLVMTileDispatchVertexShaderRect(AGCLLVMTileDispatchVertexShaderRect *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 96));
}

uint64_t AGCLLVMClearVertexDataShader::constructReply(AGCLLVMClearVertexDataShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    v77 = result;
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v76 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v5 = 22;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    do
    {
      v6 = this + *(*this - 24);
      v6[4358] = 1;
      v7 = *(v6 + 1080);
      v8 = *(v6 + 1084);
      v9 = *(v6 + 1082);
      if (v6[4368] == 1)
      {
        v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 4, v10);
        if (v6[4368])
        {
          v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 6, v11);
          if (v6[4368])
          {
            v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v6 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 8, v12);
            if (v6[4368])
            {
              v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v6 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v6 + 536, 10, v13);
            }
          }
        }
      }

      LODWORD(v79) = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v7 - v8 + v9);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v82, &v79);
      --v5;
    }

    while (v5);
    __p = v82;
    if (v83 == v82)
    {
      v14 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
    }

    else
    {
      v14 = v82;
    }

    v74 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v14, (v83 - v82) >> 2);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    if (*(this + 19) == -1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v15 = this + *(*this - 24);
      v15[4358] = 1;
      v16 = *(v15 + 1082);
      v17 = *(v15 + 1080) - *(v15 + 1084);
      if (v15[4368] == 1)
      {
        v18 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v15 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v15 + 536, 4, v18);
        if (v15[4368])
        {
          v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v15 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v15 + 536, 6, v19);
        }
      }

      v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v15 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v15 + 536, 8, v20);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v15 + 536, 12, *(this + 19));
      v21 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v15 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v15 + 536, 10, v21);
      v78 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v17 + v16);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v79, &v78);
      v23 = v79;
      v22 = v80;
    }

    v24 = *this;
    v25 = v22 - v23;
    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t;
    }

    v73 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v26, v25 >> 2);
    v27 = this + *(*this - 24);
    v27[4358] = 1;
    v28 = *(v27 + 1080);
    v29 = *(v27 + 1084);
    v30 = *(v27 + 1082);
    if (v27[4368] == 1)
    {
      v31 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v27 + 536, 4, v31);
      if (v27[4368])
      {
        v32 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v27 + 536, 6, v32);
        if (v27[4368])
        {
          v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v27 + 536, 8, v33);
          if (v27[4368])
          {
            v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v27 + 536, 16, v34);
            if (v27[4368])
            {
              v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v27 + 536, 10, v35);
              if (v27[4368])
              {
                v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v27 + 536, 12, v36);
              }
            }
          }
        }
      }
    }

    v37 = *(this + 18);
    if (v37 <= 4)
    {
      v37 = 4;
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v27 + 536, 14, v37 - 4);
    if (v27[4368] == 1)
    {
      v38 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v27 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v27 + 536, 18, v38);
    }

    v72 = flatbuffers::FlatBufferBuilder::EndTable((v27 + 4288), v28 - v29 + v30);
    v39 = this + *(*this - 24);
    v39[4358] = 1;
    v40 = *(v39 + 1082);
    v41 = *(v39 + 1080) - *(v39 + 1084);
    if (v39[4368] == 1)
    {
      v42 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 18, v42);
      if (v39[4368])
      {
        v43 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 16, v43);
        if (v39[4368])
        {
          v44 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 14, v44);
          if (v39[4368])
          {
            v45 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 12, v45);
            if (v39[4368])
            {
              v46 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 10, v46);
              if (v39[4368])
              {
                v47 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 8, v47);
                if (v39[4368])
                {
                  v48 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 6, v48);
                  if (v39[4368])
                  {
                    v49 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v39 + 4288), 0);
                    flatbuffers::FlatBufferBuilder::TrackField(v39 + 536, 4, v49);
                  }
                }
              }
            }
          }
        }
      }
    }

    v50 = flatbuffers::FlatBufferBuilder::EndTable((v39 + 4288), v41 + v40);
    v51 = this + *(*this - 24);
    v51[4358] = 1;
    v52 = *(v51 + 1082);
    v53 = *(v51 + 1080) - *(v51 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v51 + 4288), v73);
    v54 = flatbuffers::FlatBufferBuilder::EndTable((v51 + 4288), v53 + v52);
    v55 = this + *(*this - 24);
    v56 = *(v55 + 1080);
    v55[4358] = 1;
    v57 = *(v55 + 1084);
    v58 = *(v55 + 1082);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v55 + 4288), v54);
    v59 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v55 + 4288), 1);
    flatbuffers::FlatBufferBuilder::TrackField(v55 + 536, 6, v59);
    if (v55[4368] == 1)
    {
      v60 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v55 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v55 + 536, 8, v60);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v55 + 536, 10, *(this + 18));
    if (v55[4368] == 1)
    {
      v61 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v55 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v55 + 536, 12, v61);
      if (v55[4368])
      {
        v62 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v55 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v55 + 536, 14, v62);
      }
    }

    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v55 + 4288), 16, v72);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v55 + 4288), 18, v50);
    if (v55[4368] == 1)
    {
      v63 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v55 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v55 + 536, 20, v63);
    }

    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v55 + 4288), 22, v74);
    if (v55[4368] == 1)
    {
      v64 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v55 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v55 + 536, 26, v64);
    }

    v65 = flatbuffers::FlatBufferBuilder::EndTable((v55 + 4288), v56 - v57 + v58);
    v66 = this + *(*this - 24);
    v66[4358] = 1;
    v67 = *(v66 + 1082);
    v68 = *(v66 + 1080) - *(v66 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v66 + 4288), v76);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v66 + 4288), v65);
    v69 = *(*this - 24);
    v70 = flatbuffers::FlatBufferBuilder::EndTable((v66 + 4288), v68 + v67);
    flatbuffers::FlatBufferBuilder::Finish((this + v69 + 4288), v70, v71);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if (v23)
    {
      operator delete(v23);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v77;
  }

  return result;
}

void AGCLLVMClearVertexDataShader::getCompilationKeyDescription(AGCLLVMClearVertexDataShader *this@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v7, &unk_20E75F419);
  std::string::basic_string[abi:nn200100]<0>(v5, "vertex_stride");
  _agcFieldString<unsigned int>(&__p, v5, *(this + 18));
  _agcGroupWithHeader(a2, v7, &__p, 1);
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

void virtual thunk toAGCLLVMClearVertexDataShader::~AGCLLVMClearVertexDataShader(AGCLLVMClearVertexDataShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 80));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 80));
}

void AGCLLVMClearVertexDataShader::~AGCLLVMClearVertexDataShader(AGCLLVMClearVertexDataShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 80));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 80));
}

uint64_t AGCLLVMTABlitVertexShader::constructReply(AGCLLVMTABlitVertexShader *this)
{
  result = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (result)
  {
    v82 = result;
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = v4;
    v90 = v3;
    v91 = v4;
    AGCLLVMDriverShader::setGatherMasks(this, &v90);
    v81 = flatbuffers::FlatBufferBuilder::EndTable(v3, v5);
    v6 = 22;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    do
    {
      v7 = this + *(*this - 24);
      v7[4358] = 1;
      v8 = *(v7 + 1080);
      v9 = *(v7 + 1084);
      v10 = *(v7 + 1082);
      if (v7[4368] == 1)
      {
        v11 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v7 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v7 + 536, 4, v11);
        if (v7[4368])
        {
          v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v7 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v7 + 536, 6, v12);
          if (v7[4368])
          {
            v13 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v7 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v7 + 536, 8, v13);
            if (v7[4368])
            {
              v14 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v7 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v7 + 536, 10, v14);
            }
          }
        }
      }

      LODWORD(v84) = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v8 - v9 + v10);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v87, &v84);
      --v6;
    }

    while (v6);
    __p = v87;
    if (v88 == v87)
    {
      v15 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
    }

    else
    {
      v15 = v87;
    }

    v79 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v15, (v88 - v87) >> 2);
    v84 = 0;
    v85 = 0;
    v86 = 0;
    if (*(this + 22) != -1)
    {
      v16 = this + *(*this - 24);
      v16[4358] = 1;
      v17 = *(v16 + 1082);
      v18 = *(v16 + 1080) - *(v16 + 1084);
      if (v16[4368] == 1)
      {
        v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v16 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 4, v19);
        if (v16[4368])
        {
          v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v16 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 6, v20);
        }
      }

      v21 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v16 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 8, v21);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v16 + 536, 12, *(this + 22));
      v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v16 + 4288), 4);
      flatbuffers::FlatBufferBuilder::TrackField(v16 + 536, 10, v22);
      v83 = flatbuffers::FlatBufferBuilder::EndTable((v16 + 4288), v18 + v17);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v84, &v83);
    }

    if (*(this + 23) != -1)
    {
      v23 = this + *(*this - 24);
      v23[4358] = 1;
      v24 = *(v23 + 1082);
      v25 = *(v23 + 1080) - *(v23 + 1084);
      if (v23[4368] == 1)
      {
        v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v23 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 4, v26);
        if (v23[4368])
        {
          v27 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v23 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 6, v27);
        }
      }

      v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v23 + 4288), 3);
      flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 8, v28);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23 + 536, 12, *(this + 23));
      v29 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v23 + 4288), 2);
      flatbuffers::FlatBufferBuilder::TrackField(v23 + 536, 10, v29);
      v83 = flatbuffers::FlatBufferBuilder::EndTable((v23 + 4288), v25 + v24);
      std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v84, &v83);
    }

    v78 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexAttribData>> const&)::t, 0);
    v30 = v84;
    if (v85 == v84)
    {
      v31 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>> const&)::t;
    }

    else
    {
      v31 = v84;
    }

    v77 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v31, (v85 - v84) >> 2);
    v32 = this + *(*this - 24);
    v32[4358] = 1;
    v33 = *(v32 + 1082);
    v34 = *(v32 + 1080) - *(v32 + 1084);
    if (v32[4368] == 1)
    {
      v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 4, v35);
      if (v32[4368])
      {
        v36 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 6, v36);
        if (v32[4368])
        {
          v37 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 8, v37);
          if (v32[4368])
          {
            v38 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 16, v38);
            if (v32[4368])
            {
              v39 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 10, v39);
              if (v32[4368])
              {
                v40 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 12, v40);
                if (v32[4368])
                {
                  v41 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 14, v41);
                  if (v32[4368])
                  {
                    v42 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v32 + 4288), 0);
                    flatbuffers::FlatBufferBuilder::TrackField(v32 + 536, 18, v42);
                  }
                }
              }
            }
          }
        }
      }
    }

    v43 = flatbuffers::FlatBufferBuilder::EndTable((v32 + 4288), v34 + v33);
    v44 = this + *(*this - 24);
    v44[4358] = 1;
    v45 = *(v44 + 1082);
    v46 = *(v44 + 1080) - *(v44 + 1084);
    if (v44[4368] == 1)
    {
      v47 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 18, v47);
      if (v44[4368])
      {
        v48 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 16, v48);
        if (v44[4368])
        {
          v49 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 14, v49);
          if (v44[4368])
          {
            v50 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 12, v50);
            if (v44[4368])
            {
              v51 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 10, v51);
              if (v44[4368])
              {
                v52 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
                flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 8, v52);
                if (v44[4368])
                {
                  v53 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
                  flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 6, v53);
                  if (v44[4368])
                  {
                    v54 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v44 + 4288), 0);
                    flatbuffers::FlatBufferBuilder::TrackField(v44 + 536, 4, v54);
                  }
                }
              }
            }
          }
        }
      }
    }

    v55 = flatbuffers::FlatBufferBuilder::EndTable((v44 + 4288), v46 + v45);
    v56 = this + *(*this - 24);
    v56[4358] = 1;
    v57 = *(v56 + 1082);
    v58 = *(v56 + 1080) - *(v56 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v56 + 4288), v78);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v56 + 4288), v77);
    v59 = flatbuffers::FlatBufferBuilder::EndTable((v56 + 4288), v58 + v57);
    v60 = this + *(*this - 24);
    v61 = *(v60 + 1080);
    v60[4358] = 1;
    v62 = *(v60 + 1084);
    v63 = *(v60 + 1082);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v60 + 4288), v59);
    if (v60[4368] == 1)
    {
      v64 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 536, 6, v64);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v60 + 536, 8, *(this + 100) != 0, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v60 + 536, 10, *(this + 24));
    if (v60[4368] == 1)
    {
      v65 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 536, 12, v65);
      if (v60[4368])
      {
        v66 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v60 + 4288), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v60 + 536, 14, v66);
      }
    }

    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v60 + 4288), 16, v43);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v60 + 4288), 18, v55);
    if (v60[4368] == 1)
    {
      v67 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 536, 20, v67);
    }

    v68 = v61 - v62;
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v60 + 4288), 22, v79);
    if (v60[4368] == 1)
    {
      v69 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v60 + 4288), 0);
      flatbuffers::FlatBufferBuilder::TrackField(v60 + 536, 26, v69);
    }

    v70 = flatbuffers::FlatBufferBuilder::EndTable((v60 + 4288), v68 + v63);
    v71 = this + *(*this - 24);
    v71[4358] = 1;
    v72 = *(v71 + 1082);
    v73 = *(v71 + 1080) - *(v71 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v71 + 4288), v81);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<flatbuffers::Offset<AGCCodeTranslator::VertexBuiltinData>>>((v71 + 4288), v70);
    v74 = *(*this - 24);
    v75 = flatbuffers::FlatBufferBuilder::EndTable((v71 + 4288), v73 + v72);
    flatbuffers::FlatBufferBuilder::Finish((this + v74 + 4288), v75, v76);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if (v30)
    {
      operator delete(v30);
    }

    if (__p)
    {
      operator delete(__p);
    }

    return v82;
  }

  return result;
}

void *AGCLLVMDriverShader::setGatherMasks(void *result, uint64_t *a2)
{
  if (*(*(result + *(*result - 24) + 2168) + 1900))
  {
    v3 = result;
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(*a2, 22, result[6], 0);
    v4 = *a2;
    if (*(*a2 + 80) == 1)
    {
      v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(*a2, 0);
      flatbuffers::FlatBufferBuilder::TrackField(v4, 24, v5);
      v4 = *a2;
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v4, 26, v3[7], 0);
    v6 = *a2;
    if (*(*a2 + 80) == 1)
    {
      v7 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(*a2, 0);
      flatbuffers::FlatBufferBuilder::TrackField(v6, 28, v7);
      v6 = *a2;
    }

    v8 = v3[8];

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v6, 30, v8, 0);
  }

  return result;
}

void AGCLLVMTABlitVertexShader::getCompilationKeyDescription(AGCLLVMTABlitVertexShader *this@<X0>, std::string *a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *(this + 10);
  std::string::basic_string[abi:nn200100]<0>(v22, "AGCTABlitState");
  std::string::basic_string[abi:nn200100]<0>(v20, "blitType");
  _agcFieldString<char const*>(&v24, v20, (&_AGCTABlitTypeStrings)[*v3 & 7]);
  std::string::basic_string[abi:nn200100]<0>(v18, "primitiveSizePOT");
  _agcFieldString<unsigned int>(&v25, v18, (*v3 >> 8) & 7);
  std::string::basic_string[abi:nn200100]<0>(v16, "primitiveCount");
  _agcFieldString<unsigned int>(&v26, v16, (*v3 >> 11));
  std::string::basic_string[abi:nn200100]<0>(v14, "loopCount");
  _agcFieldString<unsigned int>(&v27, v14, (*v3 >> 19) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(v12, "sampleCountPOT");
  _agcFieldString<unsigned int>(&v28, v12, (*v3 >> 23) & 3);
  std::string::basic_string[abi:nn200100]<0>(v10, "regionOffset");
  _agcFieldString<unsigned int>(&v29, v10, (*v3 >> 25) & 1);
  std::string::basic_string[abi:nn200100]<0>(v8, "blitTextureFormat");
  _agcFieldString<unsigned int>(&v30, v8, *v3 >> 3);
  std::string::basic_string[abi:nn200100]<0>(__p, "unused");
  _agcFieldString<unsigned int>(&v31, __p, *v3 >> 28);
  _agcGroupWithHeader(a2, v22, &v24, 8);
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

void virtual thunk toAGCLLVMTABlitVertexShader::~AGCLLVMTABlitVertexShader(AGCLLVMTABlitVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 104));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 104));
}

void AGCLLVMTABlitVertexShader::~AGCLLVMTABlitVertexShader(AGCLLVMTABlitVertexShader *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 104));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 104));
}

BOOL AGCLLVMDriverFragmentShader::constructReply(AGCLLVMDriverFragmentShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = this + *(*this - 24);
    if (*(*(v3 + 271) + 1863) == 1)
    {
      v18 = xmmword_20E70C570;
      AIRConstSampler::constructFlatReply(&v18, (v3 + 4288));
      operator new();
    }

    v4 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v6 = v5;
    *&v18 = v4;
    DWORD2(v18) = v5;
    AGCLLVMDriverShader::setGatherMasks(this, &v18);
    if (*(*(this + *(*this - 24) + 2168) + 1863) == 1)
    {
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>(v4, 0);
    }

    v7 = flatbuffers::FlatBufferBuilder::EndTable(v4, v6);
    v8 = (*(*this + 48))(this);
    v10 = flatbuffers::FlatBufferBuilder::EndTable(v8, v9);
    v11 = this + *(*this - 24);
    v11[4358] = 1;
    v12 = *(v11 + 1082);
    v13 = *(v11 + 1080) - *(v11 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v11 + 4288), v7);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v11 + 4288), v10);
    v14 = *(*this - 24);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v11 + 4288), v13 + v12);
    flatbuffers::FlatBufferBuilder::Finish((this + v14 + 4288), v15, v16);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

void AGCLLVMClearFragmentShader::getCompilationKeyDescription(AGCLLVMClearFragmentShader *this@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  agcStringRepresentation<_AGCDrawBufferState>(&v8, *(this + 102));
  v4 = *(this + 132);
  std::string::basic_string[abi:nn200100]<0>(v19, "AGCColorMaskState");
  std::string::basic_string[abi:nn200100]<0>(v17, "redEnableBits");
  _agcFieldStringHex(&v21, v17, *v4);
  std::string::basic_string[abi:nn200100]<0>(v15, "greenEnableBits");
  _agcFieldStringHex(&v22, v15, v4[1]);
  std::string::basic_string[abi:nn200100]<0>(v13, "blueEnableBits");
  _agcFieldStringHex(&v23, v13, v4[2]);
  std::string::basic_string[abi:nn200100]<0>(v11, "alphaEnableBits");
  _agcFieldStringHex(&v24, v11, v4[3]);
  std::string::basic_string[abi:nn200100]<0>(__p, "unknownMaskBits");
  _agcFieldStringHex(&v25, __p, v4[4]);
  _agcGroupWithHeader(&v7, v19, &v21, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v25.__r_.__value_.__l.__data_ + i * 8));
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

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v8.__r_.__value_.__l.__data_, &v7.__r_.__value_.__l.__data_);
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

void agcStringRepresentation<_AGCDrawBufferState>(std::string *a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v31, "AGCDrawBufferState");
  std::string::basic_string[abi:nn200100]<0>(v54, "AGCDrawBufferStateInternal");
  std::string::basic_string[abi:nn200100]<0>(v52, "enabledBits");
  _agcFieldStringHex(&v59, v52, *(a2 + 32));
  std::string::basic_string[abi:nn200100]<0>(&v51, "sampleCount");
  _agcFieldString<unsigned char>(&v60, &v51.__r_.__value_.__l.__data_, 1 << (BYTE1(*(a2 + 32)) & 3));
  std::string::basic_string[abi:nn200100]<0>(v49, "colorSampleCount");
  _agcFieldString<unsigned char>(&v61, v49, 1 << ((*(a2 + 32) >> 10) & 3));
  v4 = *(a2 + 32) & 0x1FF000;
  if (v4 == 2093056)
  {
    std::string::basic_string[abi:nn200100]<0>(v45, "outputPartitionSize");
    std::string::basic_string[abi:nn200100]<0>(v43, "unknown");
    _agcFieldString<std::string>(&v62, v45, v43);
  }

  else
  {
    std::string::basic_string[abi:nn200100]<0>(v47, "outputPartitionSize");
    v5 = *(a2 + 32);
    if ((~v5 & 0x1FF000) == 0)
    {
      goto LABEL_90;
    }

    _agcFieldString<unsigned short>(&v62, v47, (v5 >> 12) & 0x1FF);
  }

  v6 = *(a2 + 32);
  if ((v6 & 0x400000) != 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v41, "LIBSpilling");
    v7 = *(a2 + 32);
    if ((v7 & 0x400000) != 0)
    {
      _agcFieldString<unsigned char>(&v63, v41, (v7 & 0x200000) != 0);
      goto LABEL_9;
    }

LABEL_90:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  std::string::basic_string[abi:nn200100]<0>(v39, "LIBSpilling");
  std::string::basic_string[abi:nn200100]<0>(v37, "unknown");
  _agcFieldString<std::string>(&v63, v39, v37);
LABEL_9:
  std::string::basic_string[abi:nn200100]<0>(&v36, "forceSoftwareEmulatedRaytracing");
  _agcFieldString<unsigned char>(&v64, &v36.__r_.__value_.__l.__data_, (*(a2 + 32) & 0x800000) != 0);
  std::string::basic_string[abi:nn200100]<0>(v34, "maxSlabIndex");
  _agcFieldString<unsigned char>(&v65, v34, *(a2 + 35) & 0xF);
  std::string::basic_string[abi:nn200100]<0>(&__p, "useSlabs");
  _agcFieldString<unsigned char>(&v66, &__p.__r_.__value_.__l.__data_, (*(a2 + 32) & 0x10000000) != 0);
  _agcGroupWithHeader(&v56, v54, &v59, 8);
  for (i = 0; i != -24; i -= 3)
  {
    if (SHIBYTE(v66.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v66.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v9 = v41[0];
    goto LABEL_26;
  }

  operator delete(v36.__r_.__value_.__l.__data_);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (v40 < 0)
  {
    v9 = v39[0];
LABEL_26:
    operator delete(v9);
  }

LABEL_27:
  if (v4 != 2093056)
  {
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v10 = v47[0];
    goto LABEL_34;
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (v46 < 0)
  {
    v10 = v45[0];
LABEL_34:
    operator delete(v10);
  }

LABEL_35:
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

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(v54, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v52, "encoded[0]");
  _agcStringRepresentation(&v51, a2);
  _agcFieldString<std::string>(&v59, v52, &v51);
  std::string::basic_string[abi:nn200100]<0>(v49, "encoded[1]");
  _agcStringRepresentation(&v36, (a2 + 4));
  _agcFieldString<std::string>(&v60, v49, &v36);
  std::string::basic_string[abi:nn200100]<0>(v34, "encoded[2]");
  _agcStringRepresentation(&__p, (a2 + 8));
  _agcFieldString<std::string>(&v61, v34, &__p);
  std::string::basic_string[abi:nn200100]<0>(v29, "encoded[3]");
  _agcStringRepresentation(&v28, (a2 + 12));
  _agcFieldString<std::string>(&v62, v29, &v28);
  std::string::basic_string[abi:nn200100]<0>(v26, "encoded[4]");
  _agcStringRepresentation(&v25, (a2 + 16));
  _agcFieldString<std::string>(&v63, v26, &v25);
  std::string::basic_string[abi:nn200100]<0>(v23, "encoded[5]");
  _agcStringRepresentation(&v22, (a2 + 20));
  _agcFieldString<std::string>(&v64, v23, &v22);
  std::string::basic_string[abi:nn200100]<0>(v20, "encoded[6]");
  _agcStringRepresentation(&v19, (a2 + 24));
  _agcFieldString<std::string>(&v65, v20, &v19);
  std::string::basic_string[abi:nn200100]<0>(v17, "encoded[7]");
  _agcStringRepresentation(&v16, (a2 + 28));
  _agcFieldString<std::string>(&v66, v17, &v16);
  _agcGroupWithHeader(&v57, v54, &v59, 8);
  std::string::basic_string[abi:nn200100]<0>(v14, "_unused");
  _agcFieldString<unsigned int>(&v58, v14, *(a2 + 36));
  _agcGroupWithHeader(a1, v31, &v56, 3);
  for (j = 0; j != -9; j -= 3)
  {
    if (SHIBYTE(v58.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v58.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  for (k = 0; k != -24; k -= 3)
  {
    if (SHIBYTE(v66.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v66.__r_.__value_.__l.__data_ + k * 8));
    }
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

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
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

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void virtual thunk toAGCLLVMClearFragmentShader::~AGCLLVMClearFragmentShader(AGCLLVMClearFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AD370;
  *(v1 + 133) = off_2825AD4A8;
  *(v1 + 346) = &off_2825AD5B8;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AD5D8;
  *(v1 + 133) = off_2825AD700;
  *(v1 + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AD370;
  *(v1 + 133) = off_2825AD4A8;
  *(v1 + 346) = &off_2825AD5B8;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AD5D8;
  *(v1 + 133) = off_2825AD700;
  *(v1 + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));
}

void non-virtual thunk toAGCLLVMClearFragmentShader::~AGCLLVMClearFragmentShader(AGCLLVMClearFragmentShader *this)
{
  *this = &off_2825AD370;
  v2 = (this + 992);
  *(this + 124) = off_2825AD4A8;
  *(this + 337) = &off_2825AD5B8;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AD5D8;
  *(this + 124) = off_2825AD700;
  *(this + 337) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825AD370;
  v2 = (this + 992);
  *(this + 124) = off_2825AD4A8;
  *(this + 337) = &off_2825AD5B8;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AD5D8;
  *(this + 124) = off_2825AD700;
  *(this + 337) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMClearFragmentShader::~AGCLLVMClearFragmentShader(AGCLLVMClearFragmentShader *this)
{
  *(this + 9) = &off_2825AD370;
  v2 = (this + 1064);
  *(this + 133) = off_2825AD4A8;
  *(this + 346) = &off_2825AD5B8;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AD5D8;
  *(this + 133) = off_2825AD700;
  *(this + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825AD370;
  v2 = (this + 1064);
  *(this + 133) = off_2825AD4A8;
  *(this + 346) = &off_2825AD5B8;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AD5D8;
  *(this + 133) = off_2825AD700;
  *(this + 346) = &off_2825AD810;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMBackgroundObjectFragmentShader::getCompilationKeyDescription(AGCLLVMBackgroundObjectFragmentShader *this@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  agcStringRepresentation<_AGCDrawBufferState>(&v8, *(this + 102));
  v4 = *(this + 132);
  std::string::basic_string[abi:nn200100]<0>(v21, "AGCBackgroundObjectState");
  std::string::basic_string[abi:nn200100]<0>(v19, "dimensionBits");
  _agcFieldString<unsigned short>(&v23, v19, *v4);
  std::string::basic_string[abi:nn200100]<0>(v17, "arrayBits");
  _agcFieldString<unsigned char>(&v24, v17, *(v4 + 2));
  std::string::basic_string[abi:nn200100]<0>(v15, "clearedBits");
  _agcFieldString<unsigned char>(&v25, v15, *(v4 + 3));
  std::string::basic_string[abi:nn200100]<0>(v13, "loadedBits");
  _agcFieldString<unsigned char>(&v26, v13, *(v4 + 4));
  std::string::basic_string[abi:nn200100]<0>(v11, "uberVariant");
  _agcFieldString<unsigned char>(&v27, v11, *(v4 + 5) & 1);
  std::string::basic_string[abi:nn200100]<0>(__p, "pridAllocationStrategy");
  _agcFieldString<char const*>(&v28, __p, (&_agcPRIDAllocationStrategyStrings)[(*(v4 + 4) >> 9) & 7]);
  _agcGroupWithHeader(&v7, v21, &v23, 6);
  for (i = 0; i != -18; i -= 3)
  {
    if (SHIBYTE(v28.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v28.__r_.__value_.__l.__data_ + i * 8));
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

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v8.__r_.__value_.__l.__data_, &v7.__r_.__value_.__l.__data_);
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

const char *virtual thunk toAGCLLVMBackgroundObjectFragmentShader::dumpType(AGCLLVMBackgroundObjectFragmentShader *this)
{
  if ((*(*(this + *(*this - 64) + 1056) + 4) & 0x100) != 0)
  {
    return "bgo_uber";
  }

  else
  {
    return "bgo";
  }
}

void virtual thunk toAGCLLVMBackgroundObjectFragmentShader::~AGCLLVMBackgroundObjectFragmentShader(AGCLLVMBackgroundObjectFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825ADD50;
  *(v1 + 133) = off_2825ADE88;
  *(v1 + 346) = &off_2825ADF98;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825ADFB8;
  *(v1 + 133) = off_2825AE0E0;
  *(v1 + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825ADD50;
  *(v1 + 133) = off_2825ADE88;
  *(v1 + 346) = &off_2825ADF98;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825ADFB8;
  *(v1 + 133) = off_2825AE0E0;
  *(v1 + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1064));
}

void non-virtual thunk toAGCLLVMBackgroundObjectFragmentShader::~AGCLLVMBackgroundObjectFragmentShader(AGCLLVMBackgroundObjectFragmentShader *this)
{
  *this = &off_2825ADD50;
  v2 = (this + 992);
  *(this + 124) = off_2825ADE88;
  *(this + 337) = &off_2825ADF98;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825ADFB8;
  *(this + 124) = off_2825AE0E0;
  *(this + 337) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825ADD50;
  v2 = (this + 992);
  *(this + 124) = off_2825ADE88;
  *(this + 337) = &off_2825ADF98;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825ADFB8;
  *(this + 124) = off_2825AE0E0;
  *(this + 337) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

const char *AGCLLVMBackgroundObjectFragmentShader::dumpType(AGCLLVMBackgroundObjectFragmentShader *this)
{
  if ((*(*(this + 132) + 4) & 0x100) != 0)
  {
    return "bgo_uber";
  }

  else
  {
    return "bgo";
  }
}

char *AGCLLVMBackgroundObjectFragmentShader::constructFlatReply(AGCLLVMBackgroundObjectFragmentShader *this)
{
  if ((*(*(this + 132) + 4) & 0x100) == 0)
  {
    return AGCLLVMFragmentShader::constructFlatReply((this + 72));
  }

  v2 = this + *(*this - 24);
  v2[4358] = 1;
  v1 = v2 + 4288;
  v3 = *(v2 + 540) - *(v2 + 542) + *(v2 + 541);
  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v2 + 4288), 0xFFFFFFFFLL);
  flatbuffers::FlatBufferBuilder::TrackField(v2 + 536, 8, v4);
  if (v2[4368] == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>((v2 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v2 + 536, 6, v5);
  }

  return v1;
}

void AGCLLVMBackgroundObjectFragmentShader::~AGCLLVMBackgroundObjectFragmentShader(AGCLLVMBackgroundObjectFragmentShader *this)
{
  *(this + 9) = &off_2825ADD50;
  v2 = (this + 1064);
  *(this + 133) = off_2825ADE88;
  *(this + 346) = &off_2825ADF98;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825ADFB8;
  *(this + 133) = off_2825AE0E0;
  *(this + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825ADD50;
  v2 = (this + 1064);
  *(this + 133) = off_2825ADE88;
  *(this + 346) = &off_2825ADF98;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825ADFB8;
  *(this + 133) = off_2825AE0E0;
  *(this + 346) = &off_2825AE1F0;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

BOOL AGCLLVMEndOfTileProgram::constructReply(AGCLLVMEndOfTileProgram *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = v4;
    v29 = v3;
    v30 = v4;
    AGCLLVMDriverShader::setGatherMasks(this, &v29);
    v6 = flatbuffers::FlatBufferBuilder::EndTable(v3, v5);
    v7 = this + *(*this - 24);
    v7[4358] = 1;
    v8 = *(v7 + 1082);
    v9 = *(v7 + 1080) - *(v7 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v7 + 4288), v6);
    v10 = *(*this - 24);
    v11 = flatbuffers::FlatBufferBuilder::EndTable((v7 + 4288), v9 + v8);
    flatbuffers::FlatBufferBuilder::Finish((this + v10 + 4288), v11, v12);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if (*(this + 81) == 1)
    {
      v13 = this + *(*this - 24);
      v13[4454] = 1;
      v14 = *(v13 + 1106);
      v15 = *(v13 + 1104) - *(v13 + 1108);
      if (v13[4464] == 1)
      {
        v16 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v13 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v13 + 548, 10, v16);
        if (v13[4464])
        {
          v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v13 + 4384), 0);
          flatbuffers::FlatBufferBuilder::TrackField(v13 + 548, 8, v17);
          if (v13[4464])
          {
            v18 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v13 + 4384), 0);
            flatbuffers::FlatBufferBuilder::TrackField(v13 + 548, 12, v18);
            if (v13[4464])
            {
              v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v13 + 4384), 0);
              flatbuffers::FlatBufferBuilder::TrackField(v13 + 548, 6, v19);
            }
          }
        }
      }

      v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v13 + 4384), 1);
      flatbuffers::FlatBufferBuilder::TrackField(v13 + 548, 4, v20);
      v21 = flatbuffers::FlatBufferBuilder::EndTable((v13 + 4384), v15 + v14);
      v22 = this + *(*this - 24);
      v22[4454] = 1;
      v23 = *(v22 + 1106);
      v24 = *(v22 + 1104) - *(v22 + 1108);
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v22 + 4384), v21);
      v25 = *(*this - 24);
      v26 = flatbuffers::FlatBufferBuilder::EndTable((v22 + 4384), v24 + v23);
      flatbuffers::FlatBufferBuilder::Finish((this + v25 + 4384), v26, v27);
      AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    }
  }

  return v2;
}

void AGCLLVMEndOfTileProgram::getCompilationKeyDescription(AGCLLVMEndOfTileProgram *this@<X0>, std::string *a2@<X8>)
{
  v110 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  std::string::basic_string[abi:nn200100]<0>(v80, "AGCEndOfTileState");
  std::string::basic_string[abi:nn200100]<0>(v78, "emitMask");
  _agcFieldStringHex(&v99, v78, *(v3 + 72));
  std::string::basic_string[abi:nn200100]<0>(v76, "conditionalMask");
  _agcFieldStringHex(&v100, v76, *(v3 + 74));
  std::string::basic_string[abi:nn200100]<0>(v74, "sampleCount");
  _agcFieldString<unsigned long long>(&v101, v74, *(v3 + 76) & 0xFLL);
  std::string::basic_string[abi:nn200100]<0>(v72, "outputPartitionSize");
  _agcFieldString<unsigned long long>(&v102, v72, (*(v3 + 72) >> 36) & 0x1FFLL);
  std::string::basic_string[abi:nn200100]<0>(v70, "numEmits");
  _agcFieldString<unsigned long long>(&v103, v70, (*(v3 + 72) >> 45) & 0x1FLL);
  std::string::basic_string[abi:nn200100]<0>(v68, "dummyEmitIndex");
  _agcFieldString<unsigned long long>(&v104, v68, (*(v3 + 72) >> 50) & 0x1FLL);
  std::string::basic_string[abi:nn200100]<0>(v66, "type");
  _agcFieldString<unsigned long long>(&v105, v66, (*(v3 + 72) >> 55) & 3);
  std::string::basic_string[abi:nn200100]<0>(v64, "uberVariant");
  _agcFieldString<unsigned long long>(&v106, v64, (*(v3 + 72) >> 57) & 1);
  std::string::basic_string[abi:nn200100]<0>(v62, "gin1403SWWAEnabled");
  _agcFieldString<unsigned long long>(&v107, v62, (*(v3 + 72) >> 58) & 1);
  std::string::basic_string[abi:nn200100]<0>(v60, "unused");
  _agcFieldString<unsigned long long>(&v108, v60, *(v3 + 72) >> 59);
  std::string::basic_string[abi:nn200100]<0>(v58, "encoded : ");
  std::string::basic_string[abi:nn200100]<0>(v56, "encoded[0]");
  _agcStringRepresentation(&v55, v3);
  _agcFieldString<std::string>(&v82, v56, &v55);
  std::string::basic_string[abi:nn200100]<0>(v53, "encoded[1]");
  _agcStringRepresentation(&v52, (v3 + 4));
  _agcFieldString<std::string>(&v83, v53, &v52);
  std::string::basic_string[abi:nn200100]<0>(v50, "encoded[2]");
  _agcStringRepresentation(&v49, (v3 + 8));
  _agcFieldString<std::string>(&v84, v50, &v49);
  std::string::basic_string[abi:nn200100]<0>(v47, "encoded[3]");
  _agcStringRepresentation(&v46, (v3 + 12));
  _agcFieldString<std::string>(&v85, v47, &v46);
  std::string::basic_string[abi:nn200100]<0>(v44, "encoded[4]");
  _agcStringRepresentation(&v43, (v3 + 16));
  _agcFieldString<std::string>(&v86, v44, &v43);
  std::string::basic_string[abi:nn200100]<0>(v41, "encoded[5]");
  _agcStringRepresentation(&v40, (v3 + 20));
  _agcFieldString<std::string>(&v87, v41, &v40);
  std::string::basic_string[abi:nn200100]<0>(v38, "encoded[6]");
  _agcStringRepresentation(&v37, (v3 + 24));
  _agcFieldString<std::string>(&v88, v38, &v37);
  std::string::basic_string[abi:nn200100]<0>(v35, "encoded[7]");
  _agcStringRepresentation(&v34, (v3 + 28));
  _agcFieldString<std::string>(&v89, v35, &v34);
  std::string::basic_string[abi:nn200100]<0>(v32, "encoded[8]");
  _agcStringRepresentation(&v31, (v3 + 32));
  _agcFieldString<std::string>(&v90, v32, &v31);
  std::string::basic_string[abi:nn200100]<0>(v29, "encoded[9]");
  _agcStringRepresentation(&v28, (v3 + 36));
  _agcFieldString<std::string>(&v91, v29, &v28);
  std::string::basic_string[abi:nn200100]<0>(v26, "encoded[10]");
  _agcStringRepresentation(&v25, (v3 + 40));
  _agcFieldString<std::string>(&v92, v26, &v25);
  std::string::basic_string[abi:nn200100]<0>(v23, "encoded[11]");
  _agcStringRepresentation(&v22, (v3 + 44));
  _agcFieldString<std::string>(&v93, v23, &v22);
  std::string::basic_string[abi:nn200100]<0>(v20, "encoded[12]");
  _agcStringRepresentation(&v19, (v3 + 48));
  _agcFieldString<std::string>(&v94, v20, &v19);
  std::string::basic_string[abi:nn200100]<0>(v17, "encoded[13]");
  _agcStringRepresentation(&v16, (v3 + 52));
  _agcFieldString<std::string>(&v95, v17, &v16);
  std::string::basic_string[abi:nn200100]<0>(v14, "encoded[14]");
  _agcStringRepresentation(&v13, (v3 + 56));
  _agcFieldString<std::string>(&v96, v14, &v13);
  std::string::basic_string[abi:nn200100]<0>(v11, "encoded[15]");
  _agcStringRepresentation(&v10, (v3 + 60));
  _agcFieldString<std::string>(&v97, v11, &v10);
  std::string::basic_string[abi:nn200100]<0>(v8, "encoded[16]");
  _agcStringRepresentation(&__p, (v3 + 64));
  _agcFieldString<std::string>(&v98, v8, &__p);
  _agcGroupWithHeader(&v109, v58, &v82, 17);
  _agcGroupWithHeader(a2, v80, &v99, 11);
  v4 = 264;
  do
  {
    if (v99.__r_.__value_.__s.__data_[v4 - 1] < 0)
    {
      operator delete(*(&v98.__r_.__value_.__l.__data_ + v4));
    }

    v4 -= 24;
  }

  while (v4);
  v5 = 51;
  do
  {
    if (v82.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v80[v5]);
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

  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if (v79 < 0)
  {
    operator delete(v78[0]);
  }

  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void _agcStringRepresentation(std::string *a1, unsigned __int8 *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v20, "AGCEmitState");
  std::string::basic_string[abi:nn200100]<0>(v18, "slotIndex");
  _agcFieldString<unsigned int>(&v22, v18, *a2);
  std::string::basic_string[abi:nn200100]<0>(v16, "channelFormat");
  _agcFieldString<unsigned int>(&v23, v16, a2[1]);
  std::string::basic_string[abi:nn200100]<0>(v14, "dimension");
  _agcFieldString<unsigned int>(&v24, v14, a2[2]);
  std::string::basic_string[abi:nn200100]<0>(v12, "gammaCorrection");
  _agcFieldString<unsigned int>(&v25, v12, HIBYTE(*a2) & 1);
  std::string::basic_string[abi:nn200100]<0>(v10, "sparse");
  _agcFieldString<unsigned int>(&v26, v10, (*a2 >> 25) & 1);
  std::string::basic_string[abi:nn200100]<0>(v8, "numWrittenComponents");
  _agcFieldString<unsigned int>(&v27, v8, (*a2 >> 26) & 7);
  std::string::basic_string[abi:nn200100]<0>(__p, "manualResolve");
  _agcFieldString<unsigned int>(&v28, __p, (*a2 >> 29) & 1);
  _agcGroupWithHeader(a1, v20, &v22, 7);
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

_BYTE *virtual thunk toAGCLLVMEndOfTileProgram::wrapperName@<X0>(AGCLLVMEndOfTileProgram *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = this + *(*this - 88);
  if (v4[81])
  {
    v5 = "agc.sw_eot";
  }

  else if (v4[82])
  {
    v5 = "agc.eotfc";
  }

  else
  {
    v5 = "agc.eot";
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v5);
}

const char *virtual thunk toAGCLLVMEndOfTileProgram::dumpType(AGCLLVMEndOfTileProgram *this)
{
  v1 = *(*(this + *(*this - 64) + 72) + 72);
  v2 = (v1 >> 55) & 3;
  if ((v1 & 0x200000000000000) != 0)
  {
    if (v2 == 1)
    {
      return "sw_eot_uber";
    }

    v4 = "eot_uber";
    v5 = "eotfc_uber";
  }

  else
  {
    if (v2 == 1)
    {
      return "sw_eot";
    }

    v4 = "eot";
    v5 = "eotfc";
  }

  if (v2 == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

void virtual thunk toAGCLLVMEndOfTileProgram::~AGCLLVMEndOfTileProgram(AGCLLVMEndOfTileProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 96));
}

_BYTE *AGCLLVMEndOfTileProgram::wrapperName@<X0>(AGCLLVMEndOfTileProgram *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 81))
  {
    v2 = "agc.sw_eot";
  }

  else if (*(this + 82))
  {
    v2 = "agc.eotfc";
  }

  else
  {
    v2 = "agc.eot";
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v2);
}

const char *AGCLLVMEndOfTileProgram::dumpType(AGCLLVMEndOfTileProgram *this)
{
  v1 = *(*(this + 9) + 72);
  v2 = (v1 >> 55) & 3;
  if ((v1 & 0x200000000000000) != 0)
  {
    if (v2 == 1)
    {
      return "sw_eot_uber";
    }

    v4 = "eot_uber";
    v5 = "eotfc_uber";
  }

  else
  {
    if (v2 == 1)
    {
      return "sw_eot";
    }

    v4 = "eot";
    v5 = "eotfc";
  }

  if (v2 == 2)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

void AGCLLVMEndOfTileProgram::~AGCLLVMEndOfTileProgram(AGCLLVMEndOfTileProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 96));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 96));
}

BOOL AGCLLVMUtilityProgram::constructReply(AGCLLVMUtilityProgram *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = flatbuffers::FlatBufferBuilder::EndTable(v3, v4);
    v6 = this + *(*this - 24);
    v6[4358] = 1;
    v7 = *(v6 + 1082);
    v8 = *(v6 + 1080) - *(v6 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v6 + 4288), v5);
    v9 = *(*this - 24);
    v10 = flatbuffers::FlatBufferBuilder::EndTable((v6 + 4288), v8 + v7);
    flatbuffers::FlatBufferBuilder::Finish((this + v9 + 4288), v10, v11);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  }

  return v2;
}

uint64_t AGCLLVMUtilityProgram::compile(AGCLLVMUtilityProgram *this)
{
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v2 = *(this + *(*this - 24) + 1696);
      v3 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v2, "------ Start compilation key description for %s shader %u  ------", v3, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v4 = *(this + *(*this - 24) + 1696);
      (*(*this + 40))(__p, this);
      v5 = v14 >= 0 ? __p : __p[0];
      AGCTargetPrinter::printMessage(v4, "%s", v5);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = *(this + *(*this - 24) + 1696);
      v7 = (*(*this + 16))(this);
      AGCTargetPrinter::printMessage(v6, "------ End compilation key description for %s shader %u  ------", v7, *(this + *(*this - 24) + 5088));
    }
  }

  v8 = this + *(*this - 24);
  v9 = *(v8 + 211);
  v10 = *(v8 + 267);
  __p[0] = 0x10000;
  v11 = AGCLLVMCtx::compile(v9, v8, v10, 1, 2, __p);
  result = 0;
  if (v11)
  {
    return (*(*this + 8))(this);
  }

  return result;
}

void virtual thunk toAGCLLVMUtilityProgram::~AGCLLVMUtilityProgram(AGCLLVMUtilityProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 8));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + *(*this - 24) + 8));
}

void AGCLLVMUtilityProgram::~AGCLLVMUtilityProgram(AGCLLVMUtilityProgram *this)
{
  AGCLLVMObject::~AGCLLVMObject((this + 8));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMObject::~AGCLLVMObject((this + 8));
}

void virtual thunk toAGCLLVMDummyFeedbackFragmentShader::~AGCLLVMDummyFeedbackFragmentShader(AGCLLVMDummyFeedbackFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AE998;
  *(v1 + 132) = off_2825AEAD0;
  *(v1 + 345) = &off_2825AEBE0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AEC00;
  *(v1 + 132) = off_2825AED28;
  *(v1 + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1056));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AE998;
  *(v1 + 132) = off_2825AEAD0;
  *(v1 + 345) = &off_2825AEBE0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AEC00;
  *(v1 + 132) = off_2825AED28;
  *(v1 + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1056));
}

void non-virtual thunk toAGCLLVMDummyFeedbackFragmentShader::~AGCLLVMDummyFeedbackFragmentShader(AGCLLVMDummyFeedbackFragmentShader *this)
{
  *this = &off_2825AE998;
  v2 = (this + 984);
  *(this + 123) = off_2825AEAD0;
  *(this + 336) = &off_2825AEBE0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AEC00;
  *(this + 123) = off_2825AED28;
  *(this + 336) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825AE998;
  v2 = (this + 984);
  *(this + 123) = off_2825AEAD0;
  *(this + 336) = &off_2825AEBE0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AEC00;
  *(this + 123) = off_2825AED28;
  *(this + 336) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDummyFeedbackFragmentShader::~AGCLLVMDummyFeedbackFragmentShader(AGCLLVMDummyFeedbackFragmentShader *this)
{
  *(this + 9) = &off_2825AE998;
  v2 = (this + 1056);
  *(this + 132) = off_2825AEAD0;
  *(this + 345) = &off_2825AEBE0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AEC00;
  *(this + 132) = off_2825AED28;
  *(this + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825AE998;
  v2 = (this + 1056);
  *(this + 132) = off_2825AEAD0;
  *(this + 345) = &off_2825AEBE0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AEC00;
  *(this + 132) = off_2825AED28;
  *(this + 345) = &off_2825AEE38;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMTextureFetchFragmentShader::getCompilationKeyDescription(AGCLLVMTextureFetchFragmentShader *this@<X0>, std::string *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  agcStringRepresentation<_AGCDrawBufferState>(&v13, *(this + 102));
  v4 = *(this + 132);
  if (v4)
  {
    std::string::basic_string[abi:nn200100]<0>(&v30, "AGC3DBlitState");
    std::string::basic_string[abi:nn200100]<0>(v28, "blitType");
    _agcFieldString<char const*>(&v31, v28, (&_AGC3DBlitTypeStrings)[*v4 & 0xF]);
    std::string::basic_string[abi:nn200100]<0>(v26, "readBufferSampleCount");
    _agcFieldString<unsigned int>(&v32, v26, *v4 >> 4);
    std::string::basic_string[abi:nn200100]<0>(v24, "sample3D");
    _agcFieldString<unsigned int>(&v33, v24, (*v4 >> 8) & 1);
    std::string::basic_string[abi:nn200100]<0>(v22, "regionOffset");
    _agcFieldString<unsigned int>(&v34, v22, (*v4 >> 9) & 1);
    std::string::basic_string[abi:nn200100]<0>(v20, "remapAddress");
    _agcFieldString<unsigned int>(&v35, v20, (*v4 >> 10) & 1);
    std::string::basic_string[abi:nn200100]<0>(v18, "remapAddressPOT");
    _agcFieldString<unsigned int>(&v36, v18, (*v4 >> 11) & 1);
    std::string::basic_string[abi:nn200100]<0>(v16, "strideDiscard");
    _agcFieldString<unsigned int>(&v37, v16, (*v4 >> 12) & 1);
    std::string::basic_string[abi:nn200100]<0>(__p, "blitTextureFormat");
    _agcFieldString<unsigned int>(&v38, __p, (*v4 >> 13) & 0x1F);
    _agcGroupWithHeader(&v12, &v30, &v31, 8);
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
    std::string::basic_string[abi:nn200100]<0>(&v12, &unk_20E75F419);
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, &v13.__r_.__value_.__l.__data_, &v12.__r_.__value_.__l.__data_);
  v6 = std::string::append(&v30, "\ntoken type : ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(this + 266);
  {
    std::string::basic_string[abi:nn200100]<0>(agcStreamToken2String::mapToken2String, "AGCStreamTokenUnknownShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[24], "AGCStreamTokenGLSLVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[48], "AGCStreamTokenGLSLFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[72], "AGCStreamTokenMetalVertexProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[96], "AGCStreamTokenMetalFragmentProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[120], "AGCStreamTokenMetalTileProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[144], "AGCStreamTokenMetalComputeProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[168], "AGCStreamTokenMetalUserIntersectionProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[192], "AGCStreamTokenMetalDynamicLibrary");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[216], "AGCStreamTokenMetalObjectProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[240], "AGCStreamTokenMetalMeshProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[264], "AGCStreamTokenClearFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[288], "AGCStreamTokenResolveFragmentShaderGL");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[312], "AGCStreamTokenBackgroundObjectFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[336], "AGCStreamToken3DBlitFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[360], "AGCStreamTokenTABlitVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[384], "AGCStreamTokenBlitComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[408], "AGCStreamTokenBlitSparseShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[432], "AGCStreamTokenBlitFastClearShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[456], "AGCStreamTokenEndOfTileProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[480], "AGCStreamTokenExecuteIndirectESLGenerationVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[504], "AGCStreamTokenExecuteIndirectRangeExecutionVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[528], "AGCStreamTokenExecuteIndirectRangeExecutionComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[552], "AGCStreamTokenExecuteIndirectCDMPatchUpShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[576], "AGCStreamTokenBVHBuilderShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[600], "AGCStreamTokenTileDispatchVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[624], "AGCStreamTokenPassthroughObjectProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[648], "AGCStreamTokenDCMPDebugComputeProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[672], "AGCStreamTokenVisibilityVertexClearShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[696], "AGCStreamTokenClearVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[720], "AGCStreamTokenResolveVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[744], "AGCStreamTokenBlitVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[768], "AGCStreamTokenVDMStateSyncProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[792], "AGCStreamTokenContextSaveProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[816], "AGCStreamTokenContextRestoreProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[840], "AGCStreamTokenToggledContextSaveProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[864], "AGCStreamTokenToggledContextRestoreProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[888], "AGCStreamTokenComputeFlushProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[912], "AGCStreamTokenComputeFlushProgramWithFWInterrupt");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[936], "AGCStreamTokenComputeFenceProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[960], "AGCStreamTokenComputeTGSizeOptimizationProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[984], "AGCStreamTokenComputeProgressMarkerProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1008], "AGCStreamTokenComputeControlFlowPredicateProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1032], "AGCStreamTokenSwTessellationNonBucketedEmitDrawCommandsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1056], "AGCStreamTokenSwTessellationBucketedComputeInstanceCountsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1080], "AGCStreamTokenSwTessellationBucketedSumInstanceCountsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1104], "AGCStreamTokenSwTessellationBucketedEmitDrawCommandsVSProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1128], "AGCStreamTokenVDMNOPDBGProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1152], "AGCStreamTokenSwTessellationBucketedClearInstanceCountsProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1176], "AGCStreamTokenUtilityProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1200], "AGCStreamTokenDummyFeedbackFragmentShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1224], "AGCStreamTokenNumGfxShaders");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1248], "AGCStreamTokenMetalDriverIntersectionProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1272], "AGCStreamTokenGeometryPipelineEmulationUMDAllocationShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1296], "AGCStreamTokenGeometryPipelineEmulationFWAllocationSetupShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1320], "AGCStreamTokenGeometryPipelineEmulationFWAllocationPostObjectShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1344], "AGCStreamTokenGeometryPipelineEmulationFWAllocationPreMeshShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1368], "AGCStreamTokenBitCodeGLIR");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1392], "AGCStreamTokenVertexContextStateGL");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1416], "AGCStreamTokenFragmentContextStateGL");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1440], "AGCStreamTokenVertexContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1464], "AGCStreamTokenObjectContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1488], "AGCStreamTokenMeshContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1512], "AGCStreamTokenFragmentContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1536], "AGCStreamTokenSamplerRemapState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1560], "AGCStreamTokenSamplerPCFState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1584], "AGCStreamTokenDrawBufferState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1608], "AGCStreamTokenTileState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1632], "AGCStreamTokenBackgroundObjectState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1656], "AGCStreamTokenEndOfTileState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1680], "AGCStreamToken3DBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1704], "AGCStreamTokenTABlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1728], "AGCStreamTokenCDMBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1752], "AGCStreamTokenBlitSparseState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1776], "AGCStreamTokenBlitFastClearState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1800], "AGCStreamTokenVaryingSemantics");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1824], "AGCStreamTokenVaryingTypes");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1848], "AGCStreamTokenClearFragmentColorMaskState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1872], "AGCStreamTokenComputeContextStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1896], "AGCStreamTokenDynamicLibraryStateAGP");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1920], "AGCStreamTokenTexUnitBiasState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1944], "AGCStreamTokenTessellationDriverState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1968], "AGCStreamTokenExecuteIndirectDriverState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[1992], "AGCStreamTokenDriverIntersectionState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2016], "AGCStreamTokenUserIntersectionState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2040], "AGCStreamTokenBVHBuilderState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2064], "AGCStreamTokenComputeControlFlowPredicateState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2088], "AGCStreamTokenTileDispatchVertexState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2112], "AGCStreamTokenPassthroughObjectProgramState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2136], "AGCStreamTokenDCMPDebugComputeProgramState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2160], "AGCStreamTokenGPUGatherVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2184], "AGCStreamTokenGPUGatherComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2208], "AGCStreamTokenPDSPatchUpVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2232], "AGCStreamTokenPDSPatchUpComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2256], "AGCStreamTokenVRRPatchVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2280], "AGCStreamTokenBlitVertexFastClearShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2304], "AGCStreamTokenEnd");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2328], "AGCStreamTokenEndOfTileFastClearProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2352], "AGCStreamTokenStatelessPSODynamicLibrary");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2376], "AGCStreamTokenStatelessPSODynamicLibraryState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2400], "AGCStreamTokenUberBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2424], "AGCStreamTokenUberBlitComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2448], "AGCStreamTokenTensorBlitState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2472], "AGCStreamTokenTensorBlitComputeShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2496], "AGCStreamTokenTessellationObjectProgram");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2520], "AGCStreamTokenTessellationObjectProgramState");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2544], "AGCStreamTokenMSTessellationPatchupVertexShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2568], "AGCStreamTokenIFBEmulationShader");
    std::string::basic_string[abi:nn200100]<0>(&agcStreamToken2String::mapToken2String[2592], "AGCStreamTokenIFBEmulationState");
    __cxa_atexit(std::array<std::string,109ul>::~array, agcStreamToken2String::mapToken2String, &dword_20E4E1000);
  }

  v9 = &agcStreamToken2String::mapToken2String[24 * v8];
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

uint64_t std::array<std::string,109ul>::~array(uint64_t a1)
{
  v2 = 2616;
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

const char *virtual thunk toAGCLLVMTextureFetchFragmentShader::dumpType(AGCLLVMTextureFetchFragmentShader *this)
{
  v1 = *(this + *(*this - 64) + 1064);
  v2 = "texture_fetch";
  if (v1 == 14)
  {
    v2 = "blit3D";
  }

  if (v1 == 12)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void virtual thunk toAGCLLVMTextureFetchFragmentShader::~AGCLLVMTextureFetchFragmentShader(AGCLLVMTextureFetchFragmentShader *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AF378;
  *(v1 + 134) = off_2825AF4B0;
  *(v1 + 347) = &off_2825AF5C0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AF5E0;
  *(v1 + 134) = off_2825AF708;
  *(v1 + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));
  AGCLLVMObject::~AGCLLVMObject((v1 + 1072));

  JUMPOUT(0x20F331DC0);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 9) = &off_2825AF378;
  *(v1 + 134) = off_2825AF4B0;
  *(v1 + 347) = &off_2825AF5C0;
  v2 = *(v1 + 126);
  if (v2 != v1 + 1024)
  {
    free(v2);
  }

  v3 = *(v1 + 116);
  if (v3 != v1 + 944)
  {
    free(v3);
  }

  *(v1 + 9) = &off_2825AF5E0;
  *(v1 + 134) = off_2825AF708;
  *(v1 + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 12));

  AGCLLVMObject::~AGCLLVMObject((v1 + 1072));
}

void non-virtual thunk toAGCLLVMTextureFetchFragmentShader::~AGCLLVMTextureFetchFragmentShader(AGCLLVMTextureFetchFragmentShader *this)
{
  *this = &off_2825AF378;
  v2 = (this + 1000);
  *(this + 125) = off_2825AF4B0;
  *(this + 338) = &off_2825AF5C0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AF5E0;
  *(this + 125) = off_2825AF708;
  *(this + 338) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &off_2825AF378;
  v2 = (this + 1000);
  *(this + 125) = off_2825AF4B0;
  *(this + 338) = &off_2825AF5C0;
  v3 = *(this + 117);
  if (v3 != this + 952)
  {
    free(v3);
  }

  v4 = *(this + 107);
  if (v4 != this + 872)
  {
    free(v4);
  }

  *this = &off_2825AF5E0;
  *(this + 125) = off_2825AF708;
  *(this + 338) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 3));

  AGCLLVMObject::~AGCLLVMObject(v2);
}

const char *AGCLLVMTextureFetchFragmentShader::dumpType(AGCLLVMTextureFetchFragmentShader *this)
{
  v1 = *(this + 266);
  v2 = "texture_fetch";
  if (v1 == 14)
  {
    v2 = "blit3D";
  }

  if (v1 == 12)
  {
    return "resolve_gl";
  }

  else
  {
    return v2;
  }
}

void AGCLLVMTextureFetchFragmentShader::~AGCLLVMTextureFetchFragmentShader(AGCLLVMTextureFetchFragmentShader *this)
{
  *(this + 9) = &off_2825AF378;
  v2 = (this + 1072);
  *(this + 134) = off_2825AF4B0;
  *(this + 347) = &off_2825AF5C0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AF5E0;
  *(this + 134) = off_2825AF708;
  *(this + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);

  JUMPOUT(0x20F331DC0);
}

{
  *(this + 9) = &off_2825AF378;
  v2 = (this + 1072);
  *(this + 134) = off_2825AF4B0;
  *(this + 347) = &off_2825AF5C0;
  v3 = *(this + 126);
  if (v3 != this + 1024)
  {
    free(v3);
  }

  v4 = *(this + 116);
  if (v4 != this + 944)
  {
    free(v4);
  }

  *(this + 9) = &off_2825AF5E0;
  *(this + 134) = off_2825AF708;
  *(this + 347) = &off_2825AF818;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 12));
  AGCLLVMObject::~AGCLLVMObject(v2);
}

uint64_t AGCLLVMDriverCDMShader::constructReply(AGCLLVMDriverCDMShader *this)
{
  v2 = AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160));
  if (v2)
  {
    AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
    v3 = AGCLLVMObject::constructFlatReply((this + *(*this - 24)));
    v5 = v4;
    v35 = v3;
    v36 = v4;
    AGCLLVMDriverShader::setGatherMasks(this, &v35);
    v6 = flatbuffers::FlatBufferBuilder::EndTable(v3, v5);
    if ((*(**(this + *(*this - 24) + 2168) + 688))())
    {
      v7 = 0;
    }

    else
    {
      if (*(*(this + 9) + 8))
      {
        v8 = this + *(*this - 24);
        v8[4358] = 1;
        v9 = *(v8 + 1082);
        v10 = *(v8 + 1080) - *(v8 + 1084);
        flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v8 + 536, 4, 0);
        flatbuffers::FlatBufferBuilder::AddElement<signed char>(v8 + 536, 6, ***(this + 9));
        flatbuffers::FlatBufferBuilder::EndTable((v8 + 4288), v10 + v9);
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
      }

      v11 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::ComputeVIInput>> const&)::t, 0);
      v12 = this + *(*this - 24);
      v12[4358] = 1;
      v13 = *(v12 + 1082);
      v14 = *(v12 + 1080) - *(v12 + 1084);
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v12 + 4288), v11);
      v7 = flatbuffers::FlatBufferBuilder::EndTable((v12 + 4288), v14 + v13);
      v2 = v2;
    }

    v15 = this + *(*this - 24);
    v15[4358] = 1;
    v16 = *(v15 + 1082);
    v17 = *(v15 + 1080) - *(v15 + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v15 + 4288), v6);
    if (!(*(**(this + *(*this - 24) + 2168) + 688))())
    {
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>((v15 + 4288), v7);
    }

    v18 = *(*this - 24);
    v19 = flatbuffers::FlatBufferBuilder::EndTable((v15 + 4288), v17 + v16);
    flatbuffers::FlatBufferBuilder::Finish((this + v18 + 4288), v19, v20);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
    if ((*(**(this + *(*this - 24) + 2168) + 688))())
    {
      v21 = this + *(*this - 24);
      v22 = *(this + 20);
      v21[4454] = 1;
      v23 = *(v21 + 552);
      v24 = *(v21 + 554);
      v25 = *(v21 + 553);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v21 + 548, 4, v22);
      if (v21[4464] == 1)
      {
        v26 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>((v21 + 4384), 0);
        flatbuffers::FlatBufferBuilder::TrackField(v21 + 548, 6, v26);
      }

      v27 = flatbuffers::FlatBufferBuilder::EndTable((v21 + 4384), v23 - v24 + v25);
      v28 = this + *(*this - 24);
      v28[4454] = 1;
      v29 = *(v28 + 1106);
      v30 = *(v28 + 1104) - *(v28 + 1108);
      flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v28 + 4384), v27);
      v31 = *(*this - 24);
      v32 = flatbuffers::FlatBufferBuilder::EndTable((v28 + 4384), v30 + v29);
      flatbuffers::FlatBufferBuilder::Finish((this + v31 + 4384), v32, v33);
      AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
    }
  }

  return v2;
}

uint64_t AGCLLVMDriverCDMBlitShader::compile(AGCLLVMDriverCDMBlitShader *this)
{
  v2 = *(this + *(*this - 24) + 2136);
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
      (*(*(this + *(*this - 24)) + 192))(this + *(*this - 24), v5);
      break;
    }
  }

  AGCLLVMObject::enableTempRegistersLimit((this + *(*this - 24)));
  AGCLLVMObject::processBuildRequestInfo((this + *(*this - 24)));
  if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v6 = *(this + *(*this - 24) + 1696);
      v7 = (*(*this + 48))(this);
      AGCTargetPrinter::printMessage(v6, "------ Start compilation key description for %s shader %u  ------", v7, *(this + *(*this - 24) + 5088));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v8 = *(this + *(*this - 24) + 1696);
      (*(*this + 64))(__p, this);
      v9 = v18 >= 0 ? __p : __p[0];
      AGCTargetPrinter::printMessage(v8, "%s", v9);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v10 = *(this + *(*this - 24) + 1696);
      v11 = (*(*this + 48))(this);
      AGCTargetPrinter::printMessage(v10, "------ End compilation key description for %s shader %u  ------", v11, *(this + *(*this - 24) + 5088));
    }
  }

  v12 = this + *(*this - 24);
  v13 = *(v12 + 211);
  v14 = *(v12 + 267);
  __p[0] = 0x10000;
  v15 = AGCLLVMCtx::compile(v13, v12, v14, 1, 3, __p);
  result = 0;
  if (v15)
  {
    return (*(*this + 40))(this);
  }

  return result;
}

void virtual thunk toAGCLLVMDriverCDMBlitShader::~AGCLLVMDriverCDMBlitShader(AGCLLVMDriverCDMBlitShader *this)
{
  v1 = this + *(*this - 24);
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(v1);
  AGCLLVMObject::~AGCLLVMObject((v1 + 128));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader((this + *(*this - 24)));
  v2 = (v1 + 128);

  AGCLLVMObject::~AGCLLVMObject(v2);
}

void AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(AGCLLVMDriverCDMShader *this)
{
  *this = off_2825AF838;
  *(this + 16) = off_2825AF978;
  *(this + 229) = &off_2825AFA88;
  v1 = *(this + 9);
  if (v1)
  {
    for (i = 0; i != -9; i -= 3)
    {
      v3 = v1[i + 31];
      if (v3 != -8192 && v3 != -4096 && v3 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v1[i + 29]);
      }
    }

    for (j = 0; j != -9; j -= 3)
    {
      v6 = v1[j + 22];
      if (v6 != -8192 && v6 != -4096 && v6 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v1[j + 20]);
      }
    }

    for (k = 0; k != -9; k -= 3)
    {
      v9 = v1[k + 13];
      if (v9 != -8192 && v9 != -4096 && v9 != 0)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v1[k + 11]);
      }
    }

    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x20F331DC0](v1, 0x10A0C40A3700DFBLL);
  }
}

void AGCLLVMDriverCDMBlitShader::~AGCLLVMDriverCDMBlitShader(AGCLLVMDriverCDMBlitShader *this)
{
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 128));

  JUMPOUT(0x20F331DC0);
}

{
  AGCLLVMDriverCDMShader::~AGCLLVMDriverCDMShader(this);
  AGCLLVMObject::~AGCLLVMObject((v1 + 128));
}

void AGCLLVMDriverShader::AGCLLVMDriverShader(AGCLLVMDriverShader *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = *(a2 + 1);
  *(this + *(*this - 24) + 1704) = *(a2 + 2);
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  operator new();
}

uint64_t AGCLLVMDriverShader::buildRegionOffsets(AGCLLVMDriverShader *this, const char *a2)
{
  v17 = 0;
  v18 = 0;
  AGCLLVMDriverShader::buildRegionOffsets(this, &v18, &v17, a2);
  v3 = *(this + *(*this - 24) + 1952);
  v4 = llvm::UndefValue::get();
  v5 = this + *(*this - 24);
  v6 = v18;
  v16 = 257;
  v7 = *(v5 + 238);
  v8 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((v5 + 1712), v4, v6, v8, v15);
  v10 = this + *(*this - 24);
  v11 = v17;
  v16 = 257;
  v12 = *(v10 + 238);
  v13 = llvm::ConstantInt::get();
  return llvm::IRBuilderBase::CreateInsertElement((v10 + 1712), InsertElement, v11, v13, v15);
}

llvm::Value *AGCLLVMDriverShader::buildRegionOffsets(AGCLLVMDriverShader *this, llvm::Value **a2, llvm::Value **a3, const char *a4)
{
  v8 = 1;
  v9 = llvm::User::operator new(0x58);
  v10 = (this + *(*this - 24));
  v11 = v10[267];
  v12 = v10[238];
  HIBYTE(v28) = 1;
  if (*a4)
  {
    v27[0] = a4;
    v8 = 3;
  }

  LOBYTE(v28) = v8;
  v26 = *(v10[271] + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  *(v9 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  v13 = this + *(*this - 24);
  v14 = *(v13 + 268);
  v15 = AGCLLVMBuilder::buildGlobalMetadata((v13 + 1704), v9);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v14, v15);
  v16 = this + *(*this - 24);
  v17 = *(v16 + 238);
  v28 = 257;
  llvm::Type::isOpaquePointerTy(*v9);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v16 + 214, v17, v9, 0, v27);
  v19 = this + *(*this - 24);
  v20 = *(v19 + 238);
  v21 = llvm::ConstantInt::get();
  v28 = 257;
  *a2 = llvm::IRBuilderBase::CreateAnd((v19 + 1712), AlignedLoad, v21, v27);
  v22 = this + *(*this - 24);
  v28 = 257;
  v23 = *AlignedLoad;
  v24 = llvm::ConstantInt::get();
  result = llvm::IRBuilderBase::CreateLShr((v22 + 1712), AlignedLoad, v24, v27);
  *a3 = result;
  return result;
}

llvm::Value *AGCLLVMDriverShader::buildPack(void *a1, int a2, llvm::Value *a3, uint64_t a4)
{
  v4 = a4;
  v135 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 8) & 0xFE) == 0x12)
  {
    v7 = *(a4 + 32);
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 20)
  {
    if (a2 <= 22)
    {
      if (a2 == 21)
      {
        v39 = *(a1 + *(*a1 - 24) + 1904);
        v130 = llvm::ConstantInt::get();
        v40 = *(a1 + *(*a1 - 24) + 1904);
        v131 = llvm::ConstantInt::get();
        v41 = *(a1 + *(*a1 - 24) + 1904);
        v132 = llvm::ConstantInt::get();
        v42 = *(a1 + *(*a1 - 24) + 1904);
        v133 = llvm::ConstantInt::get();
        v43 = a1 + *(*a1 - 24);
        v44 = llvm::ConstantVector::get();
        v129 = 257;
        ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((v43 + 1712), a3, a3, v44, v128);
        v46 = a1 + *(*a1 - 24);
        v47 = *(v46 + 271);
        v113 = *(v46 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v114, (v46 + 1712));
        v115 = *(v46 + 452);
        InsertElement = (*(*v47 + 104))(v47, &v113, 3, v4, ShuffleVector, 1, 0);
        if (!v114)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v35 = a1 + *(*a1 - 24);
        v36 = *(v35 + 271);
        v107 = *(v35 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v108, (v35 + 1712));
        v109 = *(v35 + 452);
        InsertElement = (*(*v36 + 104))(v36, &v107, 7, v4, a3, 0, 0);
        if (!v108)
        {
          goto LABEL_42;
        }
      }

      goto LABEL_32;
    }

    switch(a2)
    {
      case 23:
        v57 = a1 + *(*a1 - 24);
        v58 = *(v57 + 271);
        v104 = *(v57 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v105, (v57 + 1712));
        v106 = *(v57 + 452);
        InsertElement = (*(*v58 + 104))(v58, &v104, 8, v4, a3, 0, 0);
        if (!v105)
        {
          goto LABEL_42;
        }

        goto LABEL_32;
      case 24:
        v68 = *(a1 + *(*a1 - 24) + 1872);
        v69 = llvm::ConstantFP::get();
        v70 = a1 + *(*a1 - 24);
        v129 = 257;
        v71 = *(v70 + 238);
        v72 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((v70 + 1712), a3, v72, v128);
        v74 = a1 + *(*a1 - 24);
        v75 = *(v74 + 234);
        v129 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v74 + 1712), 49, Element, v75, v128);
        v134 = 257;
        FMul = llvm::IRBuilderBase::CreateFMul((v74 + 1712), Cast, v69, &v130);
        v78 = *(a1 + *(*a1 - 24) + 1904);
        v103 = 257;
        FPToUI = llvm::IRBuilderBase::CreateFPToUI((v74 + 1712), FMul, v78, v102);
        goto LABEL_41;
      case 25:
        v18 = *(a1 + *(*a1 - 24) + 1904);
        v130 = llvm::ConstantInt::get();
        v19 = *(a1 + *(*a1 - 24) + 1904);
        v131 = llvm::ConstantInt::get();
        v20 = *(a1 + *(*a1 - 24) + 1904);
        v132 = llvm::ConstantInt::get();
        v21 = *(a1 + *(*a1 - 24) + 1904);
        v133 = llvm::ConstantInt::get();
        v22 = a1 + *(*a1 - 24);
        v23 = llvm::ConstantVector::get();
        v129 = 257;
        v24 = llvm::IRBuilderBase::CreateShuffleVector((v22 + 1712), a3, a3, v23, v128);
        v25 = a1 + *(*a1 - 24);
        v26 = *(v25 + 271);
        v99 = *(v25 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v100, (v25 + 1712));
        v101 = *(v25 + 452);
        InsertElement = (*(*v26 + 128))(v26, &v99, v24);
        if (v100)
        {
          goto LABEL_32;
        }

        goto LABEL_42;
    }

LABEL_34:
    if (v7 == 4)
    {
      v86 = a1 + *(*a1 - 24);
      v129 = 257;
      v84 = (v86 + 1712);
      v85 = v128;
      v83 = a3;
    }

    else
    {
      if (v7 != 1)
      {
        InsertElement = llvm::UndefValue::get();
        if (v7)
        {
          v89 = 0;
          v90 = v7;
          do
          {
            v91 = a1 + *(*a1 - 24);
            v129 = 257;
            v92 = *(v91 + 238);
            v93 = llvm::ConstantInt::get();
            v94 = llvm::IRBuilderBase::CreateExtractElement((v91 + 1712), a3, v93, v128);
            v95 = v4;
            if ((*(v4 + 8) & 0xFE) == 0x12)
            {
              v95 = **(v4 + 16);
            }

            v134 = 257;
            IntCast = llvm::IRBuilderBase::CreateIntCast(v91 + 214, v94, v95, 0, &v130);
            v103 = 257;
            v97 = *(v91 + 238);
            v98 = llvm::ConstantInt::get();
            InsertElement = llvm::IRBuilderBase::CreateInsertElement((v91 + 1712), InsertElement, IntCast, v98, v102);
            ++v89;
          }

          while (v90 != v89);
        }

        goto LABEL_42;
      }

      v80 = a1 + *(*a1 - 24);
      v129 = 257;
      v81 = *(v80 + 238);
      v82 = llvm::ConstantInt::get();
      v83 = llvm::IRBuilderBase::CreateExtractElement((v80 + 1712), a3, v82, v128);
      if ((*(v4 + 8) & 0xFE) == 0x12)
      {
        v4 = **(v4 + 16);
      }

      v134 = 257;
      v84 = (v80 + 1712);
      v85 = &v130;
    }

    FPToUI = llvm::IRBuilderBase::CreateIntCast(v84, v83, v4, 0, v85);
LABEL_41:
    InsertElement = FPToUI;
    goto LABEL_42;
  }

  if (a2 <= 17)
  {
    if (a2 == 16)
    {
      v37 = a1 + *(*a1 - 24);
      v38 = *(v37 + 271);
      v110 = *(v37 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v111, (v37 + 1712));
      v112 = *(v37 + 452);
      InsertElement = (*(*v38 + 104))(v38, &v110, 6, v4, a3, 0, 0);
      if (!v111)
      {
        goto LABEL_42;
      }

      goto LABEL_32;
    }

    if (a2 == 17)
    {
      v27 = *(a1 + *(*a1 - 24) + 1904);
      v130 = llvm::ConstantInt::get();
      v28 = *(a1 + *(*a1 - 24) + 1904);
      v131 = llvm::ConstantInt::get();
      v29 = *(a1 + *(*a1 - 24) + 1904);
      v132 = llvm::ConstantInt::get();
      v30 = a1 + *(*a1 - 24);
      v31 = llvm::ConstantVector::get();
      v129 = 257;
      v32 = llvm::IRBuilderBase::CreateShuffleVector((v30 + 1712), a3, a3, v31, v128);
      v33 = a1 + *(*a1 - 24);
      v34 = *(v33 + 271);
      v125 = *(v33 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v126, (v33 + 1712));
      v127 = *(v33 + 452);
      InsertElement = (*(*v34 + 104))(v34, &v125, 0, v4, v32, 1, 0);
      if (!v126)
      {
        goto LABEL_42;
      }

      goto LABEL_32;
    }

    goto LABEL_34;
  }

  if (a2 == 18)
  {
    v48 = *(a1 + *(*a1 - 24) + 1904);
    v130 = llvm::ConstantInt::get();
    v49 = *(a1 + *(*a1 - 24) + 1904);
    v131 = llvm::ConstantInt::get();
    v50 = *(a1 + *(*a1 - 24) + 1904);
    v132 = llvm::ConstantInt::get();
    v51 = *(a1 + *(*a1 - 24) + 1904);
    v133 = llvm::ConstantInt::get();
    v52 = a1 + *(*a1 - 24);
    v53 = llvm::ConstantVector::get();
    v129 = 257;
    v54 = llvm::IRBuilderBase::CreateShuffleVector((v52 + 1712), a3, a3, v53, v128);
    v55 = a1 + *(*a1 - 24);
    v56 = *(v55 + 271);
    v122 = *(v55 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v123, (v55 + 1712));
    v124 = *(v55 + 452);
    InsertElement = (*(*v56 + 104))(v56, &v122, 1, v4, v54, 1, 0);
    if (!v123)
    {
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  if (a2 != 19)
  {
    v8 = *(a1 + *(*a1 - 24) + 1904);
    v130 = llvm::ConstantInt::get();
    v9 = *(a1 + *(*a1 - 24) + 1904);
    v131 = llvm::ConstantInt::get();
    v10 = *(a1 + *(*a1 - 24) + 1904);
    v132 = llvm::ConstantInt::get();
    v11 = *(a1 + *(*a1 - 24) + 1904);
    v133 = llvm::ConstantInt::get();
    v12 = a1 + *(*a1 - 24);
    v13 = llvm::ConstantVector::get();
    v129 = 257;
    v14 = llvm::IRBuilderBase::CreateShuffleVector((v12 + 1712), a3, a3, v13, v128);
    v15 = a1 + *(*a1 - 24);
    v16 = *(v15 + 271);
    v116 = *(v15 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v117, (v15 + 1712));
    v118 = *(v15 + 452);
    InsertElement = (*(*v16 + 104))(v16, &v116, 2, v4, v14, 1, 0);
    if (!v117)
    {
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  v59 = *(a1 + *(*a1 - 24) + 1904);
  v130 = llvm::ConstantInt::get();
  v60 = *(a1 + *(*a1 - 24) + 1904);
  v131 = llvm::ConstantInt::get();
  v61 = *(a1 + *(*a1 - 24) + 1904);
  v132 = llvm::ConstantInt::get();
  v62 = *(a1 + *(*a1 - 24) + 1904);
  v133 = llvm::ConstantInt::get();
  v63 = a1 + *(*a1 - 24);
  v64 = llvm::ConstantVector::get();
  v129 = 257;
  v65 = llvm::IRBuilderBase::CreateShuffleVector((v63 + 1712), a3, a3, v64, v128);
  v66 = a1 + *(*a1 - 24);
  v67 = *(v66 + 271);
  v119 = *(v66 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v120, (v66 + 1712));
  v121 = *(v66 + 452);
  InsertElement = (*(*v67 + 104))(v67, &v119, 1, v4, v65, 1, 0);
  if (v120)
  {
LABEL_32:
    llvm::MetadataTracking::untrack();
  }

LABEL_42:
  v87 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

uint64_t AGCLLVMDriverShader::buildEOTBGOImageSample(AGCLLVMDriverShader *a1, llvm::Value *a2, llvm::Value *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, char a9, char a10, int a11, uint64_t a12)
{
  v126 = *MEMORY[0x277D85DE8];
  v102 = a7;
  v101 = a8;
  ImageStateGlobal = AGCLLVMDriverShader::getImageStateGlobal(a1);
  v16 = llvm::User::operator new(0x58);
  v17 = a1 + *(*a1 - 24);
  v18 = *(v17 + 267);
  v19 = *(v17 + 241);
  v20 = *v19;
  v104 = v19;
  llvm::StructType::get();
  v103 = "agc.pbe_rotation";
  v105[0] = a7;
  LOWORD(v106) = 2051;
  v88 = *(*(a1 + *(*a1 - 24) + 2168) + 972) | 0x100000000;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  v21 = a1 + *(*a1 - 24);
  v22 = *(v21 + 268);
  v23 = AGCLLVMBuilder::buildGlobalMetadata((v21 + 1704), v16);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v22, v23);
  ConstInBoundsGEP2_32 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((a1 + *(*a1 - 24) + 1704), v16, 0);
  v25 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((a1 + *(*a1 - 24) + 1704), v16, 1u);
  v26 = AGCLLVMBuilder::CreateConstInBoundsGEP2_32((a1 + *(*a1 - 24) + 1704), v16, 2u);
  v27 = *(a1 + *(*a1 - 24) + 1928);
  v28 = *v27;
  v103 = v27;
  v104 = v27;
  v105[0] = v27;
  v29 = llvm::StructType::get();
  v30 = (a1 + *(*a1 - 24));
  v31 = *(*(v29 + 16) + 16);
  LOWORD(v106) = 257;
  llvm::Type::isOpaquePointerTy(*v26);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v30 + 214, v31, v26, 0, &v103);
  v33 = (a1 + *(*a1 - 24));
  v34 = **(v29 + 16);
  LOWORD(v106) = 257;
  llvm::Type::isOpaquePointerTy(*ConstInBoundsGEP2_32);
  v35 = llvm::IRBuilderBase::CreateAlignedLoad(v33 + 214, v34, ConstInBoundsGEP2_32, 0, &v103);
  v36 = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 2, a2);
  v100 = 257;
  FMul = llvm::IRBuilderBase::CreateFMul((v33 + 214), v35, v36, v99);
  v98 = 257;
  FAdd = llvm::IRBuilderBase::CreateFAdd((v33 + 214), FMul, AlignedLoad, v97);
  v39 = (a1 + *(*a1 - 24));
  v40 = *(*(v29 + 16) + 8);
  LOWORD(v106) = 257;
  llvm::Type::isOpaquePointerTy(*v25);
  v41 = llvm::IRBuilderBase::CreateAlignedLoad(v39 + 214, v40, v25, 0, &v103);
  v42 = AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 2, a3);
  v100 = 257;
  v43 = llvm::IRBuilderBase::CreateFMul((v39 + 214), v41, v42, v99);
  v98 = 257;
  v44 = llvm::IRBuilderBase::CreateFAdd((v39 + 214), v43, FAdd, v97);
  v96[0] = &v101;
  v96[1] = a1;
  v96[2] = &v102;
  if (a11)
  {
    if (a11 != 3)
    {
      goto LABEL_8;
    }

    v45 = AGCLLVMBuilder::extendVector((a1 + *(*a1 - 24) + 1704), v44, 4);
    v46 = AGCLLVMDriverShader::buildEOTBGOImageSample(llvm::Value *,llvm::Value *,llvm::Value *,llvm::GlobalVariable *,llvm::GlobalVariable *,unsigned int,BOOL,BOOL,BOOL,AGCLLVMBuilder::ImageDim,FragmentOutputConfiguration const&)::$_0::operator()(v96);
    v47 = *a1;
    v48 = a1 + *(*a1 - 24);
    v49 = *(v48 + 271);
    if (*(v49 + 1728))
    {
      v50 = strlen(*(v49 + 1728));
      v51 = *(v48 + 238);
      inserted = AGCLLVMBuilder::getOrInsertFunction<>((v48 + 1704));
      v53 = a1 + *(*a1 - 24);
      LOWORD(v106) = 257;
      v54 = llvm::IRBuilderBase::CreateCall((v53 + 1712), *(inserted + 24), inserted, 0, 0, &v103);
      v55 = *(a1 + *(*a1 - 24) + 1872);
      v100 = 257;
      UIToFP = llvm::IRBuilderBase::CreateUIToFP((v53 + 1712), v54, v55, v99);
      v98 = 257;
      v46 = llvm::IRBuilderBase::CreateFAdd((v53 + 1712), UIToFP, v46, v97);
      v47 = *a1;
    }

    v57 = a1 + *(v47 - 24);
    LOWORD(v106) = 257;
    v58 = *(v57 + 238);
    v59 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((v57 + 1712), v45, v46, v59, &v103);
  }

  else
  {
    v61 = a1 + *(*a1 - 24);
    LOWORD(v106) = 257;
    v62 = *(v61 + 238);
    v63 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateExtractElement((v61 + 1712), v44, v63, &v103);
  }

  v44 = InsertElement;
LABEL_8:
  if (a9)
  {
    v64 = a1 + *(*a1 - 24);
    v65 = AGCLLVMDriverShader::buildEOTBGOImageSample(llvm::Value *,llvm::Value *,llvm::Value *,llvm::GlobalVariable *,llvm::GlobalVariable *,unsigned int,BOOL,BOOL,BOOL,AGCLLVMBuilder::ImageDim,FragmentOutputConfiguration const&)::$_0::operator()(v96);
    v66 = *(a1 + *(*a1 - 24) + 1904);
    LOWORD(v106) = 257;
    FPToUI = llvm::IRBuilderBase::CreateFPToUI((v64 + 1712), v65, v66, &v103);
    v68 = a1 + *(*a1 - 24);
    v69 = *(v68 + 271);
    if (*(v69 + 1728))
    {
      v70 = strlen(*(v69 + 1728));
      v71 = *(v68 + 238);
      v72 = AGCLLVMBuilder::getOrInsertFunction<>((v68 + 1704));
      v73 = a1 + *(*a1 - 24);
      LOWORD(v106) = 257;
      v74 = llvm::IRBuilderBase::CreateCall((v73 + 1712), *(v72 + 24), v72, 0, 0, &v103);
      v75 = *(a1 + *(*a1 - 24) + 1904);
      v100 = 257;
      Cast = llvm::IRBuilderBase::CreateCast((v73 + 1712), 38, v74, v75, v99);
      v77 = a1 + *(*a1 - 24);
      LOWORD(v106) = 257;
      FPToUI = llvm::IRBuilderBase::CreateAdd((v77 + 1712), FPToUI, Cast, &v103);
    }
  }

  else
  {
    FPToUI = 0;
  }

  LODWORD(v103) = 0;
  HIDWORD(v103) = a11;
  v105[0] = 0;
  *(v105 + 7) = 0;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0;
  v121 = 0u;
  v122 = 0u;
  memset(v123, 0, 21);
  v123[21] = 1;
  v124 = 0;
  v125 = 0;
  if (*(a12 + 40) == 1)
  {
    v78 = *a12 == *(a1 + *(*a1 - 24) + 2000);
  }

  else
  {
    v78 = 3;
  }

  LODWORD(v104) = v78;
  *&v113 = v44;
  v114 = FPToUI;
  AGCLLVMDriverShader::setSampleArgs(a1, &v103, v102, ImageStateGlobal, a5, a6);
  if (!a11 || a10)
  {
    v80 = 0;
    v115 = 3;
  }

  else
  {
    v115 = 0;
    v79 = *(a1 + *(*a1 - 24) + 1872);
    v80 = llvm::ConstantFP::get();
  }

  v81 = a4;
  v116 = v80;
  if (!a4 && a10)
  {
    v82 = *(a1 + *(*a1 - 24) + 1904);
    v81 = llvm::ConstantInt::get();
  }

  v120 = v81;
  BYTE6(v105[0]) = 1;
  v83 = a1 + *(*a1 - 24);
  v84 = *(v83 + 271);
  v93 = *(v83 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v94, (v83 + 1712));
  v95 = *(v83 + 452);
  v85 = (*(*v84 + 288))(v84, &v93, &v103);
  if (v94)
  {
    llvm::MetadataTracking::untrack();
  }

  v86 = *MEMORY[0x277D85DE8];
  return v85;
}