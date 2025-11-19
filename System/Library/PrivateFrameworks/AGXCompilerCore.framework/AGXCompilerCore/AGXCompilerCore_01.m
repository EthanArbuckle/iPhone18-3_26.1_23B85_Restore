uint64_t llvm::Function::args(llvm::Function *this)
{
  if (*(this + 9))
  {
    llvm::Function::BuildLazyArguments(this);
    v2 = *(this + 11);
    if (*(this + 9))
    {
      llvm::Function::BuildLazyArguments(this);
      v3 = *(this + 11);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(this + 11);
  }

  v3 = v2;
LABEL_6:
  v4 = v3 + 40 * *(this + 12);
  return v2;
}

void AGCTargetOS::AGCTargetOS(AGCTargetOS *this, const llvm::Triple *a2)
{
  *this = 0;
  *(this + 1) = 0;
  OSVersion = llvm::Triple::getOSVersion(a2);
  v5 = llvm::Triple::getOSVersion(a2);
  llvm::Triple::getOSVersion(a2);
  if (v6 < 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (v5 >> 28) & (v5 >> 63) & 0xFFF0u | (OSVersion << 8) | v7;
  if ((*(a2 + 9) & 0xFFFFFFF7) == 3)
  {
    v9 = (v5 >> 28) & (v5 >> 63) & 0xFFF0u | (OSVersion << 8) | v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = *this;
  v11 = v9 | *this & 0xFFFFFFFFFFFF0000;
  *this = v11;
  v12 = *(a2 + 9);
  v13 = v12 == 28 || v12 == 7;
  v14 = v8 << 16;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = v11 & 0xFFFFFFFF0000FFFFLL | v14;
  *this = v15;
  v16 = v8 << 32;
  if (*(a2 + 9) != 29)
  {
    v16 = 0;
  }

  v17 = v15 & 0xFFFF0000FFFFFFFFLL | v16;
  v13 = v9 == 0;
  v18 = 0xFFFFLL;
  if (v13)
  {
    v18 = 0;
  }

  v13 = v14 == 0;
  v19 = 4294901760;
  if (v13)
  {
    v19 = 0;
  }

  v13 = v16 == 0;
  v20 = 0xFFFF00000000;
  if (v13)
  {
    v20 = 0;
  }

  v13 = HIWORD(v10) == 0;
  v21 = 0xFFFF000000000000;
  if (v13)
  {
    v21 = 0;
  }

  *this = v17;
  *(this + 1) = v18 | v21 | v19 | v20;
}

BOOL parseMDTexture(uint64_t a1, _DWORD *a2, _DWORD *a3, char *a4, BOOL *a5, BOOL *a6, _BYTE *a7, int *a8)
{
  v16 = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8), "air.texture");
  if (v16)
  {
    v31 = a5;
    v32 = a6;
    *a4 = 1;
    *a5 = 0;
    v33 = a7;
    *a7 = 0;
    v17 = *(a1 + 8);
    v34 = 2;
    if (v17 >= 3)
    {
      do
      {
        if ((parseMDLocationIndex(a1, &v34, a2, a3) & 1) == 0)
        {
          if (parseMDInt("air.binding", a1, &v34, a2))
          {
            *a3 = 1;
          }

          else
          {
            if (parseMDInt("air.raster_order_group", a1, &v34, a8))
            {
              v18 = *a8;
              if (*a8 >= 7)
              {
                v18 = 7;
              }

              *a8 = v18;
              *v33 = 1;
              continue;
            }

            if (!parseMDAccess(a1, &v34, a4))
            {
              v19 = v34;
              v20 = ++v34;
              if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * v19), "air.arg_type_name"))
              {
                v34 = v19 + 2;
                String = llvm::MDString::getString(*(a1 - 8 * *(a1 + 8) + 8 * v20));
                if (v22 > 4)
                {
                  v26 = *String == 1634890337 && *(String + 4) == 121;
                  v24 = v32;
                  *v31 = v26;
                  if (v22 >= 0xE)
                  {
                    if (*String == 0x5F65727574786574 && *(String + 6) == 0x7265666675625F65)
                    {
                      v23 = 1;
                      goto LABEL_37;
                    }

                    if (v22 >= 0x14)
                    {
                      v23 = *String == 0x65743C7961727261 && *(String + 8) == 0x75625F6572757478 && *(String + 16) == 1919247974;
                      goto LABEL_37;
                    }
                  }

                  v23 = 0;
                }

                else
                {
                  v23 = 0;
                  v24 = v32;
                  *v31 = 0;
                }

LABEL_37:
                *v24 = v23;
              }
            }
          }
        }
      }

      while (v34 < v17);
    }
  }

  return v16;
}

BOOL parseMDAccess(uint64_t a1, _DWORD *a2, char *a3)
{
  if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.read"))
  {
    v6 = 1;
  }

  else if (isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.write"))
  {
    v6 = 2;
  }

  else
  {
    result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.read_write");
    if (!result)
    {
      return result;
    }

    v6 = 3;
  }

  *a3 = v6;
  ++*a2;
  return 1;
}

void AGCLLVMUserObject::replaceBuiltinArguments(AGCLLVMUserObject *this)
{
  v1 = this;
  AGCLLVMUserObject::getBuiltinArgMap(this);
  v2 = *(v1 + 21);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(v1 + 21));
    v4 = *(v1 + 21);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(v1 + 21));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  if (v3 != v5)
  {
    v48 = *(v2 + 88) + 40 * *(v2 + 96);
    v49 = v1 + 1712;
    v47 = v1 + 1904;
    v6 = v1 + 1704;
    do
    {
      v7 = *(*(v1 + 10) + 8 * *(v3 + 32));
      if (v7 && *(v3 + 8))
      {
        String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
        v10 = v9;
        v11 = (*(*(v1 + *(*v1 - 24)) + 80))(v1 + *(*v1 - 24)) == 27 && v10 == 15;
        if (!v11 || (*String == 0x74736E692E726961 ? (v12 = *(String + 7) == 0x64695F65636E6174) : (v12 = 0), !v12))
        {
          Key = llvm::StringMapImpl::FindKey();
          v14 = Key;
          if (Key != -1 && Key != dword_28117E618)
          {
            v16 = AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map;
            v17 = *(*(v1 + 21) + 80);
            if (v17)
            {
              v18 = v17 - 24;
            }

            else
            {
              v18 = 0;
            }

            v19 = *(v18 + 40);
            if (v19)
            {
              v20 = (v19 - 24);
            }

            else
            {
              v20 = 0;
            }

            llvm::IRBuilderBase::SetInsertPoint(&v49[*(*v1 - 24)], v20);
            v21 = *v3;
            if ((*(*v3 + 8) & 0xFE) == 0x12)
            {
              v21 = **(v21 + 16);
            }

            v22 = *(v16 + 8 * v14);
            llvm::StringRef::str(&v51, v22 + 8);
            if (v21 == *&v47[*(*v1 - 24)])
            {
              v23 = ".i32";
            }

            else
            {
              v23 = ".i16";
            }

            v24 = std::string::append(&v51, v23);
            v25 = v24->__r_.__value_.__r.__words[2];
            *__p = *&v24->__r_.__value_.__l.__data_;
            v54 = v25;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v24->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v51.__r_.__value_.__l.__data_);
            }

            v26 = v1 + *(*v1 - 24);
            if (v54 >= 0)
            {
              v27 = __p;
            }

            else
            {
              v27 = __p[0];
            }

            if (v54 >= 0)
            {
              v28 = SHIBYTE(v54);
            }

            else
            {
              v28 = __p[1];
            }

            v50 = v3;
            if (*(v22 + 24) == 1)
            {
              inserted = AGCLLVMBuilder::getOrInsertFunction<>((v26 + 1704));
              v30 = *(*v1 - 24);
              v52 = 257;
              llvm::IRBuilderBase::CreateCall(&v49[v30], *(inserted + 24), inserted, 0, 0, &v51);
            }

            else
            {
              v31 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v26 + 1704), v27, v28, v21, *(v26 + 238));
              if ((*(*v3 + 8) & 0xFE) == 0x12)
              {
                v32 = *(*v3 + 32);
                InsertElement = llvm::UndefValue::get();
                if (v32)
                {
                  for (i = 0; i != v32; ++i)
                  {
                    v35 = (*(*v1 + 320))(v1, v31, v21, v7, i);
                    v36 = *(*v1 - 24);
                    v37 = v1;
                    v38 = v7;
                    v39 = v32;
                    v40 = v31;
                    v41 = v21;
                    v42 = v6;
                    v43 = &v6[v36];
                    v52 = 257;
                    v44 = *(v43 + 25);
                    v45 = llvm::ConstantInt::get();
                    v46 = (v43 + 8);
                    v6 = v42;
                    v21 = v41;
                    v31 = v40;
                    v32 = v39;
                    v7 = v38;
                    v1 = v37;
                    InsertElement = llvm::IRBuilderBase::CreateInsertElement(v46, InsertElement, v35, v45, &v51);
                  }
                }
              }

              else
              {
                (*(*v1 + 320))(v1, v31, v21, v7, 0);
              }
            }

            v3 = v50;
            llvm::Value::replaceAllUsesWith();
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__p[0]);
            }

            v5 = v48;
          }
        }
      }

      v3 += 40;
    }

    while (v3 != v5);
  }
}

void AGCLLVMUserObject::getBuiltinArgMap(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map = 0;
    *&dword_28117E618 = 0;
    qword_28117E620 = 0x2000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getBuiltinArgMap(void)::builtin_arg_map, &dword_20E4E1000);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::CallGraphNode const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__tree<llvm::CallGraphNode const*>::__emplace_unique_key_args<llvm::CallGraphNode const*,llvm::CallGraphNode const* const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::IntersectionQueryAnalysisGen6::instructionIsIndirectOrExternCall(uint64_t a1, const llvm::Function *a2)
{
  if (*(a1 + 16) != 84)
  {
    return 0;
  }

  v2 = *(a1 - 32);
  if (v2 && !*(v2 + 16) && *(v2 + 24) == *(a1 + 72))
  {
    return AGCLLVMUserObject::functionIsUserExternDeclaration(*(a1 - 32), a2);
  }

  else
  {
    return 1;
  }
}

uint64_t AGCLLVMUserObject::functionIsUserExternDeclaration(AGCLLVMUserObject *this, const llvm::Function *a2)
{
  result = llvm::GlobalValue::isDeclaration(this);
  if (result)
  {
    if ((*(this + 16) & 0x200F) != 0)
    {
      return 0;
    }

    Name = llvm::Value::getName(this);
    if (v5 >= 4 && *Name == 778266465)
    {
      return 0;
    }

    v6 = llvm::Value::getName(this);
    if (v7 >= 4 && *v6 == 779250017)
    {
      return 0;
    }

    else
    {
      v8 = llvm::Value::getName(this);
      return v9 < 4 || *v8 != 779642721;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

void *std::vector<llvm::CallGraphNode const*>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::CallGraphNode const*>>(a3);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

llvm::ValueHandleBase *std::pair<llvm::Optional<llvm::WeakTrackingVH>,llvm::CallGraphNode *>::pair[abi:nn200100](llvm::ValueHandleBase *this, uint64_t a2)
{
  *this = 0;
  *(this + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::reset(this);
    llvm::ValueHandleBase::ValueHandleBase(this, 3u, a2);
    *(this + 24) = 1;
  }

  *(this + 4) = *(a2 + 32);
  return this;
}

uint64_t llvm::optional_detail::OptionalStorage<llvm::WeakTrackingVH,false>::reset(uint64_t this)
{
  if (*(this + 24) == 1)
  {
    v1 = this;
    v2 = *(this + 16);
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      this = llvm::ValueHandleBase::RemoveFromUseList(this);
    }

    *(v1 + 24) = 0;
  }

  return this;
}

void std::vector<llvm::CallGraphNode const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::CallGraphNode const*>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t AGCLLVMUserObject::mayBeCalledFromIntersectionFunction(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v3 = *(*(v2 + 271) + 1908);
  if (v3)
  {
    if ((v2[4577] & 1) != 0 || (*(*v2 + 80))(v2) == 27)
    {
      LOBYTE(v3) = 0;
    }

    else if (*(this + *(*this - 24) + 5148) && ((v5 = *(this + 300), (*(v5 + 51) & 1) != 0) || (*(v5 + 48) & 1) != 0))
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = *(this + 15);
    }
  }

  return v3 & 1;
}

char *llvm::PassInfoMixin<InitCompileFragmentShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4F)
  {
    v1 = v0;
  }

  else
  {
    v1 = 79;
  }

  v2 = &aStringrefLlvmG_43[v1];
  v3 = 79 - v1;
  if ((79 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 79 - v1;
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

uint64_t AGCLLVMObject::getDefaultRoundingMode(AGCLLVMObject *this)
{
  v2 = (*(*this + 232))(this);
  if (v2)
  {
    return v2;
  }

  if (*(*(this + 271) + 1888))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_FLOAT_TO_FLOAT_RTZ_HW", v3);
    if (Value)
    {
      if (*Value != 48)
      {
        if (atoi(Value))
        {
          v4 = 1;
        }

        else
        {
          v4 = v4;
        }
      }
    }
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v6 = AGCEnv::getValue("AGC_DEFAULT_ROUNDING_MODE", v3);
    if (v6)
    {
      v7 = v6;
      v2 = atoi(v6);
      if ((v2 - 1) < 2)
      {
        return v2;
      }

      v8 = 0;
      for (i = 1; ; i = 2)
      {
        v10 = v8;
        if (!strcasecmp(v7, _AGCFPRoundingModeStrings[i]))
        {
          break;
        }

        v8 = 1;
        if (v10)
        {
          return v4;
        }
      }

      return i;
    }
  }

  return v4;
}

uint64_t AGCLLVMBuiltInFileReaderImpl::getBuiltinsModuleForSourceModule(AGCLLVMBuiltInFileReaderImpl *this, llvm::Module *a2)
{
  v18 = *a2;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v3 = a2 + 24;
  v4 = *(a2 + 4);
  if (v4 != a2 + 24)
  {
    do
    {
      if (v4)
      {
        v5 = (v4 - 56);
      }

      else
      {
        v5 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v5))
      {
        v19[0] = llvm::Value::getName(v5);
        v19[1] = v6;
        llvm::StringRef::str(&v20, v19);
        v7 = v23;
        if (v23 >= v24)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3);
          v10 = v9 + 1;
          if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          if (0x5555555555555556 * ((v24 - v22) >> 3) > v10)
          {
            v10 = 0x5555555555555556 * ((v24 - v22) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v24 - v22) >> 3) >= 0x555555555555555)
          {
            v11 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v11 = v10;
          }

          v25.__end_cap_.__value_ = &v22;
          if (v11)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v11);
          }

          v12 = 8 * ((v23 - v22) >> 3);
          *v12 = v20;
          *(v12 + 16) = v21;
          v21 = 0;
          v20 = 0uLL;
          v8 = 24 * v9 + 24;
          v13 = (24 * v9 - (v23 - v22));
          memcpy((v12 - (v23 - v22)), v22, v23 - v22);
          v14 = v22;
          v15 = v24;
          v22 = v13;
          v23 = v8;
          v24 = 0;
          v25.__first_ = v14;
          v25.__end_ = v14;
          v25.__end_cap_.__value_ = v15;
          v25.__begin_ = v14;
          std::__split_buffer<std::string>::~__split_buffer(&v25);
        }

        else
        {
          *v23 = v20;
          *(v7 + 2) = v21;
          v8 = (v7 + 24);
        }

        v23 = v8;
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  v16 = (*(*this + 16))(this, v18, &v22);
  v25.__first_ = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v25);
  return v16;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t AGCLLVMBuiltInFileReaderImpl::getBuiltinModuleByName(AGCLLVMBuiltInFileReaderImpl *this, llvm::LLVMContext *a2, const char *__s2)
{
  v24 = *MEMORY[0x277D85DE8];
  LOBYTE(v5) = *__s2;
  if (*__s2)
  {
    v6 = 0;
    v7 = 1;
    v8 = 1;
    do
    {
      v6 += v8 * v5;
      v8 *= 2;
      v5 = __s2[v7++];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = (*(this + 2) + 4 * (v6 % *(this + 2)));
  do
  {
    v10 = *v9;
    if (v10 == -1)
    {
      goto LABEL_12;
    }

    v9 = (*(this + 4) + 16 * v10);
  }

  while (strcmp(v9[1], __s2));
  v11 = *(v9 + 1);
  if (v11 == -1 || (v12 = *(this + 8), v11 + 4 > v12) || v12 < (*(*(this + 6) + v11) + v11 + 4))
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  llvm::MemoryBuffer::getMemBuffer();
  llvm::MemoryBuffer::getMemBufferRef(v20, v18);
  llvm::parseBitcodeFile();
  if (v23)
  {
    v16 = v22;
    v22 = 0;
    v19 = v16;
    llvm::errorToErrorCodeAndEmitErrors();
    v21 = -1;
    v20[1] = v17;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v22);
    v13 = 0;
  }

  else
  {
    v21 = 0;
    v13 = v22;
    v22 = 0;
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v22);
    v20[0] = 0;
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](v20);
  }

  if (v18)
  {
    (*(*v18 + 8))();
  }

LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t AGCLLVMBuiltInFileReaderImpl::getBuiltinsModule(AGCLLVMBuiltInFileReaderImpl *this, llvm::LLVMContext *a2, uint64_t *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v3;
      if (*(v3 + 23) < 0)
      {
        v8 = *v3;
      }

      BuiltinModuleByName = AGCLLVMBuiltInFileReaderImpl::getBuiltinModuleByName(this, a2, v8);
      if (BuiltinModuleByName)
      {
        if (v7)
        {
          v24 = BuiltinModuleByName;
          v26 = 0;
          v10 = llvm::Linker::linkModules();
          std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v25);
          std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v24);
          if (v10)
          {
            abort();
          }
        }

        else
        {
          v7 = BuiltinModuleByName;
        }
      }

      v3 += 24;
    }

    while (v3 != v4);
    if (v7)
    {
      v11 = v7 + 8;
      v12 = *(v7 + 16);
      if (v12 != v7 + 8)
      {
        do
        {
          if (v12)
          {
            v13 = (v12 - 56);
          }

          else
          {
            v13 = 0;
          }

          if ((*(v13 + 32) & 0xF) == 0)
          {
            v21[0] = llvm::Value::getName(v13);
            v21[1] = v14;
            llvm::StringRef::str(__p, v21);
            v15 = v23;
            if (v23 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            if (AGCLLVMBuiltInFileReaderImpl::getBuiltinModuleByName(this, a2, v16))
            {
              operator new();
            }

            if (v15 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
      }

      for (i = *(v7 + 16); i != v11; i = *(i + 8))
      {
        if (i)
        {
          v18 = (i - 56);
        }

        else
        {
          v18 = 0;
        }

        if (llvm::GlobalValue::isDeclaration(v18))
        {
          llvm::GlobalValue::setLinkage(v18, 0);
        }

        else
        {
          *(v18 + 8) = *(v18 + 8) & 0xFFFFBFC0 | 0x4007;
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void AGCLLVMBuiltInFileReaderImpl::~AGCLLVMBuiltInFileReaderImpl(AGCLLVMBuiltInFileReaderImpl *this)
{
  *this = &unk_2825A9620;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(*(this + 2));
  free(*(this + 4));
}

{
  AGCLLVMBuiltInFileReaderImpl::~AGCLLVMBuiltInFileReaderImpl(this);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMCtx::loadMetalRuntime(uint64_t a1, int a2, llvm::Module *a3, int a4)
{
  v46 = *MEMORY[0x277D85DE8];
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        v31 = &v44;
        std::string::basic_string[abi:nn200100]<0>(&v44, *(*(a1 + 32) + 32));
        v32 = std::string::insert(&v44, 0, "/");
        v45[0] = *v32;
        v32->__r_.__value_.__r.__words[0] = 0;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = v45;
        }

        else
        {
          v33 = v45[0].__r_.__value_.__r.__words[0];
        }

        if (*(a1 + 1983) >= 0)
        {
          v34 = *(a1 + 1983);
        }

        else
        {
          v34 = *(a1 + 1968);
        }

        v35 = strlen(v33);
        std::string::basic_string[abi:nn200100](&v44, v34 + v35);
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = v44.__r_.__value_.__r.__words[0];
        }

        if (v34)
        {
          if (*(a1 + 1983) >= 0)
          {
            v36 = (a1 + 1960);
          }

          else
          {
            v36 = *(a1 + 1960);
          }

          memmove(v31, v36, v34);
        }

        if (v35)
        {
          memmove(v31 + v34, v33, v35);
        }

        v31->__r_.__value_.__s.__data_[v34 + v35] = 0;
        if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v44;
        }

        else
        {
          v37 = v44.__r_.__value_.__r.__words[0];
        }

        loadRuntime(v37, a3);
      }

      if (*(a1 + 1983) >= 0)
      {
        v18 = *(a1 + 1983);
      }

      else
      {
        v18 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v45, v18 + 16);
      if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = v45;
      }

      else
      {
        v19 = v45[0].__r_.__value_.__r.__words[0];
      }

      if (v18)
      {
        if (*(a1 + 1983) >= 0)
        {
          v20 = (a1 + 1960);
        }

        else
        {
          v20 = *(a1 + 1960);
        }

        memmove(v19, v20, v18);
      }

      v21 = v19 + v18;
      v22 = "/vft_rt.metallib";
      goto LABEL_78;
    }

    if (!a4)
    {
      v29 = (a1 + 1984);
      if (*(a1 + 2007) < 0)
      {
        v29 = *v29;
      }

      v30 = *MEMORY[0x277D85DE8];

      loadRuntime(v29, a3);
    }

    if (a4 == 1)
    {
      v12 = *(*(a1 + 32) + 40);
      if (*(a1 + 1983) >= 0)
      {
        v13 = *(a1 + 1983);
      }

      else
      {
        v13 = *(a1 + 1968);
      }

      v14 = strlen(*(*(a1 + 32) + 40));
      v15 = v45;
      std::string::basic_string[abi:nn200100](v45, v13 + v14);
      if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v45[0].__r_.__value_.__r.__words[0];
      }

      if (v13)
      {
        if (*(a1 + 1983) >= 0)
        {
          v16 = (a1 + 1960);
        }

        else
        {
          v16 = *(a1 + 1960);
        }

        memmove(v15, v16, v13);
      }

      if (v14)
      {
        memmove(v15 + v13, v12, v14);
      }

      v15->__r_.__value_.__s.__data_[v13 + v14] = 0;
      if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = v45;
      }

      else
      {
        v17 = v45[0].__r_.__value_.__r.__words[0];
      }

LABEL_120:
      loadRuntime(v17, a3);
    }
  }

  else if (a4 > 6)
  {
    if (a4 == 7)
    {
      if (*(a1 + 1983) >= 0)
      {
        v38 = *(a1 + 1983);
      }

      else
      {
        v38 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v45, v38 + 24);
      if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = v45;
      }

      else
      {
        v39 = v45[0].__r_.__value_.__r.__words[0];
      }

      if (v38)
      {
        if (*(a1 + 1983) >= 0)
        {
          v40 = (a1 + 1960);
        }

        else
        {
          v40 = *(a1 + 1960);
        }

        memmove(v39, v40, v38);
      }

      strcpy(v39 + v38, "/tex_atomic_emu.metallib");
      goto LABEL_117;
    }

    if (a4 == 8)
    {
      if (*(a1 + 1983) >= 0)
      {
        v23 = *(a1 + 1983);
      }

      else
      {
        v23 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v45, v23 + 16);
      if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = v45;
      }

      else
      {
        v24 = v45[0].__r_.__value_.__r.__words[0];
      }

      if (v23)
      {
        if (*(a1 + 1983) >= 0)
        {
          v25 = (a1 + 1960);
        }

        else
        {
          v25 = *(a1 + 1960);
        }

        memmove(v24, v25, v23);
      }

      v21 = v24 + v23;
      v22 = "/tensor.metallib";
      goto LABEL_78;
    }
  }

  else
  {
    if ((a4 - 4) < 2)
    {
      if (*(a1 + 1983) >= 0)
      {
        v8 = *(a1 + 1983);
      }

      else
      {
        v8 = *(a1 + 1968);
      }

      v9 = &v43;
      std::string::basic_string[abi:nn200100](&v43, v8 + 14);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v43.__r_.__value_.__r.__words[0];
      }

      if (v8)
      {
        if (*(a1 + 1983) >= 0)
        {
          v10 = (a1 + 1960);
        }

        else
        {
          v10 = *(a1 + 1960);
        }

        memmove(v9, v10, v8);
      }

      strcpy(v9 + v8, "/raytracing_rt");
      if (a4 == 5)
      {
        std::string::append(&v43, "_dora");
      }

      std::string::append(&v43, ".metallib");
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v43;
      }

      else
      {
        v11 = v43.__r_.__value_.__r.__words[0];
      }

      loadRuntime(v11, a3);
    }

    if (a4 == 6)
    {
      if (*(a1 + 1983) >= 0)
      {
        v26 = *(a1 + 1983);
      }

      else
      {
        v26 = *(a1 + 1968);
      }

      std::string::basic_string[abi:nn200100](v45, v26 + 16);
      if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = v45;
      }

      else
      {
        v27 = v45[0].__r_.__value_.__r.__words[0];
      }

      if (v26)
      {
        if (*(a1 + 1983) >= 0)
        {
          v28 = (a1 + 1960);
        }

        else
        {
          v28 = *(a1 + 1960);
        }

        memmove(v27, v28, v26);
      }

      v21 = v27 + v26;
      v22 = "/gpe_rt.metallib";
