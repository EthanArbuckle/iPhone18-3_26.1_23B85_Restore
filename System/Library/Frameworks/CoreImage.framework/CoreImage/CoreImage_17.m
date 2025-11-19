uint64_t CI::StitchableFunctionDAGDescriptor::get_argument_type()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 7;
  }

  else
  {
    return 11;
  }
}

void CI::StitchableFunctionDAGDescriptor::ArgumentInfo::add(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v17 = a3;
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if ((a2 - 4) < 2)
      {
        v14 = objc_opt_new();
        [v14 setByteOffset:a4];
        [v14 setDereference:a2 == 4];
        v11 = v14;
LABEL_19:
        [v11 setBindIndex:{a3, v14}];
        v12 = *(a1 + 16);
        v13 = v15;
LABEL_22:
        [v12 addObject:{v13, v15}];

        return;
      }

      if (a2 == 3)
      {
LABEL_18:
        v11 = objc_opt_new();
        v14 = v11;
        goto LABEL_19;
      }
    }

    else
    {
      if (a2 < 2)
      {
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(*(a1 + 48), &v17);
        v7 = objc_opt_new();
        [v7 setBindIndex:v17];
        [*(a1 + 16) addObject:v7];

        return;
      }

      if (a2 == 2)
      {
        ++**(a1 + 40);
        goto LABEL_18;
      }
    }

LABEL_25:
    abort();
  }

  if (a2 > 8)
  {
    if (a2 != 9 && a2 != 10)
    {
      goto LABEL_25;
    }

LABEL_21:
    v13 = objc_opt_new();
    v15 = v13;
    v12 = *(a1 + 16);
    goto LABEL_22;
  }

  if ((a2 - 7) >= 2)
  {
    if (a2 != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v8 = *(a1 + 16);
  v9 = [*(a1 + 24) objectAtIndexedSubscript:*(**(a1 + 32) + 4 * a3)];

  [v8 addObject:v9];
}

void *CI::MetalDAGProgram::MetalDAGProgram(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v15) = 0;
  v11 = CI::MetalMainProgram::MetalMainProgram(a1, a3, a2, 0, a5, 0, a6, a7, v15, a8);
  v11[22] = &unk_1F1038760;
  atomic_fetch_add(&dword_1ED7C47BC[74], 1u);
  *v11 = &unk_1F1038168;
  v11[13] = &unk_1F10381D8;
  v12 = *a4;
  v13 = *(a4 + 8);
  a1[22] = &unk_1F1038200;
  a1[23] = v12;
  a1[24] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v12 = a1[23];
  }

  (**v12)(v12);
  *(a1[23] + 32) = a1[16];
  a1[25] = *(a3 + 2040);
  return a1;
}

void sub_19CE8E3CC(_Unwind_Exception *a1)
{
  v5 = *(v1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(v1 + 22) = v2;
  atomic_fetch_add((v3 + 304), 0xFFFFFFFF);
  CI::MetalMainProgram::~MetalMainProgram(v1);
  _Unwind_Resume(a1);
}

void CI::MetalDAGProgram::~MetalDAGProgram(CI::MetalDAGProgram *this)
{
  *this = &unk_1F1038168;
  *(this + 13) = &unk_1F10381D8;
  *(this + 22) = &unk_1F1038200;
  v2 = *(this + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI15MetalDAGProgramD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  v3 = *(this + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 22) = &unk_1F1038760;
  atomic_fetch_add(&dword_1ED7C47BC[74], 0xFFFFFFFF);
  CI::MetalMainProgram::~MetalMainProgram(this);
}

{
  CI::MetalDAGProgram::~MetalDAGProgram(this);

  JUMPOUT(0x19EAF5590);
}

void ___ZN2CI15MetalDAGProgramD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  if (v2)
  {
    CFRelease(v2);
  }

  *(v1 + 168) = 0;
}

void non-virtual thunk toCI::MetalDAGProgram::~MetalDAGProgram(CI::MetalDAGProgram *this)
{
  CI::MetalDAGProgram::~MetalDAGProgram((this - 104));
}

{
  CI::MetalDAGProgram::~MetalDAGProgram((this - 176));
}

{
  CI::MetalDAGProgram::~MetalDAGProgram((this - 104));

  JUMPOUT(0x19EAF5590);
}

{
  CI::MetalDAGProgram::~MetalDAGProgram((this - 176));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::LegacyDAGDescriptor::print(id *this, __sFILE *__stream)
{
  v33 = *MEMORY[0x1E69E9840];
  fwrite("// DAG Functions\n", 0x11uLL, 1uLL, __stream);
  if ([this[11] count])
  {
    v4 = 0;
    v27 = this;
    do
    {
      fprintf(__stream, "#%zu: ", v4);
      v5 = [this[11] objectAtIndexedSubscript:v4];
      v6 = [v5 returnType];
      v7 = [v6 dataType];
      data_type_name = CI::get_data_type_name(v7, v8);
      v10 = *data_type_name;
      if (v10 == 78)
      {
        if (data_type_name[1] == 111)
        {
          fwrite("void ", 5uLL, 1uLL, __stream);
          goto LABEL_10;
        }
      }

      else if (v10 == 117 && data_type_name[1] == 110)
      {
        [v6 dataType];
        fprintf(__stream, "type%lu ");
        goto LABEL_10;
      }

      fprintf(__stream, "%s ");
LABEL_10:
      fprintf(__stream, "%s ", [objc_msgSend(v5 "name")]);
      v11 = this[5] + 24 * v4;
      v13 = *(v11 + 8);
      v12 = *(v11 + 16);
      fputc(40, __stream);
      if (v13)
      {
        v14 = 0;
        v15 = v12 + 8;
        while (1)
        {
          v16 = [objc_msgSend(objc_msgSend(v5 "arguments")];
          v17 = [v16 dataType];
          v19 = CI::get_data_type_name(v17, v18);
          if (*v19 == 117 && v19[1] == 110)
          {
            [v16 dataType];
            fprintf(__stream, "type%lu ");
          }

          else
          {
            fprintf(__stream, "%s ");
          }

          v20 = *(v15 - 8);
          if (v20 > 3)
          {
            break;
          }

          if (v20 <= 2)
          {
            goto LABEL_25;
          }

          fprintf(__stream, "Buffer[%zu]+%zu");
LABEL_26:
          if (v13 != 1)
          {
            fwrite(", ", 2uLL, 1uLL, __stream);
          }

          ++v14;
          v15 += 24;
          if (!--v13)
          {
            goto LABEL_29;
          }
        }

        if (v20 <= 5)
        {
          if (v20 == 4)
          {
            fputs("ThreadPositionInGrid", __stream);
          }

          else
          {
            fprintf(__stream, "#%zu");
          }

          goto LABEL_26;
        }

LABEL_25:
        fprintf(__stream, "%s[%zu]");
        goto LABEL_26;
      }

LABEL_29:
      fwrite(")\n", 2uLL, 1uLL, __stream);
      ++v4;
      this = v27;
    }

    while (v4 < [v27[11] count]);
  }

  if (this[2])
  {
    v21 = [this[2] performSelector:NSSelectorFromString(&cfstr_Newnamedconsta.isa)];
    if ([v21 count])
    {
      fputc(10, __stream);
      fwrite("// Function Constants\n", 0x16uLL, 1uLL, __stream);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v29;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v29 != v24)
            {
              objc_enumerationMutation(v21);
            }

            fprintf(__stream, "%s\n", [objc_msgSend(*(*(&v28 + 1) + 8 * i) "description")]);
          }

          v23 = [v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v23);
      }
    }
  }

  return fputc(10, __stream);
}

const char *CI::get_data_type_name(unint64_t this, MTLDataType a2)
{
  if (this > 0x3C)
  {
    return "unknown";
  }

  else
  {
    return off_1E75C62E8[this];
  }
}

void CI::MetalDAGProgram::compile(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v4 = ci_signpost_log_compile();
    v5 = a2 | (*(a1 + 48) << 32);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "compile_metal_dag", &unk_19CFBCBAE, v15, 2u);
      }
    }
  }

  TimerBase::TimerBase(v15, *(a1 + 48), a2, "compile_metal_dag", 26);
  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v8 = *(a1 + 16);
  if (CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE() == 1 && *(*(a1 + 184) + 8) != 1 || CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE() == 2 && (*(*(a1 + 184) + 8) & 1) != 0 || CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE() == 3 && *(*(a1 + 184) + 9) != 1 || CI_HARVEST_BIN_ARCHIVE_PROGRAM_TYPE() == 4 && *(*(a1 + 184) + 9) == 1)
  {
    v8 = 0;
  }

  v9 = *(a1 + 184);
  v10 = *(a1 + 144);
  v11 = *(a1 + 56);
  v12 = *(a1 + 200);
  v13 = *(a1 + 160);
  if (*(a1 + 152) == 1)
  {
    v14 = (*(*v9 + 80))(v9, v10, v11, v12, v13, v8, *(a1 + 156));
  }

  else
  {
    v14 = (*(*v9 + 88))(v9, v10, v11, v12, v13, v8);
  }

  *(a1 + 168) = v14;
  atomic_store(COERCE_UNSIGNED_INT64((std::chrono::steady_clock::now().__d_.__rep_ - v7.__d_.__rep_) / 1000000000.0), (a1 + 24));
  CI::MetalDAGProgram::compile(CI::NodeIndex)::SignpostTimer::~SignpostTimer(v15);
}

void CI::MetalDAGProgram::compile(CI::NodeIndex)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_compile();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "compile_metal_dag", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

uint64_t CI::MetalDAGHelper::get_precompiled_kernel(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  switch(v3)
  {
    case 1:
      return CI::PrecompiledKernels::new_function(*(*(a1 + 24) + 2016), a2, a3);
    case 3:
      v4 = *(*(a1 + 24) + 2024);
      a3 = 0;
      return CI::PrecompiledKernels::new_specialzied_function(v4, a2, a3);
    case 2:
      v4 = *(*(a1 + 24) + 2024);
      return CI::PrecompiledKernels::new_specialzied_function(v4, a2, a3);
  }

  return 0;
}

uint64_t CI::PrecompiledKernels::new_specialzied_function(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_sync(*(a1 + 48), &__block_literal_global_159);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(a1 + 8 * a3 + 16);
  result = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      result = [*(*(&v11 + 1) + 8 * v10) newFunctionWithName:objc_msgSend(MEMORY[0x1E696AEC0] constantValues:"stringWithUTF8String:" error:{a2), *(a1 + 8), 0}];
      if (result)
      {
        break;
      }

      if (v8 == ++v10)
      {
        result = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v8 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t CI::PrecompiledKernels::new_function(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_sync(*(a1 + 48), &__block_literal_global_161);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(a1 + 8 * a3 + 16);
  result = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v12;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v12 != v9)
      {
        objc_enumerationMutation(v6);
      }

      result = [*(*(&v11 + 1) + 8 * v10) newExternFunctionWithName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a2)}];
      if (result)
      {
        break;
      }

      if (v8 == ++v10)
      {
        result = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v8 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t CI::MetalDAGHelper::new_function_with_name(CI::MetalDAGHelper *this, const char *a2, unsigned __int8 *a3)
{
  if (*(*(this + 3) + 43) == 1)
  {
    result = CI::MetalDAGHelper::get_precompiled_kernel(this, a2, 1u);
    if (a3)
    {
      if (result)
      {
        *a3 |= 7u;
      }
    }
  }

  else
  {

    return CI::MetalDAGHelper::get_precompiled_kernel(this, a2, 0);
  }

  return result;
}

void CI::MetalDAGHelper::add_function_with_name(CI::MetalDAGHelper *this, const char *a2, unsigned __int8 *a3)
{
  if (*(this + 8))
  {
    if (*(this + 9))
    {
      v4 = CI::MetalDAGHelper::new_function_with_name(this, a2, a3);
      if (v4)
      {
        v5 = v4;
        (*(**(this + 1) + 112))(*(this + 1));
      }
    }
  }
}

uint64_t CI::MetalDAGHelper::add_function_for_kernel(CI::MetalDAGHelper *this, const CI::Kernel *a2)
{
  if (!*(this + 8) || !*(this + 9))
  {
    return 0;
  }

  v4 = *(a2 + 153);
  v9 = *(a2 + 153);
  if (*(a2 + 4) == 3)
  {
    v4 = v4 | 2;
    v9 = v4;
  }

  v5 = (*(*a2 + 72))(a2);
  if (v5 && (unique_function = CI::MetalDAGHelper::get_unique_function(this, v5)) != 0)
  {
    v7 = unique_function;
    (*(**(this + 1) + 120))(*(this + 1), unique_function);
  }

  else
  {
    CI::MetalDAGHelper::add_function_with_name(this, *(a2 + 3), &v9);
    return v9;
  }

  return v4;
}

void *CI::MetalDAGHelper::get_unique_function(CI::MetalDAGHelper *this, const CI::MetalKernel *a2)
{
  v4 = *(*(this + 3) + 2048);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(this + 25) objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(a2 + 1))}];
  v11 = objc_opt_new();
  [v11 setBinaryArchives:v5];
  if (v6)
  {
    if ([v6 isEqualToNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(a2 + 5))}])
    {
      v7 = CI::MetalKernel::function(a2, &v11);
    }

    else
    {
      v8 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{*(a2 + 1)), "stringByAppendingFormat:", @"_%d", 0}];
      v9 = 1;
      while ([*(this + 25) objectForKey:v8])
      {
        v8 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithUTF8String:{*(a2 + 1)), "stringByAppendingFormat:", @"_%d", v9}];
        v9 = (v9 + 1);
      }

      [v11 setSpecializedName:v8];
      v7 = CI::MetalKernel::function(a2, &v11);
      [*(this + 25) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", CI::mtl_func_hash(v7)), objc_msgSend(v7, "name")}];
    }
  }

  else
  {
    v7 = CI::MetalKernel::function(a2, &v11);
    [*(this + 25) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", CI::mtl_func_hash(v7)), objc_msgSend(v7, "name")}];
  }

  return v7;
}

unint64_t CI::MetalDAGHelper::add_argument_type_and_offset(uint64_t a1, int a2, void *a3)
{
  if (a3 && (*(*a3 + 16))(a3) == 65)
  {
    next_offset = (*(a1 + 96) + 15) & 0xFFFFFFFFFFFFFFF0;
    Length = a3[3];
    if (Length)
    {
      Length = CFDataGetLength(Length);
    }

    *(a1 + 96) = Length + next_offset;
  }

  else
  {
    next_offset = CI::MetalMainProgram::get_next_offset(a2, (a1 + 96));
  }

  v8 = *(a1 + 64);
  if (v8 && *(a1 + 72))
  {
    CI::SerialValArray<int>::append(v8, a2);
    CI::SerialValArray<int>::append(*(a1 + 72), next_offset);
  }

  return next_offset;
}

void CI::MetalDAGHelper::add_arguments_for_image_node(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  *a2 = v3;
  operator new();
}

uint64_t CI::MetalDAGHelper::add_early_out_function_info(uint64_t this, uint64_t a2)
{
  if (*(this + 64))
  {
    v2 = this;
    if (*(this + 72))
    {
      v4 = (*(**(this + 8) + 8))(*(this + 8), 2);
      (**v4)();
      (**v4)(v4, 4, 0, a2);
      v5 = *(**(v2 + 8) + 56);

      return v5();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_init_destcoord_function_info(uint64_t this, uint64_t a2)
{
  if (*(this + 64))
  {
    v2 = this;
    if (*(this + 72))
    {
      v4 = (*(**(this + 8) + 8))(*(this + 8), 3);
      (**v4)();
      (**v4)(v4, 4, 0, 0);
      (**v4)(v4, 4, 0, a2);
      v5 = *(**(v2 + 8) + 48);

      return v5();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_read_pixel_function_info(uint64_t this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(this + 64))
  {
    v5 = this;
    if (*(this + 72))
    {
      v9 = (*(**(this + 8) + 8))(*(this + 8), 4);
      (**v9)();
      (**v9)(v9, 3, a3, 0);
      (**v9)(v9, 7, a4, 0);
      (**v9)(v9, 4, 0, a5);
      v10 = *(**(v5 + 8) + 48);

      return v10();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_read_pixel_420_function_info(uint64_t this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 64))
  {
    v8 = this;
    if (*(this + 72))
    {
      v15 = (*(**(this + 8) + 8))(*(this + 8), 7);
      (**v15)();
      (**v15)(v15, 3, a3, 0);
      (**v15)(v15, 7, a4, 0);
      (**v15)(v15, 4, 0, a5);
      (**v15)(v15, 0, a6, 0);
      (**v15)(v15, 3, a7, 0);
      (**v15)(v15, 4, 0, a8);
      v16 = *(**(v8 + 8) + 48);

      return v16();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_colour_inout_function_info(uint64_t this)
{
  if (*(this + 64))
  {
    v1 = this;
    if (*(this + 72))
    {
      v2 = (*(**(this + 8) + 8))(*(this + 8), 1);
      (**v2)();
      v3 = *(**(v1 + 8) + 48);

      return v3();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_write_pixel_function_info(uint64_t this, uint64_t a2)
{
  if (*(this + 64))
  {
    v2 = this;
    if (*(this + 72))
    {
      v4 = (*(**(this + 8) + 8))(*(this + 8), 4);
      (**v4)();
      (**v4)(v4, 7, a2, 0);
      (**v4)(v4, 6, 0, 0);
      (**v4)(v4, 4, 0, 0);
      v5 = *(**(v2 + 8) + 48);

      return v5();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_write_block_function_info(uint64_t this, uint64_t a2)
{
  if (*(this + 64))
  {
    v2 = this;
    if (*(this + 72))
    {
      v4 = (*(**(this + 8) + 8))(*(this + 8), 4);
      (**v4)();
      (**v4)(v4, 7, a2, 0);
      (**v4)(v4, 9, 0, 0);
      (**v4)(v4, 4, 0, 0);
      v5 = *(**(v2 + 8) + 48);

      return v5();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_group_write_function_info(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 64))
  {
    v4 = this;
    if (*(this + 72))
    {
      v8 = (*(**(this + 8) + 8))(*(this + 8), 5);
      (**v8)();
      (**v8)(v8, 7, a2, 0);
      (**v8)(v8, 7, a3, 0);
      (**v8)(v8, 4, 0, 0);
      (**v8)(v8, 4, 0, a4);
      v9 = *(**(v4 + 8) + 48);

      return v9();
    }
  }

  return this;
}

uint64_t CI::MetalDAGHelper::add_function_info(uint64_t a1, uint64_t a2, CI::ColorKernelNode *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = *(a3 + 6);
  if ((*(*v12 + 16))(v12) != 70)
  {
    (*(*v12 + 16))(v12);
  }

  if (*(v12 + 12) == 1)
  {
    v13 = CI::KernelArguments::count((v12 + 136));
  }

  else
  {
    v13 = *(v12 + 20);
  }

  if (*(a1 + 64) && *(a1 + 72))
  {
    v14 = (*(**(a1 + 8) + 8))(*(a1 + 8), v13);
  }

  else
  {
    v14 = 0;
  }

  for (i = 0; ; ++i)
  {
    v16 = *(v12 + 12) == 1 ? CI::KernelArguments::count((v12 + 136)) : *(v12 + 20);
    if (i >= v16)
    {
      break;
    }

    v17 = CI::ColorKernelNode::kernel_argument_type(a3, i);
    v18 = v17;
    if (v17 <= 35)
    {
      if (v17 > 29)
      {
        if (v17 == 30)
        {
          if (!v14)
          {
            continue;
          }

          v21 = **v14;
          v22 = v14;
          v23 = 7;
          v20 = a5;
          goto LABEL_50;
        }

        if (v17 == 35)
        {
          if (!v14)
          {
            continue;
          }

          v21 = **v14;
          v22 = v14;
          v23 = 6;
          goto LABEL_39;
        }
      }

      else if ((v17 - 1) < 2 || v17 == 4)
      {
        continue;
      }

LABEL_42:
      CI::KernelArguments::is_uniform(v17);
      if ((a7 & 4) != 0 && *(v12 + 158) == 1)
      {
        if (v18 > 7)
        {
          if (v18 == 8 || v18 == 27)
          {
            v18 = 15;
          }
        }

        else if (v18 == 6)
        {
          v18 = 13;
        }

        else if (v18 == 7)
        {
          v18 = 14;
        }
      }

      argument = CI::ColorKernelNode::get_argument(a3, i);
      CI::SerialObjectPtrArray::append(a4, argument);
      v24 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, v18, argument);
      if (v18 == 29)
      {
        if (v14)
        {
          v21 = **v14;
          v22 = v14;
          v23 = 5;
          goto LABEL_62;
        }
      }

      else if (v14)
      {
        v21 = **v14;
        v22 = v14;
        v23 = 4;
LABEL_62:
        v20 = 0;
LABEL_51:
        v21(v22, v23, v20, v24);
        continue;
      }

      continue;
    }

    if (v17 > 37)
    {
      if (v17 == 38)
      {
        if (!v14)
        {
          continue;
        }

        v21 = **v14;
        v22 = v14;
        v23 = 2;
        goto LABEL_39;
      }

      if (v17 != 39)
      {
        goto LABEL_42;
      }

      if (*(v12 + 159) != 1)
      {
        v20 = 0;
        if (!v14)
        {
          continue;
        }

LABEL_49:
        v21 = **v14;
        v22 = v14;
        v23 = 2;
        goto LABEL_50;
      }

      v20 = *(a1 + 80);
      *(a1 + 80) = v20 + 1;
      if (v14)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v17 == 36)
      {
        if (!v14)
        {
          continue;
        }

        v21 = **v14;
        v22 = v14;
        v23 = 4;
LABEL_39:
        v20 = 0;
LABEL_50:
        v24 = 0;
        goto LABEL_51;
      }

      v19 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
      if (v14)
      {
        (**v14)(v14, 4, 0, v19);
      }

      if (a4)
      {
        CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
      }
    }
  }

  v26 = *(**(a1 + 8) + 48);

  return v26();
}

uint64_t CI::MetalDAGHelper::add_function_info(uint64_t a1, CI::SerialStringArray **a2, const CI::Kernel **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, unsigned __int8 a9, void *a10, char a11)
{
  v15 = a3;
  v18 = a3[6];
  if ((*(*v18 + 16))(v18) != 70)
  {
    (*(*v18 + 16))(v18);
  }

  if (*(v18 + 12) == 1)
  {
    v19 = CI::KernelArguments::count((v18 + 136));
  }

  else
  {
    v19 = *(v18 + 5);
  }

  v20 = v19;
  if (*(a1 + 32) == 1)
  {
    for (i = 0; ; ++i)
    {
      v22 = *(v18 + 12) == 1 ? CI::KernelArguments::count((v18 + 136)) : *(v18 + 5);
      if (i >= v22)
      {
        break;
      }

      if (CI::ColorKernelNode::kernel_argument_type(v15, i) == 31)
      {
        v20 += 5;
      }
    }
  }

  v89 = a2;
  if (*(a1 + 64) && *(a1 + 72))
  {
    v23 = (*(**(a1 + 8) + 8))(*(a1 + 8), v20);
  }

  else
  {
    v23 = 0;
  }

  v24 = 0;
  v93 = 0;
  v90 = a6 + 1;
  v91 = (a1 + 136);
  v86 = a1;
  v87 = &a8[a6];
  v83 = &a8[a6 + 3];
  v92 = v15;
  v84 = a5;
  v85 = a4;
  while (1)
  {
    v25 = *(v18 + 12) == 1 ? CI::KernelArguments::count((v18 + 136)) : *(v18 + 5);
    if (v24 >= v25)
    {
      break;
    }

    v26 = CI::ColorKernelNode::kernel_argument_type(v15, v24);
    v27 = v26;
    if (v26 <= 32)
    {
      if (v26 <= 29)
      {
        switch(v26)
        {
          case 1:
            goto LABEL_35;
          case 2:
            goto LABEL_179;
          case 4:
LABEL_35:
            argument = CI::ColorKernelNode::get_argument(v15, v24);
            v33 = argument;
            if (v27 == 4)
            {
              (*(*argument + 240))(argument);
              CI::Node::rois_count(v33);
              __p[0] = CI::hash_image_node_id(v33, 0);
              v97.__r_.__value_.__r.__words[0] = __p;
              v34 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 176, __p);
              if (v23)
              {
                (**v23)(v23, 0, v34[5], 0);
              }

LABEL_178:
              ++v93;
              goto LABEL_179;
            }

            a8[v90] = v93 + 48;
            v87[2] = 0;
            v46 = CI::replaceWithLeaf(v89, (a8 + 1), argument, v32);
            v47 = CI::hash_dag_node_id(v46, a7, a8);
            if ((*(*v46 + 240))(v46))
            {
              v48 = v83;
              do
              {
                v49 = (*(*v46 + 48))(v46, 0);
                *(v48 - 1) = 48;
                v46 = CI::replaceWithLeaf(v89, (a8 + 1), v49, v50);
                v47 = CI::hash_dag_node_id(v46, v47, a8);
                ++v48;
              }

              while (((*(*v46 + 240))(v46) & 1) != 0);
            }

            v51 = *v91;
            v15 = v92;
            a1 = v86;
            if (*v91)
            {
              v52 = v91;
              do
              {
                v53 = v51[4];
                v54 = v53 >= v47;
                v55 = v53 < v47;
                if (v54)
                {
                  v52 = v51;
                }

                v51 = v51[v55];
              }

              while (v51);
              if (v52 != v91 && v47 >= v52[4])
              {
                goto LABEL_168;
              }
            }

            v96 = v47;
            __p[0] = &v96;
            v56 = std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 19), &v96);
            v57 = v56;
            if (*(v56 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v97, v56[5], v56[6]);
            }

            else
            {
              v97 = *(v56 + 5);
            }

            std::vector<unsigned long>::vector[abi:nn200100](v98, v57 + 8);
            v99 = *(v57 + 88);
            if ((a11 & 1) == 0)
            {
              if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v61 = &v97;
              }

              else
              {
                v61 = v97.__r_.__value_.__r.__words[0];
              }

              CI::MetalDAGHelper::add_function_with_name(v86, v61, 0);
              if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) == 14)
                {
                  v62 = &v97;
                  goto LABEL_146;
                }

                goto LABEL_150;
              }

              if (v97.__r_.__value_.__l.__size_ != 14)
              {
                goto LABEL_150;
              }

              v62 = v97.__r_.__value_.__r.__words[0];
LABEL_146:
              v68 = v62->__r_.__value_.__r.__words[0];
              v69 = *(v62->__r_.__value_.__r.__words + 6);
              if (v68 == 0x646165725F69635FLL && v69 == 0x6C657869705F6461)
              {
                CI::MetalDAGHelper::add_read_pixel_function_info(v86, *v98[0], *(v98[0] + 1), *(v98[0] + 2), *(v98[0] + 3));
              }

              else
              {
LABEL_150:
                CI::MetalDAGHelper::add_read_pixel_420_function_info(v86, *v98[0], *(v98[0] + 1), *(v98[0] + 2), *(v98[0] + 3), *(v98[0] + 4), *(v98[0] + 5), *(v98[0] + 6));
              }

              v71 = (*a10)++;
              v96 = v47;
              __p[0] = &v96;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96) + 20) = v71;
              if (v99 == 1)
              {
                CI::MetalDAGHelper::add_function_with_name(v86, "_ci_srgb_to_linear", 0);
                v96 = v47;
                __p[0] = &v96;
                std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96);
                CI::MetalDAGHelper::add_colour_inout_function_info(v86);
                v72 = (*a10)++;
                v96 = v47;
                __p[0] = &v96;
                *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96) + 20) = v72;
              }

              v96 = v47;
              __p[0] = &v96;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96) + 24) = 0;
LABEL_164:
              __p[0] = v47;
              std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__erase_unique<unsigned long long>(v86 + 19, __p);
              if (v98[0])
              {
                v98[1] = v98[0];
                operator delete(v98[0]);
              }

              if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v97.__r_.__value_.__l.__data_);
              }

LABEL_168:
              if (a11)
              {
                __p[0] = v47;
                v97.__r_.__value_.__r.__words[0] = __p;
                if (!*(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 24))
                {
                  CI::MetalDAGHelper::add_function_with_name(v86, "_ci_float_to_half", 0);
                  __p[0] = v47;
                  v97.__r_.__value_.__r.__words[0] = __p;
                  std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p);
                  CI::MetalDAGHelper::add_colour_inout_function_info(v86);
                  v80 = (*a10)++;
                  __p[0] = v47;
                  v97.__r_.__value_.__r.__words[0] = __p;
                  *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 24) = v80;
                  __p[0] = v47;
                  v97.__r_.__value_.__r.__words[0] = __p;
                  *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 20) = 0;
                }

                __p[0] = v47;
                v97.__r_.__value_.__r.__words[0] = __p;
                v79 = *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 24);
              }

              else
              {
                __p[0] = v47;
                v97.__r_.__value_.__r.__words[0] = __p;
                if (!*(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 20))
                {
                  CI::MetalDAGHelper::add_function_with_name(v86, "_ci_half_to_float", 0);
                  __p[0] = v47;
                  v97.__r_.__value_.__r.__words[0] = __p;
                  std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p);
                  CI::MetalDAGHelper::add_colour_inout_function_info(v86);
                  v78 = (*a10)++;
                  __p[0] = v47;
                  v97.__r_.__value_.__r.__words[0] = __p;
                  *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 20) = v78;
                  __p[0] = v47;
                  v97.__r_.__value_.__r.__words[0] = __p;
                  *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 24) = 0;
                }

                __p[0] = v47;
                v97.__r_.__value_.__r.__words[0] = __p;
                v79 = *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), __p) + a9 + 20);
              }

              a5 = v84;
              if (v23)
              {
                (**v23)(v23, 7, v79, 0);
              }

              a8[v90] = 0;
              a4 = v85;
              goto LABEL_178;
            }

            if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v97.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v97.__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:nn200100](__p, size + 2);
            if (v95 >= 0)
            {
              v64 = __p;
            }

            else
            {
              v64 = __p[0];
            }

            if (size)
            {
              if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v65 = &v97;
              }

              else
              {
                v65 = v97.__r_.__value_.__r.__words[0];
              }

              memmove(v64, v65, size);
            }

            strcpy(v64 + size, "_h");
            if (v95 >= 0)
            {
              v66 = __p;
            }

            else
            {
              v66 = __p[0];
            }

            CI::MetalDAGHelper::add_function_with_name(v86, v66, 0);
            v15 = v92;
            if (v95 < 0)
            {
              operator delete(__p[0]);
            }

            if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) == 14)
              {
                v67 = &v97;
                goto LABEL_156;
              }

              goto LABEL_160;
            }

            if (v97.__r_.__value_.__l.__size_ != 14)
            {
              goto LABEL_160;
            }

            v67 = v97.__r_.__value_.__r.__words[0];
