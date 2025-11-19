uint64_t Phase::Controller::DVM23::DvmAdapter::RemoveSubmix(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v6 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "DvmAdapter.mm";
    v11 = 1024;
    v12 = 259;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing SubmixId %llu!", buf, 0x1Cu);
  }

  if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v8))
  {
    return Phase::Controller::DVM23::DvmAdapter::SetSubmixPlayState(a1, a2, a3, 0);
  }

  else
  {
    return 1;
  }
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetSubmixPlayState(Phase::Logger *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v12[0] = a2;
  v12[1] = a3;
  v7 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 3)
    {
      v8 = "Unknown (CVM) PlayState";
    }

    else
    {
      v8 = off_278B4F4B8[a4];
    }

    *buf = 136315906;
    v14 = "DvmAdapter.mm";
    v15 = 1024;
    v16 = 345;
    v17 = 2048;
    v18 = a2;
    v19 = 2080;
    v20 = v8;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting SubmixId %llu playstate to %s!", buf, 0x26u);
  }

  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v12);
  if (v9)
  {
    return Phase::Controller::DVM23::DvmAdapter::SetPlayState(a1, v9[4], a4);
  }

  v11 = **(Phase::Logger::GetInstance(0) + 80);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "DvmAdapter.mm";
    v15 = 1024;
    v16 = 350;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d SetPlayState: unknown SubmixId %llu", buf, 0x1Cu);
  }

  return 4;
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConfigureSubmix(Phase::Logger *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v21[0] = a2;
  v21[1] = a3;
  v10 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "DvmAdapter.mm";
    v24 = 1024;
    v25 = 273;
    v26 = 2048;
    v27 = a2;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring SubmixId %llu!", buf, 0x1Cu);
  }

  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v21);
  if (v11)
  {
    v12 = (*(*v11[4] + 40))(v11[4], *a1, a5);
    v13 = v12;
    if (v12)
    {
      v14 = **(Phase::Logger::GetInstance(v12) + 80);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "DvmAdapter.mm";
        v24 = 1024;
        v25 = 286;
        v26 = 2048;
        v27 = a2;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to configure SubmixId %llu", buf, 0x1Cu);
      }

      return Phase::Controller::DVM23::TranslateDvmError(v13);
    }

    else
    {
      if (a4 != 2)
      {
        v17 = Phase::Controller::DVM23::DvmAdapter::SetSubmixPlayState(a1, a2, a3, a4);
        v18 = v17;
        if (v17)
        {
          v19 = **(Phase::Logger::GetInstance(v17) + 80);
          result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          v20 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v18);
          *buf = 136315906;
          v23 = "DvmAdapter.mm";
          v24 = 1024;
          v25 = 300;
          v26 = 2048;
          v27 = a2;
          v28 = 2080;
          v29 = v20;
          _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to configure SubmixId %llu with error %s", buf, 0x26u);
        }
      }

      return 0;
    }
  }

  else
  {
    v16 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "DvmAdapter.mm";
      v24 = 1024;
      v25 = 277;
      v26 = 2048;
      v27 = a2;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Fail to configure: unknown SubmixId %llu", buf, 0x1Cu);
    }

    return 4;
  }
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConfigureAmbientSubmix(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v31[0] = a2;
  v31[1] = a3;
  v7 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v33 = "DvmAdapter.mm";
    v34 = 1024;
    v35 = 310;
    v36 = 2048;
    v37 = a2;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring Ambient SubmixId %llu!", buf, 0x1Cu);
  }

  v8 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v31);
  if (v8)
  {
    v9 = *(v8 + 4);
    __p = 0;
    v29 = 0;
    v30 = 0;
    v10 = *a4;
    v11 = a4[1];
    if (*a4 == v11)
    {
      if (*(v9 + 48) != *(v9 + 40))
      {
LABEL_29:
        v23 = **(Phase::Logger::GetInstance(v8) + 80);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v22 = Phase::Controller::DVM23::TranslateDvmError(0xEu);
          v24 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v22);
          *buf = 136315906;
          v33 = "DvmAdapter.mm";
          v34 = 1024;
          v35 = 336;
          v36 = 2048;
          v37 = a2;
          v38 = 2080;
          v39 = v24;
          _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to configure ambient SubmixId %llu, with error %s", buf, 0x26u);
        }

        else
        {
          v22 = Phase::Controller::DVM23::TranslateDvmError(0xEu);
        }

LABEL_36:
        if (__p)
        {
          v29 = __p;
          operator delete(__p);
        }

        return v22;
      }
    }

    else
    {
      v12 = 0;
      do
      {
        v8 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v10);
        if (!v8)
        {
          v25 = **(Phase::Logger::GetInstance(0) + 80);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = *v10;
            *buf = 136315650;
            v33 = "DvmAdapter.mm";
            v34 = 1024;
            v35 = 326;
            v36 = 2048;
            v37 = v26;
            _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Configure: Unknown spatial SubmixId %llu", buf, 0x1Cu);
          }

          v22 = 4;
          goto LABEL_36;
        }

        v13 = *(v8 + 4);
        if (v12 >= v30)
        {
          v14 = (v12 - __p) >> 3;
          if ((v14 + 1) >> 61)
          {
            std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
          }

          v15 = (v30 - __p) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v30 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::SubmixController *>>(&__p, v16);
          }

          v17 = (8 * v14);
          *v17 = v13;
          v12 = (8 * v14 + 8);
          v18 = v17 - (v29 - __p);
          memcpy(v18, __p, v29 - __p);
          v8 = __p;
          __p = v18;
          v29 = v12;
          v30 = 0;
          if (v8)
          {
            operator delete(v8);
          }
        }

        else
        {
          *v12 = v13;
          v12 += 8;
        }

        v29 = v12;
        v10 += 2;
      }

      while (v10 != v11);
      v19 = __p;
      if (v12 - __p != *(v9 + 48) - *(v9 + 40))
      {
        goto LABEL_29;
      }

      if (v12 != __p)
      {
        v20 = 0;
        do
        {
          *(*(v9 + 40) + 8 * v20) = v19[v20];
          ++v20;
          v19 = __p;
        }

        while (v20 < (v29 - __p) >> 3);
      }
    }

    v22 = 0;
    goto LABEL_36;
  }

  v21 = **(Phase::Logger::GetInstance(0) + 80);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v33 = "DvmAdapter.mm";
    v34 = 1024;
    v35 = 314;
    v36 = 2048;
    v37 = a2;
    _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Configure: Unknown ambient SubmixId %llu", buf, 0x1Cu);
  }

  return 4;
}

void sub_23A3BBE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConfigureGeneratorWithRenderCallback(Phase::Logger *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v44 = a3;
  v7 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v46 = "DvmAdapter.mm";
    v47 = 1024;
    v48 = 363;
    v49 = 2048;
    v50 = a2;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring GeneratorId %llu", buf, 0x1Cu);
  }

  v8 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, &v43);
  if (v8)
  {
    v9 = v8[4];
    v10 = *a1;
    (*(*v9 + 80))(v9);
    if (Phase::Controller::DVM23::DspVoiceManager23::IsGraphEmpty(v10))
    {
      __src = 0;
      v41 = 0;
      v42 = 0;
      v11 = *a1;
      v12 = (*(*v9 + 80))(v9);
      v13 = (*(**v11 + 80))(*v11, v12);
      if (v13)
      {
        v14 = -858993459 * ((*(v13 + 40) - *(v13 + 32)) >> 3);
        v37 = 0;
        v38 = 0;
        v39 = 0;
        if (v14)
        {
          if ((v14 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }
      }

      else
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
      }

      v23 = *a1;
      v35 = 0;
      v36 = 0;
      __p = 0;
      std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__init_with_size[abi:ne200100]<std::pair<Phase::DspLayer23::KernelType,unsigned long long>*,std::pair<Phase::DspLayer23::KernelType,unsigned long long>*>(&__p, __src, v41, (v41 - __src) >> 4);
      v24 = Phase::Controller::DVM23::GeneratorController::ConfigureGraphWithCallback(v9, v23, &__p, &v37);
      v25 = __p;
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        v26 = **(Phase::Logger::GetInstance(v25) + 80);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v16 = Phase::Controller::DVM23::TranslateDvmError(v24);
          goto LABEL_31;
        }

        v27 = v43;
        v16 = Phase::Controller::DVM23::TranslateDvmError(v24);
        v28 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v16);
        *buf = 136315906;
        v46 = "DvmAdapter.mm";
        v47 = 1024;
        v48 = 444;
        v49 = 2048;
        v50 = v27;
        v51 = 2080;
        v52 = v28;
        v29 = "%25s:%-5d Failed to configure GeneratorId %llu with error %s";
      }

      else
      {
        v30 = v43;
        v31 = Phase::Controller::DVM23::DvmAdapter::SetGeneratorPlayState(a1, v43, v44, a4);
        v16 = v31;
        if (!v31)
        {
          operator new();
        }

        v26 = **(Phase::Logger::GetInstance(v31) + 80);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v32 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v16);
        *buf = 136315906;
        v46 = "DvmAdapter.mm";
        v47 = 1024;
        v48 = 453;
        v49 = 2048;
        v50 = v30;
        v51 = 2080;
        v52 = v32;
        v29 = "%25s:%-5d Failed to set playstate on GeneratorId %llu with error %s!";
      }

      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, v29, buf, 0x26u);
LABEL_31:
      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (__src)
      {
        v41 = __src;
        operator delete(__src);
      }

      return v16;
    }

    v17 = *a1;
    v18 = (*(*v9 + 80))(v9);
    IsGraphPlaystateUniform = Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(v17, v18, 6);
    v20 = IsGraphPlaystateUniform;
    v21 = **(Phase::Logger::GetInstance(IsGraphPlaystateUniform) + 80);
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v46 = "DvmAdapter.mm";
        v47 = 1024;
        v48 = 381;
        v49 = 2048;
        v50 = a2;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Trying to Reconfigure a GeneratorId %llu in Stopping/Stopped state. Please, wait for the callback, generate a new id and try again!", buf, 0x1Cu);
      }

      return 9;
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v46 = "DvmAdapter.mm";
        v47 = 1024;
        v48 = 388;
        v49 = 2048;
        v50 = a2;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Trying to Reconfigure a GeneratorId %llu. That is not allowed. DVM will return without further modifications to the graph.", buf, 0x1Cu);
      }

      return 1;
    }
  }

  else
  {
    v15 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v46 = "DvmAdapter.mm";
      v47 = 1024;
      v48 = 368;
      v49 = 2048;
      v50 = a2;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Configure Generator: Unknown GeneratorId %llu", buf, 0x1Cu);
    }

    return 4;
  }
}

void sub_23A3BC8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetGeneratorPlayState(Phase::Logger *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v12[0] = a2;
  v12[1] = a3;
  v7 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 3)
    {
      v8 = "Unknown (CVM) PlayState";
    }

    else
    {
      v8 = off_278B4F4B8[a4];
    }

    *buf = 136315906;
    v14 = "DvmAdapter.mm";
    v15 = 1024;
    v16 = 496;
    v17 = 2048;
    v18 = a2;
    v19 = 2080;
    v20 = v8;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting playstate on GeneratorId %llu to %s", buf, 0x26u);
  }

  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v12);
  if (v9)
  {
    return Phase::Controller::DVM23::DvmAdapter::SetPlayState(a1, v9[4], a4);
  }

  v11 = **(Phase::Logger::GetInstance(0) + 80);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "DvmAdapter.mm";
    v15 = 1024;
    v16 = 501;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d SetPlayState: Unknown GeneratorId %llu", buf, 0x1Cu);
  }

  return 4;
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetParameters(Phase::Controller::DVM23::VoiceGraph ***a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a2;
    do
    {
      v7 = *v6;
      v6 += 7;
      if (Phase::Controller::DVM23::DvmAdapter::SetParameters(a1, a2, v7, a2 + 4))
      {
        v5 = 10;
      }

      a2 = v6;
    }

    while (v6 != a3);
  }

  return Phase::Controller::DVM23::TranslateDvmError(v5);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConnectGeneratorToSubmix(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v49[0] = a2;
  v49[1] = a3;
  v48[0] = a4;
  v48[1] = a5;
  v8 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v51 = "DvmAdapter.mm";
    v52 = 1024;
    v53 = 513;
    v54 = 2048;
    v55 = a2;
    v56 = 2048;
    v57 = a4;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting generatorId %llu to SubmixId %llu.", buf, 0x26u);
  }

  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v49);
  if (!v9)
  {
    v22 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v51 = "DvmAdapter.mm";
      v52 = 1024;
      v53 = 518;
      v54 = 2048;
      v55 = a2;
      v23 = "%25s:%-5d Connect generator to submix: unknown GeneratorId %llu";
      v24 = v22;
LABEL_15:
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, v23, buf, 0x1Cu);
    }

    return 4;
  }

  v10 = v9;
  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v48);
  if (!v11)
  {
    v25 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v51 = "DvmAdapter.mm";
      v52 = 1024;
      v53 = 525;
      v54 = 2048;
      v55 = a4;
      v23 = "%25s:%-5d Connect generator to submix: unknown SubmixId %llu";
      v24 = v25;
      goto LABEL_15;
    }

    return 4;
  }

  v12 = v10[4];
  v13 = v11[4];
  v14 = *a1;
  if (v13[8] == 3)
  {
    v15 = Phase::Controller::DVM23::AmbientSubmixController::ConnectToGenerator(v11[4], *a1, v12);
    v16 = v15;
    if (v15)
    {
      v17 = **(Phase::Logger::GetInstance(v15) + 80);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = Phase::Controller::DVM23::TranslateDvmError(v16);
        v19 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v18);
        *buf = 136316162;
        v51 = "DvmAdapter.mm";
        v52 = 1024;
        v53 = 540;
        v54 = 2048;
        v55 = a2;
        v56 = 2048;
        v57 = a4;
        v58 = 2080;
        v59 = v19;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Connect generatorId %llu to ambient SubmixId %llu failed with error %s!", buf, 0x30u);
      }
    }

    v20 = v16;
    return Phase::Controller::DVM23::TranslateDvmError(v20);
  }

  v27 = (*(*v12 + 80))(v12);
  v28 = (*(*v14->i64[0] + 80))(v14->i64[0], v27);
  if (v28)
  {
    v29 = -858993459 * ((*(v28 + 40) - *(v28 + 32)) >> 3);
  }

  else
  {
    v29 = 0;
  }

  v30 = *a1;
  v31 = (*(*v13 + 80))(v13);
  v32 = (*(*v30->i64[0] + 80))(v30->i64[0], v31);
  if (v32)
  {
    v33 = -858993459 * ((*(v32 + 2) - *(v32 + 1)) >> 3);
    if (v29 == v33)
    {
      if (v29 >= 1)
      {
        v34 = 0;
        while (1)
        {
          v35 = *a1;
          v36 = (*(*v12 + 80))(v12);
          v37 = (*(*v13 + 80))(v13);
          v38 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(v35, v36, v34, v37, v34);
          v21 = v38;
          if (v38)
          {
            break;
          }

          v34 = (v34 + 1);
          if (v29 == v34)
          {
            return v21;
          }
        }

        v45 = **(Phase::Logger::GetInstance(v38) + 80);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v21 = Phase::Controller::DVM23::TranslateDvmError(v21);
          v46 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v21);
          *buf = 136316162;
          v51 = "DvmAdapter.mm";
          v52 = 1024;
          v53 = 584;
          v54 = 2048;
          v55 = a2;
          v56 = 2048;
          v57 = a4;
          v58 = 2080;
          v59 = v46;
LABEL_44:
          _os_log_impl(&dword_23A302000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d Connect generatorId %llu to SubmixId %llu failed with error %s!", buf, 0x30u);
          return v21;
        }

        goto LABEL_45;
      }

      return 0;
    }

    if (v33 == 1)
    {
      if (v29 >= 1)
      {
        v39 = 0;
        while (1)
        {
          v40 = *a1;
          v41 = (*(*v12 + 80))(v12);
          v42 = (*(*v13 + 80))(v13);
          v43 = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(v40, v41, v39, v42, 0);
          v21 = v43;
          if (v43)
          {
            break;
          }

          v39 = (v39 + 1);
          if (v29 == v39)
          {
            return v21;
          }
        }

        v45 = **(Phase::Logger::GetInstance(v43) + 80);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v21 = Phase::Controller::DVM23::TranslateDvmError(v21);
          v47 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v21);
          *buf = 136316162;
          v51 = "DvmAdapter.mm";
          v52 = 1024;
          v53 = 571;
          v54 = 2048;
          v55 = a2;
          v56 = 2048;
          v57 = a4;
          v58 = 2080;
          v59 = v47;
          goto LABEL_44;
        }

LABEL_45:
        v20 = v21;
        return Phase::Controller::DVM23::TranslateDvmError(v20);
      }

      return 0;
    }
  }

  else if (!v29)
  {
    return 0;
  }

  v44 = **(Phase::Logger::GetInstance(v32) + 80);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v51 = "DvmAdapter.mm";
    v52 = 1024;
    v53 = 560;
    v54 = 2048;
    v55 = a2;
    v56 = 2048;
    v57 = a4;
    _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't connect generatorId %llu to SubmixId %llu. I/O mismatch.", buf, 0x26u);
  }

  return 2;
}

uint64_t Phase::Controller::DVM23::DvmAdapter::AddRenderer(Phase::Logger *a1, unint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  __val[0] = a2;
  __val[1] = a3;
  v5 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = "DvmAdapter.mm";
    v9 = 1024;
    v10 = 595;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding rendererID %llu!", buf, 0x1Cu);
  }

  if (!std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, __val))
  {
    operator new();
  }

  return 0;
}

void sub_23A3BD558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::RemoveRenderer(Phase::Logger *a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v8[0] = a2;
  v8[1] = a3;
  v6 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "DvmAdapter.mm";
    v11 = 1024;
    v12 = 620;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing RendererId %llu!", buf, 0x1Cu);
  }

  if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v8))
  {
    return Phase::Controller::DVM23::DvmAdapter::SetRendererPlayState(a1, a2, a3, 0);
  }

  else
  {
    return 1;
  }
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetRendererPlayState(Phase::Logger *a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v13[0] = a2;
  v13[1] = a3;
  v7 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 3)
    {
      v8 = "Unknown (CVM) PlayState";
    }

    else
    {
      v8 = off_278B4F4B8[a4];
    }

    *buf = 136315906;
    v15 = "DvmAdapter.mm";
    v16 = 1024;
    v17 = 828;
    v18 = 2048;
    v19 = a2;
    v20 = 2080;
    v21 = v8;
    _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting RendererId %llu playstate to %s", buf, 0x26u);
  }

  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v13);
  if (v9)
  {
    return Phase::Controller::DVM23::DvmAdapter::SetPlayState(a1, v9[4], a4);
  }

  v11 = **(Phase::Logger::GetInstance(0) + 80);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (a4 > 3)
    {
      v12 = "Unknown (CVM) PlayState";
    }

    else
    {
      v12 = off_278B4F4B8[a4];
    }

    *buf = 136315906;
    v15 = "DvmAdapter.mm";
    v16 = 1024;
    v17 = 838;
    v18 = 2080;
    v19 = v12;
    v20 = 2048;
    v21 = a2;
    _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set playstate to %s: unknown RendererId %llu", buf, 0x26u);
  }

  return 4;
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConfigureRenderer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v91 = *MEMORY[0x277D85DE8];
  v83[0] = a2;
  v83[1] = a3;
  v10 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "DvmAdapter.mm";
    v85 = 1024;
    v86 = 634;
    v87 = 2048;
    v88 = a2;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring rendererID %llu!", buf, 0x1Cu);
  }

  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 8), v83);
  if (v11)
  {
    if (*(a5 + 8) == *(a5 + 16))
    {
      v48 = **(Phase::Logger::GetInstance(v11) + 80);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "DvmAdapter.mm";
        v85 = 1024;
        v86 = 644;
        v87 = 2048;
        v88 = a2;
        _os_log_impl(&dword_23A302000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d Configure renderer: CVM DspNode is empty for RendererId %llu", buf, 0x1Cu);
      }

      return 2;
    }

    else
    {
      v12 = *(v11 + 4);
      __src = 0;
      v81 = 0;
      v82 = 0;
      v13 = Phase::Controller::TaskManager::GetService<Phase::Controller::VoicePoolRegistry>(*(a1 + 72), 3);
      *buf = *a5;
      v74 = a1;
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v13, buf)[3];
      v16 = *(a5 + 8);
      v15 = *(a5 + 16);
      v18 = *(v14 + 56);
      v17 = *(v14 + 64);
      v19 = 0x6DB6DB6DB6DB6DB7 * ((v15 - v16) >> 3);
      v73 = v19;
      v71 = v18;
      v72 = v17;
      if (v15 == v16)
      {
        v21 = v81;
      }

      else
      {
        v20 = 0;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v75 = v19;
        v21 = v81;
        do
        {
          v22 = (*(a5 + 8) + 56 * v20);
          if (v21 >= v82)
          {
            v23 = __src;
            v24 = v21 - __src;
            v25 = (v21 - __src) >> 4;
            v26 = v25 + 1;
            if ((v25 + 1) >> 60)
            {
              std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
            }

            v27 = v82 - __src;
            if ((v82 - __src) >> 3 > v26)
            {
              v26 = v27 >> 3;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF0)
            {
              v28 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(&__src, v28);
            }

            v29 = v25;
            v30 = (16 * v25);
            *v30 = *a5;
            v30[1] = *v22;
            v21 = (16 * v25 + 16);
            v31 = &v30[-2 * v29];
            memcpy(v31, v23, v24);
            v32 = __src;
            __src = v31;
            v81 = v21;
            v82 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v21 = *a5;
            *(v21 + 1) = *v22;
            v21 += 16;
          }

          v81 = v21;
          v33 = *a6;
          v34 = *(a6 + 8);
          while (v33 != v34)
          {
            v35 = (v33[1] + 56 * v20);
            if (v21 >= v82)
            {
              v36 = __src;
              v37 = v21 - __src;
              v38 = (v21 - __src) >> 4;
              v39 = v38 + 1;
              if ((v38 + 1) >> 60)
              {
                std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
              }

              v40 = v82 - __src;
              if ((v82 - __src) >> 3 > v39)
              {
                v39 = v40 >> 3;
              }

              if (v40 >= 0x7FFFFFFFFFFFFFF0)
              {
                v41 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v41 = v39;
              }

              if (v41)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(&__src, v41);
              }

              v42 = v38;
              v43 = (16 * v38);
              *v43 = *v33;
              v43[1] = *v35;
              v21 = (16 * v38 + 16);
              v44 = &v43[-2 * v42];
              memcpy(v44, v36, v37);
              v45 = __src;
              __src = v44;
              v81 = v21;
              v82 = 0;
              if (v45)
              {
                operator delete(v45);
              }
            }

            else
            {
              *v21 = *v33;
              *(v21 + 1) = *v35;
              v21 += 16;
            }

            v81 = v21;
            v33 += 4;
          }

          ++v20;
        }

        while (v20 != v75);
      }

      v49 = *v74;
      v78 = 0;
      v79 = 0;
      __p = 0;
      std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__init_with_size[abi:ne200100]<std::pair<Phase::DspLayer23::KernelType,unsigned long long>*,std::pair<Phase::DspLayer23::KernelType,unsigned long long>*>(&__p, __src, v21, (v21 - __src) >> 4);
      v50 = Phase::Controller::DVM23::RendererController::ConfigureGraphWithChannels(v12, v49, &__p, v73, -1431655765 * ((v72 - v71) >> 3));
      v51 = __p;
      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }

      if (v50)
      {
        v52 = **(Phase::Logger::GetInstance(v51) + 80);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = v83[0];
          v54 = Phase::Controller::DVM23::TranslateDvmError(v50);
          v55 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v54);
          *buf = 136315906;
          *&buf[4] = "DvmAdapter.mm";
          v85 = 1024;
          v86 = 678;
          v87 = 2048;
          v88 = v53;
          v89 = 2080;
          v90 = v55;
          _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to configure RendererId %llu graph with error %s!!", buf, 0x26u);
        }

        v47 = 9;
      }

      else if (a4 == 2 || (v56 = Phase::Controller::DVM23::DvmAdapter::SetPlayState(v74, v12, a4), v47 = v56, !v56))
      {
        v60 = Phase::Controller::DVM23::DvmAdapter::SetParameters(v74, *(a5 + 8), *(a5 + 16));
        v47 = v60;
        if (v60)
        {
          v61 = **(Phase::Logger::GetInstance(v60) + 80);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = v83[0];
            v63 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v47);
            *buf = 136315906;
            *&buf[4] = "DvmAdapter.mm";
            v85 = 1024;
            v86 = 700;
            v87 = 2048;
            v88 = v62;
            v89 = 2080;
            v90 = v63;
            _os_log_impl(&dword_23A302000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d Set parameter on RendererId %llu failed with error %s!", buf, 0x26u);
          }
        }

        v64 = *a6;
        v65 = *(a6 + 8);
        if (*a6 != v65)
        {
          v66 = v83[0];
          do
          {
            v67 = Phase::Controller::DVM23::DvmAdapter::SetParameters(v74, v64[1], v64[2]);
            v47 = v67;
            if (v67)
            {
              v68 = **(Phase::Logger::GetInstance(v67) + 80);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                v69 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v47);
                *buf = 136315906;
                *&buf[4] = "DvmAdapter.mm";
                v85 = 1024;
                v86 = 709;
                v87 = 2048;
                v88 = v66;
                v89 = 2080;
                v90 = v69;
                _os_log_impl(&dword_23A302000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d Set parameter on RendererId %llu, effect node failed with error %s!", buf, 0x26u);
              }
            }

            v64 += 4;
          }

          while (v64 != v65);
        }
      }

      else
      {
        v57 = **(Phase::Logger::GetInstance(v56) + 80);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = v83[0];
          v59 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v47);
          *buf = 136315906;
          *&buf[4] = "DvmAdapter.mm";
          v85 = 1024;
          v86 = 691;
          v87 = 2048;
          v88 = v58;
          v89 = 2080;
          v90 = v59;
          _os_log_impl(&dword_23A302000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d Set playstate on RendererId %llu failed with error %s!", buf, 0x26u);
        }
      }

      if (__src)
      {
        v81 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v46 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "DvmAdapter.mm";
      v85 = 1024;
      v86 = 638;
      v87 = 2048;
      v88 = a2;
      _os_log_impl(&dword_23A302000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to Configure RendererId %llu. Unknown instance.", buf, 0x1Cu);
    }

    return 4;
  }

  return v47;
}