LABEL_78:
      *v21 = *v22;
      v21[16] = 0;
LABEL_117:
      if ((v45[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = v45;
      }

      else
      {
        v17 = v45[0].__r_.__value_.__r.__words[0];
      }

      goto LABEL_120;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AGCLLVMUserObject::linkHelperRuntime(uint64_t *a1, int a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 1688);
  v6 = *(v4 + 2136);
  if (*(a1 + 199) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, a1[22], a1[23]);
  }

  else
  {
    v68 = *(a1 + 22);
  }

  v69 = *(a1 + 25);
  v70 = a1[27];
  v71 = 1;
  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(v5, v4, v6, a2);
  v8 = MetalRuntime;
  if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (MetalRuntime)
    {
      goto LABEL_6;
    }

LABEL_16:
    result = 1;
    goto LABEL_93;
  }

  operator delete(v68.__r_.__value_.__l.__data_);
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_6:
  v9 = **(a1 + *(*a1 - 24) + 2136);
  v10 = *v8;
  v11 = llvm::LLVMContext::supportsTypedPointers(v9);
  if (v11 == llvm::LLVMContext::supportsTypedPointers(v10))
  {
    for (i = v8[4]; i != v8 + 3; i = i[1])
    {
      if (i)
      {
        v19 = (i - 7);
      }

      else
      {
        v19 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v19) && (*(v19 + 34) & 0x80) != 0 || (llvm::GlobalValue::isDeclaration(v19) & 1) == 0)
      {
        llvm::GlobalValue::setLinkage(v19, 3);
      }

      if ((*(v19 + 32) & 0xFu) - 7 >= 2)
      {
        llvm::GlobalValue::setVisibility(v19);
      }
    }

    v20 = *(*(a1 + *(*a1 - 24) + 1688) + 32);
    v21 = *(v20 + 8);
    if (v21)
    {
      v22 = strlen(*(v20 + 8));
    }

    else
    {
      v22 = 0;
    }

    llvm::Module::setTargetTriple(v8, v21, v22);
    v23 = *(*(a1 + *(*a1 - 24) + 1688) + 32);
    if (*(v23 + 16))
    {
      v24 = strlen(*(v23 + 16));
    }

    llvm::Module::setDataLayout();
    v25 = *(a1 + *(*a1 - 24) + 2136);
    v59 = v8;
    v73 = 0;
    v26 = llvm::Linker::linkModules();
    std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:nn200100](v72);
    if (v59)
    {
      v27 = MEMORY[0x20F330EC0]();
      MEMORY[0x20F331DC0](v27, 0x10B2C407FF26C1CLL);
    }

    if (v26)
    {
      goto LABEL_92;
    }

    v28 = *a1;
    v29 = a1 + *(*a1 - 24);
    v30 = *(*(v29 + 2168) + 1865);
    v31 = *(v29 + 2136);
    v32 = *(v31 + 32);
    v33 = v31 + 24;
    if (v30 == 1)
    {
      if (v32 != v33)
      {
        do
        {
          v34 = *(v32 + 8);
          if (v32)
          {
            v35 = v32 - 56;
          }

          else
          {
            v35 = 0;
          }

          if (v35 != a1[20])
          {
            Name = llvm::Value::getName((v32 - 56));
            if (v37 != 22 || (*Name == 0x626F6C672E636761 ? (v38 = Name[1] == 0x74736E6F635F6C61) : (v38 = 0), v38 ? (v39 = *(Name + 14) == 0x726F746375727473) : (v39 = 0), !v39))
            {
              v40 = a1 + *(*a1 - 24);
              llvm::Value::getName((v32 - 56));
              Key = llvm::StringMapImpl::FindKey();
              if (Key == -1 || Key == *(v40 + 5144))
              {
                v42 = *(v32 - 24);
                if ((v42 & 0xF) != 0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                v42 = *(v32 - 24);
              }

              if ((v42 & 0x30) == 0x10)
              {
LABEL_57:
                if (!*(v32 - 48))
                {
                  llvm::Function::eraseFromParent((v32 - 56));
                }
              }
            }
          }

          v32 = v34;
        }

        while (v34 != v33);
      }

LABEL_92:
      result = v26 ^ 1u;
      goto LABEL_93;
    }

    if (v32 == v33)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v43 = *(v32 + 8);
      if (v32)
      {
        v44 = v32 - 56;
      }

      else
      {
        v44 = 0;
      }

      if (v44 != a1[20])
      {
        v45 = *a1;
        v46 = *(*(a1 + *(*a1 - 24) + 2168) + 1865);
        if ((*(v32 - 23) & 0x20) != 0)
        {
          isDeclaration = 1;
        }

        else
        {
          isDeclaration = llvm::GlobalValue::isDeclaration((v32 - 56));
          v45 = *a1;
        }

        v48 = a1 + *(v45 - 24);
        llvm::Value::getName((v32 - 56));
        v49 = llvm::StringMapImpl::FindKey();
        if (v49 != -1 && v49 != *(v48 + 5144) || (*(a1 + 15) & 1) != 0)
        {
          llvm::GlobalValue::setLinkage(v32 - 56, 0);
LABEL_76:
          if (((isDeclaration | v46) & 1) == 0)
          {
            llvm::Function::addFnAttr();
          }

          goto LABEL_79;
        }

        if ((isDeclaration & 1) == 0)
        {
          *(v32 - 24) = *(v32 - 24) & 0xFFFFBFC0 | 0x4007;
        }

        if (*(v32 - 48))
        {
          goto LABEL_76;
        }

        llvm::Function::eraseFromParent((v32 - 56));
      }

LABEL_79:
      v32 = v43;
      if (v43 == v33)
      {
        v28 = *a1;
LABEL_81:
        v50 = *(a1 + *(v28 - 24) + 2136);
        v51 = *(v50 + 16);
        v52 = v50 + 8;
        if (v51 != v50 + 8)
        {
          do
          {
            v53 = *(v51 + 8);
            if (v51)
            {
              v54 = (v51 - 56);
            }

            else
            {
              v54 = 0;
            }

            if ((llvm::GlobalValue::isDeclaration(v54) & 1) == 0)
            {
              if (*(v51 - 48))
              {
                *(v51 - 24) = *(v51 - 24) & 0xFFFFBFC0 | 0x4007;
              }

              else
              {
                llvm::GlobalVariable::eraseFromParent((v51 - 56));
              }
            }

            v51 = v53;
          }

          while (v53 != v52);
          v28 = *a1;
        }

        v55 = *(v28 - 24);
        v56 = *(a1 + v55 + 1688);
        v57 = *(a1 + v55 + 2136);
        AGCLLVMCtx::runInliner();
      }
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v62);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v63, "Shader has opaque pointer enabled [", 35);
  v12 = llvm::LLVMContext::supportsTypedPointers(v9);
  v13 = MEMORY[0x20F331C00](&v63, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "], cannot link with runtime has opaque pointer [", 48);
  v14 = llvm::LLVMContext::supportsTypedPointers(v10);
  MEMORY[0x20F331C00](v13, v14);
  std::stringbuf::str();
  if (v61 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  std::string::append((a1 + *(*a1 - 24) + 1656), p_p);
  if (v61 < 0)
  {
    operator delete(__p);
  }

  v62[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v62 + *(v62[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v63 = v16;
  v64 = MEMORY[0x277D82878] + 16;
  if (v66 < 0)
  {
    operator delete(v65[7].__locale_);
  }

  v64 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  MEMORY[0x20F331D40](&v67);
  result = 0;
LABEL_93:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::linkMetalRuntime(AGCLLVMUserObject *this, int a2)
{
  if (*(this + 14))
  {
    return 1;
  }

  v50[13] = v2;
  v50[14] = v3;
  (*(**(this + *(*this - 24) + 2168) + 496))(&v49);
  v6 = v49;
  if (v49 != v50)
  {
    v7 = this + 2136;
    do
    {
      v8 = *&v7[*(*this - 24)];
      v9 = *(v6 + 55);
      if (v9 < 0)
      {
        v10 = v6[4];
      }

      v11 = v6[5];
      if (v9 >= 0)
      {
        v12 = *(v6 + 55);
      }

      else
      {
        v12 = v6[5];
      }

      Function = llvm::Module::getFunction();
      if (Function)
      {
        v14 = Function;
        if (*(v6 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v48, v6[4], v6[5]);
        }

        else
        {
          v48 = *(v6 + 4);
        }

        std::string::insert(&v48, 0, "agx.");
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v48.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:nn200100](&v45, size + 5);
        if (v47 >= 0)
        {
          v16 = &v45;
        }

        else
        {
          v16 = v45;
        }

        if (size)
        {
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v48;
          }

          else
          {
            v17 = v48.__r_.__value_.__r.__words[0];
          }

          memmove(v16, v17, size);
        }

        strcpy(v16 + size, ".fast");
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v48.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:nn200100](&__p, v18 + 8);
        if (v44 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v18)
        {
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v48;
          }

          else
          {
            v20 = v48.__r_.__value_.__r.__words[0];
          }

          memmove(p_p, v20, v18);
        }

        strcpy(p_p + v18, ".nonfast");
        v21 = *(v14 + 8);
        while (v21)
        {
          v22 = *(v21 + 24);
          v21 = *(v21 + 8);
          FastMathFlags = llvm::Instruction::getFastMathFlags(v22);
          v24 = *this;
          if (FastMathFlags)
          {
            v25 = v47 < 0;
            v26 = &v46;
          }

          else
          {
            v25 = v44 < 0;
            v26 = &v43;
          }

          v27 = *(v14 + 24);
          v28 = *&v7[*(*this - 24)];
          v29 = *v26;
          if (v25)
          {
            v30 = *v26;
          }

          llvm::Module::getOrInsertFunction();
          *(v22 + 9) = *(v31 + 24);
          llvm::CallBase::setCalledOperand(v22, v31);
        }

        if (v44 < 0)
        {
          operator delete(__p);
        }

        if (v47 < 0)
        {
          operator delete(v45);
        }

        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }
      }

      v32 = v6[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v6[2];
          v34 = *v33 == v6;
          v6 = v33;
        }

        while (!v34);
      }

      v6 = v33;
    }

    while (v33 != v50);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v50[0]);
  v35 = this + *(*this - 24);
  v36 = *(v35 + 211);
  v37 = *(v35 + 267);
  if (*(this + 199) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(this + 22), *(this + 23));
  }

  else
  {
    v41 = *(this + 176);
  }

  MetalRuntime = AGCLLVMCtx::loadMetalRuntime(v36, v35, v37, a2);
  v39 = MetalRuntime;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if (v39)
    {
      return AGCLLVMObject::linkCommon((this + *(*this - 24)), v39, *(*(this + *(*this - 24) + 2168) + 1865), *(this + 20));
    }
  }

  else if (MetalRuntime)
  {
    return AGCLLVMObject::linkCommon((this + *(*this - 24)), v39, *(*(this + *(*this - 24) + 2168) + 1865), *(this + 20));
  }

  return 1;
}

void AGCLLVMGen3TargetLowerer::getListOfFunctionsInMetalRuntimeWithFastAndNonFastVariants(void *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(v3, "air.fract.f16");
  std::string::basic_string[abi:nn200100]<0>(v4, "air.fract.v2f16");
  std::string::basic_string[abi:nn200100]<0>(v5, "air.fract.v3f16");
  std::string::basic_string[abi:nn200100]<0>(v6, "air.fract.v4f16");
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  operator new();
}

uint64_t llvm::IRBuilderBase::Insert<llvm::CastInst>(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  (*(*a1[10] + 16))(a1[10], a2, a3, a1[6], a1[7]);
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *a1;
    v7 = &v6[4 * v5];
    do
    {
      v8 = *v6;
      v9 = *(v6 + 1);
      llvm::Instruction::setMetadata();
      v6 += 4;
    }

    while (v6 != v7);
  }

  return a2;
}

uint64_t llvm::IRBuilderBase::CreateAlignedLoad(unsigned int **a1, llvm::Type *a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, a2);
  }

  v10 = llvm::User::operator new(0x40);
  llvm::LoadInst::LoadInst();
  (*(*a1[10] + 16))(a1[10], v10, a5, a1[6], a1[7]);
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = *a1;
    v13 = &v12[4 * v11];
    do
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      llvm::Instruction::setMetadata();
      v12 += 4;
    }

    while (v12 != v13);
  }

  return v10;
}

uint64_t llvm::IRBuilderBase::CreateGEP(llvm::IRBuilderBase *this, llvm::Type *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a4;
  v9 = (*(**(this + 9) + 48))(*(this + 9), a2, a3, &v13, 1, 0);
  if (!v9)
  {
    v14 = 257;
    v9 = llvm::GetElementPtrInst::Create(a2, a3, &v12, 1);
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v9, a5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t llvm::GetElementPtrInst::Create(uint64_t a1, uint64_t *a2, uint64_t **a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x50);
  v9 = *a2;
  v10 = *(*a2 + 8);
  if ((v10 & 0xFE) == 0x12)
  {
    v9 = **(v9 + 16);
    v10 = *(v9 + 8);
  }

  v11 = (v10 >> 8);
  llvm::GetElementPtrInst::getIndexedType();
  if (*(v9 + 24))
  {
    llvm::PointerType::get();
  }

  else
  {
    llvm::PointerType::get(*v9, v11);
  }

  v12 = *a2;
  if (!*a2 || (*(v12 + 8) & 0xFE) != 0x12)
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v14 = 8 * a4;
    v15 = a3;
    while (1)
    {
      v12 = **v15;
      if (v12 && (*(v12 + 8) & 0xFE) == 18)
      {
        break;
      }

      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = *(v12 + 32);
  llvm::VectorType::get();
LABEL_16:
  llvm::Instruction::Instruction();
  *(v8 + 64) = a1;
  *(v8 + 72) = llvm::GetElementPtrInst::getIndexedType();
  llvm::GetElementPtrInst::init();
  return v8;
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

char *llvm::PassInfoMixin<ReplaceTensorIntrinsicsPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4D)
  {
    v1 = v0;
  }

  else
  {
    v1 = 77;
  }

  v2 = &aStringrefLlvmG_81[v1];
  v3 = 77 - v1;
  if ((77 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 77 - v1;
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

uint64_t AGCLLVMObject::eraseLogicalRasterOrderGroupMetadata(AGCLLVMObject *this)
{
  result = (*(*this + 152))(this);
  if (result)
  {
    v3 = *(this + 267);
    v4 = v3 + 24;
    v5 = *(v3 + 32);
    if (v5 != v3 + 24)
    {
      do
      {
        v6 = v5 - 56;
        if (!v5)
        {
          v6 = 0;
        }

        v7 = v6 + 72;
        v8 = *(v6 + 80);
        if (v8 == v6 + 72)
        {
          v10 = 0;
        }

        else
        {
          do
          {
            v9 = v8 - 24;
            if (!v8)
            {
              v9 = 0;
            }

            v10 = *(v9 + 48);
            if (v10 != v9 + 40)
            {
              break;
            }

            v8 = *(v8 + 8);
          }

          while (v8 != v7);
        }

        while (v8 != v7)
        {
          if (v10)
          {
            v11 = v10 - 24;
          }

          else
          {
            v11 = 0;
          }

          if (*(v11 + 48) || (*(v11 + 23) & 0x20) != 0)
          {
            result = llvm::Instruction::getMetadataImpl();
            if (result)
            {
              v12 = *(result + 8);
              if (v12)
              {
                v13 = -8 * v12;
                while (1)
                {
                  v14 = *(result + v13);
                  if (*v14 - 3 >= 0xFFFFFFFE && *(*(v14 + 16) + 16) == 16)
                  {
                    break;
                  }

                  v13 += 8;
                  if (!v13)
                  {
                    goto LABEL_24;
                  }
                }
              }

              else
              {
LABEL_24:
                result = llvm::Instruction::setMetadata();
              }
            }
          }

          v10 = *(v10 + 8);
          v15 = v8 - 24;
          if (!v8)
          {
            v15 = 0;
          }

          while (v10 == v15 + 40)
          {
            v8 = *(v8 + 8);
            if (v8 == v7)
            {
              break;
            }

            v15 = v8 - 24;
            if (!v8)
            {
              v15 = 0;
            }

            v10 = *(v15 + 48);
          }
        }

        v5 = *(v5 + 8);
      }

      while (v5 != v4);
    }
  }

  return result;
}

char *llvm::PassInfoMixin<TranslatorLegacyPostRuntimeLinkingPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x58)
  {
    v1 = v0;
  }

  else
  {
    v1 = 88;
  }

  v2 = &aStringrefLlvmG_83[v1];
  v3 = 88 - v1;
  if ((88 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 88 - v1;
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

uint64_t AGCLLVMBuilder::findPrefix(char *__s1, size_t a2, char **a3, char **a4, void *__s2, size_t __n)
{
  if (a2 < __n)
  {
    return 0;
  }

  if (__n && memcmp(__s1, __s2, __n))
  {
    return 0;
  }

  v12 = &__s1[__n];
  v13 = a2 >= __n;
  v14 = a2 - __n;
  if (v14 != 0 && v13 && (v15 = memchr(v12, 46, v14)) != 0 && (v16 = v15 - v12, v15 - v12 != -1))
  {
    if (v14 >= v16)
    {
      v17 = v15 - v12;
    }

    else
    {
      v17 = v14;
    }

    *a3 = v12;
    a3[1] = v17;
    if (v14 >= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = &v12[v18];
    v20 = v14 - v18;
  }

  else
  {
    v20 = 0;
    *a3 = v12;
    a3[1] = v14;
    v19 = &unk_20E75F419;
  }

  *a4 = v19;
  a4[1] = v20;
  return 1;
}

uint64_t AGCLLVMUserObject::replaceIndirectResources(AGCLLVMUserObject *this)
{
  v83[4] = *MEMORY[0x277D85DE8];
  v1 = *(this + *(*this - 24) + 2136);
  v2 = *(v1 + 32);
  v3 = v1 + 24;
  if (v2 == v1 + 24)
  {
    goto LABEL_136;
  }

  v5 = this + 1712;
  v75 = this + 1904;
  v76 = v1 + 24;
  do
  {
    if (v2)
    {
      v6 = (v2 - 56);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 8);
    v77 = v6;
    Name = llvm::Value::getName(v6);
    __s1 = 0;
    v80 = 0;
    v78[0] = 0;
    v78[1] = 0;
    if (!AGCLLVMBuilder::findPrefix(Name, v9, &__s1, v78, "air.", 4uLL))
    {
      goto LABEL_105;
    }

    v10 = v80;
    if (v80 < 0x17)
    {
      goto LABEL_36;
    }

    v11 = __s1;
    v12 = __s1 + v80;
    if (*(__s1 + v80 - 23) == 0x656C62697369765FLL && *(__s1 + v80 - 15) == 0x6F6974636E75665FLL && *(__s1 + v80 - 8) == 0x656C6261745F6E6FLL)
    {
      if (v80 == 31 && (*__s1 == 0x6C6C756E5F746567 ? (v15 = *(__s1 + 1) == 0x656C62697369765FLL) : (v15 = 0), v15 ? (v16 = *(__s1 + 2) == 0x6F6974636E75665FLL) : (v16 = 0), v16 ? (v17 = *(__s1 + 23) == 0x656C6261745F6E6FLL) : (v17 = 0), v17))
      {
        v64 = *(v2 - 48);
        if (!v64)
        {
          if (*(v12 - 28) != 0x65737265746E695FLL || *(v12 - 20) != 0x75665F6E6F697463 || *(v12 - 12) != 0x745F6E6F6974636ELL || *(v12 - 1) != 1701601889)
          {
            goto LABEL_49;
          }

          goto LABEL_112;
        }

        do
        {
          v65 = *(v64 + 8);
          v66 = *(v64 + 24);
          llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v66);
          v67 = **(*(v66 + 9) + 16);
          v68 = *&v75[*(*this - 24)];
          llvm::ConstantInt::get();
          llvm::ConstantExpr::getIntToPtr();
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v66);
          v64 = v65;
        }

        while (v65);
      }

      else
      {
        for (i = *(v2 - 48); i; i = *(i + 8))
        {
          AGCLLVMUserObject::getCallOfCastedFunction(&v81, *(i + 24));
          v19 = v81;
          if (v82)
          {
            v20 = 8 * v82;
            do
            {
              v21 = *v19++;
              VisibleFunctionTableHeapGlobal = AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(this);
              AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v21, 0, VisibleFunctionTableHeapGlobal, v23);
              v20 -= 8;
            }

            while (v20);
            v19 = v81;
          }

          if (v19 != v83)
          {
            free(v19);
          }
        }
      }
    }

    if (v10 >= 0x1C)
    {
      if (*(v12 - 28) != 0x65737265746E695FLL || *(v12 - 20) != 0x75665F6E6F697463 || *(v12 - 12) != 0x745F6E6F6974636ELL || *(v12 - 1) != 1701601889)
      {
        goto LABEL_49;
      }

      if (v10 == 36 && !memcmp(v11, "get_null_intersection_function_table", 0x24uLL))
      {
        if (*(v11 + 21) != 0x5F7265646E65725FLL || *(v11 + 28) != 0x646E616D6D6F635FLL)
        {
          v27 = v11 + 36;
          v29 = 36;
          v3 = v76;
LABEL_58:
          v31 = *(v27 - 2);
          v30 = *(v27 - 1);
          if (v31 == 0x657475706D6F635FLL && v30 == 0x646E616D6D6F635FLL)
          {
            goto LABEL_67;
          }

          goto LABEL_62;
        }

        v29 = 36;
LABEL_56:
        v3 = v76;
        goto LABEL_67;
      }

LABEL_112:
      v59 = *(v77 + 1);
      if (!v59)
      {
        goto LABEL_49;
      }

      do
      {
        v60 = *(v59 + 8);
        v61 = *(v59 + 24);
        IntersectionFunctionTableHeapGlobal = AGCLLVMUserObject::createIntersectionFunctionTableHeapGlobal(this);
        AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v61, 0, IntersectionFunctionTableHeapGlobal, v63);
        v59 = v60;
      }

      while (v60);
    }

LABEL_36:
    if (v10 <= 0xE)
    {
      v11 = __s1;
      v3 = v76;
      goto LABEL_98;
    }

    v11 = __s1;
LABEL_49:
    v27 = v11 + v10;
    if (*(v11 + v10 - 15) == 0x5F7265646E65725FLL && *(v11 + v10 - 8) == 0x646E616D6D6F635FLL)
    {
      v29 = v10;
      goto LABEL_56;
    }

    v3 = v76;
    if (v10 >= 0x10)
    {
      v29 = v10;
      goto LABEL_58;
    }

    v29 = 15;
LABEL_62:
    if (*(v11 + v29 - 15) != 0x646E616D6D6F635FLL || *(v11 + v29 - 8) != 0x7265666675625F64)
    {
      goto LABEL_89;
    }

LABEL_67:
    v34 = *(v77 + 1);
    if (!v34)
    {
      goto LABEL_89;
    }

    do
    {
      while (1)
      {
        v35 = *(v34 + 24);
        v34 = *(v34 + 8);
        llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v35);
        IndirectCommandBufferHeapGlobal = AGCLLVMUserObject::createIndirectCommandBufferHeapGlobal(this);
        AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v35, 0, IndirectCommandBufferHeapGlobal, v37);
        if (v10 == 19)
        {
          break;
        }

        if (v10 == 20)
        {
          v38 = *v11 == 0x6D6F635F79706F63 && v11[1] == 0x6D6F635F65747570;
          if (v38 && *(v11 + 4) == 1684955501)
          {
            goto LABEL_87;
          }
        }

LABEL_77:
        if (!v34)
        {
          goto LABEL_88;
        }
      }

      if (*v11 != 0x6E65725F79706F63 || v11[1] != 0x6D6D6F635F726564 || *(v11 + 11) != 0x646E616D6D6F635FLL)
      {
        goto LABEL_77;
      }

LABEL_87:
      v42 = AGCLLVMUserObject::createIndirectCommandBufferHeapGlobal(this);
      AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v35, 2u, v42, v43);
    }

    while (v34);
LABEL_88:
    v29 = v10;
LABEL_89:
    if (v29 >= 0x13 && (*v11 == 0x657069705F746573 ? (v44 = v11[1] == 0x6174735F656E696CLL) : (v44 = 0), v44 ? (v45 = *(v11 + 11) == 0x5F65746174735F65) : (v45 = 0), v45 && (v54 = *(v77 + 1)) != 0))
    {
      do
      {
        v55 = *(v54 + 8);
        v56 = *(v54 + 24);
        llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v56);
        PipelineStateHeapGlobal = AGCLLVMUserObject::createPipelineStateHeapGlobal(this);
        AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v56, 2u, PipelineStateHeapGlobal, v58);
        v54 = v55;
      }

      while (v55);
    }

    else
    {
      v10 = v29;
    }