LABEL_156:
            v73 = v67->__r_.__value_.__r.__words[0];
            v74 = *(v67->__r_.__value_.__r.__words + 6);
            if (v73 == 0x646165725F69635FLL && v74 == 0x6C657869705F6461)
            {
              CI::MetalDAGHelper::add_read_pixel_function_info(v86, *v98[0], *(v98[0] + 1), *(v98[0] + 2), *(v98[0] + 3));
            }

            else
            {
LABEL_160:
              CI::MetalDAGHelper::add_read_pixel_420_function_info(v86, *v98[0], *(v98[0] + 1), *(v98[0] + 2), *(v98[0] + 3), *(v98[0] + 4), *(v98[0] + 5), *(v98[0] + 6));
            }

            v76 = (*a10)++;
            v96 = v47;
            __p[0] = &v96;
            *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96) + 24) = v76;
            if (v99 == 1)
            {
              CI::MetalDAGHelper::add_function_with_name(v86, "_ci_srgb_to_linear_h", 0);
              v96 = v47;
              __p[0] = &v96;
              std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96);
              CI::MetalDAGHelper::add_colour_inout_function_info(v86);
              v77 = (*a10)++;
              v96 = v47;
              __p[0] = &v96;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96) + 24) = v77;
            }

            v96 = v47;
            __p[0] = &v96;
            *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v86 + 16), &v96) + 20) = 0;
            goto LABEL_164;
        }

        goto LABEL_98;
      }

      if ((v26 - 31) >= 2)
      {
        if (v26 == 30)
        {
          if (!v23)
          {
            goto LABEL_179;
          }

          v28 = **v23;
          v29 = v23;
          v30 = 7;
          v44 = a5;
LABEL_96:
          v59 = 0;
          goto LABEL_97;
        }

        goto LABEL_98;
      }

      if ((*(a1 + 32) & 0xFFFFFFFE) == 2)
      {
        if (*(a1 + 64) && *(a1 + 72) && (v35 = (*(**(a1 + 8) + 8))(*(a1 + 8), 6)) != 0)
        {
          v36 = v35;
          (**v35)(v35, 8, a5, 0);
          (**v36)(v36, 6, 0, 0);
          (**v36)(v36, 4, 0, 0);
          v37 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
          (**v36)(v36, 4, 0, v37);
          v38 = 0;
          if (!a4)
          {
LABEL_106:
            if ((v38 & 1) == 0)
            {
              (**v36)(v36, 2, 0, 0);
            }

            if (*(v18 + 159) == 1)
            {
              v60 = *(a1 + 80);
              *(a1 + 80) = v60 + 1;
              if (v38)
              {
LABEL_113:
                v43 = (*(**(a1 + 8) + 32))(*(a1 + 8), v36, v27 == 32);
                if (!v23)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }
            }

            else
            {
              v60 = 0;
              if (v38)
              {
                goto LABEL_113;
              }
            }

            (**v36)(v36, 2, v60, 0);
            goto LABEL_113;
          }
        }

        else
        {
          CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
          v36 = 0;
          v38 = 1;
          if (!a4)
          {
            goto LABEL_106;
          }
        }

        CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
        goto LABEL_106;
      }

      if (v23)
      {
        (**v23)(v23, 8, a5, 0);
        (**v23)(v23, 6, 0, 0);
        (**v23)(v23, 4, 0, 0);
        v58 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
        (**v23)(v23, 4, 0, v58);
        if (a4)
        {
          goto LABEL_88;
        }
      }

      else
      {
        CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
        if (a4)
        {
LABEL_88:
          CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
        }
      }

      if (v23)
      {
        (**v23)(v23, 2, 0, 0);
      }

      goto LABEL_91;
    }

    if (v26 <= 36)
    {
      if ((v26 - 33) < 2)
      {
        if (*(a1 + 64) && *(a1 + 72) && (v39 = (*(**(a1 + 8) + 8))(*(a1 + 8), 5)) != 0)
        {
          v40 = v39;
          (**v39)(v39, 7, a5, 0);
          (**v40)(v40, 6, 0, 0);
          (**v40)(v40, 4, 0, 0);
          v41 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
          (**v40)(v40, 4, 0, v41);
          v42 = 0;
          if (!a4)
          {
LABEL_56:
            if ((v42 & 1) == 0)
            {
              (**v40)(v40, 2, 0, 0);
            }

            v43 = (*(**(a1 + 8) + 40))(*(a1 + 8), v40, v27 == 34);
            if (!v23)
            {
              goto LABEL_60;
            }

LABEL_59:
            ((*v23)[1])(v23, v43);
LABEL_60:
            v15 = v92;
            goto LABEL_179;
          }
        }

        else
        {
          CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
          v40 = 0;
          v42 = 1;
          if (!a4)
          {
            goto LABEL_56;
          }
        }

        CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
        goto LABEL_56;
      }

      if (v26 == 35)
      {
        if (!v23)
        {
          goto LABEL_179;
        }

        v28 = **v23;
        v29 = v23;
        v30 = 6;
        goto LABEL_72;
      }

      if (v26 == 36)
      {
        if (!v23)
        {
          goto LABEL_179;
        }

        v28 = **v23;
        v29 = v23;
        v30 = 4;
        goto LABEL_72;
      }

LABEL_98:
      CI::KernelArguments::is_uniform(v26);
      if ((a11 & 4) != 0 && *(v18 + 158) == 1)
      {
        if (v27 > 7)
        {
          if (v27 == 8 || v27 == 27)
          {
            v27 = 15;
          }
        }

        else if (v27 == 6)
        {
          v27 = 13;
        }

        else if (v27 == 7)
        {
          v27 = 14;
        }
      }

      v81 = CI::ColorKernelNode::get_argument(v15, v24);
      CI::SerialObjectPtrArray::append(a4, v81);
      v59 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, v27, v81);
      if (v27 == 29)
      {
        if (v23)
        {
          v28 = **v23;
          v29 = v23;
          v30 = 5;
          goto LABEL_191;
        }
      }

      else if (v23)
      {
        v28 = **v23;
        v29 = v23;
        v30 = 4;
LABEL_191:
        v44 = 0;
LABEL_97:
        v28(v29, v30, v44, v59);
        goto LABEL_179;
      }

      goto LABEL_179;
    }

    if (v26 == 37)
    {
      v45 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
      if (v23)
      {
        (**v23)(v23, 4, 0, v45);
      }

      if (a4)
      {
        CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
      }

      goto LABEL_179;
    }

    if (v26 == 38)
    {
      if (!v23)
      {
        goto LABEL_179;
      }

      v28 = **v23;
      v29 = v23;
      v30 = 2;
LABEL_72:
      v44 = 0;
      goto LABEL_96;
    }

    if (v26 != 39)
    {
      goto LABEL_98;
    }

LABEL_91:
    if (*(v18 + 159) != 1)
    {
      v44 = 0;
      if (!v23)
      {
        goto LABEL_179;
      }

LABEL_95:
      v28 = **v23;
      v29 = v23;
      v30 = 2;
      goto LABEL_96;
    }

    v44 = *(a1 + 80);
    *(a1 + 80) = v44 + 1;
    if (v23)
    {
      goto LABEL_95;
    }

LABEL_179:
    ++v24;
  }

  CI::MetalDAGHelper::add_function_for_kernel(a1, v18);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), v23);
}

uint64_t CI::MetalDAGHelper::add_function_info(CI::MetalDAGHelper *this, const CI::ProgramNode *a2, const CI::GeneralKernelNode *a3, CI::Object **a4, uint64_t a5, unint64_t a6)
{
  v10 = *(a3 + 6);
  (*(*v10 + 16))(v10);
  if (*(v10 + 12) == 1)
  {
    v11 = CI::KernelArguments::count((v10 + 136));
  }

  else
  {
    v11 = *(v10 + 20);
  }

  v12 = v11;
  if (*(this + 8) == 1)
  {
    v13 = v11 + CI::Kernel::num_sampler_arguments(v10);
    v14 = v13 + CI::Kernel::num_sampler_arguments(v10);
    v12 = v14 + CI::Kernel::num_sampler_arguments(v10);
    if (*(this + 8) == 1)
    {
      for (i = 0; ; ++i)
      {
        v16 = *(v10 + 12) == 1 ? CI::KernelArguments::count((v10 + 136)) : *(v10 + 20);
        if (i >= v16)
        {
          break;
        }

        if (CI::ColorKernelNode::kernel_argument_type(a3, i) == 31)
        {
          v12 += 5;
        }
      }
    }
  }

  if (*(this + 8) && *(this + 9))
  {
    v17 = (*(**(this + 1) + 8))(*(this + 1), v12);
    if (*(this + 8) && *(this + 9))
    {
      (*(**(this + 1) + 8))(*(this + 1), v12);
    }
  }

  else
  {
    v17 = 0;
  }

  for (j = 0; ; ++j)
  {
    v19 = *(v10 + 12) == 1 ? CI::KernelArguments::count((v10 + 136)) : *(v10 + 20);
    if (j >= v19)
    {
      break;
    }

    v20 = CI::ColorKernelNode::kernel_argument_type(a3, j);
    v21 = v20;
    if (v20 <= 32)
    {
      if (v20 <= 29)
      {
        switch(v20)
        {
          case 1:
            continue;
          case 2:
            v36 = *(a3 + 7);
            if (j > 9)
            {
              v37 = (*(v36 + 16) + 8 * j - 80);
            }

            else
            {
              v37 = (v36 + 8 * j + 24);
            }

            v43 = *v37;
            v58.f64[0] = 0.0;
            v57 = 0x3FF0000000000000uLL;
            v58.f64[1] = 1.0;
            v59 = 0uLL;
            v44 = CI::ProgramNode::child_depth(a2, 0);
            if (v44 - 1 > a6)
            {
              v45 = ~a6 + v44;
              do
              {
                if ((*(*v43 + 16))(v43) == 34)
                {
                  v46 = vaddq_f64(v59, vmlaq_n_f64(vmulq_n_f64(v58, v43[12]), v57, v43[11]));
                  v47 = vmlaq_n_f64(vmulq_n_f64(v58, v43[10]), v57, v43[9]);
                  v57 = vmlaq_n_f64(vmulq_n_f64(v58, v43[8]), v57, v43[7]);
                  v58 = v47;
                  v59 = v46;
                }

                else
                {
                  v48 = (*(*v43 + 16))(v43);
                  v49 = *v43;
                  if (v48 == 53)
                  {
                    (*(v49 + 424))(v43);
                  }

                  else if ((*(v49 + 16))(v43) != 36)
                  {
                    (*(*v43 + 16))(v43);
                  }
                }

                v43 = (*(*v43 + 48))(v43, 0);
                --v45;
              }

              while (v45);
            }

            v50 = (*(*a2 + 48))(a2, 0);
            if (*(*v50 + 16))(v50) == 60 && (*(v50 + 144))
            {
              v51 = *(v50 + 140);
              if (CI_INTERMEDIATE_SRGB_TEXTURES() && (*(**(this + 3) + 592))(*(this + 3), v51, 1))
              {
                *(v50 + 144) |= 4u;
              }

              else
              {
                v53 = CI::name_for_format(v51);
                x_log("Cannot use sRGB texture binding with format %s for sampler %d in kernel '%s'.\n", v53, j, *(v10 + 24));
              }
            }

            operator new();
          case 4:
            continue;
        }

        goto LABEL_85;
      }

      if ((v20 - 31) >= 2)
      {
        if (v20 == 30)
        {
          if (!v17)
          {
            continue;
          }

          v22 = **v17;
          v23 = v17;
          v24 = 7;
          v34 = a5;
          goto LABEL_83;
        }

LABEL_85:
        CI::KernelArguments::is_uniform(v20);
        v40 = *(a3 + 7);
        if (j > 9)
        {
          v41 = (*(v40 + 16) + 8 * j - 80);
        }

        else
        {
          v41 = (v40 + 8 * j + 24);
        }

        v52 = *v41;
        CI::SerialObjectPtrArray::append(a4, *v41);
        v39 = CI::MetalDAGHelper::add_argument_type_and_offset(this, v21, v52);
        if (v21 == 29)
        {
          if (v17)
          {
            v22 = **v17;
            v23 = v17;
            v24 = 5;
            goto LABEL_119;
          }
        }

        else if (v17)
        {
          v22 = **v17;
          v23 = v17;
          v24 = 4;
LABEL_119:
          v34 = 0;
LABEL_84:
          v22(v23, v24, v34, v39);
          continue;
        }

        continue;
      }

      if ((*(this + 8) & 0xFFFFFFFE) == 2)
      {
        if (*(this + 8) && *(this + 9) && (v25 = (*(**(this + 1) + 8))(*(this + 1), 6)) != 0)
        {
          v26 = v25;
          (**v25)(v25, 8, a5, 0);
          (**v26)(v26, 6, 0, 0);
          (**v26)(v26, 4, 0, 0);
          v27 = CI::MetalDAGHelper::add_argument_type_and_offset(this, 37, 0);
          (**v26)(v26, 4, 0, v27);
          v28 = 0;
          if (!a4)
          {
LABEL_89:
            if ((v28 & 1) == 0)
            {
              (**v26)(v26, 2, 0, 0);
            }

            if (*(v10 + 159) == 1)
            {
              v42 = *(this + 10);
              *(this + 10) = v42 + 1;
              if (v28)
              {
LABEL_111:
                v33 = (*(**(this + 1) + 32))(*(this + 1), v26, v21 == 32);
                if (!v17)
                {
                  continue;
                }

LABEL_112:
                ((*v17)[1])(v17, v33);
                continue;
              }
            }

            else
            {
              v42 = 0;
              if (v28)
              {
                goto LABEL_111;
              }
            }

            (**v26)(v26, 2, v42, 0);
            goto LABEL_111;
          }
        }

        else
        {
          CI::MetalDAGHelper::add_argument_type_and_offset(this, 37, 0);
          v26 = 0;
          v28 = 1;
          if (!a4)
          {
            goto LABEL_89;
          }
        }

        CI::SerialObjectPtrArray::append(a4, a4[3]);
        goto LABEL_89;
      }

      if (v17)
      {
        (**v17)(v17, 8, a5, 0);
        (**v17)(v17, 6, 0, 0);
        (**v17)(v17, 4, 0, 0);
        v38 = CI::MetalDAGHelper::add_argument_type_and_offset(this, 37, 0);
        (**v17)(v17, 4, 0, v38);
        if (a4)
        {
          goto LABEL_75;
        }
      }

      else
      {
        CI::MetalDAGHelper::add_argument_type_and_offset(this, 37, 0);
        if (a4)
        {
LABEL_75:
          CI::SerialObjectPtrArray::append(a4, a4[3]);
        }
      }

      if (v17)
      {
        (**v17)(v17, 2, 0, 0);
      }

LABEL_78:
      if (*(v10 + 159) != 1)
      {
        v34 = 0;
        if (!v17)
        {
          continue;
        }

LABEL_82:
        v22 = **v17;
        v23 = v17;
        v24 = 2;
        goto LABEL_83;
      }

      v34 = *(this + 10);
      *(this + 10) = v34 + 1;
      if (v17)
      {
        goto LABEL_82;
      }

      continue;
    }

    if (v20 > 36)
    {
      if (v20 == 37)
      {
        v35 = CI::MetalDAGHelper::add_argument_type_and_offset(this, 37, 0);
        if (v17)
        {
          (**v17)(v17, 4, 0, v35);
        }

        if (a4)
        {
          CI::SerialObjectPtrArray::append(a4, a4[3]);
        }

        continue;
      }

      if (v20 == 38)
      {
        if (!v17)
        {
          continue;
        }

        v22 = **v17;
        v23 = v17;
        v24 = 2;
        goto LABEL_70;
      }

      if (v20 != 39)
      {
        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if ((v20 - 33) >= 2)
    {
      if (v20 == 35)
      {
        if (!v17)
        {
          continue;
        }

        v22 = **v17;
        v23 = v17;
        v24 = 6;
        goto LABEL_70;
      }

      if (v20 == 36)
      {
        if (!v17)
        {
          continue;
        }

        v22 = **v17;
        v23 = v17;
        v24 = 4;
LABEL_70:
        v34 = 0;
LABEL_83:
        v39 = 0;
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (!*(this + 8) || !*(this + 9) || (v29 = (*(**(this + 1) + 8))(*(this + 1), 5)) == 0)
    {
      CI::MetalDAGHelper::add_argument_type_and_offset(this, 37, 0);
      v30 = 0;
      v32 = 1;
      if (!a4)
      {
        goto LABEL_55;
      }

LABEL_54:
      CI::SerialObjectPtrArray::append(a4, a4[3]);
      goto LABEL_55;
    }

    v30 = v29;
    (**v29)(v29, 7, a5, 0);
    (**v30)(v30, 6, 0, 0);
    (**v30)(v30, 4, 0, 0);
    v31 = CI::MetalDAGHelper::add_argument_type_and_offset(this, 37, 0);
    (**v30)(v30, 4, 0, v31);
    v32 = 0;
    if (a4)
    {
      goto LABEL_54;
    }

LABEL_55:
    if ((v32 & 1) == 0)
    {
      (**v30)(v30, 2, 0, 0);
    }

    v33 = (*(**(this + 1) + 40))(*(this + 1), v30, v21 == 34);
    if (v17)
    {
      goto LABEL_112;
    }
  }

  return (*(**(this + 1) + 48))(*(this + 1), v17);
}

uint64_t CI::MetalDAGHelper::add_function_info(uint64_t a1, CI::ProgramNode *a2, CI::ColorKernelNode *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char *a8, unsigned __int8 a9, void *a10, char a11)
{
  v12 = a3;
  v15 = *(a3 + 6);
  if ((*(*v15 + 16))(v15) != 72)
  {
    (*(*v15 + 16))(v15);
  }

  v104 = a2;
  if (*(v15 + 12) == 1)
  {
    v16 = CI::KernelArguments::count((v15 + 136));
  }

  else
  {
    v16 = *(v15 + 20);
  }

  v17 = v16;
  if (*(a1 + 32) == 1)
  {
    for (i = 0; ; ++i)
    {
      v19 = *(v15 + 12) == 1 ? CI::KernelArguments::count((v15 + 136)) : *(v15 + 20);
      if (i >= v19)
      {
        break;
      }

      if (CI::ColorKernelNode::kernel_argument_type(v12, i) == 31)
      {
        v17 += 5;
      }
    }

    if (*(a1 + 32) == 1)
    {
      v20 = v17 + CI::Kernel::num_sampler_arguments(v15);
      v21 = v20 + CI::Kernel::num_sampler_arguments(v15);
      v17 = v21 + CI::Kernel::num_sampler_arguments(v15);
    }
  }

  if (*(a1 + 64) && *(a1 + 72))
  {
    v22 = (*(**(a1 + 8) + 8))(*(a1 + 8), v17);
    if (*(a1 + 64) && *(a1 + 72))
    {
      (*(**(a1 + 8) + 8))(*(a1 + 8), v17);
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
  *v106 = 0;
  v100 = v12;
  v101 = a6 + 1;
  v102 = (a1 + 136);
  v97 = a1;
  while (1)
  {
    v24 = *(v15 + 12) == 1 ? CI::KernelArguments::count((v15 + 136)) : *(v15 + 20);
    if (v23 >= v24)
    {
      break;
    }

    v25 = CI::ColorKernelNode::kernel_argument_type(v12, v23);
    v27 = v25;
    if (v25 <= 32)
    {
      if (v25 <= 29)
      {
        if (v25 != 1)
        {
          if (v25 == 2)
          {
            v44 = *(v12 + 7);
            if (v23 > 9)
            {
              v45 = (*(v44 + 16) + 8 * v23 - 80);
            }

            else
            {
              v45 = (v44 + 8 * v23 + 24);
            }

            v64 = *v45;
            *&v110[16] = 0;
            *v110 = 0x3FF0000000000000uLL;
            *&v110[24] = 0x3FF0000000000000;
            v111 = 0uLL;
            v65 = CI::ProgramNode::child_depth(v104, v106[0]);
            if (v65 - 1 > a6)
            {
              v66 = ~a6 + v65;
              do
              {
                if ((*(*v64 + 16))(v64) == 34)
                {
                  v67 = vaddq_f64(v111, vmlaq_n_f64(vmulq_n_f64(*&v110[16], v64[12]), *v110, v64[11]));
                  v68 = vmlaq_n_f64(vmulq_n_f64(*&v110[16], v64[10]), *v110, v64[9]);
                  *v110 = vmlaq_n_f64(vmulq_n_f64(*&v110[16], v64[8]), *v110, v64[7]);
                  *&v110[16] = v68;
                  v111 = v67;
                }

                else
                {
                  v69 = (*(*v64 + 16))(v64);
                  v70 = *v64;
                  if (v69 == 53)
                  {
                    (*(v70 + 424))(v64);
                  }

                  else if ((*(v70 + 16))(v64) != 36)
                  {
                    (*(*v64 + 16))(v64);
                  }
                }

                v64 = (*(*v64 + 48))(v64, 0);
                --v66;
              }

              while (v66);
            }

            v73 = (*(*v104 + 48))(v104, *v106);
            if (*(*v73 + 16))(v73) == 60 && (*(v73 + 144))
            {
              v74 = *(v73 + 140);
              if (CI_INTERMEDIATE_SRGB_TEXTURES() && (*(**(a1 + 24) + 592))(*(a1 + 24), v74, 1))
              {
                *(v73 + 144) |= 4u;
              }

              else
              {
                v82 = CI::name_for_format(v74);
                x_log("Cannot use sRGB texture binding with format %s for sampler %d in kernel '%s'.\n", v82, v23, *(v15 + 24));
              }
            }

            operator new();
          }

          if (v25 != 4)
          {
            goto LABEL_95;
          }
        }

        v31 = *(v12 + 7);
        if (v23 > 9)
        {
          v32 = (*(v31 + 16) + 8 * v23 - 80);
        }

        else
        {
          v32 = (v31 + 8 * v23 + 24);
        }

        v46 = *v32;
        if (v25 == 4)
        {
          (*(*v46 + 240))(v46);
          CI::Node::rois_count(v46);
          __p[0] = CI::hash_image_node_id(v46, 0);
          *v110 = __p;
          v47 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 176, __p);
          if (v22)
          {
            (**v22)(v22, 0, v47[5], 0);
          }

LABEL_207:
          *v106 = (v106[0] + 1);
          goto LABEL_208;
        }

        a8[v101] = LOBYTE(v106[0]) + 48;
        a8[a6 + 2] = 0;
        v48 = CI::replaceWithLeaf(v104, (a8 + 1), v46, v26);
        v49 = CI::hash_dag_node_id(v48, a7, a8);
        if ((*(*v48 + 240))(v48))
        {
          v50 = &a8[a6 + 3];
          do
          {
            v51 = (*(*v48 + 48))(v48, 0);
            *(v50 - 1) = 48;
            v48 = CI::replaceWithLeaf(v104, (a8 + 1), v51, v52);
            v49 = CI::hash_dag_node_id(v48, v49, a8);
            ++v50;
          }

          while (((*(*v48 + 240))(v48) & 1) != 0);
        }

        v53 = *v102;
        a1 = v97;
        if (*v102)
        {
          v54 = v102;
          do
          {
            v55 = v53[4];
            v56 = v55 >= v49;
            v57 = v55 < v49;
            if (v56)
            {
              v54 = v53;
            }

            v53 = v53[v57];
          }

          while (v53);
          if (v54 != v102 && v49 >= v54[4])
          {
            goto LABEL_197;
          }
        }

        v109 = v49;
        __p[0] = &v109;
        v58 = std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 19), &v109);
        v59 = v58;
        if (*(v58 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(v110, v58[5], v58[6]);
        }

        else
        {
          *v110 = *(v58 + 5);
          *&v110[16] = v58[7];
        }

        std::vector<unsigned long>::vector[abi:nn200100](&v110[24], v59 + 8);
        v112 = *(v59 + 88);
        if ((a11 & 1) == 0)
        {
          if (v110[23] >= 0)
          {
            v75 = v110;
          }

          else
          {
            v75 = *v110;
          }

          CI::MetalDAGHelper::add_function_with_name(v97, v75, 0);
          if ((v110[23] & 0x80000000) == 0)
          {
            if (v110[23] == 14)
            {
              v76 = v110;
              goto LABEL_175;
            }

            goto LABEL_179;
          }

          if (*&v110[8] != 14)
          {
            goto LABEL_179;
          }

          v76 = *v110;
LABEL_175:
          v83 = *v76;
          v84 = *(v76 + 6);
          if (v83 == 0x646165725F69635FLL && v84 == 0x6C657869705F6461)
          {
            CI::MetalDAGHelper::add_read_pixel_function_info(v97, **&v110[24], *(*&v110[24] + 8), *(*&v110[24] + 16), *(*&v110[24] + 24));
          }

          else
          {
LABEL_179:
            CI::MetalDAGHelper::add_read_pixel_420_function_info(v97, **&v110[24], *(*&v110[24] + 8), *(*&v110[24] + 16), *(*&v110[24] + 24), *(*&v110[24] + 32), *(*&v110[24] + 40), *(*&v110[24] + 48));
          }

          v86 = (*a10)++;
          v109 = v49;
          __p[0] = &v109;
          *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109) + 20) = v86;
          if (v112 == 1)
          {
            CI::MetalDAGHelper::add_function_with_name(v97, "_ci_srgb_to_linear", 0);
            v109 = v49;
            __p[0] = &v109;
            std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109);
            CI::MetalDAGHelper::add_colour_inout_function_info(v97);
            v87 = (*a10)++;
            v109 = v49;
            __p[0] = &v109;
            *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109) + 20) = v87;
          }

          v109 = v49;
          __p[0] = &v109;
          *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109) + 24) = 0;
LABEL_193:
          __p[0] = v49;
          std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__erase_unique<unsigned long long>(v97 + 19, __p);
          if (*&v110[24])
          {
            v111.f64[0] = *&v110[24];
            operator delete(*&v110[24]);
          }

          if ((v110[23] & 0x80000000) != 0)
          {
            operator delete(*v110);
          }

LABEL_197:
          if (a11)
          {
            __p[0] = v49;
            *v110 = __p;
            if (!*(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 24))
            {
              CI::MetalDAGHelper::add_function_with_name(v97, "_ci_float_to_half", 0);
              __p[0] = v49;
              *v110 = __p;
              std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p);
              CI::MetalDAGHelper::add_colour_inout_function_info(v97);
              v95 = (*a10)++;
              __p[0] = v49;
              *v110 = __p;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 24) = v95;
              __p[0] = v49;
              *v110 = __p;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 20) = 0;
            }

            __p[0] = v49;
            *v110 = __p;
            v94 = *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 24);
          }

          else
          {
            __p[0] = v49;
            *v110 = __p;
            if (!*(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 20))
            {
              CI::MetalDAGHelper::add_function_with_name(v97, "_ci_half_to_float", 0);
              __p[0] = v49;
              *v110 = __p;
              std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p);
              CI::MetalDAGHelper::add_colour_inout_function_info(v97);
              v93 = (*a10)++;
              __p[0] = v49;
              *v110 = __p;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 20) = v93;
              __p[0] = v49;
              *v110 = __p;
              *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 24) = 0;
            }

            __p[0] = v49;
            *v110 = __p;
            v94 = *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), __p) + a9 + 20);
          }

          v12 = v100;
          if (v22)
          {
            (**v22)(v22, 7, v94, 0);
          }

          a8[v101] = 0;
          goto LABEL_207;
        }

        if (v110[23] >= 0)
        {
          v77 = v110[23];
        }

        else
        {
          v77 = *&v110[8];
        }

        std::string::basic_string[abi:nn200100](__p, v77 + 2);
        if (v108 >= 0)
        {
          v78 = __p;
        }

        else
        {
          v78 = __p[0];
        }

        if (v77)
        {
          if (v110[23] >= 0)
          {
            v79 = v110;
          }

          else
          {
            v79 = *v110;
          }

          memmove(v78, v79, v77);
        }

        strcpy(v78 + v77, "_h");
        if (v108 >= 0)
        {
          v80 = __p;
        }

        else
        {
          v80 = __p[0];
        }

        CI::MetalDAGHelper::add_function_with_name(v97, v80, 0);
        if (v108 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v110[23] & 0x80000000) == 0)
        {
          if (v110[23] == 14)
          {
            v81 = v110;
            goto LABEL_185;
          }

          goto LABEL_189;
        }

        if (*&v110[8] != 14)
        {
          goto LABEL_189;
        }

        v81 = *v110;