void sub_23A3BE038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConnectSubmixToRenderer(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v46[2] = *MEMORY[0x277D85DE8];
  v36[0] = a2;
  v36[1] = a3;
  v35[0] = a4;
  v35[1] = a5;
  v10 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v38 = "DvmAdapter.mm";
    v39 = 1024;
    v40 = 721;
    v41 = 2048;
    v42 = a2;
    v43 = 2048;
    v44 = a4;
    v45 = 2048;
    *v46 = a6;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting SubmixId %llu to RendererId %llu with gain %f.", buf, 0x30u);
  }

  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v36);
  if (!v11)
  {
    v19 = **(Phase::Logger::GetInstance(0) + 80);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      return 4;
    }

    *buf = 136315650;
    v38 = "DvmAdapter.mm";
    v39 = 1024;
    v40 = 725;
    v41 = 2048;
    v42 = a2;
    v20 = "%25s:%-5d Connect submix to renderer: unknown SubmixId %llu";
    v21 = v19;
LABEL_11:
    v23 = 28;
LABEL_23:
    _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, v20, buf, v23);
    return 4;
  }

  v12 = v11;
  v13 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v35);
  if (!v13)
  {
    v22 = **(Phase::Logger::GetInstance(0) + 80);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 4;
    }

    *buf = 136315650;
    v38 = "DvmAdapter.mm";
    v39 = 1024;
    v40 = 732;
    v41 = 2048;
    v42 = a4;
    v20 = "%25s:%-5d Connect submix to renderer: unknown RendererId %llu";
    v21 = v22;
    goto LABEL_11;
  }

  v14 = v13;
  v15 = *a1;
  v16 = (*(*v12[4] + 80))(v12[4]);
  v17 = (*(**v15 + 80))(*v15, v16);
  if (v17)
  {
    v18 = (-858993459 * ((*(v17 + 40) - *(v17 + 32)) >> 3)) / 2;
  }

  else
  {
    v18 = 0;
  }

  v24 = *a1;
  v25 = (*(*v14[4] + 80))(v14[4]);
  v26 = (*(**v24 + 80))(*v24, v25);
  if (v26)
  {
    v27 = -858993459 * ((*(v26 + 2) - *(v26 + 1)) >> 3);
  }

  else
  {
    v27 = 0;
  }

  if (v18 != v27)
  {
    v34 = **(Phase::Logger::GetInstance(v26) + 80);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v38 = "DvmAdapter.mm";
      v39 = 1024;
      v40 = 747;
      v41 = 2048;
      v42 = a2;
      v43 = 2048;
      v44 = a4;
      v45 = 1024;
      LODWORD(v46[0]) = v18;
      WORD2(v46[0]) = 1024;
      *(v46 + 6) = v27;
      v20 = "%25s:%-5d SubmixId %llu, RendererId %llu IO mismatch [%d,%d]";
      v21 = v34;
      v23 = 50;
      goto LABEL_23;
    }

    return 4;
  }

  v28 = Phase::Controller::DVM23::SubmixController::ConnectToGraph(v12[4], *a1, v14[4], 0, a6, 0.0);
  v29 = v28;
  if (v28)
  {
    v30 = **(Phase::Logger::GetInstance(v28) + 80);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = Phase::Controller::DVM23::TranslateDvmError(v29);
      v32 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v31);
      *buf = 136316162;
      v38 = "DvmAdapter.mm";
      v39 = 1024;
      v40 = 757;
      v41 = 2048;
      v42 = a2;
      v43 = 2048;
      v44 = a4;
      v45 = 2080;
      v46[0] = v32;
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to connect SubmixId %llu to RendererId %llu with error %s", buf, 0x30u);
    }
  }

  return Phase::Controller::DVM23::TranslateDvmError(v29);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::DisconnectSubmixFromRenderer(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v23[0] = a2;
  v23[1] = a3;
  v22[0] = a4;
  v22[1] = a5;
  v8 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v25 = "DvmAdapter.mm";
    v26 = 1024;
    v27 = 766;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disconnecting SubmixId %llu from RendererId %llu.", buf, 0x26u);
  }

  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v23);
  if (!v9)
  {
    v18 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "DvmAdapter.mm";
      v26 = 1024;
      v27 = 771;
      v28 = 2048;
      v29 = a2;
      v19 = "%25s:%-5d  Disconnect submix from renderer: unknown SubmixId %llu";
      v20 = v18;
LABEL_13:
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, v19, buf, 0x1Cu);
    }

    return 4;
  }

  v10 = v9;
  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v22);
  if (!v11)
  {
    v21 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "DvmAdapter.mm";
      v26 = 1024;
      v27 = 778;
      v28 = 2048;
      v29 = a4;
      v19 = "%25s:%-5d Disconnect submix from renderer: unknown RendererId %llu";
      v20 = v21;
      goto LABEL_13;
    }

    return 4;
  }

  v12 = Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(v10[4], *a1, v11[4], 0.0);
  v13 = v12;
  if (v12)
  {
    v14 = **(Phase::Logger::GetInstance(v12) + 80);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = Phase::Controller::DVM23::TranslateDvmError(v13);
      v16 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v15);
      *buf = 136316162;
      v25 = "DvmAdapter.mm";
      v26 = 1024;
      v27 = 787;
      v28 = 2048;
      v29 = a2;
      v30 = 2048;
      v31 = a4;
      v32 = 2080;
      v33 = v16;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to disconnect SubmixId %llu from RendererId %llu with error %s", buf, 0x30u);
    }
  }

  return Phase::Controller::DVM23::TranslateDvmError(v13);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetSubmixSendLevel(Phase::Controller::DVM23::DvmAdapter *this, const Phase::UniqueObjectId *a2, const Phase::UniqueObjectId *a3, double a4, double a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 1, a2);
  if (!v10)
  {
    v20 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *a2;
      v26 = 136315650;
      v27 = "DvmAdapter.mm";
      v28 = 1024;
      v29 = 804;
      v30 = 2048;
      v31 = v21;
      v22 = "%25s:%-5d Set send level: unknown SubmixId %llu";
      v23 = v20;
LABEL_11:
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, v22, &v26, 0x1Cu);
    }

    return 4;
  }

  v11 = v10;
  v12 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 1, a3);
  if (!v12)
  {
    v24 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *a3;
      v26 = 136315650;
      v27 = "DvmAdapter.mm";
      v28 = 1024;
      v29 = 811;
      v30 = 2048;
      v31 = v25;
      v22 = "%25s:%-5d Set send level: unknown RendererId %llu";
      v23 = v24;
      goto LABEL_11;
    }

    return 4;
  }

  v13 = Phase::Controller::DVM23::SubmixController::SetSendLevel(v11[4], *this, *(v12[4] + 8), *(v12[4] + 16), a4, a5);
  v14 = v13;
  if (v13)
  {
    v15 = **(Phase::Logger::GetInstance(v13) + 80);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v17 = *a3;
      v18 = Phase::Controller::DVM23::TranslateDvmError(v14);
      v26 = 136316162;
      v27 = "DvmAdapter.mm";
      v28 = 1024;
      v29 = 820;
      v30 = 2048;
      v31 = v16;
      v32 = 2048;
      v33 = v17;
      v34 = 2080;
      v35 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v18);
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set send level from SubmixId %llu to RendererId %llu with error %s", &v26, 0x30u);
    }
  }

  return Phase::Controller::DVM23::TranslateDvmError(v14);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::AddTap(Phase::Logger *a1, unint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  __val[0] = a2;
  __val[1] = a3;
  v5 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = "DvmAdapter.mm";
    v9 = 1024;
    v10 = 850;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding TapId %llu!", buf, 0x1Cu);
  }

  if (!std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, __val))
  {
    operator new();
  }

  return 5;
}

void sub_23A3BED38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::AddSubmixToTap(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v34[0] = a2;
  v34[1] = a3;
  v33[0] = a4;
  v33[1] = a5;
  v10 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v36 = "DvmAdapter.mm";
    v37 = 1024;
    v38 = 877;
    v39 = 2048;
    v40 = a4;
    v41 = 2048;
    v42 = a2;
    _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding SubmixId %llu to TapId %llu!", buf, 0x26u);
  }

  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v34);
  if (!v11)
  {
    v21 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "DvmAdapter.mm";
      v37 = 1024;
      v38 = 882;
      v39 = 2048;
      v40 = a2;
      v22 = "%25s:%-5d Add submix to tap: unknown TapId %llu";
      v23 = v21;
LABEL_12:
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, v22, buf, 0x1Cu);
    }

    return 4;
  }

  v12 = v11;
  v13 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v33);
  if (!v13)
  {
    v24 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "DvmAdapter.mm";
      v37 = 1024;
      v38 = 889;
      v39 = 2048;
      v40 = a4;
      v22 = "%25s:%-5d Add submix to tap: unknown SubmixId %llu";
      v23 = v24;
      goto LABEL_12;
    }

    return 4;
  }

  v14 = v12[4];
  v15 = *(v14 + 72);
  v16 = v13[4];
  v17 = *a1;
  if (*(v16 + 32) == 3)
  {
    v31 = 0;
    v32[0] = 0;
    v32[1] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, *a6, a6[1], (a6[1] - *a6) >> 2);
    v18 = v32;
    v19 = Phase::Controller::DVM23::AmbientSubmixController::ConnectToGraph(v16, v17, v14, &v31, v15, 0.0);
    v20 = v31;
    if (!v31)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  __p = 0;
  v30[0] = 0;
  v30[1] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *a6, a6[1], (a6[1] - *a6) >> 2);
  v18 = v30;
  v19 = Phase::Controller::DVM23::SubmixController::ConnectToGraph(v16, v17, v14, &__p, v15, 0.0);
  v20 = __p;
  if (__p)
  {
LABEL_15:
    *v18 = v20;
    operator delete(v20);
  }

LABEL_16:
  if (v19)
  {
    v26 = **(Phase::Logger::GetInstance(v20) + 80);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = Phase::Controller::DVM23::TranslateDvmError(v19);
      v28 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v27);
      *buf = 136316162;
      v36 = "DvmAdapter.mm";
      v37 = 1024;
      v38 = 913;
      v39 = 2048;
      v40 = a4;
      v41 = 2048;
      v42 = a2;
      v43 = 2080;
      v44 = v28;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to connect SubmixId %llu to TapId %llu with error %s", buf, 0x30u);
    }
  }

  return Phase::Controller::DVM23::TranslateDvmError(v19);
}

void sub_23A3BF0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    *v12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::RemoveSubmixFromTap(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v24[0] = a2;
  v24[1] = a3;
  v23[0] = a4;
  v23[1] = a5;
  v8 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v26 = "DvmAdapter.mm";
    v27 = 1024;
    v28 = 921;
    v29 = 2048;
    v30 = a4;
    v31 = 2048;
    v32 = a2;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing SubmixId %llu from TapId %llu!", buf, 0x26u);
  }

  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v24);
  if (!v9)
  {
    v18 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "DvmAdapter.mm";
      v27 = 1024;
      v28 = 926;
      v29 = 2048;
      v30 = a2;
      v19 = "%25s:%-5d Remove submix from tap: unknown TapId %llu";
      v20 = v18;
LABEL_14:
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, v19, buf, 0x1Cu);
    }

    return 4;
  }

  v10 = v9;
  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v23);
  if (!v11)
  {
    v21 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v26 = "DvmAdapter.mm";
      v27 = 1024;
      v28 = 933;
      v29 = 2048;
      v30 = a4;
      v19 = "%25s:%-5d Remove submix from tap: unknown SubmixId %llu";
      v20 = v21;
      goto LABEL_14;
    }

    return 4;
  }

  v12 = v10[4];
  v13 = v11[4];
  v14 = *a1;
  if (v13[4].i32[0] == 3)
  {
    v15 = v13[5];
    v16 = v13[6];
    while (v15 != v16)
    {
      v17 = Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(*v15, v14, v12, 0.0);
      if (v17)
      {
        return Phase::Controller::DVM23::TranslateDvmError(v17);
      }

      ++v15;
    }

    v17 = 0;
  }

  else
  {
    v17 = Phase::Controller::DVM23::SubmixController::DisconnectFromGraph(v13, *a1, v10[4], 0.0);
  }

  return Phase::Controller::DVM23::TranslateDvmError(v17);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConfigureTap(Phase::Logger *a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, int a6)
{
  v36 = *MEMORY[0x277D85DE8];
  v23[0] = a2;
  v23[1] = a3;
  v11 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 3)
    {
      v12 = "Unknown (CVM) PlayState";
    }

    else
    {
      v12 = off_278B4F4B8[a4];
    }

    *buf = 136316418;
    v25 = "DvmAdapter.mm";
    v26 = 1024;
    v27 = 955;
    v28 = 2048;
    v29 = a2;
    v30 = 2080;
    v31 = v12;
    v32 = 2048;
    v33 = a5;
    v34 = 1024;
    v35 = a6;
    _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring TapId %llu, with state %s, tap vid %llu and buffer length %d!", buf, 0x36u);
  }

  v13 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v23);
  if (v13)
  {
    v14 = v13;
    v15 = Phase::Controller::DVM23::PreSpatialTapController::ConfigureTapGraph(v13[4], *a1, a5, a6);
    v16 = v15;
    if (!v15)
    {
      return Phase::Controller::DVM23::DvmAdapter::SetPlayState(a1, v14[4], a4);
    }

    v17 = **(Phase::Logger::GetInstance(v15) + 80);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = Phase::Controller::DVM23::TranslateDvmError(v16);
      v19 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v18);
      *buf = 136315906;
      v25 = "DvmAdapter.mm";
      v26 = 1024;
      v27 = 970;
      v28 = 2048;
      v29 = a2;
      v30 = 2080;
      v31 = v19;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to configure TapId %llu with error %s", buf, 0x26u);
      return v18;
    }

    return Phase::Controller::DVM23::TranslateDvmError(v16);
  }

  v20 = **(Phase::Logger::GetInstance(0) + 80);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v25 = "DvmAdapter.mm";
    v26 = 1024;
    v27 = 960;
    v28 = 2048;
    v29 = a2;
    _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Configure Tap: unknown TapId %llu", buf, 0x1Cu);
  }

  return 4;
}

uint64_t Phase::Controller::DVM23::DvmAdapter::RemoveTap(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v9[1] = a3;
  v5 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v11 = "DvmAdapter.mm";
    v12 = 1024;
    v13 = 979;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing TapId %llu!", buf, 0x1Cu);
  }

  v6 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 1, v9);
  if (v6)
  {
    return Phase::Controller::DVM23::DvmAdapter::SetPlayState(a1, v6[4], 0);
  }

  v8 = **(Phase::Logger::GetInstance(0) + 80);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v11 = "DvmAdapter.mm";
    v12 = 1024;
    v13 = 984;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Remove tap: unknown TapId %llu", buf, 0x1Cu);
  }

  return 4;
}

uint64_t Phase::Controller::DVM23::DvmAdapter::AddMaster(Phase::Controller::DVM23::DvmAdapter *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = **(Phase::Logger::GetInstance(this) + 80);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "DvmAdapter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 995;
    _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding master outputs!", buf, 0x12u);
  }

  if (!*(this + 6))
  {
    operator new();
  }

  return 0;
}

void sub_23A3BF9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::ConnectToMaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v14[0] = a2;
  v14[1] = a3;
  v5 = **(Phase::Logger::GetInstance(a1) + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "DvmAdapter.mm";
    v17 = 1024;
    v18 = 1045;
    v19 = 2048;
    v20 = a2;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connecting controllerId %llu to master outputs!", buf, 0x1Cu);
  }

  v6 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 8), v14);
  if (v6)
  {
    v7 = Phase::Controller::DVM23::MasterController::Connect(*(a1 + 48), *a1, v6[4]);
    v8 = v7;
    if (v7)
    {
      v9 = **(Phase::Logger::GetInstance(v7) + 80);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = Phase::Controller::DVM23::TranslateDvmError(v8);
        v11 = Phase::Controller::DVM23::DvmAdapterErrorCodeToString(v10);
        *buf = 136315906;
        v16 = "DvmAdapter.mm";
        v17 = 1024;
        v18 = 1058;
        v19 = 2048;
        v20 = a2;
        v21 = 2080;
        v22 = v11;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to connect controllerId %llu to master outputs with error %s!", buf, 0x26u);
      }
    }

    return Phase::Controller::DVM23::TranslateDvmError(v8);
  }

  else
  {
    v13 = **(Phase::Logger::GetInstance(0) + 80);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "DvmAdapter.mm";
      v17 = 1024;
      v18 = 1050;
      v19 = 2048;
      v20 = a2;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Connect to master: unknown controllerId %llu", buf, 0x1Cu);
    }

    return 4;
  }
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetParameters(Phase::Controller::DVM23::VoiceGraph ***a1, int a2, uint64_t a3, uint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = a4[1];
  if (*a4 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = Phase::Controller::DVM23::DspVoiceManager23::SetVoiceParameter(*a1, a3, *v4, *(v4 + 8));
      if (v9)
      {
        v10 = **(Phase::Logger::GetInstance(v9) + 80);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = *v4;
          v12 = *(v4 + 8);
          *buf = 136316162;
          v15 = "DvmAdapter.mm";
          v16 = 1024;
          v17 = 1113;
          v18 = 2048;
          v19 = v11;
          v20 = 2048;
          v21 = a3;
          v22 = 2048;
          v23 = v12;
          _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set parameterId %llu, on voiceId %llu, with value %f!", buf, 0x30u);
        }

        v8 = 10;
      }

      v4 += 16;
    }

    while (v4 != v5);
  }

  return Phase::Controller::DVM23::TranslateDvmError(v8);
}

uint64_t Phase::Controller::DVM23::DvmAdapter::SetVoiceData(Phase::Controller::DVM23::VoiceGraph ***this, uint64_t a2, unint64_t a3, void *a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = Phase::Controller::DVM23::DspVoiceManager23::SetVoiceData(*this, a2, a3, a4, a5);
  v9 = v8;
  if (v8)
  {
    v10 = **(Phase::Logger::GetInstance(v8) + 80);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = "DvmAdapter.mm";
      v14 = 1024;
      v15 = 1138;
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = a2;
      v20 = 2048;
      v21 = a4;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set dataId %llu, on voiceId %llu, with address %p!", &v12, 0x30u);
    }
  }

  return Phase::Controller::DVM23::TranslateDvmError(v9);
}

void Phase::Controller::DVM23::DvmAdapter::ProcessPendingPlayStateChanges(Phase::Controller::DVM23::DvmAdapter *this, Phase::Controller::DVM23::GraphController *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::find<Phase::DspLayer23::VoicePool *>(this + 10, a2);
  if (v4)
  {
    v5 = v4;
    v6 = Phase::Controller::DVM23::DvmAdapter::SetPlayState(this, a2, *(v4[4] + 16));
    v7 = v6;
    v8 = **(Phase::Logger::GetInstance(v6) + 80);
    v9 = v8;
    if (v7 < 2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v5[4] + 16);
        if (v12 > 3)
        {
          v13 = "Unknown (CVM) PlayState";
        }

        else
        {
          v13 = off_278B4F4B8[v12];
        }

        v16 = *(a2 + 1);
        v17 = (*(*a2 + 80))(a2);
        v21 = 136316162;
        v22 = "DvmAdapter.mm";
        v23 = 1024;
        v24 = 1228;
        v25 = 2080;
        v26 = v13;
        v27 = 2048;
        v28 = v16;
        v29 = 2048;
        v30 = v17;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Processed pending playstate change to %s on ControllerId %llu, with AudioGraphId %llu!.", &v21, 0x30u);
      }

      v18 = v5[4];
      v20 = *v18;
      v19 = v18[1];
      *(v20 + 8) = v19;
      *v19 = v20;
      --v5[5];
      operator delete(v18);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(v5[4] + 16);
        if (v10 > 3)
        {
          v11 = "Unknown (CVM) PlayState";
        }

        else
        {
          v11 = off_278B4F4B8[v10];
        }

        v14 = *(a2 + 1);
        v15 = (*(*a2 + 80))(a2);
        v21 = 136316162;
        v22 = "DvmAdapter.mm";
        v23 = 1024;
        v24 = 1218;
        v25 = 2080;
        v26 = v11;
        v27 = 2048;
        v28 = v14;
        v29 = 2048;
        v30 = v15;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set pending playstate change to %s on ControllerId %llu, with AudioGraphId %llu! Pending list will be erased.", &v21, 0x30u);
      }

      std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(v5 + 3);
    }

    if (!v5[5])
    {
      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(&v21, this + 10, v5);
      std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,void *>>>>::~unique_ptr[abi:ne200100](&v21);
    }
  }
}