LABEL_98:
    if (v10 == 43)
    {
      v46 = v11;
      v47 = "get_unique_identifier_render_pipeline_state";
      v48 = 43;
LABEL_102:
      if (!memcmp(v46, v47, v48))
      {
        v49 = *(v77 + 1);
        if (v49)
        {
          do
          {
            v50 = *(v49 + 8);
            v51 = *(v49 + 24);
            llvm::IRBuilderBase::SetInsertPoint(&v5[*(*this - 24)], v51);
            v52 = AGCLLVMUserObject::createPipelineStateHeapGlobal(this);
            AGCLLVMUserObject::buildResourcePointerFromResourceIndexArgument(this, v51, 0, v52, v53);
            v49 = v50;
          }

          while (v50);
        }
      }
    }

    else if (v10 == 44)
    {
      v46 = v11;
      v47 = "get_unique_identifier_compute_pipeline_state";
      v48 = 44;
      goto LABEL_102;
    }

LABEL_105:
    v2 = v7;
  }

  while (v7 != v3);
LABEL_136:
  v73 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t AGCLLVMUserObject::replaceRaytracingFunctions(AGCLLVMUserObject *this)
{
  v142[4] = *MEMORY[0x277D85DE8];
  v142[0] = 0;
  v142[1] = 0;
  v142[2] = 0x1800000000;
  v2 = this + *(*this - 24);
  if (*(*(v2 + 271) + 1908) && (v2[4577] & 1) == 0)
  {
    AGCLLVMUserObject::createSCSIFTHeapGlobal(this);
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (v3 != 27)
    {
      v4 = this + *(*this - 24);
      v5 = *(v4 + 271);
      v6 = *(v4 + 267);
      GlobalSCSLayoutGlobal = AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
      v3 = (*(*v5 + 1360))(&v135, v5, v6, GlobalSCSLayoutGlobal);
      v8 = v136;
      *(this + 249) = v135;
      *(this + 250) = v8;
      *(this + 251) = v137;
    }

    AGCLLVMUserObject::getRaytracingFunctionMap(v3);
    AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
    SCSConfigurationBufferGlobal = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (SCSConfigurationBufferGlobal != 8)
    {
      SCSConfigurationBufferGlobal = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      if (SCSConfigurationBufferGlobal != 27)
      {
        SCSConfigurationBufferGlobal = AGCLLVMUserObject::createSCSConfigurationBufferGlobal(this);
      }
    }

    if (*(*(this + *(*this - 24) + 2168) + 1945) == 1)
    {
      v10 = *(this + 300);
      if (v10[48])
      {
        v11 = 1;
      }

      else
      {
        v11 = v10[50];
      }

      SCSConfigurationBufferGlobal = (*(*this + 456))(this, v11 & 1, v10[51]);
    }

    AGCLLVMUserObject::getRaytracingFunctionMap(SCSConfigurationBufferGlobal);
    if (dword_28117DC10)
    {
        ;
      }
    }

    else
    {
      i = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map;
    }

    v14 = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map + 8 * dword_28117DC10;
    v104 = this + 2136;
    if (i != v14)
    {
      v15 = *i;
      do
      {
        if (*(v15 + 2) == 3)
        {
          v16 = *(v15 + 8);
          v17 = *&v104[*(*this - 24)];
          v18 = *v15;
          Function = llvm::Module::getFunction();
          if (Function)
          {
            v20 = Function;
            while (1)
            {
              v20 = *(v20 + 8);
              if (!v20)
              {
                break;
              }

              AGCLLVMTargetLowerer::ResetIntersectionQueryArguments::ResetIntersectionQueryArguments(&v135, v16 & 1, (v16 >> 6) & 1, *(v20 + 24), this + *(*this - 24) + 1704);
              if (v139)
              {
                v21 = *(v139 + 16) == 16;
              }

              else
              {
                v21 = 0;
              }

              if (v21)
              {
                v23 = (v139 + 24);
                if (*(v139 + 32) >= 0x41u)
                {
                  v23 = *v23;
                }

                v22 = *v23 == 1;
              }

              else
              {
                v22 = 0;
              }

              v24 = 0;
              if (v138 && *(v138 + 16) == 16)
              {
                v25 = (v138 + 24);
                if (*(v138 + 32) >= 0x41u)
                {
                  v25 = *v25;
                }

                v24 = (*v25 >> 1) & 1;
              }

              v26 = 0;
              if (v140 && *(v140 + 16) == 16)
              {
                v27 = (v140 + 24);
                if (*(v140 + 32) >= 0x41u)
                {
                  v27 = *v27;
                }

                v26 = (*v27 & 2) == 0;
              }

              if (!v22 || ((v24 | v26) & 1) == 0)
              {
                goto LABEL_54;
              }
            }
          }
        }

        do
        {
          v28 = i[1];
          ++i;
          v15 = v28;
          if (v28)
          {
            v29 = v15 + 1 == 0;
          }

          else
          {
            v29 = 1;
          }
        }

        while (v29);
      }

      while (i != v14);
    }

LABEL_54:
    if (dword_28117DC10)
    {
        ;
      }
    }

    else
    {
      j = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map;
    }

    v32 = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map + 8 * dword_28117DC10;
    if (j != v32)
    {
      v33 = *j;
      v103 = AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map + 8 * dword_28117DC10;
      do
      {
        v34 = *&v104[*(*this - 24)];
        v35 = *v33;
        v36 = llvm::Module::getFunction();
        if (v36)
        {
          v37 = v36;
          if (*(v36 + 8))
          {
            v38 = llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::try_emplace<>(v142, (v33 + 24), *v33);
            v39 = *(v33 + 8);
            v40 = *v38;
            *(v40 + 16) = *(v33 + 16);
            *(v40 + 8) = v39;
            v105 = *(v33 + 16);
            v107 = **(*(v37 + 3) + 16);
            if (*(v37 + 1))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(1uLL);
            }

            v41 = *(this + *(*this - 24) + 2168);
            v42 = (*(*v41 + 1456))(v41, *(v33 + 16));
            if ((v105 & 0x100) != 0)
            {
              *(this + 1017) |= 1 << v42;
            }

            llvm::Function::eraseFromParent(v37);
            v32 = v103;
          }
        }

        do
        {
          v43 = j[1];
          ++j;
          v33 = v43;
          if (v43)
          {
            v44 = v33 == -8;
          }

          else
          {
            v44 = 1;
          }
        }

        while (v44);
      }

      while (j != v32);
    }
  }

  v45 = this + *(*this - 24);
  if (*(*(v45 + 271) + 1908) && (v45[4577] & 1) == 0 && (*(*v45 + 80))(v45) != 27)
  {
    v46 = *(this + 300);
    if (v46[48])
    {
      v47 = 1;
    }

    else
    {
      v47 = v46[50];
    }

    v48 = v46[51];
    if (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8 && ((v47 | v48))
    {
      v108 = v47;
      v49 = *(*(this + 20) + 80);
      if (v49)
      {
        v50 = v49 - 24;
      }

      else
      {
        v50 = 0;
      }

      v51 = this + *(*this - 24);
      v54 = *(v50 + 40);
      v53 = (v50 + 40);
      v52 = v54;
      if (v54 != v53)
      {
        while (1)
        {
          v55 = v52 ? (v52 - 3) : 0;
          if (*(v55 + 16) == 84 && (v56 = *(v55 - 32)) != 0 && !*(v56 + 16) && *(v56 + 24) == *(v55 + 72) && (Name = llvm::Value::getName(v56), v58 == 18))
          {
            v59 = *Name == 0x7867612E6D766C6CLL && *(Name + 8) == 0x6C6C612E736C742ELL;
            v60 = v59 && *(Name + 16) == 25455;
            v61 = v60;
          }

          else
          {
            v61 = 0;
          }

          if (*(v55 + 16) == 59 || v61)
          {
            break;
          }

          v52 = *v52;
          if (v52 == v53)
          {
            v52 = v53;
            break;
          }
        }
      }

      v62 = v52[1];
      if (v62)
      {
        v63 = (v62 - 24);
      }

      else
      {
        v63 = 0;
      }

      llvm::IRBuilderBase::SetInsertPoint((v51 + 1712), v63);
      if (!*(this + 303))
      {
        AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 0);
      }

      if (!*(this + 306))
      {
        AGCLLVMUserObject::buildBindlessImageArgumentPointer(this, 0, 1);
      }

      if (!*(this + 309))
      {
        AGCLLVMUserObject::buildImageTextureBufferLength(this, 0);
      }

      if (!*(this + 315))
      {
        AGCLLVMUserObject::createSamplerHeapGlobal(this);
      }

      AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
      AGCLLVMUserObject::createVisibleFunctionTableHeapGlobal(this);
      AGCLLVMUserObject::createSCSConfigurationBufferGlobal(this);
      if (*(*(this + *(*this - 24) + 2168) + 1946) == 1)
      {
        AGCLLVMUserObject::createIntersectionFunctionHeapGlobal(this);
      }

      if (v48)
      {
        AGCLLVMUserObject::createSCSUserDataBoundGlobal(this);
      }

      AGCLLVMUserObject::createSCSDriverDataStartGlobal(this);
      AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
      AGCLLVMUserObject::createPerEncoderIndirectionTableGlobal(this);
      *&v131 = 0;
      v130 = 4uLL;
      v64 = this + *(*this - 24);
      GlobalBindingTableGlobal = AGCLLVMUserObject::createGlobalBindingTableGlobal(this);
      LOWORD(v137) = 257;
      Load = AGCLLVMBuilder::CreateLoad((v64 + 1704), GlobalBindingTableGlobal, &v135);
      v66 = this + *(*this - 24);
      DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v66);
      LOWORD(v137) = 257;
      GEP = AGCLLVMBuilder::CreateLoad((v66 + 1704), DylibBuiltinPerCommandStateVar, &v135);
      if ((*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) == 6)
      {
        v69 = this + *(*this - 24);
        v70 = *(v69 + 236);
        v71 = llvm::PointerType::get();
        LOWORD(v137) = 257;
        PointerCast = llvm::IRBuilderBase::CreatePointerCast(v69 + 214, GEP, v71, &v135);
        v73 = (this + *(*this - 24));
        v74 = v73[236];
        v75 = v73[238];
        v76 = llvm::ConstantInt::get();
        LOWORD(v137) = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((v73 + 214), v74, PointerCast, v76, &v135);
      }

      v77 = this + *(*this - 24);
      v135 = *(v77 + 110);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v136, (v77 + 1712));
      DWORD2(v136) = *(v77 + 452);
      DylibBaseGetterFunc = AGCLLVMUserObject::createDylibBaseGetterFunc(this);
      v79 = *(this + *(*this - 24) + 2168);
      v127 = v135;
      v128 = v136;
      if (v136)
      {
        llvm::MetadataTracking::track();
      }

      v129 = DWORD2(v136);
      llvm::ValueHandleBase::ValueHandleBase(v125, 2u, this + 313);
      llvm::ValueHandleBase::ValueHandleBase(v123, 2u, this + 343);
      llvm::ValueHandleBase::ValueHandleBase(v121, 2u, this + 339);
      llvm::ValueHandleBase::ValueHandleBase(v119, 2u, this + 331);
      llvm::ValueHandleBase::ValueHandleBase(v117, 2u, this + 352);
      v80 = *(this + 318);
      v81 = *(this + 321);
      v82 = *(this + 327);
      v83 = *(this + 330);
      v84 = *(this + *(*this - 24) + 2136);
      llvm::ValueHandleBase::ValueHandleBase(v115, 2u, &v130);
      (*(*v79 + 1008))(&__src, v79, &v127, this + 3984, this + 2408, v125, DylibBaseGetterFunc, v123, v121, v119, v117, v80, v81, v82, v83, Load, GEP, v84, v108 & 1, v115);
      if (v116 != -8192 && v116 != -4096 && v116)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v115);
      }

      if (v118 != -8192 && v118 != -4096 && v118)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v117);
      }

      LOBYTE(v47) = v108;
      if (v120 != -8192 && v120 != -4096 && v120)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v119);
      }

      if (v122 != -8192 && v122 != -4096 && v122)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v121);
      }

      if (v124 != -8192 && v124 != -4096 && v124)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v123);
      }

      if (v126 != -8192 && v126 != -4096 && v126)
      {
        llvm::ValueHandleBase::RemoveFromUseList(v125);
      }

      if (v128)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v108)
      {
        v85 = this + *(*this - 24);
        v86 = *(*(this + 20) + 80);
        v87 = v86 ? (v86 - 24) : 0;
        FirstNonPHIOrDbgOrAlloca = llvm::BasicBlock::getFirstNonPHIOrDbgOrAlloca(v87);
        v89 = FirstNonPHIOrDbgOrAlloca ? (FirstNonPHIOrDbgOrAlloca - 24) : 0;
        llvm::IRBuilderBase::SetInsertPoint((v85 + 1712), v89);
        v90 = this + *(*this - 24);
        v91 = *(v90 + 271);
        v112 = *(v90 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v113, (v90 + 1712));
        v114 = *(v90 + 452);
        (*(*v91 + 1104))(v91, &v112, this + 3984, *(this + 318), *(this + 321), *(*(this + 300) + 50), 0, 0, 0, 0, 1);
        if (v113)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      v92 = this + *(*this - 24);
      v109 = __src;
      v110 = v133;
      if (v133)
      {
        llvm::MetadataTracking::track();
      }

      v111 = v134;
      AGCLLVMBuilder::InsertPoint::restoreIP(&v109, (v92 + 1712));
      if (v110)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v133)
      {
        llvm::MetadataTracking::untrack();
      }

      if (v136)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    if (v47)
    {
      *(this + 505) = 0;
      *(this + 506) = 0;
      *(this + 507) = 1;
      *(this + 1016) = 0;
    }
  }

  (*(*this + 272))(this, 4);
  v93 = *this;
  v94 = this + *(*this - 24);
  v95 = *(v94 + 271);
  if (v95[477] && (v94[4577] & 1) == 0)
  {
    AccelerationStructureHeapGlobal = AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
    v98 = AGCLLVMUserObject::createGlobalSCSLayoutGlobal(this);
    (*(*v95 + 1440))(v95, this + 3984, AccelerationStructureHeapGlobal, v98);
    v93 = *this;
    v96 = 1;
  }

  else
  {
    v96 = 0;
  }

  v99 = *(this + *(v93 - 24) + 2168);
  v100 = AGCLLVMUserObject::createAccelerationStructureHeapGlobal(this);
  (*(*v99 + 1432))(v99, v100, v96);
  if (v96 && *(this + 505))
  {
    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(v141, v142);
    AGCLLVMUserObject::dumpScsLayoutToStatusFile(this, v141);
    llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(v141);
  }

  result = llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(v142);
  v102 = *MEMORY[0x277D85DE8];
  return result;
}

void *AGCLLVMUserObject::createSCSIFTHeapGlobal(void *this)
{
  if (!this[324])
  {
    v16 = v1;
    v17 = v2;
    v3 = this;
    v4 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if ((v4 - 7) < 2 || v4 == 22)
    {
      v6 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v6 + 1016))(v6);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 760))();
    }

    else
    {
      if (v4 == 27)
      {
        v9 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
        v10 = (*(*v9 + 952))(v9) & 0xFFFFF | 0x900000;
LABEL_12:
        v12 = *(v3 + *(*v3 - 24) + 1912);
        *v14 = "agc.ria.intersection_function_table_heap";
        v15 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v3, v12, v14, v10, 0, 0, 0);
        return llvm::ValueHandleBase::operator=((v3 + 2576), GlobalBufferBinding);
      }

      v11 = *(*(v3 + *(*v3 - 24) + 2168) + 920);
      v7 = (*(*v11 + 1016))(v11);
      v8 = (*(**(*(v3 + *(*v3 - 24) + 2168) + 920) + 408))();
    }

    _AGCBindingInfo::_AGCBindingInfo(v14, v7, v8);
    v10 = v14[0];
    goto LABEL_12;
  }

  return this;
}

llvm::Value *AGCLLVMUserObject::createGlobalBufferBinding(AGCLLVMUserObject *this, llvm::Type *a2, const llvm::Twine *a3, unsigned int a4, int a5, int a6, int a7)
{
  v84 = *MEMORY[0x277D85DE8];
  v12 = *(this + 442);
  v13 = *(this + 886);
  v14 = v12 + 40 * v13;
  v15 = v12;
  if (v13)
  {
    v16 = 40 * v13;
    v15 = *(this + 442);
    while (*(v15 + 24))
    {
      v15 += 40;
      v16 -= 40;
      if (!v16)
      {
        v15 = v12 + 40 * v13;
        goto LABEL_14;
      }
    }
  }

  v17 = v15 + 40;
  if (v15 != v14 && v17 != v14)
  {
    do
    {
      if (*(v17 + 24))
      {
        *v15 = *v17;
        llvm::ValueHandleBase::operator=((v15 + 8), (v17 + 8));
        *(v15 + 32) = *(v17 + 32);
        v15 += 40;
      }

      v17 += 40;
    }

    while (v17 != v14);
    v12 = *(this + 442);
    LODWORD(v13) = *(this + 886);
  }

LABEL_14:
  llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::destroy_range(v15, v12 + 40 * v13);
  v19 = *(this + 442);
  v20 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v19) >> 3);
  *(this + 886) = v20;
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    do
    {
      v23 = v22 >> 1;
      v24 = &v21[10 * (v22 >> 1)];
      v26 = *v24;
      v25 = v24 + 10;
      v22 += ~(v22 >> 1);
      if (v26 < a4)
      {
        v21 = v25;
      }

      else
      {
        v22 = v23;
      }
    }

    while (v22);
  }

  else
  {
    v21 = v19;
  }

  v27 = &v19[0xFFFFFFFE00000002 * ((v15 - v19) >> 3)];
  if (a6 == 139 && v21 != v27)
  {
    v28 = v21;
    while (*v28 == a4)
    {
      if (v28[8] == 139)
      {
        v30 = *(v28 + 3);
        goto LABEL_74;
      }

      v28 += 10;
      if (v28 == v27)
      {
        break;
      }
    }
  }

  if (v21 != v27)
  {
    v29 = *(v21 + 3);
  }

  v30 = llvm::User::operator new(0x58);
  v31 = *(this + *(*this - 24) + 2136);
  v32 = llvm::GlobalVariable::GlobalVariable();
  *(v32 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v33 = this + *(*this - 24);
  if ((*(*v33 + 200))(v33) == 2 || (*(*v33 + 200))(v33) == 1 || (*(*v33 + 200))(v33) == 3 || (*(*v33 + 200))(v33) == 4)
  {
    v35 = (*(*this + 88))(this);
    v36 = *(*(this + *(*this - 24) + 2168) + 920);
    v37 = *v36;
    if (v35 == 106)
    {
      v38 = (*(v37 + 440))(v36, 0, v34);
    }

    else
    {
      v38 = (*(v37 + 24))(v36, 0, v34);
    }

    if (!(a4 >> 20) && v38 > a4)
    {
      *(this + 848);
    }

    llvm::Value::getContext(v30);
    *(v30 + 9) = llvm::AttributeSet::addAttribute();
  }

  v77 = a5;
  LODWORD(v79) = a4;
  v80 = 4;
  v81 = 0;
  v82 = v30;
  if (v30 != -8192 && v30 != -4096 && v30)
  {
    llvm::ValueHandleBase::AddToUseList(&v80);
  }

  v39 = a7;
  v83 = a6;
  v40 = *(this + 442);
  if ((v40 + 40 * *(this + 886)) == v21)
  {
    v55 = llvm::SmallVectorTemplateCommon<AGCLLVMUserObject::BufferBinding,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>>(this + 3536, &v79);
    v56 = (*(this + 442) + 40 * *(this + 886));
    *v56 = *v55;
    llvm::ValueHandleBase::ValueHandleBase((v56 + 2), 2u, (v55 + 8));
    v56[8] = *(v55 + 32);
    ++*(this + 886);
  }

  else
  {
    v41 = v21 - v40;
    v42 = llvm::SmallVectorTemplateCommon<AGCLLVMUserObject::BufferBinding,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>>(this + 3536, &v79);
    v43 = *(this + 442);
    v44 = (v43 + v41);
    v45 = (v43 + 40 * *(this + 886));
    *v45 = *(v45 - 10);
    llvm::ValueHandleBase::ValueHandleBase((v45 + 2), 2u, v45 - 4);
    v45[8] = *(v45 - 2);
    v46 = *(this + 442);
    v47 = *(this + 886);
    v48 = (v46 + 40 * v47 - 40);
    if (v48 != v44)
    {
      v49 = v46 + 40 * v47 - 40;
      do
      {
        v50 = *(v49 - 40);
        v49 -= 40;
        *v48 = v50;
        llvm::ValueHandleBase::operator=((v48 + 2), v48 - 4);
        v48[8] = *(v48 - 2);
        v48 = v49;
      }

      while (v49 != v44);
      v47 = *(this + 886);
      v46 = *(this + 442);
    }

    v51 = v47 + 1;
    *(this + 886) = v51;
    if (v42 < v46 + 40 * v51 && v42 >= v44)
    {
      v53 = 40;
    }

    else
    {
      v53 = 0;
    }

    v54 = v42 + v53;
    *v44 = *(v42 + v53);
    llvm::ValueHandleBase::operator=((v44 + 2), (v42 + v53 + 8));
    v44[8] = *(v54 + 32);
  }

  if (v82 != -8192 && v82 != -4096 && v82)
  {
    llvm::ValueHandleBase::RemoveFromUseList(&v80);
  }

  __src[0] = llvm::ValueAsMetadata::get();
  v57 = *(this + *(*this - 24) + 1904);
  llvm::ConstantInt::get();
  __src[1] = llvm::ValueAsMetadata::get();
  v58 = *(this + *(*this - 24) + 1904);
  llvm::ConstantInt::get();
  __src[2] = llvm::ValueAsMetadata::get();
  v79 = &v81;
  v80 = 0x400000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v79, __src, &v79);
  if (v77 || a6 == 139)
  {
    v59 = *(this + *(*this - 24) + 1904);
    llvm::ConstantInt::get();
    v60 = llvm::ValueAsMetadata::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v60);
    if (a6 == 139)
    {
      v62 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
      v63 = *(*(this + *(*this - 24) + 2168) + 920);
      v64 = *v63;
      if (v62 == 7)
      {
        (*(v64 + 440))(v63, 1, v61);
      }

      else
      {
        (*(v64 + 24))(v63, 1, v61);
      }

      v65 = *(this + *(*this - 24) + 1904);
      llvm::ConstantInt::get();
      v66 = llvm::ValueAsMetadata::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v66);
    }
  }

  v67 = this + *(*this - 24);
  v68 = *(v67 + 268);
  v69 = *(v67 + 270);
  Impl = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v68, Impl);
  if (v39)
  {
    v71 = this + *(*this - 24);
    v72 = *(v71 + 269);
    v73 = *(v71 + 270);
    v74 = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v72, v74);
  }

  if (v79 != &v81)
  {
    free(v79);
  }

LABEL_74:
  v75 = *MEMORY[0x277D85DE8];
  return v30;
}