LABEL_185:
        v88 = *v81;
        v89 = *(v81 + 6);
        if (v88 == 0x646165725F69635FLL && v89 == 0x6C657869705F6461)
        {
          CI::MetalDAGHelper::add_read_pixel_function_info(v97, **&v110[24], *(*&v110[24] + 8), *(*&v110[24] + 16), *(*&v110[24] + 24));
        }

        else
        {
LABEL_189:
          CI::MetalDAGHelper::add_read_pixel_420_function_info(v97, **&v110[24], *(*&v110[24] + 8), *(*&v110[24] + 16), *(*&v110[24] + 24), *(*&v110[24] + 32), *(*&v110[24] + 40), *(*&v110[24] + 48));
        }

        v91 = (*a10)++;
        v109 = v49;
        __p[0] = &v109;
        *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109) + 24) = v91;
        if (v112 == 1)
        {
          CI::MetalDAGHelper::add_function_with_name(v97, "_ci_srgb_to_linear_h", 0);
          v109 = v49;
          __p[0] = &v109;
          std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109);
          CI::MetalDAGHelper::add_colour_inout_function_info(v97);
          v92 = (*a10)++;
          v109 = v49;
          __p[0] = &v109;
          *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109) + 24) = v92;
        }

        v109 = v49;
        __p[0] = &v109;
        *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v97 + 16), &v109) + 20) = 0;
        goto LABEL_193;
      }

      if ((v25 - 31) >= 2)
      {
        if (v25 == 30)
        {
          if (!v22)
          {
            goto LABEL_208;
          }

          v28 = **v22;
          v29 = v22;
          v30 = 7;
          v42 = a5;
          goto LABEL_142;
        }

        goto LABEL_95;
      }

      if ((*(a1 + 32) & 0xFFFFFFFE) == 2)
      {
        if (*(a1 + 64) && *(a1 + 72) && (v33 = (*(**(a1 + 8) + 8))(*(a1 + 8), 6)) != 0)
        {
          v34 = v33;
          (**v33)(v33, 8, a5, 0);
          (**v34)(v34, 6, 0, 0);
          (**v34)(v34, 4, 0, 0);
          v35 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
          (**v34)(v34, 4, 0, v35);
          v36 = 0;
        }

        else
        {
          CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
          v34 = 0;
          v36 = 1;
        }

        if (a4)
        {
          CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
        }

        if ((v36 & 1) == 0)
        {
          (**v34)(v34, 2, 0, 0);
        }

        if (*(v15 + 159) == 1)
        {
          v63 = *(a1 + 80);
          *(a1 + 80) = v63 + 1;
          if (v36)
          {
LABEL_118:
            v41 = (*(**(a1 + 8) + 32))(*(a1 + 8), v34, v27 == 32);
            if (!v22)
            {
              goto LABEL_208;
            }

LABEL_119:
            ((*v22)[1])(v22, v41);
            goto LABEL_208;
          }
        }

        else
        {
          v63 = 0;
          if (v36)
          {
            goto LABEL_118;
          }
        }

        (**v34)(v34, 2, v63, 0);
        goto LABEL_118;
      }

      if (v22)
      {
        (**v22)(v22, 8, a5, 0);
        (**v22)(v22, 6, 0, 0);
        (**v22)(v22, 4, 0, 0);
        v60 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
        (**v22)(v22, 4, 0, v60);
      }

      else
      {
        CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
      }

      if (a4)
      {
        CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
      }

      if (v22)
      {
        (**v22)(v22, 2, 0, 0);
      }

LABEL_137:
      if (*(v15 + 159) != 1)
      {
        v42 = 0;
        if (!v22)
        {
          goto LABEL_208;
        }

LABEL_141:
        v28 = **v22;
        v29 = v22;
        v30 = 2;
LABEL_142:
        v72 = 0;
LABEL_143:
        v28(v29, v30, v42, v72);
        goto LABEL_208;
      }

      v42 = *(a1 + 80);
      *(a1 + 80) = v42 + 1;
      if (v22)
      {
        goto LABEL_141;
      }

      goto LABEL_208;
    }

    if (v25 > 36)
    {
      if (v25 == 37)
      {
        v43 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
        if (v22)
        {
          (**v22)(v22, 4, 0, v43);
        }

        if (a4)
        {
          CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
        }

        goto LABEL_208;
      }

      if (v25 == 38)
      {
        if (!v22)
        {
          goto LABEL_208;
        }

        v28 = **v22;
        v29 = v22;
        v30 = 2;
        goto LABEL_73;
      }

      if (v25 != 39)
      {
        goto LABEL_95;
      }

      goto LABEL_137;
    }

    if ((v25 - 33) >= 2)
    {
      if (v25 == 35)
      {
        if (!v22)
        {
          goto LABEL_208;
        }

        v28 = **v22;
        v29 = v22;
        v30 = 6;
      }

      else
      {
        if (v25 != 36)
        {
LABEL_95:
          CI::KernelArguments::is_uniform(v25);
          v61 = *(v12 + 7);
          if (v23 > 9)
          {
            v62 = (*(v61 + 16) + 8 * v23 - 80);
          }

          else
          {
            v62 = (v61 + 8 * v23 + 24);
          }

          v71 = *v62;
          CI::SerialObjectPtrArray::append(a4, *v62);
          v72 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, v27, v71);
          if (v27 == 29)
          {
            if (!v22)
            {
              goto LABEL_208;
            }

            v28 = **v22;
            v29 = v22;
            v30 = 5;
          }

          else
          {
            if (!v22)
            {
              goto LABEL_208;
            }

            v28 = **v22;
            v29 = v22;
            v30 = 4;
          }

          v42 = 0;
          goto LABEL_143;
        }

        if (!v22)
        {
          goto LABEL_208;
        }

        v28 = **v22;
        v29 = v22;
        v30 = 4;
      }

LABEL_73:
      v42 = 0;
      goto LABEL_142;
    }

    if (*(a1 + 64) && *(a1 + 72) && (v37 = (*(**(a1 + 8) + 8))(*(a1 + 8), 5)) != 0)
    {
      v38 = v37;
      (**v37)(v37, 7, a5, 0);
      (**v38)(v38, 6, 0, 0);
      (**v38)(v38, 4, 0, 0);
      v39 = CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
      (**v38)(v38, 4, 0, v39);
      v40 = 0;
    }

    else
    {
      CI::MetalDAGHelper::add_argument_type_and_offset(a1, 37, 0);
      v38 = 0;
      v40 = 1;
    }

    if (a4)
    {
      CI::SerialObjectPtrArray::append(a4, *(a4 + 24));
    }

    if ((v40 & 1) == 0)
    {
      (**v38)(v38, 2, 0, 0);
    }

    v41 = (*(**(a1 + 8) + 40))(*(a1 + 8), v38, v27 == 34);
    if (v22)
    {
      goto LABEL_119;
    }

LABEL_208:
    ++v23;
  }

  CI::MetalDAGHelper::add_function_for_kernel(a1, v15);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), v22);
}

uint64_t CI::MetalDAGHelper::color_output_for_kernel(CI::MetalDAGHelper *this, const CI::Kernel *a2, unsigned int a3, unint64_t *a4)
{
  v15 = 0;
  v16 = 0;
  if (*(a2 + 4))
  {
    if (*(a2 + 15) == 2 && *(a2 + 16) == 2)
    {
      v9 = 0;
      ++*a4;
      if ((a3 & 2) != 0)
      {
        v10 = &v16;
      }

      else
      {
        v10 = &v15;
      }

      if ((a3 & 2) != 0)
      {
        v11 = &v15;
      }

      else
      {
        v11 = &v16;
      }

      v12 = &CI::MetalDAGHelper::color_output_for_kernel(CI::Kernel const*,unsigned char,unsigned long &)::sGroupOutputFunctions[(a3 >> 1) & 1];
      do
      {
        CI::MetalDAGHelper::add_function_with_name(this, v12[v9], 0);
        CI::MetalDAGHelper::add_colour_inout_function_info(this);
        v13 = (*a4)++;
        *(v10 + v9) = v13;
        *(v11 + v9) = 0;
        v9 += 2;
      }

      while (v9 != 8);
    }

    else
    {
      v6 = (*a4)++;
      if ((a3 & 2) != 0)
      {
        LOWORD(v16) = v6;
        v7 = &v15;
      }

      else
      {
        LOWORD(v15) = v6;
        v7 = &v16;
      }

      *v7 = 0;
    }
  }

  return v15;
}

uint64_t CI::MetalDAGHelper::build_dag(CI::MetalDAGHelper *this, const CI::Node *a2, const CI::ProgramNode *a3, CI::SerialObjectPtrArray *a4, uint64_t a5)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v10 = ci_signpost_log_render();
    v11 = *(a3 + 9) | ((*(**(this + 3) + 280))(*(this + 3)) << 32);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "build_dag", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v12 = (*(**(this + 3) + 280))(*(this + 3));
  TimerBase::TimerBase(v46, v12, *(a3 + 9), "build_dag", 5);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = a5 + 1;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke;
  v41[3] = &unk_1E75C15A8;
  v41[6] = a5;
  v41[7] = a3;
  v41[8] = a4;
  v41[4] = &v42;
  v41[5] = this;
  CI::ProgramNode::traverse_dag_preorder(a3, a2, v41, &__block_literal_global_90);
  *buf = 0;
  v34 = buf;
  v35 = 0x4012000000;
  v36 = __Block_byref_object_copy__24;
  v37 = __Block_byref_object_dispose__24;
  v38 = &unk_19D0E11CF;
  v39 = 0;
  v40 = 0;
  if (*(a3 + 136) == 1)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_46;
    v32[3] = &unk_1E75C15F0;
    v32[6] = this;
    v32[7] = a5;
    v32[8] = a3;
    v32[9] = a4;
    v32[4] = &v42;
    v32[5] = buf;
    CI::ProgramNode::traverse_dag_preorder(a3, a2, v32, 0);
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_2_47;
    v31[3] = &__block_descriptor_56_e33_v60__0_v8r_v16i24i28_v32Q40_48i56l;
    v31[4] = this;
    v31[5] = a3;
    v31[6] = a4;
    CI::ProgramNode::traverse_dag_preorder(a3, a2, v31, &__block_literal_global_50);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_4;
    v30[3] = &__block_descriptor_48_e33_v60__0_v8r_v16i24i28_v32Q40_48i56l;
    v30[4] = this;
    v30[5] = a5;
    CI::ProgramNode::traverse_dag_preorder(a3, a2, v30, &__block_literal_global_56_1);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_6;
  v29[3] = &unk_1E75C15F0;
  v29[6] = this;
  v29[7] = a5;
  v29[8] = a3;
  v29[9] = a4;
  v29[4] = &v42;
  v29[5] = buf;
  CI::ProgramNode::traverse_dag(a3, a2, v29, &__block_literal_global_58_2);
  v13 = v34;
  if (!*(v34 + 24) && !*(v34 + 28) && *(this + 21))
  {
    v14 = *(this + 19);
    v28 = *(v14 + 32);
    if (*(v14 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *(v14 + 40), *(v14 + 48));
    }

    else
    {
      v25 = *(v14 + 40);
    }

    std::vector<unsigned long>::vector[abi:nn200100](__p, (v14 + 64));
    v27 = *(v14 + 88);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v25;
    }

    else
    {
      v15 = v25.__r_.__value_.__r.__words[0];
    }

    CI::MetalDAGHelper::add_function_with_name(this, v15, 0);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_ != 14)
      {
        goto LABEL_26;
      }

      v16 = v25.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) != 14)
      {
        goto LABEL_26;
      }

      v16 = &v25;
    }

    v17 = v16->__r_.__value_.__r.__words[0];
    v18 = *(v16->__r_.__value_.__r.__words + 6);
    if (v17 == 0x646165725F69635FLL && v18 == 0x6C657869705F6461)
    {
      CI::MetalDAGHelper::add_read_pixel_function_info(this, *__p[0], *(__p[0] + 1), *(__p[0] + 2), *(__p[0] + 3));
      goto LABEL_27;
    }

LABEL_26:
    CI::MetalDAGHelper::add_read_pixel_420_function_info(this, *__p[0], *(__p[0] + 1), *(__p[0] + 2), *(__p[0] + 3), *(__p[0] + 4), *(__p[0] + 5), *(__p[0] + 6));
LABEL_27:
    v20 = v43[3];
    v43[3] = v20 + 1;
    v47 = &v28;
    *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 128, &v28) + 20) = v20;
    if (v27 == 1)
    {
      CI::MetalDAGHelper::add_function_with_name(this, "_ci_srgb_to_linear", 0);
      v47 = &v28;
      std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 128, &v28);
      CI::MetalDAGHelper::add_colour_inout_function_info(this);
      v21 = v43[3];
      v43[3] = v21 + 1;
      v47 = &v28;
      *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 128, &v28) + 20) = v21;
    }

    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__erase_unique<unsigned long long>(this + 19, &v28);
    v47 = &v28;
    v22 = std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 128, &v28);
    *(v34 + 3) = *(v22 + 5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v13 = v34;
  }

  v23 = *(v13 + 6);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v42, 8);
  CI::MetalDAGHelper::build_dag(CI::Node const*,CI::ProgramNode const*,CI::SerialObjectPtrArray *,unsigned long)::SignpostTimer::~SignpostTimer(v46);
  return v23;
}

void sub_19CE952F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v54 - 184), 8);
  CI::MetalDAGHelper::build_dag(CI::Node const*,CI::ProgramNode const*,CI::SerialObjectPtrArray *,unsigned long)::SignpostTimer::~SignpostTimer((v54 - 152));
  _Unwind_Resume(a1);
}

void ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke(void *a1, CI::Object *this, int a3, int a4, int a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  if (a9 == -1)
  {
    v14 = a1[5];
    v27 = this;
    v28 = 0;
    if (this)
    {
      CI::Object::ref(this);
    }

    v15 = (*(*this + 336))(this, *(v14 + 3));
    v28 = v15;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = this;
    }

    if ((*(*v16 + 16))(v16) == 58)
    {
      v17 = *(v16 + 6);
      if (a6)
      {
        v26 = CI::hash_dag_node_id(a6, a7, 0);
        v29 = &v26;
        v18 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 104, &v26) + 5;
      }

      else
      {
        v18 = a1 + 6;
      }

      v19 = *v18;
      CI::MetalDAGHelper::add_function_for_kernel(v14, v17);
      CI::MetalDAGHelper::add_function_info(v14, v20, v16, a1[8], v19, v21, 0);
      v22 = CI::hash_dag_node_id(this, a7, a8);
      v23 = CI::hash_dag_node_id(this, v22, 0);
      v24 = *(a1[4] + 8);
      v25 = *(v24 + 24);
      *(v24 + 24) = v25 + 1;
      v26 = v23;
      v29 = &v26;
      std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 104, &v26)[5] = v25;
    }

    CI::ConvertedNodeRAII::~ConvertedNodeRAII(&v27);
  }
}

void sub_19CE95514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CI::ConvertedNodeRAII::~ConvertedNodeRAII(va);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__24(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

__n128 ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_46(uint64_t a1, const CI::GeneralKernelNode *a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  if (a9 == -1)
  {
    v15 = *(a1 + 48);
    if ((*(*a2 + 16))(a2) == 59 && ((*(*a2 + 312))(a2) & 1) == 0)
    {
      v17 = CI::hash_dag_node_id(a2, a7, a8);
      v18 = *(a2 + 6);
      if (a6)
      {
        v26 = CI::hash_dag_node_id(a6, a7, 0);
        v27 = &v26;
        v19 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 104, &v26) + 5;
      }

      else
      {
        v19 = (a1 + 56);
      }

      v20 = *v19;
      v21 = CI::MetalDAGHelper::add_function_for_kernel(v15, v18);
      CI::MetalDAGHelper::add_function_info(v15, *(a1 + 64), a2, *(a1 + 72), v20, a4);
      v22 = CI::MetalDAGHelper::color_output_for_kernel(v15, v18, v21, (*(*(a1 + 32) + 8) + 24));
      v24 = v23;
      v26 = v17;
      v27 = &v26;
      v25 = std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 128, &v26);
      v25[5] = v22;
      v25[6] = v24;
      v26 = v17;
      v27 = &v26;
      result = *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 128, &v26) + 5);
      *(*(*(a1 + 40) + 8) + 48) = result;
    }
  }

  return result;
}