uint64_t std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__init_with_size[abi:ne200100]<std::pair<Phase::DspLayer23::KernelType,unsigned long long>*,std::pair<Phase::DspLayer23::KernelType,unsigned long long>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A3C01C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<Phase::DspLayer23::KernelType,unsigned long long>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::__unordered_map_hasher<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::hash<Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::Controller::DVM23::GraphController *>,true>,std::__unordered_map_equal<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::equal_to<Phase::Controller::DVM23::GraphController *>,std::hash<Phase::Controller::DVM23::GraphController *>,true>,std::allocator<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::__unordered_map_hasher<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::hash<Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::Controller::DVM23::GraphController *>,true>,std::__unordered_map_equal<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::equal_to<Phase::Controller::DVM23::GraphController *>,std::hash<Phase::Controller::DVM23::GraphController *>,true>,std::allocator<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::__unordered_map_hasher<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::hash<Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::Controller::DVM23::GraphController *>,true>,std::__unordered_map_equal<Phase::Controller::DVM23::GraphController *,std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,std::equal_to<Phase::Controller::DVM23::GraphController *>,std::hash<Phase::Controller::DVM23::GraphController *>,true>,std::allocator<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(v1 + 3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>>>::__emplace_unique_key_args<Phase::UniqueObjectId,std::piecewise_construct_t const&,std::tuple<Phase::UniqueObjectId const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ *(a2 + v2++));
  }

  while (v2 != 16);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DvmAdapter::ConfigureGeneratorWithRenderCallback(Phase::UniqueObjectId,Phase::Controller::PlayState,Phase::Controller::DspGeneratorNode const&,std::vector<Phase::Controller::DspNode> const&,Phase::Controller::DVM23::DvmAdapter::RenderCallbackInfo const*)::$_0,std::allocator<Phase::Controller::DVM23::DvmAdapter::ConfigureGeneratorWithRenderCallback(Phase::UniqueObjectId,Phase::Controller::PlayState,Phase::Controller::DspGeneratorNode const&,std::vector<Phase::Controller::DspNode> const&,Phase::Controller::DVM23::DvmAdapter::RenderCallbackInfo const*)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D336D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DvmAdapter::ConfigureGeneratorWithRenderCallback(Phase::UniqueObjectId,Phase::Controller::PlayState,Phase::Controller::DspGeneratorNode const&,std::vector<Phase::Controller::DspNode> const&,Phase::Controller::DVM23::DvmAdapter::RenderCallbackInfo const*)::$_0,std::allocator<Phase::Controller::DVM23::DvmAdapter::ConfigureGeneratorWithRenderCallback(Phase::UniqueObjectId,Phase::Controller::PlayState,Phase::Controller::DspGeneratorNode const&,std::vector<Phase::Controller::DspNode> const&,Phase::Controller::DVM23::DvmAdapter::RenderCallbackInfo const*)::$_0>,void ()(unsigned long long,unsigned long long,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a1[2];
  v7 = *(a1[3] + 64);
  v8 = a1[1];
  v11 = *a2;
  v9 = std::generic_category();
  return (*(*v7 + 16))(v7, v8, v6, &v11, v5, v9);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_0,std::allocator<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_0>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33718;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_1,std::allocator<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_1>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D33760;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_2,std::allocator<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_2>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D337A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_2,std::allocator<Phase::Controller::DVM23::DvmAdapter::SetPlayState(Phase::Controller::DVM23::GraphController *,Phase::Controller::PlayState)::$_2>,void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, unsigned int *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = *a5;
  v36[0] = *a3;
  v36[1] = v7;
  v9 = *(a1 + 8);
  v10 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(v9 + 1, v36);
  if (v10)
  {
    v11 = v10;
    v12 = v10[4];
    v13 = std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::find<Phase::DspLayer23::VoicePool *>(v9 + 10, v12);
    if (v13)
    {
      v14 = **(Phase::Logger::GetInstance(v13) + 80);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "DvmAdapter.mm";
        v38 = 1024;
        v39 = 1286;
        v40 = 2048;
        v41 = v6;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Erasing pending commands after controllerId %llu stopped!", buf, 0x1Cu);
      }

      v12 = v11[4];
      v13 = std::__hash_table<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::__unordered_map_hasher<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,true>,std::__unordered_map_equal<Phase::DspLayer23::VoicePool *,std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>,std::equal_to<Phase::DspLayer23::VoicePool *>,std::hash<Phase::DspLayer23::VoicePool *>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::VoicePool *,Phase::Controller::DVM23::DvmVoicePool *>>>::find<Phase::DspLayer23::VoicePool *>(v9 + 10, v12);
      if (v13)
      {
        std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(buf, v9 + 10, v13);
        v13 = std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::Controller::DVM23::GraphController *,std::list<Phase::Controller::PlayState>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
        v12 = v11[4];
      }
    }

    if (v12[8] == 3)
    {
      v15 = **(Phase::Logger::GetInstance(v13) + 80);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "DvmAdapter.mm";
        v38 = 1024;
        v39 = 1294;
        v40 = 2048;
        v41 = v6;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending stop callback for Ambient SubmixId %llu!", buf, 0x1Cu);
      }

      v16 = v9[8];
      v17 = std::generic_category();
      (*(*v16 + 3))(v16, v6, v7, v8, v17);
      v18 = v11[4];
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_11:
      (*(*v18 + 8))(v18);
LABEL_12:
      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>>>::erase(v9 + 1, v11);
      return;
    }

    v19 = *v9;
    (*(*v12 + 80))(v12);
    IsGraphEmpty = Phase::Controller::DVM23::DspVoiceManager23::IsGraphEmpty(v19);
    if ((IsGraphEmpty & 1) != 0 || (v21 = *v9, v22 = (*(*v11[4] + 80))(v11[4]), IsGraphEmpty = Phase::Controller::DVM23::DspVoiceManager23::IsGraphPlaystateUniform(v21, v22, 0), IsGraphEmpty))
    {
      v23 = *(v11[4] + 32);
      if (v23 > 3)
      {
        if (v23 == 4)
        {
          v33 = **(Phase::Logger::GetInstance(IsGraphEmpty) + 80);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "DvmAdapter.mm";
            v38 = 1024;
            v39 = 1321;
            v40 = 2048;
            v41 = v6;
            _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending stop callback for Channel SubmixId %llu!", buf, 0x1Cu);
          }

LABEL_35:
          v34 = v9[8];
          v35 = std::generic_category();
          (*(*v34 + 3))(v34, v6, v7, v8, v35);
          goto LABEL_36;
        }

        if (v23 == 7)
        {
          v25 = **(Phase::Logger::GetInstance(IsGraphEmpty) + 80);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "DvmAdapter.mm";
            v38 = 1024;
            v39 = 1337;
            v40 = 2048;
            v41 = v6;
            _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending stop callback for RendererId %llu!", buf, 0x1Cu);
          }

          v26 = v9[8];
          v27 = std::generic_category();
          (*(*v26 + 4))(v26, v6, v7, v8, v27);
        }
      }

      else
      {
        if (v23)
        {
          if (v23 != 2)
          {
            goto LABEL_36;
          }

          v24 = **(Phase::Logger::GetInstance(IsGraphEmpty) + 80);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "DvmAdapter.mm";
            v38 = 1024;
            v39 = 1329;
            v40 = 2048;
            v41 = v6;
            _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending stop callback for Spatial SubmixId %llu!", buf, 0x1Cu);
          }

          goto LABEL_35;
        }

        v30 = **(Phase::Logger::GetInstance(IsGraphEmpty) + 80);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "DvmAdapter.mm";
          v38 = 1024;
          v39 = 1313;
          v40 = 2048;
          v41 = v6;
          _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sending stop callback for GeneratorId %llu!", buf, 0x1Cu);
        }

        v31 = v9[8];
        *buf = v5;
        v32 = std::generic_category();
        (*(*v31 + 2))(v31, v6, v7, buf, v8, v32);
      }

LABEL_36:
      (*(*v11[4] + 24))(v11[4], *v9);
      v18 = v11[4];
      if (!v18)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v28 = **(Phase::Logger::GetInstance(IsGraphEmpty) + 80);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = (*(*v11[4] + 80))(v11[4]);
      *buf = 136315906;
      *&buf[4] = "DvmAdapter.mm";
      v38 = 1024;
      v39 = 1361;
      v40 = 2048;
      v41 = v6;
      v42 = 2048;
      v43 = v29;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d ControllerId %llu, with AudioGraphId %llu not empty! It won't be erased.", buf, 0x26u);
    }
  }
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::DVM23::GraphController *>>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v3 = *__p;
  v4 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v2)
    {
      v4 %= *&v2;
    }
  }

  else
  {
    v4 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 == v4)
    {
LABEL_20:
      if (!v3)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v9 = *(v3 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= *&v2 - 1;
  }

  if (v9 != v4)
  {
LABEL_19:
    *(*a1 + 8 * v4) = 0;
    v3 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v10 = *(v3 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  if (v10 != v4)
  {
    *(*a1 + 8 * v10) = v7;
    v3 = *__p;
  }

LABEL_27:
  *v7 = v3;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void Phase::Controller::DVM23::DvmVoicePool::~DvmVoicePool(Phase::Controller::DVM23::DvmVoicePool *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this);
}

void *std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__emplace_unique_key_args<Phase::Controller::DVM23::Voice *,Phase::Controller::DVM23::Voice * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::__erase_unique<Phase::Controller::DVM23::Voice *>(void *a1, void *a2)
{
  result = std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::find<Phase::Controller::DVM23::Voice *>(a1, a2);
  if (result)
  {
    std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<Phase::Controller::DVM23::Voice *,std::hash<Phase::Controller::DVM23::Voice *>,std::equal_to<Phase::Controller::DVM23::Voice *>,std::allocator<Phase::Controller::DVM23::Voice *>>::find<Phase::Controller::DVM23::Voice *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *Phase::SpatialModeler::ERClustering::GetTotalEnergySumOverBands(void *result)
{
  v1 = 0.0;
  if (result && *result)
  {
    v2 = 0;
    v3 = (result + 2);
    v4 = result[1];
    do
    {
      v5 = v3;
      v6 = result[1];
      if (v4)
      {
        do
        {
          v7 = *v5++;
          v1 = v1 + (v7 * v7);
          --v6;
        }

        while (v6);
      }

      ++v2;
      v3 += v4;
    }

    while (v2 != *result);
  }

  return result;
}

char *Phase::SpatialModeler::ERClustering::DetectEarlyReflections(Phase::SpatialModeler::ERClustering *this, const Phase::SpatialModeler::SourceListenerResult *a2, const Phase::SpatialModeler::RayTracerState *a3, float a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (this)
  {

    return Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(this, a2, 1, a4);
  }

  else
  {
    v5 = **(Phase::Logger::GetInstance(0) + 1264);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "EarlyReflectionClustering.cpp";
      v8 = 1024;
      v9 = 52;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d     No detector available for source handle.\n", &v6, 0x12u);
    }

    return 0;
  }
}

float Phase::SpatialModeler::ERClustering::ExtractPerceptualAttributes(uint64_t a1, void *a2)
{
  result = 1000.0;
  *a1 = 0xC35C0000447A0000;
  v3 = a2[13];
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (!*v3)
    {
      if (!v5)
      {
        return result;
      }

      v21 = 1.1755e-38;
      goto LABEL_16;
    }

    v7 = a2[7];
    v8 = a2[12];
    if (v8 >= 2)
    {
      v9 = v7 + 1;
      v10 = *v7;
      v11 = 4 * v8 - 4;
      v12 = v7 + 1;
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v13 < v10)
        {
          v10 = v14;
          v7 = v9;
        }

        v9 = v12;
        v11 -= 4;
      }

      while (v11);
    }

    result = *v7 / 0.01;
    *a1 = result;
    if (v5)
    {
      v15 = 0;
      v16 = (v3 + 2);
      v17 = 0.0;
      do
      {
        v18 = v16;
        v19 = v5;
        do
        {
          v20 = *v18++;
          v17 = v17 + (v20 * v20);
          --v19;
        }

        while (v19);
        ++v15;
        v16 += v5;
        v17 = v17 / v5;
      }

      while (v15 != v6);
      v21 = v17 + 1.1755e-38;
LABEL_16:
      result = log10f(v21) * 10.0;
      *(a1 + 4) = result;
    }
  }

  return result;
}

void Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(void *a1, double a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130 = *MEMORY[0x277D85DE8];
  v10 = -1227133513 * ((a1[1] - *a1) >> 3);
  if (v10 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  v105 = v11;
  v12 = v10;
  std::vector<unsigned long long>::vector[abi:ne200100](v122, v10);
  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::vector[abi:ne200100](v121, v10);
  std::vector<Phase::Vector<float,2ul>>::vector[abi:ne200100](&v119, v10);
  memset(v117, 0, sizeof(v117));
  v118 = 1065353216;
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2;
    v102 = v16;
    do
    {
      v17 = v122[0];
      *(v122[0] + v14) = *(*a1 + v15);
      Phase::SpatialModeler::RayTracerState::GetSourceListenerResult(a5, &v17[v14], buf);
      v19 = Phase::SpatialModeler::ERClustering::DetectEarlyReflections(*buf, *(a5 + 88), v18, *(a5 + 464));
      __p[0] = 0;
      __p[1] = 0;
      *&v109 = 0;
      if (v19)
      {
        v19 = std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection*,Phase::SpatialModeler::AudibleEarlyReflection*>(__p, *v19, v19[1], 0x8E38E38E38E38E39 * ((v19[1] - *v19) >> 5));
      }

      if (*&buf[16])
      {
        v20 = *(*&buf[16] + 40);
      }

      else
      {
        v20 = 0.0;
      }

      v21 = *(a5 + 464);
      v22 = *(a5 + 104);
      v23 = *(a5 + 134);
      v24 = *(a5 + 8);
      Instance = Phase::Logger::GetInstance(v19);
      if (v23)
      {
        v26 = 0;
      }

      else
      {
        v26 = (v20 * a2);
      }

      v27 = v20 * v21;
      if (v20 <= 0.0)
      {
        v27 = 1.0;
      }

      v28 = log10f(((1.0 / (v27 * v27)) * v22) + 1.0e-15) * 10.0;
      v29 = expf(((*(Instance + 1284) * 10.0) / 10.0) * 0.11513);
      *&v30 = v21;
      *&v31 = v102;
      *&v32 = v28;
      LODWORD(v33) = v24;
      Phase::SpatialModeler::generateDirectionalMetadataER(__p, v30, v31, v32, v33, v29, a5 + 22776, v26, v121[0] + v13, a6);
      Phase::SpatialModeler::ERClustering::ExtractPerceptualAttributes(&v125, (v121[0] + v13));
      v34 = (v122[0] + v14);
      v35 = *(v122[0] + v14);
      v36 = *(&v125 + 1) + (vcvts_n_f32_u64(v35, 0x40uLL) * 0.1);
      *(&v125 + 1) = v36;
      v37 = (v119 + v14);
      *v37 = v125;
      v37[1] = v36;
      v128.__begin_ = v34;
      v38 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v117, v35);
      v38[6] = *v37;
      v38[7] = v37[1];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&buf[24])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[24]);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v15 += 56;
      v14 += 8;
      v13 += 208;
    }

    while (56 * v12 != v15);
  }

  v114 = 0;
  v115 = 0;
  v116 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  *__p = 0u;
  v109 = 0u;
  v110 = 1065353216;
  std::unordered_map<unsigned long long,Phase::Vector<float,2ul>>::unordered_map(v107, v117);
  Phase::SpatialModeler::getPerceptualCoordinatesFromNewDataAndPastAssignments(a5);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v107);
  v39 = (a7 + 40);
  if ((a7 + 40) != &v114)
  {
    std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>((a7 + 40), v114, v115, (v115 - v114) >> 3);
  }

  if ((a7 + 88) != &v111)
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a7 + 88), v111, v112, (v112 - v111) >> 3);
  }

  v125 = 0;
  v126 = 0uLL;
  if (*(a7 + 48) == *(a7 + 40))
  {
    v127 = 1;
    std::vector<Phase::Vector<float,2ul>>::vector[abi:ne200100](&v123, v105);
    memset(buf, 0, 24);
    std::vector<unsigned int>::vector[abi:ne200100](&v128, (v120 - v119) >> 3);
    v54 = 0;
    v55 = 3.4028e38;
    do
    {
      *&buf[8] = *buf;
      std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<Phase::Vector<float,2ul> const*>,std::__wrap_iter<Phase::Vector<float,2ul> const*>,std::back_insert_iterator<std::vector<Phase::Vector<float,2ul>>>,long,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v119, v120, buf, v105, &v127);
      Phase::SpatialModeler::kmeans<2ul>::AssignClusterIndices(&v128, &v119, buf);
      if (v120 == v119)
      {
        v65 = 0.0;
      }

      else
      {
        v56 = 0;
        v57 = (v120 - v119) >> 3;
        if (v57 <= 1)
        {
          v58 = 1;
        }

        else
        {
          v58 = (v120 - v119) >> 3;
        }

        v59 = 0.0;
        do
        {
          v60 = 0;
          v61 = 1;
          v62 = 0.0;
          do
          {
            v63 = v61;
            v64 = *(v119 + 2 * v56 + v60) - *(*buf + 8 * v128.__begin_[v56] + 4 * v60);
            v62 = v62 + (v64 * v64);
            v60 = 1;
            v61 = 0;
          }

          while ((v63 & 1) != 0);
          v59 = v59 + sqrtf(v62);
          ++v56;
        }

        while (v56 != v58);
        v65 = v59 / v57;
      }

      if (v65 < v55)
      {
        std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>(&v123, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
        v55 = v65;
      }

      ++v54;
    }

    while (v54 != 5);
    if (v128.__begin_)
    {
      v128.__end_ = v128.__begin_;
      operator delete(v128.__begin_);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v125)
    {
      *&v126 = v125;
      operator delete(v125);
    }

    v66 = v123;
    v125 = v123;
    v126 = v124;
    v67 = v124;
  }

  else
  {
    LODWORD(v123) = 1;
    std::vector<Phase::Vector<float,2ul>>::resize(&v125, v105);
    memset(buf, 0, 24);
    std::vector<unsigned int>::vector[abi:ne200100](&v128, (v120 - v119) >> 3);
    v40 = *(a7 + 40);
    v41 = v105 - ((*(a7 + 48) - v40) >> 3);
    if (v41 < 1)
    {
      if (v105)
      {
        v68 = v125 + 4;
        v69 = (v40 + 4);
        v70 = v105;
        do
        {
          *(v68 - 1) = *(v69 - 1);
          v71 = *v69;
          v69 += 2;
          *v68 = v71;
          v68 += 2;
          --v70;
        }

        while (v70);
      }
    }

    else
    {
      v42 = 0;
      v43 = 3.4028e38;
      do
      {
        if (buf != v39)
        {
          std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>(buf, *(a7 + 40), *(a7 + 48), (*(a7 + 48) - *(a7 + 40)) >> 3);
        }

        std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<Phase::Vector<float,2ul> const*>,std::__wrap_iter<Phase::Vector<float,2ul> const*>,std::back_insert_iterator<std::vector<Phase::Vector<float,2ul>>>,long,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v119, v120, buf, v41, &v123);
        Phase::SpatialModeler::kmeans<2ul>::AssignClusterIndices(&v128, &v119, buf);
        if (v120 == v119)
        {
          v53 = 0.0;
        }

        else
        {
          v44 = 0;
          v45 = (v120 - v119) >> 3;
          if (v45 <= 1)
          {
            v46 = 1;
          }

          else
          {
            v46 = (v120 - v119) >> 3;
          }

          v47 = 0.0;
          do
          {
            v48 = 0;
            v49 = 1;
            v50 = 0.0;
            do
            {
              v51 = v49;
              v52 = *(v119 + 2 * v44 + v48) - *(*buf + 8 * v128.__begin_[v44] + 4 * v48);
              v50 = v50 + (v52 * v52);
              v48 = 1;
              v49 = 0;
            }

            while ((v51 & 1) != 0);
            v47 = v47 + sqrtf(v50);
            ++v44;
          }

          while (v44 != v46);
          v53 = v47 / v45;
        }

        if (v53 < v43)
        {
          std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>(&v125, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
          v43 = v53;
        }

        ++v42;
      }

      while (v42 != 5);
    }

    if (v128.__begin_)
    {
      v128.__end_ = v128.__begin_;
      operator delete(v128.__begin_);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    v66 = v125;
    v67 = v126;
  }

  memset(&v128, 0, sizeof(v128));
  if (v67 != v66)
  {
    std::vector<Phase::Vector<float,2ul>>::__vallocate[abi:ne200100](&v128, (v67 - v66) >> 3);
  }

  std::vector<unsigned int>::vector[abi:ne200100](&v106, (v120 - v119) >> 3);
  for (i = 0; i != 100; ++i)
  {
    Phase::SpatialModeler::kmeans<2ul>::AssignClusterIndices(&v106, &v119, &v125);
    std::vector<Phase::Vector<float,2ul>>::resize(&v125, v105);
    bzero(v125, 8 * v105);
    memset(buf, 0, 24);
    if (v105)
    {
      std::vector<unsigned long>::__vallocate[abi:ne200100](buf, v105);
    }

    if (v120 != v119)
    {
      v73 = (v120 - v119) >> 3;
      begin = v106.__begin_;
      v75 = v125;
      if (v73 <= 1)
      {
        v73 = 1;
      }

      v76 = (v119 + 4);
      do
      {
        v78 = *begin++;
        v77 = v78;
        v79 = &v75[8 * v78];
        v80 = v79[1];
        *v79 = *(v76 - 1) + *v79;
        v81 = *v76;
        v76 += 2;
        v79[1] = v81 + v80;
        ++*(8 * v77);
        --v73;
      }

      while (v73);
    }

    if (v128.__end_ == v128.__begin_)
    {
      break;
    }

    v82 = 0;
    v83 = (v128.__end_ - v128.__begin_) >> 3;
    v84 = v83 <= 1 ? 1 : (v128.__end_ - v128.__begin_) >> 3;
    v85 = 1;
LABEL_90:
    v86 = 0;
    v87 = 1;
    v88 = 0.002;
    while (vabds_f32(*&v128.__begin_[2 * v82 + v86], *(v125 + 2 * v82 + v86)) <= v88)
    {
      v89 = v87;
      v87 = 0;
      v88 = 1.0;
      v86 = 1;
      if ((v89 & 1) == 0)
      {
        v85 = ++v82 < v83;
        if (v82 != v84)
        {
          goto LABEL_90;
        }

        break;
      }
    }

    if (!v85)
    {
      break;
    }

    std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>(&v128, v125, v126, (v126 - v125) >> 3);
  }

  if (&v125 != v39)
  {
    std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>((a7 + 40), v125, v126, (v126 - v125) >> 3);
  }

  if (v128.__begin_)
  {
    v128.__end_ = v128.__begin_;
    operator delete(v128.__begin_);
  }

  v90 = v125;
  if (v125)
  {
    *&v126 = v125;
    operator delete(v125);
  }

  if (*(a7 + 48) != *(a7 + 40))
  {
    v91 = 0;
    v92 = 0;
    do
    {
      v93 = **(Phase::Logger::GetInstance(v90) + 1264);
      v90 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
      if (v90)
      {
        v94 = (*(a7 + 40) + v91);
        v95 = *v94;
        v96 = v94[1];
        *buf = 136315906;
        *&buf[4] = "EarlyReflectionClustering.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 218;
        *&buf[18] = 2048;
        *&buf[20] = v95;
        *&buf[28] = 2048;
        *&buf[30] = v96;
        _os_log_impl(&dword_23A302000, v93, OS_LOG_TYPE_DEFAULT, "%25s:%-5d kmeans, centroids begin %f %f", buf, 0x26u);
      }

      ++v92;
      v91 += 8;
    }

    while (v92 < (*(a7 + 48) - *(a7 + 40)) >> 3);
  }

  if (v120 != v119)
  {
    v97 = 0;
    v98 = 0;
    do
    {
      v99 = **(Phase::Logger::GetInstance(v90) + 1264);
      v90 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
      if (v90)
      {
        v100 = *(v119 + v97);
        v101 = *(v119 + v97 + 4);
        *buf = 136315906;
        *&buf[4] = "EarlyReflectionClustering.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 224;
        *&buf[18] = 2048;
        *&buf[20] = v100;
        *&buf[28] = 2048;
        *&buf[30] = v101;
        _os_log_impl(&dword_23A302000, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d kmeans, data begin %f %f", buf, 0x26u);
      }

      ++v98;
      v97 += 8;
    }

    while (v98 < (v120 - v119) >> 3);
  }

  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::resize((a7 + 64), v105);
  if (v106.__begin_)
  {
    v106.__end_ = v106.__begin_;
    operator delete(v106.__begin_);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(__p);
  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v117);
  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }

  *buf = v121;
  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v122[0])
  {
    v122[1] = v122[0];
    operator delete(v122[0]);
  }
}