void _AGCBindingInfo::_AGCBindingInfo(_AGCBindingInfo *this, int a2, int a3)
{
  v3 = a2 & 0xFFFFF;
  v4 = 0x100000;
  switch(a3)
  {
    case -13:
      v4 = 12582912;
      break;
    case -12:
      v4 = 11534336;
      break;
    case -11:
      v4 = 10485760;
      break;
    case -10:
      v4 = 9437184;
      break;
    case -9:
      v4 = 0x800000;
      break;
    case -8:
      v4 = 7340032;
      break;
    case -7:
      v4 = 6291456;
      break;
    case -6:
      v4 = 5242880;
      break;
    case -5:
      v4 = 0x400000;
      break;
    case -4:
      v4 = 3145728;
      break;
    case -3:
      v4 = 0x200000;
      break;
    case -2:
      break;
    case -1:
      v4 = 0;
      break;
    default:
      v3 |= 0x80000000;
      v4 = (a3 & 0x7FF) << 20;
      break;
  }

  *this = v3 | v4;
}

unint64_t llvm::SmallVectorTemplateCommon<AGCLLVMUserObject::BufferBinding,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + 40 * v2 <= a2)
    {
      llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::grow();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::grow();
  }

  return a2;
}

uint64_t AGCLLVMUserObject::createGlobalSCSLayoutGlobal(AGCLLVMUserObject *this)
{
  result = *(this + 348);
  if (!result)
  {
    v3 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
    if (v3 <= 0x1B)
    {
      if (((1 << v3) & 0x400198) != 0)
      {
        v4 = *(*(this + *(*this - 24) + 2168) + 920);
        v5 = (*(*v4 + 1032))(v4);
        v6 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 760))();
LABEL_5:
        _AGCBindingInfo::_AGCBindingInfo(v13, v5, v6);
        v7 = v13[0];
LABEL_6:
        v8 = llvm::ArrayType::get(*(this + *(*this - 24) + 1904), 2);
        v13[0] = "agc.global_scs_layout";
        v14 = 259;
        GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v8, v13, v7, 0, 0, 0);
        llvm::GlobalValue::setLinkage(GlobalBufferBinding, 10);
        *(GlobalBufferBinding + 80) &= ~1u;
        llvm::Constant::getNullValue(v8, v10);
        llvm::GlobalVariable::setInitializer();
        llvm::ValueHandleBase::operator=((this + 2768), GlobalBufferBinding);
        return *(this + 348);
      }

      if (v3 == 27)
      {
        v11 = *(*(this + *(*this - 24) + 2168) + 920);
        v7 = (*(*v11 + 896))(v11) & 0xFFFFF | 0x900000;
        goto LABEL_6;
      }
    }

    v12 = *(*(this + *(*this - 24) + 2168) + 920);
    v5 = (*(*v12 + 1032))(v12);
    v6 = (*(**(*(this + *(*this - 24) + 2168) + 920) + 408))();
    goto LABEL_5;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<AGCLLVMUserObject::BufferBinding,false>::destroy_range(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 16);
      if (v4 != -8192 && v4 != -4096 && v4 != 0)
      {
        result = llvm::ValueHandleBase::RemoveFromUseList((v2 - 32));
      }

      v2 -= 40;
    }

    while (v2 != v3);
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<GenericVarying,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = llvm::SmallVectorTemplateCommon<GenericVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<GenericVarying,false>>(a1, a2);
  v4 = v3;
  v5 = *a1 + (*(a1 + 8) << 6);
  v6 = *v3;
  *(v5 + 16) = *(v3 + 16);
  *v5 = v6;
  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v5 + 24), *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v7 = *(v3 + 24);
    *(v5 + 40) = *(v3 + 40);
    *(v5 + 24) = v7;
  }

  result = v4[3];
  *(v5 + 48) = result;
  ++*(a1 + 8);
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<GenericVarying,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<GenericVarying,false>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + (v2 << 6) <= a2)
    {
      llvm::SmallVectorTemplateBase<GenericVarying,false>::grow();
    }

    v5 = a2 - *a1;
    llvm::SmallVectorTemplateBase<GenericVarying,false>::grow();
  }

  return a2;
}

uint64_t AGCLLVMUserShader::replaceInputArgument(unsigned __int8 ***this, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  if (!a4)
  {
    String = "air.byval";
LABEL_17:
    if (*String != 0x617679622E726961 || String[8] != 108)
    {
      goto LABEL_102;
    }

    v13 = *a2;
    v89 = "agc.byval.";
    *&v91[4] = a3;
    LOWORD(v93) = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v13, &v89, a3, 0, 5, 0);
    v15 = &(*(*this - 3))[this];
    LOWORD(v93) = 257;
    AGCLLVMBuilder::CreateLoad((v15 + 1704), GlobalBufferBinding, &v89);
    goto LABEL_155;
  }

  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  if (v9 > 21)
  {
    if (v9 > 30)
    {
      switch(v9)
      {
        case 31:
          if (*String != 0x65746E692E726961 || *(String + 1) != 0x6E6F697463657372 || *(String + 2) != 0x6F6974636E75665FLL || *(String + 23) != 0x656C6261745F6E6FLL)
          {
            goto LABEL_102;
          }

          goto LABEL_144;
        case 35:
          v16 = "air.instance_acceleration_structure";
          v17 = 35;
          break;
        case 36:
          v16 = "air.primitive_acceleration_structure";
          v17 = 36;
          break;
        default:
          goto LABEL_102;
      }

      if (!memcmp(String, v16, v17))
      {
        goto LABEL_144;
      }

LABEL_102:
      v48 = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
      v50 = v48;
      v51 = v49;
      v88[0] = v48;
      v88[1] = v49;
      if (v49 == 19)
      {
        if (*v48 != 0x616665642E726961 || v48[1] != 0x66696E755F746C75 || *(v48 + 11) != 0x6D726F66696E755FLL)
        {
          return 0;
        }
      }

      else
      {
        if (v49 != 11)
        {
          return 0;
        }

        if (*v48 != 0x66696E752E726961 || *(v48 + 3) != 0x6D726F66696E752ELL)
        {
          return 0;
        }
      }

      v87 = 0;
      v55 = *(a4 + 8);
      if (v55 >= 3)
      {
        v56 = 2;
        do
        {
          v57 = v56 + 1;
          v58 = *(a4 - 8 * *(a4 + 8) + 8 * v56);
          if (v58 && !*v58)
          {
            v59 = llvm::MDString::getString(v58);
            if (v60 == 11)
            {
              if (*v59 != 0x646E69622E726961 || *(v59 + 3) != 0x676E69646E69622ELL)
              {
                goto LABEL_122;
              }

              LODWORD(v89) = v56 + 1;
              if (!parseMDInt(0, a4, &v89, &v87))
              {
                return 0;
              }
            }

            else
            {
              if (v60 != 15)
              {
                goto LABEL_122;
              }

              if (*v59 != 0x666675622E726961 || *(v59 + 7) != 0x657A69735F726566)
              {
                goto LABEL_122;
              }

              LODWORD(v89) = v56 + 1;
              if ((parseMDInt(0, a4, &v89, &v87 + 1) & 1) == 0)
              {
                return 0;
              }
            }

            v57 = v56 + 2;
          }

LABEL_122:
          v56 = v57;
        }

        while (v57 < v55);
      }

      if (v51 == 11)
      {
        v63 = 0x6169722E756E6966;
        v64 = bswap64(*v50);
        if (v64 == 0x6169722E756E6966 && (v63 = 0x2E756E69666F726DLL, v64 = bswap64(*(v50 + 3)), v64 == 0x2E756E69666F726DLL))
        {
          v65 = 0;
        }

        else if (v64 < v63)
        {
          v65 = -1;
        }

        else
        {
          v65 = 1;
        }

        if (v65)
        {
          v66 = 4;
        }

        else
        {
          v66 = 5;
        }
      }

      else
      {
        v66 = 4;
      }

      v67 = *a2;
      v85[0] = "agc.buffer_pointers";
      v85[2] = ".";
      v86 = 771;
      llvm::StringRef::str(__p, v88);
      v89 = v85;
      *&v91[4] = __p;
      LOWORD(v93) = 1026;
      v68 = AGCLLVMUserObject::createGlobalBufferBinding(this, v67, &v89, v87, SHIDWORD(v87), v66, 0);
      if (v84 < 0)
      {
        operator delete(__p[0]);
      }

      v69 = &(*(*this - 3))[this];
      LOWORD(v93) = 257;
      if (!AGCLLVMBuilder::CreateLoad((v69 + 1704), v68, &v89))
      {
        return 0;
      }

      goto LABEL_155;
    }

    if (v9 != 22)
    {
      if (v9 != 26)
      {
        goto LABEL_102;
      }

      v20 = *String == 0x697369762E726961 && *(String + 1) == 0x636E75665F656C62;
      v21 = v20 && *(String + 2) == 0x6261745F6E6F6974;
      if (!v21 || *(String + 12) != 25964)
      {
        goto LABEL_102;
      }

      goto LABEL_144;
    }

    if (*String != 0x63616E692E726961 || *(String + 1) != 0x656C626973736563 || *(String + 14) != 0x7475706E695F656CLL)
    {
      goto LABEL_102;
    }

    v25 = *a2;
    llvm::UndefValue::get();
LABEL_155:
    llvm::Value::replaceAllUsesWith();
    return 1;
  }

  if (v9 <= 10)
  {
    if (v9 != 9)
    {
      if (v9 == 10)
      {
        if (*String != 0x666675622E726961 || *(String + 4) != 29285)
        {
          v19 = *String == 0x736E65742E726961 && *(String + 4) == 29295;
          if (v19 && AGCLLVMUserObject::replaceTensorInput<llvm::Argument>(this, a2, a3, a4))
          {
            return 1;
          }

          goto LABEL_102;
        }

        goto LABEL_144;
      }

      goto LABEL_102;
    }

    goto LABEL_17;
  }

  if (v9 == 11)
  {
    if (*String == 0x747865742E726961 && *(String + 3) == 0x657275747865742ELL)
    {
      if (!a2[1])
      {
        return 1;
      }

      LOBYTE(v88[0]) = 0;
      BYTE4(v87) = 0;
      LODWORD(v85[0]) = 0;
      LODWORD(__p[0]) = 0;
      LODWORD(v89) = 0;
      *v90 = 0;
      *v91 = 0xFFFFFFFFLL;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      if (parseMDTexture(a4, v85, __p, v90, v88, &v90[1], &v87 + 4, v91))
      {
        v71 = *a2;
        if (llvm::Type::isOpaquePointerTy(*a2))
        {
          v72 = *&(*(*this - 3))[this + 1776];
          v93 = llvm::StructType::create();
        }

        else
        {
          if (LOBYTE(v88[0]) == 1)
          {
            v73 = **(v71 + 16);
            if (*(v73 + 8) == 16)
            {
              v73 = **(v73 + 16);
            }

            v71 = **(v73 + 16);
          }

          v74 = *(v71 + 8);
          if ((v74 & 0x1FF) == 0x110)
          {
            v71 = **(v71 + 16);
            LOBYTE(v74) = *(v71 + 8);
          }

          if (v74 == 15)
          {
            v75 = **(v71 + 16);
            if ((*(v75 + 8) & 0x1FF) == 0x110)
            {
              v71 = **(v75 + 16);
            }
          }

          v93 = **(v71 + 16);
        }

        v76 = ((*this)[37])(this, LODWORD(v85[0]));
        v77 = __p[0];
        *(this + 879) += LODWORD(__p[0]);
        *(this + 3760) |= BYTE4(v87);
        LODWORD(v89) = v76 & 0xFFFFF;
        HIDWORD(v89) = v77;
        std::__tree<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::__emplace_unique_key_args<AGCLLVMUserObject::Texture,AGCLLVMUserObject::Texture const&>((this + 125), v76 & 0xFFFFF);
        v78 = v88[0];
        if ((v90[0] & 2) != 0)
        {
          if (v88[0])
          {
            v79 = v77 + v76;
            if (v77 + v76 >= 0x40)
            {
              v79 = 64;
            }

            v80 = v79 - v76;
            if (v76 >= 0x40)
            {
              v80 = 0;
            }

            this[490] = ((~(-1 << v80) << v76) | this[490]);
            if (v76 <= 0x40)
            {
              v81 = 64;
            }

            else
            {
              v81 = v76;
            }

            this[491] = ((~(-1 << (v77 - v80)) << v81) | this[491]);
            v78 = 1;
          }

          else
          {
            v78 = 0;
            if (v76 > 0x3F)
            {
              this[491] = (this[491] | (1 << v76));
            }

            else
            {
              this[490] = (this[490] | (1 << v76));
            }
          }
        }

        if (AGCLLVMUserObject::replaceTextureOrSamplerArgument(this, a2, v76, v77, v78 & 1, this + 387))
        {
          return 1;
        }
      }
    }

    else
    {
      v27 = *String == 0x706D61732E726961 && *(String + 3) == 0x72656C706D61732ELL;
      if (v27 && (AGCLLVMUserObject::replaceSamplerInput<llvm::Argument>(this, a2, a4) & 1) != 0)
      {
        return 1;
      }
    }

    goto LABEL_102;
  }

  if (v9 != 17)
  {
    if (v9 != 19)
    {
      goto LABEL_102;
    }

    v10 = *String == 0x69646E692E726961 && *(String + 1) == 0x6675625F74636572;
    if (!v10 || *(String + 11) != 0x7265666675625F74)
    {
      goto LABEL_102;
    }

LABEL_144:
    AGCLLVMUserObject::replaceBufferInputArgument(this, a2, a3, a4, 0xFFFFFFFF);
    return 1;
  }

  if (*String != 0x666675622E726961 || *(String + 1) != 0x64697274735F7265 || String[16] != 101)
  {
    goto LABEL_102;
  }

  v33 = 0;
  LODWORD(v85[0]) = 0;
  v34 = *(a4 + 8);
  LODWORD(v89) = 2;
  if (v34 >= 3)
  {
    do
    {
      if (parseMDLocationIndex(a4, &v89, v85, __p))
      {
        break;
      }

      LODWORD(v89) = v89 + 1;
    }

    while (v89 < v34);
    v33 = v85[0];
  }

  v35 = 1;
  v36 = llvm::User::operator new(0x58);
  v37 = &(*(*this - 3))[this];
  v38 = *(v37 + 267);
  v39 = *(v37 + 238);
  v89 = "agc.dynamic_stride.";
  *&v91[4] = v33;
  LOWORD(v93) = 2051;
  v82 = *(*(v37 + 271) + 972) | 0x100000000;
  v40 = llvm::GlobalVariable::GlobalVariable();
  *(v40 + 80) |= 1u;
  llvm::GlobalObject::setSection();
  AGCTargetOS::AGCTargetOS(&v89, (this + 22));
  v41 = &(*(*this - 3))[this];
  v42 = *(v41 + 268);
  v43 = AGCLLVMBuilder::buildGlobalMetadata((v41 + 1704), v36);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v42, v43);
  v44 = &(*(*this - 3))[this];
  LOWORD(v93) = 257;
  Load = AGCLLVMBuilder::CreateLoad((v44 + 1704), v36, &v89);
  v46 = &(*(*this - 3))[this];
  v47 = *(v46 + 239);
  LOWORD(v93) = 257;
  llvm::IRBuilderBase::CreateCast((v46 + 1712), 39, Load, v47, &v89);
  llvm::Value::replaceAllUsesWith();
  return v35;
}

void AGCLLVMAGPFragmentShader::getFragmentVaryings(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v41[3] = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  AGCLLVMAGPFragmentShader::agpParseStageIOMetadata(a1, a3, &v36, &v38 + 1, &v38, &v35 + 1, &v35, &v34);
  v7 = a2;
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v7 = **(a2 + 16);
  }

  if (v35 == 2 && v7 == *(a1 + *(*a1 - 24) + 1888))
  {
    v9 = 5;
  }

  else
  {
    v9 = v35;
  }

  LODWORD(v35) = v9;
  if ((HIDWORD(v38) & 0xFFFFFFFD) == 1)
  {
    goto LABEL_21;
  }

  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    goto LABEL_21;
  }

  if (Key == *(a1 + 6488))
  {
    goto LABEL_21;
  }

  v12 = *(*(*(a1 + 6480) + 8 * Key) + 8);
  v13 = v12 >> 4;
  if (!(v12 >> 4))
  {
    goto LABEL_21;
  }

  v11.i32[0] = v12 >> 4;
  v14 = vcnt_s8(v11);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.i32[0] >= HIDWORD(v35))
  {
    v38 = 0x100000003;
LABEL_21:
    v13 = 0;
    *a4 = a4 + 2;
    a4[1] = 0x400000000;
    goto LABEL_22;
  }

  *a4 = a4 + 2;
  a4[1] = 0x400000000;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
    goto LABEL_27;
  }

  Value = AGCEnv::getValue("AGC_DISABLE_VARYING_SPLITTING", v6);
  if (!Value || *Value == 48 || !atoi(Value))
  {
    goto LABEL_27;
  }

LABEL_22:
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v16 = AGCEnv::getValue("AGC_FORCE_VARYING_SPLITTING", v6);
    if (v16)
    {
      if (*v16 != 48 && atoi(v16))
      {
LABEL_27:
        v30 = v13;
        if ((*(a2 + 8) & 0xFE) == 0x12)
        {
          v31 = **(a2 + 16);
        }

        else
        {
          v31 = a2;
        }

        v18 = HIDWORD(v35);
        if (HIDWORD(v35))
        {
          v19 = 0;
          v20 = v36;
          v21 = v37;
          v23 = v38;
          v22 = HIDWORD(v38);
          v24 = v35;
          v25 = v34 & 1;
          do
          {
            GenericVarying::getComponentSemantic(&__p, v20, v21, v19);
            if ((v30 & (1 << v19)) != 0)
            {
              v26 = 1;
            }

            else
            {
              v26 = v22;
            }

            if ((v30 & (1 << v19)) != 0)
            {
              v27 = 3;
            }

            else
            {
              v27 = v23;
            }

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
              size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            AGCLLVMAGPFragmentShader::getFragmentVarying(v39, a1, v31, p_p, size, v26, v27, 1, v24, v25);
            llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::push_back(a4, v39);
            if (v40 != v41)
            {
              free(v40);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            ++v19;
          }

          while (v18 != v19);
        }

        goto LABEL_32;
      }
    }
  }

  AGCLLVMAGPFragmentShader::getFragmentVarying(v39, a1, a2, v36, v37, SHIDWORD(v38), v38, HIDWORD(v35), v35, v34);
  llvm::SmallVectorTemplateBase<AGCLLVMUserFragmentShader::FragmentVarying,false>::push_back(a4, v39);
  if (v40 != v41)
  {
    free(v40);
  }

LABEL_32:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMUserObject::createAccelerationStructureHeapGlobal(AGCLLVMUserObject *this)
{
  v2 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
  if ((v2 - 7) >= 2)
  {
    if (v2 == 27)
    {
      v5 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v5 + 840))(v5);
      goto LABEL_7;
    }

    if (v2 != 22)
    {
      v6 = *(*(this + *(*this - 24) + 2168) + 920);
      v4 = (*(*v6 + 336))(v6);
      goto LABEL_7;
    }
  }

  v3 = *(*(this + *(*this - 24) + 2168) + 920);
  v4 = (*(*v3 + 688))(v3);
LABEL_7:
  v7 = v4;
  v8 = this + *(*this - 24);
  if (*(*(v8 + 271) + 1908) && (v8[4577] & 1) == 0)
  {
    v9 = this + 2760;
    if (!*(this + 345))
    {
      v16 = *(v8 + 236);
      v17 = llvm::PointerType::get();
      v19[0] = "agc.bvh_state_words_heap.";
      v20 = v7;
      v21 = 2051;
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v17, v19, v7, 0, 5, 1);
      v14 = (this + 2744);
      goto LABEL_13;
    }
  }

  else
  {
    v9 = this + 2760;
    if (!*(this + 345))
    {
      v10 = *(v8 + 236);
      llvm::PointerType::get();
      v11 = llvm::PointerType::get();
      v19[0] = "agc.sw_ads_heap.";
      v20 = v7;
      v21 = 2051;
      v12 = AGCLLVMUserObject::createGlobalBufferBinding(this, v11, v19, v7, 0, 5, 0);
      llvm::GlobalValue::setLinkage(v12, 10);
      *(v12 + 80) &= ~1u;
      llvm::Constant::getNullValue(*(v12 + 3), v13);
      llvm::GlobalVariable::setInitializer();
      v14 = (this + 2744);
      GlobalBufferBinding = v12;
LABEL_13:
      llvm::ValueHandleBase::operator=(v14, GlobalBufferBinding);
    }
  }

  return *v9;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::replacePayloadSupportFunctions(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 432);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v7 = Function;
    v8 = *(Function + 8);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 8);
        v10 = *(v8 + 24);
        v11 = *(v4 + 2872);
        v12 = *(v4 + 184);
        llvm::ConstantInt::get();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v10);
        v8 = v9;
      }

      while (v9);
    }

    llvm::Function::eraseFromParent(v7);
  }

  v13 = *(v4 + 432);
  v14 = llvm::Module::getFunction();
  v40 = v4;
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + 8);
    if (v16)
    {
      do
      {
        v17 = (*(*v4 + 1456))(v4, 1);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(v4, 6, 1uLL, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(v40, v17, 1uLL, 0);
        v18 = *(v16 + 8);
        v19 = *(v16 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v40 + 8), v19);
        v20 = *(v19 - 4 * (*(v19 + 5) & 0x7FFFFFF));
        v21 = *(v40 + 200);
        llvm::ConstantInt::get();
        v22 = *(v40 + 200);
        v4 = v40;
        llvm::ConstantInt::get();
        LOWORD(v43) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v19);
        v16 = v18;
      }

      while (v18);
    }

    llvm::Function::eraseFromParent(v15);
  }

  v23 = *(v4 + 432);
  v24 = llvm::Module::getFunction();
  if (v24)
  {
    v25 = v24;
    v26 = *(v24 + 8);
    if (v26)
    {
      do
      {
        v27 = (*(*v4 + 1456))(v4, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(v4, 5, 0, 0);
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::computeDriverPayloadSize(v40, v27, 0, 0);
        v28 = *(v26 + 8);
        v29 = *(v26 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v40 + 8), v29);
        v30 = *(v29 - 4 * (*(v29 + 5) & 0x7FFFFFF));
        v31 = *(v40 + 200);
        llvm::ConstantInt::get();
        v32 = *(v40 + 200);
        v4 = v40;
        llvm::ConstantInt::get();
        LOWORD(v43) = 257;
        llvm::IRBuilderBase::CreateSelect();
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v29);
        v26 = v28;
      }

      while (v28);
    }

    llvm::Function::eraseFromParent(v25);
  }

  v33 = *(v4 + 432);
  v34 = llvm::Module::getFunction();
  if (v34)
  {
    v35 = *(v34 + 8);
    if (v35)
    {
      do
      {
        v36 = *(v35 + 8);
        v37 = *(v35 + 24);
        llvm::IRBuilderBase::SetInsertPoint((v4 + 8), v37);
        v38 = *(v37 - 4 * (*(v37 + 5) & 0x7FFFFFF));
        v39 = *(v4 + 144);
        v41[0] = a3;
        v41[1] = v38;
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(v4, "llvm.agx3.update.bvh", 20, v39, v41, 2uLL);
        llvm::Instruction::eraseFromParent(v37);
        v35 = v36;
      }

      while (v36);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(v41, "agc.query.allocate");
  LOBYTE(v42) = 1;
  std::string::basic_string[abi:nn200100]<0>(&v43, "agc.query.deallocate");
  LOBYTE(v44) = 0;
  operator new();
}

void *std::vector<std::tuple<llvm::StringRef,llvm::StringRef,BOOL>>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x666666666666667)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void *std::vector<std::tuple<llvm::StringRef,llvm::StringRef,unsigned int>>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x666666666666667)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<std::tuple<std::string,BOOL>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