unint64_t ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_2_47(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if (a9 != -1)
  {
    v12 = *(result + 32);
    (*(**(result + 40) + 48))(*(result + 40), a9);
    if (a3 && !(*(*a3 + 200))(a3, a5))
    {
      v13 = 0;
    }

    else
    {
      v13 = a9;
    }

    result = CI::hash_image_node_id(a2, v13);
    v20 = result;
    v14 = *(v12 + 184);
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v12 + 184;
    do
    {
      v16 = *(v14 + 32);
      v17 = v16 >= result;
      v18 = v16 < result;
      if (v17)
      {
        v15 = v14;
      }

      v14 = *(v14 + 8 * v18);
    }

    while (v14);
    if (v15 == v12 + 184 || result < *(v15 + 32))
    {
LABEL_14:
      CI::MetalDAGHelper::add_arguments_for_image_node(v12, &v19);
    }
  }

  return result;
}

unint64_t ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_4(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a9 != -1)
  {
    v13 = result;
    v14 = *(result + 32);
    if (!a3 || (result = (*(*a3 + 200))(a3, a5), result))
    {
      result = CI::hash_dag_node_id(a2, a7, a8);
      v15 = result;
      v16 = *(v14 + 136);
      if (!v16)
      {
        goto LABEL_12;
      }

      v17 = v14 + 136;
      do
      {
        v18 = *(v16 + 32);
        v19 = v18 >= result;
        v20 = v18 < result;
        if (v19)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * v20);
      }

      while (v16);
      if (v17 == v14 + 136 || result < *(v17 + 32))
      {
LABEL_12:
        v21 = (*(*a2 + 16))(a2);
        v22 = *a2;
        if (v21 == 54)
        {
          v23 = (*(v22 + 216))(a2);
          v24 = (*(*a2 + 320))(a2);
          v38 = (*(*a2 + 424))(a2);
          v26 = CI::format_from_IOSurface(*(a2 + 56), v25);
        }

        else
        {
          if ((*(v22 + 16))(a2) != 52)
          {
            is_ycc_biplanar = 0;
            v38 = 0;
            v28 = 0;
            v27 = 0;
LABEL_18:
            v46 = CI::hash_image_node_id(a2, a9);
            v48.__r_.__value_.__r.__words[0] = &v46;
            v30 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v14 + 176, &v46);
            v31 = v30[5];
            v32 = v30[6];
            v41 = *(v30 + 7);
            v39 = *(v30 + 9);
            v40 = *(v30 + 88);
            if (a6)
            {
              v45[0] = CI::hash_dag_node_id(a6, a7, 0);
              v48.__r_.__value_.__r.__words[0] = v45;
              v13 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 104, v45);
            }

            v33 = v13[5];
            if ((v27 != 2) | is_ycc_biplanar & 1 && v27 >= 2)
            {
              v48.__r_.__value_.__r.__words[0] = v31;
              v48.__r_.__value_.__l.__size_ = v32;
              v48.__r_.__value_.__r.__words[2] = v33;
              *__p = v41;
              v50 = v39;
              std::vector<unsigned long>::vector[abi:nn200100](v45, &v48, 7uLL);
              if (v28)
              {
                if (v38 && (*(*(v14 + 24) + 456) & 1) == 0)
                {
                  std::string::basic_string[abi:nn200100]<0>(v43, "_ci_read_pixel_420_packed");
                  CI::MetalDAGHelper::TextureReadFunction::TextureReadFunction(&v48, v43, v45);
                  v42 = v15;
                  v47 = &v42;
                  v37 = std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 152, &v42);
                  CI::DAGHelper::TextureReadFunction::operator=((v37 + 5), &v48);
                  CI::DAGHelper::TextureReadFunction::~TextureReadFunction(&v48);
LABEL_33:
                  if (v44 < 0)
                  {
                    operator delete(v43[0]);
                  }

                  if (v45[0])
                  {
                    v45[1] = v45[0];
                    operator delete(v45[0]);
                  }

                  v45[0] = v15;
                  v48.__r_.__value_.__r.__words[0] = v45;
                  result = std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 152, v45);
                  *(result + 88) = v40 & 1;
                  return result;
                }

                std::string::basic_string[abi:nn200100]<0>(v43, "_ci_read_pixel_420_r_rg");
                CI::MetalDAGHelper::TextureReadFunction::TextureReadFunction(&v48, v43, v45);
                v42 = v15;
                v47 = &v42;
                v34 = std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 152, &v42);
                CI::DAGHelper::TextureReadFunction::operator=((v34 + 5), &v48);
              }

              else
              {
                std::string::basic_string[abi:nn200100]<0>(v43, "_ci_read_pixel_420");
                CI::MetalDAGHelper::TextureReadFunction::TextureReadFunction(&v48, v43, v45);
                v42 = v15;
                v47 = &v42;
                v36 = std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 152, &v42);
                CI::DAGHelper::TextureReadFunction::operator=((v36 + 5), &v48);
              }
            }

            else
            {
              v48.__r_.__value_.__r.__words[0] = v31;
              v48.__r_.__value_.__l.__size_ = v32;
              v48.__r_.__value_.__r.__words[2] = v33;
              __p[0] = v41;
              std::vector<unsigned long>::vector[abi:nn200100](v45, &v48, 4uLL);
              std::string::basic_string[abi:nn200100]<0>(v43, "_ci_read_pixel");
              CI::MetalDAGHelper::TextureReadFunction::TextureReadFunction(&v48, v43, v45);
              v42 = v15;
              v47 = &v42;
              v35 = std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14 + 152, &v42);
              CI::DAGHelper::TextureReadFunction::operator=((v35 + 5), &v48);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v48.__r_.__value_.__l.__data_);
            }

            goto LABEL_33;
          }

          v23 = (*(*a2 + 216))(a2);
          v24 = (*(*a2 + 320))(a2);
          v38 = (*(*a2 + 424))(a2);
          v26 = *(a2 + 152);
        }

        v27 = v23;
        v28 = v24 == 1;
        is_ycc_biplanar = CI::format_is_ycc_biplanar(v26);
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_19CE95F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN2CI14MetalDAGHelper9build_dagEPKNS_4NodeEPKNS_11ProgramNodeEPNS_20SerialObjectPtrArrayEm_block_invoke_6(uint64_t a1, CI::Object *this, int a3, int a4, int a5, unint64_t a6, uint64_t a7, char *a8, int a9)
{
  if (a9 == -1)
  {
    v15 = *(a1 + 48);
    v63 = this;
    v64 = 0;
    if (this)
    {
      CI::Object::ref(this);
    }

    v16 = (*(*this + 336))(this, *(v15 + 3));
    v64 = v16;
    if (!v16)
    {
      v16 = v63;
    }

    v61 = v16;
    v60 = v15;
    if ((*(*v16 + 16))() == 57)
    {
      v17 = *(v61 + 48);
      if (a6)
      {
        v62 = CI::hash_dag_node_id(a6, a7, 0);
        v65 = &v62;
        v18 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 104, &v62) + 5;
      }

      else
      {
        v18 = (a1 + 56);
      }

      v21 = *v18;
      v57 = *(v17 + 16);
      if (v57 == 3)
      {
        v22 = *(v17 + 153) | 2;
      }

      else
      {
        v22 = *(v17 + 153);
      }

      v59 = CI::hash_dag_node_id(this, a7, a8);
      CI::MetalDAGHelper::add_function_info(v15, *(a1 + 64), v61, *(a1 + 72), v21, a4, a7, a8, 0, (*(*(a1 + 32) + 8) + 24), v22);
      v23 = a7;
      v24 = CI::MetalDAGHelper::color_output_for_kernel(v15, v17, v22, (*(*(a1 + 32) + 8) + 24));
      v56 = v25;
      v26 = v24;
      v27 = v22;
      v28 = a8;
      v62 = v59;
      v65 = &v62;
      v29 = std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 128, &v62);
      v30 = 0;
      v29[5] = v26;
      v29[6] = v56;
      if (v57 == 3)
      {
        v31 = 50;
      }

      else
      {
        v31 = 42;
      }

      if (v57 == 3)
      {
        v32 = 42;
      }

      else
      {
        v32 = 50;
      }

      do
      {
        v33 = *(*(a1 + 40) + 8) + 2 * v30;
        if (*(v33 + 50) || *(v33 + 58))
        {
          CI::MetalDAGHelper::add_function_info(v60, *(a1 + 64), v61, *(a1 + 72), v21, a4, v23, v28, v30 + 1, (*(*(a1 + 32) + 8) + 24), v27);
          v62 = v59;
          v65 = &v62;
          v34 = std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v60 + 128, &v62);
          v35 = *(*(a1 + 32) + 8);
          v36 = *(v35 + 24);
          *(v35 + 24) = v36 + 1;
          *(v34 + 2 * v30 + v31) = v36;
          *(v34 + 2 * v30 + v32) = 0;
        }

        ++v30;
      }

      while (v30 != 3);
    }

    else
    {
      if ((*(*v61 + 16))(v61) != 59 || !(*(*v61 + 312))(v61))
      {
        goto LABEL_28;
      }

      v19 = *(v61 + 48);
      if (a6)
      {
        v62 = CI::hash_dag_node_id(a6, a7, 0);
        v65 = &v62;
        v20 = std::__tree<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorKernelOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 104, &v62) + 5;
      }

      else
      {
        v20 = (a1 + 56);
      }

      v37 = *v20;
      v38 = *(v19 + 16);
      if (v38 == 3)
      {
        v39 = *(v19 + 153) | 2;
      }

      else
      {
        v39 = *(v19 + 153);
      }

      v59 = CI::hash_dag_node_id(this, a7, a8);
      CI::MetalDAGHelper::add_function_info(v15, *(a1 + 64), v61, *(a1 + 72), v37, a4, a7, a8, 0, (*(*(a1 + 32) + 8) + 24), v39);
      v40 = v39;
      v41 = a7;
      v42 = v40;
      v43 = CI::MetalDAGHelper::color_output_for_kernel(v15, v19, v40, (*(*(a1 + 32) + 8) + 24));
      v58 = v44;
      v45 = v43;
      v46 = a8;
      v62 = v59;
      v65 = &v62;
      v47 = std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v15 + 128, &v62);
      v48 = 0;
      v47[5] = v45;
      v47[6] = v58;
      v49 = v38 == 3;
      if (v38 == 3)
      {
        v50 = 50;
      }

      else
      {
        v50 = 42;
      }

      if (v49)
      {
        v51 = 42;
      }

      else
      {
        v51 = 50;
      }

      do
      {
        v52 = *(*(a1 + 40) + 8) + 2 * v48;
        if (*(v52 + 50) || *(v52 + 58))
        {
          CI::MetalDAGHelper::add_function_info(v60, *(a1 + 64), v61, *(a1 + 72), v37, a4, v41, v46, v48 + 1, (*(*(a1 + 32) + 8) + 24), v42);
          v62 = v59;
          v65 = &v62;
          v53 = std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v60 + 128, &v62);
          v54 = *(*(a1 + 32) + 8);
          v55 = *(v54 + 24);
          *(v54 + 24) = v55 + 1;
          *(v53 + 2 * v48 + v50) = v55;
          *(v53 + 2 * v48 + v51) = 0;
        }

        ++v48;
      }

      while (v48 != 3);
    }

    v62 = v59;
    v65 = &v62;
    *(*(*(a1 + 40) + 8) + 48) = *(std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v60 + 128, &v62) + 5);
LABEL_28:
    CI::ConvertedNodeRAII::~ConvertedNodeRAII(&v63);
  }
}

void sub_19CE965D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  CI::ConvertedNodeRAII::~ConvertedNodeRAII(va);
  _Unwind_Resume(a1);
}

void CI::MetalDAGHelper::build_dag(CI::Node const*,CI::ProgramNode const*,CI::SerialObjectPtrArray *,unsigned long)::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "build_dag", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

uint64_t ___ZN2CI14MetalDAGHelper15build_constantsEPKNS_11ProgramNodeE_block_invoke(uint64_t a1, CI *this, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == -1)
  {
    v12[7] = v6;
    v12[8] = v7;
    v8 = *(a1 + 32);
    v9 = CI::kernel_for_node(this, this);
    if (v9)
    {
      v10 = (*(*v9 + 72))(v9);
      if (v10)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = ___ZN2CI14MetalDAGHelper15build_constantsEPKNS_11ProgramNodeE_block_invoke_2;
        v12[3] = &__block_descriptor_40_e26_v32__0r_v8Q16__NSString_24l;
        v12[4] = v8;
        CI::MetalKernel::iterateOverFunctionConstants(v10, v12);
      }
    }
  }

  return 0;
}

uint64_t CI::kernel_for_node(CI *this, const CI::Node *a2)
{
  if ((*(*this + 16))(this, a2) == 57 || (*(*this + 16))(this) == 58 || (*(*this + 16))(this) == 59)
  {
    return *(this + 6);
  }

  else
  {
    return 0;
  }
}

void sub_19CE96960(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  MEMORY[0x19EAF5590](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t CI::is_kernel_metalextern_linkable(CI *this, const CI::MetalContext *a2, const CI::Kernel *a3)
{
  v3 = 0;
  if (this && a2)
  {
    v5 = *(this + 252);
    if (v5 && (v6 = *(a2 + 3), dispatch_sync(*(v5 + 48), &__block_literal_global_171), ([*(v5 + 32) containsObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v6)}] & 1) != 0))
    {
      v3 = 1;
    }

    else if ((*(*a2 + 72))(a2))
    {
      v3 = *((*(*a2 + 72))(a2) + 48) ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t CI::is_kernel_metalstitchable_linkable(CI *this, const CI::MetalContext *a2, const CI::Kernel *a3)
{
  v3 = 0;
  if (this && a2)
  {
    v5 = *(this + 253);
    if (v5 && (v6 = *(a2 + 3), dispatch_sync(*(v5 + 48), &__block_literal_global_171), ([*(v5 + 32) containsObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v6)}] & 1) != 0))
    {
      v3 = 1;
    }

    else if ((*(*a2 + 72))(a2))
    {
      v3 = *((*(*a2 + 72))(a2) + 48);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

BOOL CI::is_kernel_metalfosl_linkable(_BOOL8 this, const CI::Kernel *a2)
{
  if (this)
  {
    return *(this + 32) != 0;
  }

  return this;
}

uint64_t CI::create_metal_dag(CI *this, const CI::MetalContext *a2, const CI::MetalContext *a3, const CI::Node *a4, const CI::ProgramNode *a5, CI::SerialObjectPtrArray *a6)
{
  CI::MetalDAGHelper::MetalDAGHelper(v13, a2);
  v10 = CI::MetalContext::device(a2);
  v11 = CI::MetalDAGHelper::process_kernels(v13, v10, this, a3, a4);
  CI::MetalDAGHelper::~MetalDAGHelper(v13);
  return v11;
}

uint64_t CI::MetalDAGHelper::process_kernels(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CI::MetalDAGHelper::analyze_kernels(a1, a5, a2);
  if (*(a1 + 32))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZN2CI14MetalDAGHelper15build_constantsEPKNS_11ProgramNodeE_block_invoke;
    v8[3] = &__block_descriptor_40_e23_B36__0_v8r_v16i24i28i32l;
    v8[4] = a1;
    CI::ProgramNode::traverse_graph_preorder_stoppable(a5, v8);
    CI::MetalContext::use_imageblocks_for_format(*(a1 + 24), *(a5 + 140));
    operator new();
  }

  return 0;
}

void CI::MetalDAGHelper::analyze_kernels(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*(*(a1 + 24) + 2016))
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 1;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 1;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x4012000000;
    v18 = __Block_byref_object_copy__61;
    v19 = __Block_byref_object_dispose__62;
    v20 = &unk_19D0E11CF;
    v21 = xmmword_19CF22D90;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8 = (*(*a2 + 40))(a2);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZN2CI14MetalDAGHelper15analyze_kernelsEPKNS_11ProgramNodeEPU19objcproto9MTLDevice11objc_object_block_invoke;
    v10[3] = &unk_1E75C6210;
    v10[13] = a1;
    v10[14] = a2;
    v10[4] = &v30;
    v10[5] = &v11;
    v10[6] = &v42;
    v10[7] = &v46;
    v10[8] = &v38;
    v10[9] = &v34;
    v10[10] = &v26;
    v10[11] = &v22;
    v10[12] = &v15;
    CI::ProgramNode::traverse_graph_preorder_stoppable(a2, v10);
    *(a1 + 40) = *(v16 + 3);
    *(a1 + 56) = *(v12 + 24);
    *(a1 + 36) = *(v27 + 24);
    *(a1 + 37) = *(v23 + 24);
    if ((v43[3] & 1) != 0 || (v47[3]) && (v39[3] & 1) == 0 && (*(v31 + 24) != 1 || a2[136] != 1 || *(v35 + 24) == 1))
    {
      if (CI_ENABLE_FUNCTION_STITCHING() && *(v43 + 24) == 1)
      {
        v5 = CI_ENABLE_UBER_SHADER();
        v6 = 2;
        if (v5 && v8 <= 8)
        {
          if ([a3 supportsFunctionPointers] && ((objc_msgSend(a3, "supportsFamily:", 1006) & 1) != 0 || objc_msgSend(a3, "supportsFamily:", 2002)) && ((v7 = *(*(a1 + 24) + 2032), (CI_USE_AIR_UBER_SHADER() & 1) != 0) || *(v7 + 96) == 1))
          {
            if (*(a1 + 36))
            {
              v6 = 3;
            }

            else
            {
              v6 = 2;
            }
          }

          else
          {
            v6 = 2;
          }
        }
      }

      else
      {
        v6 = 1;
      }

      *(a1 + 32) = v6;
      CI::MetalDAGHelper::build_dag_object(a1);
    }

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }
}

void sub_19CE973A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 248), 8);
  _Block_object_dispose((v42 - 216), 8);
  _Block_object_dispose((v42 - 184), 8);
  _Block_object_dispose((v42 - 152), 8);
  _Block_object_dispose((v42 - 120), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__61(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZN2CI14MetalDAGHelper15analyze_kernelsEPKNS_11ProgramNodeEPU19objcproto9MTLDevice11objc_object_block_invoke(uint64_t a1, CI::Object *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 == -1)
  {
    v10 = *(a1 + 104);
    v28 = this;
    v29 = 0;
    if (this)
    {
      CI::Object::ref(this);
    }

    v11 = (*(*this + 336))(this, *(v10 + 24));
    v29 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v28;
    }

    if (!a3 && (*(*this + 16))(this) == 59)
    {
      if ((v14 = *(this + 17), HIDWORD(v14)) && v14 && *(this + 36) || (v15 = *(this + 148), HIDWORD(v15)) && v15 && *(this + 39))
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    v17 = CI::kernel_for_node(v13, v12);
    if (v17)
    {
      if ((CI::is_kernel_metalstitchable_linkable(*(v10 + 24), v17, v16) & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }

      if ((CI::is_kernel_metalextern_linkable(*(v10 + 24), v17, v18) & 1) == 0)
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }

      if ((*(*v17 + 16))(v17) == 70 && *(v17 + 172) == 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      if ((*(*v17 + 72))(v17) && !*(v17 + 32))
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }

      if ((*(*v17 + 72))(v17))
      {
        *(*(*(a1 + 80) + 8) + 24) = 0;
        if (CI_HARVESTING_SPECIFIC_LIBRARY_LIST())
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithCString:CI_HARVESTING_SPECIFIC_LIBRARY_LIST() encoding:1];
          v20 = (*(*v17 + 72))(v17);
          if (CI::MetalKernel::isFromLibrary(v20, v19))
          {
            *(*(*(a1 + 88) + 8) + 24) = 1;
          }
        }
      }

      v21 = *(*(a1 + 96) + 8);
      v22 = *(v21 + 48);
      v23 = *(v17 + 128);
      if (v22 <= *(v17 + 120))
      {
        v22 = *(v17 + 120);
      }

      *(v21 + 48) = v22;
      v24 = *(*(a1 + 96) + 8);
      v25 = *(v24 + 56);
      if (v25 <= v23)
      {
        v25 = v23;
      }

      *(v24 + 56) = v25;
    }

    CI::ConvertedNodeRAII::~ConvertedNodeRAII(&v28);
  }

  else
  {
    v7 = (*(**(a1 + 112) + 48))(*(a1 + 112), a6);
    if (*(*v7 + 16))(v7) == 60 && (v7[144])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v26 = 0;
  }

  else
  {
    v26 = *(*(*(a1 + 56) + 8) + 24) ^ 1;
  }

  return v26 & 1;
}

uint64_t CI::MetalDAGHelper::build_dag_object(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 <= 1)
  {
    if (v1 == 1)
    {
      std::allocate_shared[abi:nn200100]<CI::LegacyDAGDescriptor,std::allocator<CI::LegacyDAGDescriptor>,BOOL &,BOOL &,0>();
    }

    if (!v1)
    {
      abort();
    }
  }

  else
  {
    if (v1 == 2)
    {
      std::allocate_shared[abi:nn200100]<CI::StitchableFunctionDAGDescriptor,std::allocator<CI::StitchableFunctionDAGDescriptor>,BOOL &,BOOL &,0>();
    }

    if (v1 == 3)
    {
      std::allocate_shared[abi:nn200100]<CI::UberDAGDescriptor,std::allocator<CI::UberDAGDescriptor>,CI::MetalContext const*&,0>();
    }
  }

  return this;
}

void sub_19CE979C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void CI::create_metal_args(CI *this, const CI::MetalContext *a2, const CI::Node *a3, const CI::ProgramNode *a4, CI::SerialObjectPtrArray *a5)
{
  CI::MetalDAGHelper::MetalDAGHelper(v10, this);
  v9 = CI::MetalContext::device(this);
  CI::MetalDAGHelper::analyze_kernels(v10, a3, v9);
  CI::MetalDAGHelper::build_dag(v10, a2, a3, a4, 1);
  CI::MetalDAGHelper::~MetalDAGHelper(v10);
}

uint64_t CI::new_uber_functions(id *this, const CI::MetalContext *a2)
{
  if (CI_ENABLE_UBER_SHADER())
  {
    v3 = CI::MetalContext::device(this);
    if ([v3 supportsFunctionPointers])
    {
      if (([v3 supportsFamily:1006] & 1) != 0 || objc_msgSend(v3, "supportsFamily:", 2002))
      {
        operator new();
      }
    }
  }

  return 0;
}

uint64_t CI::delete_precompiled_kernels(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

CI::PrecompiledUberFunctions *CI::delete_precompiled_uber_functions(CI::PrecompiledUberFunctions *this, CI::PrecompiledUberFunctions *a2)
{
  if (this)
  {
    CI::PrecompiledUberFunctions::~PrecompiledUberFunctions(this);

    JUMPOUT(0x19EAF5590);
  }

  return this;
}

id *CI::release_ci_dylib(id *this, CI::CoreImageDylib *a2)
{
  if (this)
  {
    CI::CoreImageDylib::~CoreImageDylib(this);

    JUMPOUT(0x19EAF5590);
  }

  return this;
}

void CI::add_to_kernel_archive(NSObject **a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *a1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZN2CI13KernelArchive10addArchiveEPKv_block_invoke;
    v3[3] = &__block_descriptor_48_e5_v8__0l;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_barrier_sync(v2, v3);
  }
}

void sub_19CE97E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAF5590](v11, v12);
  _Unwind_Resume(a1);
}

dispatch_object_t *CI::release_kernel_archive(dispatch_object_t *this, CI::KernelArchive *a2)
{
  if (this)
  {
    CI::KernelArchive::~KernelArchive(this);

    JUMPOUT(0x19EAF5590);
  }

  return this;
}

void CI::LegacyDAGDescriptor::create_function_info(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LOBYTE(v4) = 0;
    *(&v4 + 1) = (*(*a2 + 16))(a2);
    v5 = (*(*a2 + 24))(a2);
    std::vector<MTLImageFilterFunctionInfoSPI>::push_back[abi:nn200100](a1 + 40, &v4);
  }
}

void CI::LegacyDAGDescriptor::create_early_out_function_info(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LOBYTE(v4) = 1;
    *(&v4 + 1) = (*(*a2 + 16))(a2);
    v5 = (*(*a2 + 24))(a2);
    std::vector<MTLImageFilterFunctionInfoSPI>::push_back[abi:nn200100](a1 + 40, &v4);
  }
}

uint64_t CI::ConcatenatedDAGDescriptor::add_function_from_kernel(_BYTE *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  (*(*a1 + 112))(a1);
  result = [a2 importedLibraries];
  if (result)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [a2 importedLibraries];
    result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v9 + 1) + 8 * v8) containsString:@"CoreImage.metallib"])
          {
            a1[24] = 1;
          }

          ++v8;
        }

        while (v6 != v8);
        result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

void CI::LegacyDAGDescriptor::~LegacyDAGDescriptor(id *this)
{
  CI::LegacyDAGDescriptor::~LegacyDAGDescriptor(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F10382A8;

  v2 = this[8];
  v3 = this[9];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 48))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = this[8];
  }

  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v4 = this[5];
  if (v4)
  {
    this[6] = v4;
    operator delete(v4);
  }

  *this = &unk_1F1038530;
}