void sub_23A3C2908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60)
{
  if (__p)
  {
    a60 = __p;
    operator delete(__p);
  }

  if (a49)
  {
    a50 = a49;
    operator delete(a49);
  }

  if (a52)
  {
    a53 = a52;
    operator delete(a52);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&a23);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&a35);
  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  a35 = &a43;
  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__destroy_vector::operator()[abi:ne200100](&a35);
  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::SourceListenerResult::~SourceListenerResult(Phase::SpatialModeler::SourceListenerResult *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::resize(void *result, unint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = result[1];
  v5 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *result) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 208 * a2;
      while (v4 != v11)
      {
        v4 -= 208;
        result = std::allocator_traits<std::allocator<Phase::SpatialModeler::DirectionalMetadataOutput<float>>>::destroy[abi:ne200100]<Phase::SpatialModeler::DirectionalMetadataOutput<float>,void,0>(v4);
      }

      v2[1] = v11;
    }
  }

  else
  {
    v7 = result[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x13B13B13B13B13BLL)
      {
        v8 = 0x4EC4EC4EC4EC4EC5 * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x9D89D89D89D89DLL)
        {
          v10 = 0x13B13B13B13B13BLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::DirectionalMetadataOutput<float>>>(v10);
      }

      std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v4 + 208 * v6;
    do
    {
      *v4 = 3;
      *(v4 + 4) = 1;
      *(v4 + 8) = 0;
      *(v4 + 204) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      *(v4 + 40) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 88) = 0;
      *(v4 + 136) = 0;
      *(v4 + 144) = 0;
      *(v4 + 184) = 0;
      *(v4 + 192) = 0;
      *(v4 + 176) = 0;
      *(v4 + 200) = 0;
      v4 += 208;
    }

    while (v4 != v12);
    result[1] = v12;
  }

  return result;
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void Phase::SpatialModeler::ERClustering::AssignSourcesToExistingRenderers(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = a3;
  v124 = *MEMORY[0x277D85DE8];
  v9 = 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 18936) - *(a3 + 18928)) >> 3);
  if (v9 >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v9;
  }

  v11 = v9;
  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::vector[abi:ne200100](&v106, v9);
  v101 = 0;
  v102 = 0;
  v103 = 0;
  if (v11)
  {
    operator new();
  }

  v82 = v10;
  memset(v104, 0, sizeof(v104));
  v105 = 1065353216;
  v12 = *(v7 + 18936) - *(v7 + 18928);
  if (v12)
  {
    v13 = 0;
    v14 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
    v15 = a6;
    v85 = v15;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v84 = v14;
    v86 = v7;
    do
    {
      v16 = a5;
      v17 = *(*(v7 + 18928) + 56 * v13);
      v110[0] = v17;
      v18 = v7;
      v19 = *(a2 + 144);
      v20 = a2;
      v21 = *(a2 + 104);
      v22 = 0;
      if (v19)
      {
        v23 = 0;
        v24 = *(v18 + 22576);
        v25 = v21 + 160;
        do
        {
          if (Phase::SpatialModeler::GetSoundSourceHash(*(v25 - 16), v24, v25) == v17)
          {
            v22 = v23;
          }

          ++v23;
          v25 += 304;
        }

        while (v19 != v23);
      }

      v26 = *(v21 + 304 * v22 + 288);
      a2 = v20;
      v27 = *(v20 + 96);
      if (v27)
      {
        v28 = v26 >= v27;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(*(v20 + 56) + 336 * v26);
      }

      a5 = v16;
      v7 = v86;
      Phase::SpatialModeler::RayTracerState::GetSourceListenerResult(v86, v110, buf);
      v31 = Phase::SpatialModeler::ERClustering::DetectEarlyReflections(*buf, *(v7 + 88), v30, *(v7 + 464));
      __p[0] = 0;
      __p[1] = 0;
      v97[0] = 0;
      if (v31)
      {
        v31 = std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection*,Phase::SpatialModeler::AudibleEarlyReflection*>(__p, *v31, v31[1], 0x8E38E38E38E38E39 * ((v31[1] - *v31) >> 5));
      }

      if (*&buf[16])
      {
        v32 = *(*&buf[16] + 40);
      }

      else
      {
        v32 = 0.0;
      }

      v33 = *(v86 + 116);
      v34 = *(v86 + 26);
      v35 = *(v86 + 134);
      v36 = *(v86 + 2);
      Instance = Phase::Logger::GetInstance(v31);
      if (v35)
      {
        v38 = 0;
      }

      else
      {
        v38 = (v32 * a6);
      }

      v39 = v32 * v33;
      if (v32 <= 0.0)
      {
        v39 = 1.0;
      }

      v40 = log10f(((1.0 / (v39 * v39)) * v34) + 1.0e-15) * 10.0;
      v41 = expf(((*(Instance + 1284) * 10.0) / 10.0) * 0.11513);
      *&v42 = v33;
      *&v43 = v85;
      *&v44 = v40;
      LODWORD(v45) = v36;
      Phase::SpatialModeler::generateDirectionalMetadataER(__p, v42, v43, v44, v45, v41, v86 + 22776, v38, v106 + 208 * v13, a4);
      Phase::SpatialModeler::ERClustering::ExtractPerceptualAttributes(&v92, v106 + 26 * v13);
      v46 = *(v86 + 2366) + 56 * v13;
      *&v47 = *(v46 + 24);
      DWORD2(v47) = *(v46 + 32);
      HIDWORD(v47) = v92;
      v48 = *(&v92 + 1) + (vcvts_n_f32_u64(v110[0], 0x40uLL) * 0.1);
      *(&v92 + 1) = v48;
      v49 = v101 + 40 * v13;
      *v49 = v110[0];
      *(v49 + 8) = v47;
      *(v49 + 6) = v48;
      *(v49 + 4) = v29;
      *&v112 = v110;
      v50 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v104, v110[0]);
      *(v50 + 6) = *(v49 + 5);
      *(v50 + 7) = *(v49 + 6);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (*&buf[24])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[24]);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      ++v13;
    }

    while (v13 != v84);
  }

  memset(v99, 0, sizeof(v99));
  *v97 = 0u;
  v98 = 0u;
  *__p = 0u;
  v100 = 1065353216;
  std::unordered_map<unsigned long long,Phase::Vector<float,2ul>>::unordered_map(v95, v104);
  Phase::SpatialModeler::getPerceptualCoordinatesFromNewDataAndPastAssignments(v7);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v95);
  Phase::SpatialModeler::getAttackQueryAssignments(&v101, __p, v51);
  if ((a5 + 40) != __p)
  {
    std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>((a5 + 40), __p[0], __p[1], (__p[1] - __p[0]) >> 3);
  }

  if ((a5 + 88) != &v97[1])
  {
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>((a5 + 88), v97[1], v98, (v98 - v97[1]) >> 3);
  }

  v92 = 0;
  v93 = 0;
  v94 = 0;
  v52 = Phase::SpatialModeler::AssignSourcesToRenderers(a1, &v101, __p, &v92);
  v53 = *(v7 + 144);
  v112 = 0u;
  v113 = 0u;
  v114 = 1065353216;
  v54 = v92;
  if (v92 == v93)
  {
    v55 = 0;
  }

  else
  {
    do
    {
      v52 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v112, v54++);
    }

    while (v54 != v93);
    v55 = *(&v113 + 1);
  }

  if (v55 >= v82)
  {
    v56 = v82;
  }

  else
  {
    v56 = v55;
  }

  if (!v56)
  {
    v80 = **(Phase::Logger::GetInstance(v52) + 1264);
    if (!os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 136315906;
    *&buf[4] = "EarlyReflectionClustering.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 411;
    *&buf[18] = 2048;
    *&buf[20] = *(&v113 + 1);
    *&buf[28] = 2048;
    *&buf[30] = v82;
    v81 = "%25s:%-5d GenerateClusterMetadataFromResults - number of unique assigned clusters is %zu, inMaxExpectedNumClusters %zu, nothing to do, returning";
    goto LABEL_82;
  }

  v57 = v107;
  v91 = v106;
  v58 = 0x4EC4EC4EC4EC4EC5 * ((v107 - v106) >> 4);
  if (v58 == (v54 - v92) >> 3)
  {
    std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::resize((a5 + 64), v56);
    v59 = 0;
    v87 = v57;
    v89 = v56;
    while (1)
    {
      v110[0] = 0;
      v110[1] = 0;
      v111 = 0;
      v109 = 0;
      if (v57 != v91)
      {
        v60 = 0;
        v61 = 1;
        do
        {
          v62 = *(v101 + 5 * v60);
          v108 = v62;
          if (*(v92 + v60) == v59)
          {
            *buf = &v108;
            std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a5, v62)[3] = v59;
            std::vector<unsigned int>::push_back[abi:ne200100](v110, &v109);
          }

          v109 = v61;
          v60 = v61;
        }

        while (v58 > v61++);
        v64 = v110[0];
        if (v110[1] != v110[0])
        {
          *buf = &v101;
          std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(v110[1], v110[1], v110[0], v110[0], buf, 126 - 2 * __clz((v110[1] - v110[0]) >> 2), 1);
          v65 = *(a5 + 64) + 208 * v59;
          v64 = v110[0];
          v66 = v110[1];
          if (v110[1] != v110[0])
          {
            v67 = 0;
            do
            {
              v68 = v106 + 208 * v64[v67++];
              Phase::SpatialModeler::MorphDirectionalMetadata(v68, v65, buf, 1.0 / v67, 1.0 - (1.0 / v67));
              v69 = *buf;
              *(v65 + 4) = buf[4];
              *v65 = v69;
              std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v65 + 8), &buf[8]);
              *(v65 + 48) = v116;
              std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v65 + 56), &v117);
              *(v65 + 96) = v118[4];
              std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((v65 + 104), &v119);
              std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v65 + 144), &v121);
              *(v65 + 184) = v122[4];
              *(v65 + 192) = v123;
              std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v121);
              std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v122);
              std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v119, 0);
              std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v120);
              std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v117);
              std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v118);
              std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&buf[8]);
              std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[16]);
              v64 = v110[0];
              v66 = v110[1];
            }

            while (v67 < (v110[1] - v110[0]) >> 2);
          }

          v70 = *(v65 + 104);
          Phase::SpatialModeler::ERClustering::GetTotalEnergySumOverBands(v70);
          v72 = v71;
          if (v70)
          {
            v73 = v70[1] * 0.000000001;
          }

          else
          {
            v73 = 0.0;
          }

          v57 = v87;
          if (v73 >= v72)
          {
            if (v66 == v64)
            {
LABEL_76:
              v56 = v89;
              if (!v64)
              {
                goto LABEL_74;
              }

LABEL_73:
              v110[1] = v64;
              operator delete(v64);
              goto LABEL_74;
            }

            v79 = 0;
            v56 = v89;
            do
            {
              v108 = *(v101 + 5 * v64[v79]);
              *buf = &v108;
              std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a5, v108)[4] = 0;
              ++v79;
              v64 = v110[0];
            }

            while (v79 < (v110[1] - v110[0]) >> 2);
          }

          else
          {
            if (v66 == v64)
            {
              goto LABEL_76;
            }

            v74 = 0;
            v56 = v89;
            do
            {
              v75 = v64[v74];
              Phase::SpatialModeler::ERClustering::GetTotalEnergySumOverBands(*(v106 + 26 * v75 + 13));
              v77 = v76;
              v108 = *(v101 + 5 * v75);
              *buf = &v108;
              v78 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a5, v108);
              v78[4] = fminf(fmaxf(log10f((v77 / v72) + 1.1755e-38) * 10.0, -3.4028e38), v53);
              ++v74;
              v64 = v110[0];
            }

            while (v74 < (v110[1] - v110[0]) >> 2);
          }
        }

        if (v64)
        {
          goto LABEL_73;
        }
      }

LABEL_74:
      if (++v59 == v56)
      {
        goto LABEL_83;
      }
    }
  }

  v80 = **(Phase::Logger::GetInstance(v52) + 1264);
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "EarlyReflectionClustering.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 420;
    *&buf[18] = 2048;
    *&buf[20] = (v93 - v92) >> 3;
    *&buf[28] = 2048;
    *&buf[30] = v58;
    v81 = "%25s:%-5d GenerateClusterMetadataFromResults - number , inClusterIndices.size() [%zu] != numSources [%zu], returning";
LABEL_82:
    _os_log_impl(&dword_23A302000, v80, OS_LOG_TYPE_ERROR, v81, buf, 0x26u);
  }

LABEL_83:
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v112);
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v99);
  if (v97[1])
  {
    *&v98 = v97[1];
    operator delete(v97[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v104);
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  *buf = &v106;
  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_23A3C38D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&a53);
  if (__p)
  {
    operator delete(__p);
  }

  Phase::SpatialModeler::ClusterPreProcessData::~ClusterPreProcessData(&a25);
  Phase::SpatialModeler::SourcePreProcessData::~SourcePreProcessData(&a36);
  a36 = &a44;
  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__destroy_vector::operator()[abi:ne200100](&a36);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A3C3A10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::DirectionalMetadataOutput<float>>>(a2);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::DirectionalMetadataOutput<float>>>(unint64_t a1)
{
  if (a1 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 26;
        std::allocator_traits<std::allocator<Phase::SpatialModeler::DirectionalMetadataOutput<float>>>::destroy[abi:ne200100]<Phase::SpatialModeler::DirectionalMetadataOutput<float>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator_traits<std::allocator<Phase::SpatialModeler::DirectionalMetadataOutput<float>>>::destroy[abi:ne200100]<Phase::SpatialModeler::DirectionalMetadataOutput<float>,void,0>(uint64_t *a1)
{
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 18);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 19));
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 13, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 14));
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 8));
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 1);

  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 2));
}

void *std::vector<Phase::Vector<float,2ul>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<Phase::Vector<float,2ul>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A3C3CB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::Vector<float,2ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection*,Phase::SpatialModeler::AudibleEarlyReflection*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A3C3D68(_Unwind_Exception *exception_object)
{
  *(v1 + 8) = v2;
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>>(a1, a2);
  }

  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>,Phase::SpatialModeler::AudibleEarlyReflection*,Phase::SpatialModeler::AudibleEarlyReflection*,Phase::SpatialModeler::AudibleEarlyReflection*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  while (a2 != a3)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v9;
    *(result + 32) = v7;
    *(result + 48) = v8;
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 128);
    *(result + 144) = *(a2 + 144);
    *(result + 112) = v11;
    *(result + 128) = v12;
    *(result + 96) = v10;
    do
    {
      v13 = (result + v5);
      v13[37] = *(a2 + v5 + 148);
      v13[38] = *(a2 + v5 + 152);
      v13[39] = *(a2 + v5 + 156);
      v13[40] = *(a2 + v5 + 160);
      v13[41] = *(a2 + v5 + 164);
      v13[42] = *(a2 + v5 + 168);
      v5 += 24;
    }

    while (v5 != 72);
    *(result + 220) = *(a2 + 220);
    *(result + 224) = *(a2 + 224);
    *(result + 228) = *(a2 + 228);
    *(result + 232) = *(a2 + 232);
    *(result + 236) = *(a2 + 236);
    *(result + 240) = *(a2 + 240);
    *(result + 244) = *(a2 + 244);
    *(result + 248) = *(a2 + 248);
    *(result + 252) = *(a2 + 252);
    v14 = *(a2 + 256);
    *(result + 264) = *(a2 + 264);
    *(result + 256) = v14;
    *(result + 268) = *(a2 + 268);
    *(result + 272) = *(a2 + 272);
    *(result + 276) = *(a2 + 276);
    *(result + 280) = *(a2 + 280);
    a2 += 288;
    result += 288;
  }

  return result;
}