llvm::Function *AGCLLVMGen5TargetLowerer::replaceAccelerationStructureSupportFunctions(AGCLLVMGen5TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 54);
  result = llvm::Module::getFunction();
  if (result)
  {
    v25 = result;
    v26 = a2;
    v6 = *(result + 1);
    if (v6)
    {
      do
      {
        v7 = *(v6 + 8);
        v8 = *(v6 + 24);
        llvm::IRBuilderBase::SetInsertPoint((this + 8), v8);
        v9 = *(v8 - 4 * (*(v8 + 5) & 0x7FFFFFF));
        v10 = *(this + 26);
        v33[0] = "ads_heap_index";
        v34 = 259;
        Cast = llvm::IRBuilderBase::CreateCast(this + 8, 47, v9, v10, v33);
        v12 = *(this + 26);
        v13 = llvm::ConstantInt::get();
        v33[0] = "heap_offset";
        v34 = 259;
        Mul = llvm::IRBuilderBase::CreateMul((this + 8), Cast, v13, v33);
        v15 = *(this + 23);
        v16 = llvm::PointerType::get();
        v17 = *(this + 26);
        v18 = llvm::PointerType::get();
        v19 = *(this + 23);
        v34 = 257;
        Load = AGCLLVMBuilder::CreateLoad(this, v26, v33);
        v32 = 257;
        v21 = llvm::IRBuilderBase::CreateCast(this + 8, 49, Load, v16, v31);
        v30 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((this + 8), v19, v21, Mul, v29);
        v27 = "heap_ptr";
        v28 = 259;
        v23 = llvm::IRBuilderBase::CreateCast(this + 8, 49, GEP, v18, &v27);
        v24 = *(this + 26);
        v34 = 257;
        llvm::Type::isOpaquePointerTy(*v23);
        llvm::IRBuilderBase::CreateAlignedLoad(this + 1, v24, v23, 0, v33);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v8);
        v6 = v7;
      }

      while (v7);
    }

    return llvm::Function::eraseFromParent(v25);
  }

  return result;
}

uint64_t llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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

uint64_t AGCLLVMUserObject::needsDylibResources(AGCLLVMUserObject *this)
{
  v2 = (this + *(*this - 24));
  if (*(v2[271] + 1904) != 1 || (*(*v2 + 80))(v2) && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 1 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 2 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 3 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 4 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 5 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 6 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 7 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 8 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 27 && (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24)) != 9)
  {
    return 0;
  }

  if (*(this + 3856))
  {
    return 1;
  }

  v4 = *(*(this + *(*this - 24)) + 120);

  return v4();
}

uint64_t AGCLLVMAGPFragmentShaderGen3::replaceBuiltins(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v113 = *MEMORY[0x277D85DE8];
  result = AGCLLVMUserObject::replaceBuiltins(this);
  if (!result)
  {
    goto LABEL_129;
  }

  v82 = result;
  v3 = *(this + *(*this - 24) + 2136);
  AGCLLVMBuilder::AGCLLVMBuilder(&v103, *v3);
  v110 = this;
  v103 = &unk_282558548;
  v109[37] = v3;
  {
    AGCLLVMAGPFragmentShaderGen3::replaceTileFunctions(void)::workitem_functions[0] = "air.get_local_size.i32";
    dword_28117E2F8 = 1;
    qword_28117E300 = AGCLLVMAGPFragmentShaderGen3::buildPixelsPerTile;
    unk_28117E308 = 0;
    dword_28117E310 = 4;
    word_28117E314 = 0;
    qword_28117E318 = "air.get_local_size.i16";
    dword_28117E320 = 1;
    qword_28117E328 = AGCLLVMAGPFragmentShaderGen3::buildPixelsPerTile;
    unk_28117E330 = 0;
    dword_28117E338 = 4;
    word_28117E33C = 0;
    qword_28117E340 = "air.get_local_id.i32";
    dword_28117E348 = 1;
    qword_28117E350 = AGCLLVMAGPFragmentShader::buildPixelPositionInTile;
    unk_28117E358 = 0;
    dword_28117E360 = 4;
    word_28117E364 = 0;
    qword_28117E368 = "air.get_local_id.i16";
    dword_28117E370 = 1;
    qword_28117E378 = AGCLLVMAGPFragmentShader::buildPixelPositionInTile;
    unk_28117E380 = 0;
    dword_28117E388 = 4;
    word_28117E38C = 0;
    qword_28117E390 = "air.get_local_linear_id.i32";
    dword_28117E398 = 1;
    qword_28117E3A0 = AGCLLVMAGPFragmentShaderGen3::buildTileIndex;
    unk_28117E3A8 = 0;
    dword_28117E3B0 = 2;
    word_28117E3B4 = 0;
    qword_28117E3B8 = "air.get_local_linear_id.i16";
    dword_28117E3C0 = 1;
    qword_28117E3C8 = AGCLLVMAGPFragmentShaderGen3::buildTileIndex;
    unk_28117E3D0 = 0;
    dword_28117E3D8 = 2;
    word_28117E3DC = 0;
    qword_28117E3E0 = "air.get_thread_index_in_simdgroup.i32";
    dword_28117E3E8 = 1;
    qword_28117E3F0 = AGCLLVMAGPFragmentShaderGen3::buildThreadIndexInSimdGroup;
    unk_28117E3F8 = 0;
    dword_28117E400 = 2;
    word_28117E404 = 0;
    qword_28117E408 = "air.get_thread_index_in_simdgroup.i16";
    dword_28117E410 = 1;
    qword_28117E418 = AGCLLVMAGPFragmentShaderGen3::buildThreadIndexInSimdGroup;
    unk_28117E420 = 0;
    dword_28117E428 = 2;
    word_28117E42C = 0;
    qword_28117E430 = "air.get_simdgroup_index_in_threadgroup.i32";
    dword_28117E438 = 1;
    qword_28117E440 = AGCLLVMAGPFragmentShaderGen3::buildSimdGroupIndexInThreadgroup;
    unk_28117E448 = 0;
    dword_28117E450 = 2;
    word_28117E454 = 0;
    qword_28117E458 = "air.get_simdgroup_index_in_threadgroup.i16";
    dword_28117E460 = 1;
    qword_28117E468 = AGCLLVMAGPFragmentShaderGen3::buildSimdGroupIndexInThreadgroup;
    unk_28117E470 = 0;
    dword_28117E478 = 2;
    word_28117E47C = 0;
  }

  for (i = 0; i != 10; ++i)
  {
    v5 = &AGCLLVMAGPFragmentShaderGen3::replaceTileFunctions(void)::workitem_functions[5 * i];
    v90 = v5;
    if (*v5)
    {
      v6 = strlen(*v5);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v8 = *(v90 + 8);
      v85 = Function;
      if (v8 == 12)
      {
        for (j = *(Function + 8); j; v106 = 0uLL)
        {
          v12 = *(j + 24);
          j = *(j + 8);
          llvm::IRBuilderBase::SetInsertPoint(v104, v12);
          v13 = v110 + *(*v110 - 24);
          v100 = v106;
          llvm::IRBuilderBase::getCurrentDebugLocation(&v101, v104);
          v102 = v107;
          AGCLLVMBuilder::InsertPoint::restoreIP(&v100, (v13 + 1712));
          if (v101)
          {
            llvm::MetadataTracking::untrack();
          }

          v14 = v90[2];
          v15 = v90[3];
          v16 = (v110 + (v15 >> 1));
          if (v15)
          {
            v14 = *(*v16 + v14);
          }

          (v14)(v16, v12);
        }

        goto LABEL_124;
      }

      if (v8 == 11)
      {
        v9 = v90[2];
        if (v9)
        {
          v10 = strlen(v90[2]);
          *&v111[0] = &v111[1] + 8;
          *(v111 + 8) = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(v111, v9, &v9[v10]);
        }

        else
        {
          *&v111[1] = 64;
          v111[0] = &v111[1] + 8;
        }

        llvm::SmallVectorImpl<char>::append<char const*,void>(v111, ".", "");
        if (*&v111[1] < *(&v111[0] + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v80 = *(v85 + 3);
        llvm::Module::getOrInsertFunction();
        llvm::Value::replaceAllUsesWith();
        if (*&v111[0] != (&v111[1] + 8))
        {
          free(*&v111[0]);
        }

        goto LABEL_124;
      }

      v84 = i;
      v17 = **(*(Function + 24) + 16);
      v18 = ((*(v17 + 8) & 0xFE) == 18) & *(v90 + 37);
      if (v18 == 1)
      {
        v19 = *(v17 + 32);
      }

      else
      {
        v19 = 1;
      }

      v88 = v19;
      v83 = v107;
      v20 = *(Function + 8);
      if (!v20)
      {
LABEL_118:
        v107 = v83;
        i = v84;
LABEL_124:
        llvm::Function::eraseFromParent(v85);
        continue;
      }

      v86 = **(*(Function + 24) + 16);
      while (1)
      {
        v21 = *(v20 + 24);
        v87 = *(v20 + 8);
        v22 = *(v90 + 2);
        if (v22 == 1)
        {
          v23 = 0;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_28;
          }

          v23 = 121;
        }

        v107 = v23;
LABEL_28:
        llvm::IRBuilderBase::SetInsertPoint(v104, v21);
        v24 = llvm::UndefValue::get();
        if (v88)
        {
          for (k = 0; k != v88; ++k)
          {
            v89 = v24;
            v112 = 0;
            memset(v111, 0, sizeof(v111));
            v26 = llvm::CallBase::arg_end(v21) - v21 + 32 * (*(v21 + 5) & 0x7FFFFFF);
            if ((v26 & 0x1FFFFFFFE0) != 0)
            {
              v27 = (v26 >> 5);
              v28 = v111;
              v29 = v21;
              do
              {
                v30 = (v29 - 32 * (*(v21 + 5) & 0x7FFFFFF));
                v31 = *v30;
                *v28 = *v30;
                if (v18 && (*(*v31 + 8) & 0xFE) == 0x12)
                {
                  v99 = 257;
                  v32 = llvm::ConstantInt::get();
                  *v28 = llvm::IRBuilderBase::CreateExtractElement(v104, v31, v32, &PrimitiveSizeInBits);
                }

                ++v28;
                v29 = (v29 + 32);
                --v27;
              }

              while (v27);
            }

            if (*(v90 + 36))
            {
              v33 = **&v111[0];
              if ((*(**&v111[0] + 8) & 0xFE) == 0x12)
              {
                v33 = **(v33 + 2);
              }

              PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v33);
              v98 = v34;
              if (llvm::TypeSize::operator unsigned long long() == 32)
              {
                v35 = 0;
              }

              else
              {
                v49 = v109[4];
                if ((*(**&v111[0] + 8) & 0xFE) == 0x12)
                {
                  v50 = *(**&v111[0] + 32);
                  v49 = llvm::FixedVectorType::get();
                }

                if ((v26 & 0x1FFFFFFFE0) != 0)
                {
                  v51 = (v26 >> 5);
                  v52 = v111;
                  do
                  {
                    v53 = *v52;
                    v99 = 257;
                    *v52++ = llvm::IRBuilderBase::CreateFPExt(v104, v53, v49, &PrimitiveSizeInBits);
                    --v51;
                  }

                  while (v51);
                  v35 = 1;
                }

                else
                {
                  v35 = 1;
                }
              }
            }

            else
            {
              v35 = 0;
            }

            if (llvm::FPMathOperator::classof(v21))
            {
              FastMathFlags = llvm::Instruction::getFastMathFlags(v21);
            }

            else
            {
              FastMathFlags = 0;
            }

            v37 = v110 + *(*v110 - 24);
            v94 = v106;
            llvm::IRBuilderBase::getCurrentDebugLocation(&v95, v104);
            v96 = v107;
            AGCLLVMBuilder::InsertPoint::restoreIP(&v94, (v37 + 1712));
            if (v95)
            {
              llvm::MetadataTracking::untrack();
            }

            FPTrunc = 0;
            v39 = *(v90 + 8);
            if (v39 > 5)
            {
              if (v39 <= 7)
              {
                if (v39 == 6)
                {
                  v58 = v90[2];
                  v67 = v90[3];
                  v61 = *(&v111[0] + 1);
                  v60 = *&v111[0];
                  v63 = (v110 + (v67 >> 1));
                  if (v67)
                  {
                    v58 = *(*v63 + v58);
                  }

                  v62 = FastMathFlags;
                }

                else
                {
                  v58 = v90[2];
                  v59 = v90[3];
                  v61 = *(&v111[0] + 1);
                  v60 = *&v111[0];
                  v62 = *&v111[1];
                  v63 = (v110 + (v59 >> 1));
                  if (v59)
                  {
                    v69 = (*(*v63 + v58))(v63, *&v111[0], *(&v111[0] + 1), *&v111[1]);
                    goto LABEL_104;
                  }
                }

LABEL_103:
                v69 = (v58)(v63, v60, v61, v62);
                goto LABEL_104;
              }

              switch(v39)
              {
                case 8:
                  v45 = v90[2];
                  v70 = v90[3];
                  v71 = *(&v111[0] + 1);
                  v47 = *&v111[0];
                  v72 = *&v111[1];
                  v48 = (v110 + (v70 >> 1));
                  if (v70)
                  {
                    v45 = *(*v48 + v45);
                  }

                  v76 = FastMathFlags;
                  goto LABEL_99;
                case 9:
                  v58 = v90[2];
                  v75 = v90[3];
                  v63 = (v110 + (v75 >> 1));
                  if (v75)
                  {
                    v58 = *(*v63 + v58);
                  }

                  v60 = v111;
                  v61 = &unk_20E75F419;
                  v62 = 0;
                  goto LABEL_103;
                case 10:
                  v45 = v90[2];
                  v46 = v90[3];
                  v47 = *v21;
                  v48 = (v110 + (v46 >> 1));
                  if (v46)
                  {
                    v45 = *(*v48 + v45);
                  }

                  v71 = v111;
                  v72 = &unk_20E75F419;
                  v76 = 0;
LABEL_99:
                  v69 = (v45)(v48, v47, v71, v72, v76);
                  goto LABEL_104;
              }
            }

            else
            {
              if (v39 > 2)
              {
                if (v39 != 3)
                {
                  if (v39 == 4)
                  {
                    v73 = (*&v111[0] + 24);
                    if (*(*&v111[0] + 32) >= 0x41u)
                    {
                      v73 = *v73;
                    }

                    v43 = *v73;
                    v40 = v90[2];
                    v74 = v90[3];
                    v42 = *v21;
                    v44 = (v110 + (v74 >> 1));
                    if (v74)
                    {
                      v40 = *(*v44 + v40);
                    }
                  }

                  else
                  {
                    v40 = v90[2];
                    v41 = v90[3];
                    v43 = *(&v111[0] + 1);
                    v42 = *&v111[0];
                    v44 = (v110 + (v41 >> 1));
                    if (v41)
                    {
                      v40 = *(*v44 + v40);
                    }
                  }

                  v69 = (v40)(v44, v42, v43);
                  goto LABEL_104;
                }

                v54 = v90[2];
                v68 = v90[3];
                v56 = *&v111[0];
                v57 = (v110 + (v68 >> 1));
                if ((v68 & 1) == 0)
                {
                  goto LABEL_79;
                }

                goto LABEL_78;
              }

              if (v39 == 1)
              {
                v64 = v90[2];
                v65 = v90[3];
                v66 = (v110 + (v65 >> 1));
                if (v65)
                {
                  v64 = *(*v66 + v64);
                }

                v69 = (v64)(v66);
                goto LABEL_104;
              }

              if (v39 == 2)
              {
                v54 = v90[2];
                v55 = v90[3];
                v56 = *v21;
                v57 = (v110 + (v55 >> 1));
                if ((v55 & 1) == 0)
                {
LABEL_79:
                  v69 = (v54)(v57, v56);
LABEL_104:
                  FPTrunc = v69;
                  goto LABEL_105;
                }

LABEL_78:
                v54 = *(*v57 + v54);
                goto LABEL_79;
              }
            }

LABEL_105:
            v77 = v110 + *(*v110 - 24);
            v91 = *(v77 + 110);
            llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (v77 + 1712));
            v93 = *(v77 + 452);
            AGCLLVMBuilder::InsertPoint::restoreIP(&v91, v104);
            if (v92)
            {
              llvm::MetadataTracking::untrack();
            }

            if (v35)
            {
              v78 = *v21;
              if (v18 && (*(v78 + 8) & 0xFE) == 0x12)
              {
                v78 = **(v78 + 16);
              }

              v99 = 257;
              FPTrunc = llvm::IRBuilderBase::CreateFPTrunc(v104, FPTrunc, v78, &PrimitiveSizeInBits);
            }

            if (v18)
            {
              v99 = 257;
              v79 = llvm::ConstantInt::get();
              FPTrunc = llvm::IRBuilderBase::CreateInsertElement(v104, v89, FPTrunc, v79, &PrimitiveSizeInBits);
            }

            v24 = FPTrunc;
          }
        }

        if (*v21 != v109[1])
        {
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v21);
        v20 = v87;
        if (!v87)
        {
          goto LABEL_118;
        }
      }
    }
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v109);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v108);
  if (v104[0] != &v105)
  {
    free(v104[0]);
  }

  result = v82;
LABEL_129:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::replaceBuiltins(AGCLLVMUserObject *this)
{
  v1 = (*(**(this + *(*this - 24) + 2168) + 784))(*(this + *(*this - 24) + 2168), this, *(this + *(*this - 24) + 2136));
  v2 = AGCLLVMAirBuiltins::replaceBuiltins(v1);
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  return v2;
}

uint64_t AGCLLVMGen5TargetLowerer::createBuiltins(AGCLLVMGen5TargetLowerer *this, AGCLLVMUserObject *a2, llvm::Module *a3)
{
  result = 0;
  v5 = *(this + 493);
  if (v5 <= 21)
  {
    if (v5 > 18 || (v5 - 17) < 2)
    {
      operator new();
    }

    if (v5 != 14 && v5 != 16)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v5 > 0x26)
  {
    goto LABEL_6;
  }

  if (((1 << v5) & 0x4D00000000) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << v5) & 0xE000000) != 0)
  {
LABEL_16:
    operator new();
  }

  if (v5 == 31)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (v5 == 22)
  {
    v7 = *(this + 492);
    operator new();
  }

  if (v5 == 24)
  {
LABEL_8:
    operator new();
  }

  return result;
}

uint64_t AGCLLVMAirBuiltins::replaceBuiltins(AGCLLVMAirBuiltins *this)
{
  v2 = *(this + 54);
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
    if (AGCLLVMBuilder::findPrefix(Name, v8, v16, &v14, "air.", 4uLL) && llvm::GlobalValue::isDeclaration(v5))
    {
      v9 = *(this + 119);
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
      if (v12 != (**(this + 119) + 8 * *(*(this + 119) + 8)))
      {
        AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::doReplacement(this + 472, v5, *v12 + 8, v14, v15);
      }
    }
  }

  return *(this + 960);
}

uint64_t AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::doReplacement(uint64_t a1, llvm::Function *this, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v5 = a3;
  v6 = this;
  v110 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 24);
  if (v8 != 12)
  {
    if (v8 == 11)
    {
      v9 = *(a3 + 8);
      if (v9)
      {
        v10 = strlen(*(a3 + 8));
        *&v108[0] = &v108[1] + 8;
        *(v108 + 8) = xmmword_20E70C500;
        llvm::SmallVectorImpl<char>::append<char const*,void>(v108, v9, &v9[v10]);
      }

      else
      {
        *&v108[1] = 64;
        *&v108[0] = &v108[1] + 8;
        *(&v108[0] + 1) = 0;
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(v108, ".", "");
      llvm::SmallVectorImpl<char>::append<char const*,void>(v108, a4, &a4[a5]);
      v83 = *(v6 + 3);
      v84 = *(a1 + 432);
      llvm::Module::getOrInsertFunction();
      llvm::Value::replaceAllUsesWith();
      if (*&v108[0] != (&v108[1] + 8))
      {
        free(*&v108[0]);
      }

      goto LABEL_115;
    }

    v17 = **(*(this + 3) + 16);
    v18 = ((*(v17 + 8) & 0xFE) == 18) & *(a3 + 29);
    if (v18 == 1)
    {
      v19 = *(v17 + 32);
    }

    else
    {
      v19 = 1;
    }

    v90 = v19;
    v87 = *(a1 + 104);
    v20 = *(this + 1);
    if (!v20)
    {
LABEL_111:
      *(a1 + 104) = v87;
      v6 = this;
      goto LABEL_115;
    }

    v89 = **(*(this + 3) + 16);
    while (1)
    {
      v21 = *(v20 + 24);
      v22 = *(v20 + 8);
      if (*v5 == 1)
      {
        v23 = 0;
      }

      else
      {
        if (*v5 != 2)
        {
          goto LABEL_22;
        }

        v23 = 121;
      }

      *(a1 + 104) = v23;
LABEL_22:
      v91 = v22;
      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v21);
      v24 = llvm::UndefValue::get();
      if (v90)
      {
        for (i = 0; i != v90; ++i)
        {
          v95 = v24;
          v109 = 0;
          memset(v108, 0, sizeof(v108));
          v26 = llvm::CallBase::arg_end(v21) - v21 + 32 * (*(v21 + 5) & 0x7FFFFFF);
          if ((v26 & 0x1FFFFFFFE0) != 0)
          {
            v27 = (v26 >> 5);
            v28 = v108;
            v29 = v21;
            do
            {
              v30 = (v29 - 32 * (*(v21 + 5) & 0x7FFFFFF));
              v31 = *v30;
              *v28 = *v30;
              if (v18 && (*(*v31 + 8) & 0xFE) == 0x12)
              {
                v104 = 257;
                v32 = *(a1 + 200);
                v33 = llvm::ConstantInt::get();
                *v28 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v31, v33, &PrimitiveSizeInBits);
              }

              ++v28;
              v29 = (v29 + 32);
              --v27;
            }

            while (v27);
          }

          if (*(a3 + 28))
          {
            v34 = **&v108[0];
            if ((*(**&v108[0] + 8) & 0xFE) == 0x12)
            {
              v34 = **(v34 + 2);
            }

            PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(v34);
            v103 = v35;
            if (llvm::TypeSize::operator unsigned long long() == 32)
            {
              v36 = 0;
            }

            else
            {
              v37 = *(a1 + 168);
              if ((*(**&v108[0] + 8) & 0xFE) == 0x12)
              {
                v38 = *(**&v108[0] + 32);
                v39 = *(a1 + 168);
                v37 = llvm::FixedVectorType::get();
              }

              if ((v26 & 0x1FFFFFFFE0) != 0)
              {
                v40 = (v26 >> 5);
                v41 = v108;
                do
                {
                  v42 = *v41;
                  v104 = 257;
                  *v41++ = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v42, v37, &PrimitiveSizeInBits);
                  --v40;
                }

                while (v40);
              }

              v36 = 1;
            }
          }

          else
          {
            v36 = 0;
          }

          if (llvm::FPMathOperator::classof(v21))
          {
            FastMathFlags = llvm::Instruction::getFastMathFlags(v21);
          }

          else
          {
            FastMathFlags = 0;
          }

          v44 = *(a1 + 464);
          v99 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v100, (a1 + 8));
          v101 = *(a1 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v99, v44 + 8);
          if (v100)
          {
            llvm::MetadataTracking::untrack();
          }

          FPTrunc = 0;
          v46 = *(a3 + 24);
          if (v46 > 5)
          {
            if (v46 <= 7)
            {
              if (v46 == 6)
              {
                v60 = *(a3 + 8);
                v69 = *(a3 + 16);
                v63 = *(&v108[0] + 1);
                v62 = *&v108[0];
                v65 = (*(a1 + 464) + (v69 >> 1));
                if (v69)
                {
                  v60 = *(*v65 + v60);
                }

                v64 = FastMathFlags;
              }

              else
              {
                v60 = *(a3 + 8);
                v61 = *(a3 + 16);
                v63 = *(&v108[0] + 1);
                v62 = *&v108[0];
                v64 = *&v108[1];
                v65 = (*(a1 + 464) + (v61 >> 1));
                if (v61)
                {
                  v71 = (*(*v65 + v60))(v65, *&v108[0], *(&v108[0] + 1), *&v108[1]);
                  goto LABEL_97;
                }
              }

LABEL_96:
              v71 = v60(v65, v62, v63, v64);
              goto LABEL_97;
            }

            switch(v46)
            {
              case 8:
                v52 = *(a3 + 8);
                v72 = *(a3 + 16);
                v73 = *(&v108[0] + 1);
                v54 = *&v108[0];
                v74 = *&v108[1];
                v55 = (*(a1 + 464) + (v72 >> 1));
                if (v72)
                {
                  v52 = *(*v55 + v52);
                }

                v78 = FastMathFlags;
                goto LABEL_92;
              case 9:
                v60 = *(a3 + 8);
                v77 = *(a3 + 16);
                v65 = (*(a1 + 464) + (v77 >> 1));
                if (v77)
                {
                  v60 = *(*v65 + v60);
                }

                v62 = v108;
                v64 = a5;
                v63 = a4;
                goto LABEL_96;
              case 10:
                v52 = *(a3 + 8);
                v53 = *(a3 + 16);
                v54 = *v21;
                v55 = (*(a1 + 464) + (v53 >> 1));
                if (v53)
                {
                  v52 = *(*v55 + v52);
                }

                v73 = v108;
                v78 = a5;
                v74 = a4;
LABEL_92:
                v71 = v52(v55, v54, v73, v74, v78);
                goto LABEL_97;
            }
          }

          else
          {
            if (v46 > 2)
            {
              if (v46 != 3)
              {
                if (v46 == 4)
                {
                  v75 = (*&v108[0] + 24);
                  if (*(*&v108[0] + 32) >= 0x41u)
                  {
                    v75 = *v75;
                  }

                  v50 = *v75;
                  v47 = *(a3 + 8);
                  v76 = *(a3 + 16);
                  v49 = *v21;
                  v51 = (*(a1 + 464) + (v76 >> 1));
                  if (v76)
                  {
                    v47 = *(*v51 + v47);
                  }
                }

                else
                {
                  v47 = *(a3 + 8);
                  v48 = *(a3 + 16);
                  v50 = *(&v108[0] + 1);
                  v49 = *&v108[0];
                  v51 = (*(a1 + 464) + (v48 >> 1));
                  if (v48)
                  {
                    v47 = *(*v51 + v47);
                  }
                }

                v71 = v47(v51, v49, v50);
                goto LABEL_97;
              }

              v56 = *(a3 + 8);
              v70 = *(a3 + 16);
              v58 = *&v108[0];
              v59 = (*(a1 + 464) + (v70 >> 1));
              if ((v70 & 1) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }

            if (v46 == 1)
            {
              v66 = *(a3 + 8);
              v67 = *(a3 + 16);
              v68 = (*(a1 + 464) + (v67 >> 1));
              if (v67)
              {
                v66 = *(*v68 + v66);
              }

              v71 = v66(v68);
              goto LABEL_97;
            }

            if (v46 == 2)
            {
              v56 = *(a3 + 8);
              v57 = *(a3 + 16);
              v58 = *v21;
              v59 = (*(a1 + 464) + (v57 >> 1));
              if ((v57 & 1) == 0)
              {
LABEL_72:
                v71 = v56(v59, v58);
LABEL_97:
                FPTrunc = v71;
                goto LABEL_98;
              }

LABEL_71:
              v56 = *(*v59 + v56);
              goto LABEL_72;
            }
          }

LABEL_98:
          v79 = *(a1 + 464);
          v96 = *(v79 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v97, (v79 + 8));
          v98 = *(v79 + 104);
          AGCLLVMBuilder::InsertPoint::restoreIP(&v96, a1 + 8);
          if (v97)
          {
            llvm::MetadataTracking::untrack();
          }

          if (v36)
          {
            v80 = *v21;
            if (v18 && (*(v80 + 8) & 0xFE) == 0x12)
            {
              v80 = **(v80 + 16);
            }

            v104 = 257;
            FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 8), FPTrunc, v80, &PrimitiveSizeInBits);
          }

          if (v18)
          {
            v104 = 257;
            v81 = *(a1 + 200);
            v82 = llvm::ConstantInt::get();
            FPTrunc = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v95, FPTrunc, v82, &PrimitiveSizeInBits);
          }

          v24 = FPTrunc;
        }
      }

      if (*v21 != *(a1 + 144))
      {
        llvm::Value::replaceAllUsesWith();
      }

      llvm::Instruction::eraseFromParent(v21);
      v5 = a3;
      v20 = v91;
      if (!v91)
      {
        goto LABEL_111;
      }
    }
  }

  for (j = *(this + 1); j; *(a1 + 64) = 0)
  {
    v12 = *(j + 24);
    j = *(j + 8);
    llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v12);
    v13 = *(a1 + 464);
    v105 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v106, (a1 + 8));
    v107 = *(a1 + 104);
    AGCLLVMBuilder::InsertPoint::restoreIP(&v105, v13 + 8);
    if (v106)
    {
      llvm::MetadataTracking::untrack();
    }

    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    v16 = (*(a1 + 464) + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v16 + v14);
    }

    v14(v16, v12);
    *(a1 + 56) = 0;
  }