void CI::LegacyDAGDescriptor::ArgumentInfo::~ArgumentInfo(CI::LegacyDAGDescriptor::ArgumentInfo *this)
{
  *this = &unk_1F1038348;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F1038348;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x19EAF5590);
}

void *CI::StitchableFunctionDAGDescriptor::create_sampler_builder_function_info(uint64_t a1, void *a2)
{
  v2 = a2;
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (([*(a1 + 152) containsObject:{objc_msgSend(*(a1 + 168), "name")}] & 1) == 0)
    {
      [*(a1 + 160) addObject:*(a1 + 168)];
      [*(a1 + 152) addObject:{objc_msgSend(*(a1 + 168), "name")}];
    }

    v4 = (*(*v2 + 24))(v2);
    v5 = objc_alloc(MEMORY[0x1E69740A0]);
    v6 = [*(a1 + 168) name];
    v8[0] = *(a1 + 72);
    v2 = [v5 initWithName:v6 arguments:v4 controlDependencies:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 1)}];
    [*(a1 + 104) addObject:v2];
    ++*(a1 + 112);
  }

  return v2;
}

void *CI::StitchableFunctionDAGDescriptor::create_priv_dest_coord_builder_function_info(uint64_t a1, uint64_t a2, int a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v5 = 176;
  if (a3)
  {
    v5 = 184;
  }

  v6 = *(a1 + v5);
  if (([*(a1 + 152) containsObject:{objc_msgSend(v6, "name")}] & 1) == 0)
  {
    [*(a1 + 160) addObject:v6];
    [*(a1 + 152) addObject:{objc_msgSend(v6, "name")}];
  }

  v7 = (*(*a2 + 24))(a2);
  v8 = objc_alloc(MEMORY[0x1E69740A0]);
  v9 = [v6 name];
  v12[0] = *(a1 + 72);
  v10 = [v8 initWithName:v9 arguments:v7 controlDependencies:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 1)}];
  [*(a1 + 104) addObject:v10];
  ++*(a1 + 112);

  return v10;
}

void *CI::StitchableFunctionDAGDescriptor::create_group_dest_coord_builder_function_info(uint64_t a1, uint64_t a2, int a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v5 = 192;
  if (a3)
  {
    v5 = 200;
  }

  v6 = *(a1 + v5);
  if (([*(a1 + 152) containsObject:{objc_msgSend(v6, "name")}] & 1) == 0)
  {
    [*(a1 + 160) addObject:v6];
    [*(a1 + 152) addObject:{objc_msgSend(v6, "name")}];
  }

  v7 = (*(*a2 + 24))(a2);
  v8 = objc_alloc(MEMORY[0x1E69740A0]);
  v9 = [v6 name];
  v12[0] = *(a1 + 72);
  v10 = [v8 initWithName:v9 arguments:v7 controlDependencies:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 1)}];
  [*(a1 + 104) addObject:v10];
  ++*(a1 + 112);

  return v10;
}

void CI::StitchableFunctionDAGDescriptor::create_function_info(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = (*(*a2 + 24))(a2);
    v4 = objc_alloc(MEMORY[0x1E69740A0]);
    v5 = *(a1 + 144);
    v9[0] = *(a1 + 72);
    v6 = [v4 initWithName:v5 arguments:v3 controlDependencies:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 1)}];
    [*(a1 + 104) addObject:v6];
    v7 = *(a1 + 112);
    *(a1 + 112) = v7 + 1;
    v8 = v7;
    std::vector<CI::KernelArgumentType>::push_back[abi:nn200100]((a1 + 80), &v8);
  }
}

void CI::StitchableFunctionDAGDescriptor::create_early_out_function_info(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (NSClassFromString(&cfstr_Mtlfunctionsti.isa))
    {
      v4 = objc_alloc(MEMORY[0x1E69740A0]);
      v5 = *(a1 + 144);
      v6 = (*(*a2 + 24))(a2);
      v7 = MEMORY[0x1E695E0F0];
      v8 = [v4 initWithName:v5 arguments:v6 controlDependencies:MEMORY[0x1E695E0F0]];
      v9 = [objc_alloc(MEMORY[0x1E6974098]) initWithCondition:v8 controlDependencies:v7];
      *(a1 + 72) = v8;
      [*(a1 + 104) addObject:v8];
      v10 = *(a1 + 112);
      *(a1 + 112) = v10 + 1;
      v14 = v10;
      std::vector<CI::KernelArgumentType>::push_back[abi:nn200100]((a1 + 80), &v14);
      [*(a1 + 104) addObject:v9];
      ++*(a1 + 112);
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E69740A8]);
      v8 = [v11 initWithName:*(a1 + 144) arguments:(*(*a2 + 24))(a2) controlDependencies:MEMORY[0x1E695E0F0] isEarlyReturn:1];
      *(a1 + 72) = v8;
      [*(a1 + 104) addObject:v8];
      v12 = *(a1 + 112);
      *(a1 + 112) = v12 + 1;
      v13 = v12;
      std::vector<CI::KernelArgumentType>::push_back[abi:nn200100]((a1 + 80), &v13);
    }
  }
}

uint64_t CI::StitchableFunctionDAGDescriptor::compile(uint64_t a1, uint64_t a2, char *a3, CI::CoreImageDylib *a4, void *a5, uint64_t a6, unsigned int a7)
{
  dag_descriptor = CI::StitchableFunctionDAGDescriptor::create_dag_descriptor(a1, a3);
  if (*(a1 + 24) == 1)
  {
    v15 = CI::CoreImageDylib::get(a4);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (CI_ARCHIVE_USAGE_MODE() == 2 && (*(a1 + 8) & 1) != 0)
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  if (CI_ARCHIVE_USAGE_MODE() == 3 && *(a1 + 8) != 1)
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  v18 = v17;
  v19 = CIMetalRenderPipelineStateCreateFromDagDescriptor(a2, a3, a5, dag_descriptor, v17, v15, a6, a7);

  return v19;
}

uint64_t CI::StitchableFunctionDAGDescriptor::compile(uint64_t a1, uint64_t a2, char *a3, CI::CoreImageDylib *a4, void *a5, uint64_t a6)
{
  dag_descriptor = CI::StitchableFunctionDAGDescriptor::create_dag_descriptor(a1, a3);
  if (*(a1 + 24) == 1)
  {
    v13 = CI::CoreImageDylib::get(a4);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (CI_ARCHIVE_USAGE_MODE() == 2 && (*(a1 + 8) & 1) != 0)
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  if (CI_ARCHIVE_USAGE_MODE() == 3 && *(a1 + 8) != 1)
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = v15;
  v17 = CIMetalComputePipelineStateCreateFromDagDescriptor(a2, a3, a5, dag_descriptor, v15, v13, a6);

  return v17;
}

uint64_t CI::StitchableFunctionDAGDescriptor::add_function(uint64_t a1, void *a2)
{
  v4 = [a2 name];
  result = [*(a1 + 152) member:v4];
  v6 = result;
  if (!result)
  {
    [*(a1 + 160) addObject:a2];
    v6 = [MEMORY[0x1E696AEC0] stringWithString:v4];
    result = [*(a1 + 152) addObject:v6];
  }

  *(a1 + 144) = v6;
  return result;
}

void CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(id *this)
{
  CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1038390;

  v2 = this[15];
  v3 = this[16];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 48))(*v2);
    }

    ++v2;
  }

  v4 = this[15];
  if (v4)
  {
    this[16] = v4;
    operator delete(v4);
  }

  v5 = this[10];
  if (v5)
  {
    this[11] = v5;
    operator delete(v5);
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 6), this[7]);
  *this = &unk_1F1038530;
}

void CI::StitchableFunctionDAGDescriptor::ArgumentInfo::~ArgumentInfo(id *this)
{
  *this = &unk_1F1038430;
}

{
  *this = &unk_1F1038430;

  JUMPOUT(0x19EAF5590);
}

uint64_t non-virtual thunk toCI::MetalDAGProgram::type(CI::MetalDAGProgram *this)
{
  return 76;
}

{
  return 76;
}

unint64_t CI::mtl_func_hash(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = [a1 bitCodeHash];
  v2 = v1[1];
  __src[0] = *v1;
  __src[1] = v2;
  XXH64_reset(v4, 0);
  XXH64_update(v4, __src, 0x20uLL);
  return XXH64_digest(v4);
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

std::string *CI::MetalDAGHelper::TextureReadFunction::TextureReadFunction(std::string *this, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  std::vector<unsigned long>::vector[abi:nn200100](this[1].__r_.__value_.__r.__words, a3);
  this[2].__r_.__value_.__s.__data_[0] = 0;
  return this;
}

void sub_19CE99180(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CI::MetalDAGHelper *CI::MetalDAGHelper::MetalDAGHelper(CI::MetalDAGHelper *this, const CI::MetalContext *a2)
{
  *this = &unk_1F10384D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = xmmword_19CF22D70;
  *(this + 14) = 0;
  *(this + 13) = this + 112;
  *(this + 12) = 16;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 16) = this + 136;
  *(this + 18) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = this + 184;
  *(this + 19) = this + 160;
  *(this + 25) = objc_opt_new();
  return this;
}

void sub_19CE99270(_Unwind_Exception *a1)
{
  v6 = v4;
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v6, *(v1 + 184));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy(v5, *(v1 + 160));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v3, *(v1 + 136));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v2, *(v1 + 112));
  v8 = *(v1 + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  _Unwind_Resume(a1);
}

void CI::MetalDAGHelper::~MetalDAGHelper(id *this)
{
  CI::MetalDAGHelper::~MetalDAGHelper(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F10384D8;

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 22), this[23]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy((this + 19), this[20]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 16), this[17]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 13), this[14]);
  v2 = this[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void sub_19CE99378(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v1 + 176, *(v1 + 184));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::destroy(v1 + 152, *(v1 + 160));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v1 + 128, *(v1 + 136));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v1 + 104, *(v1 + 112));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<CI::LegacyDAGDescriptor>::__shared_ptr_emplace[abi:nn200100]<BOOL &,BOOL &,std::allocator<CI::LegacyDAGDescriptor>,0>(void *a1, char *a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F10384F8;
  CI::LegacyDAGDescriptor::LegacyDAGDescriptor((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<CI::LegacyDAGDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F10384F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF5590);
}

CI::LegacyDAGDescriptor *CI::LegacyDAGDescriptor::LegacyDAGDescriptor(CI::LegacyDAGDescriptor *this, char a2, char a3)
{
  *this = &unk_1F1038530;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 2) = objc_opt_new();
  *this = &unk_1F10382A8;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = objc_opt_new();
  return this;
}

void sub_19CE995E0(_Unwind_Exception *a1)
{
  v5 = *(v1 + 64);
  if (v5)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  *v1 = v2;

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<CI::StitchableFunctionDAGDescriptor>::__shared_ptr_emplace[abi:nn200100]<BOOL &,BOOL &,std::allocator<CI::StitchableFunctionDAGDescriptor>,0>(void *a1, char *a2, char *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F10385D0;
  CI::StitchableFunctionDAGDescriptor::StitchableFunctionDAGDescriptor((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<CI::StitchableFunctionDAGDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F10385D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF5590);
}

CI::StitchableFunctionDAGDescriptor *CI::StitchableFunctionDAGDescriptor::StitchableFunctionDAGDescriptor(CI::StitchableFunctionDAGDescriptor *this, char a2, char a3)
{
  *this = &unk_1F1038530;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 2) = objc_opt_new();
  *this = &unk_1F1038390;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v4 = objc_opt_new();
  *(this + 120) = 0u;
  *(this + 13) = v4;
  *(this + 28) = 0;
  *(this + 136) = 0u;
  *(this + 19) = objc_opt_new();
  *(this + 20) = objc_opt_new();
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 193) = 0u;
  return this;
}

void sub_19CE99890(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v3, *(v1 + 56));
  *v1 = v2;

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<CI::UberDAGDescriptor>::__shared_ptr_emplace[abi:nn200100]<CI::MetalContext const*&,std::allocator<CI::UberDAGDescriptor>,0>(void *a1, const CI::MetalContext **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1038608;
  CI::UberDAGDescriptor::UberDAGDescriptor((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<CI::UberDAGDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1038608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAF5590);
}

CI::UberDAGDescriptor *CI::UberDAGDescriptor::UberDAGDescriptor(CI::UberDAGDescriptor *this, const CI::MetalContext *a2)
{
  v4 = CI::StitchableFunctionDAGDescriptor::StitchableFunctionDAGDescriptor(this);
  *v4 = &unk_1F1038640;
  *(v4 + 27) = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = *(a2 + 254);
  *(this + 248) = 0u;
  *(this + 28) = v5;
  *(this + 29) = v6;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 37) = CI::MetalContext::device(a2);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  return this;
}

void sub_19CE99AD0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 272);
  if (v4)
  {
    *(v1 + 280) = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 256) = v5;
    operator delete(v5);
  }

  CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(v1);
  _Unwind_Resume(a1);
}

CI::StitchableFunctionDAGDescriptor *CI::StitchableFunctionDAGDescriptor::StitchableFunctionDAGDescriptor(CI::StitchableFunctionDAGDescriptor *this)
{
  *this = &unk_1F1038530;
  *(this + 4) = 1;
  *(this + 24) = 0;
  *(this + 4) = 0;
  *(this + 2) = objc_opt_new();
  *this = &unk_1F1038390;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v2 = objc_opt_new();
  *(this + 120) = 0u;
  *(this + 13) = v2;
  *(this + 28) = 0;
  *(this + 136) = 0u;
  *(this + 19) = objc_opt_new();
  *(this + 20) = objc_opt_new();
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 25) = 0;
  *(this + 208) = 1;
  return this;
}

void sub_19CE99C18(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v3, *(v1 + 56));
  *v1 = v2;

  _Unwind_Resume(a1);
}

void sub_19CE99D80(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    *(v1 + 128) = v3;
    operator delete(v3);
  }

  CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(v1);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v1 + 48, *(v1 + 56));
  *v1 = &unk_1F1038530;

  _Unwind_Resume(a1);
}

size_t CI::UberDAGDescriptor::print(CI::UberDAGDescriptor *this, __sFILE *a2)
{
  v3 = this;
  v4 = this + 304;
  if (*(this + 327) < 0)
  {
    v4 = *v4;
  }

  fprintf(a2, "// Uber DAG Functions: %s\n", v4);
  v5 = *(v3 + 27);
  if (v5)
  {
    v19 = *v5[1];
    v18 = *v19;
    if (!v18)
    {
      goto LABEL_31;
    }

    v6 = 0;
    v7 = 0;
    v16 = **v5 + 4;
    v17 = v3;
    while (1)
    {
      fprintf(a2, "#%zu = ", v6);
      v8 = v6 + 1;
      v9 = v19[v6 + 1];
      fputs([objc_msgSend(*(v3 + 28) objectAtIndexedSubscript:{v6), "UTF8String"}], a2);
      v10 = v7 - v9;
      if (!v10)
      {
        fwrite("()\n", 3uLL, 1uLL, a2);
        goto LABEL_30;
      }

      v11 = 0;
      v12 = v16 + 12 * v7;
      do
      {
        if (v11)
        {
          v13 = 44;
        }

        else
        {
          v13 = 40;
        }

        fprintf(a2, "%c ", v13);
        v14 = *(v12 - 4);
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            fprintf(a2, "BufferReference%zu");
            goto LABEL_28;
          }

          if (v14 != 4)
          {
            if (v14 == 5)
            {
              fprintf(a2, "#%zu");
              goto LABEL_28;
            }

            goto LABEL_24;
          }

          fwrite("ThreadPositionInGrid", 0x14uLL, 1uLL, a2);
        }

        else if (v14)
        {
          if (v14 != 1)
          {
            if (v14 == 2)
            {
              fprintf(a2, "Buffer%zu+%zu");
              goto LABEL_28;
            }

LABEL_24:
            fputs("ArgumentInfoUnknown", a2);
            goto LABEL_28;
          }

          fprintf(a2, "Sampler%zu");
        }

        else if (v6 == v18 - 1)
        {
          fprintf(a2, "OutputTexture%zu");
        }

        else
        {
          fprintf(a2, "Texture%zu");
        }

LABEL_28:
        --v11;
        v12 += 12;
      }

      while (v10 != v11);
      fwrite(")\n", 2uLL, 1uLL, a2);
      v7 = v19[v8];
      v3 = v17;
LABEL_30:
      ++v6;
      if (v8 == v18)
      {
LABEL_31:

        return fputc(10, a2);
      }
    }
  }

  return fwrite("// Uber DAG Pipeine Not Created\n", 0x20uLL, 1uLL, a2);
}

uint64_t CI::UberDAGDescriptor::get_type_name(CI::UberDAGDescriptor *this)
{
  result = this + 304;
  if (*(this + 327) < 0)
  {
    return *result;
  }

  return result;
}

void CI::UberDAGDescriptor::~UberDAGDescriptor(CI::UberDAGDescriptor *this)
{
  CI::UberDAGDescriptor::~UberDAGDescriptor(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1038640;
  v2 = *(this + 27);
  if (v2)
  {
    CFRelease(*(v2 + 16));
    CFRelease(*(v2 + 24));
    MEMORY[0x19EAF5590](v2, 0xE0C408ACB2F0BLL);
    *(this + 27) = 0;
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  v3 = *(this + 34);
  if (v3)
  {
    *(this + 35) = v3;
    operator delete(v3);
  }

  v4 = *(this + 31);
  if (v4)
  {
    *(this + 32) = v4;
    operator delete(v4);
  }

  CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(this);
}

void CI::UberDAGDescriptor::create_pipeline(CI::UberDAGDescriptor *this)
{
  v2 = 0;
  v3 = 0;
  v175 = *MEMORY[0x1E69E9840];
  v172 = 0;
  v173 = 0;
  v170[1] = 0;
  v171 = &v172;
  v169 = v170;
  v170[0] = 0;
  while (v2 < [*(this + 13) count])
  {
    v168 = [*(this + 13) objectAtIndexedSubscript:v2];
    if (CI::StitchableFunctionDAGDescriptor::is_builder_function(this, [v168 name]) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      std::__tree<MTLFunctionStitchingFunctionNode *>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,MTLFunctionStitchingFunctionNode * const&>(&v169, &v168);
    }

    else
    {
      *buf = &v168;
      *(std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(&v171, &v168) + 10) = v3++;
    }

    ++v2;
  }

  v4 = v173;
  *(this + 30) = v173;
  if (v4 > 0x40)
  {
    goto LABEL_9;
  }

  *buf = v4;
  v165 = (this + 272);
  std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](this + 34, buf);
  v5 = 0;
  v6 = (this + 248);
  while (v5 < [*(this + 13) count])
  {
    v7 = [*(this + 13) count];
    v8 = [*(this + 13) objectAtIndexedSubscript:v5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && !CI::StitchableFunctionDAGDescriptor::is_builder_function(this, [v8 name]))
    {
      v9 = 0;
      v166 = v7 - 1;
      while (1)
      {
        if (v9 >= [objc_msgSend(v8 "arguments")])
        {
          *buf = -1431655765 * ((*(this + 32) - *(this + 31)) >> 2);
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](v165, buf);
          [*(this + 28) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithString:", objc_msgSend(v8, "name"))}];
          goto LABEL_200;
        }

        [objc_msgSend(v8 "arguments")];
        argument_type = CI::StitchableFunctionDAGDescriptor::get_argument_type();
        if (argument_type <= 3)
        {
          break;
        }

        if ((argument_type - 4) < 2)
        {
          v23 = [objc_msgSend(v8 "arguments")];
          v24 = [v23 bindIndex];
          v25 = [v23 byteOffset];
          v26 = *(this + 32);
          v27 = *(this + 33);
          if (v26 >= v27)
          {
            v38 = *v6;
            v39 = v26 - *v6;
            v40 = 0xAAAAAAAAAAAAAAABLL * (v39 >> 2) + 1;
            if (v40 > 0x1555555555555555)
            {
              goto LABEL_219;
            }

            v41 = 0xAAAAAAAAAAAAAAABLL * ((v27 - v38) >> 2);
            if (2 * v41 > v40)
            {
              v40 = 2 * v41;
            }

            if (v41 >= 0xAAAAAAAAAAAAAAALL)
            {
              v40 = 0x1555555555555555;
            }

            if (v40)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v40);
            }

            v50 = (4 * (v39 >> 2));
            *v50 = 2;
            v50[1] = v24;
            v50[2] = v25;
            v28 = v50 + 3;
            v51 = v50 - v39;
            memcpy(v50 - v39, v38, v39);
            v52 = *(this + 31);
            *(this + 31) = v51;
            *(this + 32) = v28;
            *(this + 33) = 0;
            if (v52)
            {
              operator delete(v52);
            }
          }

          else
          {
            *v26 = 2;
            *(v26 + 1) = v24;
            v28 = v26 + 12;
            *(v26 + 2) = v25;
          }

          goto LABEL_197;
        }

        if (argument_type != 6)
        {
          if (argument_type != 7)
          {
            goto LABEL_198;
          }

          v13 = [objc_msgSend(v8 "arguments")];
          v168 = v13;
          v14 = v170[0];
          if (!v170[0])
          {
            goto LABEL_31;
          }

          v15 = v170;
          do
          {
            v16 = v14[4];
            v17 = v16 >= v13;
            v18 = v16 < v13;
            if (v17)
            {
              v15 = v14;
            }

            v14 = v14[v18];
          }

          while (v14);
          if (v15 == v170 || v13 < v15[4])
          {
LABEL_31:
            *buf = &v168;
            v19 = std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(&v171, &v168);
            v20 = *(this + 32);
            v21 = *(this + 33);
            if (v20 >= v21)
            {
              v31 = *v6;
              v32 = v20 - *v6;
              v47 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2);
              v48 = v47 + 1;
              if (v47 + 1 > 0x1555555555555555)
              {
                goto LABEL_219;
              }

              v49 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v31) >> 2);
              if (2 * v49 > v48)
              {
                v48 = 2 * v49;
              }

              if (v49 >= 0xAAAAAAAAAAAAAAALL)
              {
                v48 = 0x1555555555555555;
              }

              if (v48)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v48);
              }

LABEL_138:
              v57 = 12 * v47;
              v100 = *(v19 + 10);
              v58 = 12 * v48;
              *v57 = 5;
              *(v57 + 4) = v100;
              goto LABEL_195;
            }

            goto LABEL_32;
          }

          if ([objc_msgSend(v13 "name")])
          {
            v53 = [objc_msgSend(objc_msgSend(v168 "arguments")] - 1;
            v54 = *(this + 32);
            v55 = *(this + 33);
            if (v54 >= v55)
            {
              v64 = *v6;
              v65 = v54 - *v6;
              v66 = 0xAAAAAAAAAAAAAAABLL * (v65 >> 2) + 1;
              if (v66 > 0x1555555555555555)
              {
                goto LABEL_219;
              }

              v67 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v64) >> 2);
              if (2 * v67 > v66)
              {
                v66 = 2 * v67;
              }

              if (v67 >= 0xAAAAAAAAAAAAAAALL)
              {
                v66 = 0x1555555555555555;
              }

              if (v66)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v66);
              }

              v71 = (4 * (v65 >> 2));
              *v71 = 0;
              v71[1] = v53;
              v71[2] = 0;
              v56 = v71 + 3;
              v72 = v71 - v65;
              memcpy(v71 - v65, v64, v65);
              v73 = *(this + 31);
              *(this + 31) = v72;
              *(this + 32) = v56;
              *(this + 33) = 0;
              if (v73)
              {
                operator delete(v73);
              }
            }

            else
            {
              *v54 = 0;
              *(v54 + 1) = v53;
              v56 = v54 + 12;
              *(v54 + 2) = 0;
            }

            *(this + 32) = v56;
            v74 = [objc_msgSend(objc_msgSend(v168 "arguments")];
            v75 = *(this + 32);
            v76 = *(this + 33);
            if (v75 >= v76)
            {
              v78 = *v6;
              v79 = v75 - *v6;
              v80 = 0xAAAAAAAAAAAAAAABLL * (v79 >> 2) + 1;
              if (v80 > 0x1555555555555555)
              {
                goto LABEL_219;
              }

              v81 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v78) >> 2);
              if (2 * v81 > v80)
              {
                v80 = 2 * v81;
              }

              if (v81 >= 0xAAAAAAAAAAAAAAALL)
              {
                v80 = 0x1555555555555555;
              }

              if (v80)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v80);
              }

              v82 = (4 * (v79 >> 2));
              *v82 = 1;
              v82[1] = v74;
              v82[2] = 0;
              v77 = v82 + 3;
              v83 = v82 - v79;
              memcpy(v82 - v79, v78, v79);
              v84 = *(this + 31);
              *(this + 31) = v83;
              *(this + 32) = v77;
              *(this + 33) = 0;
              if (v84)
              {
                operator delete(v84);
              }
            }

            else
            {
              *v75 = 1;
              *(v75 + 1) = v74;
              v77 = v75 + 12;
              *(v75 + 2) = 0;
            }

            *(this + 32) = v77;
            v85 = [objc_msgSend(v168 "arguments")];
            v86 = [v85 bindIndex];
            v87 = [v85 byteOffset];
            v88 = *(this + 32);
            v89 = *(this + 33);
            if (v88 >= v89)
            {
              v91 = *v6;
              v92 = v88 - *v6;
              v93 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 2) + 1;
              if (v93 > 0x1555555555555555)
              {
                goto LABEL_219;
              }

              v94 = 0xAAAAAAAAAAAAAAABLL * ((v89 - v91) >> 2);
              if (2 * v94 > v93)
              {
                v93 = 2 * v94;
              }

              if (v94 >= 0xAAAAAAAAAAAAAAALL)
              {
                v93 = 0x1555555555555555;
              }

              if (v93)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v93);
              }

              v95 = (4 * (v92 >> 2));
              *v95 = 2;
              v95[1] = v86;
              v95[2] = v87;
              v90 = v95 + 3;
              v96 = v95 - v92;
              memcpy(v95 - v92, v91, v92);
              v97 = *(this + 31);
              *(this + 31) = v96;
              *(this + 32) = v90;
              *(this + 33) = 0;
              if (v97)
              {
                operator delete(v97);
              }
            }

            else
            {
              *v88 = 2;
              *(v88 + 1) = v86;
              v90 = v88 + 12;
              *(v88 + 2) = v87;
            }

            *(this + 32) = v90;
            v167 = [objc_msgSend(v168 "arguments")];
            *buf = &v167;
            v19 = std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(&v171, &v167);
            v20 = *(this + 32);
            v98 = *(this + 33);
            if (v20 >= v98)
            {
              v31 = *v6;
              v32 = v20 - *v6;
              v47 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2);
              v48 = v47 + 1;
              if (v47 + 1 > 0x1555555555555555)
              {
                goto LABEL_219;
              }

              v99 = 0xAAAAAAAAAAAAAAABLL * ((v98 - v31) >> 2);
              if (2 * v99 > v48)
              {
                v48 = 2 * v99;
              }

              if (v99 >= 0xAAAAAAAAAAAAAAALL)
              {
                v48 = 0x1555555555555555;
              }

              if (v48)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v48);
              }

              goto LABEL_138;
            }