char *std::vector<Phase::Vector<float,2ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,2ul>*,Phase::Vector<float,2ul>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Phase::Vector<float,2ul>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 1);
      v5 += 8;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v12 = &a2[v11 - result];
    if (v11 != result)
    {
      v13 = result;
      v14 = a2;
      do
      {
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 1);
        v14 += 8;
        v13 += 8;
      }

      while (v14 != v12);
    }

    if (v12 == a3)
    {
      v16 = v11;
    }

    else
    {
      v15 = a2 - result;
      v16 = v11;
      do
      {
        v17 = &v16[v15];
        *v11 = *&v16[v15];
        *(v11 + 1) = *&v16[v15 + 4];
        v11 += 8;
        v16 += 8;
      }

      while (v17 + 8 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(uint64_t a1, char *i, uint64_t a3, unsigned int *a4, uint64_t **a5, uint64_t a6, char a7)
{
LABEL_1:
  v13 = i;
LABEL_2:
  v14 = *a5;
  for (i = v13; ; i = v70)
  {
    v15 = (i - a4) >> 2;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v107 = *a4;
        v108 = *(i - 1);
        if (*(**a5 + 8 * v107 + 4) < *(**a5 + 8 * v108 + 4))
        {
          *(i - 1) = v107;
          *a4 = v108;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v93 = *(i - 2);
      v92 = *(i - 1);
      v94 = **a5;
      v95 = *(i - 3);
      v96 = *(v94 + 8 * v93 + 4);
      v97 = *(v94 + 8 * v92 + 4);
      v98 = v94 + 8 * v95;
      v99 = *(v98 + 4);
      if (v96 >= v97)
      {
        if (v99 >= v96)
        {
          v92 = *(i - 3);
        }

        else
        {
          *(i - 3) = v93;
          *(i - 2) = v95;
          v154 = *(i - 1);
          if (*(v98 + 4) < *(v94 + 8 * v154 + 4))
          {
            *(i - 2) = v154;
            *(i - 1) = v95;
            v92 = *(i - 3);
            goto LABEL_170;
          }

          v92 = v93;
          v95 = v93;
        }
      }

      else
      {
        if (v99 < v96)
        {
          *(i - 1) = v95;
          goto LABEL_169;
        }

        *(i - 2) = v92;
        *(i - 1) = v93;
        v95 = *(i - 3);
        if (*(v94 + 8 * v95 + 4) >= v97)
        {
          v92 = *(i - 3);
        }

        else
        {
          *(i - 2) = v95;
LABEL_169:
          *(i - 3) = v92;
LABEL_170:
          v95 = v92;
        }
      }

      v166 = *a4;
      if (*(v94 + 8 * v166 + 4) >= *(v94 + 8 * v92 + 4))
      {
        return;
      }

      *(i - 3) = v166;
      *a4 = v95;
      v167 = *(i - 3);
      v168 = *(i - 2);
      if (*(v94 + 8 * v167 + 4) >= *(v94 + 8 * v168 + 4))
      {
        return;
      }

      *(i - 3) = v168;
      *(i - 2) = v167;
      v156 = *(i - 1);
      if (*(v94 + 8 * v167 + 4) >= *(v94 + 8 * v156 + 4))
      {
        return;
      }

      *(i - 1) = v167;
LABEL_181:
      *(i - 2) = v156;
      return;
    }

    if (v15 == 5)
    {
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,0>(a1, i, (i - 4), (i - 4), (i - 8), (i - 8), (i - 12), (i - 12), a3, (a4 + 1), **a5);
      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a7)
      {
        if (i != a4)
        {
          v109 = (i - 4);
          if (i - 4 != a4)
          {
            v110 = 0;
            v111 = **a5;
            v112 = (i - 4);
            do
            {
              v114 = *--v112;
              v113 = v114;
              v115 = *v109;
              v116 = *(v111 + 8 * v114 + 4);
              if (v116 < *(v111 + 8 * v115 + 4))
              {
                v117 = v110;
                v118 = i;
                do
                {
                  v119 = v118;
                  *(v118 - 2) = v115;
                  if (!v117)
                  {
                    break;
                  }

                  v118 += 4;
                  v115 = *v119;
                  v117 -= 4;
                }

                while (v116 < *(v111 + 8 * v115 + 4));
                *(v119 - 1) = v113;
              }

              i -= 4;
              v110 += 4;
              v109 = v112;
            }

            while (v112 != a4);
          }
        }
      }

      else if (i != a4)
      {
        v157 = (i - 4);
        if (i - 4 != a4)
        {
          v158 = **a5;
          v159 = (i - 4);
          do
          {
            v160 = v157 + 1;
            v162 = *--v159;
            v161 = v162;
            v163 = *(v158 + 8 * v162 + 4);
            if (v163 < *(v158 + 8 * *v157 + 4))
            {
              do
              {
                *(v157 - 1) = *(v160 - 1);
                v164 = *v160;
                v157 = v160++;
              }

              while (v163 < *(v158 + 8 * v164 + 4));
              *(v160 - 2) = v161;
            }

            v157 = v159;
          }

          while (v159 != a4);
        }
      }

      return;
    }

    if (!a6)
    {
      if (i != a4)
      {
        v120 = (v15 - 2) >> 1;
        v121 = *a5;
        v122 = v120;
        do
        {
          v123 = v122;
          v124 = 4 * v122;
          if (v120 >= v124 >> 2)
          {
            v125 = v124 >> 1;
            v126 = v125 | 1;
            v127 = &i[-4 * (v125 | 1)];
            v128 = v125 + 2;
            v129 = *v121;
            if (v128 < v15 && *(v129 + 8 * *(v127 - 1) + 4) < *(v129 + 8 * *(v127 - 2) + 4))
            {
              --v127;
              v126 = v128;
            }

            v130 = &i[-4 * v123];
            v131 = *(v127 - 1);
            v132 = *(v130 - 1);
            v133 = *(v129 + 8 * v132 + 4);
            if (*(v129 + 8 * v131 + 4) >= v133)
            {
              do
              {
                *(v130 - 1) = v131;
                v130 = v127;
                if (v120 < v126)
                {
                  break;
                }

                v134 = 2 * v126;
                v126 = (2 * v126) | 1;
                v127 = &i[-4 * v126];
                v135 = v134 + 2;
                if (v135 < v15 && *(v129 + 8 * *(v127 - 1) + 4) < *(v129 + 8 * *(v127 - 2) + 4))
                {
                  --v127;
                  v126 = v135;
                }

                v131 = *(v127 - 1);
              }

              while (*(v129 + 8 * v131 + 4) >= v133);
              *(v130 - 1) = v132;
            }
          }

          v122 = v123 - 1;
        }

        while (v123);
        do
        {
          v136 = 0;
          v137 = *(i - 1);
          v138 = *a5;
          v139 = i;
          do
          {
            v140 = v139;
            v139 += ~v136;
            v141 = 2 * v136;
            v136 = (2 * v136) | 1;
            v142 = v141 + 2;
            if (v142 < v15 && *(*v138 + 8 * *(v139 - 1) + 4) < *(*v138 + 8 * *(v139 - 2) + 4))
            {
              --v139;
              v136 = v142;
            }

            *(v140 - 1) = *(v139 - 1);
          }

          while (v136 <= ((v15 - 2) >> 1));
          v143 = v139 - 1;
          if (v139 == a4 + 1)
          {
            *v143 = v137;
          }

          else
          {
            *v143 = *a4;
            *a4 = v137;
            v144 = (i - v143) >> 2;
            v145 = v144 < 2;
            v146 = v144 - 2;
            if (!v145)
            {
              v147 = v146 >> 1;
              v148 = &i[-4 * v147];
              v149 = *(v148 - 1);
              v150 = *v143;
              v151 = *v138;
              v152 = *(v151 + 8 * v150 + 4);
              if (*(v151 + 8 * v149 + 4) < v152)
              {
                do
                {
                  v153 = v148;
                  *(v139 - 1) = v149;
                  if (!v147)
                  {
                    break;
                  }

                  v147 = (v147 - 1) >> 1;
                  v148 = &i[-4 * v147];
                  v149 = *(v148 - 1);
                  v139 = v153;
                }

                while (*(v151 + 8 * v149 + 4) < v152);
                *(v153 - 1) = v150;
              }
            }
          }

          ++a4;
          v145 = v15-- <= 2;
        }

        while (!v145);
      }

      return;
    }

    v16 = ((i - a4) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
    v17 = &i[-v16];
    v18 = &i[-v16];
    v19 = *v14;
    v20 = *a4;
    v21 = *(*v14 + 8 * v20 + 4);
    if (v15 >= 0x81)
    {
      v22 = *(v18 - 1);
      v23 = *(i - 1);
      v24 = *(v19 + 8 * v22 + 4);
      v25 = *(v19 + 8 * v23 + 4);
      if (v24 >= v25)
      {
        if (v21 < v24)
        {
          *(v18 - 1) = v20;
          *a4 = v22;
          v30 = *(v18 - 1);
          v31 = *(i - 1);
          if (*(v19 + 8 * v30 + 4) < *(v19 + 8 * v31 + 4))
          {
            *(i - 1) = v30;
            *(v18 - 1) = v31;
          }
        }
      }

      else
      {
        if (v21 < v24)
        {
          *(i - 1) = v20;
          goto LABEL_27;
        }

        *(i - 1) = v22;
        *(v18 - 1) = v23;
        v34 = *a4;
        if (*(v19 + 8 * v34 + 4) < v25)
        {
          *(v18 - 1) = v34;
LABEL_27:
          *a4 = v23;
        }
      }

      v37 = *v17;
      v35 = v17 + 1;
      v36 = v37;
      v38 = *(i - 2);
      v39 = *(v19 + 8 * v37 + 4);
      v40 = *(v19 + 8 * v38 + 4);
      v41 = a4[1];
      v42 = *(v19 + 8 * v41 + 4);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *(v35 - 1) = v41;
          a4[1] = v36;
          v43 = *(v35 - 1);
          v44 = *(i - 2);
          if (*(v19 + 8 * v43 + 4) < *(v19 + 8 * v44 + 4))
          {
            *(i - 2) = v43;
            *(v35 - 1) = v44;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          *(i - 2) = v41;
          goto LABEL_39;
        }

        *(i - 2) = v36;
        *(v35 - 1) = v38;
        v46 = a4[1];
        if (*(v19 + 8 * v46 + 4) < v40)
        {
          *(v35 - 1) = v46;
LABEL_39:
          a4[1] = v38;
        }
      }

      v47 = &i[-v16 - 4];
      v48 = *(v47 - 1);
      v49 = *(i - 3);
      v50 = *(v19 + 8 * v48 + 4);
      v51 = *(v19 + 8 * v49 + 4);
      v52 = a4[2];
      v53 = *(v19 + 8 * v52 + 4);
      if (v50 >= v51)
      {
        if (v53 < v50)
        {
          *(v47 - 1) = v52;
          a4[2] = v48;
          v54 = *(v47 - 1);
          v55 = *(i - 3);
          if (*(v19 + 8 * v54 + 4) < *(v19 + 8 * v55 + 4))
          {
            *(i - 3) = v54;
            *(v47 - 1) = v55;
          }
        }
      }

      else
      {
        if (v53 < v50)
        {
          *(i - 3) = v52;
          goto LABEL_48;
        }

        *(i - 3) = v48;
        *(v47 - 1) = v49;
        v56 = a4[2];
        if (*(v19 + 8 * v56 + 4) < v51)
        {
          *(v47 - 1) = v56;
LABEL_48:
          a4[2] = v49;
        }
      }

      v57 = *(v18 - 1);
      v58 = *(v35 - 1);
      v59 = *(v19 + 8 * v57 + 4);
      v60 = *(v19 + 8 * v58 + 4);
      v61 = *(v47 - 1);
      v62 = *(v19 + 8 * v61 + 4);
      if (v59 >= v60)
      {
        if (v62 < v59)
        {
          *(v18 - 1) = v61;
          *(v47 - 1) = v57;
          v63 = *(v18 - 1);
          v64 = *(v35 - 1);
          if (*(v19 + 8 * v63 + 4) < *(v19 + 8 * v64 + 4))
          {
            *(v35 - 1) = v63;
            *(v18 - 1) = v64;
          }
        }
      }

      else
      {
        if (v62 < v59)
        {
          *(v35 - 1) = v61;
          goto LABEL_57;
        }

        *(v35 - 1) = v57;
        *(v18 - 1) = v58;
        v65 = *(v47 - 1);
        if (*(v19 + 8 * v65 + 4) < v60)
        {
          *(v18 - 1) = v65;
LABEL_57:
          *(v47 - 1) = v58;
        }
      }

      v66 = *(i - 1);
      *(i - 1) = *(v18 - 1);
      *(v18 - 1) = v66;
      goto LABEL_59;
    }

    v26 = *(i - 1);
    v27 = *(v18 - 1);
    v28 = *(v19 + 8 * v26 + 4);
    v29 = *(v19 + 8 * v27 + 4);
    if (v28 >= v29)
    {
      if (v21 < v28)
      {
        *(i - 1) = v20;
        *a4 = v26;
        v32 = *(i - 1);
        v33 = *(v18 - 1);
        if (*(v19 + 8 * v32 + 4) < *(v19 + 8 * v33 + 4))
        {
          *(v18 - 1) = v32;
          *(i - 1) = v33;
        }
      }
    }

    else
    {
      if (v21 >= v28)
      {
        *(v18 - 1) = v26;
        *(i - 1) = v27;
        v45 = *a4;
        if (*(v19 + 8 * v45 + 4) >= v29)
        {
          goto LABEL_59;
        }

        *(i - 1) = v45;
      }

      else
      {
        *(v18 - 1) = v20;
      }

      *a4 = v27;
    }

LABEL_59:
    --a6;
    if (a7)
    {
      v67 = *(i - 1);
      v68 = *(v19 + 8 * v67 + 4);
LABEL_80:
      v78 = 0;
      v79 = a1;
      do
      {
        v80 = *(v19 + 8 * *&i[v78 - 8] + 4);
        v78 -= 4;
      }

      while (v80 < v68);
      v81 = &i[v78];
      v82 = a4;
      if (v78 == -4)
      {
        v82 = a4;
        do
        {
          if (v81 <= v82)
          {
            break;
          }

          v83 = *v82++;
        }

        while (*(v19 + 8 * v83 + 4) >= v68);
      }

      else
      {
        do
        {
          v84 = *v82++;
        }

        while (*(v19 + 8 * v84 + 4) >= v68);
      }

      if (v81 <= v82)
      {
        v88 = v81 + 1;
      }

      else
      {
        v85 = &i[v78];
        v86 = v82;
        do
        {
          v87 = *(v85 - 1);
          *(v85 - 1) = *(v86 - 1);
          *(v86 - 1) = v87;
          v88 = v85 + 1;
          do
          {
            v89 = *(v85 - 2);
            --v85;
            --v88;
          }

          while (*(v19 + 8 * v89 + 4) < v68);
          do
          {
            v90 = *v86++;
          }

          while (*(v19 + 8 * v90 + 4) >= v68);
        }

        while (v85 > v86);
      }

      if (v88 != i)
      {
        *(i - 1) = *(v88 - 1);
      }

      *(v88 - 1) = v67;
      v13 = v88 - 1;
      if (v81 > v82)
      {
LABEL_101:
        std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(v79, i, v88, v88, a5, a6, a7 & 1);
        a7 = 0;
        a1 = v88;
        goto LABEL_2;
      }

      v169 = a1;
      v170 = a1;
      v91 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, i, v88, v88, *a5);
      if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>((v88 - 1), (v88 - 1), a3, a4, *a5))
      {
        a1 = v88;
        v79 = v170;
        if (v91)
        {
          goto LABEL_2;
        }

        goto LABEL_101;
      }

      a3 = v88;
      a4 = v88;
      a1 = v169;
      if (v91)
      {
        return;
      }

      goto LABEL_1;
    }

    v67 = *(i - 1);
    v68 = *(v19 + 8 * v67 + 4);
    if (*(v19 + 8 * *i + 4) < v68)
    {
      goto LABEL_80;
    }

    if (v68 >= *(v19 + 8 * *a4 + 4))
    {
      v72 = (i - 4);
      do
      {
        v70 = v72;
        if (v72 <= a4)
        {
          break;
        }

        --v72;
      }

      while (v68 >= *(v19 + 8 * *(v70 - 1) + 4));
    }

    else
    {
      v69 = i;
      do
      {
        v70 = (v69 - 4);
        v71 = *(v19 + 8 * *(v69 - 2) + 4);
        v69 -= 4;
      }

      while (v68 >= v71);
    }

    v73 = a4;
    if (v70 > a4)
    {
      v73 = a4;
      do
      {
        v74 = *v73++;
      }

      while (v68 < *(v19 + 8 * v74 + 4));
    }

    while (v70 > v73)
    {
      v75 = *(v70 - 1);
      *(v70 - 1) = *(v73 - 1);
      *(v73 - 1) = v75;
      do
      {
        v76 = *(v70 - 2);
        --v70;
      }

      while (v68 >= *(v19 + 8 * v76 + 4));
      do
      {
        v77 = *v73++;
      }

      while (v68 < *(v19 + 8 * v77 + 4));
    }

    if (v70 + 1 != i)
    {
      *(i - 1) = *v70;
    }

    a7 = 0;
    *v70 = v67;
  }

  v101 = *(i - 2);
  v100 = *(i - 1);
  v102 = **a5;
  v103 = *(v102 + 8 * v101 + 4);
  v104 = *(v102 + 8 * v100 + 4);
  v105 = *a4;
  v106 = *(v102 + 8 * v105 + 4);
  if (v103 >= v104)
  {
    if (v106 >= v103)
    {
      return;
    }

    *(i - 2) = v105;
    *a4 = v101;
    v155 = *(i - 2);
    v156 = *(i - 1);
    if (*(v102 + 8 * v155 + 4) >= *(v102 + 8 * v156 + 4))
    {
      return;
    }

    *(i - 1) = v155;
    goto LABEL_181;
  }

  if (v106 >= v103)
  {
    *(i - 2) = v100;
    *(i - 1) = v101;
    v165 = *a4;
    if (*(v102 + 8 * v165 + 4) >= v104)
    {
      return;
    }

    *(i - 2) = v165;
  }

  else
  {
    *(i - 1) = v105;
  }

  *a4 = v100;
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a4 - 4);
  v12 = *(a2 - 4);
  v13 = *(a11 + 8 * v11 + 4);
  v14 = *(a11 + 8 * v12 + 4);
  v15 = *(a6 - 4);
  v16 = *(a11 + 8 * v15 + 4);
  if (v13 >= v14)
  {
    if (v16 >= v13)
    {
      v12 = *(a6 - 4);
      goto LABEL_14;
    }

    *(a4 - 4) = v15;
    *(a6 - 4) = v11;
    v17 = *(a4 - 4);
    v18 = *(a2 - 4);
    if (*(a11 + 8 * v17 + 4) >= *(a11 + 8 * v18 + 4))
    {
      v12 = v11;
      v15 = v11;
      goto LABEL_14;
    }

    *(a2 - 4) = v17;
    *(a4 - 4) = v18;
    v12 = *(a6 - 4);
  }

  else
  {
    if (v16 >= v13)
    {
      *(a2 - 4) = v11;
      *(a4 - 4) = v12;
      v15 = *(a6 - 4);
      if (*(a11 + 8 * v15 + 4) >= v14)
      {
        v12 = *(a6 - 4);
        goto LABEL_14;
      }

      *(a4 - 4) = v15;
    }

    else
    {
      *(a2 - 4) = v15;
    }

    *(a6 - 4) = v12;
  }

  v15 = v12;
LABEL_14:
  v19 = *(a8 - 4);
  if (*(a11 + 8 * v19 + 4) < *(a11 + 8 * v12 + 4))
  {
    *(a6 - 4) = v19;
    *(a8 - 4) = v15;
    v20 = *(a6 - 4);
    v21 = *(a4 - 4);
    if (*(a11 + 8 * v20 + 4) < *(a11 + 8 * v21 + 4))
    {
      *(a4 - 4) = v20;
      *(a6 - 4) = v21;
      v22 = *(a4 - 4);
      v23 = *(a2 - 4);
      if (*(a11 + 8 * v22 + 4) < *(a11 + 8 * v23 + 4))
      {
        *(a2 - 4) = v22;
        *(a4 - 4) = v23;
      }
    }
  }

  v24 = *(a10 - 4);
  v25 = *(a8 - 4);
  if (*(a11 + 8 * v24 + 4) < *(a11 + 8 * v25 + 4))
  {
    *(a8 - 4) = v24;
    *(a10 - 4) = v25;
    v26 = *(a8 - 4);
    v27 = *(a6 - 4);
    if (*(a11 + 8 * v26 + 4) < *(a11 + 8 * v27 + 4))
    {
      *(a6 - 4) = v26;
      *(a8 - 4) = v27;
      v28 = *(a6 - 4);
      v29 = *(a4 - 4);
      if (*(a11 + 8 * v28 + 4) < *(a11 + 8 * v29 + 4))
      {
        *(a4 - 4) = v28;
        *(a6 - 4) = v29;
        v30 = *(a4 - 4);
        v31 = *(a2 - 4);
        if (*(a11 + 8 * v30 + 4) < *(a11 + 8 * v31 + 4))
        {
          *(a2 - 4) = v30;
          *(a4 - 4) = v31;
        }
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t *a5)
{
  v5 = (a2 - a4) >> 2;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v8 = *(a2 - 8);
      v7 = *(a2 - 4);
      v9 = *a5;
      v10 = *(*a5 + 8 * v8 + 4);
      v11 = *(*a5 + 8 * v7 + 4);
      v12 = *a4;
      v13 = *(*a5 + 8 * v12 + 4);
      if (v10 < v11)
      {
        if (v13 < v10)
        {
          *(a2 - 4) = v12;
          goto LABEL_29;
        }

        *(a2 - 8) = v7;
        *(a2 - 4) = v8;
        v34 = *a4;
        if (*(v9 + 8 * v34 + 4) < v11)
        {
          *(a2 - 8) = v34;
          goto LABEL_29;
        }

LABEL_56:
        v45 = 1;
        return v45 & 1;
      }

      if (v13 >= v10)
      {
        goto LABEL_56;
      }

      *(a2 - 8) = v12;
      *a4 = v8;
      v29 = *(a2 - 8);
      v30 = *(a2 - 4);
      v31 = v9 + 8 * v29;
LABEL_54:
      if (*(v31 + 4) < *(v9 + 8 * v30 + 4))
      {
        *(a2 - 8) = v30;
        *(a2 - 4) = v29;
      }

      goto LABEL_56;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters(std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource> const&,Phase::Handle64,unsigned int,Phase::SpatialModeler::RayTracerState const&,double,unsigned long,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,0>(a1, a2, a2 - 4, a2 - 4, a2 - 8, a2 - 8, a2 - 12, a2 - 12, a3, (a4 + 1), *a5);
        goto LABEL_56;
      }

      goto LABEL_13;
    }

    v23 = *(a2 - 8);
    v22 = *(a2 - 4);
    v9 = *a5;
    v24 = *(a2 - 12);
    v25 = *(*a5 + 8 * v23 + 4);
    v26 = *(*a5 + 8 * v22 + 4);
    v27 = *a5 + 8 * v24;
    v28 = *(v27 + 4);
    if (v25 >= v26)
    {
      if (v28 >= v25)
      {
        v22 = *(a2 - 12);
      }

      else
      {
        *(a2 - 12) = v23;
        *(a2 - 8) = v24;
        v33 = *(a2 - 4);
        if (*(v27 + 4) < *(v9 + 8 * v33 + 4))
        {
          *(a2 - 8) = v33;
          *(a2 - 4) = v24;
          v22 = *(a2 - 12);
LABEL_46:
          v24 = v22;
          goto LABEL_51;
        }

        v22 = v23;
        v24 = v23;
      }
    }

    else
    {
      if (v28 < v25)
      {
        *(a2 - 4) = v24;
LABEL_45:
        *(a2 - 12) = v22;
        goto LABEL_46;
      }

      *(a2 - 8) = v22;
      *(a2 - 4) = v23;
      v24 = *(a2 - 12);
      if (*(v9 + 8 * v24 + 4) < v26)
      {
        *(a2 - 8) = v24;
        goto LABEL_45;
      }

      v22 = *(a2 - 12);
    }

LABEL_51:
    v46 = *a4;
    if (*(v9 + 8 * v46 + 4) >= *(v9 + 8 * v22 + 4))
    {
      goto LABEL_56;
    }

    *(a2 - 12) = v46;
    *a4 = v24;
    v29 = *(a2 - 12);
    v47 = *(a2 - 8);
    if (*(v9 + 8 * v29 + 4) >= *(v9 + 8 * v47 + 4))
    {
      goto LABEL_56;
    }

    *(a2 - 12) = v47;
    *(a2 - 8) = v29;
    v30 = *(a2 - 4);
    v31 = v9 + 8 * v29;
    goto LABEL_54;
  }

  if (v5 < 2)
  {
    goto LABEL_56;
  }

  if (v5 == 2)
  {
    v6 = *a4;
    v7 = *(a2 - 4);
    if (*(*a5 + 8 * v6 + 4) < *(*a5 + 8 * v7 + 4))
    {
      *(a2 - 4) = v6;
LABEL_29:
      *a4 = v7;
      goto LABEL_56;
    }

    goto LABEL_56;
  }

LABEL_13:
  v16 = *(a2 - 8);
  v15 = *(a2 - 4);
  v14 = a2 - 8;
  v17 = *a5;
  v18 = *(*a5 + 8 * v16 + 4);
  v19 = *(*a5 + 8 * v15 + 4);
  v20 = *(a2 - 12);
  v21 = *(*a5 + 8 * v20 + 4);
  if (v18 >= v19)
  {
    if (v21 < v18)
    {
      *(a2 - 12) = v16;
      *(a2 - 8) = v20;
      v32 = *(a2 - 4);
      if (*(v17 + 8 * v20 + 4) < *(v17 + 8 * v32 + 4))
      {
        *(a2 - 8) = v32;
        *(a2 - 4) = v20;
      }
    }

    goto LABEL_33;
  }

  if (v21 < v18)
  {
    *(a2 - 4) = v20;
LABEL_32:
    *(a2 - 12) = v15;
    goto LABEL_33;
  }

  *(a2 - 8) = v15;
  *(a2 - 4) = v16;
  v35 = *(a2 - 12);
  if (*(v17 + 8 * v35 + 4) < v19)
  {
    *(a2 - 8) = v35;
    goto LABEL_32;
  }

LABEL_33:
  v36 = a2 - 12;
  if ((a2 - 12) == a4)
  {
LABEL_41:
    v44 = 1;
  }

  else
  {
    v37 = 0;
    v38 = (a2 - 12);
    while (1)
    {
      v40 = *--v38;
      v39 = v40;
      v41 = *(v17 + 8 * v40 + 4);
      if (v41 < *(v17 + 8 * *(v14 - 4) + 4))
      {
        v42 = v36;
        do
        {
          v43 = v14;
          *(v42 - 1) = *(v14 - 4);
          if (v14 == a2)
          {
            break;
          }

          v14 += 4;
          v42 = v43;
        }

        while (v41 < *(v17 + 8 * *v43 + 4));
        *(v43 - 1) = v39;
        if (++v37 == 8)
        {
          break;
        }
      }

      v14 = v36;
      v36 = v38;
      if (v38 == a4)
      {
        goto LABEL_41;
      }
    }

    v44 = 0;
    LOBYTE(v14) = v38 == a4;
  }

  v45 = v44 | v14;
  return v45 & 1;
}