LABEL_115:
  result = llvm::Function::eraseFromParent(v6);
  v86 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMBuilder::unboxVector(AGCLLVMBuilder *this, llvm::Value *a2, llvm::Value **a3)
{
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    tryToUnboxVector(a2, a3, 0);
    v6 = *(*a2 + 32);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        if (!a3[i])
        {
          v12 = 257;
          v8 = *(this + 25);
          v9 = llvm::ConstantInt::get();
          a3[i] = llvm::IRBuilderBase::CreateExtractElement((this + 8), a2, v9, v11);
        }
      }
    }
  }

  else
  {
    *a3 = a2;
    return 1;
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltins::buildAnyOrAll(AGCLLVMAirBuiltins *this, llvm::Value *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  *v15 = 0u;
  v16 = 0u;
  v5 = AGCLLVMBuilder::unboxVector(this, a2, v15);
  v6 = v15[0];
  if (v5 >= 2)
  {
    v7 = v5 - 1;
    v8 = &v15[1];
    do
    {
      v9 = *v8;
      v14 = 257;
      if (a3)
      {
        v10 = llvm::IRBuilderBase::CreateOr((this + 8), v6, v9, v13);
      }

      else
      {
        v10 = llvm::IRBuilderBase::CreateAnd((this + 8), v6, v9, v13);
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

void tryToUnboxVector(llvm::Value *a1, llvm::Value **a2, unsigned int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  bzero(a2, 0x20uLL);
  if (a1 && a3 <= 5)
  {
    while (1)
    {
      v6 = *(a1 + 16);
      if (v6 != 90)
      {
        break;
      }

      v7 = *(a1 - 4);
      if (v7)
      {
        v8 = *(v7 + 16) == 16;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v9 = (v7 + 24);
        if (*(v7 + 32) >= 0x41u)
        {
          v9 = *v9;
        }

        v10 = *v9;
        if ((v10 & 0xFFFFFFFC) == 0)
        {
          v11 = v10 & 3;
          if (!a2[v11])
          {
            a2[v11] = *(a1 - 8);
          }
        }

        a1 = *(a1 - 12);
        if (a1)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    if (v6 == 91)
    {
      *v24 = 0u;
      v25 = 0u;
      memset(v23, 0, sizeof(v23));
      tryToUnboxVector(*(a1 - 8), v24, a3 + 1);
      tryToUnboxVector(*(a1 - 4), v23, a3 + 1);
      v12 = *(*a1 + 32);
      if (v12)
      {
        v13 = 0;
        v14 = *(a1 - 8);
        v15 = *v14;
        v16 = *(*v14 + 32);
        do
        {
          if ((v16 | v13) <= 3 && !a2[v13])
          {
            v17 = *(*(a1 + 8) + 4 * v13);
            if (v17 <= 3)
            {
              if (v17 == -1)
              {
                v19 = **(v15 + 16);
                v18 = llvm::UndefValue::get();
              }

              else if (v17 >= v16)
              {
                v18 = *(v23 + v17 - v16);
              }

              else
              {
                v18 = v24[v17];
              }

              a2[v13] = v18;
            }
          }

          ++v13;
        }

        while (v12 != v13);
      }
    }

    else if (v6 <= 0x14)
    {
      v20 = *(*a1 + 32);
      if ((v20 - 1) <= 3)
      {
        v21 = 0;
        do
        {
          if (!a2[v21])
          {
            a2[v21] = llvm::Constant::getAggregateElement(a1);
          }

          ++v21;
        }

        while (v20 != v21);
      }
    }
  }

LABEL_36:
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::IRBuilderBase::CreateOr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v6 = (*(**(this + 9) + 32))(*(this + 9));
  if (!v6)
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

uint64_t llvm::IRBuilderBase::CreateExtractElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 320))(*(this + 9), a2, a3);
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
    v6 = llvm::User::operator new(0x40);
    llvm::ExtractElementInst::ExtractElementInst();
    (*(**(this + 10) + 16))(*(this + 10), v6, a4, *(this + 6), *(this + 7));
    v8 = *(this + 2);
    if (v8)
    {
      v9 = *this;
      v10 = &v9[2 * v8];
      do
      {
        v11 = *v9;
        v12 = v9[1];
        llvm::Instruction::setMetadata();
        v9 += 2;
      }

      while (v9 != v10);
    }
  }

  return v6;
}

llvm::Value *AGCLLVMAirBuiltins::buildConvert(uint64_t a1, llvm::Value **a2)
{
  {
    AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map = 0;
    *&dword_28117E2D0 = 0;
    qword_28117E2D8 = 0x5000000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMAirBuiltins::ConversionFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map, &dword_20E4E1000);
  }

  v72.__r_.__value_.__r.__words[0] = a1;
  if (atomic_load_explicit(&AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::flag, memory_order_acquire) != -1)
  {
    v74.__r_.__value_.__r.__words[0] = &v72;
    v64.__r_.__value_.__r.__words[0] = &v74;
    std::__call_once(&AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::flag, &v64, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::$_0 &&>>);
  }

  Key = llvm::StringMapImpl::FindKey();
  v5 = Key;
  if (Key == -1)
  {
    v5 = dword_28117E2D0;
  }

  v6 = *(AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map + 8 * v5);
  v7 = *(v6 + 8);
  v8 = *a2;
  if (*(v6 + 9) != 1)
  {
    if (*(v6 + 8))
    {
      if (*(*(a1 + 464) + 1947) == 1 && *(v6 + 64) == 1)
      {
        *&v74.__r_.__value_.__l.__data_ = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v74.__r_.__value_.__r.__words[2], (a1 + 8));
        v14 = *(a1 + 104);
        v75 = v14;
        v15 = *(a1 + 464);
        v72 = v74;
        if (v74.__r_.__value_.__r.__words[2])
        {
          llvm::MetadataTracking::track();
          v14 = v75;
        }

        v73 = v14;
        if (*(v6 + 39) < 0)
        {
          std::string::__init_copy_ctor_external(&v71, *(v6 + 16), *(v6 + 24));
        }

        else
        {
          v71 = *(v6 + 16);
        }

        std::string::basic_string[abi:nn200100]<0>(__p, "f32");
        v21 = (*(*v15 + 768))(v15, &v72, v8, &v71, __p, 0, 0);
        v63.__r_.__value_.__r.__words[0] = v21;
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }

        if (v72.__r_.__value_.__r.__words[2])
        {
          llvm::MetadataTracking::untrack();
        }

        if (v74.__r_.__value_.__r.__words[2])
        {
          llvm::MetadataTracking::untrack();
        }
      }

      else
      {
        v21 = AGCLLVMBuilder::f32Extend(a1, v8, 1);
        v63.__r_.__value_.__r.__words[0] = v21;
      }

      v22 = 0;
      v23 = *(v6 + 67);
      if (v23 <= 0xF)
      {
        if (v23 == 1)
        {
          v52 = *(a1 + 168);
          llvm::ConstantFP::get();
          v76 = 257;
          return llvm::IRBuilderBase::CreateFCmpHelper();
        }

        if (v23 != 8)
        {
LABEL_88:
          v42 = *(a1 + 944);
          if (v42)
          {
            if ((*(*&v42[*(*v42 - 24)] + 80))(&v42[*(*v42 - 24)]) == 6 && (*(v6 + 11) & 1) == 0 && *(v6 + 68) != 1)
            {
              v43 = *(a1 + 464);
              *&v67.__r_.__value_.__l.__data_ = *(a1 + 56);
              llvm::IRBuilderBase::getCurrentDebugLocation(&v67.__r_.__value_.__r.__words[2], (a1 + 8));
              v68 = *(a1 + 104);
              v21 = AGCLLVMTargetLowerer::buildBiasF2IVarying(v43, &v67, v21);
              v63.__r_.__value_.__r.__words[0] = v21;
              if (v67.__r_.__value_.__r.__words[2])
              {
                llvm::MetadataTracking::untrack();
              }
            }
          }

          v44 = *(v6 + 68);
          if (v44 == 2)
          {
            if (*(v6 + 11) == 1)
            {
              v76 = 257;
              return llvm::IRBuilderBase::CreateFPToSI((a1 + 8), v21, v22, &v74);
            }

            else
            {
              v76 = 257;
              return llvm::IRBuilderBase::CreateFPToUI((a1 + 8), v21, v22, &v74);
            }
          }

          if (v44 == 1)
          {
            v45 = *(a1 + 464);
            v46 = *(v45 + 1376);
            if (v46)
            {
              v47 = strlen(*(v45 + 1376));
            }

            else
            {
              v47 = 0;
            }

            v56 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v46, v47, *(a1 + 200), *(a1 + 168));
            v76 = 257;
            v57 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v56 + 24), v56, &v63, 1, &v74);
            v66 = 257;
            return llvm::IRBuilderBase::CreateIntCast((a1 + 8), v57, v22, 0, &v64);
          }

          return 0;
        }

        v24 = 184;
      }

      else
      {
        switch(v23)
        {
          case 0x40u:
            v24 = 208;
            break;
          case 0x20u:
            v24 = 200;
            break;
          case 0x10u:
            v24 = 192;
            break;
          default:
            goto LABEL_88;
        }
      }

      v22 = *(a1 + v24);
      goto LABEL_88;
    }

    v18 = 0;
    v19 = *(v6 + 67);
    if (v19 <= 0xF)
    {
      if (v19 == 1)
      {
        v49 = AGCLLVMBuilder::i32Extend(a1, v8, *(v6 + 10));
        v50 = *(a1 + 200);
        v51 = llvm::ConstantInt::get();
        v76 = 257;
        return llvm::IRBuilderBase::CreateICmp((a1 + 8), 33, v49, v51, &v74);
      }

      if (v19 == 8)
      {
        v20 = 184;
        goto LABEL_79;
      }
    }

    else
    {
      switch(v19)
      {
        case 0x40u:
          v20 = 208;
          goto LABEL_79;
        case 0x20u:
          v20 = 200;
          goto LABEL_79;
        case 0x10u:
          v20 = 192;
LABEL_79:
          v18 = *(a1 + v20);
          break;
      }
    }

    if (v19 >= *(v6 + 66))
    {
      if (*(v6 + 10) == 1)
      {
        v76 = 257;
        v40 = a1 + 8;
        v41 = 40;
      }

      else
      {
        v76 = 257;
        v40 = a1 + 8;
        v41 = 39;
      }
    }

    else
    {
      v76 = 257;
      v40 = a1 + 8;
      v41 = 38;
    }

    return llvm::IRBuilderBase::CreateCast(v40, v41, v8, v18, &v74);
  }

  if (!*(v6 + 8))
  {
    if (*(*(a1 + 464) + 1947) == 1 && *(v6 + 64) == 1)
    {
      *&v64.__r_.__value_.__l.__data_ = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v64.__r_.__value_.__r.__words[2], (a1 + 8));
      v65 = *(a1 + 104);
      v16 = *(a1 + 168);
      if (*(v6 + 10) == 1)
      {
        v76 = 257;
        SIToFP = llvm::IRBuilderBase::CreateSIToFP((a1 + 8), v8, v16, &v74);
      }

      else
      {
        v76 = 257;
        SIToFP = llvm::IRBuilderBase::CreateUIToFP((a1 + 8), v8, v16, &v74);
      }

      v54 = SIToFP;
      v55 = *(a1 + 464);
      v74 = v64;
      if (v64.__r_.__value_.__r.__words[2])
      {
        llvm::MetadataTracking::track();
      }

      v75 = v65;
      std::string::basic_string[abi:nn200100]<0>(&v72, "f32");
      if (*(v6 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, *(v6 + 40), *(v6 + 48));
      }

      else
      {
        v67 = *(v6 + 40);
      }

      v48 = (*(*v55 + 768))(v55, &v74, v54, &v72, &v67, 1, 0);
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (v74.__r_.__value_.__r.__words[2])
      {
        llvm::MetadataTracking::untrack();
      }

      if (v64.__r_.__value_.__r.__words[2])
      {
        goto LABEL_161;
      }

      return v48;
    }

    v25 = 152;
    if (*(v6 + 65))
    {
      v25 = 160;
    }

    v26 = 168;
    if (*(v6 + 67) == 16)
    {
      v26 = v25;
    }

    if (*(v6 + 68) == 1)
    {
      v27 = *(a1 + v26);
      if (*(v6 + 10) == 1)
      {
        v76 = 257;
        return llvm::IRBuilderBase::CreateSIToFP((a1 + 8), v8, v27, &v74);
      }

      else
      {
        v76 = 257;
        return llvm::IRBuilderBase::CreateUIToFP((a1 + 8), v8, v27, &v74);
      }
    }

    return 0;
  }

  v9 = *(a1 + 464);
  if (*(v9 + 1947) != 1)
  {
    v29 = *(v6 + 66);
    v30 = *(v6 + 67);
    if (v29 == 8 || v30 == 8)
    {
      v32 = *(a1 + 944);
      if (v32)
      {
        std::string::append((v32 + *(*v32 - 24) + 1656), "Not support HFP8 format on given target.");
      }

      return 0;
    }

LABEL_61:
    if (v30 == v29)
    {
      if (*v8 == *(a1 + 160))
      {
        v58 = *(a1 + 168);
        v76 = 257;
        FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v8, v58, &v74);
        v36 = *(a1 + 152);
      }

      else
      {
        if (*v8 != *(a1 + 152))
        {
          goto LABEL_64;
        }

        v59 = *(a1 + 168);
        v76 = 257;
        FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 8), v8, v59, &v74);
        v36 = *(a1 + 160);
      }

      v76 = 257;
      v37 = (a1 + 8);
      return llvm::IRBuilderBase::CreateFPTrunc(v37, FPExt, v36, &v74);
    }

LABEL_64:
    if (v30 < v29)
    {
      v33 = *(a1 + 944);
      if (v33)
      {
        if (*(v33 + 19) == 1)
        {
          *&v64.__r_.__value_.__l.__data_ = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v64.__r_.__value_.__r.__words[2], (a1 + 8));
          v65 = *(a1 + 104);
          v8 = AGCLLVMTargetLowerer::buildRTZF16Value(v9, &v64, v8, 0);
          if (v64.__r_.__value_.__r.__words[2])
          {
            llvm::MetadataTracking::untrack();
          }
        }
      }

      v34 = *(v6 + 68);
      if (v34 == 1 || v34 == 2)
      {
        v35 = 152;
        if (*(v6 + 65))
        {
          v35 = 160;
        }

        v36 = *(a1 + v35);
        v76 = 257;
        v37 = (a1 + 8);
        FPExt = v8;
        return llvm::IRBuilderBase::CreateFPTrunc(v37, FPExt, v36, &v74);
      }

      return 0;
    }

    v39 = *(a1 + 168);
    v76 = 257;
    return llvm::IRBuilderBase::CreateFPExt((a1 + 8), v8, v39, &v74);
  }

  if ((*(v6 + 64) & 1) == 0)
  {
    v30 = *(v6 + 67);
    v29 = *(v6 + 66);
    goto LABEL_61;
  }

  *&v74.__r_.__value_.__l.__data_ = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v74.__r_.__value_.__r.__words[2], (a1 + 8));
  v10 = *(a1 + 104);
  v75 = v10;
  v11 = *(v6 + 66);
  if (v11 == 8 && *(v6 + 67) == 8)
  {
    v53 = *(a1 + 464);
    v64 = v74;
    if (v74.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::track();
      v10 = v75;
    }

    v65 = v10;
    if (*(v6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v6 + 16), *(v6 + 24));
    }

    else
    {
      v67 = *(v6 + 16);
    }

    std::string::basic_string[abi:nn200100]<0>(&v71, "f32");
    v61 = (*(*v53 + 768))(v53, &v64, v8, &v67, &v71, 0, 0);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (v64.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::untrack();
    }

    v62 = *(a1 + 464);
    v72 = v74;
    if (v74.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::track();
    }

    v73 = v75;
    std::string::basic_string[abi:nn200100]<0>(__p, "f32");
    if (*(v6 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, *(v6 + 40), *(v6 + 48));
    }

    else
    {
      v63 = *(v6 + 40);
    }

    v48 = (*(*v62 + 768))(v62, &v72, v61, __p, &v63, 1, 0);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (v70 < 0)
    {
      operator delete(__p[0]);
    }

    if (v72.__r_.__value_.__r.__words[2])
    {
      goto LABEL_159;
    }
  }

  else
  {
    v13 = *(a1 + 464);
    v64 = v74;
    if (v74.__r_.__value_.__r.__words[2])
    {
      llvm::MetadataTracking::track();
      v10 = v75;
    }

    v65 = v10;
    if (*(v6 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, *(v6 + 16), *(v6 + 24));
    }

    else
    {
      v72 = *(v6 + 16);
    }

    if (*(v6 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v67, *(v6 + 40), *(v6 + 48));
    }

    else
    {
      v67 = *(v6 + 40);
    }

    v48 = (*(*v13 + 768))(v13, &v64, v8, &v72, &v67, v11 > 0xF, 0);
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (v64.__r_.__value_.__r.__words[2])
    {
LABEL_159:
      llvm::MetadataTracking::untrack();
    }
  }

  if (v74.__r_.__value_.__r.__words[2])
  {
LABEL_161:
    llvm::MetadataTracking::untrack();
  }

  return v48;
}

uint64_t llvm::IRBuilderBase::CreateFPExt(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 46, a2, a3, a4);
}

uint64_t AGCLLVMAirBuiltins::buildFastFMax(AGCLLVMAirBuiltins *this, llvm::Value *a2, llvm::Value *a3)
{
  v6 = *(this + 118);
  if (v6)
  {
    v7 = (*(v6 + *(*v6 - 24) + 1808) & 2) == 0;
  }

  else
  {
    v7 = 1;
  }

  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = *(**(*a2 + 16) + 8);
  }

  else
  {
    v8 = *(*a2 + 8);
  }

  v9 = v8 == 2;
  v10 = *(this + 58);
  v13 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v14, (this + 8));
  v15 = *(this + 26);
  v11 = (*(*v10 + 56))(v10, &v13, a2, a3, v9 & v7);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  return v11;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildFMax(const char **a1, __int128 *a2, llvm::Value *a3, llvm::Value *a4)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildFMinFMax(a1, &v10, a3, a4, a1[320], a1[321]);
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

llvm::Value *AGCLLVMBuilder::map2(AGCLLVMBuilder *this, llvm::Function *a2, llvm::Value *a3, llvm::Value *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    InsertElement = llvm::UndefValue::get();
    *v22 = 0u;
    v23 = 0u;
    *v20 = 0u;
    v21 = 0u;
    AGCLLVMBuilder::unboxVector(this, a3, v22);
    AGCLLVMBuilder::unboxVector(this, a4, v20);
    v9 = *(*a3 + 32);
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = v20[i];
        v19[0] = v22[i];
        v19[1] = v11;
        v18 = 257;
        v12 = llvm::IRBuilderBase::CreateCall(this + 8, *(a2 + 3), a2, v19, 2, v17);
        v18 = 257;
        v13 = *(this + 25);
        v14 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((this + 8), InsertElement, v12, v14, v17);
      }
    }
  }

  else
  {
    v22[0] = a3;
    v22[1] = a4;
    v18 = 257;
    InsertElement = llvm::IRBuilderBase::CreateCall(this + 8, *(a2 + 3), a2, v22, 2, v17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return InsertElement;
}

uint64_t llvm::IRBuilderBase::CreateFPTrunc(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 45, a2, a3, a4);
}

void AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(AGCLLVMAirBuiltins *this)
{
  *this = &unk_28257C220;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 608));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 600));
  v2 = *(this + 60);
  if (v2 != this + 496)
  {
    free(v2);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((this + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((this + 128));
  v3 = *(this + 1);
  if (v3 != this + 24)
  {
    free(v3);
  }
}

{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

void std::vector<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry,std::allocator<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t AGCLLVMUserFragmentShader::bindDylibResources(AGCLLVMUserFragmentShader *this)
{
  AGCLLVMUserObject::bindDylibResources(this);
  if ((*(*this + 616))(this))
  {
    v2 = *(*this - 24);
    StatelessPSOGlobal = AGCLLVMObject::GetStatelessPSOGlobal((this + v2));
    AGCLLVMObject::setDylibLinkage(StatelessPSOGlobal, v4);
    v5 = *(*(this + *(*this - 24) + 2168) + 928);
    (*(*v5 + 160))(v5);
    AGCLLVMObject::addDylibBinding((this + v2), StatelessPSOGlobal);
  }

  return 1;
}

uint64_t AGCLLVMUserObject::bindDylibResources(AGCLLVMUserObject *this)
{
  if (AGCLLVMUserObject::needsDylibResources(this))
  {
    AGCLLVMUserObject::createDylibBaseGetterFunc(this);
    v2 = (this + *(*this - 24));
    v3 = (*(*v2 + 80))(v2);
    if (v3 > 0x16)
    {
      v4 = 0;
    }

    else
    {
      v4 = dword_20E70D374[v3];
    }

    AGCLLVMObject::createAndBindDylibResources(v2, v4);
    if ((*(*(this + *(*this - 24)) + 120))(this + *(*this - 24)))
    {
      v5 = this + *(*this - 24);
      v6 = *(v5 + 231);
      AGCLLVMBuilder::getOrInsertFunction<>((v5 + 1704));
      v7 = *(this + *(*this - 24) + 2160);
      operator new();
    }
  }

  return 1;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::createShaderCoreBindings@<X0>(llvm::ArrayType **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(*a1 + 245))(a1);
  v9 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(v8, 0x1000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v10 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v11 = llvm::User::operator new(0x58);
  llvm::ArrayType::get(a1[23], 0x40000);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  v12 = llvm::User::operator new(0x58);
  v13 = llvm::ArrayType::get(a1[23], 0x200);
  llvm::ArrayType::get(v13, 0x30);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  *a4 = v12;
  a4[1] = v9;
  a4[3] = v10;
  a4[5] = v11;
  result = (*(*a1 + 171))(a1, a2);
  a4[2] = result;
  a4[4] = a3;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getRayCoreElementType(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 224);
  v5 = *(a1 + 168);
  v6 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v1 = *(a1 + 456);
  result = llvm::StructType::create();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::createDriverParameterShaderCoreBinding(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a1[24];
  v2 = a1[57];
  llvm::StructType::create();
  v3 = llvm::User::operator new(0x58);
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  inserted = llvm::Module::getOrInsertNamedMetadata();
  if (!llvm::NamedMDNode::getNumOperands(inserted))
  {
    RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(0x1000000uLL, 1);
    v5 = a1[57];
    v6 = a1[25];
    llvm::ConstantInt::get();
    llvm::ValueAsMetadata::get();
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(unint64_t a1, int a2)
{
  SectionEnd = 0;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 2);
        v4 = 0x40000;
      }

      else
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 3);
        v4 = 0x10000;
      }
    }

    else if (a2 == 1)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 7);
      v4 = 24576;
    }

    else
    {
      v4 = 0;
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 1);
        v4 = 0x2000;
      }
    }

    return v4 + SectionEnd;
  }

  if (a2 > 9)
  {
    if (a2 == 10)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 5);
      v7 = (a1 >> 19) & 0x1FE0;
      v8 = HIWORD(a1);
    }

    else
    {
      if (a2 != 11)
      {
        v4 = 0;
        if (a2 == 12)
        {
          v5 = a1;
          v6 = 11;
LABEL_16:
          SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(v5, v6);
          v4 = 0;
          return v4 + SectionEnd;
        }

        return v4 + SectionEnd;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 6);
      v7 = (a1 >> 19) & 0x1FE0;
      LODWORD(v8) = WORD2(a1);
    }

    v4 = v7 * v8;
    return v4 + SectionEnd;
  }

  if (a2 == 5)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen1::ScsLayoutGen1>::getSectionEnd(a1, 4);
    v4 = 8 * a1 * ((a1 >> 19) & 0x1FE0);
    return v4 + SectionEnd;
  }

  v4 = 0;
  if (a2 == 6)
  {
    v5 = a1;
    v6 = 10;
    goto LABEL_16;
  }

  return v4 + SectionEnd;
}

void AGCLLVMUserObject::getRaytracingFunctionMap(AGCLLVMUserObject *this)
{
  {
    AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map = 0;
    *&dword_28117DC10 = 0;
    qword_28117DC18 = 0x1800000000;
    __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getRaytracingFunctionMap(void)::raytracing_function_map, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&AGCLLVMUserObject::getRaytracingFunctionMap(void)::flag, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&AGCLLVMUserObject::getRaytracingFunctionMap(void)::flag, &v2, std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::getRaytracingFunctionMap(void)::$_0 &&>>);
  }
}

char *AGCLLVMUserObject::createSCSConfigurationBufferGlobal(char *this)
{
  v1 = this;
  v22 = *MEMORY[0x277D85DE8];
  if (!*(this + 318))
  {
    if ((*(*&this[*(*this - 24)] + 80))(&this[*(*this - 24)]) == 7 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 22 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 8)
    {
      v2 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v3 = (*(*v2 + 760))(v2);
    }

    else
    {
      v17 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v3 = (*(*v17 + 408))(v17);
    }

    v4 = v3;
    v5 = &v1[*(*v1 - 24)];
    v6 = v5[135].i64[0];
    v7 = v5[119];
    v19 = vextq_s8(v7, v7, 8uLL);
    v20 = vdupq_lane_s64(v7.i64[0], 0);
    v21 = v7.i64[0];
    llvm::StructType::create();
    v8 = llvm::PointerType::get();
    v19.i64[0] = "agc.scs_per_kick_configuration.";
    v20.i64[0] = v4;
    LOWORD(v21) = 2051;
    GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v1, v8, &v19, v4, 12, 5, 0);
    this = llvm::ValueHandleBase::operator=((v1 + 2528), GlobalBufferBinding);
  }

  if (!*(v1 + 321))
  {
    if ((*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 7 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 22 || (*(*&v1[*(*v1 - 24)] + 80))(&v1[*(*v1 - 24)]) == 8)
    {
      v10 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v11 = (*(*v10 + 768))(v10);
    }

    else
    {
      v18 = *(*&v1[*(*v1 - 24) + 2168] + 920);
      v11 = (*(*v18 + 416))(v18);
    }

    v12 = v11;
    v13 = *&v1[*(*v1 - 24) + 1904];
    v14 = llvm::PointerType::get();
    v19.i64[0] = "agc.scs_per_shader_configuration.";
    v20.i64[0] = v12;
    LOWORD(v21) = 2051;
    v15 = AGCLLVMUserObject::createGlobalBufferBinding(v1, v14, &v19, v12, 4, 5, 0);
    this = llvm::ValueHandleBase::operator=((v1 + 2552), v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return this;
}

void AGCLLVMAirBuiltins::AGCLLVMAirBuiltins(AGCLLVMAirBuiltins *this, AGCLLVMUserObject *a2, llvm::LLVMContext **a3, AGCLLVMTargetLowerer *a4)
{
  AGCLLVMBuilder::AGCLLVMBuilder(this, *a3);
  v8[58] = a4;
  *v8 = &unk_28257C220;
  AGCLLVMBuilder::AGCLLVMBuilder((v8 + 59), *a3);
  *(this + 59) = &unk_28257D030;
  *(this + 117) = this;
  *(this + 113) = a3;
  *(this + 118) = a2;
  v9 = *(a4 + 114);
  std::mutex::lock((v9 + 72));
  v10 = *(v9 + 64);
  if (!v10)
  {
    operator new();
  }

  std::mutex::unlock((v9 + 72));
  *(this + 119) = v10;
  *(this + 960) = 1;
  *(this + 54) = a3;
  *(this + 26) = *(a4 + 26);
}

uint64_t llvm::IRBuilderBase::CreateCast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (*a3 != a4)
  {
    if (*(a3 + 16) > 0x14u)
    {
      v5 = llvm::CastInst::Create();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
    }

    else
    {
      v5 = (*(**(a1 + 72) + 224))(*(a1 + 72), a2, a3, a4);
      if (v5)
      {
        v8 = *(v5 + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v5, a5);
      }
    }
  }

  return v5;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildFMinFMax(AGCLLVMBuilder *a1, uint64_t a2, llvm::Value *a3, llvm::Value *a4, const char *a5, const char *a6)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v20 = *a2;
  v21 = *(a2 + 16);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v20);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v23[0] = v24;
  v23[1] = 0x200000000;
  v12 = *a3;
  v13 = *a3;
  if ((*(*a3 + 8) & 0xFE) == 0x12)
  {
    v13 = **(v12 + 16);
  }

  if (v12 != *a4)
  {
    a4 = AGCLLVMBuilder::splat(a1, *(v12 + 32), a4);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, v13);
  v14 = *a4;
  if ((*(*a4 + 8) & 0xFE) == 0x12)
  {
    v14 = **(v14 + 16);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v23, v14);
  llvm::FunctionType::get();
  if (v13 != *(a1 + 21))
  {
    a6 = a5;
  }

  if (a6)
  {
    strlen(a6);
  }

  v15 = *(a1 + 54);
  llvm::Module::getOrInsertFunction();
  v17 = AGCLLVMBuilder::map2(a1, v16, a3, a4);
  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void AGCLLVMAirBuiltinsGen7::~AGCLLVMAirBuiltinsGen7(AGCLLVMAirBuiltinsGen7 *this)
{
  AGCLLVMAirBuiltins::~AGCLLVMAirBuiltins(this);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMUserShader::improveDMAPromotionOpportunityAGP(AGCLLVMUserShader *this)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = this + *(*this - 24);
  v2 = *(v1 + 1150);
  if (v2)
  {
    v4 = *(v1 + 574);
    v5 = &v4[v2];
    v6 = this + 2168;
    v56 = this + 2160;
    v57 = this + 1904;
    while (1)
    {
      Impl = *v4;
      v8 = *(*v4 + 8);
      if (v8 < 3)
      {
        goto LABEL_31;
      }

      v9 = *(Impl - 8 * v8);
      if (!v9)
      {
        goto LABEL_31;
      }

      if (*v9 - 1 > 1)
      {
        goto LABEL_31;
      }

      v10 = *(v9 + 16);
      if (!v10)
      {
        goto LABEL_31;
      }

      if (*(v10 + 16) != 3)
      {
        goto LABEL_31;
      }

      if ((*(v10 + 34) & 0x40) == 0)
      {
        goto LABEL_31;
      }

      SectionImpl = llvm::GlobalObject::getSectionImpl(v10);
      if (v12 != 15)
      {
        goto LABEL_31;
      }

      if (*SectionImpl != 0x625F726566667562 || *(SectionImpl + 7) != 0x73676E69646E6962)
      {
        goto LABEL_31;
      }

      v55 = v6;
      v14 = *v10;
      if (*(*v10 + 8) != 16399 || (llvm::Type::isOpaquePointerTy(*v10) & 1) != 0 || *(**(v14 + 16) + 8) != 15)
      {
        goto LABEL_30;
      }

      v15 = v10[3];
      v16 = *(v15 + 8);
      if ((v16 & 0xFE) == 0x12)
      {
        v16 = *(**(v15 + 16) + 8);
      }

      if ((v16 >> 8) - 1 > 1)
      {
        goto LABEL_30;
      }

      v17 = v10;
      while (1)
      {
        v17 = v17[1];
        if (!v17)
        {
          break;
        }

        if (*(v17[3] + 16) != 60)
        {
          goto LABEL_30;
        }
      }

      v18 = 0;
      v63 = 0;
      if (*(Impl + 8) == 4)
      {
        LODWORD(TypeAllocSize) = 3;
        if (!parseMDInt(0, Impl, &TypeAllocSize, &v63))
        {
          goto LABEL_30;
        }

        v18 = v63;
        if (v63 == -1)
        {
          goto LABEL_30;
        }
      }

      v53 = v18;
      v19 = **(v15 + 16);
      if ((*(*(this + *(*this - 24)) + 216))(this + *(*this - 24)))
      {
        break;
      }

      v22 = v19[8];
      v52 = v19;
      if (v22 == 16)
      {
        v23 = v19;
      }

      else
      {
        v23 = 0;
      }

      v6 = v55;
      if (v22 != 7 && (!v23 || (v23[9] & 1) != 0))
      {
        v61 = 0;
        v62 = 0;
        LODWORD(TypeAllocSize) = 1;
        parseMDInt(0, Impl, &TypeAllocSize, &v62);
        LODWORD(TypeAllocSize) = 2;
        parseMDInt(0, Impl, &TypeAllocSize, &v61);
        v24 = *&v55[*(*this - 24)];
        v25 = *(v24 + 1894) == 1 && v62 == 5;
        if (v25 && (v61 & 0x80000000) != 0 || (*(v24 + 1877) & 1) == 0 && v62 == 5 && (v61 & 0x80000000) != 0 && ((*(this + 438) >> (v61 >> 20)) & 1) != 0)
        {
          TypeAllocSize = llvm::ValueAsMetadata::get();
          v65 = *(Impl - 8 * *(Impl + 8) + 8);
          v26 = *&v57[*(*this - 24)];
          llvm::ConstantInt::get();
          v66 = llvm::ValueAsMetadata::get();
          v27 = *&v56[*(*this - 24)];
          Impl = llvm::MDTuple::getImpl();
        }

        else if (!v53)
        {
          v54 = v5;
          v51 = v4;
          __p = 0;
          v59 = 0;
          v60 = 0;
          v28 = v10[1];
          if (!v28)
          {
            goto LABEL_83;
          }

          do
          {
            TypeAllocSize = *(v28 + 24);
            *&v65 = 0;
            std::vector<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry,std::allocator<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry>>::push_back[abi:nn200100](&__p, &TypeAllocSize);
            v28 = *(v28 + 8);
          }

          while (v28);
          v29 = __p;
          v30 = v59;
          if (__p == v59)
          {
LABEL_83:
            v46 = 1;
LABEL_84:
            TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v52) * v46;
            LODWORD(v65) = v47;
            if (llvm::TypeSize::operator unsigned long long() <= 0xFFFFFFFE)
            {
              TypeAllocSize = llvm::ValueAsMetadata::get();
              v65 = *(Impl - 8 * *(Impl + 8) + 8);
              v48 = *&v57[*(*this - 24)];
              llvm::ConstantInt::get();
              v66 = llvm::ValueAsMetadata::get();
              v49 = *&v56[*(*this - 24)];
              Impl = llvm::MDTuple::getImpl();
            }

LABEL_86:
            if (__p)
            {
              operator delete(__p);
            }

            v4 = v51;
            v5 = v54;
            v6 = v55;
            goto LABEL_31;
          }

          v31 = 0;
          while (2)
          {
            v32 = *(v30 - 2);
            v33 = *(v30 - 1);
            v30 -= 16;
            v59 = v30;
            v34 = *(v32 + 8);
            if (!v34)
            {
              goto LABEL_81;
            }

LABEL_56:
            v35 = *(v34 + 24);
            v36 = *(v35 + 16);
            switch(v36)
            {
              case 'M':
                v42 = *v35;
                if (*(*v35 + 8) != 15)
                {
                  goto LABEL_86;
                }

                if (!llvm::Type::isSized(**(v42 + 16)))
                {
                  goto LABEL_86;
                }

                TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v52);
                LODWORD(v65) = v43;
                v44 = llvm::TypeSize::operator unsigned long long();
                TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), **(v42 + 16));
                LODWORD(v65) = v45;
                if (llvm::TypeSize::operator unsigned long long() > v44)
                {
                  goto LABEL_86;
                }

                while (1)
                {
                  v35 = v35[1];
                  if (!v35)
                  {
                    break;
                  }

                  if (*(v35[3] + 16) != 60)
                  {
                    goto LABEL_86;
                  }
                }

LABEL_59:
                if (v31 <= v33)
                {
                  v31 = v33;
                }

                break;
              case '>':
                v37 = *(v35 + 5) & 0x7FFFFFF;
                v38 = v35[-4 * v37 + 4];
                if (v38)
                {
                  v39 = *(v38 + 16) == 16;
                }

                else
                {
                  v39 = 0;
                }

                if (!v39)
                {
                  goto LABEL_86;
                }

                v40 = (v38 + 24);
                if (*(v38 + 32) >= 0x41u)
                {
                  v40 = *v40;
                }

                v41 = *v40 + v33;
                if (v37 == 2)
                {
                  TypeAllocSize = *(v34 + 24);
                  *&v65 = v41;
                  std::vector<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry,std::allocator<AGCLLVMUserObject::findBufferSize(llvm::MDNode *)::WorkListEntry>>::push_back[abi:nn200100](&__p, &TypeAllocSize);
                }

                else if (v31 <= v41)
                {
                  v31 = v41;
                }

                break;
              case '<':
                goto LABEL_59;
              default:
                goto LABEL_86;
            }

            v34 = *(v34 + 8);
            if (!v34)
            {
              v29 = __p;
              v30 = v59;
LABEL_81:
              if (v29 == v30)
              {
                v46 = v31 + 1;
                goto LABEL_84;
              }

              continue;
            }

            goto LABEL_56;
          }
        }
      }

LABEL_31:
      *v4++ = Impl;
      if (v4 == v5)
      {
        goto LABEL_89;
      }
    }

    TypeAllocSize = llvm::ValueAsMetadata::get();
    v65 = *(Impl - 8 * *(Impl + 8) + 8);
    v20 = *&v57[*(*this - 24)];
    llvm::ConstantInt::get();
    v66 = llvm::ValueAsMetadata::get();
    v21 = *&v56[*(*this - 24)];
    Impl = llvm::MDTuple::getImpl();
LABEL_30:
    v6 = v55;
    goto LABEL_31;
  }

LABEL_89:
  v50 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMUserFragmentShader::wrapperCallingConvention(AGCLLVMUserFragmentShader *this, uint64_t a2)
{
  if (*(*(this + 660) + 33) & 3) != 0 && ((*(*(this + *(*this - 24) + 2168) + 1914) & 1) != 0 || *(this + 1136) > 0 || ((*(*this + 616))(this, a2)))
  {
    return 103;
  }

  else
  {
    return 101;
  }
}

void AGCLLVMUserShader::getInterpolationLocationMap(AGCLLVMUserShader *this)
{
  {
    AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map = 0;
    *&dword_28117E538 = 0;
    qword_28117E540 = 0x1000000000;
    __cxa_atexit(llvm::StringMap<InterpolationLocation,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserShader::getInterpolationLocationMap(void)::interpolation_location_map, &dword_20E4E1000);
  }
}

void *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MTLCompilerDataType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerDataType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerDataType>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void findFunctionStartWithName(void *a1, uint64_t a2, llvm::Twine *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v3 = a2 + 24;
  v4 = *(a2 + 32);
  if (v4 != a2 + 24)
  {
    while (1)
    {
      if (v4)
      {
        v7 = (v4 - 56);
      }

      else
      {
        v7 = 0;
      }

      if (!llvm::GlobalValue::isDeclaration(v7))
      {
        goto LABEL_20;
      }

      Name = llvm::Value::getName(v7);
      v10 = v9;
      llvm::Twine::str(v16, a3);
      v11 = v17;
      v12 = v16[0];
      v13 = v17 >= 0 ? v16 : v16[0];
      v14 = v17 >= 0 ? v17 : v16[1];
      if (v10 < v14)
      {
        break;
      }

      if (v14)
      {
        v15 = memcmp(Name, v13, v14) == 0;
        if ((v11 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v15 = 1;
      if (v17 < 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      if (v15)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a1, v7);
      }

LABEL_20:
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        return;
      }
    }

    v15 = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    operator delete(v12);
    goto LABEL_18;
  }
}

unsigned int *llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(unsigned int *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[2];
  if (v5 + ((a3 - __src) >> 3) > result[3])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + 8 * v5), __src, v4);
    LODWORD(v5) = v3[2];
  }

  v3[2] = v5 + (v4 >> 3);
  return result;
}

uint64_t llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, uint64_t a2)
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

llvm::ValueHandleBase *llvm::ValueHandleBase::operator=(llvm::ValueHandleBase *this, void *a2)
{
  v2 = *(this + 2);
  v3 = a2[2];
  if (v2 != v3)
  {
    v5 = this;
    if (v2 != -8192 && v2 != -4096 && v2 != 0)
    {
      this = llvm::ValueHandleBase::RemoveFromUseList(this);
      v3 = a2[2];
    }

    *(v5 + 2) = v3;
    if (v3 != -8192 && v3 != -4096 && v3 != 0)
    {
      v8 = (*a2 & 0xFFFFFFFFFFFFFFF8);

      return llvm::ValueHandleBase::AddToExistingUseList(v5, v8);
    }
  }

  return this;
}

uint64_t llvm::IRBuilderBase::SetInsertPoint(llvm::IRBuilderBase *this, llvm::Instruction *a2)
{
  *(this + 6) = *(a2 + 5);
  *(this + 7) = a2 + 24;
  v3 = *(a2 + 6);
  v5 = v3;
  if (v3)
  {
    llvm::MetadataTracking::track();
    v3 = v5;
  }

  result = llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(this, v3);
  if (v5)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *result + 16 * v3;
  if (a2)
  {
    if (v3)
    {
      v5 = 16 * v3;
      while (*v2)
      {
        v2 += 16;
        v5 -= 16;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      *(v2 + 8) = a2;
    }

    else
    {
LABEL_6:
      if (v3 >= *(result + 12))
      {
        return llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(result, 0, a2);
      }

      else
      {
        *v4 = 0;
        *(v4 + 8) = a2;
        *(result + 8) = v3 + 1;
      }
    }
  }

  else
  {
    if (v3)
    {
      v6 = 16 * v3;
      v7 = *result;
      while (*v7)
      {
        v7 += 16;
        v6 -= 16;
        if (!v6)
        {
          v7 = v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      v7 = *result;
    }

    if (v7 != v4)
    {
      for (i = v7 + 16; i != v4; i += 16)
      {
        if (*i)
        {
          *v7 = *i;
          *(v7 + 8) = *(i + 8);
          v7 += 16;
        }
      }
    }

LABEL_21:
    *(result + 8) = (v7 - v2) >> 4;
  }

  return result;
}

uint64_t llvm::CallBase::arg_end(llvm::CallBase *this)
{
  v2 = *(this + 16);
  if (v2 == 84)
  {
    NumSubclassExtraOperandsDynamic = 0;
  }

  else if (v2 == 39)
  {
    NumSubclassExtraOperandsDynamic = llvm::CallBase::getNumSubclassExtraOperandsDynamic(this);
  }

  else
  {
    NumSubclassExtraOperandsDynamic = 2;
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    Descriptor = 0;
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  Descriptor = llvm::User::getDescriptor(this);
  if ((*(this + 5) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v11 = llvm::User::getDescriptor(this);
  v5 = v11 + v12;
LABEL_10:
  if (((v5 - Descriptor) & 0xFFFFFFFF0) != 0)
  {
    v6 = *(llvm::User::getDescriptor(this) + 8);
    v7 = llvm::User::getDescriptor(this);
    v9 = (*(v7 + v8 - 4) - v6);
  }

  else
  {
    v9 = 0;
  }

  return this + -32 * v9 + -32 * NumSubclassExtraOperandsDynamic - 32;
}

BOOL llvm::FPMathOperator::classof(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!a1 || (v2 = v1 - 28, v1 < 0x1C))
  {
    v3 = 0;
    if (!a1 || v1 != 5)
    {
      return v3;
    }

    v2 = *(a1 + 18);
  }

  if (v2 > 0x39)
  {
    return 0;
  }

  if (((1 << v2) & 0x40000001255000) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 0x380000000000000) == 0)
  {
    return 0;
  }

  do
  {
    v4 = *a1;
    v5 = *(*a1 + 8);
    a1 = *a1 + 24;
    if (v4)
    {
      v6 = v5 == 17;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v4 + 16) + 8);
  }

  return v5 < 7;
}

uint64_t AGCLLVMBuilder::InsertPoint::restoreIP(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    llvm::IRBuilderBase::SetInsertPoint(a2, *a1, *(a1 + 8));
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
  }

  v4 = *(a1 + 16);
  v6 = v4;
  if (v4)
  {
    llvm::MetadataTracking::track();
    v4 = v6;
  }

  result = llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(a2, v4);
  if (v6)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *(a2 + 96) = *(a1 + 24);
  return result;
}

uint64_t llvm::IRBuilderBase::SetInsertPoint(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  if (a2 + 40 != a3)
  {
    v3 = result;
    v4 = a3 - 24;
    if (!a3)
    {
      v4 = 0;
    }

    v5 = *(v4 + 48);
    v6 = v5;
    if (v5)
    {
      llvm::MetadataTracking::track();
      v5 = v6;
    }

    result = llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(v3, v5);
    if (v6)
    {
      return llvm::MetadataTracking::untrack();
    }
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateInsertElement(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u && a4 && *(a4 + 16) <= 0x14u)
  {
    v10 = (*(**(this + 9) + 328))(*(this + 9), a2, a3, a4);
    if (v10)
    {
      v11 = *(v10 + 16) >= 0x1Cu;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v10, a5);
    }
  }

  else
  {
    v19 = 257;
    v10 = llvm::User::operator new(0x40);
    MEMORY[0x20F330760](v10, a2, a3, a4, v18, 0);
    (*(**(this + 10) + 16))(*(this + 10), v10, a5, *(this + 6), *(this + 7));
    v12 = *(this + 2);
    if (v12)
    {
      v13 = *this;
      v14 = &v13[2 * v12];
      do
      {
        v15 = *v13;
        v16 = v13[1];
        llvm::Instruction::setMetadata();
        v13 += 2;
      }

      while (v13 != v14);
    }
  }

  return v10;
}

uint64_t AGCLLVMTargetLowerer::SetIP(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 6);
  result = AGCLLVMBuilder::InsertPoint::restoreIP(&v5, a1 + 8);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Value *llvm::IRBuilderBase::CreateCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 104);
  v8 = *(a1 + 112);
  v10 = 0;
  if (v8)
  {
    v11 = 48 * v8;
    v12 = (v9 + 32);
    do
    {
      v10 += (*v12 - *(v12 - 1)) >> 3;
      v12 += 6;
      v11 -= 48;
    }

    while (v11);
  }

  v13 = llvm::User::operator new(0x50);
  v14 = **(a2 + 16);
  if (v8)
  {
    v15 = 0;
    v16 = 48 * v8;
    v17 = (v9 + 32);
    v18 = 48 * v8;
    do
    {
      v15 += (*v17 - *(v17 - 1)) >> 3;
      v17 += 6;
      v18 -= 48;
    }

    while (v18);
    v19 = 0;
    v20 = (v9 + 32);
    do
    {
      v19 += (*v20 - *(v20 - 1)) >> 3;
      v20 += 6;
      v16 -= 48;
    }

    while (v16);
  }

  llvm::Instruction::Instruction();
  *(v13 + 8) = 0;
  llvm::CallInst::init();
  if (*(a1 + 100) == 1)
  {
    llvm::Value::getContext(v13);
    *(v13 + 8) = llvm::AttributeList::addAttributeAtIndex();
  }

  if (llvm::FPMathOperator::classof(v13))
  {
    v21 = *(a1 + 96);
    llvm::IRBuilderBase::setFPAttrs(a1, v13);
  }

  (*(**(a1 + 80) + 16))(*(a1 + 80), v13, a6, *(a1 + 48), *(a1 + 56));
  v22 = *(a1 + 8);
  if (v22)
  {
    v23 = *a1;
    v24 = &v23[4 * v22];
    do
    {
      v25 = *v23;
      v26 = *(v23 + 1);
      llvm::Instruction::setMetadata();
      v23 += 4;
    }

    while (v23 != v24);
  }

  return v13;
}