LABEL_32:
            v22 = *(v19 + 10);
            *v20 = 5;
            *(v20 + 4) = v22;
LABEL_42:
            v28 = (v20 + 12);
            goto LABEL_197;
          }

          if (![objc_msgSend(v168 "name")])
          {
            goto LABEL_198;
          }

          v167 = [objc_msgSend(v168 "arguments")];
          *buf = &v167;
          v59 = std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(&v171, &v167);
          v60 = *(this + 32);
          v61 = *(this + 33);
          if (v60 >= v61)
          {
            v68 = *v6;
            v69 = v60 - *v6;
            v70 = 0xAAAAAAAAAAAAAAABLL * (v69 >> 2) + 1;
            if (v70 > 0x1555555555555555)
            {
              goto LABEL_219;
            }

            if (0x5555555555555556 * ((v61 - v68) >> 2) > v70)
            {
              v70 = 0x5555555555555556 * ((v61 - v68) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v61 - v68) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v70 = 0x1555555555555555;
            }

            if (v70)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v70);
            }

            v101 = 4 * (v69 >> 2);
            v102 = *(v59 + 10);
            v61 = 0;
            *v101 = 5;
            *(v101 + 4) = v102;
            v63 = v101 + 12;
            v103 = v101 - v69;
            memcpy((v101 - v69), v68, v69);
            v104 = *(this + 31);
            *(this + 31) = v103;
            *(this + 32) = v63;
            *(this + 33) = 0;
            if (v104)
            {
              operator delete(v104);
              v61 = *(this + 33);
            }
          }

          else
          {
            v62 = *(v59 + 10);
            *v60 = 5;
            *(v60 + 4) = v62;
            v63 = v60 + 12;
          }

          *(this + 32) = v63;
          if (v63 >= v61)
          {
            v106 = *v6;
            v107 = v63 - *v6;
            v108 = 0xAAAAAAAAAAAAAAABLL * (v107 >> 2) + 1;
            if (v108 > 0x1555555555555555)
            {
              goto LABEL_219;
            }

            if (0x5555555555555556 * ((v61 - v106) >> 2) > v108)
            {
              v108 = 0x5555555555555556 * ((v61 - v106) >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v61 - v106) >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v108 = 0x1555555555555555;
            }

            if (v108)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v108);
            }

            v109 = 4 * (v107 >> 2);
            *v109 = 4;
            *(v109 + 8) = 0;
            v105 = v109 + 12;
            v110 = v109 - v107;
            memcpy((v109 - v107), v106, v107);
            v111 = *(this + 31);
            *(this + 31) = v110;
            *(this + 32) = v105;
            *(this + 33) = 0;
            if (v111)
            {
              operator delete(v111);
            }
          }

          else
          {
            *v63 = 4;
            *(v63 + 8) = 0;
            v105 = v63 + 12;
          }

          *(this + 32) = v105;
          v112 = [objc_msgSend(v168 "arguments")];
          v113 = [v112 bindIndex];
          v114 = [v112 byteOffset];
          v115 = *(this + 32);
          v116 = *(this + 33);
          if (v115 >= v116)
          {
            v118 = *v6;
            v119 = v115 - *v6;
            v120 = 0xAAAAAAAAAAAAAAABLL * (v119 >> 2) + 1;
            if (v120 > 0x1555555555555555)
            {
              goto LABEL_219;
            }

            v121 = 0xAAAAAAAAAAAAAAABLL * ((v116 - v118) >> 2);
            if (2 * v121 > v120)
            {
              v120 = 2 * v121;
            }

            if (v121 >= 0xAAAAAAAAAAAAAAALL)
            {
              v120 = 0x1555555555555555;
            }

            if (v120)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v120);
            }

            v122 = (4 * (v119 >> 2));
            *v122 = 2;
            v122[1] = v113;
            v122[2] = v114;
            v117 = v122 + 3;
            v123 = v122 - v119;
            memcpy(v122 - v119, v118, v119);
            v124 = *(this + 31);
            *(this + 31) = v123;
            *(this + 32) = v117;
            *(this + 33) = 0;
            if (v124)
            {
              operator delete(v124);
            }
          }

          else
          {
            *v115 = 2;
            *(v115 + 1) = v113;
            v117 = v115 + 12;
            *(v115 + 2) = v114;
          }

          *(this + 32) = v117;
          v125 = [objc_msgSend(v168 "arguments")];
          v126 = [v125 bindIndex];
          v127 = [v125 byteOffset];
          v128 = *(this + 32);
          v129 = *(this + 33);
          if (v128 >= v129)
          {
            v131 = *v6;
            v132 = v128 - *v6;
            v133 = 0xAAAAAAAAAAAAAAABLL * (v132 >> 2) + 1;
            if (v133 > 0x1555555555555555)
            {
              goto LABEL_219;
            }

            v134 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v131) >> 2);
            if (2 * v134 > v133)
            {
              v133 = 2 * v134;
            }

            if (v134 >= 0xAAAAAAAAAAAAAAALL)
            {
              v133 = 0x1555555555555555;
            }

            if (v133)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v133);
            }

            v135 = (4 * (v132 >> 2));
            *v135 = 2;
            v135[1] = v126;
            v135[2] = v127;
            v130 = v135 + 3;
            v136 = v135 - v132;
            memcpy(v135 - v132, v131, v132);
            v137 = *(this + 31);
            *(this + 31) = v136;
            *(this + 32) = v130;
            *(this + 33) = 0;
            if (v137)
            {
              operator delete(v137);
            }
          }

          else
          {
            *v128 = 2;
            *(v128 + 1) = v126;
            v130 = v128 + 12;
            *(v128 + 2) = v127;
          }

          *(this + 32) = v130;
          v138 = [objc_msgSend(objc_msgSend(v168 "arguments")];
          v139 = *(this + 32);
          v140 = *(this + 33);
          if (v139 >= v140)
          {
            v142 = *v6;
            v143 = v139 - *v6;
            v144 = 0xAAAAAAAAAAAAAAABLL * (v143 >> 2) + 1;
            if (v144 > 0x1555555555555555)
            {
              goto LABEL_219;
            }

            v145 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v142) >> 2);
            if (2 * v145 > v144)
            {
              v144 = 2 * v145;
            }

            if (v145 >= 0xAAAAAAAAAAAAAAALL)
            {
              v144 = 0x1555555555555555;
            }

            if (v144)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v144);
            }

            v146 = (4 * (v143 >> 2));
            *v146 = 0;
            v146[1] = v138;
            v146[2] = 0;
            v141 = v146 + 3;
            v147 = v146 - v143;
            memcpy(v146 - v143, v142, v143);
            v148 = *(this + 31);
            *(this + 31) = v147;
            *(this + 32) = v141;
            *(this + 33) = 0;
            if (v148)
            {
              operator delete(v148);
            }
          }

          else
          {
            *v139 = 0;
            *(v139 + 1) = v138;
            v141 = v139 + 12;
            *(v139 + 2) = 0;
          }

          *(this + 32) = v141;
          v12 = [objc_msgSend(objc_msgSend(v168 "arguments")];
          v20 = *(this + 32);
          v149 = *(this + 33);
          if (v20 >= v149)
          {
            v31 = *v6;
            v32 = v20 - *v6;
            v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2);
            v34 = v33 + 1;
            if (v33 + 1 > 0x1555555555555555)
            {
LABEL_219:
              std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
            }

            v150 = 0xAAAAAAAAAAAAAAABLL * ((v149 - v31) >> 2);
            if (2 * v150 > v34)
            {
              v34 = 2 * v150;
            }

            if (v150 >= 0xAAAAAAAAAAAAAAALL)
            {
              v34 = 0x1555555555555555;
            }

            if (v34)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v34);
            }

LABEL_193:
            v57 = 12 * v33;
            v58 = 12 * v34;
            *(12 * v33) = 0;
LABEL_194:
            *(v57 + 4) = v12;
LABEL_195:
            *(v57 + 8) = 0;
            v28 = (v57 + 12);
            v151 = v57 - v32;
            memcpy((v57 - v32), v31, v32);
            v152 = *(this + 31);
            *(this + 31) = v151;
            *(this + 32) = v28;
            *(this + 33) = v58;
            if (v152)
            {
              operator delete(v152);
            }

            goto LABEL_197;
          }

LABEL_40:
          *v20 = 0;
          goto LABEL_41;
        }

        v37 = *(this + 32);
        v36 = *(this + 33);
        if (v37 >= v36)
        {
          v31 = *v6;
          v32 = v37 - *v6;
          v42 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2) + 1;
          if (v42 > 0x1555555555555555)
          {
            goto LABEL_219;
          }

          v43 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v31) >> 2);
          if (2 * v43 > v42)
          {
            v42 = 2 * v43;
          }

          if (v43 >= 0xAAAAAAAAAAAAAAALL)
          {
            v44 = 0x1555555555555555;
          }

          else
          {
            v44 = v42;
          }

          if (v44)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v44);
          }

          v57 = 4 * (v32 >> 2);
          v58 = 0;
          *v57 = 4;
          goto LABEL_195;
        }

        *v37 = 4;
        *(v37 + 8) = 0;
        v28 = (v37 + 12);
LABEL_197:
        *(this + 32) = v28;
LABEL_198:
        ++v9;
      }

      if (argument_type < 3)
      {
        v11 = [objc_msgSend(v8 "arguments")];
        if (v5 == v166)
        {
          v12 = [v11 bindIndex];
        }

        else
        {
          v12 = [v11 bindIndex] - 1;
        }

        v20 = *(this + 32);
        v30 = *(this + 33);
        if (v20 >= v30)
        {
          v31 = *v6;
          v32 = v20 - *v6;
          v33 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2);
          v34 = v33 + 1;
          if (v33 + 1 > 0x1555555555555555)
          {
            goto LABEL_219;
          }

          v35 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 2);
          if (2 * v35 > v34)
          {
            v34 = 2 * v35;
          }

          if (v35 >= 0xAAAAAAAAAAAAAAALL)
          {
            v34 = 0x1555555555555555;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v34);
          }

          goto LABEL_193;
        }

        goto LABEL_40;
      }

      if (argument_type != 3)
      {
        goto LABEL_198;
      }

      v12 = [objc_msgSend(objc_msgSend(v8 "arguments")];
      v20 = *(this + 32);
      v29 = *(this + 33);
      if (v20 >= v29)
      {
        v31 = *v6;
        v32 = v20 - *v6;
        v45 = 0xAAAAAAAAAAAAAAABLL * (v32 >> 2) + 1;
        if (v45 > 0x1555555555555555)
        {
          goto LABEL_219;
        }

        v46 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v31) >> 2);
        if (2 * v46 > v45)
        {
          v45 = 2 * v46;
        }

        if (v46 >= 0xAAAAAAAAAAAAAAALL)
        {
          v45 = 0x1555555555555555;
        }

        if (v45)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(this + 248, v45);
        }

        v57 = 4 * (v32 >> 2);
        v58 = 0;
        *v57 = 1;
        goto LABEL_194;
      }

      *v20 = 1;
LABEL_41:
      *(v20 + 4) = v12;
      *(v20 + 8) = 0;
      goto LABEL_42;
    }

LABEL_200:
    ++v5;
  }

  UberShaderName = CI::PrecompiledUberFunctions::getUberShaderName(*(this + 29), *(this + 28), *(this + 5), *(this + 30));
  v154 = UberShaderName;
  if (UberShaderName)
  {
    std::string::__assign_external((this + 304), [UberShaderName UTF8String]);
    UberShader = CI::PrecompiledUberFunctions::getUberShader(*(this + 29), *(this + 28), v154);
    if (UberShader)
    {
      v156 = objc_opt_new();
      [v156 setFunctionCount:{objc_msgSend(*(this + 28), "count")}];
      v157 = [UberShader newVisibleFunctionTableWithDescriptor:v156];
      if (v157)
      {
        FunctionArray = CI::PrecompiledUberFunctions::getFunctionArray(*(this + 29), *(this + 28));
        for (i = 0; ; ++i)
        {
          if ([FunctionArray count] <= i)
          {

            operator new();
          }

          v160 = [UberShader functionHandleWithFunction:{objc_msgSend(FunctionArray, "objectAtIndexedSubscript:", i)}];
          if (!v160)
          {
            break;
          }

          [v157 setFunction:v160 atIndex:i];
        }

        v164 = ci_logger_compile();
        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          CI::UberDAGDescriptor::create_pipeline([objc_msgSend(FunctionArray objectAtIndexedSubscript:{i), "name"}], buf, v164);
        }
      }

      else
      {
        v163 = ci_logger_compile();
        if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
        {
          CI::UberDAGDescriptor::create_pipeline();
        }
      }
    }

    else
    {
      v162 = ci_logger_compile();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        CI::UberDAGDescriptor::create_pipeline();
      }
    }
  }

  else
  {
    v161 = ci_logger_compile();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      CI::UberDAGDescriptor::create_pipeline();
    }
  }

LABEL_9:
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v169, v170[0]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v171, v172);
}

void sub_19CE9B350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, char a17, void *a18)
{
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&a14, a15);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&a17, a18);
  _Unwind_Resume(a1);
}

BOOL CI::StitchableFunctionDAGDescriptor::is_builder_function(id *this, NSString *a2)
{
  if (-[NSString isEqualToString:](a2, "isEqualToString:", [this[21] name]) || -[NSString isEqualToString:](a2, "isEqualToString:", objc_msgSend(this[22], "name")) || -[NSString isEqualToString:](a2, "isEqualToString:", objc_msgSend(this[23], "name")) || -[NSString isEqualToString:](a2, "isEqualToString:", objc_msgSend(this[24], "name")))
  {
    return 1;
  }

  v5 = [this[25] name];

  return [(NSString *)a2 isEqualToString:v5];
}

uint64_t CI::PrecompiledUberFunctions::getUberShaderName(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((a3 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (a3 == 2)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = &stru_1F1040378;
        v10 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            v12 = v9;
            if (*v19 != v10)
            {
              objc_enumerationMutation(a2);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v9 = @"_simd_420";
            if (([v13 isEqualToString:@"_ci_writeSIMD_420"] & 1) == 0)
            {
              v9 = @"_simd_422";
              if (([v13 isEqualToString:@"_ci_writeSIMD_422"] & 1) == 0)
              {
                v9 = @"_tg_420";
                if (([v13 isEqualToString:@"_ci_writeTG_420"] & 1) == 0)
                {
                  v9 = @"_tg_422";
                  if (([v13 isEqualToString:@"_ci_writeTG_422"] & 1) == 0)
                  {
                    v9 = @"_to_rgb_as_r";
                    if (([v13 isEqualToString:@"_ci_to_rgb_as_r"] & 1) == 0)
                    {
                      v9 = @"_combine_420";
                      if (([v13 isEqualToString:@"_ci_combine_420"] & 1) == 0)
                      {
                        v9 = @"_combine_422";
                        if (([v13 isEqualToString:@"_ci_combine_422"] & 1) == 0)
                        {
                          v9 = @"_combine_444";
                          if (([v13 isEqualToString:@"_ci_combine_444"] & 1) == 0)
                          {
                            if ([v13 isEqualToString:@"_ci_swizzle_to_4XX"])
                            {
                              v9 = @"_swizzle_to_4XX";
                            }

                            else
                            {
                              v9 = v12;
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

          v8 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = &stru_1F1040378;
      }

      if (a4 > 0x20)
      {
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", *(a1 + 40), v9, v15];
      }

      else
      {
        return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@__%zu", *(a1 + 40), v9, a4];
      }
    }

    else if (a4 > 0x20)
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", *(a1 + 40), v14, v15];
    }

    else
    {
      return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@__%zu", *(a1 + 40), a4, v15];
    }
  }

  else
  {
    v4 = ci_logger_compile();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CI::PrecompiledUberFunctions::getUberShaderName();
    }

    return 0;
  }
}

uint64_t CI::PrecompiledUberFunctions::getUberShader(uint64_t a1, void *a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v6 = objc_opt_new();
  [v6 setName:a3];
  v7 = [*a1 newFunctionWithDescriptor:v6 error:&v21];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v21 == 0;
  }

  if (v8)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v22[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    FunctionArrayNoDuplicates = CI::PrecompiledUberFunctions::getFunctionArrayNoDuplicates(a1, a2);
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__288;
    v19 = __Block_byref_object_dispose__289;
    v20 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZNK2CI24PrecompiledUberFunctions13getUberShaderEP7NSArrayIP8NSStringES3__block_invoke;
    block[3] = &unk_1E75C6278;
    block[7] = &v15;
    block[8] = a1;
    block[4] = v7;
    block[5] = v10;
    block[6] = FunctionArrayNoDuplicates;
    dispatch_sync(*(a1 + 80), block);
    if (FunctionArrayNoDuplicates)
    {

      v11 = v16[5];
      if (!v11 && v21)
      {
        NSLog(&cfstr_ErrorCreatingP.isa, v21);
        v11 = v16[5];
      }
    }

    else
    {

      v11 = 0;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    NSLog(&cfstr_ErrorCreatingF.isa, v21);
    return 0;
  }

  return v11;
}

void sub_19CE9B9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CI::PrecompiledUberFunctions::getFunctionArray(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = *v23;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_opt_new();
        v8 = v6;
        [v7 setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"_uber%@", v6)}];
        v9 = *(a1 + 16);
        if (v9)
        {
          v10 = v9;
          v26 = *(a1 + 16);
          [v7 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v26, 1)}];
        }

        v16 = 0;
        v17 = &v16;
        v18 = 0x3052000000;
        v19 = __Block_byref_object_copy__288;
        v20 = __Block_byref_object_dispose__289;
        v21 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZNK2CI24PrecompiledUberFunctions16getFunctionArrayEP7NSArrayIP8NSStringE_block_invoke;
        block[3] = &unk_1E75C2FF0;
        block[5] = &v16;
        block[6] = a1;
        block[4] = v7;
        dispatch_sync(*(a1 + 80), block);
        if (!v17[5])
        {
          v11 = ci_logger_compile();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            CI::PrecompiledUberFunctions::getFunctionArray();
          }

          _Block_object_dispose(&v16, 8);
          return 0;
        }

        [v14 addObject:v17[5]];
        _Block_object_dispose(&v16, 8);
      }

      v3 = [a2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v14;
}

void sub_19CE9BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::__map_value_compare<MTLFunctionStitchingFunctionNode *,std::__value_type<MTLFunctionStitchingFunctionNode *,int>,std::less<MTLFunctionStitchingFunctionNode *>,true>,std::allocator<std::__value_type<MTLFunctionStitchingFunctionNode *,int>>>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,std::piecewise_construct_t const&,std::tuple<MTLFunctionStitchingFunctionNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<MTLFunctionStitchingFunctionNode *>::__emplace_unique_key_args<MTLFunctionStitchingFunctionNode *,MTLFunctionStitchingFunctionNode * const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<UberFunctionArgumentInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

id CI::PrecompiledUberFunctions::getFunctionArrayNoDuplicates(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_opt_new();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3052000000;
  v27[3] = __Block_byref_object_copy__288;
  v27[4] = __Block_byref_object_dispose__289;
  v27[5] = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v6 = *v24;
    v15 = v22;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        if (([v4 containsObject:v8] & 1) == 0)
        {
          v9 = v8;
          [v4 addObject:v8];
          v10 = objc_opt_new();
          [v10 setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"_uber%@", v8, v15)}];
          v11 = *(a1 + 16);
          if (v11)
          {
            v12 = v11;
            v28 = *(a1 + 16);
            [v10 setBinaryArchives:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v28, 1)}];
          }

          [v10 setOptions:1];
          v18 = 0;
          v19 = &v18;
          v20 = 0x3052000000;
          v21 = __Block_byref_object_copy__288;
          v22[0] = __Block_byref_object_dispose__289;
          v22[1] = 0;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ___ZNK2CI24PrecompiledUberFunctions28getFunctionArrayNoDuplicatesEP7NSArrayIP8NSStringE_block_invoke;
          block[3] = &unk_1E75C62A0;
          block[4] = v10;
          block[5] = &v18;
          block[6] = v27;
          block[7] = a1;
          dispatch_sync(*(a1 + 80), block);
          if (!v19[5])
          {
            v13 = ci_logger_compile();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              CI::PrecompiledUberFunctions::getFunctionArrayNoDuplicates();
            }

            _Block_object_dispose(&v18, 8);
            v16 = 0;
            goto LABEL_17;
          }

          [v16 addObject:?];

          _Block_object_dispose(&v18, 8);
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  _Block_object_dispose(v27, 8);
  return v16;
}

uint64_t ___ZNK2CI24PrecompiledUberFunctions13getUberShaderEP7NSArrayIP8NSStringES3__block_invoke(uint64_t a1)
{
  result = CreateUberComputePipelineState(*(*(a1 + 64) + 32), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

uint64_t ___ZNK2CI24PrecompiledUberFunctions28getFunctionArrayNoDuplicatesEP7NSArrayIP8NSStringE_block_invoke(void *a1)
{
  result = [*(a1[7] + 8) newFunctionWithDescriptor:a1[4] error:*(a1[6] + 8) + 40];
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

uint64_t ___ZNK2CI24PrecompiledUberFunctions16getFunctionArrayEP7NSArrayIP8NSStringE_block_invoke(void *a1)
{
  result = [*(a1[6] + 8) newFunctionWithDescriptor:a1[4] error:0];
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

void sub_19CE9C4FC(_Unwind_Exception *a1)
{
  if (*(v1 + 327) < 0)
  {
    operator delete(*(v1 + 304));
  }

  CI::UberDAGDescriptor::~UberDAGDescriptor(v1);
  CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(v1);
  _Unwind_Resume(a1);
}

CI::PrecompiledKernels *CI::DAGPrecompiledKernels::DAGPrecompiledKernels(CI::DAGPrecompiledKernels *this, id *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = CI::PrecompiledKernels::PrecompiledKernels(this);
  *v23 = &unk_1F10386E0;
  v3 = CI::MetalContext::device(a2);
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2[251]];
  *(v23 + 2) = [MEMORY[0x1E695DF70] array];
  v25 = (v23 + 16);
  v5 = [CIKernelLibrary internalLibraryWithName:@"ci_stdlib" device:v3];
  v6 = v5;
  if (v5)
  {
    v7 = [objc_msgSend(v5 "externFunctionNames")];
    [*v25 addObject:v6];
  }

  else
  {
    NSLog(&cfstr_FailedToLoadCi.isa);
    v7 = 0;
  }

  v8 = [CIKernelLibrary internalLibraryWithName:@"ci_filters" device:v3];
  v9 = v8;
  if (v8)
  {
    v10 = [objc_msgSend(v8 "externFunctionNames")];
    [*v25 addObject:v9];

    v7 += v10;
  }

  else
  {
    NSLog(&cfstr_FailedToLoadCi_0.isa);
  }

  if (CI_ENABLE_HALF_KERNELS() && *(a2 + 43) == 1)
  {
    *(v23 + 3) = [MEMORY[0x1E695DF70] array];
    v11 = [CIKernelLibrary internalLibraryWithName:@"ci_stdlib_h" device:v3];
    v12 = v11;
    if (v11)
    {
      v24 = [objc_msgSend(v11 "externFunctionNames")];
      [*(v23 + 3) addObject:v12];
    }

    else
    {
      NSLog(&cfstr_FailedToLoadCi_1.isa);
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    *(v23 + 3) = 0;
  }

  v13 = 0;
  v14 = v23 + 32;
  v15 = 1;
  do
  {
    v16 = v15;
    *&v14[8 * v13] = [MEMORY[0x1E695DFA8] setWithCapacity:v7];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v25[v13];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          [v21 setLabel:v4];
          [*&v14[8 * v13] addObjectsFromArray:{objc_msgSend(v21, "externFunctionNames")}];
        }

        v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    v15 = 0;
    v7 = v24;
    v13 = 1;
  }

  while ((v16 & 1) != 0);
  return v23;
}

CI::PrecompiledKernels *CI::PrecompiledKernels::PrecompiledKernels(CI::PrecompiledKernels *this)
{
  *this = &unk_1F1038700;
  *(this + 1) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 6) = dispatch_queue_create("CI::LoadLibrariesQueue", v2);
  *(this + 7) = dispatch_group_create();
  *(this + 1) = objc_opt_new();
  return this;
}

void CI::PrecompiledKernels::~PrecompiledKernels(CI::PrecompiledKernels *this)
{
  *this = &unk_1F1038700;
  v2 = (this + 48);
  dispatch_sync(*(this + 6), &__block_literal_global_322);
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);

  Queue::~Queue(v2);
}

{
  CI::PrecompiledKernels::~PrecompiledKernels(this);

  JUMPOUT(0x19EAF5590);
}

void CI::DAGPrecompiledKernels::~DAGPrecompiledKernels(CI::DAGPrecompiledKernels *this)
{
  CI::PrecompiledKernels::~PrecompiledKernels(this);

  JUMPOUT(0x19EAF5590);
}

dispatch_queue_t *CI::StitchableKernels::StitchableKernels(dispatch_queue_t *this, const CI::MetalContext *a2)
{
  *CI::PrecompiledKernels::PrecompiledKernels(this) = &unk_1F1038740;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 251)];
  this[2] = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2CI17StitchableKernelsC2EPKNS_12MetalContextE_block_invoke;
  v6[3] = &unk_1E75C62C8;
  v6[5] = this;
  v6[6] = a2;
  v6[4] = v4;
  Queue::execute_async(this + 6, v6);
  return this;
}