void std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(uint64_t a1, char *i, uint64_t a3, unsigned int *a4, uint64_t **a5, uint64_t a6, char a7)
{
LABEL_1:
  v13 = i;
LABEL_2:
  v14 = *a5;
  for (i = v13; ; i = v68)
  {
    v15 = (i - a4) >> 2;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        v96 = *(i - 1);
        if (*(**a5 + 40 * *a4 + 24) < *(**a5 + 40 * v96 + 24))
        {
          *(i - 1) = *a4;
          goto LABEL_174;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v90 = *(i - 2);
      v89 = *(i - 1);
      v91 = **a5;
      v92 = *(i - 3);
      v93 = *(v91 + 40 * v90 + 24);
      v94 = *(v91 + 40 * v89 + 24);
      v95 = *(v91 + 40 * v92 + 24);
      if (v93 >= v94)
      {
        if (v95 >= v93)
        {
          v89 = *(i - 3);
        }

        else
        {
          *(i - 3) = v90;
          *(i - 2) = v92;
          v148 = *(i - 1);
          if (*(v91 + 40 * v92 + 24) < *(v91 + 40 * v148 + 24))
          {
            *(i - 2) = v148;
            *(i - 1) = v92;
            v89 = *(i - 3);
            goto LABEL_170;
          }

          v89 = v90;
          v92 = v90;
        }
      }

      else
      {
        if (v95 < v93)
        {
          *(i - 1) = v92;
          goto LABEL_169;
        }

        *(i - 2) = v89;
        *(i - 1) = v90;
        v92 = *(i - 3);
        if (*(v91 + 40 * v92 + 24) >= v94)
        {
          v89 = *(i - 3);
        }

        else
        {
          *(i - 2) = v92;
LABEL_169:
          *(i - 3) = v89;
LABEL_170:
          v92 = v89;
        }
      }

      if (*(v91 + 40 * *a4 + 24) < *(v91 + 40 * v89 + 24))
      {
        *(i - 3) = *a4;
        *a4 = v92;
        v159 = *(i - 3);
        v160 = *(i - 2);
        if (*(v91 + 40 * v159 + 24) < *(v91 + 40 * v160 + 24))
        {
          *(i - 3) = v160;
          *(i - 2) = v159;
          v161 = *(i - 1);
          if (*(v91 + 40 * v159 + 24) < *(v91 + 40 * v161 + 24))
          {
            *(i - 2) = v161;
            *(i - 1) = v159;
          }
        }
      }

      return;
    }

    if (v15 == 5)
    {
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,0>(a1, i, (i - 4), (i - 4), (i - 8), (i - 8), (i - 12), (i - 12), a3, (a4 + 1), **a5);
      return;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a7)
      {
        if (i != a4)
        {
          v103 = (i - 4);
          if (i - 4 != a4)
          {
            v104 = 0;
            v105 = **a5;
            v106 = (i - 4);
            do
            {
              v108 = *--v106;
              v107 = v108;
              v109 = *v103;
              v110 = *(v105 + 40 * v108 + 24);
              if (v110 < *(v105 + 40 * v109 + 24))
              {
                v111 = v104;
                v112 = i;
                do
                {
                  v113 = v112;
                  *(v112 - 2) = v109;
                  if (!v111)
                  {
                    break;
                  }

                  v112 += 4;
                  v109 = *v113;
                  v111 -= 4;
                }

                while (v110 < *(v105 + 40 * *v113 + 24));
                *(v113 - 1) = v107;
              }

              i -= 4;
              v104 += 4;
              v103 = v106;
            }

            while (v106 != a4);
          }
        }
      }

      else if (i != a4)
      {
        v151 = (i - 4);
        if (i - 4 != a4)
        {
          v152 = **a5;
          v153 = (i - 4);
          do
          {
            v154 = v151 + 1;
            v156 = *--v153;
            v155 = v156;
            v157 = *(v152 + 40 * v156 + 24);
            if (v157 < *(v152 + 40 * *v151 + 24))
            {
              do
              {
                *(v151 - 1) = *(v154 - 1);
                v158 = *v154;
                v151 = v154++;
              }

              while (v157 < *(v152 + 40 * v158 + 24));
              *(v154 - 2) = v155;
            }

            v151 = v153;
          }

          while (v153 != a4);
        }
      }

      return;
    }

    if (!a6)
    {
      if (i != a4)
      {
        v114 = (v15 - 2) >> 1;
        v115 = *a5;
        v116 = v114;
        do
        {
          v117 = v116;
          v118 = 4 * v116;
          if (v114 >= v118 >> 2)
          {
            v119 = v118 >> 1;
            v120 = v119 | 1;
            v121 = &i[-4 * (v119 | 1)];
            v122 = v119 + 2;
            v123 = *v115;
            if (v122 < v15 && *(v123 + 40 * *(v121 - 1) + 24) < *(v123 + 40 * *(v121 - 2) + 24))
            {
              --v121;
              v120 = v122;
            }

            v124 = &i[-4 * v117];
            v125 = *(v121 - 1);
            v126 = *(v124 - 1);
            v127 = *(v123 + 40 * v126 + 24);
            if (*(v123 + 40 * v125 + 24) >= v127)
            {
              do
              {
                *(v124 - 1) = v125;
                v124 = v121;
                if (v114 < v120)
                {
                  break;
                }

                v128 = 2 * v120;
                v120 = (2 * v120) | 1;
                v121 = &i[-4 * v120];
                v129 = v128 + 2;
                if (v129 < v15 && *(v123 + 40 * *(v121 - 1) + 24) < *(v123 + 40 * *(v121 - 2) + 24))
                {
                  --v121;
                  v120 = v129;
                }

                v125 = *(v121 - 1);
              }

              while (*(v123 + 40 * v125 + 24) >= v127);
              *(v124 - 1) = v126;
            }
          }

          v116 = v117 - 1;
        }

        while (v117);
        do
        {
          v130 = 0;
          v131 = *(i - 1);
          v132 = *a5;
          v133 = i;
          do
          {
            v134 = v133;
            v133 += ~v130;
            v135 = 2 * v130;
            v130 = (2 * v130) | 1;
            v136 = v135 + 2;
            if (v136 < v15 && *(*v132 + 40 * *(v133 - 1) + 24) < *(*v132 + 40 * *(v133 - 2) + 24))
            {
              --v133;
              v130 = v136;
            }

            *(v134 - 1) = *(v133 - 1);
          }

          while (v130 <= ((v15 - 2) >> 1));
          v137 = v133 - 1;
          if (v133 == a4 + 1)
          {
            *v137 = v131;
          }

          else
          {
            *v137 = *a4;
            *a4 = v131;
            v138 = (i - v137) >> 2;
            v139 = v138 < 2;
            v140 = v138 - 2;
            if (!v139)
            {
              v141 = v140 >> 1;
              v142 = &i[-4 * v141];
              v143 = *(v142 - 1);
              v144 = *v137;
              v145 = *v132;
              v146 = *(v145 + 40 * v144 + 24);
              if (*(v145 + 40 * v143 + 24) < v146)
              {
                do
                {
                  v147 = v142;
                  *(v133 - 1) = v143;
                  if (!v141)
                  {
                    break;
                  }

                  v141 = (v141 - 1) >> 1;
                  v142 = &i[-4 * v141];
                  v143 = *(v142 - 1);
                  v133 = v147;
                }

                while (*(v145 + 40 * v143 + 24) < v146);
                *(v147 - 1) = v144;
              }
            }
          }

          ++a4;
          v139 = v15-- <= 2;
        }

        while (!v139);
      }

      return;
    }

    v16 = ((i - a4) >> 1) & 0x7FFFFFFFFFFFFFFCLL;
    v17 = &i[-v16];
    v18 = &i[-v16];
    v19 = *v14;
    v20 = *a4;
    v21 = *(*v14 + 40 * *a4 + 24);
    if (v15 >= 0x81)
    {
      v22 = *(v18 - 1);
      v23 = *(i - 1);
      v24 = *(v19 + 40 * v22 + 24);
      v25 = *(v19 + 40 * v23 + 24);
      if (v24 >= v25)
      {
        if (v21 < v24)
        {
          *(v18 - 1) = v20;
          *a4 = v22;
          v30 = *(v18 - 1);
          v31 = *(i - 1);
          if (*(v19 + 40 * v30 + 24) < *(v19 + 40 * v31 + 24))
          {
            *(i - 1) = v30;
            *(v18 - 1) = v31;
          }
        }
      }

      else
      {
        if (v21 < v24)
        {
          *(i - 1) = v20;
          goto LABEL_27;
        }

        *(i - 1) = v22;
        *(v18 - 1) = v23;
        if (*(v19 + 40 * *a4 + 24) < v25)
        {
          *(v18 - 1) = *a4;
LABEL_27:
          *a4 = v23;
        }
      }

      v36 = *v17;
      v34 = v17 + 1;
      v35 = v36;
      v37 = *(i - 2);
      v38 = *(v19 + 40 * v36 + 24);
      v39 = *(v19 + 40 * v37 + 24);
      v40 = a4[1];
      v41 = *(v19 + 40 * v40 + 24);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *(v34 - 1) = v40;
          a4[1] = v35;
          v42 = *(v34 - 1);
          v43 = *(i - 2);
          if (*(v19 + 40 * v42 + 24) < *(v19 + 40 * v43 + 24))
          {
            *(i - 2) = v42;
            *(v34 - 1) = v43;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          *(i - 2) = v40;
          goto LABEL_39;
        }

        *(i - 2) = v35;
        *(v34 - 1) = v37;
        v44 = a4[1];
        if (*(v19 + 40 * v44 + 24) < v39)
        {
          *(v34 - 1) = v44;
LABEL_39:
          a4[1] = v37;
        }
      }

      v45 = &i[-v16 - 4];
      v46 = *(v45 - 1);
      v47 = *(i - 3);
      v48 = *(v19 + 40 * v46 + 24);
      v49 = *(v19 + 40 * v47 + 24);
      v50 = a4[2];
      v51 = *(v19 + 40 * v50 + 24);
      if (v48 >= v49)
      {
        if (v51 < v48)
        {
          *(v45 - 1) = v50;
          a4[2] = v46;
          v52 = *(v45 - 1);
          v53 = *(i - 3);
          if (*(v19 + 40 * v52 + 24) < *(v19 + 40 * v53 + 24))
          {
            *(i - 3) = v52;
            *(v45 - 1) = v53;
          }
        }
      }

      else
      {
        if (v51 < v48)
        {
          *(i - 3) = v50;
          goto LABEL_48;
        }

        *(i - 3) = v46;
        *(v45 - 1) = v47;
        v54 = a4[2];
        if (*(v19 + 40 * v54 + 24) < v49)
        {
          *(v45 - 1) = v54;
LABEL_48:
          a4[2] = v47;
        }
      }

      v55 = *(v18 - 1);
      v56 = *(v34 - 1);
      v57 = *(v19 + 40 * v55 + 24);
      v58 = *(v19 + 40 * v56 + 24);
      v59 = *(v45 - 1);
      v60 = *(v19 + 40 * v59 + 24);
      if (v57 >= v58)
      {
        if (v60 < v57)
        {
          *(v18 - 1) = v59;
          *(v45 - 1) = v55;
          v61 = *(v18 - 1);
          v62 = *(v34 - 1);
          if (*(v19 + 40 * v61 + 24) < *(v19 + 40 * v62 + 24))
          {
            *(v34 - 1) = v61;
            *(v18 - 1) = v62;
          }
        }
      }

      else
      {
        if (v60 < v57)
        {
          *(v34 - 1) = v59;
          goto LABEL_57;
        }

        *(v34 - 1) = v55;
        *(v18 - 1) = v56;
        v63 = *(v45 - 1);
        if (*(v19 + 40 * v63 + 24) < v58)
        {
          *(v18 - 1) = v63;
LABEL_57:
          *(v45 - 1) = v56;
        }
      }

      v64 = *(i - 1);
      *(i - 1) = *(v18 - 1);
      *(v18 - 1) = v64;
      goto LABEL_59;
    }

    v26 = *(i - 1);
    v27 = *(v18 - 1);
    v28 = *(v19 + 40 * v26 + 24);
    v29 = *(v19 + 40 * v27 + 24);
    if (v28 >= v29)
    {
      if (v21 < v28)
      {
        *(i - 1) = v20;
        *a4 = v26;
        v32 = *(i - 1);
        v33 = *(v18 - 1);
        if (*(v19 + 40 * v32 + 24) < *(v19 + 40 * v33 + 24))
        {
          *(v18 - 1) = v32;
          *(i - 1) = v33;
        }
      }
    }

    else
    {
      if (v21 >= v28)
      {
        *(v18 - 1) = v26;
        *(i - 1) = v27;
        if (*(v19 + 40 * *a4 + 24) >= v29)
        {
          goto LABEL_59;
        }

        *(i - 1) = *a4;
      }

      else
      {
        *(v18 - 1) = v20;
      }

      *a4 = v27;
    }

LABEL_59:
    --a6;
    if (a7)
    {
      v65 = *(i - 1);
      v66 = *(v19 + 40 * v65 + 24);
LABEL_80:
      v76 = 0;
      v77 = a1;
      do
      {
        v78 = *(v19 + 40 * *&i[v76 - 8] + 24);
        v76 -= 4;
      }

      while (v78 < v66);
      v79 = &i[v76];
      v80 = a4;
      if (v76 == -4)
      {
        v80 = a4;
        do
        {
          if (v79 <= v80)
          {
            break;
          }

          v81 = *v80++;
        }

        while (*(v19 + 40 * v81 + 24) >= v66);
      }

      else
      {
        do
        {
          v82 = *v80++;
        }

        while (*(v19 + 40 * v82 + 24) >= v66);
      }

      if (v79 <= v80)
      {
        v86 = v79 + 1;
      }

      else
      {
        v83 = &i[v76];
        v84 = v80;
        do
        {
          v85 = *(v83 - 1);
          *(v83 - 1) = *(v84 - 1);
          *(v84 - 1) = v85;
          v86 = v83 + 1;
          do
          {
            v87 = *(v83 - 2);
            --v83;
            --v86;
          }

          while (*(v19 + 40 * v87 + 24) < v66);
          do
          {
            v88 = *v84++;
          }

          while (*(v19 + 40 * v88 + 24) >= v66);
        }

        while (v83 > v84);
      }

      if (v86 != i)
      {
        *(i - 1) = *(v86 - 1);
      }

      *(v86 - 1) = v65;
      v13 = v86 - 1;
      if (v79 > v80)
      {
LABEL_101:
        std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,false>(v77, i, v86, v86, a5, a6, a7 & 1);
        a7 = 0;
        a1 = v86;
        goto LABEL_2;
      }

      v162 = a1;
      v163 = a1;
      v164 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(a1, i, v86, v86, *a5);
      if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>((v86 - 1), (v86 - 1), a3, a4, *a5))
      {
        a1 = v86;
        v77 = v163;
        if (v164)
        {
          goto LABEL_2;
        }

        goto LABEL_101;
      }

      a3 = v86;
      a4 = v86;
      a1 = v162;
      if (v164)
      {
        return;
      }

      goto LABEL_1;
    }

    v65 = *(i - 1);
    v66 = *(v19 + 40 * v65 + 24);
    if (*(v19 + 40 * *i + 24) < v66)
    {
      goto LABEL_80;
    }

    if (v66 >= *(v19 + 40 * *a4 + 24))
    {
      v70 = (i - 4);
      do
      {
        v68 = v70;
        if (v70 <= a4)
        {
          break;
        }

        --v70;
      }

      while (v66 >= *(v19 + 40 * *(v68 - 1) + 24));
    }

    else
    {
      v67 = i;
      do
      {
        v68 = (v67 - 4);
        v69 = *(v19 + 40 * *(v67 - 2) + 24);
        v67 -= 4;
      }

      while (v66 >= v69);
    }

    v71 = a4;
    if (v68 > a4)
    {
      v71 = a4;
      do
      {
        v72 = *v71++;
      }

      while (v66 < *(v19 + 40 * v72 + 24));
    }

    while (v68 > v71)
    {
      v73 = *(v68 - 1);
      *(v68 - 1) = *(v71 - 1);
      *(v71 - 1) = v73;
      do
      {
        v74 = *(v68 - 2);
        --v68;
      }

      while (v66 >= *(v19 + 40 * v74 + 24));
      do
      {
        v75 = *v71++;
      }

      while (v66 < *(v19 + 40 * v75 + 24));
    }

    if (v68 + 1 != i)
    {
      *(i - 1) = *v68;
    }

    a7 = 0;
    *v68 = v65;
  }

  v97 = *(i - 2);
  v96 = *(i - 1);
  v98 = **a5;
  v99 = *(v98 + 40 * v97 + 24);
  v100 = *(v98 + 40 * v96 + 24);
  v101 = *a4;
  v102 = *(v98 + 40 * *a4 + 24);
  if (v99 >= v100)
  {
    if (v102 < v99)
    {
      *(i - 2) = v101;
      *a4 = v97;
      v149 = *(i - 2);
      v150 = *(i - 1);
      if (*(v98 + 40 * v149 + 24) < *(v98 + 40 * v150 + 24))
      {
        *(i - 2) = v150;
        *(i - 1) = v149;
      }
    }
  }

  else
  {
    if (v102 < v99)
    {
      *(i - 1) = v101;
      goto LABEL_174;
    }

    *(i - 2) = v96;
    *(i - 1) = v97;
    if (*(v98 + 40 * *a4 + 24) < v100)
    {
      *(i - 2) = *a4;
LABEL_174:
      *a4 = v96;
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a4 - 4);
  v12 = *(a2 - 4);
  v13 = *(a11 + 40 * v11 + 24);
  v14 = *(a11 + 40 * v12 + 24);
  v15 = *(a6 - 4);
  v16 = *(a11 + 40 * v15 + 24);
  if (v13 >= v14)
  {
    if (v16 >= v13)
    {
      v12 = *(a6 - 4);
      goto LABEL_14;
    }

    *(a4 - 4) = v15;
    *(a6 - 4) = v11;
    v17 = *(a4 - 4);
    v18 = *(a2 - 4);
    if (*(a11 + 40 * v17 + 24) >= *(a11 + 40 * v18 + 24))
    {
      v12 = v11;
      v15 = v11;
      goto LABEL_14;
    }

    *(a2 - 4) = v17;
    *(a4 - 4) = v18;
    v12 = *(a6 - 4);
  }

  else
  {
    if (v16 >= v13)
    {
      *(a2 - 4) = v11;
      *(a4 - 4) = v12;
      v15 = *(a6 - 4);
      if (*(a11 + 40 * v15 + 24) >= v14)
      {
        v12 = *(a6 - 4);
        goto LABEL_14;
      }

      *(a4 - 4) = v15;
    }

    else
    {
      *(a2 - 4) = v15;
    }

    *(a6 - 4) = v12;
  }

  v15 = v12;
LABEL_14:
  v19 = *(a8 - 4);
  if (*(a11 + 40 * v19 + 24) < *(a11 + 40 * v12 + 24))
  {
    *(a6 - 4) = v19;
    *(a8 - 4) = v15;
    v20 = *(a6 - 4);
    v21 = *(a4 - 4);
    if (*(a11 + 40 * v20 + 24) < *(a11 + 40 * v21 + 24))
    {
      *(a4 - 4) = v20;
      *(a6 - 4) = v21;
      v22 = *(a4 - 4);
      v23 = *(a2 - 4);
      if (*(a11 + 40 * v22 + 24) < *(a11 + 40 * v23 + 24))
      {
        *(a2 - 4) = v22;
        *(a4 - 4) = v23;
      }
    }
  }

  v24 = *(a10 - 4);
  v25 = *(a8 - 4);
  if (*(a11 + 40 * v24 + 24) < *(a11 + 40 * v25 + 24))
  {
    *(a8 - 4) = v24;
    *(a10 - 4) = v25;
    v26 = *(a8 - 4);
    v27 = *(a6 - 4);
    if (*(a11 + 40 * v26 + 24) < *(a11 + 40 * v27 + 24))
    {
      *(a6 - 4) = v26;
      *(a8 - 4) = v27;
      v28 = *(a6 - 4);
      v29 = *(a4 - 4);
      if (*(a11 + 40 * v28 + 24) < *(a11 + 40 * v29 + 24))
      {
        *(a4 - 4) = v28;
        *(a6 - 4) = v29;
        v30 = *(a4 - 4);
        v31 = *(a2 - 4);
        if (*(a11 + 40 * v30 + 24) < *(a11 + 40 * v31 + 24))
        {
          *(a2 - 4) = v30;
          *(a4 - 4) = v31;
        }
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t *a5)
{
  v5 = (a2 - a4) >> 2;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v7 = *(a2 - 8);
      v6 = *(a2 - 4);
      v8 = *a5;
      v9 = *(*a5 + 40 * v7 + 24);
      v10 = *(*a5 + 40 * v6 + 24);
      v11 = *a4;
      v12 = *(*a5 + 40 * *a4 + 24);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          *(a2 - 8) = v11;
          *a4 = v7;
          v28 = *(a2 - 8);
          v29 = *(a2 - 4);
          if (*(v8 + 40 * v28 + 24) < *(v8 + 40 * v29 + 24))
          {
            *(a2 - 8) = v29;
            *(a2 - 4) = v28;
          }
        }

        goto LABEL_56;
      }

      if (v12 < v9)
      {
        *(a2 - 4) = v11;
        goto LABEL_30;
      }

      *(a2 - 8) = v6;
      *(a2 - 4) = v7;
      if (*(v8 + 40 * *a4 + 24) < v10)
      {
        *(a2 - 8) = *a4;
        goto LABEL_30;
      }

LABEL_56:
      v42 = 1;
      return v42 & 1;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::ERClustering::GenerateClusterMetadataFromResults(unsigned long,Phase::SpatialModeler::SourcePreProcessData const&,std::vector<unsigned long long> const&,float,std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>> &,Phase::SpatialModeler::ClusteringResult &)::$_0 &,std::reverse_iterator<std::__wrap_iter<unsigned int *>>,0>(a1, a2, a2 - 4, a2 - 4, a2 - 8, a2 - 8, a2 - 12, a2 - 12, a3, (a4 + 1), *a5);
        goto LABEL_56;
      }

      goto LABEL_13;
    }

    v22 = *(a2 - 8);
    v21 = *(a2 - 4);
    v23 = *a5;
    v24 = *(a2 - 12);
    v25 = *(*a5 + 40 * v22 + 24);
    v26 = *(*a5 + 40 * v21 + 24);
    v27 = *(*a5 + 40 * v24 + 24);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
        v21 = *(a2 - 12);
        goto LABEL_52;
      }

      *(a2 - 12) = v22;
      *(a2 - 8) = v24;
      v31 = *(a2 - 4);
      if (*(v23 + 40 * v24 + 24) >= *(v23 + 40 * v31 + 24))
      {
        v21 = v22;
        v24 = v22;
        goto LABEL_52;
      }

      *(a2 - 8) = v31;
      *(a2 - 4) = v24;
      v21 = *(a2 - 12);
    }

    else
    {
      if (v27 >= v25)
      {
        *(a2 - 8) = v21;
        *(a2 - 4) = v22;
        v24 = *(a2 - 12);
        if (*(v23 + 40 * v24 + 24) >= v26)
        {
          v21 = *(a2 - 12);
          goto LABEL_52;
        }

        *(a2 - 8) = v24;
      }

      else
      {
        *(a2 - 4) = v24;
      }

      *(a2 - 12) = v21;
    }

    v24 = v21;
LABEL_52:
    if (*(v23 + 40 * *a4 + 24) < *(v23 + 40 * v21 + 24))
    {
      *(a2 - 12) = *a4;
      *a4 = v24;
      v43 = *(a2 - 12);
      v44 = *(a2 - 8);
      if (*(v23 + 40 * v43 + 24) < *(v23 + 40 * v44 + 24))
      {
        *(a2 - 12) = v44;
        *(a2 - 8) = v43;
        v45 = *(a2 - 4);
        if (*(v23 + 40 * v43 + 24) < *(v23 + 40 * v45 + 24))
        {
          *(a2 - 8) = v45;
          *(a2 - 4) = v43;
        }
      }
    }

    goto LABEL_56;
  }

  if (v5 < 2)
  {
    goto LABEL_56;
  }

  if (v5 == 2)
  {
    v6 = *(a2 - 4);
    if (*(*a5 + 40 * *a4 + 24) < *(*a5 + 40 * v6 + 24))
    {
      *(a2 - 4) = *a4;
LABEL_30:
      *a4 = v6;
      goto LABEL_56;
    }

    goto LABEL_56;
  }

LABEL_13:
  v15 = *(a2 - 8);
  v14 = *(a2 - 4);
  v13 = a2 - 8;
  v16 = *a5;
  v17 = *(*a5 + 40 * v15 + 24);
  v18 = *(*a5 + 40 * v14 + 24);
  v19 = *(a2 - 12);
  v20 = *(*a5 + 40 * v19 + 24);
  if (v17 >= v18)
  {
    if (v20 < v17)
    {
      *(a2 - 12) = v15;
      *(a2 - 8) = v19;
      v30 = *(a2 - 4);
      if (*(v16 + 40 * v19 + 24) < *(v16 + 40 * v30 + 24))
      {
        *(a2 - 8) = v30;
        *(a2 - 4) = v19;
      }
    }

    goto LABEL_34;
  }

  if (v20 < v17)
  {
    *(a2 - 4) = v19;
LABEL_33:
    *(a2 - 12) = v14;
    goto LABEL_34;
  }

  *(a2 - 8) = v14;
  *(a2 - 4) = v15;
  v32 = *(a2 - 12);
  if (*(v16 + 40 * v32 + 24) < v18)
  {
    *(a2 - 8) = v32;
    goto LABEL_33;
  }

LABEL_34:
  v33 = a2 - 12;
  if ((a2 - 12) == a4)
  {
LABEL_42:
    v41 = 1;
  }

  else
  {
    v34 = 0;
    v35 = (a2 - 12);
    while (1)
    {
      v37 = *--v35;
      v36 = v37;
      v38 = *(v16 + 40 * v37 + 24);
      if (v38 < *(v16 + 40 * *(v13 - 4) + 24))
      {
        v39 = v33;
        do
        {
          v40 = v13;
          *(v39 - 1) = *(v13 - 4);
          if (v13 == a2)
          {
            break;
          }

          v13 += 4;
          v39 = v40;
        }

        while (v38 < *(v16 + 40 * *v40 + 24));
        *(v40 - 1) = v36;
        if (++v34 == 8)
        {
          break;
        }
      }

      v13 = v33;
      v33 = v35;
      if (v35 == a4)
      {
        goto LABEL_42;
      }
    }

    v41 = 0;
    LOBYTE(v13) = v35 == a4;
  }

  v42 = v41 | v13;
  return v42 & 1;
}