uint64_t llvm::IRBuilderBase::setFPAttrs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    llvm::Instruction::setMetadata();
  }

  llvm::Instruction::setFastMathFlags();
  return a2;
}

void std::vector<unsigned int>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

llvm::Type *AGCLLVMBuilder::tryDeducePointeeType(llvm::Type **this, llvm::Value *a2)
{
  v3 = *this;
  if ((llvm::Type::isOpaquePointerTy(*this) & 1) == 0)
  {
    return **(v3 + 2);
  }

  v4 = *(this + 16);
  if (v4 <= 0x1B)
  {
    if (v4 != 5)
    {
      if (v4 <= 3)
      {
        return this[3];
      }

      return 0;
    }

    if (*(this + 9) != 34)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == 59)
    {
      return this[8];
    }

    if (v4 != 62)
    {
      return 0;
    }
  }

  return MEMORY[0x2821F4BC8](this);
}

uint64_t AGCLLVMAGPFragmentShaderGen3::detectSideEffects(AGCLLVMAGPFragmentShaderGen3 *this)
{
  if (*(this + 1964) == 2)
  {
    return AGCLLVMAGPFragmentShader::detectSideEffects(this);
  }

  else
  {
    return 1;
  }
}

uint64_t validateMaxTotalThreadsPerThreadgroup(unsigned int a1, unsigned int a2, unsigned int a3, std::string *a4, unsigned int *a5)
{
  if (a2 && a1 != a2 && a1)
  {
    std::to_string(&v33, a1);
    v8 = std::string::insert(&v33, 0, ": Kernel specified max total threads per threadgroup (");
    v9 = v8->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v34, ") ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v35, "must match compute pipeline specified max total threads per threadgroup (");
    v13 = v12->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a2);
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    if (!a1)
    {
      a1 = a2;
    }

    if (a1 <= a3)
    {
      *a5 = a1;
      return 1;
    }

    std::to_string(&v33, a1);
    v18 = std::string::insert(&v33, 0, ": Specified total max threads per threadgroup (");
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v34, ") ");
    v21 = v20->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = *&v20->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v35, "exceeds the maximum total threads per threadgroup supported (");
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a3);
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  if (v16)
  {
    v24 = size;
  }

  else
  {
    v24 = v14;
  }

  v25 = std::string::append(&v36, p_p, v24);
  v26 = v25->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v37, ")");
  v28 = v27->__r_.__value_.__r.__words[2];
  v38 = *&v27->__r_.__value_.__l.__data_;
  v39 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (v39 >= 0)
  {
    v29 = &v38;
  }

  else
  {
    v29 = v38;
  }

  if (v39 >= 0)
  {
    v30 = HIBYTE(v39);
  }

  else
  {
    v30 = *(&v38 + 1);
  }

  std::string::append(a4, v29, v30);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AGCLLVMGen3TargetLowerer::addLIBSpansFromDrawBufferState(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 2576) & 1) == 0 && *(a2 + 32))
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      if (((*(a2 + 32) >> v9) & 1) == 0)
      {
        goto LABEL_19;
      }

      v10 = *(a2 + 4 * v9);
      v11 = v10 & 0x1F;
      if ((~v10 & 0xFF000) == 0 || v11 == 23)
      {
        goto LABEL_19;
      }

      v13 = v10 >> 5;
      if (v11 > 0x16)
      {
        break;
      }

      v14 = 1 << v11;
      if (((1 << v11) & 0x41F3C0) != 0)
      {
        v13 *= 2;
      }

      else if ((v14 & 0x3C0000) != 0)
      {
        v13 = 4;
      }

      else
      {
        if ((v14 & 0x20C00) == 0)
        {
          break;
        }

        v13 *= 4;
      }

LABEL_18:
      v15 = *(v8 + 964) * (v10 >> 12);
      v4 = v4 & 0xFFFFFFFF00000000 | *(a3 + 4 * v9);
      result = llvm::SmallVectorTemplateBase<AGCLLVMGen3TargetLowerer::ExplicitLIBSpan,true>::push_back(a4, v15 | ((v15 + v13 - 1) << 32), v4);
LABEL_19:
      if (++v9 == 8)
      {
        return result;
      }
    }

    if (v11 - 2 >= 4)
    {
      v13 = 0;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<AGCLLVMGen3TargetLowerer::ExplicitLIBSpan,true>::push_back(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 8);
  if (v3 >= *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = *result + 12 * v3;
  *v4 = a2;
  *(v4 + 8) = a3;
  ++*(result + 8);
  return result;
}

uint64_t AGCLLVMUserShader::initLIBAliasOffset(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if ((~*(a2 + 32) & 0x1FF000) != 0)
    {
      *(result + 3766) = 1;
      v2 = *(a2 + 32);
      if (v2)
      {
        v3 = *result;
        if ((~v2 & 0x1FF000) == 0 || (v4 = *(*(result + *(v3 - 24) + 2168) + 964) * ((v2 >> 12) & 0x1FF), *(result + 4528) = v4, *(result + 3764) = v4, *(result + 3762) = v4, v5 = *(a2 + 4 * (31 - __clz(*(a2 + 32)))), v6 = v5 & 0x1F, v6 == 23) || (~v5 & 0xFF000) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
          return llvm::detail::PassModel<llvm::Module,TranslatorLegacyPass,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>>::isRequired();
        }

        v7 = v5 >> 5;
        v8 = *(*(result + *(v3 - 24) + 2168) + 964) * (v5 >> 12);
        if (v6 <= 0x16)
        {
          if (((1 << v6) & 0x41F3C0) != 0)
          {
            v9 = 2 * v7;
LABEL_17:
            *(result + 4532) = v9 + v8;
            return result;
          }

          if (((1 << v6) & 0x3C0000) != 0)
          {
            v9 = 4;
            goto LABEL_17;
          }

          if (((1 << v6) & 0x20C00) != 0)
          {
            v9 = 4 * v7;
            goto LABEL_17;
          }
        }

        if (v6 - 2 >= 4)
        {
          v9 = 0;
        }

        else
        {
          v9 = v7;
        }

        goto LABEL_17;
      }
    }
  }

  return result;
}

double AGCLLVMGen3TargetLowerer::clampInfoForFormat@<D0>(int a1@<W1>, uint64_t a2@<X8>)
{
  AGCLLVMTargetLowerer::clampInfoForFormat(a1, a2);
  if (a1 == 16)
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      *(a2 + 20) = 1;
    }

    *&result = 3208691902;
    *a2 = xmmword_20E70C720;
    *(a2 + 16) = 257;
  }

  else if (a1 == 19)
  {
    if ((*(a2 + 20) & 1) == 0)
    {
      *(a2 + 20) = 1;
    }

    result = 0.0;
    *a2 = xmmword_20E70C730;
    *(a2 + 16) = 0;
  }

  return result;
}

void AGCLLVMTargetLowerer::clampInfoForFormat(int a1@<W1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 20) = 0;
  v2 = 0.0;
  if (a1 > 12)
  {
    if (a1 > 14)
    {
      if (a1 == 15)
      {
        v8 = 1067458589;
        v9 = -1086275394;
      }

      else
      {
        if (a1 != 22)
        {
          return;
        }

        v8 = 1070964691;
        v9 = -1090064377;
      }

      *a2 = v9;
      *(a2 + 4) = 0;
      *(a2 + 8) = v8;
      *(a2 + 12) = 1065353216;
      *(a2 + 17) = 0;
      *(a2 + 20) = 1;
LABEL_20:
      *(a2 + 16) = 1;
      return;
    }

    if (a1 != 13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a1 > 5)
  {
    if (a1 != 6)
    {
      if (a1 != 7)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
LABEL_12:
    v2 = -1.0;
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    return;
  }

LABEL_13:
  *a2 = v2;
  *(a2 + 4) = v2;
  __asm { FMOV            V0.2S, #1.0 }

  *(a2 + 8) = _D0;
  *(a2 + 16) = 0;
  *(a2 + 20) = 1;
  if ((a1 - 13) < 2)
  {
    goto LABEL_20;
  }
}

char *llvm::PassInfoMixin<InitCompileUserFragmentShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x53)
  {
    v1 = v0;
  }

  else
  {
    v1 = 83;
  }

  v2 = &aStringrefLlvmG_45[v1];
  v3 = 83 - v1;
  if ((83 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 83 - v1;
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

uint64_t AGCLLVMAGPFragmentShader::detectSideEffects(AGCLLVMAGPFragmentShader *this)
{
  v1 = this;
  v2 = this + 4096;
  v3 = *(this + *(*this - 24) + 2136);
  v4 = v3 + 24;
  v5 = *(v3 + 32);
  if (v5 == v3 + 24)
  {
    goto LABEL_127;
  }

  v67 = this + 4096;
  v6 = 0;
  v7 = 0;
  v66 = 0;
  v8 = 0;
  v64 = 0;
  v9 = "air-no-user-resource-stores";
  do
  {
    if (v5)
    {
      v10 = v5 - 56;
    }

    else
    {
      v10 = 0;
    }

    if ((llvm::Function::hasFnAttribute() & 1) == 0)
    {
      v11 = v10 + 72;
      v12 = *(v10 + 80);
      if (v12 == v10 + 72)
      {
        v14 = 0;
      }

      else
      {
        do
        {
          v13 = v12 - 24;
          if (!v12)
          {
            v13 = 0;
          }

          v14 = *(v13 + 48);
          if (v14 != v13 + 40)
          {
            break;
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
      }

      while (1)
      {
        if (v12 == v11)
        {
          goto LABEL_7;
        }

        if (v14)
        {
          v15 = v14 - 24;
        }

        else
        {
          v15 = 0;
        }

        v16 = *(v15 + 16);
        if (v14 && v16 == 61)
        {
          v17 = **(v14 - 56);
          v18 = *(v17 + 8);
          if ((v18 & 0xFE) == 0x12)
          {
            v18 = *(**(v17 + 16) + 8);
          }

          v19 = v18 >> 8;
          switch(v19)
          {
            case 1u:
              v6 = 1;
              break;
            case 8u:
              v8 = 1;
              break;
            case 3u:
              v7 = 1;
              break;
          }

          goto LABEL_37;
        }

        if (!v14)
        {
          goto LABEL_37;
        }

        if (v16 != 84)
        {
          goto LABEL_37;
        }

        v20 = *(v15 - 32);
        if (!v20 || *(v20 + 16) || *(v20 + 24) != *(v15 + 72))
        {
          goto LABEL_37;
        }

        v68 = v6;
        v21 = v7;
        v22 = v8;
        v23 = v4;
        v24 = v9;
        Name = llvm::Value::getName(v20);
        v70 = v25;
        v26 = llvm::CallBase::arg_end(v15);
        v27 = v15 - 32 * (*(v15 + 20) & 0x7FFFFFF);
        v28 = ((v26 - v27) & 0x1FFFFFFFE0) != 0 && *(**v27 + 8) == 15;
        v30 = v70;
        if (v70 < 0xA)
        {
          v31 = 0;
          v9 = v24;
          v4 = v23;
          v8 = v22;
LABEL_65:
          v7 = v21;
          v6 = v68;
          goto LABEL_66;
        }

        v32 = *Name == 0x6D6F74612E726961 && *(Name + 8) == 25449;
        if (!v32 || llvm::StringRef::find() != -1 || !v28)
        {
          v9 = v24;
          goto LABEL_61;
        }

        v33 = **(v15 - 32 * (*(v15 + 20) & 0x7FFFFFF));
        v34 = *(v33 + 8);
        if ((v34 & 0xFE) == 0x12)
        {
          v34 = *(**(v33 + 16) + 8);
        }

        v35 = v34 >> 8;
        v9 = v24;
        if (v35 == 1)
        {
          break;
        }

        v4 = v23;
        if (v35 != 8)
        {
          if (v35 == 3)
          {
            v64 = 1;
            v21 = 1;
          }

          goto LABEL_62;
        }

        v64 = 1;
        v8 = 1;
LABEL_63:
        v30 = v70;
        if (v70 < 0xB)
        {
          v31 = 0;
          goto LABEL_65;
        }

        v36 = Name;
        v37 = *Name == 0x6D656D2E6D766C6CLL && *(Name + 3) == 0x7970636D656D2E6DLL;
        v7 = v21;
        if (v37)
        {
          v50 = **(v15 - 32 * (*(v15 + 20) & 0x7FFFFFF));
          v51 = *(v50 + 8);
          v6 = v68;
          if ((v51 & 0xFE) == 0x12)
          {
            v51 = *(**(v50 + 16) + 8);
          }

          v52 = v51 >> 8;
          switch(v52)
          {
            case 1u:
              v6 = 1;
              break;
            case 8u:
              v8 = 1;
              break;
            case 3u:
              v7 = 1;
              break;
          }
        }

        else
        {
          v6 = v68;
        }

        if (v70 < 0xF || (*Name == 0x5F7465732E726961 ? (v38 = *(Name + 7) == 0x5F7265666675625FLL) : (v38 = 0), !v38 ? (v39 = 0) : (v39 = 1), (v6 |= v39, v70 < 0x14) || (*Name == 0x646D69732E726961 ? (v40 = *(Name + 8) == 0x616D5F70756F7267) : (v40 = 0), v40 ? (v41 = *(Name + 16) == 2020176500) : (v41 = 0), !v41)))
        {
          LOBYTE(v31) = 0;
          goto LABEL_91;
        }

        v31 = llvm::StringRef::find() != -1;
        v30 = v70;
LABEL_66:
        if (v30 < 9)
        {
          if (v31)
          {
            goto LABEL_96;
          }

          goto LABEL_104;
        }

        v36 = Name;
LABEL_91:
        v42 = *v36;
        v43 = *(v36 + 8);
        v44 = v42 == 0x726F74732E726961 && v43 == 101;
        if (v44 || v31)
        {
LABEL_96:
          v45 = **(v15 - 32 * (*(v15 + 20) & 0x7FFFFFF) + 32);
          v46 = *(v45 + 8);
          if ((v46 & 0xFE) == 0x12)
          {
            v46 = *(**(v45 + 16) + 8);
          }

          v47 = v46 >> 8;
          switch(v47)
          {
            case 1u:
              v6 = 1;
              break;
            case 8u:
              v8 = 1;
              break;
            case 3u:
              v7 = 1;
              break;
          }
        }

LABEL_104:
        SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(v67[352]);
        Key = llvm::StringMapImpl::FindKey();
        if (Key != -1 && Key != *(SampleFunctionMap + 2))
        {
          v66 |= *(*(*SampleFunctionMap + 8 * Key) + 8) == 3;
        }

LABEL_37:
        v14 = *(v14 + 8);
        v29 = v12 - 24;
        if (!v12)
        {
          v29 = 0;
        }

        while (v14 == v29 + 40)
        {
          v12 = *(v12 + 8);
          if (v12 == v11)
          {
            break;
          }

          v29 = v12 - 24;
          if (!v12)
          {
            v29 = 0;
          }

          v14 = *(v29 + 48);
        }
      }

      v64 = 1;
      v68 = 1;
LABEL_61:
      v4 = v23;
LABEL_62:
      v8 = v22;
      goto LABEL_63;
    }

LABEL_7:
    v5 = *(v5 + 8);
  }

  while (v5 != v4);
  v1 = this;
  v2 = v67;
  if ((v6 | v7 | v66 | v8))
  {
    if ((v7 & 1) != 0 && (v53 = (this + *(*this - 24)), (*(v53[90].__r_.__value_.__l.__size_ + 1857) & 1) == 0))
    {
      v63 = "threadgroup memory not supported in fragment shaders";
    }

    else
    {
      if (v66 & 1) == 0 || (v53 = (this + *(*this - 24)), (*(v53[90].__r_.__value_.__l.__size_ + 1856)))
      {
        if ((v64 & 1) != 0 && *(this + 1136) <= 0)
        {
          *(this + 1136) = 1;
        }

        *(this + 1760) = 2;
        goto LABEL_129;
      }

      v63 = "Texture writes not supported in fragment shaders";
    }

    std::string::append(v53 + 69, v63);
    return 0;
  }

LABEL_127:
  if ((v2[2349] & 1) != 0 || v2[2348] == 1)
  {
LABEL_129:
    Operand = llvm::NamedMDNode::getOperand(*(v1 + 7));
    v55 = *(Operand + 8);
    if (Operand - 8 * v55 + 24 != Operand)
    {
      v56 = Operand;
      v57 = 24 - 8 * v55;
      while (!isStringMDNode(*(v56 + v57), "early_fragment_tests"))
      {
        v57 += 8;
        if (!v57)
        {
          goto LABEL_135;
        }
      }

      *(v1 + 1760) = 1;
      v58 = *(v1 + *(*v1 - 24) + 2136);
      llvm::Module::getOrInsertNamedMetadata();
      v59 = v1 + *(*v1 - 24);
      v60 = *(v59 + 270);
      v61 = *(v59 + 235);
      llvm::ConstantInt::get();
      llvm::ValueAsMetadata::get();
      llvm::MDTuple::getImpl();
      llvm::NamedMDNode::addOperand();
    }
  }

LABEL_135:
  if (*(v1 + 1760) == 2)
  {
    if ((v2[2339] & 1) == 0)
    {
      v2[2339] = 1;
      *(v1 + 1610) = 1;
    }

    *(v1 + 1609) = 0;
  }

  return 1;
}

char *llvm::PassInfoMixin<InitCompileAGPFragmentShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x52)
  {
    v1 = v0;
  }

  else
  {
    v1 = 82;
  }

  v2 = &aStringrefLlvmG_0[v1];
  v3 = 82 - v1;
  if ((82 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 82 - v1;
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

uint64_t AGCLLVMUserShader::setUniformAtomicsMode(AGCLLVMUserShader *this)
{
  v2 = *(this + *(*this - 24) + 2136);
  llvm::Module::getOrInsertNamedMetadata();
  v4 = 0x27C8D7000uLL;
  {
    v4 = 0x27C8D7000;
    if (v10)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v4 = 0x27C8D7000;
    }
  }

  if (*(v4 + 2944) == 1 && (Value = AGCEnv::getValue("AGC_DISABLE_ATOMIC_OPTIMIZATIONS", v3)) != 0 && *Value != 48 && atoi(Value))
  {
    v6 = *(this + *(*this - 24) + 2160);
  }

  else
  {
    v7 = *(this + *(*this - 24) + 2160);
  }

  llvm::MDString::get();
  v8 = *(this + *(*this - 24) + 2160);
  llvm::MDTuple::getImpl();
  return llvm::NamedMDNode::addOperand();
}

char *llvm::PassInfoMixin<ValidateMaxTTPTGFragShaderGen3Pass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x54)
  {
    v1 = v0;
  }

  else
  {
    v1 = 84;
  }

  v2 = &aStringrefLlvmG_3[v1];
  v3 = 84 - v1;
  if ((84 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 84 - v1;
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

char *llvm::PassInfoMixin<InitCompileAGPFragmentShaderGen3Pass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x56)
  {
    v1 = v0;
  }

  else
  {
    v1 = 86;
  }

  v2 = &aStringrefLlvmG_4[v1];
  v3 = 86 - v1;
  if ((86 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 86 - v1;
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

uint64_t *llvm::SmallVectorImpl<unsigned int>::assign(uint64_t *result, unint64_t a2, int a3)
{
  if (*(result + 3) < a2)
  {
    *(result + 2) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *result;
  v5 = result + 1;
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = *(result + 2);
  }

  if (v6)
  {
    v7 = (v6 + 3) & 0x1FFFFFFFCLL;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = (v3 + 8);
    v10 = 1;
    do
    {
      v11 = vdupq_n_s64(v10 - 1);
      v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_20E70C4F0)));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        *(v9 - 2) = a3;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        *(v9 - 1) = a3;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_20E70C4E0)))).i32[1])
      {
        *v9 = a3;
        v9[1] = a3;
      }

      v10 += 4;
      v9 += 4;
      v7 -= 4;
    }

    while (v7);
    v4 = *v5;
  }

  v13 = a2 - v4;
  if (a2 > v4)
  {
    v14 = 0;
    v15 = vdupq_n_s64(v13 - 1);
    v16 = (v3 + 4 * v4 + 8);
    do
    {
      v17 = vdupq_n_s64(v14);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_20E70C4F0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = a3;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = a3;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_20E70C4E0)))).i32[1])
      {
        *v16 = a3;
        v16[1] = a3;
      }

      v14 += 4;
      v16 += 4;
    }

    while (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v14);
  }

  *v5 = a2;
  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::setupFixedPRIDS(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2576))
  {
    goto LABEL_12;
  }

  v2 = a2;
  if (a2 == 2)
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    if (AGCEnv::isEnabled(void)::is_internal == 1)
    {
      Value = AGCEnv::getValue("AGX_G10_DISABLE_TILE_FRAGMENT_SYNC", a2);
      if (Value)
      {
        if (*Value != 48)
        {
          atoi(Value);
        }
      }
    }
  }

  v5 = *(a1 + 432);
  llvm::Module::getOrInsertNamedMetadata();
  v6 = *(a1 + 72);
  llvm::MDString::get();
  v7 = *(a1 + 72);
  llvm::MDString::get();
  v8 = *(a1 + 200);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v9 = *(a1 + 72);
  llvm::MDString::get();
  v10 = *(a1 + 200);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v11 = *(a1 + 72);
  llvm::MDString::get();
  v12 = *(a1 + 200);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v13 = *(a1 + 72);
  llvm::MDTuple::getImpl();
  llvm::NamedMDNode::addOperand();
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (v15 = AGCEnv::getValue("AGX_G10_DISABLE_TILE_FRAGMENT_SYNC", v14)) != 0 && *v15 != 48 && (v18 = atoi(v15), (v2 - 3) <= 3) && v18)
  {
    result = 0;
  }

  else
  {
LABEL_12:
    result = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}