uint64_t ___ZN2CI17StitchableKernelsC2EPKNS_12MetalContextE_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = CI::MetalContext::device(*(a1 + 48));
  v4 = [CIKernelLibrary internalLibraryWithName:@"ci_stdlib_stitchable" device:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 "functionNames")];
    [*(v2 + 16) addObject:v5];
  }

  else
  {
    NSLog(&cfstr_FailedToLoadCi_2.isa);
    v6 = 0;
  }

  v7 = [CIKernelLibrary internalLibraryWithName:@"ci_filters_stitchable" device:v3];
  if (v7)
  {
    v8 = v7;
    v6 += [objc_msgSend(v7 "functionNames")];
    [*(v2 + 16) addObject:v8];
  }

  else
  {
    NSLog(&cfstr_FailedToLoadCi_3.isa);
  }

  if (CI_ENABLE_HALF_KERNELS() && *(*(a1 + 48) + 43) == 1)
  {
    *(v2 + 24) = [MEMORY[0x1E695DF70] array];
    v9 = [CIKernelLibrary internalLibraryWithName:@"ci_stdlib_stitchable_h" device:v3];
    if (v9)
    {
      v10 = v9;
      v22 = [objc_msgSend(v9 "functionNames")];
      [*(v2 + 24) addObject:v10];
    }

    else
    {
      NSLog(&cfstr_FailedToLoadCi_4.isa);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    *(v2 + 24) = 0;
  }

  v11 = 0;
  v12 = v2 + 32;
  v21 = v2 + 16;
  v13 = 1;
  do
  {
    v14 = v13;
    *(v12 + 8 * v11) = [MEMORY[0x1E695DFA8] setWithCapacity:{v6, v21}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = *(v21 + 8 * v11);
    result = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (result)
    {
      v17 = result;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * v19);
          [v20 setLabel:*(a1 + 32)];
          [*(v12 + 8 * v11) addObjectsFromArray:{objc_msgSend(v20, "functionNames")}];
          ++v19;
        }

        while (v17 != v19);
        result = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        v17 = result;
      }

      while (result);
    }

    v13 = 0;
    v6 = v22;
    v11 = 1;
  }

  while ((v14 & 1) != 0);
  return result;
}

void CI::StitchableKernels::~StitchableKernels(CI::StitchableKernels *this)
{
  CI::PrecompiledKernels::~PrecompiledKernels(this);

  JUMPOUT(0x19EAF5590);
}

CI::PrecompiledUberFunctions *CI::PrecompiledUberFunctions::PrecompiledUberFunctions(CI::PrecompiledUberFunctions *this, id *a2)
{
  *(this + 4) = CI::MetalContext::device(a2);
  *(this + 5) = @"ci_ubershader";
  *(this + 6) = @"ci_ubershader";
  *(this + 7) = @"ci_uberwrapper";
  *(this + 8) = @"ci_uberwrapper_bin";
  *(this + 9) = @"ubershader_archive_bin";
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(this + 10) = dispatch_queue_create("CI::UBERLibrariesQueue", v3);
  *(this + 11) = dispatch_group_create();
  *(this + 96) = 0;
  *this = [CIKernelLibrary internalLibraryWithName:*(this + 6) device:*(this + 4)];
  *(this + 1) = [CIKernelLibrary internalLibraryWithName:*(this + 7) device:*(this + 4)];
  *(this + 3) = [CIKernelLibrary internalBinaryArchiveWithName:*(this + 9) device:*(this + 4)];
  v4 = [CIKernelLibrary internalBinaryArchiveWithName:*(this + 8) device:*(this + 4)];
  *(this + 2) = v4;
  if (*(this + 3) && v4)
  {
    UberShader = CI::PrecompiledUberFunctions::getUberShader(this, &unk_1F1085710, @"ci_ubershader__4");
    *(this + 96) = UberShader != 0;
  }

  return this;
}

void CI::CoreImageDylib::~CoreImageDylib(id *this)
{
  if (*this)
  {
  }

  v2 = this[3];
  if (v2)
  {
  }
}

uint64_t ___ZN2CI13KernelArchive10addArchiveEPKv_block_invoke(uint64_t result)
{
  if (*(result + 40))
  {
    return [*(*(result + 32) + 8) addObject:?];
  }

  return result;
}

void *std::vector<void const*>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<void const*>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

NSObject **CI::KernelArchive::KernelArchive(NSObject **a1, uint64_t **a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *a1 = dispatch_queue_create("CI::KernelArchiveLockQueue", v4);
  a1[1] = objc_opt_new();
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = MEMORY[0x1E69E9820];
    do
    {
      v8 = *v5++;
      v9 = *a1;
      v11[0] = v7;
      v11[1] = 3221225472;
      v11[2] = ___ZN2CI13KernelArchive10addArchiveEPKv_block_invoke;
      v11[3] = &__block_descriptor_48_e5_v8__0l;
      v11[4] = a1;
      v11[5] = v8;
      dispatch_barrier_sync(v9, v11);
    }

    while (v5 != v6);
  }

  return a1;
}

void CI::KernelArchive::~KernelArchive(dispatch_object_t *this)
{
  v2 = *this;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI13KernelArchiveD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  dispatch_release(*this);
}

CI::LegacyDAGDescriptor::ArgumentInfo *CI::LegacyDAGDescriptor::ArgumentInfo::ArgumentInfo(CI::LegacyDAGDescriptor::ArgumentInfo *this, unint64_t a2)
{
  *this = &unk_1F1038348;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<LineCostProxy>::reserve(this + 2, a2);
  return this;
}

void sub_19CE9D1F0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLImageFilterFunctionInfoSPI>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<MTLImageFilterFunctionInfoSPI>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<MTLImageFilterFunctionInfoSPI>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void sub_19CE9D448(_Unwind_Exception *a1)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  CI::LegacyDAGDescriptor::~LegacyDAGDescriptor(v1);
  *v1 = &unk_1F1038530;

  _Unwind_Resume(a1);
}

void *CI::StitchableFunctionDAGDescriptor::create_dag_descriptor(CI::StitchableFunctionDAGDescriptor *this, const char *a2)
{
  v4 = objc_alloc(MEMORY[0x1E69740B8]);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v6 = [v4 initWithFunctionName:v5 nodes:*(this + 13) outputNode:0 attributes:MEMORY[0x1E695E0F0]];
  v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];

  v8 = objc_opt_new();
  [v8 setFunctionGraphs:v7];

  [v8 setFunctions:*(this + 20)];
  v9 = *(this + 4);
  if (v9)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  [v8 setBinaryArchives:v10];
  return v8;
}

uint64_t CI::CoreImageDylib::get(CI::CoreImageDylib *this)
{
  result = *this;
  if (!result)
  {
    if (*(this + 8) == 1)
    {
      v3 = *(this + 3);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN2CI14CoreImageDylib3getEv_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = this;
      dispatch_sync(v3, block);
      return *this;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *___ZN2CI14CoreImageDylib3getEv_block_invoke(void *result)
{
  v1 = result[4];
  if (*v1)
  {
    v2 = 1;
  }

  else if (*(v1 + 8) == 1)
  {
    result = [CIKernelLibrary coreImageDylibWithDevice:*(v1 + 16)];
    *v1 = result;
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 8) = v2;
  return result;
}

void *CI::InstanceCounted<(CI::Type)76>::~InstanceCounted(void *result)
{
  *result = &unk_1F1038760;
  atomic_fetch_add(&dword_1ED7C47BC[74], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)76>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1038760;
  atomic_fetch_add(&dword_1ED7C47BC[74], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::MetalDAGHelper::TextureReadFunction>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

CI::MetalDAGHelper::TextureReadFunction *CI::MetalDAGHelper::TextureReadFunction::TextureReadFunction(CI::MetalDAGHelper::TextureReadFunction *this)
{
  v2 = std::string::basic_string[abi:nn200100]<0>(this, "");
  std::vector<unsigned long>::vector[abi:nn200100](v2 + 3, 0, 0);
  *(this + 48) = 0;
  return this;
}

void sub_19CE9D878(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::ColorOutputIdx>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::ColorOutputIdx>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

CI::MetalKernel *CI::MetalKernel::MetalKernel(CI::MetalKernel *this, const char *__s1, CIKernelLibrary *a3, NSDictionary *a4, NSDictionary *a5, char a6, char a7)
{
  v52 = *MEMORY[0x1E69E9840];
  *this = &unk_1F1038788;
  v32 = __s1;
  *(this + 1) = strdup(__s1);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 48) = a6;
  *(this + 7) = 0;
  *(this + 64) = a7;
  *(this + 9) = 0;
  *(this + 2) = a3;
  v34 = this;
  *(this + 7) = objc_opt_new();
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = objc_opt_new();
  }

  *(this + 9) = v13;
  *(this + 3) = a5;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = ___ZN2CI11MetalKernelC2EPKcP15CIKernelLibraryP12NSDictionaryS6_bb_block_invoke;
  v41[3] = &__block_descriptor_40_e26_v32__0r_v8Q16__NSString_24l;
  v41[4] = this;
  CI::MetalKernel::iterateOverFunctionConstants(this, v41);
  v14 = CI::MetalKernel::function(this);
  v15 = [v14 bitCodeHash];
  v16 = v15[1];
  __src[0] = *v15;
  __src[1] = v16;
  XXH64_reset(v40, 0);
  XXH64_update(v40, __src, 0x20uLL);
  *(this + 5) = XXH64_digest(v40);

  XXH64_reset(v39, 0);
  v17 = [(NSArray *)[(NSDictionary *)a4 allKeys] sortedArrayUsingSelector:sel_compare_];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v18)
  {
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        CI::XXHashHelper::add(v39, v21);
        v22 = [(NSDictionary *)a4 valueForKey:v21];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CI::XXHashHelper::add(v39, v22);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            CI::XXHashHelper::add(v39, v22);
          }
        }

        v23 = [(NSDictionary *)a5 valueForKey:v21, v32];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CI::XXHashHelper::add(v39, v23);
        }
      }

      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v18);
  }

  *(v34 + 4) = XXH64_digest(v39);
  if (CI_LOG_METAL_FUNCTION_HASH())
  {
    v24 = ci_logger_compile();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = *(v34 + 4);
      v26 = *(v34 + 5);
      v27 = [(NSArray *)v17 count];
      *buf = 136446978;
      v43 = v32;
      v44 = 2050;
      v45 = v26;
      v46 = 2050;
      v47 = v25;
      v48 = 2050;
      v49 = v27;
      _os_log_impl(&dword_19CC36000, v24, OS_LOG_TYPE_INFO, "MTLFunction %{public}s bitcode digest %{public}llx constants digest %{public}llx constants key size %{public}lu", buf, 0x2Au);
    }

    if ([(NSArray *)v17 count])
    {
      v28 = ci_logger_compile();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [(NSArray *)v17 objectAtIndexedSubscript:0];
        v30 = [(NSDictionary *)a4 valueForKey:[(NSArray *)v17 objectAtIndexedSubscript:0]];
        *buf = 136446722;
        v43 = v33;
        v44 = 2114;
        v45 = v29;
        v46 = 2114;
        v47 = v30;
        _os_log_impl(&dword_19CC36000, v28, OS_LOG_TYPE_INFO, "MTLFunction %{public}s : %{public}@ : %{public}@", buf, 0x20u);
      }
    }
  }

  return v34;
}

void CI::MetalKernel::iterateOverFunctionConstants(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v26 = v2;
  obj = [v2 allKeys];
  v25 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v25)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v35 + 1) + 8 * i);
        v5 = [*(a1 + 24) objectForKeyedSubscript:v4];
        if (v5)
        {
          v6 = [v5 intValue];
          v7 = [v26 objectForKeyedSubscript:v4];
          v8 = v6 - 3;
          v9 = v7;
          v10 = v6;
          v11 = 4;
          v12 = 3;
          v29 = v10;
          v30 = i;
          switch(v8)
          {
            case 0:
            case 13:
            case 26:
            case 30:
            case 34:
            case 38:
            case 42:
            case 46:
            case 50:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                CI::packSingleValue(v9, 0, v10, &v40, v13);
                goto LABEL_39;
              }

              NSLog(&cfstr_CouldNotSetThe_0.isa, v4, v22);
              return;
            case 1:
            case 14:
            case 27:
            case 31:
            case 35:
            case 39:
            case 43:
            case 47:
            case 51:
              v12 = v10 - 1;
              v11 = 2;
              goto LABEL_27;
            case 2:
            case 15:
            case 28:
            case 32:
            case 36:
            case 40:
            case 44:
            case 48:
            case 52:
              v12 = v10 - 2;
              v11 = 3;
              goto LABEL_27;
            case 3:
            case 16:
            case 29:
            case 33:
            case 37:
            case 41:
            case 45:
            case 49:
            case 53:
              v12 = v10 - 3;
              v11 = 4;
              goto LABEL_27;
            case 4:
              goto LABEL_27;
            case 5:
            case 7:
              v11 = 6;
              goto LABEL_26;
            case 6:
            case 10:
              v11 = 8;
              goto LABEL_26;
            case 8:
              v11 = 9;
              goto LABEL_26;
            case 9:
            case 11:
              v11 = 12;
              goto LABEL_26;
            case 12:
              v11 = 16;
LABEL_26:
              v12 = 3;
              goto LABEL_27;
            case 17:
              v11 = 4;
              goto LABEL_22;
            case 18:
            case 20:
              v11 = 6;
              goto LABEL_22;
            case 19:
            case 23:
              v11 = 8;
              goto LABEL_22;
            case 21:
              v11 = 9;
              goto LABEL_22;
            case 22:
            case 24:
              v11 = 12;
LABEL_22:
              v12 = 16;
              goto LABEL_27;
            case 25:
              v12 = 16;
              v11 = 16;
LABEL_27:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || [(CI *)v9 count]!= v11)
              {
                NSLog(&cfstr_CouldNotSetThe_1.isa, v4, v11);
                return;
              }

              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v15 = [(CI *)v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = 0;
                v18 = *v32;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v32 != v18)
                    {
                      objc_enumerationMutation(v9);
                    }

                    v20 = *(*(&v31 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      CI::packSingleValue(v20, v17, v12, &v40, v21);
                    }

                    else
                    {
                      NSLog(&cfstr_CouldNotSetInd.isa, v17, v4);
                    }

                    v17 = (v17 + 1);
                  }

                  v16 = [(CI *)v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
                }

                while (v16);
              }

LABEL_39:
              (*(a2 + 16))(a2, &v40, v29, v4);
              i = v30;
              break;
            default:
              NSLog(&cfstr_CouldNotSetThe.isa, v4, v22);
              return;
          }
        }

        else
        {
          [objc_msgSend(v26 objectForKeyedSubscript:{v4), "floatValue"}];
          LODWORD(v40) = v14;
          (*(a2 + 16))(a2, &v40, 3, v4);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v25);
  }
}

uint64_t CI::MetalKernel::function(CI::MetalKernel *this)
{
  v2 = *(this + 48);
  v3 = *(this + 2);
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(this + 1)];
  if (v2 == 1)
  {
    v5 = *(this + 7);

    return [v3 newSpecializedFunctionWithName:v4 constants:v5];
  }

  else
  {

    return [v3 newFunctionWithName:v4];
  }
}

uint64_t CI::MetalKernel::isFromLibrary(id *this, NSString *a2)
{
  result = [this[2] url];
  if (result)
  {
    v5 = [objc_msgSend(this[2] "url")];

    return [(NSString *)a2 containsString:v5];
  }

  return result;
}

uint64_t CI::packSingleValue(CI *this, NSNumber *a2, uint64_t a3, MTLDataType a4, void *a5)
{
  v6 = a2;
  if (a3 <= 36)
  {
    if (a3 > 28)
    {
      if (a3 == 29)
      {
        result = [(CI *)this intValue:29];
      }

      else
      {
        if (a3 != 33)
        {
          goto LABEL_25;
        }

        result = [(CI *)this unsignedIntValue:33];
      }

      *(a4 + 4 * v6) = result;
      return result;
    }

    if (a3 == 3)
    {
      result = [(CI *)this floatValue:3];
      *(a4 + 4 * v6) = v13;
      return result;
    }

    if (a3 == 16)
    {
      result = [(CI *)this floatValue:16];
      __asm { FCVT            H0, S0 }

      *(a4 + 2 * v6) = _S0;
      return result;
    }

    goto LABEL_25;
  }

  if (a3 <= 44)
  {
    if (a3 == 37)
    {
      result = [(CI *)this shortValue:37];
    }

    else
    {
      if (a3 != 41)
      {
        goto LABEL_25;
      }

      result = [(CI *)this unsignedShortValue:41];
    }

    *(a4 + 2 * v6) = result;
    return result;
  }

  if (a3 == 45)
  {
    result = [(CI *)this charValue:45];
    goto LABEL_24;
  }

  if (a3 == 49)
  {
    result = [(CI *)this unsignedCharValue:49];
    goto LABEL_24;
  }

  if (a3 != 53)
  {
LABEL_25:
    abort();
  }

  result = [(CI *)this BOOLValue:53];
LABEL_24:
  *(a4 + v6) = result;
  return result;
}

void CI::MetalKernel::~MetalKernel(id *this)
{
  *this = &unk_1F1038788;

  v2 = this[1];
  if (v2)
  {
    free(v2);
  }
}

{
  CI::MetalKernel::~MetalKernel(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::MetalKernel::function(uint64_t a1, id *a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = *a2;
    [*a2 setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *(a1 + 8))}];
    [v3 setConstantValues:*(a1 + 56)];
    v4 = *(a1 + 16);

    return [v4 newSpecializedFunctionWithDescriptor:v3];
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 8)];

    return [v6 newFunctionWithName:v7];
  }
}

uint64_t CI::PrecompiledWarpKernel::add_to_digest(CI::PrecompiledWarpKernel *this, CI::XXHashHelper *a2)
{
  CI::Kernel::add_to_digest((this + 80), a2);
  __src = (*(*this + 40))(this);
  result = XXH64_update(a2, &__src, 8uLL);
  if ((*(this + 64) & 1) == 0)
  {
    __src = *(this + 5);
    return XXH64_update(a2, &__src, 8uLL);
  }

  return result;
}

uint64_t CI::PrecompiledColorKernel::add_to_digest(CI::PrecompiledColorKernel *this, CI::XXHashHelper *a2)
{
  CI::Kernel::add_to_digest((this + 80), a2);
  __src = (*(*this + 40))(this);
  result = XXH64_update(a2, &__src, 8uLL);
  if ((*(this + 64) & 1) == 0)
  {
    __src = *(this + 5);
    return XXH64_update(a2, &__src, 8uLL);
  }

  return result;
}

uint64_t CI::PrecompiledGeneralKernel::add_to_digest(CI::PrecompiledGeneralKernel *this, CI::XXHashHelper *a2)
{
  CI::Kernel::add_to_digest((this + 80), a2);
  __src = (*(*this + 40))(this);
  result = XXH64_update(a2, &__src, 8uLL);
  if ((*(this + 64) & 1) == 0)
  {
    __src = *(this + 5);
    return XXH64_update(a2, &__src, 8uLL);
  }

  return result;
}

void CI::PrecompiledGeneralKernel::~PrecompiledGeneralKernel(id *this)
{
  CI::Kernel::~Kernel((this + 10));

  CI::MetalKernel::~MetalKernel(this);
}