void Phase::SpatialModeler::ClusterPreProcessData::~ClusterPreProcessData(Phase::SpatialModeler::ClusterPreProcessData *this)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 48);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void Phase::SpatialModeler::SourcePreProcessData::~SourcePreProcessData(Phase::SpatialModeler::SourcePreProcessData *this)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 24);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Vector<float,2ul>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::unordered_map<unsigned long long,Phase::Vector<float,2ul>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (*&v6 <= v5)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (v10[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void Phase::SpatialModeler::kmeans<2ul>::AssignClusterIndices(std::vector<unsigned int> *a1, uint64_t *a2, uint64_t *a3)
{
  std::vector<unsigned int>::resize(a1, (a2[1] - *a2) >> 3);
  v6 = *a2;
  v7 = a2[1];
  v8 = v7 - *a2;
  if (v7 != *a2)
  {
    v9 = 0;
    v10 = *a3;
    v11 = a3[1] - *a3;
    v12 = v11 & 0x7FFFFFFF8;
    begin = a1->__begin_;
    v14 = v8 >> 3;
    v15 = (v11 >> 3);
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    do
    {
      if (v12)
      {
        v17 = 0;
        v18 = 0;
        v19 = 3.4028e38;
        do
        {
          v20 = 0;
          v21 = 0.0;
          v22 = 1;
          do
          {
            v23 = v22;
            v24 = *(v6 + 8 * v9 + 4 * v20) - *(v10 + 8 * v17 + 4 * v20);
            v21 = v21 + (v24 * v24);
            v20 = 1;
            v22 = 0;
          }

          while ((v23 & 1) != 0);
          v25 = sqrtf(v21);
          if (v25 < v19)
          {
            v18 = v17;
            v19 = v25;
          }

          ++v17;
        }

        while (v17 != v15);
      }

      else
      {
        v18 = 0;
      }

      begin[v9++] = v18;
    }

    while (v9 != v16);
  }
}

void *std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<Phase::Vector<float,2ul> const*>,std::__wrap_iter<Phase::Vector<float,2ul> const*>,std::back_insert_iterator<std::vector<Phase::Vector<float,2ul>>>,long,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(_DWORD *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = (a2 - a1) >> 3;
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (a2 - a1) >> 3;
  }

  if (v7)
  {
    v9 = a1;
    do
    {
      if (v6 == 1)
      {
        v12 = 0;
      }

      else if (v6)
      {
        v10 = __clz(v6);
        if (((v6 << v10) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = 64;
        }

        else
        {
          v11 = 63;
        }

        std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__independent_bits_engine(v16, a5, v11 - v10);
        do
        {
          v12 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__eval(v16);
        }

        while (v12 >= v6);
      }

      else
      {
        std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__independent_bits_engine(v16, a5, 0x40uLL);
        v12 = std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__eval(v16);
      }

      if (v12 < v7)
      {
        v13 = a3[1];
        if (v13 >= a3[2])
        {
          v14 = std::vector<Phase::Vector<float,2ul>>::__emplace_back_slow_path<Phase::Vector<float,2ul> const&>(a3, v9);
        }

        else
        {
          *v13 = *v9;
          v13[1] = v9[1];
          v14 = (v13 + 2);
        }

        a3[1] = v14;
        --v7;
      }

      v9 += 2;
      --v6;
    }

    while (v7);
  }

  return a3;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3 % 0x1E)
  {
    v3 = a3 / 0x1E + 1;
  }

  else
  {
    v3 = a3 / 0x1E;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x7FFFFFFE;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x7FFFFFFE) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      LODWORD(v4) = 64;
      goto LABEL_16;
    }

    *(result + 40) = (-1 << v4) & 0x7FFFFFFE;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 >= 0x3F)
  {
LABEL_16:
    *(result + 48) = 0;
    v8 = -v4;
    v7 = -1;
    *(result + 56) = 0xFFFFFFFF >> v8;
    goto LABEL_17;
  }

  *(result + 48) = 0x3FFFFFFFuLL >> v4 << (v4 + 1);
  v6 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v6 = 0;
  }

  *(result + 56) = v6;
  if (v4 >= 0x1F)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0xFFFFFFFF >> ~v4;
  }

LABEL_17:
  *(result + 60) = v7;
  return result;
}

uint64_t std::__independent_bits_engine<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>,unsigned long>::__eval(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    result = 0;
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = **a1;
    do
    {
      do
      {
        v7 = v6 / 0xADC8;
        v8 = 48271 * (v6 % 0xADC8);
        v7 *= 3399;
        v9 = v8 >= v7;
        v10 = v8 - v7;
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0x7FFFFFFF;
        }

        v6 = v11 + v10;
        v12 = v6 - 1;
      }

      while (*(a1 + 40) <= v12);
      v13 = result << v5;
      if (v5 >= 0x40)
      {
        v13 = 0;
      }

      result = v13 + (v12 & *(a1 + 56));
      ++v4;
    }

    while (v4 != v2);
    **a1 = v6;
  }

  else
  {
    result = 0;
  }

  v14 = *(a1 + 24);
  if (v2 < v14)
  {
    v15 = *a1;
    v16 = *(a1 + 48);
    v17 = *(a1 + 16);
    v18 = *(a1 + 60);
    v19 = *v15;
    while (1)
    {
      v20 = v19 / 0xADC8;
      v21 = 48271 * (v19 % 0xADC8);
      v20 *= 3399;
      v9 = v21 >= v20;
      v22 = v21 - v20;
      if (v9)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFFF;
      }

      v19 = v23 + v22;
      v24 = v19 - 1;
      if (v16 > v24)
      {
        v25 = result << (v17 + 1);
        if (v17 >= 0x3F)
        {
          v25 = 0;
        }

        result = v25 + (v24 & v18);
        if (++v2 == v14)
        {
          break;
        }
      }
    }

    *v15 = v19;
  }

  return result;
}

uint64_t std::vector<Phase::Vector<float,2ul>>::__emplace_back_slow_path<Phase::Vector<float,2ul> const&>(void *a1, _DWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v15 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v7);
  }

  v8 = (8 * v2);
  __p = 0;
  v12 = v8;
  *v8 = *a2;
  v8[1] = a2[1];
  v13 = 8 * v2 + 8;
  v14 = 0;
  std::vector<Phase::Vector<float,2ul>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23A3C6E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Phase::Vector<float,2ul>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::vector<Phase::Vector<float,2ul>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v12 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
      }

      std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

void sub_23A3C7000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A3C7094(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SubmixRoutingOutput>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void Phase::SpatialModeler::ExecuteEarlyReflectionDebugCallbacks(Phase::SpatialModeler *this, Phase::SpatialModeler::RayTracerState *a2, Phase::Geometry::System *a3, Phase::Geometry::SystemState *a4)
{
  if (!*(a2 + 399))
  {
    return;
  }

  if (*(this + 2367) == *(this + 2366))
  {
    return;
  }

  v6 = Phase::Geometry::SystemDebugger::GetFromSystem(a2);
  if (!v6)
  {
    return;
  }

  v7 = *(this + 2366);
  if (*(this + 2367) == v7)
  {
    return;
  }

  v8 = 0;
  v9 = (v6 + 112);
  v56 = (v6 + 112);
  v51 = a3;
  while (1)
  {
    v10 = (v7 + 56 * v8);
    v104[0] = *v10;
    v11 = *v9;
    if (*v9)
    {
      break;
    }

    Phase::SpatialModeler::RayTracerState::GetSourceListenerResult(this, v104, &v101);
LABEL_53:
    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    if (v102)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v102);
    }

    ++v8;
    v7 = *(this + 2366);
    v9 = v56;
    if (v8 >= 0x6DB6DB6DB6DB6DB7 * ((*(this + 2367) - v7) >> 3))
    {
      return;
    }
  }

  v12 = v10[6];
  v13 = v9;
  v14 = *v9;
  do
  {
    v15 = v14[4];
    v16 = v15 >= v12;
    v17 = v15 < v12;
    if (v16)
    {
      v13 = v14;
    }

    v14 = v14[v17];
  }

  while (v14);
  if (v13 == v9)
  {
    v20 = 0;
  }

  else
  {
    v18 = v13[4];
    v19 = v13 + 5;
    if (v18 <= v12)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  v21 = *(this + 2822);
  v22 = v9;
  do
  {
    v23 = v11[4];
    v16 = v23 >= v21;
    v24 = v23 < v21;
    if (v16)
    {
      v22 = v11;
    }

    v11 = v11[v24];
  }

  while (v11);
  if (v22 == v9)
  {
    v27 = 0;
  }

  else
  {
    v25 = v22[4];
    v26 = v22 + 5;
    if (v25 <= v21)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }
  }

  Phase::SpatialModeler::RayTracerState::GetSourceListenerResult(this, v104, &v101);
  if (!v20 || !v20[13])
  {
LABEL_50:
    if (v27 && v27[17])
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v77 = 0;
      v78 = 0;
      v76 = 0;
      v81 = 0;
      v82 = 0;
      v80 = 0;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      operator new();
    }

    goto LABEL_53;
  }

  v73 = 0;
  v74 = 0;
  v75 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v28 = *(this + 2822);
  if (*(a3 + 46) > v28)
  {
    v29 = *(a3 + 21) + 24 * v28;
    if (*(v29 + 20) == HIDWORD(v28))
    {
      v30 = *v29;
      if (*v29)
      {
        if (*v30 == 2)
        {
          v68 = *(v30 + 64);
          v69 = *(v30 + 72);
          v81 = 0;
          EarlyReflections = Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(v101, *(this + 22), 0, 343.0);
          v65 = 0;
          v66 = 0;
          v67 = 0;
          std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection*,Phase::SpatialModeler::AudibleEarlyReflection*>(&v65, *EarlyReflections, EarlyReflections[1], 0x8E38E38E38E38E39 * ((EarlyReflections[1] - *EarlyReflections) >> 5));
          v61[0] = 0;
          *&v61[1] = 0;
          v63 = 0;
          v64 = 0;
          v62 = 0;
          v54 = v20;
          if (v66 == v65)
          {
            v32 = v10 + 3;
            v33 = v10 + 7;
            v34 = (v10 + 4);
            v35 = &v68;
          }

          else
          {
            v32 = v65 + 220;
            v33 = (v65 + 224);
            v34 = (v65 + 228);
            v35 = (v65 + 232);
          }

          v55 = v27;
          v53 = v8;
          v36 = *v34;
          v37 = *v33;
          v61[0] = *v32;
          *&v61[1] = __PAIR64__(v36, v37);
          std::vector<Phase::Vector<float,3ul>>::push_back[abi:ne200100](&v62, v35);
          std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::push_back[abi:ne200100](&v80, v61);
          v52 = v10;
          v38 = v65;
          if ((954437177 * ((v66 - v65) >> 5)) >= 1)
          {
            v39 = 0;
            v40 = 148;
            do
            {
              memset(v57, 0, 12);
              v59 = 0;
              v60 = 0;
              __p = 0;
              v41 = &v38[288 * v39];
              v42 = v41[1].f32[1];
              v43 = *(this + 116);
              v44 = v41->f32[1] * 0.017453;
              v45 = __sincosf_stret((90.0 - v41[1].f32[0]) * 0.017453);
              v46 = __sincosf_stret(v44);
              if (v41->i32[0] >= 1)
              {
                v47 = 0;
                v48 = v40;
                do
                {
                  std::vector<Phase::Vector<float,3ul>>::push_back[abi:ne200100](&__p, &v38[v48]);
                  ++v47;
                  v38 = v65;
                  v41 = (v65 + 288 * v39);
                  v48 += 24;
                }

                while (v47 < v41->i32[0]);
              }

              v49.f32[0] = (v42 * v43) * v45.__sinval;
              v49.f32[1] = v42 * v43;
              v50 = vmul_f32(__PAIR64__(LODWORD(v45.__cosval), LODWORD(v46.__sinval)), v49);
              v49.f32[0] = (v46.__cosval * v49.f32[0]) + v41[30].f32[0];
              v57[0] = vadd_f32(v50, v41[29]);
              LODWORD(v57[1]) = v49.i32[0];
              std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::push_back[abi:ne200100](&v80, v57);
              if (__p)
              {
                v59 = __p;
                operator delete(__p);
              }

              ++v39;
              v38 = v65;
              v40 += 288;
            }

            while (v39 < (954437177 * ((v66 - v65) >> 5)));
          }

          v71 = v52[6];
          v72 = 0;
          v79 = 0xCCCCCCCCCCCCCCCDLL * ((v81 - v80) >> 3);
          std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator()((v54 + 10), &v70);
          a3 = v51;
          v8 = v53;
          v27 = v55;
          if (v62)
          {
            v63 = v62;
            operator delete(v62);
          }

          if (v65)
          {
            v66 = v65;
            operator delete(v65);
          }

          Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(&v70);
          goto LABEL_50;
        }
      }
    }
  }

  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(&v70);
  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v103);
  }

  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  }
}

void sub_23A3C7DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(&a34);
  Phase::SpatialModeler::SourceListenerResult::~SourceListenerResult((v34 - 200));
  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<Phase::Vector<float,3ul>>::push_back[abi:ne200100](void *a1, _DWORD *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    v16 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Vector<float,3ul>>>(a1, v10);
    }

    v11 = 12 * v7;
    __p = 0;
    v13 = v11;
    *v11 = *a2;
    *(v11 + 4) = a2[1];
    *(v11 + 8) = a2[2];
    v14 = 12 * v7 + 12;
    v15 = 0;
    std::vector<Phase::Vector<float,3ul>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xCuLL + v13;
    }

    v6 = a1[1];
    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
    *v4 = *a2;
    v4[1] = a2[1];
    v4[2] = a2[2];
    v6 = v4 + 3;
  }

  a1[1] = v6;
}

void sub_23A3C8030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v11;
    }

    v30 = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>>(a1, v12);
    }

    v13 = 40 * v9;
    v27 = 0;
    v28 = v13;
    v29 = 40 * v9;
    *v13 = *a2;
    *(v13 + 4) = *(a2 + 4);
    v14 = *(a2 + 8);
    *(v13 + 16) = 0;
    v15 = 40 * v9 + 16;
    *(v15 - 8) = v14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    std::vector<Phase::Vector<float,3ul>>::__init_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(v15, *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 2));
    *&v29 = v29 + 40;
    v17 = *a1;
    v16 = a1[1];
    v31[0] = a1;
    v31[1] = &v33;
    v31[2] = &v34;
    v32 = 0;
    v18 = v28 + v17 - v16;
    v33 = v18;
    v34 = v18;
    if (v17 == v16)
    {
      v32 = 1;
    }

    else
    {
      v19 = v28 + v17 - v16;
      v20 = v17;
      do
      {
        *v19 = *v20;
        *(v19 + 4) = *(v20 + 4);
        v21 = *(v20 + 8);
        *(v19 + 16) = 0;
        v22 = v19 + 16;
        *(v22 - 8) = v21;
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        std::vector<Phase::Vector<float,3ul>>::__init_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(v22, *(v20 + 16), *(v20 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v20 + 24) - *(v20 + 16)) >> 2));
        v20 += 40;
        v19 = v34 + 40;
        v34 += 40;
      }

      while (v20 != v16);
      v32 = 1;
      do
      {
        v23 = *(v17 + 16);
        if (v23)
        {
          *(v17 + 24) = v23;
          operator delete(v23);
        }

        v17 += 40;
      }

      while (v17 != v16);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>>::~__exception_guard_exceptions[abi:ne200100](v31);
    v24 = *a1;
    *a1 = v18;
    v25 = a1[2];
    v26 = v29;
    *(a1 + 1) = v29;
    *&v29 = v24;
    *(&v29 + 1) = v25;
    v27 = v24;
    v28 = v24;
    result = std::__split_buffer<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::~__split_buffer(&v27);
    v8 = v26;
  }

  else
  {
    *v5 = *a2;
    *(v5 + 4) = *(a2 + 4);
    v6 = *(a2 + 8);
    *(v5 + 16) = 0;
    *(v5 + 8) = v6;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    result = std::vector<Phase::Vector<float,3ul>>::__init_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(v5 + 16, *(a2 + 16), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 2));
    v8 = v5 + 40;
    a1[1] = v5 + 40;
  }

  a1[1] = v8;
  return result;
}

void sub_23A3C82D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

char *std::vector<Phase::Vector<float,3ul>>::assign(char **a1, unint64_t a2, _DWORD *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 2) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0x1555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 2);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0x1555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<Phase::Vector<float,3ul>>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 2);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 2);
  }

  if (v12)
  {
    v13 = result;
    do
    {
      *v13 = *a3;
      v13[1] = a3[1];
      v13[2] = a3[2];
      v13 += 3;
      --v12;
    }

    while (v12);
  }

  v14 = a2 >= v11;
  v15 = a2 - v11;
  if (v15 != 0 && v14)
  {
    v16 = &v10[12 * v15];
    do
    {
      *v10 = *a3;
      *(v10 + 1) = a3[1];
      *(v10 + 2) = a3[2];
      v10 += 12;
    }

    while (v10 != v16);
    a1[1] = v16;
  }

  else
  {
    a1[1] = &result[12 * a2];
  }

  return result;
}

void std::vector<std::vector<float>>::assign(uint64_t *a1, unint64_t a2, char **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v9 = (a1[1] - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v6, *a3, a3[1], (a3[1] - *a3) >> 2);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = a1[1];
    v16 = *a1 + 24 * a2;
    if (v15 != v16)
    {
      v17 = a1[1];
      do
      {
        v19 = *(v17 - 24);
        v17 -= 24;
        v18 = v19;
        if (v19)
        {
          *(v15 - 16) = v18;
          operator delete(v18);
        }

        v15 = v17;
      }

      while (v17 != v16);
    }

    a1[1] = v16;
  }

  else
  {
    v12 = a1[1];
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v12, *a3, a3[1], (a3[1] - *a3) >> 2);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    a1[1] = v13;
  }
}

void *std::vector<unsigned char>::assign(void **a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 2 * v6;
      if (2 * v6 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = v10 - result;
  if (v10 - result >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 - result;
  }

  if (v12)
  {
    result = memset(result, *a3, v12);
  }

  v13 = a2 >= v11;
  v14 = a2 - v11;
  if (v14 != 0 && v13)
  {
    v15 = a1[1];
    result = memset(v15, *a3, v14);
    v16 = &v15[v14];
  }

  else
  {
    v16 = *a1 + a2;
  }

  a1[1] = v16;
  return result;
}

uint64_t std::vector<Phase::Vector<float,3ul>>::__init_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::Vector<float,3ul>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A3C87F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 40;
  }
}

uint64_t std::__split_buffer<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    *(this + 54) = v2;
    operator delete(v2);
  }

  v3 = *(this + 50);
  if (v3)
  {
    *(this + 51) = v3;
    operator delete(v3);
  }

  v4 = *(this + 47);
  if (v4)
  {
    *(this + 48) = v4;
    operator delete(v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    *(this + 45) = v5;
    operator delete(v5);
  }

  v6 = *(this + 39);
  if (v6)
  {
    *(this + 40) = v6;
    operator delete(v6);
  }

  v14 = (this + 288);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v7 = *(this + 33);
  if (v7)
  {
    *(this + 34) = v7;
    operator delete(v7);
  }

  v8 = *(this + 30);
  if (v8)
  {
    *(this + 31) = v8;
    operator delete(v8);
  }

  v9 = *(this + 26);
  if (v9)
  {
    *(this + 27) = v9;
    operator delete(v9);
  }

  v14 = (this + 184);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v10 = *(this + 20);
  if (v10)
  {
    *(this + 21) = v10;
    operator delete(v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    *(this + 18) = v11;
    operator delete(v11);
  }

  v14 = (this + 104);
  std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12 = *(this + 9);
  if (v12)
  {
    *(this + 10) = v12;
    operator delete(v12);
  }

  v13 = *(this + 4);
  if (v13)
  {
    *(this + 5) = v13;
    operator delete(v13);
  }
}

void std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

Phase::SpatialModeler::EarlyReflectionDetector *Phase::SpatialModeler::EarlyReflectionDetector::EarlyReflectionDetector(Phase::SpatialModeler::EarlyReflectionDetector *this, const Phase::SpatialModeler::EarlyReflectionDetector *a2)
{
  v4 = std::unordered_map<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>::unordered_map(this, a2);
  v4[5] = 0;
  v4[6] = 0;
  v4 += 5;
  v4[2] = 0;
  std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection*,Phase::SpatialModeler::AudibleEarlyReflection*>(v4, *(a2 + 5), *(a2 + 6), 0x8E38E38E38E38E39 * ((*(a2 + 6) - *(a2 + 5)) >> 5));
  *(this + 16) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return this;
}

float Phase::SpatialModeler::EarlyReflectionDetector::GetLastPathAngleError(Phase::SpatialModeler::EarlyReflectionDetector *this, const Phase::SpatialModeler::AudibleEarlyReflection *a2)
{
  v2 = this + 24 * *this;
  v3.f32[0] = *(this + 57) - *(v2 + 33);
  v4 = vsub_f32(*(this + 220), *(v2 + 124));
  v5 = *(this + 244);
  v6 = vaddv_f32(vmul_f32(v4, v5)) + (v3.f32[0] * *(this + 63));
  v7 = vzip1_s32(v4, v5);
  v8 = vzip2_s32(v4, v5);
  v3.i32[1] = *(this + 63);
  v9 = vsqrt_f32(vadd_f32(vadd_f32(vmul_f32(v7, v7), vmul_f32(v8, v8)), vmul_f32(v3, v3)));
  result = v6 / vmul_lane_f32(v9, v9, 1).f32[0];
  if (result < -1.0 || result > 1.0)
  {
    return -1.0;
  }

  return result;
}

void Phase::SpatialModeler::EarlyReflectionDetector::AddToScoreBoard(Phase::SpatialModeler::EarlyReflectionDetector *this, const Phase::SpatialModeler::AudibleEarlyReflection *a2)
{
  if (*a2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = a2 + 148;
    do
    {
      ++v4;
      v5 += Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal((v6 + 12), v6) * v4;
      v6 += 24;
    }

    while (v4 < *a2);
  }

  v14 = v5;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this, &v14);
  if (v7)
  {
    Phase::SpatialModeler::AudibleEarlyReflection::operator+=(v7 + 8, a2, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,Phase::SpatialModeler::AudibleEarlyReflection const&>(this, &v14);
    if (*(this + 3) >= 0x64uLL)
    {
      Phase::SpatialModeler::EarlyReflectionDetector::AutoSizeLimit(this);
    }
  }
}

void *Phase::SpatialModeler::EarlyReflectionDetector::AutoSizeLimit(void *this)
{
  v1 = this;
  v2 = this[2];
  while (v2)
  {
    if (*(v2 + 176) >= 0.001)
    {
      v2 = *v2;
    }

    else
    {
      this = std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(v1, v2);
      v2 = this;
    }
  }

  if (v1[3] >= 0x65uLL)
  {
    do
    {
      v3 = v1[2];
      for (i = v3; v3; v3 = *v3)
      {
        if (v3[44] < *(i + 44))
        {
          i = v3;
        }
      }

      this = std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(v1, i);
    }

    while (v1[3] > 0x64uLL);
  }

  return this;
}

char *Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(Phase::SpatialModeler::EarlyReflectionDetector *this, int a2, int a3, float a4)
{
  if (!a3)
  {
    return this + 40;
  }

  if (*(this + 3))
  {
    if ((*(this + 10) - *(this + 8)) >> 4 <= 0x9AAuLL)
    {
      operator new();
    }

    if (*(this + 16) - *(this + 14) <= 0x63FuLL)
    {
      operator new();
    }

    v6 = *(this + 11);
    if (0x8E38E38E38E38E39 * ((*(this + 13) - v6) >> 5) <= 0x63)
    {
      operator new();
    }

    *(this + 12) = v6;
    *(this + 15) = *(this + 14);
    *(this + 9) = *(this + 8);
    v7 = *(this + 2);
    v8 = 1.5 / a4;
    if (v7)
    {
      do
      {
        v9 = *(v7 + 43);
        if (v9)
        {
          v10 = v7 + 12;
          v11 = 0.0;
          do
          {
            v12 = *v10++;
            v11 = v11 + (v12 * v12);
            --v9;
          }

          while (v9);
        }

        else
        {
          v11 = 0.0;
        }

        v7[78] = v7[44] * (v11 / (v7[11] * v7[11]));
        v13 = v7[66] - v7[63];
        v14 = v7[67] - v7[64];
        v7[74] = sqrtf(((v13 * v13) + (v14 * v14)) + ((v7[68] - v7[65]) * (v7[68] - v7[65]))) / a4;
        Phase::SpatialModeler::AudibleEarlyReflection::updateISPositionEstimate((v7 + 8), a4);
        if (v7[44] > 0.000001)
        {
          std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::push_back[abi:ne200100](this + 11, (v7 + 8));
          v15 = *(this + 12) - 288;
          v17 = *(this + 15);
          v16 = *(this + 16);
          if (v17 >= v16)
          {
            v19 = *(this + 14);
            v20 = v17 - v19;
            v21 = (v17 - v19) >> 4;
            v22 = v21 + 1;
            if ((v21 + 1) >> 60)
            {
              std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
            }

            v23 = v16 - v19;
            if (v23 >> 3 > v22)
            {
              v22 = v23 >> 3;
            }

            if (v23 >= 0x7FFFFFFFFFFFFFF0)
            {
              v24 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v22;
            }

            if (v24)
            {
              if (!(v24 >> 60))
              {
                operator new();
              }

LABEL_121:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v25 = v21;
            v26 = 16 * v21;
            *v26 = v15;
            *(v26 + 8) = 0;
            v18 = 16 * v21 + 16;
            v27 = (v26 - 16 * v25);
            memcpy(v27, v19, v20);
            *(this + 14) = v27;
            *(this + 15) = v18;
            *(this + 16) = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v17 = v15;
            *(v17 + 8) = 0;
            v18 = v17 + 16;
          }

          *(this + 15) = v18;
        }

        v7 = *v7;
      }

      while (v7);
      v29 = *(this + 14);
      v28 = *(this + 15);
      if (v29 != v28)
      {
        v30 = v28 - v29;
        if (v30 >= 2)
        {
          v31 = (v30 - 2) >> 1;
          v32 = v31;
          do
          {
            v33 = v32;
            if (v31 >= v32)
            {
              v34 = (2 * v32) | 1;
              v35 = &v29[v34];
              if (2 * v33 + 2 < v30 && *(v35[2] + 280) < *(*v35 + 280))
              {
                v35 += 2;
                v34 = 2 * v33 + 2;
              }

              v36 = &v29[v33];
              v37 = *v36;
              if (*(*v36 + 280) >= *(*v35 + 280))
              {
                v38 = v36[1];
                do
                {
                  v39 = v36;
                  v36 = v35;
                  *v39 = *v35;
                  if (v31 < v34)
                  {
                    break;
                  }

                  v40 = 2 * v34;
                  v34 = (2 * v34) | 1;
                  v35 = &v29[v34];
                  v41 = v40 + 2;
                  if (v41 < v30 && *(v35[2] + 280) < *(*v35 + 280))
                  {
                    v35 += 2;
                    v34 = v41;
                  }
                }

                while (*(v37 + 280) >= *(*v35 + 280));
                *v36 = v37;
                v36[1] = v38;
              }
            }

            v32 = v33 - 1;
          }

          while (v33);
          do
          {
            v42 = 0;
            *__p = *v29;
            v43 = v29;
            do
            {
              v44 = v43;
              v43 += 2 * v42 + 2;
              v45 = 2 * v42;
              v42 = (2 * v42) | 1;
              v46 = v45 + 2;
              if (v46 < v30 && *(v43[2] + 280) < *(*v43 + 280))
              {
                v43 += 2;
                v42 = v46;
              }

              *v44 = *v43;
            }

            while (v42 <= ((v30 - 2) >> 1));
            if (v43 == --v28)
            {
              *v43 = *__p;
            }

            else
            {
              *v43 = *v28;
              *v28 = *__p;
              v47 = (v43 - v29 + 16) >> 4;
              v48 = v47 < 2;
              v49 = v47 - 2;
              if (!v48)
              {
                v50 = v49 >> 1;
                v51 = &v29[v49 >> 1];
                v52 = *v43;
                if (*(*v43 + 280) < *(*v51 + 280))
                {
                  v53 = v43[1];
                  do
                  {
                    v54 = v43;
                    v43 = v51;
                    *v54 = *v51;
                    if (!v50)
                    {
                      break;
                    }

                    v50 = (v50 - 1) >> 1;
                    v51 = &v29[v50];
                  }

                  while (*(v52 + 280) < *(*v51 + 280));
                  *v43 = v52;
                  v43[1] = v53;
                }
              }
            }

            v48 = v30-- <= 2;
          }

          while (!v48);
          v29 = *(this + 14);
          v28 = *(this + 15);
        }

        if (v28 != v29)
        {
          v55 = 0;
          v56 = 0;
          do
          {
            v57 = (v56 + 1);
            v58 = v28 - v29;
            v59 = v57;
            v60 = v56 + 1;
            if (v58 > v57)
            {
              do
              {
                v61 = *&v29[v55];
                v62 = *&v29[v59];
                if (*v61 == *v62)
                {
                  v63 = *(v61 + 12) - *(v62 + 12);
                  if (v63 < 0.0)
                  {
                    v63 = -v63;
                  }

                  if (v63 <= v8)
                  {
                    v64 = *(v61 + 276) - *(v62 + 276);
                    v65 = vsub_f32(*(v61 + 268), *(v62 + 268));
                    v66 = vaddv_f32(vmul_f32(v65, v65)) + (v64 * v64);
                    if (v66 < 2.25)
                    {
                      v67 = *(this + 9);
                      v68 = *(this + 10);
                      if (v67 >= v68)
                      {
                        v70 = *(this + 8);
                        v71 = v67 - v70;
                        v72 = (v67 - v70) >> 3;
                        v73 = v72 + 1;
                        if ((v72 + 1) >> 61)
                        {
                          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                        }

                        v74 = v68 - v70;
                        if (v74 >> 2 > v73)
                        {
                          v73 = v74 >> 2;
                        }

                        if (v74 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v75 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v75 = v73;
                        }

                        if (v75)
                        {
                          if (!(v75 >> 61))
                          {
                            operator new();
                          }

                          goto LABEL_121;
                        }

                        v76 = 8 * v72;
                        *v76 = v66;
                        *(v76 + 4) = v56;
                        *(v76 + 6) = v60;
                        v69 = 8 * v72 + 8;
                        memcpy(0, v70, v71);
                        *(this + 8) = 0;
                        *(this + 9) = v69;
                        *(this + 10) = 0;
                        if (v70)
                        {
                          operator delete(v70);
                        }
                      }

                      else
                      {
                        *v67 = v66;
                        *(v67 + 4) = v56;
                        v69 = v67 + 8;
                        *(v67 + 6) = v60;
                      }

                      *(this + 9) = v69;
                      v29 = *(this + 14);
                      v28 = *(this + 15);
                    }
                  }
                }

                v59 = ++v60;
              }

              while (v60 < (v28 - v29));
              v58 = v28 - v29;
            }

            v55 = ++v56;
          }

          while (v58 > v57);
        }
      }
    }

    v77 = *(this + 8);
    v78 = *(this + 9);
    v79 = 126 - 2 * __clz((v78 - v77) >> 3);
    if (v78 == v77)
    {
      v80 = 0;
    }

    else
    {
      v80 = v79;
    }

    std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *,false>(v77, v78, v80, 1);
    v86 = *(this + 8);
    v85 = *(this + 9);
    if (v85 != v86)
    {
      v87 = 0;
      v88 = 0;
      do
      {
        v89 = *(this + 14);
        v90 = (v89 + 16 * *(v86 + v87 + 4));
        if (v90[2] != 2)
        {
          v91 = (v89 + 16 * *(v86 + v87 + 6));
          if (v91[2] != 2)
          {
            v92 = *v90;
            v93 = *v91;
            v94 = *(*v90 + 12) - *(*v91 + 12);
            if (v94 < 0.0)
            {
              v94 = -v94;
            }

            if (v94 <= v8)
            {
              v95 = &v92[6 * *v92];
              v96 = &v93[6 * *v93];
              v97 = *(v95 + 33) - *(v96 + 33);
              v98 = *(v96 + 31);
              v99 = vsub_f32(*(v95 + 31), *&v98);
              v100 = vmul_f32(v99, v99);
              v100.f32[0] = vaddv_f32(v100);
              *&v81 = v100.f32[0] + (v97 * v97);
              if (*&v81 < 2.25)
              {
                Phase::SpatialModeler::AudibleEarlyReflection::operator+=(v92, v93, v81, *&v100, v98, v82, v83, v84);
                v90[2] = 1;
                v91[2] = 2;
                v86 = *(this + 8);
                v85 = *(this + 9);
              }
            }
          }
        }

        ++v88;
        v87 += 8;
      }

      while (v88 < (v85 - v86) >> 3);
    }

    v101 = *(this + 5);
    v102 = *(this + 15);
    v103 = *(this + 14);
    if (v103 == v102)
    {
      *(this + 6) = v101;
    }

    else
    {
      v104 = *(this + 6);
      v105 = *(this + 14);
      do
      {
        if (*(v105 + 2) != 2)
        {
          v106 = *v105;
          v107 = v101;
          if (v101 != v104)
          {
            v107 = v101;
            while (*(v107 + 256) != *(v106 + 256))
            {
              v107 += 288;
              if (v107 == v104)
              {
                goto LABEL_111;
              }
            }
          }

          if (v107 != v104)
          {
            *(v106 + 12) = *(v107 + 12) + ((*(v106 + 12) - *(v107 + 12)) * 0.05);
            *(v106 + 264) = *(v107 + 264) + ((*(v106 + 264) - *(v107 + 264)) * 0.05);
          }
        }

LABEL_111:
        v105 += 2;
      }

      while (v105 != v102);
      *(this + 6) = v101;
      do
      {
        if (*(v103 + 8) != 2)
        {
          std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::push_back[abi:ne200100](this + 5, *v103);
        }

        v103 += 16;
      }

      while (v103 != v102);
    }

    return this + 40;
  }

  v108 = this + 88;
  *(this + 12) = *(this + 11);
  return v108;
}

void std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 5);
    if (v7 + 1 > 0xE38E38E38E38E3)
    {
      std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 5);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x71C71C71C71C71)
    {
      v10 = 0xE38E38E38E38E3;
    }

    else
    {
      v10 = v9;
    }

    __p[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>>(a1, v10);
    }

    __p[0] = 0;
    __p[1] = (288 * v7);
    __p[3] = 0;
    std::allocator_traits<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>>::construct[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection,Phase::SpatialModeler::AudibleEarlyReflection const&,void,0>(288 * v7, a2);
    __p[2] = (288 * v7 + 288);
    std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__swap_out_circular_buffer(a1, __p);
    v6 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::allocator_traits<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>>::construct[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection,Phase::SpatialModeler::AudibleEarlyReflection const&,void,0>(a1[1], a2);
    v6 = v5 + 288;
  }

  a1[1] = v6;
}

void std::vector<Phase::SpatialModeler::AudibleEarlyReflection>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = v4 + *a1 - v6;
    do
    {
      std::allocator_traits<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>>::construct[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection,Phase::SpatialModeler::AudibleEarlyReflection const&,void,0>(v8, v5);
      v5 += 288;
      v8 += 288;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

float std::allocator_traits<std::allocator<Phase::SpatialModeler::AudibleEarlyReflection>>::construct[abi:ne200100]<Phase::SpatialModeler::AudibleEarlyReflection,Phase::SpatialModeler::AudibleEarlyReflection const&,void,0>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = v6;
  v9 = (a1 + 168);
  v10 = (a2 + 168);
  v11 = 3;
  do
  {
    *(v9 - 5) = *(v10 - 5);
    *(v9 - 4) = *(v10 - 4);
    *(v9 - 3) = *(v10 - 3);
    *(v9 - 2) = *(v10 - 2);
    *(v9 - 1) = *(v10 - 1);
    v12 = *v10;
    v10 += 6;
    *v9 = v12;
    v9 += 6;
    --v11;
  }

  while (v11);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 252) = *(a2 + 252);
  v13 = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 256) = v13;
  *(a1 + 268) = *(a2 + 268);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 276) = *(a2 + 276);
  result = *(a2 + 280);
  *(a1 + 280) = result;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *,false>(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 2) >= *v8)
        {
          return result;
        }

        v62 = *v8;
LABEL_109:
        *v8 = *(a2 - 1);
LABEL_110:
        *(a2 - 1) = v62;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v65 = *(v8 + 8);
      v66 = *v8;
      v67 = *(v8 + 16);
      if (v65 >= *v8)
      {
        if (v67 < v65)
        {
          v111 = *(v8 + 8);
          v110 = *(v8 + 16);
          *(v8 + 8) = v110;
          *(v8 + 16) = v111;
          v67 = *&v111;
          if (v66 > *&v110)
          {
            v112 = *v8;
            *v8 = v110;
            *(v8 + 8) = v112;
          }
        }
      }

      else
      {
        v68 = *v8;
        LODWORD(v69) = *v8;
        if (v67 < v65)
        {
          *v8 = *(v8 + 16);
          goto LABEL_180;
        }

        *v8 = *(v8 + 8);
        *(v8 + 8) = v68;
        if (v67 < v69)
        {
          *(v8 + 8) = *(v8 + 16);
LABEL_180:
          *(v8 + 16) = v68;
          v67 = v69;
        }
      }

      if (*(a2 - 2) < v67)
      {
        v118 = *(v8 + 16);
        *(v8 + 16) = *(a2 - 1);
        *(a2 - 1) = v118;
        if (*(v8 + 16) < *(v8 + 8))
        {
          v120 = *(v8 + 8);
          v119 = *(v8 + 16);
          *(v8 + 8) = v119;
          *(v8 + 16) = v120;
          if (*v8 > *&v119)
          {
            v121 = *v8;
            *v8 = v119;
            *(v8 + 8) = v121;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *,0>(v8, (v8 + 8), (v8 + 16), (v8 + 24), a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v70 = (v8 + 8);
      v72 = v8 == a2 || v70 == a2;
      if (a4)
      {
        if (!v72)
        {
          v73 = 0;
          v74 = v8;
          do
          {
            v75 = v70;
            v76 = *(v74 + 8);
            if (v76 < *v74)
            {
              v77 = *(v74 + 12);
              v78 = v73;
              while (1)
              {
                *(v8 + v78 + 8) = *(v8 + v78);
                if (!v78)
                {
                  break;
                }

                v79 = *(v8 + v78 - 8);
                v78 -= 8;
                if (v79 <= v76)
                {
                  v80 = v8 + v78 + 8;
                  goto LABEL_129;
                }
              }

              v80 = v8;
LABEL_129:
              *v80 = v76;
              *(v80 + 4) = v77;
            }

            v70 = v75 + 2;
            v73 += 8;
            v74 = v75;
          }

          while (v75 + 2 != a2);
        }
      }

      else if (!v72)
      {
        do
        {
          v113 = v70;
          v114 = *(v7 + 8);
          if (v114 < *v7)
          {
            v115 = *(v7 + 12);
            do
            {
              v116 = v70;
              v117 = *(v70 - 1);
              v70 -= 2;
              *v116 = v117;
            }

            while (*(v116 - 4) > v114);
            *v70 = v114;
            *(v70 + 1) = v115;
          }

          v70 = (v113 + 8);
          v7 = v113;
        }

        while ((v113 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v81 = (v9 - 2) >> 1;
        v82 = v81;
        do
        {
          v83 = v82;
          if (v81 >= v82)
          {
            v84 = (2 * v82) | 1;
            v85 = (v8 + 8 * v84);
            if (2 * v83 + 2 < v9 && *v85 < v85[2])
            {
              v85 += 2;
              v84 = 2 * v83 + 2;
            }

            v86 = (v8 + 8 * v83);
            v87 = *v86;
            if (*v85 >= *v86)
            {
              v88 = *(v86 + 1);
              do
              {
                v89 = v86;
                v86 = v85;
                *v89 = *v85;
                if (v81 < v84)
                {
                  break;
                }

                v90 = 2 * v84;
                v84 = (2 * v84) | 1;
                v85 = (v8 + 8 * v84);
                v91 = v90 + 2;
                if (v91 < v9 && *v85 < v85[2])
                {
                  v85 += 2;
                  v84 = v91;
                }
              }

              while (*v85 >= v87);
              *v86 = v87;
              *(v86 + 1) = v88;
            }
          }

          v82 = v83 - 1;
        }

        while (v83);
        do
        {
          v92 = 0;
          v93 = *v8;
          v94 = v8;
          do
          {
            v95 = v94;
            v96 = &v94[2 * v92];
            v94 = v96 + 2;
            v97 = 2 * v92;
            v92 = (2 * v92) | 1;
            v98 = v97 + 2;
            if (v98 < v9)
            {
              v100 = v96[4];
              v99 = v96 + 4;
              if (*(v99 - 2) < v100)
              {
                v94 = v99;
                v92 = v98;
              }
            }

            *v95 = *v94;
          }

          while (v92 <= ((v9 - 2) >> 1));
          a2 -= 2;
          if (v94 == a2)
          {
            *v94 = v93;
          }

          else
          {
            *v94 = *a2;
            *a2 = v93;
            v101 = (v94 - v8 + 8) >> 3;
            v102 = v101 < 2;
            v103 = v101 - 2;
            if (!v102)
            {
              v104 = v103 >> 1;
              v105 = (v8 + 8 * v104);
              v106 = *v94;
              if (*v105 < *v94)
              {
                v107 = *(v94 + 1);
                do
                {
                  v108 = v94;
                  v94 = v105;
                  *v108 = *v105;
                  if (!v104)
                  {
                    break;
                  }

                  v104 = (v104 - 1) >> 1;
                  v105 = (v8 + 8 * v104);
                }

                while (*v105 < v106);
                *v94 = v106;
                *(v94 + 1) = v107;
              }
            }
          }

          v102 = v9-- <= 2;
        }

        while (!v102);
      }

      return result;
    }

    v10 = (v8 + 8 * (v9 >> 1));
    v11 = v10;
    v12 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          v17 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v17;
          if (*v10 < *v8)
          {
            v18 = *v8;
            *v8 = *v10;
            *v10 = v18;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v12 < v13)
        {
          *v8 = *(a2 - 1);
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        if (*(a2 - 2) < *&v14)
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v21 = v10 - 2;
      v22 = *(v10 - 2);
      v23 = *(a2 - 4);
      if (v22 >= *(v8 + 8))
      {
        if (v23 < v22)
        {
          v25 = *v21;
          *v21 = *(a2 - 2);
          *(a2 - 2) = v25;
          if (*v21 < *(v8 + 8))
          {
            v26 = *(v8 + 8);
            *(v8 + 8) = *v21;
            *v21 = v26;
          }
        }
      }

      else
      {
        v24 = *(v8 + 8);
        if (v23 < v22)
        {
          *(v8 + 8) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v8 + 8) = *v21;
        *v21 = v24;
        if (*(a2 - 4) < *&v24)
        {
          *v21 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v24;
        }
      }

      v28 = v10[2];
      v27 = (v10 + 2);
      v29 = v28;
      v30 = *(a2 - 6);
      if (v28 >= *(v8 + 16))
      {
        if (v30 < v29)
        {
          v32 = *v27;
          *v27 = *(a2 - 3);
          *(a2 - 3) = v32;
          if (*v27 < *(v8 + 16))
          {
            v33 = *(v8 + 16);
            *(v8 + 16) = *v27;
            *v27 = v33;
          }
        }
      }

      else
      {
        v31 = *(v8 + 16);
        if (v30 < v29)
        {
          *(v8 + 16) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v8 + 16) = *v27;
        *v27 = v31;
        if (*(a2 - 6) < *&v31)
        {
          *v27 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v31;
        }
      }

      v34 = *v11;
      v35 = *v21;
      v36 = *v27;
      if (*v11 >= *v21)
      {
        v37 = *v11;
        if (v36 < v34)
        {
          v38 = *v27;
          *v11 = *v27;
          *v27 = v37;
          if (v35 <= *&v38)
          {
            v37 = v38;
          }

          else
          {
            v37 = *v21;
            *v21 = v38;
            *v11 = v37;
          }
        }
      }

      else
      {
        v37 = *v21;
        if (v36 >= v34)
        {
          *v21 = *v11;
          *v11 = v37;
          if (v36 < *&v37)
          {
            v39 = *v27;
            *v11 = *v27;
            *v27 = v37;
            v37 = v39;
          }
        }

        else
        {
          *v21 = *v27;
          *v27 = v37;
          v37 = *v11;
        }
      }

      v40 = *v8;
      *v8 = v37;
      *v11 = v40;
      goto LABEL_59;
    }

    v15 = *v8;
    if (*v8 >= *v10)
    {
      if (v12 < v15)
      {
        v19 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v19;
        if (*v8 < *v10)
        {
          v20 = *v10;
          *v10 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_59;
    }

    v16 = *v10;
    if (v12 < v15)
    {
      *v10 = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v16;
    if (*(a2 - 2) < *&v16)
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v41 = *v8;
LABEL_62:
      v42 = 0;
      v43 = *(v8 + 4);
      do
      {
        v44 = *(v8 + v42 + 8);
        v42 += 8;
      }

      while (v44 < v41);
      v45 = v8 + v42;
      v46 = a2;
      if (v42 == 8)
      {
        v46 = a2;
        do
        {
          if (v45 >= v46)
          {
            break;
          }

          v48 = *(v46 - 2);
          v46 -= 2;
        }

        while (v48 >= v41);
      }

      else
      {
        do
        {
          v47 = *(v46 - 2);
          v46 -= 2;
        }

        while (v47 >= v41);
      }

      v8 += v42;
      if (v45 < v46)
      {
        v49 = v46;
        do
        {
          v50 = *v8;
          *v8 = *v49;
          *v49 = v50;
          do
          {
            v51 = *(v8 + 8);
            v8 += 8;
          }

          while (v51 < v41);
          do
          {
            v52 = *(v49 - 2);
            v49 -= 2;
          }

          while (v52 >= v41);
        }

        while (v8 < v49);
      }

      if (v8 - 8 != v7)
      {
        *v7 = *(v8 - 8);
      }

      *(v8 - 8) = v41;
      *(v8 - 4) = v43;
      if (v45 < v46)
      {
        goto LABEL_81;
      }

      v53 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *>(v7, v8 - 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *>(v8, a2);
      if (result)
      {
        a2 = (v8 - 8);
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *,false>(v7, v8 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v41 = *v8;
      if (*(v8 - 8) < *v8)
      {
        goto LABEL_62;
      }

      if (*(a2 - 2) <= v41)
      {
        v55 = v8 + 8;
        do
        {
          v8 = v55;
          if (v55 >= a2)
          {
            break;
          }

          v55 += 8;
        }

        while (*v8 <= v41);
      }

      else
      {
        do
        {
          v54 = *(v8 + 8);
          v8 += 8;
        }

        while (v54 <= v41);
      }

      v56 = a2;
      if (v8 < a2)
      {
        v56 = a2;
        do
        {
          v57 = *(v56 - 2);
          v56 -= 2;
        }

        while (v57 > v41);
      }

      v58 = *(v7 + 4);
      while (v8 < v56)
      {
        v59 = *v8;
        *v8 = *v56;
        *v56 = v59;
        do
        {
          v60 = *(v8 + 8);
          v8 += 8;
        }

        while (v60 <= v41);
        do
        {
          v61 = *(v56 - 2);
          v56 -= 2;
        }

        while (v61 > v41);
      }

      if (v8 - 8 != v7)
      {
        *v7 = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 8) = v41;
      *(v8 - 4) = v58;
    }
  }

  v63 = *(v8 + 8);
  v64 = *(a2 - 2);
  if (v63 >= *v8)
  {
    if (v64 < v63)
    {
      v109 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 1);
      *(a2 - 1) = v109;
      if (*(v8 + 8) < *v8)
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v62 = *v8;
    if (v64 < v63)
    {
      goto LABEL_109;
    }

    *v8 = *(v8 + 8);
    *(v8 + 8) = v62;
    if (*(a2 - 2) < *&v62)
    {
      *(v8 + 8) = *(a2 - 1);
      goto LABEL_110;
    }
  }

  return result;
}