{
  CI::Kernel::~Kernel((this + 10));
  CI::MetalKernel::~MetalKernel(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::PrecompiledGeneralKernel::~PrecompiledGeneralKernel(CI::PrecompiledGeneralKernel *this)
{
  v1 = (this - 80);
  CI::Kernel::~Kernel(this);

  CI::MetalKernel::~MetalKernel(v1);
}

{
  v1 = (this - 80);
  CI::Kernel::~Kernel(this);
  CI::MetalKernel::~MetalKernel(v1);

  JUMPOUT(0x19EAF5590);
}

void CI::PrecompiledColorKernel::~PrecompiledColorKernel(id *this)
{
  CI::Kernel::~Kernel((this + 10));

  CI::MetalKernel::~MetalKernel(this);
}

{
  CI::Kernel::~Kernel((this + 10));
  CI::MetalKernel::~MetalKernel(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::PrecompiledColorKernel::~PrecompiledColorKernel(CI::PrecompiledColorKernel *this)
{
  v1 = (this - 80);
  CI::Kernel::~Kernel(this);

  CI::MetalKernel::~MetalKernel(v1);
}

{
  v1 = (this - 80);
  CI::Kernel::~Kernel(this);
  CI::MetalKernel::~MetalKernel(v1);

  JUMPOUT(0x19EAF5590);
}

void CI::PrecompiledWarpKernel::~PrecompiledWarpKernel(id *this)
{
  CI::Kernel::~Kernel((this + 10));

  CI::MetalKernel::~MetalKernel(this);
}

{
  CI::Kernel::~Kernel((this + 10));
  CI::MetalKernel::~MetalKernel(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::PrecompiledWarpKernel::~PrecompiledWarpKernel(CI::PrecompiledWarpKernel *this)
{
  v1 = (this - 80);
  CI::Kernel::~Kernel(this);

  CI::MetalKernel::~MetalKernel(v1);
}

{
  v1 = (this - 80);
  CI::Kernel::~Kernel(this);
  CI::MetalKernel::~MetalKernel(v1);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::WarpKernel::WarpKernel(uint64_t a1, const char *a2, char *a3, char *a4, char a5, void **a6, uint64_t a7, __int16 a8, int a9, char a10)
{
  *CI::Kernel::Kernel(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 1, 1) = off_1F10303E0;
  if (a10)
  {
    CI::SerialValArray<int>::append(a6, 30);
  }

  CI::Kernel::set_preserves_range(a1, 1);
  CI::Kernel::set_preserves_colorspace(a1, 1);
  return a1;
}

{
  return CI::WarpKernel::WarpKernel(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void CI::Kernel::add_argument_to_digest(CI::Kernel *this, CI::XXHashHelper *a2, const CI::Object *a3)
{
  v3 = a3;
  v6 = (*(*a2 + 16))(a2);
  switch(v6)
  {
    case 'C':
      XXH64_update(this, a2 + 24, 0x10uLL);
      v9 = *(a2 + 5);

      CI::XXHashHelper::add(this, v9);
      break;
    case 'B':
      v8 = *(a2 + 6);
      if (v8)
      {

        XXH64_update(this, a2 + 28, 4 * v8);
      }

      break;
    case 'A':
      v7 = *(a2 + 3);

      CI::XXHashHelper::add(this, v7);
      break;
    default:
      v10 = (*(*a2 + 16))(a2);
      if (CI::is_any_TypeImage(v10))
      {
        if (v3)
        {
          v11 = *(a2 + 13);
        }

        else
        {
          v11 = *(a2 + 12);
        }

        __src = v11;
        XXH64_update(this, &__src, 8uLL);
      }

      break;
  }
}

uint64_t CI::Kernel::Kernel(uint64_t a1, const char *a2, char *a3, char *a4, char a5, uint64_t a6, uint64_t a7, __int16 a8, int a9, int a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10300E8;
  *(a1 + 12) = 1;
  *(a1 + 16) = a9;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = vdupq_n_s64(1uLL);
  *(a1 + 96) = a5;
  *(a1 + 104) = 0;
  *(a1 + 112) = a10;
  *(a1 + 120) = a11;
  *(a1 + 128) = a12;
  CI::KernelArguments::KernelArguments((a1 + 136), a6, a7);
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  if (a2)
  {
    *(a1 + 24) = strdup(a2);
  }

  if (a3)
  {
    if ((a5 & 1) == 0)
    {
      a3 = strdup(a3);
    }

    *(a1 + 32) = a3;
  }

  if (a4)
  {
    if ((a5 & 1) == 0)
    {
      a4 = strdup(a4);
    }

    *(a1 + 40) = a4;
  }

  CI::Kernel::set_attributes(a1, a8);
  return a1;
}

_BYTE *CI::Kernel::set_attributes(_BYTE *this, __int16 a2)
{
  this[158] = a2 & 1;
  this[154] = (a2 & 2) != 0;
  this[155] = HIBYTE(a2) & 1;
  this[159] = (a2 & 4) != 0;
  this[153] = (a2 & 0x10) != 0;
  this[156] = (a2 & 0x20) != 0;
  this[157] = (a2 & 0x80) != 0;
  this[152] = (a2 & 0x40) != 0;
  this[160] = (a2 & 0x200) != 0;
  return this;
}

uint64_t *CI::Kernel::set_argument_type(uint64_t *a1, int a2, int a3)
{
  v5 = a1 + 17;
  (*(*a1 + 72))(a1);

  return CI::KernelArguments::set_type(v5, a2, a3);
}

uint64_t CI::Kernel::num_apply_arguments(CI::Kernel *this)
{
  if (*(this + 12) == 1)
  {
    v2 = CI::KernelArguments::count((this + 136));
  }

  else
  {
    v2 = *(this + 5);
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2;
    while (1)
    {
      if (*(this + 12) == 1)
      {
        type = CI::KernelArguments::get_type((this + 136), v3);
      }

      else
      {
        if (v3 >= *(this + 5))
        {
          goto LABEL_11;
        }

        type = *(*(this + 8) + 4 * v3);
      }

      if (type <= 29)
      {
LABEL_11:
        v4 = (v4 + 1);
      }

      if (v5 == ++v3)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t CI::Kernel::num_image_arguments(CI::Kernel *this)
{
  if (*(this + 12) == 1)
  {
    v2 = CI::KernelArguments::count((this + 136));
  }

  else
  {
    v2 = *(this + 5);
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2;
    while (1)
    {
      if (*(this + 12) == 1)
      {
        type = CI::KernelArguments::get_type((this + 136), v3);
      }

      else
      {
        if (v3 >= *(this + 5))
        {
          goto LABEL_13;
        }

        type = *(*(this + 8) + 4 * v3);
      }

      if (type == 1)
      {
        goto LABEL_16;
      }

      if (*(this + 12))
      {
        v7 = CI::KernelArguments::get_type((this + 136), v3);
        goto LABEL_15;
      }

LABEL_13:
      if (v3 >= *(this + 5))
      {
        goto LABEL_17;
      }

      v7 = *(*(this + 8) + 4 * v3);
LABEL_15:
      if (v7 == 2)
      {
LABEL_16:
        v4 = (v4 + 1);
      }

LABEL_17:
      if (v5 == ++v3)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t CI::Kernel::num_sampler_arguments(CI::Kernel *this)
{
  if (*(this + 12) == 1)
  {
    v2 = CI::KernelArguments::count((this + 136));
  }

  else
  {
    v2 = *(this + 5);
  }

  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = v2;
    while (*(this + 12) != 1)
    {
      if (v3 < *(this + 5))
      {
        type = *(*(this + 8) + 4 * v3);
LABEL_10:
        if (type == 2)
        {
          v4 = (v4 + 1);
        }

        else
        {
          v4 = v4;
        }
      }

      if (v5 == ++v3)
      {
        return v4;
      }
    }

    type = CI::KernelArguments::get_type((this + 136), v3);
    goto LABEL_10;
  }

  return 0;
}

uint64_t CI::Kernel::set_output_size(uint64_t this, uint64_t a2, uint64_t a3)
{
  *(this + 120) = a2;
  *(this + 128) = a3;
  return this;
}

void (***CI::Kernel::builtin(int a1))(CI::ColorKernel *__hidden this)
{
  if ((a1 - 1) < 0x5A)
  {
    return off_1E75C64D0[a1 - 1];
  }

  v3 = ci_logger_render();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    CI::Kernel::builtin(a1, v3);
  }

  return 0;
}

double CI::sw_ci_bgra(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64q_s32(*v7);
  *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_abgr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64q_s32(*v7);
  *&result = vextq_s8(v8, v8, 8uLL).u64[0];
  return result;
}

double CI::sw_ci_argb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vextq_s8(*v7, *v7, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_gbra(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vzip2q_s32(vzip1q_s32(*v7, vextq_s8(*v7, *v7, 0xCuLL)), *v7).u64[0];
  return result;
}

double CI::sw_ci_grab(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vrev64q_s32(*v7).u64[0];
  return result;
}

double CI::sw_ci_gbar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vextq_s8(*v7, *v7, 4uLL).u64[0];
  return result;
}

uint64_t CI::sw_ci_rgb1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

double CI::sw_ci_bgr1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64q_s32(*v7);
  *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_arg1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vextq_s8(*v7, *v7, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_gra1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vrev64q_s32(*v7).u64[0];
  return result;
}

double CI::sw_ci_gba1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vextq_s8(*v7, *v7, 4uLL).u64[0];
  return result;
}

double CI::sw_ci_abg1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vrev64q_s32(vextq_s8(*v7, *v7, 8uLL)).u64[0];
  return result;
}

double CI::sw_ci_1bgr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64q_s32(*v7);
  v9 = vextq_s8(v8, v8, 0xCuLL);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vextq_s8(vextq_s8(v9, _Q1, 4uLL), v9, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_1rgb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  *&result = vextq_s8(vextq_s8(_Q1, _Q1, 4uLL), *v7, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_gb1r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vextq_s8(*v7, *v7, 4uLL).u64[0];
  return result;
}

uint64_t CI::sw_ci_gr1b(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v13 = vtrn1q_s32(_Q1, *v7);
  v13.i32[0] = HIDWORD(v7->i64[0]);
  return v13.i64[0];
}

double CI::sw_ci_aaaa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vdupq_laneq_s32(*v7, 3).u64[0];
  return result;
}

double CI::sw_ci_rrrr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vdupq_lane_s32(*v7, 0).u64[0];
  return result;
}

double CI::sw_ci_rrr1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vdupq_lane_s32(*v7, 0).u64[0];
  return result;
}

uint64_t CI::sw_ci_r001(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t CI::sw_ci_a001(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *(v7 + 12);
}

uint64_t CI::sw_ci_rg01(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

unint64_t CI::sw_ci_ra01(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  return __PAIR64__(HIDWORD(*v7), *v7);
}

double CI::sw_ci_aaa1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vdupq_laneq_s32(*v7, 3).u64[0];
  return result;
}

unint64_t CI::sw_ci_rrrg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  return vzip1q_s32(*v7, *v7).u64[0];
}

float CI::sw_ci_rg_to_rr1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  return (COERCE_FLOAT(*v7) + COERCE_FLOAT(HIDWORD(*v7)) * 256.0) / 257.0;
}

double CI::sw_ci_rg_to_ll1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = (COERCE_FLOAT(*v7) + COERCE_FLOAT(HIDWORD(*v7)) * 256.0) / 257.0;
  *&v8 = v8;
  *&result = vdupq_lane_s32(*&v8, 0).u64[0];
  return result;
}

double CI::sw_ci_rg_to_i(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = (COERCE_FLOAT(*v7) + COERCE_FLOAT(HIDWORD(*v7)) * 256.0) / 257.0;
  *&v8 = v8;
  *&result = vdupq_lane_s32(*&v8, 0).u64[0];
  return result;
}

double CI::sw_ci_la_to_ll1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = (COERCE_FLOAT(*v7) + COERCE_FLOAT(HIDWORD(*v7)) * 256.0) / 257.0;
  *&v8 = v8;
  *&result = vdupq_lane_s32(*&v8, 0).u64[0];
  return result;
}

double CI::sw_ci_la_to_i(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = (COERCE_FLOAT(*v7) + COERCE_FLOAT(HIDWORD(*v7)) * 256.0) / 257.0;
  *&v8 = v8;
  *&result = vdupq_lane_s32(*&v8, 0).u64[0];
  return result;
}

float CI::sw_ci_la_to_rr1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  return (COERCE_FLOAT(*v7) + COERCE_FLOAT(HIDWORD(*v7)) * 256.0) / 257.0;
}

float32x2_t CI::sw_ci_rgba_to_rrgg1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v9 = vld2_f32(v7);
  return vcvt_f32_f64(vdivq_f64(vmlaq_f64(vcvtq_f64_f32(v9.val[0]), vdupq_n_s64(0x4070000000000000uLL), vcvtq_f64_f32(v9.val[1])), vdupq_n_s64(0x4070100000000000uLL)));
}

unint64_t CI::sw_ci_rgba_to_llaa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = (COERCE_FLOAT(*v7) + COERCE_FLOAT(HIDWORD(*v7)) * 256.0) / 257.0;
  *&v8 = v8;
  return vdupq_lane_s32(*&v8, 0).u64[0];
}

double CI::sw_ci_to_r16_as_rg8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *v7 * 65535.0;
  v9.f32[0] = v8 + (floorf(v8 * 0.0039062) * -256.0);
  v9.f32[1] = (v8 - v9.f32[0]) * 0.0039062;
  v9.i32[2] = 0;
  v9.i32[3] = 1.0;
  *&result = vdivq_f32(v9, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_l16_as_rg8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v8.i32 = vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) * 65535.0;
  v9.f32[0] = *v8.i32 + (floorf(*v8.i32 * 0.0039062) * -256.0);
  v9.f32[1] = (*v8.i32 - v9.f32[0]) * 0.0039062;
  v9.i32[2] = 0;
  v9.i32[3] = 1.0;
  *&result = vdivq_f32(v9, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_a16_as_rg8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *(v7 + 12) * 65535.0;
  v9.f32[0] = v8 + (floorf(v8 * 0.0039062) * -256.0);
  v9.f32[1] = (v8 - v9.f32[0]) * 0.0039062;
  v9.i32[2] = 0;
  v9.i32[3] = 1.0;
  *&result = vdivq_f32(v9, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

uint64_t CI::sw_ci_to_YCbYCr_as_rg8(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v17 = *v7;
  v8 = vzip1_s32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
  DC = CI::getDC(a1);
  v10 = *DC;
  v10.i32[0] = 1.0;
  if (((0.5 * COERCE_FLOAT(*DC)) - floorf(0.5 * COERCE_FLOAT(*DC))) < 0.5)
  {
    *v10.i32 = 0.0;
  }

  __asm { FMOV            V2.2S, #1.0 }

  return vmla_n_f32(vmul_f32(*v17.i8, vsub_f32(_D2, vdup_lane_s32(v10, 0))), v8, *v10.i32);
}

uint64_t CI::sw_ci_to_CbYCrY_as_rg8(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64_s32(*v7);
  v9.i32[0] = vextq_s8(*v7->i8, *v7->i8, 8uLL).u32[0];
  v9.i32[1] = *v7->i8;
  v18 = v9;
  DC = CI::getDC(a1);
  v11 = *DC;
  v11.i32[0] = 1.0;
  if (((0.5 * COERCE_FLOAT(*DC)) - floorf(0.5 * COERCE_FLOAT(*DC))) < 0.5)
  {
    *v11.i32 = 0.0;
  }

  __asm { FMOV            V2.2S, #1.0 }

  return vmla_n_f32(vmul_f32(v8, vsub_f32(_D2, vdup_lane_s32(v11, 0))), v18, *v11.i32);
}

double CI::sw_ci_to_rg16_as_rgba8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = 65535.0 * COERCE_FLOAT(*v7->f32);
  v9.f32[0] = v8 + (floorf(v8 * 0.0039062) * -256.0);
  v10 = vmuls_lane_f32(65535.0, *v7, 1);
  v9.f32[1] = (v8 - v9.f32[0]) * 0.0039062;
  v9.f32[2] = v10 + (floorf(v10 * 0.0039062) * -256.0);
  v9.f32[3] = (v10 - v9.f32[2]) * 0.0039062;
  *&result = vdivq_f32(v9, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_rg16_as_bgra8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = 65535.0 * COERCE_FLOAT(*v7->f32);
  v9 = v8 + (floorf(v8 * 0.0039062) * -256.0);
  v10 = vmuls_lane_f32(65535.0, *v7, 1);
  v11.f32[0] = v10 + (floorf(v10 * 0.0039062) * -256.0);
  v11.f32[1] = (v8 - v9) * 0.0039062;
  v11.f32[2] = v9;
  v11.f32[3] = (v10 - v11.f32[0]) * 0.0039062;
  *&result = vdivq_f32(v11, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_la16_as_rgba8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v8.i32 = vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) * 65535.0;
  v9.f32[0] = *v8.i32 + (floorf(*v8.i32 * 0.0039062) * -256.0);
  v10 = vmuls_lane_f32(65535.0, *v7, 3);
  v9.f32[1] = (*v8.i32 - v9.f32[0]) * 0.0039062;
  v9.f32[2] = v10 + (floorf(v10 * 0.0039062) * -256.0);
  v9.f32[3] = (v10 - v9.f32[2]) * 0.0039062;
  *&result = vdivq_f32(v9, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_la16_as_bgra8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v8.i32 = vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) * 65535.0;
  v9 = *v8.i32 + (floorf(*v8.i32 * 0.0039062) * -256.0);
  v10 = vmuls_lane_f32(65535.0, *v7, 3);
  v11.f32[0] = v10 + (floorf(v10 * 0.0039062) * -256.0);
  v11.f32[1] = (*v8.i32 - v9) * 0.0039062;
  v11.f32[2] = v9;
  v11.f32[3] = (v10 - v11.f32[0]) * 0.0039062;
  *&result = vdivq_f32(v11, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

uint64_t CI::sw_ci_to_rgb_as_r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

double CI::sw_ci_to_rgb10_as_rgba8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v13 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(*v7, 0), _Q1), vdupq_n_s32(0x447FC000u));
  _Q1.i64[0] = 0x3F0000003F000000;
  _Q1.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(v13, _Q1);
  *v14.i8 = vshl_u32(vcvt_s32_f32(*v14.i8), 0xA00000014);
  v15 = vorr_s8(vdup_lane_s32(*v14.i8, 1), *v14.i8).u32[0] | *&v14.i32[2];
  v16.i32[0] = *&v14.i32[2];
  v16.i32[1] = v15 >> 8;
  v16.u64[1] = vshl_u32(vdup_n_s32(v15), 0xFFFFFFE8FFFFFFF0);
  v14.i64[0] = 0xFF000000FFLL;
  v14.i64[1] = 0xFF000000FFLL;
  v17 = vandq_s8(v16, v14);
  v17.i32[3] = (v16.i64[1] | 0xC0000000C0uLL) >> 32;
  *&result = vdivq_f32(vcvtq_f32_u32(v17), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_a2bgr10_as_rgba8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v13 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(*v7, 0), _Q1), xmmword_19CF226C0);
  _Q1.i64[0] = 0x3F0000003F000000;
  _Q1.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(v13, _Q1);
  v15 = *v14.i32;
  v16 = *v14.i32 | (*&v14.i32[1] << 10);
  v17 = vextq_s8(v14, v14, 8uLL);
  *v17.i8 = vshl_u32(vcvt_s32_f32(*v17.i8), 0x1E00000014);
  v18 = vorr_s8(*v17.i8, vdup_lane_s32(*v17.i8, 1)).u32[0] | v16;
  v17.i32[0] = v15;
  v17.i32[1] = v16 >> 8;
  v17.i32[2] = HIWORD(v18);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v19 = vandq_s8(v17, _Q1);
  v17.i32[3] = v18;
  v19.i32[3] = vshrq_n_u32(*&v17, 0x18uLL).i32[3];
  *&result = vdivq_f32(vcvtq_f32_u32(v19), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_a2rgb10_as_rgba8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v13 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(*v7, 0), _Q1), xmmword_19CF226C0);
  _Q1.i64[0] = 0x3F0000003F000000;
  _Q1.i64[1] = 0x3F0000003F000000;
  v14 = vaddq_f32(v13, _Q1);
  v15 = *&v14.i32[2] | (*&v14.i32[1] << 10);
  v14.i32[1] = vextq_s8(v14, v14, 8uLL).i32[1];
  *v14.i8 = vshl_u32(vcvt_s32_f32(*v14.i8), 0x1E00000014);
  v16 = vorr_s8(*v14.i8, vdup_lane_s32(*v14.i8, 1)).u32[0] | v15;
  v14.i32[0] = *&v14.i32[2];
  v14.i32[1] = v15 >> 8;
  v14.i32[2] = HIWORD(v16);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v17 = vandq_s8(v14, _Q1);
  v14.i32[3] = v16;
  v17.i32[3] = vshrq_n_u32(*&v14, 0x18uLL).i32[3];
  *&result = vdivq_f32(vcvtq_f32_u32(v17), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_rgb10wide_as_rgba8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vabsq_f32(*v7);
  v22 = vcgtq_f32(vdupq_n_s32(0x3B4D2E1Cu), v8);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v23 = _Q3;
  v8.i32[3] = 0;
  v15 = vaddq_f32(vmulq_f32(vbslq_s8(v22, vmulq_f32(*v7, vdupq_n_s32(0x414EB852u)), vmulq_f32(vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_pow_f4(v8, xmmword_19CF22D80)), vbslq_s8(vorrq_s8(vcltzq_f32(*v7), vcgtzq_f32(*v7)), vorrq_s8(vandq_s8(*v7, v9), _Q3), 0))), vdupq_n_s32(0x3EFF3FD0u)), vdupq_n_s32(0x3EC0300Cu));
  v15.i32[3] = 1.0;
  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  v17 = vaddq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v15, 0), v23), xmmword_19CF226C0), v16);
  v18 = *&v17.i32[2] | (*&v17.i32[1] << 10);
  v17.i32[1] = vextq_s8(v17, v17, 8uLL).i32[1];
  *v17.i8 = vshl_u32(vcvt_s32_f32(*v17.i8), 0x1E00000014);
  v19 = vorr_s8(*v17.i8, vdup_lane_s32(*v17.i8, 1)).u32[0] | v18;
  v17.i32[0] = *&v17.i32[2];
  v17.i32[1] = v18 >> 8;
  v17.i32[2] = HIWORD(v19);
  v16.i64[0] = 0xFF000000FFLL;
  v16.i64[1] = 0xFF000000FFLL;
  v20 = vandq_s8(v17, v16);
  v17.i32[3] = v19;
  v20.i32[3] = vshrq_n_u32(*&v17, 0x18uLL).i32[3];
  *&result = vdivq_f32(vcvtq_f32_u32(v20), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_rgb10widelinear_as_rgba8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x3EFF3FD0u)), vdupq_n_s32(0x3EC0300Cu));
  v8.i32[3] = 1.0;
  __asm { FMOV            V1.4S, #1.0 }

  v14 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v8, 0), _Q1), xmmword_19CF226C0);
  _Q1.i64[0] = 0x3F0000003F000000;
  _Q1.i64[1] = 0x3F0000003F000000;
  v15 = vaddq_f32(v14, _Q1);
  v16 = *&v15.i32[2] | (*&v15.i32[1] << 10);
  v15.i32[1] = vextq_s8(v15, v15, 8uLL).i32[1];
  *v15.i8 = vshl_u32(vcvt_s32_f32(*v15.i8), 0x1E00000014);
  v17 = vorr_s8(*v15.i8, vdup_lane_s32(*v15.i8, 1)).u32[0] | v16;
  v15.i32[0] = *&v15.i32[2];
  v15.i32[1] = v16 >> 8;
  v15.i32[2] = HIWORD(v17);
  _Q1.i64[0] = 0xFF000000FFLL;
  _Q1.i64[1] = 0xFF000000FFLL;
  v18 = vandq_s8(v15, _Q1);
  v15.i32[3] = v17;
  v18.i32[3] = vshrq_n_u32(*&v15, 0x18uLL).i32[3];
  *&result = vdivq_f32(vcvtq_f32_u32(v18), vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_to_argb10wide_as_rgba16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v20 = *v7;
  v8 = vrev64q_s32(*v7);
  v9 = vextq_s8(v8, v8, 0xCuLL);
  v10 = vabsq_f32(v9);
  v19 = vcgtq_f32(vdupq_n_s32(0x3B4D2E1Cu), v10);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v10.i32[3] = 0;
  v17 = vbslq_s8(v19, vmulq_f32(v9, vdupq_n_s32(0x414EB852u)), vmulq_f32(vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_pow_f4(v10, xmmword_19CF22D80)), vbslq_s8(vorrq_s8(vcltzq_f32(v9), vcgtzq_f32(v9)), vorrq_s8(vandq_s8(v9, v11), _Q3), 0)));
  v17.i32[3] = v20.i32[3];
  *&result = vdivq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(vmulq_f32(v17, vdupq_n_s32(0x43FF0000u)), vdupq_n_s32(0x43C00000u)), 0), vdupq_n_s32(0x447FC000u)), vdupq_n_s32(0x42800000u)), vdupq_n_s32(0x477FFF00u)).u64[0];
  return result;
}

double CI::sw_ci_to_argb10widelinear_as_rgba16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64q_s32(vdivq_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x43FF0000u)), vdupq_n_s32(0x43C00000u)), 0), vdupq_n_s32(0x447FC000u)), vdupq_n_s32(0x42800000u)), vdupq_n_s32(0x477FFF00u)));
  *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_argb10wide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64q_s32(vdivq_f32(vaddq_f32(vmulq_f32(vmulq_f32(*v7, vdupq_n_s32(0x477FFF00u)), vdupq_n_s32(0x3C800000u)), vdupq_n_s32(0xC3C00000)), vdupq_n_s32(0x43FF0000u)));
  v9 = vextq_s8(v8, v8, 0xCuLL);
  v10 = vabsq_f32(v9);
  v20 = vmulq_f32(v9, vdupq_n_s32(0x3D9E8391u));
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v19 = vbslq_s8(vorrq_s8(vcltzq_f32(v9), vcgtzq_f32(v9)), vorrq_s8(vandq_s8(v9, v11), _Q3), 0);
  v17 = vmlaq_f32(vdupq_n_s32(0x3D558919u), vdupq_n_s32(0x3F72A76Eu), v10);
  v17.i32[3] = 0;
  *&result = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v10), v20, vmulq_f32(_simd_pow_f4(v17, xmmword_19CF226D0), v19)).u64[0];
  return result;
}

double CI::sw_ci_argb10widelinear(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vrev64q_s32(vdivq_f32(vaddq_f32(vmulq_f32(vmulq_f32(*v7, vdupq_n_s32(0x477FFF00u)), vdupq_n_s32(0x3C800000u)), vdupq_n_s32(0xC3C00000)), vdupq_n_s32(0x43FF0000u)));
  *&result = vextq_s8(v8, v8, 0xCuLL).u64[0];
  return result;
}

double CI::sw_ci_10of16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(vmaxnmq_f32(vdivq_f32(vmulq_f32(*v7, vdupq_n_s32(0x477FFF00u)), vdupq_n_s32(0x477FC000u)), 0), _Q1).u64[0];
  return result;
}

uint64_t CI::sw_ci_l10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i32[0] = vminnmq_f32(vmaxnmq_f32(vdivq_f32(vmulq_f32(*v7, vdupq_n_s32(0x477FFF00u)), vdupq_n_s32(0x477FC000u)), 0), _Q1).u32[0];
  _Q1.i32[1] = _Q1.i32[0];
  return _Q1.i64[0];
}

double CI::sw_ci_to_10of16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(vmaxnmq_f32(vdivq_f32(vmulq_f32(*v7, vdupq_n_s32(0x477FC000u)), vdupq_n_s32(0x477FFF00u)), 0), _Q1).u64[0];
  return result;
}

double CI::sw_ci_to_l10_as_r16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v8.i64 = vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL))) * 65472.0 / 65535.0;
  *v8.i32 = *v8.i64;
  v9 = vdupq_laneq_s32(*v7, 3);
  *&result = vextq_s8(vextq_s8(v9, v8, 4uLL), v9, 0xCuLL).u64[0];
  return result;
}

uint64_t CI::sw_ci_combine_420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t CI::sw_ci_combine_422(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t CI::sw_ci_combine_444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t CI::sw_ci_swizzle_to_4XX(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

double CI::sw_ci_ycc_to_rgb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vuzp2q_s32(vextq_s8(*v7, *v7, 4uLL), *v7).u64[0];
  return result;
}

double CI::sw_ci_swizzle_to_laaa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  *v8.i8 = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1));
  v9 = vdupq_laneq_s32(*v7, 3);
  *&result = vextq_s8(vextq_s8(v9, v8, 4uLL), v9, 0xCuLL).u64[0];
  return result;
}