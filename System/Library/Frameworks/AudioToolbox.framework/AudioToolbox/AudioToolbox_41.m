uint64_t ecSUMO::fcn_tragic_window(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5)
{
  if (a5)
  {
    if (a4)
    {
      v5 = 0;
      for (i = 0; i != a4; ++i)
      {
        if (a3)
        {
          v7 = *(result + 200);
          v8 = *(a2 + 24 * (~i + a4));
          v9 = v5;
          v10 = a3;
          do
          {
            *v8++ = *(v7 + 4 * v9++) * *(result + 104);
            --v10;
          }

          while (v10);
        }

        v5 += a3;
      }
    }
  }

  else if (a4)
  {
    v11 = 0;
    v12 = a4 * a3 - 1;
    do
    {
      if (a3)
      {
        v13 = *(result + 200);
        v14 = *(a2 + 24 * (~v11 + a4));
        v15 = v12;
        v16 = a3;
        do
        {
          *v14++ = *(v13 + 4 * v15--) * *(result + 100);
          --v16;
        }

        while (v16);
      }

      ++v11;
      v12 -= a3;
    }

    while (v11 != a4);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECSUMO::CheckForAOPMode(BOOL,AudioBufferList const*)::$_0>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v1 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "AUECSUMO.cpp";
    v6 = 1024;
    v7 = 1443;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: AOPMode detected (non-realtime logging).\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::rt_message_call<AUECSUMO::CheckForAOPMode(BOOL,AudioBufferList const*)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECSUMO::SetParameter(AUECSUMO *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  ++*(this + 133);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  return 0;
}

uint64_t AUECSUMO::SetProperty(AUECSUMO *this, int a2, int a3, unsigned int a4, const __CFArray **a5, int a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 803800)
  {
    if (a2 != 603800)
    {
      if (a2 != 21)
      {
        return 4294956417;
      }

      if (a6 == 4)
      {
        result = 0;
        *(this + 528) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if ((*(this + 17) & 1) == 0)
    {
      if (a6 != 8)
      {
        return 4294956445;
      }

      applesauce::CF::convert_as<std::vector<float>,0>(&__p, *a5);
      if (v15 != 1)
      {
        return 4294956445;
      }

      v8 = __p;
      std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 99, __p, v14, (v14 - __p) >> 2);
      *(this + 757) = 1;
      if (!v8)
      {
        return 0;
      }

      result = v8;
LABEL_28:
      operator delete(result);
      return 0;
    }

    return 4294956447;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  if (a6 != 8)
  {
    return 4294956445;
  }

  v9 = *a5;
  Value = CFDictionaryGetValue(*a5, @"wolalatency");
  CFNumberGetValue(Value, kCFNumberFloat32Type, this + 688);
  v11 = CFDictionaryGetValue(v9, @"window");
  applesauce::CF::convert_as<std::vector<float>,0>(&__p, v11);
  if (v15 != 1)
  {
    return 4294956445;
  }

  std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 102, __p, v14, (v14 - __p) >> 2);
  *(this + 756) = 1;
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v12 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "AUECSUMO.cpp";
    v18 = 1024;
    v19 = 1137;
    _os_log_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: ********* Window Initialized *********\n", buf, 0x12u);
  }

LABEL_27:
  result = __p;
  if (__p)
  {
    goto LABEL_28;
  }

  return result;
}

void sub_1DDE513D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUECSUMO::GetProperty(AUECSUMO *this, int a2, int a3, unsigned int a4, unsigned int *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 103799)
  {
    if (a2 <= 4698)
    {
      switch(a2)
      {
        case 21:
          result = 0;
          v9 = *(this + 528);
          break;
        case 3700:
          result = 0;
          v9 = *(this + 376);
          break;
        case 3800:
LABEL_23:
          v13 = (this + 624);
          std::mutex::lock((this + 624));
          if (a2 == 103800)
          {
            CFArray = applesauce::CF::details::make_CFArrayRef<float>(this + 96);
            goto LABEL_36;
          }

          v24 = *(this + 96);
          v25 = *(this + 139) * *(this + 138) * *(this + 142);
          goto LABEL_50;
        default:
          return result;
      }

LABEL_53:
      *a5 = v9;
      return result;
    }

    if (a2 > 6698)
    {
      if (a2 == 6699)
      {
        v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v22)
        {
          v12 = 16;
          goto LABEL_44;
        }

LABEL_55:
        abort();
      }

      if (a2 != 7699)
      {
        return result;
      }

      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v16 & 1) == 0)
      {
        goto LABEL_55;
      }

      Parameter = ausdk::AUElement::GetParameter(v15, 0x11u);
      result = 0;
      v18 = Parameter == 0.0;
    }

    else
    {
      if (a2 != 4699)
      {
        if (a2 != 5699)
        {
          return result;
        }

        v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v11)
        {
          v12 = 22;
LABEL_44:
          v23 = ausdk::AUElement::GetParameter(v10, v12);
          result = 0;
          v9 = v23;
          goto LABEL_53;
        }

        goto LABEL_55;
      }

      v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_55;
      }

      v21 = ausdk::AUElement::GetParameter(v19, 0x11u);
      result = 0;
      v18 = v21 == 1.0;
    }

    v9 = v18;
    goto LABEL_53;
  }

  if (a2 <= 503799)
  {
    if (a2 > 303799)
    {
      if (a2 == 303800)
      {
        result = 0;
        v9 = *(this + 139);
      }

      else
      {
        if (a2 != 403800)
        {
          return result;
        }

        result = 0;
        v9 = *(this + 142);
      }

      goto LABEL_53;
    }

    if (a2 != 103800)
    {
      if (a2 != 203800)
      {
        return result;
      }

      result = 0;
      v9 = *(this + 138);
      goto LABEL_53;
    }

    goto LABEL_23;
  }

  if (a2 > 703799)
  {
    if (a2 == 703800 || a2 == 803800)
    {
      v13 = (this + 624);
      std::mutex::lock((this + 624));
      memcpy(*(this + 102), *(*(this + 95) + 200), 4 * *(*(this + 95) + 56) * *(*(this + 95) + 72));
      if (a2 == 803800)
      {
        CFArray = applesauce::CF::details::make_CFArrayRef<float>(this + 102);
        goto LABEL_36;
      }

      v24 = *(this + 102);
      v25 = *(this + 137) * *(this + 147);
      goto LABEL_50;
    }
  }

  else if (a2 == 503800 || a2 == 603800)
  {
    v13 = (this + 624);
    std::mutex::lock((this + 624));
    if (a2 == 603800)
    {
      CFArray = applesauce::CF::details::make_CFArrayRef<float>(this + 99);
LABEL_36:
      *a5 = CFArray;
LABEL_51:
      std::mutex::unlock(v13);
      return 0;
    }

    v24 = *(this + 99);
    v25 = 2 * (*(this + 138) * *(this + 139) * *(this + 146) + *(this + 138) * *(this + 139) * *(this + 146) * *(this + 137));
LABEL_50:
    memcpy(a5, v24, 4 * v25);
    goto LABEL_51;
  }

  return result;
}

uint64_t AUECSUMO::GetPropertyInfo(AUECSUMO *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 103799)
  {
    if (a2 <= 503799)
    {
      if (a2 <= 303799)
      {
        if (a2 != 103800)
        {
          v8 = 203800;
          goto LABEL_23;
        }

        *a6 = 0;
LABEL_31:
        v14 = 8;
        goto LABEL_35;
      }

      if (a2 != 303800)
      {
        v8 = 403800;
LABEL_23:
        if (a2 != v8)
        {
          return result;
        }

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (a2 <= 703799)
    {
      if (a2 == 503800)
      {
        *a6 = 0;
        v15 = *(this + 138) * *(this + 139) * *(this + 146);
        v14 = 8 * (v15 + v15 * *(this + 137));
        goto LABEL_35;
      }

      v9 = 603800;
      goto LABEL_28;
    }

    if (a2 != 703800)
    {
      v9 = 803800;
LABEL_28:
      if (a2 != v9)
      {
        return result;
      }

      *a6 = *(this + 17) ^ 1;
      goto LABEL_31;
    }

    *a6 = 0;
    v13 = *(this + 147);
    v12 = *(this + 137);
LABEL_34:
    v14 = 4 * v13 * v12;
    goto LABEL_35;
  }

  if (a2 <= 4698)
  {
    if (a2 == 21)
    {
      *a6 = 1;
      goto LABEL_25;
    }

    if (a2 == 3700)
    {
      goto LABEL_24;
    }

    if (a2 != 3800)
    {
      return result;
    }

    *a6 = 0;
    v10 = *(this + 138);
    v11 = *(this + 139);
    v12 = *(this + 142);
    v13 = v10 * v11;
    goto LABEL_34;
  }

  if (a2 > 6698)
  {
    if (a2 != 6699)
    {
      v8 = 7699;
      goto LABEL_23;
    }
  }

  else if (a2 != 4699)
  {
    v8 = 5699;
    goto LABEL_23;
  }

LABEL_24:
  *a6 = 0;
LABEL_25:
  v14 = 4;
LABEL_35:
  result = 0;
  *a5 = v14;
  return result;
}

uint64_t AUECSUMO::Reset(AUECSUMO *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v2 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUECSUMO.cpp";
    v6 = 1024;
    v7 = 478;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: Reset.\n", &v4, 0x12u);
  }

LABEL_9:
  if (*(this + 17) == 1)
  {
    AUECSUMO::DoCoreECInit(this);
  }

  return 0;
}

uint64_t *AUECSUMO::Cleanup(AUECSUMO *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v2 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
    {
      return std::unique_ptr<ecSUMO>::reset[abi:ne200100](this + 95, 0);
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUECSUMO.cpp";
    v6 = 1024;
    v7 = 413;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: Cleanup.\n", &v4, 0x12u);
  }

  return std::unique_ptr<ecSUMO>::reset[abi:ne200100](this + 95, 0);
}

uint64_t AUECSUMO::Initialize(AUECSUMO *this)
{
  v93 = *MEMORY[0x1E69E9840];
  if (AUECSUMOLogScope(void)::once != -1)
  {
    dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
  }

  if (AUECSUMOLogScope(void)::scope)
  {
    v2 = *AUECSUMOLogScope(void)::scope;
    if (!*AUECSUMOLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUECSUMO.cpp";
    v89 = 1024;
    v90 = 221;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: Initialize.\n", buf, 0x12u);
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v4)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = ausdk::AUScope::GetElement((this + 80), 2u);
  if (!v5)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = ausdk::AUScope::GetElement((this + 128), 1u);
  if (!v7)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = ausdk::AUScope::GetElement((this + 128), 2u);
  if (!v8)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v9 = ausdk::AUScope::GetElement((this + 128), 3u);
  if (!v9)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v10 = *(Element + 108);
  *(this + 138) = v10;
  v11 = *(v4 + 108);
  *(this + 139) = v11;
  *(this + 140) = *(v5 + 108);
  v12 = *(Element + 80);
  *(this + 136) = v12;
  if (v12 != *(v4 + 80))
  {
    return 4294956428;
  }

  v14 = *(v6 + 80);
  result = 4294956428;
  if (v14 == v12 && v14 == *(v8 + 80) && v14 == *(v7 + 80))
  {
    v15 = *(v6 + 108);
    if (v15 == v10 && v15 == *(v7 + 108) && v11 == *(v8 + 108) && *(v9 + 108) == v10)
    {
      v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v17)
      {
        *(this + 135) = ausdk::AUElement::GetParameter(v16, 0);
        v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v19)
        {
          *(this + 179) = ausdk::AUElement::GetParameter(v18, 1u);
          v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v21)
          {
            *(this + 180) = ausdk::AUElement::GetParameter(v20, 2u);
            v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v23)
            {
              *(this + 181) = ausdk::AUElement::GetParameter(v22, 3u);
              *(this + 137) = *(this + 84);
              v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v25)
              {
                *(this + 182) = ausdk::AUElement::GetParameter(v24, 4u);
                v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v27)
                {
                  *(this + 183) = ausdk::AUElement::GetParameter(v26, 5u);
                  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v29)
                  {
                    *(this + 184) = ausdk::AUElement::GetParameter(v28, 6u);
                    v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v31)
                    {
                      *(this + 185) = ausdk::AUElement::GetParameter(v30, 7u);
                      v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v33)
                      {
                        *(this + 186) = ausdk::AUElement::GetParameter(v32, 0xAu);
                        v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v35)
                        {
                          *(this + 692) = ausdk::AUElement::GetParameter(v34, 0x15u) != 0.0;
                          v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v37)
                          {
                            *(this + 693) = ausdk::AUElement::GetParameter(v36, 0x17u) != 0.0;
                            v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v39)
                            {
                              *(this + 174) = ausdk::AUElement::GetParameter(v38, 0x18u);
                              v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v41)
                              {
                                *(this + 175) = ausdk::AUElement::GetParameter(v40, 0x19u);
                                v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v43)
                                {
                                  *(this + 712) = ausdk::AUElement::GetParameter(v42, 0x1Du) != 0.0;
                                  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v45)
                                  {
                                    *(this + 713) = ausdk::AUElement::GetParameter(v44, 0x1Eu) != 0.0;
                                    LODWORD(v46) = *(this + 139);
                                    v47 = (exp2(v46) + -1.0);
                                    v48 = *(this + 186);
                                    if (v48 > v47)
                                    {
                                      *(this + 186) = v48 & v47;
                                      v49 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if ((v50 & 1) == 0)
                                      {
                                        goto LABEL_81;
                                      }

                                      ausdk::AUElement::SetParameter(v49, 0xAu, *(this + 186));
                                    }

                                    v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if (v52)
                                    {
                                      *(this + 187) = ausdk::AUElement::GetParameter(v51, 0xBu);
                                      v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if (v54)
                                      {
                                        Parameter = ausdk::AUElement::GetParameter(v53, 0xCu);
                                        *(this + 147) = Parameter;
                                        if (Parameter <= 1)
                                        {
                                          *(this + 147) = 2;
                                          v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if ((v57 & 1) == 0)
                                          {
                                            goto LABEL_81;
                                          }

                                          ausdk::AUElement::SetParameter(v56, 0xCu, *(this + 147));
                                        }

                                        v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                        if (v59)
                                        {
                                          *(this + 188) = ausdk::AUElement::GetParameter(v58, 0xDu);
                                          v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if (v61)
                                          {
                                            *(this + 148) = ausdk::AUElement::GetParameter(v60, 0xEu);
                                            v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                            if (v63)
                                            {
                                              *(this + 149) = ausdk::AUElement::GetParameter(v62, 0x12u);
                                              v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                              if (v65)
                                              {
                                                *(this + 150) = ausdk::AUElement::GetParameter(v64, 0x13u);
                                                v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                if (v67)
                                                {
                                                  *(this + 151) = ausdk::AUElement::GetParameter(v66, 0x14u);
                                                  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                  if (v69)
                                                  {
                                                    v70 = ausdk::AUElement::GetParameter(v68, 8u);
                                                    *(this + 143) = v70;
                                                    v71 = *(this + 137);
                                                    v72 = *(this + 136);
                                                    v73 = v71;
                                                    v74 = v71 * vcvtps_u32_f32(((v72 * *(this + 135)) / 1000.0) / v71);
                                                    *(this + 141) = v74;
                                                    if (v74 <= v71)
                                                    {
                                                      v74 = 2 * v71;
                                                      *(this + 141) = 2 * v71;
                                                      *(this + 135) = (((2 * v71) / v72) * 1000.0);
                                                    }

                                                    v75 = v71 * vcvtps_u32_f32(((v72 * v70) / 1000.0) / v73);
                                                    *(this + 142) = v75;
                                                    if (v75 <= v71)
                                                    {
                                                      v75 = 2 * v71;
                                                      *(this + 142) = 2 * v71;
                                                      *(this + 143) = (((2 * v71) / v72) * 1000.0);
                                                    }

                                                    if (v75 <= v74)
                                                    {
                                                      v76 = v74;
                                                    }

                                                    else
                                                    {
                                                      *(this + 142) = v74;
                                                      v76 = v74;
                                                      *(this + 143) = ((v74 / v72) * 1000.0);
                                                    }

                                                    *(this + 146) = vcvtps_u32_f32(v76 / v73);
                                                    v77 = v71 * vcvtps_u32_f32(((v72 * *(this + 175)) / 1000.0) / v73);
                                                    *(this + 176) = v77;
                                                    if (v77 <= v71)
                                                    {
                                                      *(this + 176) = v71;
                                                      *(this + 175) = ((v73 / v72) * 1000.0);
                                                      v78 = v71;
                                                    }

                                                    else
                                                    {
                                                      v78 = v77;
                                                    }

                                                    *(this + 177) = vcvtps_u32_f32(v78 / v73);
                                                    *(this + 134) = *(this + 133);
                                                    v79 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                    if (v80)
                                                    {
                                                      *(this + 72) = ausdk::AUElement::GetParameter(v79, 9u);
                                                      *(this + 38) = 0u;
                                                      v87 = 0;
                                                      AppFloatValue = CACFPreferencesGetAppFloatValue(@"ecsumo_log_period_in_seconds", @"com.apple.coreaudio", &v87);
                                                      if (!v87)
                                                      {
                                                        goto LABEL_77;
                                                      }

                                                      v83 = AppFloatValue;
                                                      if (v83 <= 0.0)
                                                      {
                                                        goto LABEL_77;
                                                      }

                                                      *(this + 72) = v83;
                                                      v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                                      if (v85)
                                                      {
                                                        ausdk::AUElement::SetParameter(v84, 9u, v83);
                                                        if (AUECSUMOLogScope(void)::once != -1)
                                                        {
                                                          dispatch_once(&AUECSUMOLogScope(void)::once, &__block_literal_global_12643);
                                                        }

                                                        if (AUECSUMOLogScope(void)::scope)
                                                        {
                                                          v86 = *AUECSUMOLogScope(void)::scope;
                                                          if (!*AUECSUMOLogScope(void)::scope)
                                                          {
                                                            goto LABEL_77;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v86 = MEMORY[0x1E69E9C10];
                                                        }

                                                        v81 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
                                                        if (v81)
                                                        {
                                                          buf[0] = 136315650;
                                                          *&buf[1] = "AUECSUMO.cpp";
                                                          v89 = 1024;
                                                          v90 = 336;
                                                          v91 = 2048;
                                                          v92 = v83;
                                                          _os_log_impl(&dword_1DDB85000, v86, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECSUMO: Using logPeriod of (%g)s as specified in defaults write ecsumo_log_period_in_seconds.\n", buf, 0x1Cu);
                                                        }

LABEL_77:
                                                        if (!*(this + 105) && *(this + 72) > 0.0)
                                                        {
                                                          caulk::concurrent::messenger::shared_logging_priority(v81);
                                                          std::make_unique[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy,caulk::thread::attributes &,0>();
                                                        }

                                                        AUECSUMO::DoCoreECInit(this);
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
                  }
                }
              }
            }
          }
        }
      }

LABEL_81:
      abort();
    }
  }

  return result;
}

void AUECSUMO::~AUECSUMO(AUECSUMO *this)
{
  AUECSUMO::~AUECSUMO(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59270B8;
  AUECSUMO::Cleanup(this);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 105, 0);
  v2 = *(this + 102);
  if (v2)
  {
    *(this + 103) = v2;
    operator delete(v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    *(this + 100) = v3;
    operator delete(v3);
  }

  v4 = *(this + 96);
  if (v4)
  {
    *(this + 97) = v4;
    operator delete(v4);
  }

  std::unique_ptr<ecSUMO>::reset[abi:ne200100](this + 95, 0);
  std::mutex::~mutex((this + 624));

  ausdk::AUBase::~AUBase(this);
}

void ScottySTFTUpmixer::ProcessUpmixer(ScottySTFTUpmixer *this, float **a2, const float **a3)
{
  v3 = a2;
  v279 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1 && (*(this + 9) & 1) != 0)
  {
    v277 = 0u;
    v278 = 0u;
    *v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    *v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    *v267 = 0u;
    v268 = 0u;
    v5 = *(this + 6);
    if (v5 && (Crossover2f::IsLowCrossoverEnabled(v5) || Crossover2f::IsHighCrossoverEnabled(*(this + 6))))
    {
      if (*(this + 81))
      {
        v6 = 0;
        do
        {
          v275[v6] = (*(this + 93) + 4 * (*(this + 86) * v6));
          if (Crossover2f::IsLowCrossoverEnabled(*(this + 6)))
          {
            v7 = (*(this + 96) + 4 * (*(this + 86) * v6));
          }

          else
          {
            v7 = 0;
          }

          v271[v6] = v7;
          if (Crossover2f::IsHighCrossoverEnabled(*(this + 6)))
          {
            v8 = (*(this + 99) + 4 * (*(this + 86) * v6));
          }

          else
          {
            v8 = 0;
          }

          v267[v6++] = v8;
          v9 = *(this + 81);
        }

        while (v6 < v9);
      }

      else
      {
        LODWORD(v9) = 0;
      }

      Crossover2f::Process(*(this + 6), v3, v271, v267, v275, v9, *(this + 86), *(this + 32));
      __N = (this + 352);
      v247 = (this + 344);
      if (!*(this + 88))
      {
        goto LABEL_31;
      }

      v16 = *(this + 85);
      v17 = *(this + 86);
    }

    else
    {
      v11 = *(this + 88);
      if (!v11)
      {
        v247 = (this + 344);
        __N = (this + 352);
        goto LABEL_31;
      }

      v12 = v267;
      v13 = v271;
      v14 = v275;
      do
      {
        v15 = *v3++;
        *v14++ = v15;
        *v13++ = 0;
        *v12++ = 0;
        --v11;
      }

      while (v11);
      v16 = *(this + 85);
      v247 = (this + 344);
      v17 = *(this + 86);
      __N = (this + 352);
    }

    v18 = 0;
    v19 = 0;
    v20 = v16 - v17;
    __n = 4 * (v16 - v17);
    v21 = 4 * v17;
    v22 = (this + 1928);
    do
    {
      v23 = v17;
      memcpy((*(this + 81) + 4 * v18), (*(this + 81) + 4 * (v17 + v18)), __n);
      memcpy((*(this + 81) + 4 * (v20 + v18)), v275[v19], v21);
      MEMORY[0x1E12BE7F0](*(this + 81) + 4 * (*(this + 85) * v19), 1, *(this + 226), 1, *(this + 118), 1);
      vDSP_ctoz(*(this + 118), 2, v22, 1, *(this + 84));
      v25 = *(this + 80);
      if (v25)
      {
        MultiRadixRealFFT::RealInPlaceTransform(v25, v22, 1, v24);
      }

      *&__A.realp = 1.0 / (2 * v16);
      MEMORY[0x1E12BE940](v22->realp, 1, &__A, v22->realp, 1, *(this + 84));
      MEMORY[0x1E12BE940](v22->imagp, 1, &__A, v22->imagp, 1, *(this + 84));
      imagp = v22->imagp;
      *(this + v19 + 228) = *imagp;
      *imagp = 0.0;
      ++v19;
      v18 += v16;
      ++v22;
      v17 = v23;
    }

    while (v19 < *(this + 88));
LABEL_31:
    if (*(this + 2440) == 1)
    {
      *(this + 146) = *(this + 113);
      v27 = *(this + 436);
      *(this + 552) = *(this + 420);
      *(this + 568) = v27;
      v28 = *(this + 372);
      *(this + 488) = *(this + 356);
      *(this + 504) = v28;
      v29 = *(this + 404);
      *(this + 520) = *(this + 388);
      *(this + 536) = v29;
      v30 = *(this + 340);
      *(this + 456) = *(this + 324);
      *(this + 472) = v30;
      ScottySTFTUpmixer::calculate_pan_tables(this);
      ScottySTFTUpmixer::calculate_smoothing_windows(this, *(this + 138), *(this + 103), *(this + 104), 0);
      *(this + 2440) = 0;
      goto LABEL_99;
    }

    v31 = *(this + 148);
    v32 = *(this + 90);
    v33 = *(this + 123);
    if (v33 != v32)
    {
      v34 = ((1.0 - v31) * v32) + (v31 * v33);
      if (vabds_f32(v34, v32) >= ((fabsf(v32) * 0.01) + 0.001))
      {
        v32 = v34;
      }

      *(this + 123) = v32;
    }

    v35 = *(this + 98);
    v36 = *(this + 131);
    if (v36 != v35)
    {
      v37 = ((1.0 - v31) * v35) + (v31 * v36);
      if (vabds_f32(v37, v35) >= ((fabsf(v35) * 0.01) + 0.001))
      {
        v35 = v37;
      }

      *(this + 131) = v35;
    }

    v38 = *(this + 96);
    v39 = *(this + 129);
    if (v39 != v38)
    {
      v40 = ((1.0 - v31) * v38) + (v31 * v39);
      if (vabds_f32(v40, v38) >= ((fabsf(v38) * 0.01) + 0.001))
      {
        v38 = v40;
      }

      *(this + 129) = v38;
    }

    v41 = *(this + 97);
    v42 = *(this + 130);
    if (v42 != v41)
    {
      v43 = ((1.0 - v31) * v41) + (v31 * v42);
      if (vabds_f32(v43, v41) >= ((fabsf(v41) * 0.01) + 0.001))
      {
        v41 = v43;
      }

      *(this + 130) = v41;
    }

    v44 = *(this + 95);
    v45 = *(this + 128);
    if (v45 != v44)
    {
      v46 = ((1.0 - v31) * v44) + (v31 * v45);
      if (vabds_f32(v46, v44) >= ((fabsf(v44) * 0.01) + 0.001))
      {
        v44 = v46;
      }

      *(this + 128) = v44;
    }

    v47 = *(this + 83);
    v48 = *(this + 116);
    if (v48 != v47)
    {
      v49 = ((1.0 - v31) * v47) + (v31 * v48);
      if (vabds_f32(v49, v47) >= ((fabsf(v47) * 0.01) + 0.001))
      {
        v47 = v49;
      }

      *(this + 116) = v47;
    }

    v50 = *(this + 93);
    v51 = *(this + 126);
    if (v51 != v50)
    {
      v52 = ((1.0 - v31) * v50) + (v31 * v51);
      if (vabds_f32(v52, v50) < ((fabsf(v50) * 0.01) + 0.001))
      {
        v52 = *(this + 93);
      }

      *(this + 126) = v52;
    }

    v53 = *(this + 94);
    v54 = *(this + 127);
    if (v54 != v53)
    {
      v55 = ((1.0 - v31) * v53) + (v31 * v54);
      if (vabds_f32(v55, v53) < ((fabsf(v53) * 0.01) + 0.001))
      {
        v55 = *(this + 94);
      }

      *(this + 127) = v55;
    }

    v56 = v51 != v50;
    if (v54 != v53)
    {
      v56 = 1;
    }

    v57 = *(this + 106);
    v58 = *(this + 139);
    if (v58 != v57)
    {
      v59 = ((1.0 - v31) * v57) + (v31 * v58);
      if (vabds_f32(v59, v57) < ((fabsf(v57) * 0.01) + 0.001))
      {
        v59 = *(this + 106);
      }

      *(this + 139) = v59;
    }

    if (v58 != v57)
    {
      v56 = 1;
    }

    v60 = *(this + 107);
    v61 = *(this + 140);
    if (v61 != v60)
    {
      v62 = ((1.0 - v31) * v60) + (v31 * v61);
      if (vabds_f32(v62, v60) < ((fabsf(v60) * 0.01) + 0.001))
      {
        v62 = *(this + 107);
      }

      *(this + 140) = v62;
    }

    if (v61 != v60)
    {
      v56 = 1;
    }

    v63 = *(this + 108);
    v64 = *(this + 141);
    if (v64 != v63)
    {
      v65 = ((1.0 - v31) * v63) + (v31 * v64);
      if (vabds_f32(v65, v63) < ((fabsf(v63) * 0.01) + 0.001))
      {
        v65 = *(this + 108);
      }

      *(this + 141) = v65;
    }

    if (v64 != v63)
    {
      v56 = 1;
    }

    v66 = *(this + 109);
    v67 = *(this + 142);
    if (v67 != v66)
    {
      v68 = ((1.0 - v31) * v66) + (v31 * v67);
      if (vabds_f32(v68, v66) < ((fabsf(v66) * 0.01) + 0.001))
      {
        v68 = *(this + 109);
      }

      *(this + 142) = v68;
    }

    v69 = *(this + 110);
    v70 = *(this + 143);
    if (v70 == v69)
    {
      if (((v67 == v66) & ~v56) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v71 = ((1.0 - v31) * v69) + (v31 * v70);
      if (vabds_f32(v71, v69) < ((fabsf(v69) * 0.01) + 0.001))
      {
        v71 = *(this + 110);
      }

      *(this + 143) = v71;
    }

    ScottySTFTUpmixer::calculate_pan_tables(this);
LABEL_95:
    v72 = *(this + 105);
    v73 = *(this + 138);
    if (v73 != v72)
    {
      v74 = ((1.0 - v31) * v72) + (v31 * v73);
      if (vabds_f32(v74, v72) >= ((fabsf(v72) * 0.01) + 0.001))
      {
        v72 = v74;
      }

      *(this + 138) = v72;
      ScottySTFTUpmixer::calculate_smoothing_windows(this, v72, *(this + 103), *(this + 104), 0);
    }

LABEL_99:
    v75 = atomic_load(this + 147);
    if (v75 != *(this + 113))
    {
      *(this + 113) = v75;
      v76 = *(this + 5);
      if (v76)
      {
        v77 = atomic_load((v76 + 36));
        *(this + 103) = v77;
        v78 = COERCE_FLOAT(atomic_load((*(this + 5) + 40)));
        *(this + 104) = v78;
        ScottySTFTUpmixer::calculate_smoothing_windows(this, *(this + 138), *(this + 103), v78, 0);
        v79 = atomic_load((*(this + 5) + 60));
        *(this + 99) = v79;
        v80 = atomic_load((*(this + 5) + 64));
        *(this + 100) = v80;
        v81 = atomic_load((*(this + 5) + 68));
        *(this + 101) = v81;
        v82 = atomic_load((*(this + 5) + 72));
        *(this + 102) = v82;
        ScottySTFTUpmixer::calculate_tc_vectors(this);
      }
    }

    if (*(this + 448) == 1 && *(this + 4) == 2)
    {
      goto LABEL_239;
    }

    v83 = *(this + 84);
    v265 = -1.0;
    v266 = 1.0;
    __na = *(this + 121);
    v84 = *(this + 130);
    __E = *(this + 127);
    __D = *(this + 124);
    __A.realp = __E;
    __A.imagp = v84;
    v237 = v84;
    v235 = *(this + 160);
    v85 = *(this + 223);
    v86 = *(this + 187);
    MEMORY[0x1E12BE910](v85, 1, &v265, &v266, v86, 1, v83);
    v87 = *(this + 190);
    v88 = *(this + 196);
    v89 = *(this + 184);
    __C.realp = *(this + 193);
    __C.imagp = v89;
    vDSP_zvcmul((this + 1928), 1, (this + 1928), 1, &__C, 1, v83);
    v90 = *(this + 84);
    if (v90)
    {
      v91 = 0;
      realp = __C.realp;
      v93 = v87;
      do
      {
        v94 = *(*(this + 220) + 4 * v91);
        if (v94 > 1)
        {
          vDSP_dotpr(&realp[*(*(this + 217) + 4 * v91)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v91)), 1, v93, v94);
          v90 = *(this + 84);
        }

        else
        {
          *v93 = realp[v91];
        }

        ++v91;
        ++v93;
      }

      while (v91 < v90);
    }

    vDSP_vmma(v86, 1, v87, 1, v85, 1, __na, 1, __na, 1, v83);
    v95 = *(this + 184);
    v259.realp = v88;
    v259.imagp = v95;
    vDSP_zvcmul((this + 1944), 1, (this + 1944), 1, &v259, 1, v83);
    v96 = *(this + 84);
    if (v96)
    {
      v97 = 0;
      v98 = v259.realp;
      v99 = v87;
      do
      {
        v100 = *(*(this + 220) + 4 * v97);
        if (v100 > 1)
        {
          vDSP_dotpr(&v98[*(*(this + 217) + 4 * v97)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v97)), 1, v99, v100);
          v96 = *(this + 84);
        }

        else
        {
          *v99 = v98[v97];
        }

        ++v97;
        ++v99;
      }

      while (v97 < v96);
    }

    vDSP_vmma(v86, 1, v87, 1, v85, 1, __D, 1, __D, 1, v83);
    v101 = *(this + 184);
    v258.realp = *(this + 181);
    v258.imagp = v101;
    vDSP_zvcmul((this + 1928), 1, (this + 1944), 1, &v258, 1, v83);
    v102 = *(this + 84);
    if (v102)
    {
      v103 = 0;
      v104 = v258.realp;
      v105 = v87;
      do
      {
        v106 = *(*(this + 220) + 4 * v103);
        if (v106 > 1)
        {
          vDSP_dotpr(&v104[*(*(this + 217) + 4 * v103)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v103)), 1, v105, v106);
          v102 = *(this + 84);
        }

        else
        {
          *v105 = v104[v103];
        }

        ++v103;
        ++v105;
      }

      while (v103 < v102);
    }

    vDSP_vmma(v86, 1, v87, 1, v85, 1, __E, 1, __E, 1, v83);
    v107 = *(this + 84);
    if (v107)
    {
      v108 = 0;
      v109 = v258.imagp;
      v110 = v87;
      do
      {
        v111 = *(*(this + 220) + 4 * v108);
        if (v111 > 1)
        {
          vDSP_dotpr(&v109[*(*(this + 217) + 4 * v108)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v108)), 1, v110, v111);
          v107 = *(this + 84);
        }

        else
        {
          *v110 = v109[v108];
        }

        ++v108;
        ++v110;
      }

      while (v108 < v107);
    }

    vDSP_vmma(v86, 1, v87, 1, v85, 1, v237, 1, v237, 1, v83);
    vDSP_zvphas(&__A, 1, *(this + 157), 1, v83);
    v263 = 1065353216;
    v264 = 4.0;
    __B = 0.0;
    v262 = 0.5;
    v257 = v83;
    v112 = *(this + 181);
    vDSP_zvmags(&__A, 1, v112, 1, v83);
    v113 = *(this + 184);
    MEMORY[0x1E12BE9A0](__D, 1, __na, 1, v113, 1, v83);
    MEMORY[0x1E12BE990](v113, 1, v113, 1, v83);
    v114 = *(this + 187);
    MEMORY[0x1E12BE8F0](v112, 1, &v264, v113, 1, v114, 1, v83);
    vvsqrtf(v114, v114, &v257);
    v115 = *(this + 181);
    MEMORY[0x1E12BE5D0](__na, 1, __D, 1, v115, 1, v83);
    vDSP_vsbsm(v115, 1, v114, 1, &v262, v115, 1, v83);
    vDSP_vthr(v115, 1, &__B, v115, 1, v83);
    if ((*(this + 596) & 0xC0) != 0 && *(this + 129) > 0.0)
    {
      v116 = *(this + 184);
      MEMORY[0x1E12BE7E0](__na, 1, __D, 1, &kEPS, v116, 1, v83);
      vvsqrtf(v116, v116, &v257);
      v117 = *(this + 187);
      vDSP_vdiv(v116, 1, __A.realp, 1, v117, 1, v83);
      v118 = *(this + 190);
      vDSP_vdiv(v116, 1, __A.imagp, 1, v118, 1, v83);
      v256.realp = v117;
      v256.imagp = v118;
      v119 = *(this + 193);
      vDSP_zvmags(&v256, 1, v119, 1, v83);
      v255 = *(this + 130);
      v254 = (v255 * v255) + (v255 * -2.0);
      v120 = *(this + 193);
      MEMORY[0x1E12BE910](v119, 1, &v254, &v263, v120, 1, v83);
      MEMORY[0x1E12BE7E0](__na, 1, v120, 1, &kEPS, *(this + 139), 1, v83);
      v121 = (this + 1112);
      vDSP_vdiv(*(this + 139), 1, v115, 1, *(this + 139), 1, v83);
      vDSP_vthr(*v121, 1, &__B, *v121, 1, v83);
      vvsqrtf(*v121, *v121, &v257);
      MEMORY[0x1E12BE7E0](__D, 1, v120, 1, &kEPS, *(this + 148), 1, v83);
      v122 = (this + 1184);
      vDSP_vdiv(*(this + 148), 1, v115, 1, *(this + 148), 1, v83);
      vDSP_vthr(*v122, 1, &__B, *v122, 1, v83);
      vvsqrtf(*v122, *v122, &v257);
      MEMORY[0x1E12BE940](v118, 1, &v255, v118, 1, v83);
      v255 = -v255;
      MEMORY[0x1E12BE940](v117, 1, &v255, v117, 1, v83);
      MEMORY[0x1E12BE7F0](*(this + 148), 1, v117, 1, *(this + 142), 1, v83);
      MEMORY[0x1E12BE7F0](*(this + 148), 1, v118, 1, *(this + 145), 1, v83);
      MEMORY[0x1E12BE810](v118, 1, v118, 1, v83);
      MEMORY[0x1E12BE7F0](*(this + 139), 1, v117, 1, *(this + 151), 1, v83);
      MEMORY[0x1E12BE7F0](*(this + 139), 1, v118, 1, *(this + 154), 1, v83);
    }

    else
    {
      vDSP_vclr(*(this + 139), 1, (*(this + 140) - *(this + 139)) >> 2);
      vDSP_vclr(*(this + 142), 1, (*(this + 143) - *(this + 142)) >> 2);
      vDSP_vclr(*(this + 145), 1, (*(this + 146) - *(this + 145)) >> 2);
      vDSP_vclr(*(this + 151), 1, (*(this + 152) - *(this + 151)) >> 2);
      vDSP_vclr(*(this + 154), 1, (*(this + 155) - *(this + 154)) >> 2);
    }

    if (*(this + 126) <= 0.0 && *(this + 127) <= 0.0 && *(this + 129) <= 0.0)
    {
      vDSP_vfill(&v263, *(this + 133), 1, v83);
      vDSP_vfill(&v263, *(this + 136), 1, v83);
    }

    else
    {
      v123 = *(this + 184);
      MEMORY[0x1E12BE9A0](v115, 1, __na, 1, v123, 1, v83);
      vDSP_vthr(v123, 1, &__B, v123, 1, v83);
      v124 = *(this + 187);
      MEMORY[0x1E12BE9A0](v115, 1, __D, 1, v124, 1, v83);
      vDSP_vthr(v124, 1, &__B, v124, 1, v83);
      if (*(this + 126) > 0.0 || *(this + 127) > 0.0)
      {
        LODWORD(v256.realp) = *(this + 131);
        v255 = 1.0 - *&v256.realp;
        v125 = *(this + 190);
        MEMORY[0x1E12BE910](v123, 1, &v255, &kEPS, v125, 1, v83);
        MEMORY[0x1E12BE8F0](__na, 1, &v256, v125, 1, v125, 1, v83);
        v126 = *(this + 193);
        MEMORY[0x1E12BE910](v124, 1, &v255, &kEPS, v126, 1, v83);
        MEMORY[0x1E12BE8F0](__D, 1, &v256, v126, 1, v126, 1, v83);
        vDSP_vdiv(v125, 1, v126, 1, v235, 1, v83);
      }

      MEMORY[0x1E12BE8A0](__na, 1, &kEPS, __na, 1, v83);
      vDSP_vdiv(__na, 1, v123, 1, *(this + 133), 1, v83);
      vvsqrtf(*(this + 133), *(this + 133), &v257);
      MEMORY[0x1E12BE8A0](__D, 1, &kEPS, __D, 1, v83);
      vDSP_vdiv(__D, 1, v124, 1, *(this + 136), 1, v83);
      vvsqrtf(*(this + 136), *(this + 136), &v257);
    }

    v127 = *(this + 84);
    v128 = *(this + 160);
    v129 = *(this + 157);
    v130 = *(this + 163);
    v234 = *(this + 169);
    v236 = *(this + 172);
    v238 = *(this + 166);
    v131 = *(this + 175);
    v132 = *(this + 178);
    LODWORD(__C.realp) = 1065353216;
    LODWORD(v259.realp) = 1056964608;
    LODWORD(v258.realp) = 0;
    LODWORD(v256.realp) = -1082130432;
    v133 = *(this + 129) * *(this + 129);
    v265 = 1.0 - v133;
    v266 = v133;
    v264 = v133 + -1.0;
    v263 = v127;
    __Da = *(this + 181);
    v134 = *(this + 184);
    v135 = *(this + 187);
    __nb = *(this + 190);
    v136 = *(this + 193);
    v137 = *(this + 196);
    if (*(this + 126) <= 0.0 && (v138 = *(this + 127), v138 <= 0.0))
    {
      if (*(this + 257) && *(this + 258))
      {
        MEMORY[0x1E12BE990](*(this + 133), 1, *(this + 193), 1, v127);
        MEMORY[0x1E12BE910](v136, 1, &v266, &v265, v136, 1, v127);
        vvsqrtf(v136, v136, &v263);
        vDSP_zrvmul((this + 1928), 1, v136, 1, (this + 2056), 1, v127);
      }

      if (*(this + 259) && *(this + 260))
      {
        MEMORY[0x1E12BE990](*(this + 136), 1, v136, 1, v127);
        MEMORY[0x1E12BE910](v136, 1, &v266, &v265, v136, 1, v127);
        vvsqrtf(v136, v136, &v263);
        vDSP_zrvmul((this + 1944), 1, v136, 1, (this + 2072), 1, v127);
      }

      v151 = *(this + 261);
      if (v151 && *(this + 262))
      {
        vDSP_vclr(v151, 1, v127);
        vDSP_vclr(*(this + 262), 1, v127);
      }

      v152 = *(this + 263);
      if (v152 && *(this + 264) && *(this + 4) == 1)
      {
        vDSP_vclr(v152, 1, v127);
        vDSP_vclr(*(this + 264), 1, v127);
      }

      v153 = *(this + 265);
      if (v153 && *(this + 266))
      {
        vDSP_vclr(v153, 1, v127);
        vDSP_vclr(*(this + 266), 1, v127);
      }

      v154 = *(this + 267);
      if (!v154 || !*(this + 268))
      {
        goto LABEL_235;
      }
    }

    else
    {
      v232 = v132;
      v233 = v131;
      vDSP_vdbcon(v128, 1, &__C, v135, 1, v127, 0);
      LODWORD(__A.realp) = 1011666125;
      MEMORY[0x1E12BE910](v135, 1, &__A, &v259, v135, 1, v127);
      vDSP_vclip(v135, 1, &v258, &__C, v135, 1, v127);
      MEMORY[0x1E12BE910](v135, 1, &v256, &__C, __Da, 1, v127);
      vDSP_vclip(__Da, 1, &v258, &__C, __Da, 1, v127);
      vDSP_vabs(v129, 1, v134, 1, v127);
      MEMORY[0x1E12BE910](v134, 1, &std::numbers::inv_pi_v<float>, &v258, v134, 1, v127);
      vDSP_vclip(v134, 1, &v258, &__C, v134, 1, v127);
      v243 = *(this + 208);
      MEMORY[0x1E12BE910]();
      if (*(this + 596))
      {
        PV_Apply_LUT2D<81u,91u>(__Da, v134, v136, v127, *(this + 199), v137);
        MEMORY[0x1E12BE990](*(this + 133), 1, v137, 1, v127);
        MEMORY[0x1E12BE7F0](v136, 1, v137, 1, v136, 1, v127);
        MEMORY[0x1E12BE910](v137, 1, &v264, &v265, v137, 1, v127);
        MEMORY[0x1E12BE5D0](v136, 1, v137, 1, v136, 1, v127);
        vvsqrtf(v137, v136, &v263);
        v139 = *(this + 84);
        if (v139)
        {
          v140 = 0;
          v141 = v136;
          do
          {
            v142 = *(*(this + 220) + 4 * v140);
            if (v142 > 1)
            {
              vDSP_dotpr(&v137[*(*(this + 217) + 4 * v140)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v140)), 1, v141, v142);
              v139 = *(this + 84);
            }

            else
            {
              *v141 = v137[v140];
            }

            ++v140;
            ++v141;
          }

          while (v140 < v139);
        }

        vDSP_vmma(__nb, 1, v136, 1, v243, 1, v130, 1, v130, 1, v127);
        if (*(this + 257) && *(this + 258))
        {
          vDSP_zrvmul((this + 1928), 1, v130, 1, (this + 2056), 1, v127);
        }
      }

      if ((*(this + 596) & 2) != 0)
      {
        PV_Apply_LUT2D<81u,91u>(v135, v134, v136, v127, *(this + 199), v137);
        MEMORY[0x1E12BE990](*(this + 136), 1, v137, 1, v127);
        MEMORY[0x1E12BE7F0](v136, 1, v137, 1, v136, 1, v127);
        MEMORY[0x1E12BE910](v137, 1, &v264, &v265, v137, 1, v127);
        MEMORY[0x1E12BE5D0](v136, 1, v137, 1, v136, 1, v127);
        vvsqrtf(v137, v136, &v263);
        v143 = *(this + 84);
        if (v143)
        {
          v144 = 0;
          v145 = v136;
          do
          {
            v146 = *(*(this + 220) + 4 * v144);
            if (v146 > 1)
            {
              vDSP_dotpr(&v137[*(*(this + 217) + 4 * v144)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v144)), 1, v145, v146);
              v143 = *(this + 84);
            }

            else
            {
              *v145 = v137[v144];
            }

            ++v144;
            ++v145;
          }

          while (v144 < v143);
        }

        vDSP_vmma(__nb, 1, v136, 1, v243, 1, v238, 1, v238, 1, v127);
        if (*(this + 259) && *(this + 260))
        {
          vDSP_zrvmul((this + 1944), 1, v238, 1, (this + 2072), 1, v127);
        }
      }

      if ((*(this + 596) & 0xC) != 0)
      {
        v138 = *(this + 126);
        if (v138 <= 0.0)
        {
          v155 = *(this + 261);
          if (v155 && *(this + 262))
          {
            vDSP_vclr(v155, 1, v127);
            vDSP_vclr(*(this + 262), 1, v127);
          }

          v156 = *(this + 263);
          if (v156 && *(this + 264) && *(this + 4) == 1)
          {
            vDSP_vclr(v156, 1, v127);
            vDSP_vclr(*(this + 264), 1, v127);
          }
        }

        else
        {
          PV_Apply_LUT2D<81u,91u>(v135, v134, v137, v127, *(this + 202), v137);
          v147 = *(this + 84);
          if (v147)
          {
            v148 = 0;
            v149 = v136;
            do
            {
              v150 = *(*(this + 220) + 4 * v148);
              if (v150 > 1)
              {
                vDSP_dotpr(&v137[*(*(this + 217) + 4 * v148)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v148)), 1, v149, v150);
                v147 = *(this + 84);
              }

              else
              {
                *v149 = v137[v148];
              }

              ++v148;
              ++v149;
            }

            while (v148 < v147);
          }

          MEMORY[0x1E12BE940](v136, 1, this + 492, v136, 1, v127);
          v262 = 1.0 - *(this + 131);
          MEMORY[0x1E12BE910](*(this + 133), 1, &v262, this + 524, v137, 1, v127);
          MEMORY[0x1E12BE7F0](v136, 1, v137, 1, v137, 1, v127);
          vDSP_vmma(__nb, 1, v137, 1, v243, 1, v234, 1, v234, 1, v127);
          MEMORY[0x1E12BE910](*(this + 136), 1, &v262, this + 524, v137, 1, v127);
          MEMORY[0x1E12BE7F0](v136, 1, v137, 1, v137, 1, v127);
          vDSP_vmma(__nb, 1, v137, 1, v243, 1, v236, 1, v236, 1, v127);
          if (*(this + 91) == 1 || !*(this + 4))
          {
            if (*(this + 261))
            {
              if (*(this + 262))
              {
                vDSP_zrvmul((this + 1928), 1, v234, 1, (this + 2088), 1, v127);
                MEMORY[0x1E12BE780](*(this + 243), 1, v236, 1, *(this + 261), 1, *(this + 261), 1, v127);
                MEMORY[0x1E12BE780](*(this + 244), 1, v236, 1, *(this + 262), 1, *(this + 262), 1, v127);
                __B = 0.70711;
                MEMORY[0x1E12BE940](*(this + 261), 1, &__B, *(this + 261), 1, v127);
                MEMORY[0x1E12BE940](*(this + 262), 1, &__B, *(this + 262), 1, v127);
                v157 = *(this + 263);
                if (v157)
                {
                  if (*(this + 264) && *(this + 4) == 1)
                  {
                    memcpy(v157, *(this + 261), 4 * v127);
                    memcpy(*(this + 264), *(this + 262), 4 * v127);
                  }
                }
              }
            }
          }

          else
          {
            if (*(this + 261) && *(this + 262))
            {
              vDSP_zrvmul((this + 1928), 1, v234, 1, (this + 2088), 1, v127);
            }

            if (*(this + 263) && *(this + 264))
            {
              vDSP_zrvmul((this + 1944), 1, v236, 1, (this + 2104), 1, v127);
            }
          }
        }
      }

      if ((*(this + 596) & 0x30) == 0)
      {
        goto LABEL_235;
      }

      v138 = *(this + 127);
      if (v138 > 0.0)
      {
        PV_Apply_LUT2D<81u,91u>(__Da, v134, v136, v127, *(this + 205), v137);
        v262 = 1.0 - *(this + 131);
        MEMORY[0x1E12BE910](*(this + 133), 1, &v262, this + 524, v137, 1, v127);
        MEMORY[0x1E12BE7F0](v136, 1, v137, 1, v137, 1, v127);
        v158 = *(this + 84);
        if (v158)
        {
          v159 = 0;
          v160 = v136;
          do
          {
            v161 = *(*(this + 220) + 4 * v159);
            if (v161 > 1)
            {
              vDSP_dotpr(&v137[*(*(this + 217) + 4 * v159)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v159)), 1, v160, v161);
              v158 = *(this + 84);
            }

            else
            {
              *v160 = v137[v159];
            }

            ++v159;
            ++v160;
          }

          while (v159 < v158);
        }

        vDSP_vmma(__nb, 1, v136, 1, v243, 1, v233, 1, v233, 1, v127);
        if (*(this + 265) && *(this + 266))
        {
          vDSP_zrvmul((this + 1928), 1, v233, 1, (this + 2120), 1, v127);
        }

        PV_Apply_LUT2D<81u,91u>(v135, v134, v136, v127, *(this + 205), v137);
        MEMORY[0x1E12BE910](*(this + 136), 1, &v262, this + 524, v137, 1, v127);
        MEMORY[0x1E12BE7F0](v136, 1, v137, 1, v137, 1, v127);
        v162 = *(this + 84);
        if (v162)
        {
          v163 = 0;
          v164 = v136;
          do
          {
            v165 = *(*(this + 220) + 4 * v163);
            if (v165 > 1)
            {
              vDSP_dotpr(&v137[*(*(this + 217) + 4 * v163)], 1, *(*(this + 211) + 24 * *(*(this + 214) + 4 * v163)), 1, v164, v165);
              v162 = *(this + 84);
            }

            else
            {
              *v164 = v137[v163];
            }

            ++v163;
            ++v164;
          }

          while (v163 < v162);
        }

        vDSP_vmma(__nb, 1, v136, 1, v243, 1, v232, 1, v232, 1, v127);
        if (*(this + 267) && *(this + 268))
        {
          vDSP_zrvmul((this + 1944), 1, v232, 1, (this + 2136), 1, v127);
        }

        goto LABEL_235;
      }

      v166 = *(this + 265);
      if (v166 && *(this + 266))
      {
        vDSP_vclr(v166, 1, v127);
        vDSP_vclr(*(this + 266), 1, v127);
      }

      v154 = *(this + 267);
      if (!v154 || !*(this + 268))
      {
        goto LABEL_235;
      }
    }

    vDSP_vclr(v154, 1, v127);
    vDSP_vclr(*(this + 268), 1, v127);
LABEL_235:
    v167 = (this + 516);
    if ((*(this + 596) & 0x40) != 0)
    {
      v168 = *(this + 269);
      if (v168)
      {
        if (*(this + 270))
        {
          if (*v167 <= 0.0)
          {
            vDSP_vclr(v168, 1, v127);
            vDSP_vclr(*(this + 270), 1, v127);
          }

          else
          {
            v169 = *(this + 145);
            __A.realp = *(this + 142);
            __A.imagp = v169;
            vDSP_zvmul(&__A, 1, (this + 1944), 1, (this + 2152), 1, v127, 1);
            MEMORY[0x1E12BE780](*(this + 139), 1, *(this + 241), 1, *(this + 269), 1, *(this + 269), 1, v127);
            MEMORY[0x1E12BE780](*(this + 139), 1, *(this + 242), 1, *(this + 270), 1, *(this + 270), 1, v127);
            MEMORY[0x1E12BE940](*(this + 269), 1, this + 516, *(this + 269), 1, v127);
            MEMORY[0x1E12BE940](*(this + 270), 1, this + 516, *(this + 270), 1, v127);
          }
        }
      }
    }

    if ((*(this + 596) & 0x80) != 0)
    {
      v170 = *(this + 271);
      if (v170)
      {
        if (*(this + 272))
        {
          if (*v167 <= 0.0)
          {
            vDSP_vclr(v170, 1, v127);
            vDSP_vclr(*(this + 272), 1, v127);
          }

          else
          {
            v171 = *(this + 154);
            __A.realp = *(this + 151);
            __A.imagp = v171;
            vDSP_zvmul(&__A, 1, (this + 1928), 1, (this + 2168), 1, v127, 1);
            MEMORY[0x1E12BE780](*(this + 148), 1, *(this + 243), 1, *(this + 271), 1, *(this + 271), 1, v127);
            MEMORY[0x1E12BE780](*(this + 148), 1, *(this + 244), 1, *(this + 272), 1, *(this + 272), 1, v127);
            MEMORY[0x1E12BE940](*(this + 271), 1, this + 516, *(this + 271), 1, v127);
            MEMORY[0x1E12BE940](*(this + 272), 1, this + 516, *(this + 272), 1, v127);
          }
        }
      }
    }

    if ((*(this + 448) & 1) == 0)
    {
LABEL_249:
      v172 = 0;
      for (i = 0; i != 8; ++i)
      {
        if ((*(this + 149) >> i))
        {
          v174 = a3[i];
          v175 = *(this + 85);
          v176 = *(this + 86);
          LODWORD(__A.realp) = 0x40000000;
          v177 = this + 4 * i;
          v178 = *(v177 + 150);
          if (v178 != -1)
          {
            if (i <= 1)
            {
              v138 = *(v177 + 228);
              **(this + v172 + 2064) = v138;
            }

            v179 = *(this + 80);
            v180 = this + v172;
            if (v179)
            {
              MultiRadixRealFFT::RealInPlaceTransform(v179, (v180 + 2056), -1, v138);
            }

            vDSP_ztoc((v180 + 2056), 1, *(this + 118), 2, *(this + 84));
            v181 = (this + 944);
            MEMORY[0x1E12BE940](*(this + 118), 1, &__A, *(this + 118), 1, *(this + 85));
            MEMORY[0x1E12BE7F0](*v181, 1, *(this + 226), 1, *v181, 1, *(this + 85));
            MEMORY[0x1E12BE5D0](*v181, 1, *(this + 84) + 4 * (v176 + *(this + 85) * v178), 1, *v181, 1, (v175 - v176));
            memcpy((*(this + 84) + 4 * (*(this + 85) * v178)), *(this + 118), 4 * v175);
            memcpy(v174, (*(this + 84) + 4 * (*(this + 85) * v178)), 4 * v176);
          }
        }

        v172 += 16;
      }

      v182 = *(this + 86);
      if (*(this + 4))
      {
        v183 = 0;
      }

      else
      {
        v183 = (*(this + 596) >> 3) & 1;
      }

      v184 = *(this + 89);
      if (Crossover2f::IsLowCrossoverEnabled(*(this + 6)) || Crossover2f::IsHighCrossoverEnabled(*(this + 6)))
      {
        if (*__N == 1)
        {
          goto LABEL_292;
        }

        v239 = v183;
        v185 = v183 && *(this + 328) == 1 && v271[0] != 0;
        v186 = 0;
        v187 = (a3 + 3);
        __Na = v182;
        v188 = (v182 - v184);
        v244 = 4 * v184;
        v189 = v271;
        v190 = v267;
        v191 = 1;
        while (1)
        {
          v192 = v191;
          if (*v189)
          {
            v193 = (a3 + 3);
            if (v185)
            {
              goto LABEL_273;
            }

            if ((*(this + 149) >> v186))
            {
              break;
            }
          }

LABEL_277:
          if (((*(this + 149) >> v186) & 1) != 0 && *v190)
          {
            if (v184)
            {
              MEMORY[0x1E12BE5D0](a3[v186], 1, *(this + 90) + 4 * v186 * *(this + 89), 1, a3[v186], 1, v184);
              memcpy((*(this + 90) + 4 * v186 * *(this + 89)), &(*v190)[v188], v244);
            }

            MEMORY[0x1E12BE5D0]();
          }

          v191 = 0;
          v190 = &v267[1];
          v189 = &v271[1];
          v186 = 1;
          if ((v192 & 1) == 0)
          {
            if (v239)
            {
              if (v185)
              {
                *&__A.realp = *(this + 116) * 0.31623;
                MEMORY[0x1E12BE940](*v187, 1, &__A, *v187, 1, __Na);
              }

              else
              {
                vDSP_vclr(*v187, 1, __Na);
              }
            }

            goto LABEL_292;
          }
        }

        v193 = &a3[v186];
LABEL_273:
        if (*v193)
        {
          if (v184)
          {
            MEMORY[0x1E12BE5D0](*v193, 1, *(this + 87) + 4 * v186 * *(this + 89), 1, *v193, 1, v184);
            memcpy((*(this + 87) + 4 * v186 * *(this + 89)), &(*v189)[v188], v244);
          }

          MEMORY[0x1E12BE5D0]();
        }

        goto LABEL_277;
      }

      if (v183)
      {
        vDSP_vclr(a3[3], 1, v182);
      }

LABEL_292:
      v194 = *(this + 111);
      if (v194 > 2)
      {
        switch(v194)
        {
          case 3:
            if (*(this + 275) && (*(this + 596) & 0x10) != 0)
            {
              IR::FFTFilter<float>::process();
            }

            if (*(this + 279) && (*(this + 596) & 0x20) != 0)
            {
              IR::FFTFilter<float>::process();
            }

            if (*(this + 278) && (*(this + 596) & 0x40) != 0)
            {
              IR::FFTFilter<float>::process();
            }

            if (*(this + 280) && (*(this + 596) & 0x80) != 0)
            {
              IR::FFTFilter<float>::process();
            }

            break;
          case 4:
            v204 = *(this + 149);
            if ((v204 & 0x10) != 0)
            {
              for (j = 0; j != 24; j += 8)
              {
                v206 = *(this + j + 2296);
                if (v206)
                {
                  AllPassComb::process(v206, a3[4], a3[4], *v247);
                }
              }

              v204 = *(this + 149);
            }

            if ((v204 & 0x20) != 0)
            {
              for (k = 0; k != 24; k += 8)
              {
                v208 = *(this + k + 2320);
                if (v208)
                {
                  AllPassComb::process(v208, a3[5], a3[5], *v247);
                }
              }

              v204 = *(this + 149);
            }

            if ((v204 & 0x40) != 0)
            {
              for (m = 0; m != 24; m += 8)
              {
                v210 = *(this + m + 2344);
                if (v210)
                {
                  AllPassComb::process(v210, a3[6], a3[6], *v247);
                }
              }

              v204 = *(this + 149);
            }

            if ((v204 & 0x80) != 0)
            {
              for (n = 0; n != 24; n += 8)
              {
                v212 = *(this + n + 2368);
                if (v212)
                {
                  AllPassComb::process(v212, a3[7], a3[7], *v247);
                }
              }
            }

            break;
          case 5:
            v195 = *(this + 149);
            if ((v195 & 0x10) != 0)
            {
              for (ii = 0; ii != 24; ii += 8)
              {
                v197 = *(this + ii + 2296);
                if (v197)
                {
                  AllPassComb::process(v197, a3[4], a3[4], *v247);
                }
              }

              v195 = *(this + 149);
            }

            if ((v195 & 0x20) != 0)
            {
              for (jj = 0; jj != 24; jj += 8)
              {
                v199 = *(this + jj + 2392);
                if (v199)
                {
                  AllPassComb::process(v199, a3[5], a3[5], *v247);
                }
              }

              v195 = *(this + 149);
            }

            if ((v195 & 0x40) != 0)
            {
              for (kk = 0; kk != 24; kk += 8)
              {
                v201 = *(this + kk + 2344);
                if (v201)
                {
                  AllPassComb::process(v201, a3[6], a3[6], *v247);
                }
              }

              v195 = *(this + 149);
            }

            if ((v195 & 0x80) != 0)
            {
              for (mm = 0; mm != 24; mm += 8)
              {
                v203 = *(this + mm + 2416);
                if (v203)
                {
                  AllPassComb::process(v203, a3[7], a3[7], *v247);
                }
              }
            }

            break;
        }

        goto LABEL_384;
      }

      if (v194 != 1)
      {
        if (v194 == 2)
        {
          if (*(this + 275) && (*(this + 596) & 0x10) != 0)
          {
            IR::FFTFilter<float>::process();
          }

          if (*(this + 276) && (*(this + 596) & 0x20) != 0)
          {
            IR::FFTFilter<float>::process();
          }

          if (*(this + 278) && (*(this + 596) & 0x40) != 0)
          {
            IR::FFTFilter<float>::process();
          }

          if (*(this + 277) && (*(this + 596) & 0x80) != 0)
          {
            IR::FFTFilter<float>::process();
          }
        }

LABEL_384:
        __A = 0;
        v253 = 0u;
        v222 = *(this + 149);
        if ((v222 & 0x10) != 0)
        {
          __A.realp = a3[4];
          v223 = 1;
          if ((v222 & 0x20) == 0)
          {
            goto LABEL_389;
          }
        }

        else
        {
          v223 = 0;
          if ((v222 & 0x20) == 0)
          {
LABEL_389:
            if ((v222 & 0x40) != 0)
            {
              *(&__A.realp + v223++) = a3[6];
              if ((v222 & 0x80) == 0)
              {
LABEL_392:
                v225 = *(this + 86);
                v226 = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 56);
                v227 = v226;
                if (v225 && v226 && *(this + 11) && *(this + 10))
                {
                  v228 = COERCE_FLOAT(atomic_load((*(this + 5) + 96)));
                  v229 = COERCE_FLOAT(atomic_load((*(this + 5) + 100)));
                  if (v228 > 0.01)
                  {
                    v230 = *(this + 11);
                    if (v230)
                    {
                      ParametricFilters::process(v230, &__A.realp, 0, v225, 0);
                    }
                  }

                  if (fabsf(v229) > 0.01)
                  {
                    v231 = *(this + 10);
                    if (v231)
                    {
                      ParametricFilters::process(v231, &__A.realp, 0, v225, 0);
                    }
                  }
                }

                if (v227)
                {
                  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 56);
                }

                return;
              }
            }

            else if ((v222 & 0x80) == 0)
            {
              goto LABEL_392;
            }

            *(&__A.realp + v223) = a3[7];
            goto LABEL_392;
          }
        }

        v224 = v223++;
        *(&__A | (8 * v224)) = a3[5];
        goto LABEL_389;
      }

      v213 = *(this + 86);
      LODWORD(__A.imagp) = 1;
      HIDWORD(__A.imagp) = 4 * v213;
      DWORD2(v253) = 1;
      HIDWORD(v253) = 4 * v213;
      v214 = *(this + 273);
      if (!v214)
      {
LABEL_377:
        v218 = *(this + 274);
        if (!v218)
        {
          goto LABEL_384;
        }

        v219 = *(this + 149);
        if ((v219 & 0x20) != 0)
        {
          *&v253 = a3[5];
          v220 = 1;
          if ((v219 & 0x80) == 0)
          {
LABEL_383:
            LODWORD(__A.realp) = v220;
            (*(*v218 + 32))(v218, *v247, &__A, &__A);
            goto LABEL_384;
          }
        }

        else
        {
          if ((v219 & 0x80) == 0)
          {
            goto LABEL_384;
          }

          v220 = 0;
        }

        v221 = &__A.imagp + 2 * v220++;
        v221[1] = a3[7];
        goto LABEL_383;
      }

      v215 = *(this + 149);
      if ((v215 & 0x10) != 0)
      {
        *&v253 = a3[4];
        v216 = 1;
        if ((v215 & 0x40) == 0)
        {
LABEL_376:
          LODWORD(__A.realp) = v216;
          (*(*v214 + 32))(v214);
          goto LABEL_377;
        }
      }

      else
      {
        if ((v215 & 0x40) == 0)
        {
          goto LABEL_377;
        }

        v216 = 0;
      }

      v217 = &__A.imagp + 2 * v216++;
      v217[1] = a3[6];
      goto LABEL_376;
    }

    if (*(this + 4) != 2)
    {
      ScottySTFTUpmixer::enhanced_center_extraction(this, (this + 2056), (this + 2072), (this + 2088), (this + 2104));
      goto LABEL_249;
    }

LABEL_239:
    ScottySTFTUpmixer::enhanced_center_extraction(this, (this + 1928), (this + 1944), (this + 2088), (this + 2104));
    goto LABEL_249;
  }

  v10 = *(this + 86);

  ScottyUpmixer::ProcessBypass(a2, a3, v10);
}

float *ScottySTFTUpmixer::enhanced_center_extraction(float *this, DSPSplitComplex *__A, DSPSplitComplex *a3, DSPSplitComplex *__C, DSPSplitComplex *a5)
{
  if (*(this + 91))
  {
    v5 = this;
    if ((this[149] & 4) != 0)
    {
      v10 = *(this + 84);
      v11 = *(this + 184);
      __Aa.realp = *(this + 181);
      __Aa.imagp = v11;
      v12 = *(this + 190);
      __Ca.realp = *(this + 187);
      __Ca.imagp = v12;
      v13 = *(this + 193);
      v14 = *(this + 196);
      vDSP_zvadd(__A, 1, a3, 1, __C, 1, v10);
      vDSP_zvmul(__C, 1, __C, 1, &__Ca, 1, v10, 1);
      __B = -2.2204e-16;
      vDSP_viclip(__Ca.realp, 1, &__B, &kEPS, __Ca.realp, 1, v10);
      vDSP_zvmul(__A, 1, a3, 1, &__Aa, 1, v10, 1);
      vDSP_zvdiv(&__Ca, 1, &__Aa, 1, &__Aa, 1, v10);
      vDSP_zvneg(&__Aa, 1, &__Aa, 1, v10);
      v17 = 1048576000;
      MEMORY[0x1E12BE8A0](__Aa.realp, 1, &v17, __Aa.realp, 1, v10);
      ScottySTFTUpmixer::complexSquareRootDouble(&__Aa.realp, &__Ca.realp, v10, v5 + 229);
      v16 = 1056964608;
      MEMORY[0x1E12BE8A0](__Ca.realp, 1, &v16, __Aa.realp, 1, v10);
      vDSP_zvabs(&__Aa, 1, v13, 1, v10);
      vDSP_zvneg(&__Ca, 1, &__Aa, 1, v10);
      MEMORY[0x1E12BE8A0](__Aa.realp, 1, &v16, __Aa.realp, 1, v10);
      vDSP_zvabs(&__Aa, 1, v14, 1, v10);
      vDSP_vmin(v13, 1, v14, 1, v13, 1, v10);
      v15 = v5[128] / 100.0;
      ScottySTFTUpmixer::inphaseICC(__A, a3, __Aa.imagp, __Aa.realp, v10);
      MEMORY[0x1E12BE7F0](v13, 1, __Aa.realp, 1, v13, 1, v10);
      MEMORY[0x1E12BE940](v13, 1, &v15, v13, 1, v10);
      vDSP_zrvmul(__C, 1, v13, 1, __C, 1, v10);
      vDSP_zvsub(__A, 1, __C, 1, __A, 1, v10);
      vDSP_zvsub(a3, 1, __C, 1, a3, 1, v10);
      v15 = v5[123] * 1.4142;
      MEMORY[0x1E12BE940](__C->realp, 1, &v15, __C->realp, 1, v10);
      MEMORY[0x1E12BE940](__C->imagp, 1, &v15, __C->imagp, 1, v10);
      this = a5->realp;
      if (a5->realp)
      {
        if (a5->imagp)
        {
          if (*(v5 + 4) == 1)
          {
            memcpy(this, __C->realp, 4 * v10);
            return memcpy(a5->imagp, __C->imagp, 4 * v10);
          }
        }
      }
    }
  }

  return this;
}

uint64_t ScottySTFTUpmixer::complexSquareRootDouble(const float **a1, float **a2, int a3, double **a4)
{
  LODWORD(__N) = a3;
  v6 = a4[3];
  __A.realp = *a4;
  __A.imagp = v6;
  v7 = a4[6];
  v8 = a4[9];
  __B = 0.0;
  v9 = a3;
  vDSP_vspdp(*a1, 1, __A.realp, 1, a3);
  vDSP_vspdp(a1[1], 1, v6, 1, v9);
  vDSP_zvabsD(&__A, 1, v7, 1, v9);
  vDSP_vsubD(__A.realp, 1, v7, 1, v8, 1, v9);
  vDSP_vthrD(v8, 1, &__B, v8, 1, v9);
  vvsqrt(v8, v8, &__N);
  vvcopysign(__A.imagp, v8, __A.imagp, &__N);
  vDSP_vaddD(v7, 1, __A.realp, 1, __A.realp, 1, __N);
  vDSP_vthrD(__A.realp, 1, &__B, __A.realp, 1, __N);
  vvsqrt(__A.realp, __A.realp, &__N);
  vDSP_vdpsp(__A.realp, 1, *a2, 1, __N);
  vDSP_vdpsp(__A.imagp, 1, a2[1], 1, __N);
  v11 = 1060439283;
  MEMORY[0x1E12BE940](*a2, 1, &v11, *a2, 1, __N);
  return MEMORY[0x1E12BE940](a2[1], 1, &v11, a2[1], 1, __N);
}

uint64_t ScottySTFTUpmixer::inphaseICC(const DSPSplitComplex *this, const DSPSplitComplex *a2, DSPSplitComplex *a3, float *a4, float *a5)
{
  LODWORD(__N) = a5;
  v9 = a5;
  vDSP_zvmags(this, 1, a3, 1, a5);
  vDSP_zvmags(a2, 1, a4, 1, v9);
  MEMORY[0x1E12BE7F0](a3, 1, a4, 1, a3, 1, v9);
  vvsqrtf(a3, a3, &__N);
  vDSP_vthr(a3, 1, &kEPS, a3, 1, __N);
  MEMORY[0x1E12BE7F0](this->realp, 1, a2->realp, 1, a4, 1, __N);
  MEMORY[0x1E12BE780](this->imagp, 1, a2->imagp, 1, a4, 1, a4, 1, __N);
  vDSP_vdiv(a3, 1, a4, 1, a3, 1, __N);
  v11 = 1056964608;
  return MEMORY[0x1E12BE910](a3, 1, &v11, &v11, a4, 1, __N);
}

void PV_Apply_LUT2D<81u,91u>(uint64_t a1, uint64_t a2, float *a3, unsigned int a4, const float *a5, float *a6)
{
  v16 = 1119092736;
  v17 = 1117782016;
  __C = 7370.0;
  v15 = 1117913088;
  __B = 0.0;
  v13 = 1056964608;
  v10 = a4;
  v11 = a4;
  MEMORY[0x1E12BE940](a2, 1, &v16, a6, 1, a4);
  vvnintf(a6, a6, &v11);
  MEMORY[0x1E12BE910](a6, 1, &v15, &v13, a6, 1, v10);
  MEMORY[0x1E12BE8F0](a1, 1, &v17, a6, 1, a6, 1, v10);
  vDSP_vclip(a6, 1, &__B, &__C, a6, 1, v10);
  vDSP_vindex(a5, a6, 1, a3, 1, v10);
}

void ScottySTFTUpmixer::calculate_smoothing_windows(ScottySTFTUpmixer *this, float a2, float a3, float a4, int a5)
{
  v8 = 1.0;
  if (a2 <= 1.0)
  {
    v8 = a2;
  }

  if (a2 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *(this + 84);
  if ((((16000.0 / *(this + 80)) * v10) + 0.5) <= 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = (((16000.0 / *(this + 80)) * v10) + 0.5);
  }

  v12 = *(this + 181);
  v13 = *(this + 184);
  v14 = *(this + 187);
  *v14 = 1065353216;
  if (v10 >= 2)
  {
    v15 = 0;
    v16 = v10 & 0xFFFFFFFE;
    v88 = vdupq_n_s64(v10 - 2);
    v17 = 0x200000001;
    v18 = v14 + 2;
    do
    {
      v94 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(vdupq_n_s64(v15), xmmword_1DE095160)));
      v19 = vcvt_f32_u32(v17);
      v20 = vadd_f32(v19, 0x3F0000003F000000);
      v92 = v20.f32[0];
      v96 = logf(v20.f32[1]);
      v21.f32[0] = logf(v92);
      v21.f32[1] = v96;
      v97 = v21;
      v22 = vadd_f32(v19, 0xBF000000BF000000);
      v90 = v22.f32[0];
      v93 = logf(v22.f32[1]);
      v23.f32[0] = logf(v90);
      v23.f32[1] = v93;
      if (v94.i8[0])
      {
        *(v18 - 1) = vsub_f32(v97, v23).u32[0];
      }

      if (v94.i8[4])
      {
        *v18 = vsub_f32(v97, v23).i32[1];
      }

      v15 += 2;
      v17 = vadd_s32(v17, 0x200000002);
      v18 += 2;
      v16 -= 2;
    }

    while (v16);
  }

  v24 = (this + 1688);
  if (*(this + 212) == *(this + 211))
  {
    __C = 1.0;
    v102 = 0;
    v103 = 0;
    __p = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &__C, &__p, 1uLL);
    std::vector<std::vector<float>>::push_back[abi:ne200100](this + 1688, &__p);
    if (__p)
    {
      v102 = __p;
      operator delete(__p);
    }

    **(this + 217) = 0;
    **(this + 214) = 0;
    **(this + 220) = 1;
    LODWORD(v10) = *(this + 84);
  }

  v85 = a4;
  *v13 = 1.0;
  v25 = exp2f(v9 * -0.5);
  v26 = exp2f(v9 * 0.5);
  if (v10 >= 2)
  {
    v86 = (this + 1688);
    if (v26 >= ((v11 + 1) / v11))
    {
      v27 = v11;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v95 = -(v28 - (v25 * v28));
    v29 = -(v28 - (v26 * v28));
    v30 = 1;
    v98 = 1;
    v91 = v27;
    v89 = v26;
    while (1)
    {
      v31 = v30;
      v32 = v30 >= v27 ? v29 + v30 : v26 * v30;
      if (v30 <= v27 || v32 >= v10)
      {
        break;
      }

      v33 = 4 * v30 - 4;
      *(*(this + 217) + 4 * v30) = *(*(this + 217) + v33) + 1;
      *(*(this + 214) + 4 * v30) = *(*(this + 214) + v33);
      *(*(this + 220) + 4 * v30) = *(*(this + 220) + v33);
      v13[v30] = *(v13 + v33);
LABEL_66:
      ++v30;
      v10 = *(this + 84);
      if (v30 >= v10)
      {
        v75 = v98;
        v24 = (this + 1688);
        goto LABEL_69;
      }
    }

    v34 = v25;
    if (v30 >= v27)
    {
      v35 = v95 + v31;
    }

    else
    {
      v35 = v25 * v31;
    }

    v36 = logf(v35);
    v37 = vcvtps_u32_f32(v35);
    v38 = vcvtms_u32_f32(v32);
    if (v10 - 1 >= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = v10 - 1;
    }

    if (v39 >= v37)
    {
      v40 = v36;
      v41 = (logf(v32) - v36) + 2.2204e-16;
      v42 = v37;
      do
      {
        v43 = logf(v42);
        v44 = *&v14[v42];
        *(v12 + 4 * v42++) = ((cosf(((v43 - v40) / v41) * 6.2832) * -0.5) + 0.5) * v44;
      }

      while (v42 <= v39);
    }

    __C = 0.0;
    vDSP_maxv((v12 + 4 * v37), 1, &__C, v39 - v37 + 1);
    v45 = __C * 0.15;
    do
    {
      v46 = v37;
      v47 = *(v12 + 4 * v37++);
    }

    while (v47 < v45);
    do
    {
      v48 = v39;
      v49 = *(v12 + 4 * v39--);
    }

    while (v49 < v45);
    v50 = (v48 - v46 + 1);
    v99 = 0.0;
    v51 = v50;
    vDSP_sve((v12 + 4 * v46), 1, &v99, v50);
    v99 = 1.0 / v99;
    MEMORY[0x1E12BE940](v12 + 4 * v46, 1, &v99, v12 + 4 * v46, 1, v50);
    *v52.i32 = v99 * __C;
    v13[v30] = v99 * __C;
    v53 = *(this + 212);
    v54 = *(this + 211);
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v54) >> 3);
    if (v55 <= v98)
    {
      if (!a5)
      {
        v63 = v30 - 1;
        v64 = *(this + 84) - ((*(v54 + 24 * (v30 - 1) + 8) - *(v54 + 24 * (v30 - 1))) >> 2) > v30;
        v65 = *(this + 217);
        v66 = *(v65 + 4 * (v30 - 1));
        if (v64)
        {
          ++v66;
        }

        *(v65 + 4 * v30) = v66;
        *(*(this + 214) + 4 * v30) = *(*(this + 214) + 4 * v63);
        *(*(this + 220) + 4 * v30) = *(*(this + 220) + 4 * v63);
        v13[v30] = v13[v63];
        goto LABEL_65;
      }

      v59 = *(this + 213);
      if (v53 >= v59)
      {
        v67 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v54) >> 3);
        v68 = 2 * v67;
        if (2 * v67 <= v55 + 1)
        {
          v68 = v55 + 1;
        }

        if (v67 >= 0x555555555555555)
        {
          v69 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v69 = v68;
        }

        v105 = this + 1688;
        if (v69)
        {
          std::allocator<std::vector<float>>::allocate_at_least[abi:ne200100](v86, v69);
        }

        __p = 0;
        v102 = 24 * v55;
        v103 = 24 * v55;
        v104 = 0;
        std::vector<float>::vector[abi:ne200100]((24 * v55), v51);
        v60 = (v103 + 24);
        v70 = *(this + 211);
        v71 = *(this + 212) - v70;
        v72 = v102 - v71;
        memcpy((v102 - v71), v70, v71);
        v73 = *(this + 211);
        *(this + 211) = v72;
        *(this + 212) = v60;
        v74 = *(this + 213);
        *(this + 213) = v104;
        v103 = v73;
        v104 = v74;
        __p = v73;
        v102 = v73;
        std::__split_buffer<std::vector<float>>::~__split_buffer(&__p);
      }

      else
      {
        std::vector<float>::vector[abi:ne200100](v53, v51);
        v60 = v53 + 3;
        *(this + 212) = v53 + 3;
      }

      *(this + 212) = v60;
      v57 = *(this + 211);
      v58 = 24 * v98;
    }

    else
    {
      v56 = (v54 + 24 * v98);
      if (!a5)
      {
        v61 = *v56;
        v62 = (*(v54 + 24 * v98 + 8) - v61) >> 2;
        if (v50 > v62)
        {
          v50 = v62;
        }

        goto LABEL_64;
      }

      LODWORD(__p) = 0;
      std::vector<float>::resize(v56, v51, &__p, v52);
      v57 = *v86;
      v58 = 24 * v98;
    }

    v61 = *(v57 + v58);
LABEL_64:
    memcpy(v61, (v12 + 4 * v46), vcvts_n_u32_f32(v50, 2uLL));
    *(*(this + 217) + 4 * v30) = v46;
    *(*(this + 214) + 4 * v30) = v98;
    *(*(this + 220) + 4 * v30) = v50;
    ++v98;
LABEL_65:
    v25 = v34;
    v27 = v91;
    v26 = v89;
    goto LABEL_66;
  }

  v75 = 1;
LABEL_69:
  if (a5)
  {
    std::vector<std::vector<float>>::resize(v24, v75);
    LODWORD(v10) = *(this + 84);
  }

  v76 = *(this + 80);
  v77 = *(this + 86);
  v78 = expf(-1.0 / ((v76 * a3) / v77));
  v79 = expf(-1.0 / ((v76 * v85) / v77));
  if (v10)
  {
    v80 = v79;
    v81 = *(this + 223);
    v82 = v10;
    do
    {
      v83 = *v13++;
      v84 = powf(v78, 1.0 / v83);
      if (v84 < v80)
      {
        v84 = v80;
      }

      *v81++ = v84;
      --v82;
    }

    while (v82);
  }
}

void sub_1DDE56004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ScottySTFTUpmixer::calculate_tc_vectors(ScottySTFTUpmixer *this)
{
  v2 = *(this + 80);
  v3 = *(this + 85);
  v4 = (*(this + 101) / v2) * v3;
  v5 = *(this + 84);
  v6 = (v5 - 1);
  if (v4 <= v6)
  {
    v6 = (*(this + 101) / v2) * v3;
  }

  if (v4 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = *(this + 102) / v2;
  v9 = *(this + 86);
  *v10.i32 = expf(-1.0 / ((v2 * *(this + 99)) / v9));
  v11 = v7;
  v12 = *(this + 208);
  v13 = v7 + 1;
  if (v13 > 1)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = (v14 + 3) & 0x1FFFFFFFCLL;
  v16 = vdupq_n_s64(v14 - 1);
  v17 = xmmword_1DE095150;
  v18 = xmmword_1DE095160;
  v19 = (v12 + 8);
  v20 = vdupq_n_s64(4uLL);
  do
  {
    v21 = vmovn_s64(vcgeq_u64(v16, v18));
    if (vuzp1_s16(v21, v10).u8[0])
    {
      *(v19 - 2) = v10.i32[0];
    }

    if (vuzp1_s16(v21, v10).i8[2])
    {
      *(v19 - 1) = v10.i32[0];
    }

    if (vuzp1_s16(v10, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
    {
      *v19 = v10.i32[0];
      v19[1] = v10.i32[0];
    }

    v17 = vaddq_s64(v17, v20);
    v18 = vaddq_s64(v18, v20);
    v19 += 4;
    v15 -= 4;
  }

  while (v15);
  v22 = v8 * v3;
  if ((v8 * v3) > v5)
  {
    v22 = v5;
  }

  v23 = vcvtps_u32_f32(v22);
  if (v13 < v23)
  {
    v24 = v22 - v7;
    v25 = ~v11 + v23;
    do
    {
      *(v12 + 4 * v13) = expf(-1.0 / ((*(this + 80) * ((((v13 - v7) / v24) * *(this + 100)) + ((1.0 - ((v13 - v7) / v24)) * *(this + 99)))) / v9));
      ++v13;
      --v25;
    }

    while (v25);
  }

  *v26.i32 = expf(-1.0 / ((*(this + 100) * *(this + 80)) / v9));
  if (v5 > v23)
  {
    v27 = 0;
    v28 = v5 - v23;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = vdupq_n_s64(v28 - 1);
    v31 = (v12 + 4 * v23 + 8);
    do
    {
      v32 = vdupq_n_s64(v27);
      v33 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_1DE095160)));
      if (vuzp1_s16(v33, v26).u8[0])
      {
        *(v31 - 2) = v26.i32[0];
      }

      if (vuzp1_s16(v33, v26).i8[2])
      {
        *(v31 - 1) = v26.i32[0];
      }

      if (vuzp1_s16(v26, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v32, xmmword_1DE095150)))).i32[1])
      {
        *v31 = v26.i32[0];
        v31[1] = v26.i32[0];
      }

      v27 += 4;
      v31 += 4;
    }

    while (v29 != v27);
  }
}

void ScottySTFTUpmixer::calculate_pan_tables(ScottySTFTUpmixer *this)
{
  v27 = 0.01;
  v2 = *(this + 141);
  v3 = *(this + 140);
  v4 = *(this + 142);
  v26 = *(this + 139);
  v25 = 7371;
  v5 = __exp10f(*(this + 143) * 0.05);
  if (v5 <= 0.99499)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.99499;
  }

  if (*(this + 126) <= 0.0)
  {
    v15 = *(this + 127);
    if (v15 <= 0.0)
    {
      return;
    }

    __A = 1.0 - v15;
    MEMORY[0x1E12BE910](&ScottySTFT_init::pan_table_ll2D, 1, this + 508, &__A, *(this + 199), 1, 7371);
  }

  else
  {
    v16 = v6;
    v7 = 0;
    v8 = 0;
    __B = 2.0;
    v23 = 1065353216;
    __A = 0.0;
    v21 = -1.0 / (v4 + v4);
    v9 = -1.0 / (v3 + v3);
    do
    {
      v10 = __exp10f(((((v8 + v8) / 80.0) + -1.0) * 40.0) / 20.0);
      v11 = asinf((v10 + -1.0) / (v10 + 1.0));
      v12 = powf(fabsf(v11), v2);
      vDSP_vramp(&__A, &__B, (*(this + 202) + v7), 81, 0x5BuLL);
      v20 = v9 * v12;
      MEMORY[0x1E12BE910](*(this + 202) + v7, 81, &v21, &v20, *(this + 202) + v7, 81, 91);
      ++v8;
      v7 += 4;
    }

    while (v8 != 81);
    vvexpf(*(this + 202), *(this + 202), &v25);
    v13 = *(this + 126);
    v19 = (0.99499 - v16) * v13;
    v20 = v16 * v13;
    MEMORY[0x1E12BE910](*(this + 202), 1, &v19, &v20, *(this + 202), 1, 7371);
    vDSP_vfill(&v26, *(this + 205), 1, (*(this + 206) - *(this + 205)) >> 2);
    vvpowf(*(this + 199), *(this + 205), *(this + 202), &v25);
    MEMORY[0x1E12BE810](*(this + 199), 1, *(this + 199), 1, 7371);
    MEMORY[0x1E12BE8A0](*(this + 199), 1, &v23, *(this + 199), 1, 7371);
    v18 = 1.0 / v26;
    vDSP_vfill(&v18, *(this + 205), 1, (*(this + 206) - *(this + 205)) >> 2);
    vvpowf(*(this + 199), *(this + 205), *(this + 199), &v25);
    v14 = *(this + 127);
    if (v14 <= 0.0)
    {
      goto LABEL_12;
    }

    v17 = 1.0 - v14;
    MEMORY[0x1E12BE910](&ScottySTFT_init::pan_table_ll2D, 1, this + 508, &v17, *(this + 205), 1, 7371);
    MEMORY[0x1E12BE7F0](*(this + 205), 1, *(this + 199), 1, *(this + 199), 1, 7371);
  }

  MEMORY[0x1E12BE940](&ScottySTFT_init::pan_table_ls2D, 1, this + 508, *(this + 205), 1, 7371);
LABEL_12:
  vDSP_vthr(*(this + 199), 1, &v27, *(this + 199), 1, 0x1CCBuLL);
  MEMORY[0x1E12BE990](*(this + 199), 1, *(this + 199), 1, 7371);
}

uint64_t ScottySTFTUpmixer::DisableOutputChannel(ScottySTFTUpmixer *this, char a2)
{
  if (*(this + 8))
  {
    return 4294944292;
  }

  *(this + 149) &= ~(1 << a2);
  ScottySTFTUpmixer::UpdateBufferAssignments(this);
  return 0;
}

_DWORD *ScottySTFTUpmixer::UpdateBufferAssignments(_DWORD *this)
{
  v1 = this[149];
  if (this[4] == 2)
  {
    v1 = this[149] & 4;
    this[149] = v1;
  }

  v2 = 0;
  v3 = 0;
  this[158] = 0;
  do
  {
    if ((v1 >> v2))
    {
      ++this[158];
      v4 = v3++;
    }

    else
    {
      v4 = -1;
    }

    this[v2++ + 150] = v4;
  }

  while (v2 != 8);
  return this;
}

uint64_t ScottySTFTUpmixer::EnableOutputChannel(ScottySTFTUpmixer *this, unsigned int a2)
{
  if (*(this + 8))
  {
    return 4294944292;
  }

  if (a2 > 7)
  {
    return 4294944293;
  }

  *(this + 149) |= 1 << a2;
  ScottySTFTUpmixer::UpdateBufferAssignments(this);
  return 0;
}

uint64_t ScottySTFTUpmixer::SetOutputChannelMask(ScottySTFTUpmixer *this, int a2)
{
  if (*(this + 8))
  {
    return 4294944292;
  }

  *(this + 149) = a2;
  ScottySTFTUpmixer::UpdateBufferAssignments(this);
  ScottyUpmixer::SetOutputChannelMask(this);
  return 0;
}

uint64_t ScottySTFTUpmixer::GetNumActiveOutputChannels(ScottySTFTUpmixer *this)
{
  v1 = (this + 596);
  v2 = vld1q_dup_f32(v1);
  v3.i64[0] = 0x100000001;
  v3.i64[1] = 0x100000001;
  return vaddvq_s32(vaddq_s32(vandq_s8(vshlq_u32(v2, xmmword_1DE09DCB0), v3), vandq_s8(vshlq_u32(v2, xmmword_1DE09DCA0), v3)));
}

void ScottySTFTUpmixer::UpdateParameters(ScottySTFTUpmixer *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    v3 = COERCE_FLOAT(atomic_load((v1 + 4)));
    *(this + 90) = __exp10f(v3 / 20.0);
    v4 = atomic_load((*(this + 5) + 120));
    *(this + 95) = v4;
    v5 = atomic_load((*(this + 5) + 44));
    *(this + 98) = v5;
    v6 = atomic_load((*(this + 5) + 48));
    *(this + 96) = v6;
    v7 = atomic_load((*(this + 5) + 52));
    *(this + 97) = v7;
    v8 = COERCE_FLOAT(atomic_load((*(this + 5) + 56)));
    *(this + 111) = v8;
    v9 = atomic_load((*(this + 5) + 116));
    *(this + 448) = (v9 & 0x7FFFFFFF) != 0;
    v10 = atomic_load((*(this + 5) + 128));
    *(this + 328) = (v10 & 0x7FFFFFFF) != 0;
    v11 = COERCE_FLOAT(atomic_load((*(this + 5) + 132)));
    *(this + 83) = __exp10f(v11 / 20.0);
    v12 = COERCE_FLOAT(atomic_load((*(this + 5) + 8)));
    v13 = v12;
    *(this + 91) = v13;
    v14 = 0.0;
    v15 = 0.0;
    if (v13)
    {
      v15 = 1.0;
      if (*(this + 448))
      {
        v15 = 0.0;
      }
    }

    *(this + 93) = v15;
    v16 = COERCE_FLOAT(atomic_load((*(this + 5) + 12)));
    v17 = v16;
    *(this + 92) = v17;
    if (v17)
    {
      v14 = 1.0;
    }

    *(this + 94) = v14;
    v18 = atomic_load((*(this + 5) + 76));
    *(this + 106) = v18;
    v19 = atomic_load((*(this + 5) + 80));
    *(this + 107) = v19;
    v20 = atomic_load((*(this + 5) + 84));
    *(this + 108) = v20;
    v21 = atomic_load((*(this + 5) + 88));
    *(this + 109) = v21;
    v22 = atomic_load((*(this + 5) + 92));
    *(this + 110) = v22;
    v23 = atomic_load((*(this + 5) + 32));
    *(this + 105) = v23;
    v24 = *(this + 103);
    v25 = COERCE_FLOAT(atomic_load((*(this + 5) + 36)));
    if (v24 != v25 || (v26 = *(this + 104), v27 = COERCE_FLOAT(atomic_load((*(this + 5) + 40))), v26 != v27) || (v28 = *(this + 99), v29 = COERCE_FLOAT(atomic_load((*(this + 5) + 60))), v28 != v29) || (v30 = *(this + 100), v31 = COERCE_FLOAT(atomic_load((*(this + 5) + 64))), v30 != v31) || (v32 = *(this + 101), v33 = COERCE_FLOAT(atomic_load((*(this + 5) + 68))), v32 != v33) || (v34 = *(this + 102), v35 = COERCE_FLOAT(atomic_load((*(this + 5) + 72))), v34 != v35))
    {
      atomic_fetch_add(this + 147, 1u);
    }
  }
}

uint64_t ScottySTFTUpmixer::SetOutputLayout(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8))
  {
    return 4294944292;
  }

  if (a2 > 2)
  {
    return 4294944291;
  }

  *(a1 + 596) = dword_1DE0E7C70[a2];
  *(a1 + 16) = a2;
  ScottySTFTUpmixer::UpdateBufferAssignments(a1);
  return 0;
}

uint64_t ScottySTFTUpmixer::SetInputLayout(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    return 4294944292;
  }

  result = 0;
  *(a1 + 352) = 2;
  *(a1 + 12) = a2;
  return result;
}

void ScottySTFTUpmixer::Reset(float **this)
{
  v32 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = this + 306;
    if (*(this + 2471) < 0)
    {
      v3 = *v3;
    }

    v28 = 136315394;
    v29 = v3;
    v30 = 2080;
    v31 = "Reset";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Resetting STFTUpmixer", &v28, 0x16u);
  }

  if (*(this + 8) == 1)
  {
    ScottyUpmixer::Reset(this);
    vDSP_vclr(this[81], 1, this[82] - this[81]);
    vDSP_vclr(this[84], 1, this[85] - this[84]);
    vDSP_vclr(this[87], 1, this[88] - this[87]);
    vDSP_vclr(this[90], 1, this[91] - this[90]);
    vDSP_vclr(this[93], 1, this[94] - this[93]);
    vDSP_vclr(this[96], 1, this[97] - this[96]);
    vDSP_vclr(this[99], 1, this[100] - this[99]);
    vDSP_vclr(this[102], 1, this[103] - this[102]);
    vDSP_vclr(this[105], 1, this[106] - this[105]);
    vDSP_vclr(this[108], 1, this[109] - this[108]);
    vDSP_vclr(this[111], 1, this[112] - this[111]);
    vDSP_vclr(this[118], 1, this[119] - this[118]);
    v4 = *(this + 84);
    vDSP_vclr(this[121], 1, v4);
    vDSP_vclr(this[124], 1, v4);
    vDSP_vclr(this[127], 1, v4);
    vDSP_vclr(this[130], 1, v4);
    vDSP_vclr(this[160], 1, v4);
    v28 = 1065353216;
    vDSP_vfill(&v28, this[166], 1, v4);
    vDSP_vfill(&v28, this[163], 1, v4);
    vDSP_vclr(this[169], 1, v4);
    vDSP_vclr(this[172], 1, v4);
    vDSP_vclr(this[175], 1, v4);
    vDSP_vclr(this[178], 1, v4);
    vDSP_vclr(this[139], 1, v4);
    vDSP_vclr(this[142], 1, v4);
    vDSP_vclr(this[145], 1, v4);
    vDSP_vclr(this[151], 1, v4);
    vDSP_vclr(this[154], 1, v4);
    vDSP_vclr(this[133], 1, v4);
    vDSP_vclr(this[136], 1, v4);
    vDSP_vclr(this[157], 1, v4);
    for (i = 0; i != 18; i += 3)
    {
      vDSP_vclr(this[i + 181], 1, v4);
    }

    v6 = this[273];
    if (v6)
    {
      (*(*v6 + 24))(v6);
    }

    v7 = this[274];
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    if (this[275])
    {
      IR::FFTFilter<float>::reset();
    }

    if (this[276])
    {
      IR::FFTFilter<float>::reset();
    }

    if (this[278])
    {
      IR::FFTFilter<float>::reset();
    }

    if (this[277])
    {
      IR::FFTFilter<float>::reset();
    }

    if (this[279])
    {
      IR::FFTFilter<float>::reset();
    }

    if (this[280])
    {
      IR::FFTFilter<float>::reset();
    }

    v8 = this + 287;
    v9 = 3;
    do
    {
      v10 = *v8;
      v11 = *(*v8 + 8);
      v12 = *(*v8 + 16) - v11;
      if (v12 >= 1)
      {
        bzero(v11, v12);
      }

      *(v10 + 56) = 0;
      v13 = v8[3];
      v14 = *(v13 + 8);
      v15 = *(v13 + 16) - v14;
      if (v15 >= 1)
      {
        bzero(v14, v15);
      }

      *(v13 + 56) = 0;
      v16 = v8[6];
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) - v17;
      if (v18 >= 1)
      {
        bzero(v17, v18);
      }

      *(v16 + 56) = 0;
      v19 = v8[9];
      v20 = *(v19 + 8);
      v21 = *(v19 + 16) - v20;
      if (v21 >= 1)
      {
        bzero(v20, v21);
      }

      *(v19 + 56) = 0;
      v22 = v8[12];
      v23 = *(v22 + 8);
      v24 = *(v22 + 16) - v23;
      if (v24 >= 1)
      {
        bzero(v23, v24);
      }

      *(v22 + 56) = 0;
      v25 = v8[15];
      v26 = *(v25 + 8);
      v27 = *(v25 + 16) - v26;
      if (v27 >= 1)
      {
        bzero(v26, v27);
      }

      *(v25 + 56) = 0;
      ++v8;
      --v9;
    }

    while (v9);
    *(this + 2440) = 1;
  }
}

void *ScottySTFTUpmixer::UnInitialize(ScottySTFTUpmixer *this)
{
  v25 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 2448);
    if (*(this + 2471) < 0)
    {
      v3 = *v3;
    }

    v21 = 136315394;
    v22 = v3;
    v23 = 2080;
    v24 = "UnInitialize";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Uninitializing STFTUpmixer", &v21, 0x16u);
  }

  *(this + 4) = 0;
  v4 = *(this + 80);
  *(this + 80) = 0;
  if (v4)
  {
    MultiRadixFFT_Dispose(v4);
  }

  std::vector<float>::resize(this + 81, 0);
  std::vector<float>::resize(this + 84, 0);
  std::vector<float>::resize(this + 87, 0);
  std::vector<float>::resize(this + 90, 0);
  std::vector<float>::resize(this + 121, 0);
  std::vector<float>::resize(this + 124, 0);
  std::vector<float>::resize(this + 127, 0);
  std::vector<float>::resize(this + 130, 0);
  std::vector<float>::resize(this + 133, 0);
  std::vector<float>::resize(this + 136, 0);
  std::vector<float>::resize(this + 139, 0);
  std::vector<float>::resize(this + 142, 0);
  std::vector<float>::resize(this + 145, 0);
  std::vector<float>::resize(this + 148, 0);
  std::vector<float>::resize(this + 151, 0);
  std::vector<float>::resize(this + 154, 0);
  std::vector<float>::resize(this + 157, 0);
  std::vector<float>::resize(this + 160, 0);
  std::vector<float>::resize(this + 163, 0);
  std::vector<float>::resize(this + 166, 0);
  std::vector<float>::resize(this + 169, 0);
  std::vector<float>::resize(this + 172, 0);
  std::vector<float>::resize(this + 175, 0);
  std::vector<float>::resize(this + 178, 0);
  std::vector<float>::resize(this + 93, 0);
  std::vector<float>::resize(this + 96, 0);
  std::vector<float>::resize(this + 99, 0);
  std::vector<float>::resize(this + 102, 0);
  std::vector<float>::resize(this + 105, 0);
  std::vector<float>::resize(this + 108, 0);
  std::vector<float>::resize(this + 111, 0);
  std::vector<float>::resize(this + 118, 0);
  v5 = (this + 1448);
  v6 = 144;
  do
  {
    std::vector<float>::resize(v5, 0);
    v5 += 3;
    v6 -= 24;
  }

  while (v6);
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
  *(this + 2120) = 0u;
  *(this + 2136) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  *(this + 1992) = 0u;
  *(this + 2008) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  std::vector<float>::resize(this + 199, 0);
  std::vector<float>::resize(this + 202, 0);
  std::vector<float>::resize(this + 205, 0);
  std::vector<float>::resize(this + 223, 0);
  std::vector<float>::resize(this + 208, 0);
  v7 = *(this + 211);
  if (*(this + 212) != v7)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      std::vector<float>::resize((v7 + 24 * v8), 0);
      v8 = v9;
      v7 = *(this + 211);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 212) - v7) >> 3) > v9++);
  }

  std::vector<std::vector<float>>::resize(this + 211, 0);
  std::vector<unsigned int>::resize((this + 1712), 0);
  std::vector<unsigned int>::resize((this + 1736), 0);
  std::vector<unsigned int>::resize((this + 1760), 0);
  std::vector<float>::resize(this + 226, 0);
  v11 = *(this + 273);
  *(this + 273) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 274);
  *(this + 274) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 275);
  *(this + 275) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 276);
  *(this + 276) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 278);
  *(this + 278) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 277);
  *(this + 277) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 279);
  *(this + 279) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = *(this + 279);
    *(this + 279) = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  for (i = 0; i != 24; i += 8)
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100]((this + i + 2296), 0);
    std::unique_ptr<AllPassComb>::reset[abi:ne200100]((this + i + 2320), 0);
    std::unique_ptr<AllPassComb>::reset[abi:ne200100]((this + i + 2344), 0);
    std::unique_ptr<AllPassComb>::reset[abi:ne200100]((this + i + 2368), 0);
    std::unique_ptr<AllPassComb>::reset[abi:ne200100]((this + i + 2392), 0);
    result = std::unique_ptr<AllPassComb>::reset[abi:ne200100]((this + i + 2416), 0);
  }

  return result;
}

uint64_t ScottySTFTUpmixer::Initialize(ScottySTFTUpmixer *this)
{
  v63 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 2448);
    if (*(this + 2471) < 0)
    {
      v3 = *v3;
    }

    buf[0] = 136315394;
    *&buf[1] = v3;
    v57 = 2080;
    v58 = "Initialize";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Initializing STFTUpmixer", buf, 0x16u);
  }

  if ((*(this + 8) & 1) == 0)
  {
    v4 = ScottyUpmixer::Initialize(this);
    if (v4)
    {
      return v4;
    }

    if (!*(this + 5))
    {
      return 4294944294;
    }

    ScottySTFTUpmixer::UpdateParameters(this);
    *(this + 4) = 1;
    v5.i32[0] = *(this + 80);
    if (*v5.i32 == 0.0)
    {
      if (getScottyLog(void)::onceToken != -1)
      {
        dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
      }

      v6 = getScottyLog(void)::gLog;
      if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v38 = (this + 2448);
        if (*(this + 2471) < 0)
        {
          v38 = *v38;
        }

        buf[0] = 136315394;
        *&buf[1] = v38;
        v57 = 2080;
        v58 = "Initialize";
        _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, "[%s|%s] Sample rate is zero", buf, 0x16u);
      }

LABEL_44:
      ScottySTFTUpmixer::UnInitialize(this);
      return 4294944291;
    }

    v7 = *(this + 85);
    if (v7 > 2047)
    {
      if (v7 != 2048 && v7 != 4096 && v7 != 0x2000)
      {
        goto LABEL_41;
      }
    }

    else if (v7 != 256 && v7 != 512 && v7 != 1024)
    {
LABEL_41:
      if (getScottyLog(void)::onceToken != -1)
      {
        dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
      }

      v36 = getScottyLog(void)::gLog;
      if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        v42 = (this + 2448);
        if (*(this + 2471) < 0)
        {
          v42 = *v42;
        }

        v43 = *(this + 85);
        buf[0] = 136315650;
        *&buf[1] = v42;
        v57 = 2080;
        v58 = "Initialize";
        v59 = 1024;
        v60 = v43;
        _os_log_error_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid FFT size %u", buf, 0x1Cu);
      }

      goto LABEL_44;
    }

    if (*(this + 86) == v7 >> 1)
    {
      buf[0] = 0;
      std::vector<float>::resize(this + 226, v7, buf, v5);
      v8 = *(this + 226);
      if (v8)
      {
        v9 = *(this + 85);
        if (v9)
        {
          v10 = 0;
          v11 = vdupq_n_s64(v9 - 1);
          v12 = xmmword_1DE095150;
          v13 = xmmword_1DE095160;
          v46 = 6.28318531 / v9;
          v47 = vdupq_n_s64(4uLL);
          v14 = (v9 + 3) & 0x1FFFFFFFCLL;
          v15 = (v8 + 8);
          __asm
          {
            FMOV            V5.2D, #-0.5
            FMOV            V6.2D, #0.5
          }

          v48 = v11;
          v44 = _Q6;
          v45 = _Q5;
          do
          {
            v51 = v13;
            v52 = v12;
            v22 = vcgeq_u64(v11, v13);
            v23 = vmovn_s64(v22);
            v50 = vuzp1_s16(v23, *v22.i8).u8[0];
            v24 = vorr_s8(vdup_n_s32(v10), 0x300000002);
            v25.i64[0] = v24.u32[0];
            v25.i64[1] = v24.u32[1];
            __x = vmulq_n_f64(vcvtq_f64_u64(v25), v46);
            v54 = cos(v46 * v10);
            v26 = cos(v46 * (v10 + 1));
            v27.f64[0] = v54;
            v27.f64[1] = v26;
            v55 = v27;
            v49 = cos(__x.f64[1]);
            v28.f64[0] = cos(__x.f64[0]);
            v29 = vsqrtq_f64(vmlaq_f64(v44, v45, v55));
            if (v50)
            {
              v30 = v29.f64[0];
              *(v15 - 2) = v30;
            }

            if (vuzp1_s16(v23, *&v28).i8[2])
            {
              v31 = v29.f64[1];
              *(v15 - 1) = v31;
            }

            v11 = v48;
            v28.f64[1] = v49;
            v32 = vsqrtq_f64(vmlaq_f64(v44, v45, v28));
            if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v48, *&v52))).i32[1])
            {
              v33 = v32.f64[0];
              *v15 = v33;
              v34 = v32.f64[1];
              v15[1] = v34;
            }

            v10 += 4;
            v12 = vaddq_s64(v52, v47);
            v13 = vaddq_s64(v51, v47);
            v15 += 4;
          }

          while (v14 != v10);
        }
      }

      ScottySTFTUpmixer::UpdateBufferAssignments(this);
      *(this + 81) = *(this + 88);
      MultiRadixRealFFT_Create();
    }

    if (getScottyLog(void)::onceToken != -1)
    {
      dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
    }

    v35 = getScottyLog(void)::gLog;
    if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v39 = (this + 2448);
      if (*(this + 2471) < 0)
      {
        v39 = *v39;
      }

      v40 = *(this + 86);
      v41 = *(this + 85);
      buf[0] = 136315906;
      *&buf[1] = v39;
      v57 = 2080;
      v58 = "Initialize";
      v59 = 1024;
      v60 = v40;
      v61 = 1024;
      v62 = v41;
      _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, "[%s|%s] Frame size %u is not half of FFT size %u", buf, 0x22u);
    }

    goto LABEL_44;
  }

  return 0;
}

void *ScottySTFTUpmixer::new_allpass_filter(void *this, double a2, double a3, double a4, uint64_t a5)
{
  v6 = *(a5 + 320) * 0.5;
  if (v6 >= a2)
  {
    if (v6 >= a3)
    {
      v6 = a3;
    }

    log(v6 / a2);
    operator new[]();
  }

  *this = 0;
  return this;
}

void sub_1DDE58D2C(_Unwind_Exception *a1)
{
  *v1 = 0;
  (*(*v4 + 8))(v4);
  MEMORY[0x1E12BD130](v3, v2);
  _Unwind_Resume(a1);
}

void ScottySTFTUpmixer::~ScottySTFTUpmixer(void **this)
{
  ScottySTFTUpmixer::~ScottySTFTUpmixer(this);

  JUMPOUT(0x1E12BD160);
}

{
  if (*(this + 2471) < 0)
  {
    operator delete(this[306]);
  }

  for (i = 304; i != 301; --i)
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](&this[i], 0);
  }

  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](&this[i--], 0);
  }

  while (i != 298);
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](&this[i--], 0);
  }

  while (i != 295);
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](&this[i--], 0);
  }

  while (i != 292);
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](&this[i--], 0);
  }

  while (i != 289);
  do
  {
    std::unique_ptr<AllPassComb>::reset[abi:ne200100](&this[i--], 0);
  }

  while (i != 286);
  v3 = this[284];
  if (v3)
  {
    this[285] = v3;
    operator delete(v3);
  }

  v4 = this[281];
  if (v4)
  {
    this[282] = v4;
    operator delete(v4);
  }

  v5 = this[280];
  this[280] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = this[279];
  this[279] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = this[278];
  this[278] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = this[277];
  this[277] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = this[276];
  this[276] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = this[275];
  this[275] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = this[274];
  this[274] = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = this[273];
  this[273] = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  for (j = 0; j != -12; j -= 3)
  {
    v14 = this[j + 238];
    if (v14)
    {
      this[j + 239] = v14;
      operator delete(v14);
    }
  }

  ScottySTFTUpmixer::STFT_tables_t::~STFT_tables_t((this + 199));
  ScottySTFTUpmixer::STFT_state_t::~STFT_state_t((this + 81));
  v15 = this[80];
  this[80] = 0;
  if (v15)
  {
    MultiRadixFFT_Dispose(v15);
  }

  ScottyUpmixer::~ScottyUpmixer(this);
}

void ScottySTFTUpmixer::STFT_tables_t::~STFT_tables_t(ScottySTFTUpmixer::STFT_tables_t *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v11 = (this + 96);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v11);
  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  v10 = *this;
  if (*this)
  {
    *(this + 1) = v10;
    operator delete(v10);
  }
}

void ScottySTFTUpmixer::STFT_state_t::~STFT_state_t(ScottySTFTUpmixer::STFT_state_t *this)
{
  for (i = 0; i != -144; i -= 24)
  {
    v3 = *(this + i + 920);
    if (v3)
    {
      *(this + i + 928) = v3;
      operator delete(v3);
    }
  }

  v4 = *(this + 97);
  if (v4)
  {
    *(this + 98) = v4;
    operator delete(v4);
  }

  v5 = *(this + 94);
  if (v5)
  {
    *(this + 95) = v5;
    operator delete(v5);
  }

  v6 = *(this + 91);
  if (v6)
  {
    *(this + 92) = v6;
    operator delete(v6);
  }

  v7 = *(this + 88);
  if (v7)
  {
    *(this + 89) = v7;
    operator delete(v7);
  }

  v8 = *(this + 85);
  if (v8)
  {
    *(this + 86) = v8;
    operator delete(v8);
  }

  v9 = *(this + 82);
  if (v9)
  {
    *(this + 83) = v9;
    operator delete(v9);
  }

  v10 = *(this + 79);
  if (v10)
  {
    *(this + 80) = v10;
    operator delete(v10);
  }

  v11 = *(this + 76);
  if (v11)
  {
    *(this + 77) = v11;
    operator delete(v11);
  }

  v12 = *(this + 73);
  if (v12)
  {
    *(this + 74) = v12;
    operator delete(v12);
  }

  v13 = *(this + 70);
  if (v13)
  {
    *(this + 71) = v13;
    operator delete(v13);
  }

  v14 = *(this + 67);
  if (v14)
  {
    *(this + 68) = v14;
    operator delete(v14);
  }

  v15 = *(this + 64);
  if (v15)
  {
    *(this + 65) = v15;
    operator delete(v15);
  }

  v16 = *(this + 61);
  if (v16)
  {
    *(this + 62) = v16;
    operator delete(v16);
  }

  v17 = *(this + 58);
  if (v17)
  {
    *(this + 59) = v17;
    operator delete(v17);
  }

  v18 = *(this + 55);
  if (v18)
  {
    *(this + 56) = v18;
    operator delete(v18);
  }

  v19 = *(this + 52);
  if (v19)
  {
    *(this + 53) = v19;
    operator delete(v19);
  }

  v20 = *(this + 49);
  if (v20)
  {
    *(this + 50) = v20;
    operator delete(v20);
  }

  v21 = *(this + 46);
  if (v21)
  {
    *(this + 47) = v21;
    operator delete(v21);
  }

  v22 = *(this + 43);
  if (v22)
  {
    *(this + 44) = v22;
    operator delete(v22);
  }

  v23 = *(this + 40);
  if (v23)
  {
    *(this + 41) = v23;
    operator delete(v23);
  }

  v24 = *(this + 37);
  if (v24)
  {
    *(this + 38) = v24;
    operator delete(v24);
  }

  v25 = *(this + 30);
  if (v25)
  {
    *(this + 31) = v25;
    operator delete(v25);
  }

  v26 = *(this + 27);
  if (v26)
  {
    *(this + 28) = v26;
    operator delete(v26);
  }

  v27 = *(this + 24);
  if (v27)
  {
    *(this + 25) = v27;
    operator delete(v27);
  }

  v28 = *(this + 21);
  if (v28)
  {
    *(this + 22) = v28;
    operator delete(v28);
  }

  v29 = *(this + 18);
  if (v29)
  {
    *(this + 19) = v29;
    operator delete(v29);
  }

  v30 = *(this + 15);
  if (v30)
  {
    *(this + 16) = v30;
    operator delete(v30);
  }

  v31 = *(this + 12);
  if (v31)
  {
    *(this + 13) = v31;
    operator delete(v31);
  }

  v32 = *(this + 9);
  if (v32)
  {
    *(this + 10) = v32;
    operator delete(v32);
  }

  v33 = *(this + 6);
  if (v33)
  {
    *(this + 7) = v33;
    operator delete(v33);
  }

  v34 = *(this + 3);
  if (v34)
  {
    *(this + 4) = v34;
    operator delete(v34);
  }

  v35 = *this;
  if (*this)
  {
    *(this + 1) = v35;
    operator delete(v35);
  }
}

uint64_t AUBeamIt::GetScopeExtended(AUBeamIt *this, int a2)
{
  if (a2 == 4)
  {
    return this + 584;
  }

  else
  {
    return 0;
  }
}

uint64_t AUBeamIt::ChangeStreamFormat(AUBeamIt *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  v6 = a3;
  v7 = a2;
  v19 = *MEMORY[0x1E69E9840];
  ausdk::AUBase::ChangeStreamFormat(this, a2, a3, a4, a5);
  v9 = 0;
  if (v7 == 1 && !v6)
  {
    v10 = *(this + 15);
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v11 >= 2 && ausdk::AUScope::GetElement((this + 80), 1u))
    {
      Element = ausdk::AUScope::GetElement((this + 80), 1u);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v9 = (*(*Element + 56))(Element, a5);
      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        v13 = *AUBeamItFDLogScope(void)::scope;
        if (!*AUBeamItFDLogScope(void)::scope)
        {
          return v9;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "AUBeamIt.cpp";
        v17 = 1024;
        v18 = 1508;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Setting the stream format for the second input bus to match the format of the first bus.\n", &v15, 0x12u);
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t AUBeamIt::ValidFormat(AUBeamIt *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  if (*(this + 633))
  {
    v4 = 32;
  }

  else
  {
    v4 = 64;
  }

  if (*(this + 633))
  {
    v5 = 1819304813;
  }

  else
  {
    v5 = 1718773105;
  }

  if (a4->mBitsPerChannel == v4 && a4->mFormatID == v5)
  {
    result = (a4->mFormatFlags >> 5) & 1;
  }

  else
  {
    result = 0;
  }

  if (a2 == 2)
  {
    mChannelsPerFrame = a4->mChannelsPerFrame;
    if (mChannelsPerFrame == 1)
    {
      v9 = result;
    }

    else
    {
      v9 = 0;
    }

    if (mChannelsPerFrame < 0x121)
    {
      v10 = result;
    }

    else
    {
      v10 = 0;
    }

    if ((a3 & 0xFFFFFFFE) == 2)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else if (a2 == 1)
  {
    if (a4->mChannelsPerFrame < 0x11)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUBeamIt::SupportedNumChannels(AUBeamIt *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUBeamIt::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 16;
}

uint64_t AUBeamIt::GetParameterValueStrings(AUBeamIt *this, int a2, int a3, const __CFArray **a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  if (a3 == 3)
  {
    v8 = xmmword_1E866BCC0;
    *&v9 = @"LSDD.";
    v6 = 3;
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v8 = xmmword_1E866BCB0;
    v6 = 2;
    goto LABEL_11;
  }

  if (a3 != 1)
  {
    return 0;
  }

  v8 = xmmword_1E866BC80;
  v9 = *&off_1E866BC90;
  v10 = xmmword_1E866BCA0;
  v6 = 6;
LABEL_11:
  v7 = CFArrayCreate(0, &v8, v6, 0);
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t AUBeamIt::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    this[66] = (this[66] + 1);
    this[68] = (this[68] + 1);
  }

  return result;
}

uint64_t AUBeamIt::SaveExtendedScopes(AUBeamIt *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUBeamIt::GetParameterInfo(AUBeamIt *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    result = 4294956418;
    if (a3 <= 101)
    {
      if (a3 == 100)
      {
        buffer->cfNameString = @"EC Delta EIR.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Delta EIR.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v7 = 0x501502F900000000;
      }

      else
      {
        if (a3 != 101)
        {
          return result;
        }

        buffer->cfNameString = @"EC IR Delay.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC IR Delay.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v7 = 0x43C8000000000000;
      }

      goto LABEL_18;
    }

    switch(a3)
    {
      case 'f':
        v6 = @"EC Adapted flag.";
        break;
      case 'g':
        buffer->cfNameString = @"EC Time aligned ref signal energy.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EC Time aligned ref signal energy.", buffer->name, 52, 0x8000100u);
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        v7 = 0x447A000000000000;
LABEL_18:
        *&buffer->minValue = v7;
        flags = buffer->flags;
        v9 = 1073774592;
LABEL_85:
        v25 = flags | v9;
LABEL_86:
        result = 0;
        buffer->flags = v25;
        return result;
      case 'h':
        v6 = @"EC Mic-Eclee cross correlation.";
        break;
      default:
        return result;
    }

    buffer->cfNameString = v6;
    buffer->flags = 0x8000000;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    buffer->unit = kAudioUnitParameterUnit_Generic;
    buffer->defaultValue = 0.0;
    v7 = 0x3F80000000000000;
    goto LABEL_18;
  }

  if (!a2)
  {
    switch(a3)
    {
      case 0:
        buffer->cfNameString = @"Bypass mode mic index.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Bypass mode mic index.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 0;
        goto LABEL_36;
      case 1:
        buffer->cfNameString = @"Beam selection mode.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Beam selection mode.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        v23 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v24 = 0x40A0000000000000;
        goto LABEL_44;
      case 2:
        buffer->cfNameString = @"EQ for beam selection.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"EQ for beam selection.", buffer->name, 52, 0x8000100u);
        v22 = 1;
        goto LABEL_40;
      case 3:
        buffer->cfNameString = @"Beam selection algorithm.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Beam selection algorithm.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        v23 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Indexed;
        v24 = 0x4000000000000000;
LABEL_44:
        *&buffer->minValue = v24;
        buffer->defaultValue = 0.0;
        goto LABEL_45;
      case 4:
        v17 = @"Select beams from (Auto)/Beam choice (Fixed).";
        goto LABEL_51;
      case 5:
        v17 = @"Select beams to.";
LABEL_51:
        buffer->cfNameString = v17;
        buffer->flags = 0x8000000;
        CFStringGetCString(v17, buffer->name, 52, 0x8000100u);
        v13 = 1;
        goto LABEL_52;
      case 6:
        buffer->cfNameString = @"Start frequency (Fmin).";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Start frequency (Fmin).", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        buffer->defaultValue = 1000.0;
        v15 = 3.32454649e25;
        goto LABEL_83;
      case 7:
        buffer->cfNameString = @"End frequency (Fmax).";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"End frequency (Fmax).", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        buffer->defaultValue = 5000.0;
        v15 = 2.17877479e30;
        goto LABEL_83;
      case 8:
        buffer->cfNameString = @"Energy smoothing time constant.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Energy smoothing time constant.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v34 = 0.3;
        goto LABEL_68;
      case 9:
        buffer->cfNameString = @"Energy threshold (dBFS)";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Energy threshold (dBFS)", buffer->name, 52, 0x8000100u);
        v20 = 1;
        goto LABEL_71;
      case 10:
        buffer->cfNameString = @"Selected beam.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Selected beam.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        v16 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v32 = 0x438F800000000000;
        goto LABEL_59;
      case 11:
        buffer->cfNameString = @"Selected beam distance (m).";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Selected beam distance (m).", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        v16 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Meters;
        *&buffer->minValue = 0x3F80000000000000;
        buffer->defaultValue = 1.0;
        goto LABEL_60;
      case 12:
        v19 = @"Selected beam azimuth (deg) (X->Y).";
        goto LABEL_55;
      case 13:
        v19 = @"Selected beam elevation (deg) (Z->XY).";
LABEL_55:
        buffer->cfNameString = v19;
        buffer->flags = 0x8000000;
        CFStringGetCString(v19, buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        v16 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Degrees;
        v32 = 0x43B4000000000000;
LABEL_59:
        *&buffer->minValue = v32;
        buffer->defaultValue = 0.0;
        goto LABEL_60;
      case 14:
        v14 = @"Mix EC Parameters?";
        goto LABEL_39;
      case 15:
        v14 = @"Switch beams in echo?";
LABEL_39:
        buffer->cfNameString = v14;
        buffer->flags = 0x8000000;
        CFStringGetCString(v14, buffer->name, 52, 0x8000100u);
        v22 = 2;
LABEL_40:
        buffer->clumpID = v22;
        v23 = buffer->flags;
        buffer->unit = v22;
        *&buffer->minValue = 0x3F80000000000000;
        buffer->defaultValue = 1.0;
LABEL_45:
        v25 = v23 | 0xC0100000;
        goto LABEL_86;
      case 16:
        buffer->cfNameString = @"Best beam in echo.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Best beam in echo.", buffer->name, 52, 0x8000100u);
        v13 = 2;
LABEL_52:
        buffer->clumpID = v13;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v21 = 0x438F800000000000;
        goto LABEL_76;
      case 17:
        buffer->cfNameString = @"Echo-to-local voice threshold.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Echo-to-local voice threshold.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = -3.0;
        __asm { FMOV            V0.2S, #-12.0 }

        v15 = -_D0;
        goto LABEL_83;
      case 18:
        v33 = @"Echo level threshold.";
        goto LABEL_70;
      case 19:
        v33 = @"Local voice level threshold.";
LABEL_70:
        buffer->cfNameString = v33;
        buffer->flags = 0x8000000;
        CFStringGetCString(v33, buffer->name, 52, 0x8000100u);
        v20 = 2;
LABEL_71:
        buffer->clumpID = v20;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = -60.0;
        *&v15 = 3267887104;
        goto LABEL_83;
      case 20:
        buffer->cfNameString = @"Echo active flag.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Echo active flag.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 2;
        v16 = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        buffer->defaultValue = 0.0;
        *&buffer->minValue = 0x3F80000000000000;
LABEL_60:
        v25 = v16 | 0x40108000;
        goto LABEL_86;
      case 21:
        v31 = @"Mean Normalize Selection Beams.";
        goto LABEL_73;
      case 22:
        v31 = @"Use mic power averaging.";
        goto LABEL_73;
      case 23:
        buffer->cfNameString = @"Limit wind boost?";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Limit wind boost?", buffer->name, 52, 0x8000100u);
        v35 = 3;
        goto LABEL_75;
      case 24:
        buffer->cfNameString = @"Reference mic index.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Reference mic index.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
LABEL_36:
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v21 = 0x4170000000000000;
        goto LABEL_76;
      case 25:
        buffer->cfNameString = @"Cutoff frequency for wind boost limiting.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Cutoff frequency for wind boost limiting.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        buffer->defaultValue = 500.0;
        v15 = 5.02913141e26;
        goto LABEL_83;
      case 26:
        buffer->cfNameString = @"Wind boost detection threshold (dB).";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Wind boost detection threshold (dB).", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = 6.0;
        goto LABEL_82;
      case 27:
        buffer->cfNameString = @"Max wind boost allowed (dB).";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Max wind boost allowed (dB).", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = 0.0;
LABEL_82:
        v15 = 2097152.0;
        goto LABEL_83;
      case 28:
        buffer->cfNameString = @"Current Crossover Frequency (MAX).";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Current Crossover Frequency (MAX).", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        buffer->defaultValue = 20.0;
        *&buffer->minValue = 0x469C400041A00000;
        v9 = 1079017472;
        goto LABEL_85;
      case 29:
        buffer->cfNameString = @"Scale Cutoff.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Scale Cutoff.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = -100.0;
        v18 = 0x42C80000C2C80000;
        goto LABEL_79;
      case 30:
        buffer->cfNameString = @"Raw Scale Smoothing.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Raw Scale Smoothing.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v12 = 0.03;
        goto LABEL_63;
      case 31:
        buffer->cfNameString = @"Omni Blend Scale Thres.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Omni Blend Scale Thres.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = -12.0;
        v15 = 5.27765837e13;
        goto LABEL_83;
      case 32:
        buffer->cfNameString = @"Crossover Max Frequency.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Crossover Max Frequency.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        v10 = 1250.0;
        goto LABEL_65;
      case 33:
        buffer->cfNameString = @"Crossover Index Attack.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Crossover Index Attack.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v11 = 0.1;
        goto LABEL_28;
      case 34:
        buffer->cfNameString = @"Crossover Index Release.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Crossover Index Release.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v11 = 1.0;
        goto LABEL_28;
      case 35:
        buffer->cfNameString = @"Crossover Index Hold.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Crossover Index Hold.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v11 = 1.5;
LABEL_28:
        buffer->defaultValue = v11;
        v15 = 524288.0;
        goto LABEL_83;
      case 36:
        buffer->cfNameString = @"Crossover Index Smoothing.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Crossover Index Smoothing.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v12 = 0.4;
        goto LABEL_63;
      case 37:
        buffer->cfNameString = @"Min Omni Blend Crossover Frequency.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Min Omni Blend Crossover Frequency.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Hertz;
        v10 = 250.0;
LABEL_65:
        buffer->defaultValue = v10;
        v15 = 1.43244518e32;
        goto LABEL_83;
      case 38:
        buffer->cfNameString = @"Min Omni Blend Abs. Energy Trigger.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Min Omni Blend Abs. Energy Trigger.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        buffer->defaultValue = -90.0;
        v15 = 1.35108054e16;
        goto LABEL_83;
      case 39:
        buffer->cfNameString = @"Wind / Scratch Detect Trigger Attack.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Wind / Scratch Detect Trigger Attack.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        v34 = 0.25;
LABEL_68:
        buffer->defaultValue = v34;
        v15 = 0.0078125;
LABEL_83:
        *&buffer->minValue = v15;
        goto LABEL_84;
      case 40:
        buffer->cfNameString = @"Wind / Scratch Detect Trigger Release.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Wind / Scratch Detect Trigger Release.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Seconds;
        buffer->defaultValue = 0.25;
        v18 = 0x3F80000000000000;
        goto LABEL_79;
      case 41:
        buffer->cfNameString = @"Cross Fade Length Ramp Slope.";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Cross Fade Length Ramp Slope.", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 3;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        v12 = 0.75;
LABEL_63:
        buffer->defaultValue = v12;
        v18 = 0x4120000000000000;
LABEL_79:
        *&buffer->minValue = v18;
        v9 = -1005584384;
        goto LABEL_85;
      case 42:
        v31 = @"Use beam crossfade for the uplink beam.";
LABEL_73:
        buffer->cfNameString = v31;
        buffer->flags = 0x8000000;
        CFStringGetCString(v31, buffer->name, 52, 0x8000100u);
        v35 = 1;
LABEL_75:
        buffer->clumpID = v35;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        v21 = 0x3F80000000000000;
LABEL_76:
        *&buffer->minValue = v21;
        buffer->defaultValue = 0.0;
        goto LABEL_84;
      case 43:
        buffer->cfNameString = @"Enable beam switching for Auto mode (e.g., external VAD).";
        buffer->flags = 0x8000000;
        CFStringGetCString(@"Enable beam switching for Auto mode (e.g., external VAD).", buffer->name, 52, 0x8000100u);
        buffer->clumpID = 1;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        *&buffer->minValue = 0x3F80000000000000;
        buffer->defaultValue = 1.0;
LABEL_84:
        v9 = -1072693248;
        goto LABEL_85;
      default:
        return 4294956418;
    }
  }

  return 4294956430;
}

uint64_t AUBeamIt::GetParameterList(AUBeamIt *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    if (a2 != 4)
    {
      return 4294956430;
    }

    if (!a3)
    {
      v4 = 5;
      goto LABEL_11;
    }

    v4 = 5;
    *a3 = 100;
    v5 = 104;
    v6 = 103;
    v7 = 102;
    v8 = 101;
    v9 = 4;
    v10 = 3;
    v11 = 2;
    v12 = 1;
  }

  else
  {
    if (!a3)
    {
      v4 = 44;
      goto LABEL_11;
    }

    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09DCC0;
    *(a3 + 3) = xmmword_1DE09DCD0;
    *(a3 + 4) = xmmword_1DE09DCE0;
    *(a3 + 5) = xmmword_1DE09DCF0;
    *(a3 + 6) = xmmword_1DE09C210;
    *(a3 + 7) = xmmword_1DE09CD40;
    v4 = 44;
    v5 = 43;
    v6 = 42;
    v7 = 41;
    v8 = 40;
    v9 = 43;
    v10 = 42;
    v11 = 41;
    v12 = 40;
    *(a3 + 8) = xmmword_1DE09CD50;
    *(a3 + 9) = xmmword_1DE09CD60;
  }

  a3[v12] = v8;
  a3[v11] = v7;
  a3[v10] = v6;
  a3[v9] = v5;
LABEL_11:
  result = 0;
  *a4 = v4;
  return result;
}

uint64_t AUBeamIt::SetBusCount(AUBeamIt *this, int a2, unsigned int a3)
{
  if (a2 == 1 && a3 - 1 < 2)
  {
    v3 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v3), a3);
    return 0;
  }

  v4 = 4294956445;
  if (a2 == 2 && a3 <= 4)
  {
    v3 = 128;
    goto LABEL_7;
  }

  return v4;
}

uint64_t AUBeamIt::BusCountWritable(AUBeamIt *this, int a2)
{
  if ((a2 - 1) > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 17) ^ 1;
  }

  return v2 & 1;
}

ausdk::AUInputElement *AUBeamIt::Render(AUBeamIt *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v35 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v10 = *(this + 15);
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v9 >= v11)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), v9);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v9);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v9, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v8 = 1;
    }

    v9 = (v9 + 1);
  }

  v15 = 0;
  memset(v34, 0, sizeof(v34));
  do
  {
    v16 = *(this + 21);
    if (v16)
    {
      LODWORD(v17) = (*(*v16 + 24))(v16);
    }

    else
    {
      v17 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v15 >= v17)
    {
      v19 = 0;
    }

    else
    {
      v18 = ausdk::AUScope::GetElement((this + 128), v15);
      if (!v18)
      {
LABEL_43:
        ausdk::Throw(0xFFFFD583);
      }

      v19 = ausdk::AUIOElement::PrepareBuffer(v18, a4);
    }

    *(v34 + v15++) = v19;
  }

  while (v15 != 4);
  if (v8)
  {
    return 0;
  }

  v20 = 0;
  v32 = 0;
  v33 = 0;
  v21 = &v32;
  v22 = 1;
  do
  {
    v23 = v22;
    v24 = *(this + 15);
    if (v24)
    {
      LODWORD(v25) = (*(*v24 + 24))(v24);
    }

    else
    {
      v25 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v20 >= v25)
    {
      v27 = 0;
    }

    else
    {
      v26 = ausdk::AUScope::GetElement((this + 80), v20);
      if (!v26)
      {
        goto LABEL_43;
      }

      if (!*(v26 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v27 = *(v26 + 152) + 48;
    }

    v22 = 0;
    *v21 = v27;
    v21 = &v33;
    v20 = 1;
  }

  while ((v23 & 1) != 0);
  v28 = *(this + 15);
  if (v28)
  {
    v29 = (*(*v28 + 24))(v28);
  }

  else
  {
    v29 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v30 = *(this + 21);
  if (v30)
  {
    v31 = (*(*v30 + 24))(v30);
  }

  else
  {
    v31 = (*(this + 19) - *(this + 18)) >> 3;
  }

  return (*(*this + 184))(this, a2, a4, v29, &v32, v31, v34);
}

uint64_t AUBeamIt::ProcessMultipleBufferLists(AUBeamIt *this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v101 = *MEMORY[0x1E69E9840];
  v13 = *(this + 66);
  if (*(this + 67) != v13)
  {
    AUBeamIt::UpdateState(this);
    *(this + 67) = v13;
  }

  v14 = *(this + 68);
  if (*(this + 69) != v14)
  {
    if (*(*(this + 80) + 8))
    {
      v15 = 0;
      v16 = (this + 828);
      do
      {
        Element = ausdk::AUScope::GetElement((this + 584), v15);
        *(v16 - 4) = ausdk::AUElement::GetParameter(Element, 0x64u);
        v18 = ausdk::AUScope::GetElement((this + 584), v15);
        *(v16 - 3) = ausdk::AUElement::GetParameter(v18, 0x65u);
        v19 = ausdk::AUScope::GetElement((this + 584), v15);
        *(v16 - 2) = ausdk::AUElement::GetParameter(v19, 0x66u);
        v20 = ausdk::AUScope::GetElement((this + 584), v15);
        *(v16 - 1) = ausdk::AUElement::GetParameter(v20, 0x67u);
        v21 = ausdk::AUScope::GetElement((this + 584), v15);
        *v16 = ausdk::AUElement::GetParameter(v21, 0x68u);
        v16 += 5;
        ++v15;
      }

      while (v15 < *(*(this + 80) + 8));
    }

    *(this + 69) = v14;
  }

  v22 = *(this + 70);
  if (*(this + 71) != v22)
  {
    v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v24 & 1) == 0)
    {
      goto LABEL_150;
    }

    *(this + 753) = ausdk::AUElement::GetParameter(v23, 0x2Bu) != 0.0;
    *(this + 71) = v22;
  }

  v25 = (this + 648);
  memcpy((*(this + 80) + 64), this + 648, 0x1E8uLL);
  if (*(this + 84) != a3)
  {
    return 4294956422;
  }

  v27 = 0;
  *&v96[6] = 0uLL;
  v28 = &v96[14];
  v29 = 1;
  do
  {
    v30 = v29;
    if (v27 >= a4)
    {
      v31 = 0;
    }

    else
    {
      v31 = a5[v27];
    }

    v29 = 0;
    *v28 = v31;
    v28 = &v96[6];
    v27 = 1;
  }

  while ((v30 & 1) != 0);
  v32 = 0;
  v99 = 0u;
  v100 = 0u;
  do
  {
    if (v32 >= a6)
    {
      v33 = 0;
    }

    else
    {
      v33 = a7[v32];
    }

    *(&v99 + v32++) = v33;
  }

  while (v32 != 4);
  v34 = *&v96[14];
  if (!*&v96[14])
  {
    return 4294956420;
  }

  v35 = **&v96[14];
  v36 = *(this + 80);
  if (**&v96[14] != *(v36 + 8))
  {
    return 4294956428;
  }

  v37 = *&v96[6];
  if (*&v96[6])
  {
    if (**&v96[6] != v35)
    {
      return 4294956428;
    }
  }

  v38 = v99;
  if (v99)
  {
    if (*v99 != 1)
    {
      return 4294956428;
    }
  }

  if (*(&v99 + 1) && **(&v99 + 1) != 1)
  {
    return 4294956428;
  }

  v39 = v100;
  if (v100)
  {
    if (*v100 > *(v36 + 12))
    {
      return 4294956428;
    }
  }

  v40 = *(&v100 + 1);
  if (*(&v100 + 1))
  {
    if (**(&v100 + 1) > *(v36 + 12))
    {
      return 4294956428;
    }
  }

  v89 = *(&v99 + 1);
  v42 = *&v96[6] == 0;
  *&v96[2] = 0;
  *v96 = 0;
  v43 = (a3 << (*(this + 633) ^ 1));
  *&v92.mNumberBuffers = *(v36 + 24);
  v92.mBuffers[0] = xmmword_1DE09BD50;
  v93 = 4;
  v94 = v35;
  v95 = 32;
  AudioDSP::Utility::DetectNonFinites(v43, *&v96[14], &v92, &v96[5], v26);
  if (!v42)
  {
    AudioDSP::Utility::DetectNonFinites(v43, v37, &v92, &v96[4], v44);
  }

  if ((*(this + 576) & 1) == 0 && ((v96[5] & 1) == 0 && v96[4] != 1 || *(this + 634) != 1))
  {
    BeamformerBase::ProcessBufferLists(*(this + 80), v34, v37, v38, v89, v39, v40);
    memcpy(this + 648, (*(this + 80) + 64), 0x1E8uLL);
    v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v52 & 1) == 0)
    {
      goto LABEL_150;
    }

    LOBYTE(v51) = *(this + 732);
    ausdk::AUElement::SetParameter(v50, 0x14u, v51);
    v53 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v54 & 1) == 0)
    {
      goto LABEL_150;
    }

    ausdk::AUElement::SetParameter(v53, 0xAu, *(this + 173));
    v55 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v56 & 1) == 0)
    {
      goto LABEL_150;
    }

    ausdk::AUElement::SetParameter(v55, 0xBu, *(this + 175));
    v57 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v58 & 1) == 0)
    {
      goto LABEL_150;
    }

    ausdk::AUElement::SetParameter(v57, 0xCu, *(this + 176));
    v59 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v60 & 1) == 0)
    {
      goto LABEL_150;
    }

    ausdk::AUElement::SetParameter(v59, 0xDu, *(this + 177));
    v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v62 & 1) == 0)
    {
      goto LABEL_150;
    }

    ausdk::AUElement::SetParameter(v61, 0x1Cu, *(this + 189));
    *&v90.mNumberBuffers = *(*(this + 80) + 24);
    v90.mBuffers[0] = xmmword_1DE09BD50;
    v91 = xmmword_1DE09BD60;
    if (v38)
    {
      AudioDSP::Utility::DetectNonFinites(v43, v38, &v90, &v96[3], v63);
    }

    if (v89)
    {
      AudioDSP::Utility::DetectNonFinites(v43, v89, &v90, &v96[2], v63);
    }

    if (v39)
    {
      mNumberBuffers = v39->mNumberBuffers;
      *&v96[22] = *(*(this + 80) + 24);
      *&v96[30] = xmmword_1DE09BD50;
      LODWORD(v97) = 4;
      HIDWORD(v97) = mNumberBuffers;
      v98[0] = 32;
      AudioDSP::Utility::DetectNonFinites(v43, v39, &v96[22], &v96[1], v63);
    }

    if (v40)
    {
      v65 = v40->mNumberBuffers;
      *&v96[22] = *(*(this + 80) + 24);
      *&v96[30] = xmmword_1DE09BD50;
      LODWORD(v97) = 4;
      HIDWORD(v97) = v65;
      v98[0] = 32;
      AudioDSP::Utility::DetectNonFinites(v43, v40, &v96[22], v96, v63);
    }

    if (*(this + 634) != 1 || (v96[3] & 1) == 0 && (v96[2] & 1) == 0 && (v96[1] & 1) == 0 && v96[0] != 1)
    {
      goto LABEL_149;
    }

    if (*(this + 633) == 1)
    {
      if (AUBeamItTDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_195);
      }

      if (AUBeamItTDLogScope(void)::scope)
      {
        v66 = *AUBeamItTDLogScope(void)::scope;
        if (!*AUBeamItTDLogScope(void)::scope)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v66 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_124;
      }

      *&v96[22] = 136316418;
      *&v96[26] = "AUBeamIt.cpp";
      *&v96[34] = 1024;
      *&v96[36] = 1787;
      *&v96[40] = 1024;
      *&v96[42] = v96[3];
      LOWORD(v97) = 1024;
      *(&v97 + 2) = v96[2];
      HIWORD(v97) = 1024;
      LODWORD(v98[0]) = v96[1];
      WORD2(v98[0]) = 1024;
      *(v98 + 6) = v96[0];
      v74 = "%25s:%-5d AUBeamItTD: (BFMicOut, BFLeeOut, AllUplinkBeams, AllSelectionBeams) is NOT finite: (%u, %u, %u, %u)";
    }

    else
    {
      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        v66 = *AUBeamItFDLogScope(void)::scope;
        if (!*AUBeamItFDLogScope(void)::scope)
        {
LABEL_124:
          (*(**(this + 80) + 16))(*(this + 80), *(this + 84), *(*(this + 80) + 24));
          if (*(this + 162) >= *(*(this + 80) + 8))
          {
            if (AUBeamItFDLogScope(void)::once != -1)
            {
              dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
            }

            if (AUBeamItFDLogScope(void)::scope)
            {
              if (*(AUBeamItFDLogScope(void)::scope + 8))
              {
                v75 = *AUBeamItFDLogScope(void)::scope;
                if (*AUBeamItFDLogScope(void)::scope)
                {
                  if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
                  {
                    *&v96[22] = 136315394;
                    *&v96[26] = "AUBeamIt.cpp";
                    *&v96[34] = 1024;
                    *&v96[36] = 1799;
                    _os_log_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_DEBUG, "%25s:%-5d BypassMicIndex set to a value greater than number of input mics. Setting it to mNumMics-1.\n", &v96[22], 0x12u);
                  }
                }
              }
            }

            *(this + 162) = *(*(this + 80) + 8) - 1;
            v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if ((v77 & 1) == 0)
            {
              goto LABEL_150;
            }

            ausdk::AUElement::SetParameter(v76, 0, *v25);
          }

          if (v38)
          {
            memcpy(*(v38 + 16), v34->mBuffers[*v25].mData, v34->mBuffers[*v25].mDataByteSize);
          }

          if (v89)
          {
            mData = v89->mBuffers[0].mData;
            if (v37)
            {
              memcpy(mData, v37->mBuffers[*v25].mData, v37->mBuffers[*v25].mDataByteSize);
            }

            else
            {
              bzero(mData, v89->mBuffers[0].mDataByteSize);
            }
          }

          if (v39 && v39->mNumberBuffers)
          {
            v79 = 0;
            p_mData = &v39->mBuffers[0].mData;
            do
            {
              bzero(*p_mData, *(p_mData - 1));
              ++v79;
              p_mData += 2;
            }

            while (v79 < v39->mNumberBuffers);
          }

          if (v40 && v40->mNumberBuffers)
          {
            v81 = 0;
            v82 = &v40->mBuffers[0].mData;
            do
            {
              bzero(*v82, *(v82 - 1));
              ++v81;
              v82 += 2;
            }

            while (v81 < v40->mNumberBuffers);
          }

          v83 = this + 20 * *(this + 162) + 812;
          *(this + 207) = *(v83 + 4);
          *(this + 812) = *v83;
          memcpy((*(this + 80) + 64), this + 648, 0x1E8uLL);
          goto LABEL_149;
        }
      }

      else
      {
        v66 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_124;
      }

      *&v96[22] = 136316418;
      *&v96[26] = "AUBeamIt.cpp";
      *&v96[34] = 1024;
      *&v96[36] = 1791;
      *&v96[40] = 1024;
      *&v96[42] = v96[3];
      LOWORD(v97) = 1024;
      *(&v97 + 2) = v96[2];
      HIWORD(v97) = 1024;
      LODWORD(v98[0]) = v96[1];
      WORD2(v98[0]) = 1024;
      *(v98 + 6) = v96[0];
      v74 = "%25s:%-5d AUBeamItFD: (BFMicOut, BFLeeOut, AllUplinkBeams, AllSelectionBeams) is NOT finite: (%u, %u, %u, %u)";
    }

    _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_ERROR, v74, &v96[22], 0x2Au);
    goto LABEL_124;
  }

  v45 = v89;
  if (*(this + 162) < *(*(this + 80) + 8))
  {
    goto LABEL_53;
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    if (*(AUBeamItFDLogScope(void)::scope + 8))
    {
      v46 = *AUBeamItFDLogScope(void)::scope;
      if (*AUBeamItFDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          *&v96[22] = 136315394;
          *&v96[26] = "AUBeamIt.cpp";
          *&v96[34] = 1024;
          *&v96[36] = 1685;
          _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d BypassMicIndex set to a value greater than number of input mics. Setting it to mNumMics-1.\n", &v96[22], 0x12u);
        }
      }
    }
  }

  *(this + 162) = *(*(this + 80) + 8) - 1;
  v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v48 & 1) == 0)
  {
LABEL_150:
    abort();
  }

  ausdk::AUElement::SetParameter(v47, 0, *v25);
  v45 = v89;
LABEL_53:
  if (v38)
  {
    memcpy(*(v38 + 16), v34->mBuffers[*v25].mData, v34->mBuffers[*v25].mDataByteSize);
  }

  if (v45)
  {
    v49 = v45->mBuffers[0].mData;
    if (v37)
    {
      memcpy(v49, v37->mBuffers[*v25].mData, v37->mBuffers[*v25].mDataByteSize);
    }

    else
    {
      bzero(v49, v45->mBuffers[0].mDataByteSize);
    }
  }

  if (v39 && v39->mNumberBuffers)
  {
    v67 = 0;
    v68 = &v39->mBuffers[0].mData;
    do
    {
      bzero(*v68, *(v68 - 1));
      ++v67;
      v68 += 2;
    }

    while (v67 < v39->mNumberBuffers);
  }

  if (v40 && v40->mNumberBuffers)
  {
    v69 = 0;
    v70 = &v40->mBuffers[0].mData;
    do
    {
      bzero(*v70, *(v70 - 1));
      ++v69;
      v70 += 2;
    }

    while (v69 < v40->mNumberBuffers);
  }

  v71 = this + 20 * *(this + 162) + 812;
  *(this + 207) = *(v71 + 4);
  *(this + 812) = *v71;
  memcpy((*(this + 80) + 64), this + 648, 0x1E8uLL);
  if ((v96[5] & 1) == 0 && v96[4] != 1)
  {
    goto LABEL_149;
  }

  if (*(this + 633) == 1)
  {
    if (AUBeamItTDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItTDLogScope(void)::once, &__block_literal_global_195);
    }

    if (AUBeamItTDLogScope(void)::scope)
    {
      v72 = *AUBeamItTDLogScope(void)::scope;
      if (!*AUBeamItTDLogScope(void)::scope)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v72 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *&v96[22] = 136315906;
      *&v96[26] = "AUBeamIt.cpp";
      *&v96[34] = 1024;
      *&v96[36] = 1725;
      *&v96[40] = 1024;
      *&v96[42] = v96[5];
      LOWORD(v97) = 1024;
      *(&v97 + 2) = v96[4];
      v73 = "%25s:%-5d AUBeamItTD: (InputSignals, EchoEstimates) is NOT finite: (%u, %u)";
LABEL_111:
      _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_ERROR, v73, &v96[22], 0x1Eu);
    }
  }

  else
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      v72 = *AUBeamItFDLogScope(void)::scope;
      if (!*AUBeamItFDLogScope(void)::scope)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v72 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      *&v96[22] = 136315906;
      *&v96[26] = "AUBeamIt.cpp";
      *&v96[34] = 1024;
      *&v96[36] = 1729;
      *&v96[40] = 1024;
      *&v96[42] = v96[5];
      LOWORD(v97) = 1024;
      *(&v97 + 2) = v96[4];
      v73 = "%25s:%-5d AUBeamItFD: (InputSignals, EchoEstimates) is NOT finite: (%u, %u)";
      goto LABEL_111;
    }
  }

LABEL_149:
  v84 = ausdk::AUScope::GetElement((this + 584), 0);
  ausdk::AUElement::SetParameter(v84, 0x64u, *(this + 203));
  v85 = ausdk::AUScope::GetElement((this + 584), 0);
  ausdk::AUElement::SetParameter(v85, 0x65u, *(this + 204));
  v86 = ausdk::AUScope::GetElement((this + 584), 0);
  ausdk::AUElement::SetParameter(v86, 0x66u, *(this + 205));
  v87 = ausdk::AUScope::GetElement((this + 584), 0);
  ausdk::AUElement::SetParameter(v87, 0x67u, *(this + 206));
  v88 = ausdk::AUScope::GetElement((this + 584), 0);
  ausdk::AUElement::SetParameter(v88, 0x68u, *(this + 207));
  return 0;
}

void AUBeamIt::UpdateState(AUBeamIt *this)
{
  v133 = *MEMORY[0x1E69E9840];
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 162) = ausdk::AUElement::GetParameter(v2, 0);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 163) = ausdk::AUElement::GetParameter(v4, 1u);
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 164) = ausdk::AUElement::GetParameter(v6, 2u);
  v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 165) = ausdk::AUElement::GetParameter(v8, 3u);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 166) = ausdk::AUElement::GetParameter(v10, 4u);
  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 167) = ausdk::AUElement::GetParameter(v12, 5u);
  v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 168) = ausdk::AUElement::GetParameter(v14, 6u);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 169) = ausdk::AUElement::GetParameter(v16, 7u);
  v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 170) = ausdk::AUElement::GetParameter(v18, 8u);
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 171) = ausdk::AUElement::GetParameter(v20, 9u);
  v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v23 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 688) = ausdk::AUElement::GetParameter(v22, 0x15u) != 0.0;
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 689) = ausdk::AUElement::GetParameter(v24, 0x16u) != 0.0;
  v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 173) = ausdk::AUElement::GetParameter(v26, 0xAu);
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 175) = ausdk::AUElement::GetParameter(v28, 0xBu);
  v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 176) = ausdk::AUElement::GetParameter(v30, 0xCu);
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 177) = ausdk::AUElement::GetParameter(v32, 0xDu);
  v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 712) = ausdk::AUElement::GetParameter(v34, 0xEu) != 0.0;
  v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 713) = ausdk::AUElement::GetParameter(v36, 0xFu) != 0.0;
  v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 179) = ausdk::AUElement::GetParameter(v38, 0x10u);
  v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 180) = ausdk::AUElement::GetParameter(v40, 0x11u);
  v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 181) = ausdk::AUElement::GetParameter(v42, 0x12u);
  v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 182) = ausdk::AUElement::GetParameter(v44, 0x13u);
  v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 732) = ausdk::AUElement::GetParameter(v46, 0x14u) != 0.0;
  v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 733) = ausdk::AUElement::GetParameter(v48, 0x17u) != 0.0;
  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 184) = ausdk::AUElement::GetParameter(v50, 0x18u);
  v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 185) = ausdk::AUElement::GetParameter(v52, 0x19u);
  v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 186) = ausdk::AUElement::GetParameter(v54, 0x1Au);
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 187) = ausdk::AUElement::GetParameter(v56, 0x1Bu);
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 189) = ausdk::AUElement::GetParameter(v58, 0x1Cu);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 190) = ausdk::AUElement::GetParameter(v60, 0x1Du);
  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 191) = ausdk::AUElement::GetParameter(v62, 0x1Eu);
  v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 192) = ausdk::AUElement::GetParameter(v64, 0x1Fu);
  v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 193) = ausdk::AUElement::GetParameter(v66, 0x20u);
  v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 194) = ausdk::AUElement::GetParameter(v68, 0x21u);
  v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 195) = ausdk::AUElement::GetParameter(v70, 0x22u);
  v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 196) = ausdk::AUElement::GetParameter(v72, 0x23u);
  v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v75 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 197) = ausdk::AUElement::GetParameter(v74, 0x24u);
  v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 198) = ausdk::AUElement::GetParameter(v76, 0x25u);
  v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 199) = ausdk::AUElement::GetParameter(v78, 0x26u);
  v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 200) = ausdk::AUElement::GetParameter(v80, 0x27u);
  v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v83 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 201) = ausdk::AUElement::GetParameter(v82, 0x28u);
  v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v85 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 202) = ausdk::AUElement::GetParameter(v84, 0x29u);
  v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 752) = ausdk::AUElement::GetParameter(v86, 0x2Au) != 0.0;
  v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v89 & 1) == 0)
  {
    goto LABEL_158;
  }

  *(this + 753) = ausdk::AUElement::GetParameter(v88, 0x2Bu) != 0.0;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v91 = *(Element + 80);
  v92 = v91 * 0.5;
  if (*(this + 168) > (v91 * 0.5))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v93 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1911;
            _os_log_impl(&dword_1DDB85000, v93, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fmin must be < (samplingRate/2). Setting Fmin = samplingRate/2.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 168) = v92;
    v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v95 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v94, 6u, *(this + 168));
  }

  v96 = *(this + 169);
  if (v96 > v92)
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v97 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1916;
            _os_log_impl(&dword_1DDB85000, v97, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fmax must be < (samplingRate/2). Setting Fmax = samplingRate/2.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 169) = v92;
    v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v99 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v98, 7u, *(this + 169));
    v96 = *(this + 169);
  }

  if (*(this + 168) > v96)
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v100 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1921;
            _os_log_impl(&dword_1DDB85000, v100, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fmin must be <= Fmax. Setting Fmin = Fmax.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 168) = *(this + 169);
    v101 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v102 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v101, 6u, *(this + 168));
  }

  v103 = *(this + 80);
  if (*(this + 162) >= *(v103 + 8))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v104 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1926;
            _os_log_impl(&dword_1DDB85000, v104, OS_LOG_TYPE_DEBUG, "%25s:%-5d BypassMicIndex set to a value greater than number of input mics. Setting it to mNumMics-1.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 162) = *(*(this + 80) + 8) - 1;
    v105 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v106 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v105, 0, *(this + 162));
    v103 = *(this + 80);
  }

  v107 = *(v103 + 12);
  if (*(this + 166) >= v107)
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v108 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1931;
            _os_log_impl(&dword_1DDB85000, v108, OS_LOG_TYPE_DEBUG, "%25s:%-5d SelectBeamsFrom set to a value greater than number of beams. Setting it to mNumBeams-1.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 166) = *(*(this + 80) + 12) - 1;
    v109 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v110 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v109, 4u, *(this + 166));
    v107 = *(*(this + 80) + 12);
  }

  if (*(this + 167) >= v107)
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v111 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1936;
            _os_log_impl(&dword_1DDB85000, v111, OS_LOG_TYPE_DEBUG, "%25s:%-5d SelectBeamsTo set to a value greater than number of beams. Setting it to mNumBeams-1.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 167) = *(*(this + 80) + 12) - 1;
    v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v113 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v112, 5u, *(this + 167));
  }

  if (*(this + 163) == 2)
  {
    if (*(this + 167) != *(this + 166))
    {
      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        if (*(AUBeamItFDLogScope(void)::scope + 8))
        {
          v114 = *AUBeamItFDLogScope(void)::scope;
          if (*AUBeamItFDLogScope(void)::scope)
          {
            if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
            {
              v129 = 136315394;
              v130 = "AUBeamIt.cpp";
              v131 = 1024;
              v132 = 1942;
              _os_log_impl(&dword_1DDB85000, v114, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fixed beam selection mode is chosen. Setting SelectBeamsTo = SelectBeamsFrom.\n", &v129, 0x12u);
            }
          }
        }
      }

      *(this + 167) = *(this + 166);
      v115 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v116 & 1) == 0)
      {
        goto LABEL_158;
      }

      ausdk::AUElement::SetParameter(v115, 5u, *(this + 167));
    }
  }

  else if (*(this + 166) > *(this + 167))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v117 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1949;
            _os_log_impl(&dword_1DDB85000, v117, OS_LOG_TYPE_DEBUG, "%25s:%-5d SelectBeamsFrom set to a value greater than SelectBeamsTo. Setting it to SelectBeamsTo.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 166) = *(this + 167);
    v118 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v119 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v118, 4u, *(this + 166));
  }

  if (*(this + 179) >= *(*(this + 80) + 12))
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v120 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1955;
            _os_log_impl(&dword_1DDB85000, v120, OS_LOG_TYPE_DEBUG, "%25s:%-5d BestBeamInEcho set to a value greater than number of beams. Setting it to mNumBeams-1.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 179) = *(*(this + 80) + 12) - 1;
    v121 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v122 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v121, 0x10u, *(this + 179));
  }

  if (*(this + 185) > v92)
  {
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      if (*(AUBeamItFDLogScope(void)::scope + 8))
      {
        v123 = *AUBeamItFDLogScope(void)::scope;
        if (*AUBeamItFDLogScope(void)::scope)
        {
          if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
          {
            v129 = 136315394;
            v130 = "AUBeamIt.cpp";
            v131 = 1024;
            v132 = 1961;
            _os_log_impl(&dword_1DDB85000, v123, OS_LOG_TYPE_DEBUG, "%25s:%-5d FcLimitWindBoost must be < (samplingRate/2). Setting FcLimitWindBoost = samplingRate/2.\n", &v129, 0x12u);
          }
        }
      }
    }

    *(this + 185) = v92;
    v124 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v125 & 1) == 0)
    {
      goto LABEL_158;
    }

    ausdk::AUElement::SetParameter(v124, 0x19u, *(this + 185));
  }

  if (*(this + 184) < *(*(this + 80) + 8))
  {
    return;
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    if (*(AUBeamItFDLogScope(void)::scope + 8))
    {
      v126 = *AUBeamItFDLogScope(void)::scope;
      if (*AUBeamItFDLogScope(void)::scope)
      {
        if (os_log_type_enabled(*AUBeamItFDLogScope(void)::scope, OS_LOG_TYPE_DEBUG))
        {
          v129 = 136315394;
          v130 = "AUBeamIt.cpp";
          v131 = 1024;
          v132 = 1966;
          _os_log_impl(&dword_1DDB85000, v126, OS_LOG_TYPE_DEBUG, "%25s:%-5d RefMicIndex set to a value greater than number of input mics. Setting it to mNumMics-1.\n", &v129, 0x12u);
        }
      }
    }
  }

  *(this + 184) = *(*(this + 80) + 8) - 1;
  v127 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v128 & 1) == 0)
  {
LABEL_158:
    abort();
  }

  ausdk::AUElement::SetParameter(v127, 0x18u, *(this + 184));
}

uint64_t AUBeamIt::SetParameter(AUBeamIt *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 584), a4);
    ausdk::AUElement::SetParameter(Element, a2, a5);
    v9 = 544;
LABEL_8:
    result = 0;
    ++*(this + v9);
    return result;
  }

  if (!a3)
  {
    result = ausdk::AUBase::SetParameter(this, a2, 0, a4, a5);
    if (result)
    {
      return result;
    }

    v9 = 528;
    if (a2 == 43)
    {
      v9 = 560;
    }

    goto LABEL_8;
  }

  return 4294956418;
}

uint64_t AUBeamIt::SetProperty(AUBeamIt *this, int a2, int a3, unsigned int a4, unint64_t *a5, unsigned int a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 4629)
  {
    if (a2 == 21)
    {
      if (a6 == 4)
      {
        result = 0;
        *(this + 576) = *a5 != 0;
        return result;
      }

      return 4294956445;
    }

    if (a2 == 3700)
    {
      result = 4294956445;
      if (a6 >= 4)
      {
        if (*a5)
        {
          return 0;
        }

        else
        {
          return 4294956445;
        }
      }
    }

    return result;
  }

  switch(a2)
  {
    case 4630:
      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        v13 = *AUBeamItFDLogScope(void)::scope;
        if (!*AUBeamItFDLogScope(void)::scope)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v23 = 136315650;
        v24 = "AUBeamIt.cpp";
        v25 = 1024;
        v26 = 565;
        v27 = 1024;
        v28 = 4630;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Setting property BeamformerCoeffs (prop id: %d).", &v23, 0x18u);
      }

LABEL_26:
      if (!a5)
      {
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          v17 = *AUBeamItFDLogScope(void)::scope;
          if (!*AUBeamItFDLogScope(void)::scope)
          {
            return 4294956445;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315394;
          v24 = "AUBeamIt.cpp";
          v25 = 1024;
          v26 = 568;
          v19 = "%25s:%-5d The CFDictionaryRef passed to SetProperty is null.";
          v20 = v17;
          v21 = 18;
          goto LABEL_65;
        }

        return 4294956445;
      }

      if ((*(**(this + 80) + 40))(*(this + 80), *a5))
      {
LABEL_28:
        if (a6 == 4)
        {
          if (*(this + 80))
          {
            v14 = *a5;
            if (AUBeamItFDLogScope(void)::once != -1)
            {
              dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
            }

            if (AUBeamItFDLogScope(void)::scope)
            {
              v15 = *AUBeamItFDLogScope(void)::scope;
              if (!*AUBeamItFDLogScope(void)::scope)
              {
                return (*(**(this + 80) + 56))(*(this + 80), v14 != 0);
              }
            }

            else
            {
              v15 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v23 = 136315906;
              v24 = "AUBeamIt.cpp";
              v25 = 1024;
              v26 = 594;
              v27 = 1024;
              v28 = v14 != 0;
              v29 = 1024;
              v30 = 4631;
              _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d Setting property EnableSubbandDOACalculation to %d (prop id: %d).", &v23, 0x1Eu);
            }

            return (*(**(this + 80) + 56))(*(this + 80), v14 != 0);
          }

          if (AUBeamItFDLogScope(void)::once != -1)
          {
            dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
          }

          if (AUBeamItFDLogScope(void)::scope)
          {
            v18 = *AUBeamItFDLogScope(void)::scope;
            if (!*AUBeamItFDLogScope(void)::scope)
            {
              return 4294956429;
            }
          }

          else
          {
            v18 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v23 = 136315650;
            v24 = "AUBeamIt.cpp";
            v25 = 1024;
            v26 = 597;
            v27 = 1024;
            v28 = 4631;
            _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Setting property EnableSubbandDOACalculation failed (prop id: %d).", &v23, 0x18u);
          }

          return 4294956429;
        }

        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          v16 = *AUBeamItFDLogScope(void)::scope;
          if (!*AUBeamItFDLogScope(void)::scope)
          {
            return 4294956445;
          }
        }

        else
        {
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315906;
          v24 = "AUBeamIt.cpp";
          v25 = 1024;
          v26 = 587;
          v27 = 1024;
          v28 = 4631;
          v29 = 1024;
          v30 = a6;
          v19 = "%25s:%-5d Setting property EnableSubbandDOACalculation failed (prop id: %d). *inData should be UInt32. Provided inDataSize = %u.\n";
          v20 = v16;
          v21 = 30;
LABEL_65:
          _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, v19, &v23, v21);
          return 4294956445;
        }

        return 4294956445;
      }

      *(this + 632) = 1;
      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        v22 = *AUBeamItFDLogScope(void)::scope;
        if (!*AUBeamItFDLogScope(void)::scope)
        {
          return 0;
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
      }

      result = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v23 = 136315394;
      v24 = "AUBeamIt.cpp";
      v25 = 1024;
      v26 = 577;
      _os_log_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d BeamformerCoeffs successfully set.", &v23, 0x12u);
      return 0;
    case 4631:
      goto LABEL_28;
    case 4633:
      v10 = applesauce::CF::convert_as<double,0>(*a5);
      if (v11)
      {
        v12 = v10;
        result = 0;
        *(this + 142) = v12;
        return result;
      }

      return 4294956445;
  }

  return result;
}

uint64_t AUBeamIt::GetProperty(AUBeamIt *this, int a2, int a3, unsigned int a4, CFArrayRef *__dst)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 4632)
  {
    if (a2 > 104631)
    {
      if (a2 == 104632)
      {
        v16 = *(this + 80);
        if (v16 && (*(*v16 + 72))(v16))
        {
          v17 = (*(**(this + 80) + 72))(*(this + 80));
          *valuePtr = 0;
          *__dst = applesauce::CF::details::make_CFArrayRef<float>((v17 + 8));
          applesauce::CF::ArrayRef::~ArrayRef(valuePtr);
          return 0;
        }

        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          v18 = *AUBeamItFDLogScope(void)::scope;
          if (!*AUBeamItFDLogScope(void)::scope)
          {
            return 4294956429;
          }
        }

        else
        {
          v18 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *valuePtr = 136315650;
          *&valuePtr[4] = "AUBeamIt.cpp";
          v23 = 1024;
          v24 = 514;
          v25 = 1024;
          v26 = 104632;
          v20 = "%25s:%-5d Getting property SubbandDOA_CF failed (prop id: %d).";
LABEL_56:
          _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, v20, valuePtr, 0x18u);
        }

        return 4294956429;
      }

      if (a2 != 104640)
      {
        return result;
      }

      CFArray = applesauce::CF::details::make_CFArrayRef<float>((*(this + 80) + 19152));
    }

    else
    {
      if (a2 != 4633)
      {
        if (a2 != 4640)
        {
          return result;
        }

        v9 = *(this + 80);
        v10 = *(v9 + 19152);
        v11 = 4 * *(v9 + 12);
        goto LABEL_17;
      }

      *valuePtr = *(this + 142);
      CFArray = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
      if (!CFArray)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    result = 0;
    *__dst = CFArray;
    return result;
  }

  if (a2 > 4630)
  {
    if (a2 != 4631)
    {
      v12 = *(this + 80);
      if (v12 && (*(*v12 + 72))(v12))
      {
        v13 = (*(**(this + 80) + 72))(*(this + 80));
        v10 = *(v13 + 8);
        v11 = *(v13 + 16) - v10;
LABEL_17:
        memcpy(__dst, v10, v11);
        return 0;
      }

      if (AUBeamItFDLogScope(void)::once != -1)
      {
        dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
      }

      if (AUBeamItFDLogScope(void)::scope)
      {
        v19 = *AUBeamItFDLogScope(void)::scope;
        if (!*AUBeamItFDLogScope(void)::scope)
        {
LABEL_51:
          bzero(__dst, 4 * (2 * *(this + 84) + 2));
          return 0;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315650;
        *&valuePtr[4] = "AUBeamIt.cpp";
        v23 = 1024;
        v24 = 501;
        v25 = 1024;
        v26 = 4632;
        _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Possibly no initialization for SubbandDOA(prop id: %d).", valuePtr, 0x18u);
      }

      goto LABEL_51;
    }

    v15 = *(this + 80);
    if (v15)
    {
      v8 = (*(*v15 + 64))(v15);
      result = 0;
      goto LABEL_26;
    }

    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      v18 = *AUBeamItFDLogScope(void)::scope;
      if (!*AUBeamItFDLogScope(void)::scope)
      {
        return 4294956429;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315650;
      *&valuePtr[4] = "AUBeamIt.cpp";
      v23 = 1024;
      v24 = 489;
      v25 = 1024;
      v26 = 4631;
      v20 = "%25s:%-5d Getting property EnableSubbandDOACalculation failed (prop id: %d).";
      goto LABEL_56;
    }

    return 4294956429;
  }

  if (a2 == 21)
  {
    result = 0;
    v8 = *(this + 576);
    goto LABEL_26;
  }

  if (a2 == 3700)
  {
    result = 0;
    v8 = *(this + 376);
LABEL_26:
    *__dst = v8;
  }

  return result;
}

void sub_1DDE5D1D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t AUBeamIt::GetPropertyInfo(AUBeamIt *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 > 4632)
  {
    if (a2 <= 104631)
    {
      if (a2 != 4633)
      {
        if (a2 != 4640)
        {
          return result;
        }

        result = 0;
        v11 = 4 * *(*(this + 80) + 12);
LABEL_16:
        *a5 = v11;
        *a6 = 0;
        return result;
      }

      result = 0;
      *a6 = *(this + 17) ^ 1;
LABEL_25:
      v10 = 8;
      goto LABEL_26;
    }

    if (a2 != 104632)
    {
      if (a2 != 104640)
      {
        return result;
      }

      goto LABEL_24;
    }

    v14 = *(this + 80);
    if (v14 && (*(*v14 + 72))(v14))
    {
LABEL_24:
      result = 0;
      *a6 = 0;
      goto LABEL_25;
    }

    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      v15 = *AUBeamItFDLogScope(void)::scope;
      if (!*AUBeamItFDLogScope(void)::scope)
      {
        return 4294956429;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "AUBeamIt.cpp";
      v19 = 1024;
      v20 = 442;
      v21 = 1024;
      v22 = 104632;
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Getting property info for SubbandDOA_CF failed (prop id: %d).", &v17, 0x18u);
    }

    return 4294956429;
  }

  if (a2 > 4630)
  {
    if (a2 == 4631)
    {
      result = 0;
      *a5 = 4;
      *a6 = 1;
      return result;
    }

    v12 = *(this + 80);
    if (v12 && (*(*v12 + 72))(v12))
    {
      v13 = (*(**(this + 80) + 72))(*(this + 80));
      result = 0;
      v11 = *(v13 + 16) - *(v13 + 8);
      goto LABEL_16;
    }

    *a5 = 8 * *(this + 84) + 8;
    *a6 = 0;
    if (AUBeamItFDLogScope(void)::once != -1)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      v16 = *AUBeamItFDLogScope(void)::scope;
      if (!*AUBeamItFDLogScope(void)::scope)
      {
        return 0;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
    }

    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v17 = 136315650;
    v18 = "AUBeamIt.cpp";
    v19 = 1024;
    v20 = 430;
    v21 = 1024;
    v22 = 4632;
    _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Possibly no initialization for Subband DOA (prop id: %d).", &v17, 0x18u);
    return 0;
  }

  if (a2 == 21 || a2 == 3700)
  {
    result = 0;
    *a6 = 1;
    v10 = 4;
LABEL_26:
    *a5 = v10;
  }

  return result;
}

uint64_t AUBeamIt::Reset(AUBeamIt *this)
{
  (*(**(this + 80) + 24))(*(this + 80));
  memcpy(this + 648, (*(this + 80) + 64), 0x1E8uLL);
  return 0;
}

uint64_t AUBeamIt::Cleanup(AUBeamIt *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    v2 = *AUBeamItFDLogScope(void)::scope;
    if (!*AUBeamItFDLogScope(void)::scope)
    {
      return (*(**(this + 80) + 32))(*(this + 80));
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUBeamIt.cpp";
    v6 = 1024;
    v7 = 255;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUBeamIt: Cleanup.\n", &v4, 0x12u);
  }

  return (*(**(this + 80) + 32))(*(this + 80));
}

uint64_t AUBeamIt::Initialize(AUBeamIt *this)
{
  v40 = *MEMORY[0x1E69E9840];
  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    v2 = *AUBeamItFDLogScope(void)::scope;
    if (!*AUBeamItFDLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315394;
    v33 = "AUBeamIt.cpp";
    v34 = 1024;
    v35 = 178;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUBeamIt: Initialize.\n", &v32, 0x12u);
    v3 = AUBeamItFDLogScope(void)::once == -1;
    goto LABEL_10;
  }

LABEL_9:
  v3 = 1;
LABEL_10:
  if ((*(this + 632) & 1) == 0)
  {
    if (!v3)
    {
      dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
    }

    if (AUBeamItFDLogScope(void)::scope)
    {
      v5 = *AUBeamItFDLogScope(void)::scope;
      if (!*AUBeamItFDLogScope(void)::scope)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315394;
      v33 = "AUBeamIt.cpp";
      v34 = 1024;
      v35 = 185;
      _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize called without setting setting BeamFormerCoeffs plist! Setting AU in Bypass mode.\n", &v32, 0x12u);
    }

LABEL_53:
    *(this + 576) = 1;
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (Element)
    {
      *(*(this + 80) + 8) = *(Element + 108);
      v21 = *(this + 21);
      if (v21)
      {
        LODWORD(v22) = (*(*v21 + 24))(v21);
      }

      else
      {
        v22 = (*(this + 19) - *(this + 18)) >> 3;
      }

      if (v22 < 3)
      {
        *(*(this + 80) + 12) = 288;
LABEL_61:
        if (AUBeamItFDLogScope(void)::once != -1)
        {
          dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
        }

        if (AUBeamItFDLogScope(void)::scope)
        {
          v24 = *AUBeamItFDLogScope(void)::scope;
          if (!*AUBeamItFDLogScope(void)::scope)
          {
            return 0;
          }
        }

        else
        {
          v24 = MEMORY[0x1E69E9C10];
        }

        result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v32 = 136315394;
        v33 = "AUBeamIt.cpp";
        v34 = 1024;
        v35 = 245;
        _os_log_impl(&dword_1DDB85000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUBeamIt: Successfully initialized.\n", &v32, 0x12u);
        return 0;
      }

      v23 = ausdk::AUScope::GetElement((this + 128), 2u);
      if (v23)
      {
        *(*(this + 80) + 12) = *(v23 + 108);
        goto LABEL_61;
      }
    }

LABEL_93:
    ausdk::Throw(0xFFFFD583);
  }

  if (!v3)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    v4 = *AUBeamItFDLogScope(void)::scope;
    if (!*AUBeamItFDLogScope(void)::scope)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315394;
    v33 = "AUBeamIt.cpp";
    v34 = 1024;
    v35 = 203;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initialize called with properly set BeamFormerCoeffs plist.\n", &v32, 0x12u);
  }

LABEL_24:
  v6 = 0;
  v7 = 0.0;
  while (1)
  {
    v8 = *(this + 15);
    if (v8)
    {
      LODWORD(v9) = (*(*v8 + 24))(v8);
    }

    else
    {
      v9 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v6 >= v9)
    {
      for (i = 0; ; ++i)
      {
        v13 = *(this + 21);
        if (v13)
        {
          LODWORD(v14) = (*(*v13 + 24))(v13);
        }

        else
        {
          v14 = (*(this + 19) - *(this + 18)) >> 3;
        }

        if (i >= v14)
        {
          v18 = *(*(this + 80) + 8);
          v19 = (*(*this + 408))(this, 4);
          if (!v19)
          {
            ausdk::ThrowQuiet(0);
          }

          ausdk::AUScope::SetNumberOfElements(v19, v18);
          AUBeamIt::UpdateState(this);
          *(this + 67) = *(this + 66);
          memcpy((*(this + 80) + 64), this + 648, 0x1E8uLL);
          (*(**(this + 80) + 16))(*(this + 80), *(this + 84), v7);
          (*(*this + 72))(this, 0, 0);
          goto LABEL_61;
        }

        v15 = ausdk::AUScope::GetElement((this + 128), i);
        if (!v15)
        {
          goto LABEL_93;
        }

        v7 = *(v15 + 80);
        v16 = *(v15 + 108);
        if (i > 1)
        {
          if (v16 > *(*(this + 80) + 12))
          {
            if (AUBeamItFDLogScope(void)::once != -1)
            {
              dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
            }

            if (AUBeamItFDLogScope(void)::scope)
            {
              v17 = *AUBeamItFDLogScope(void)::scope;
              if (!*AUBeamItFDLogScope(void)::scope)
              {
                return 4294956421;
              }
            }

            else
            {
              v17 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v29 = *(*(this + 80) + 12);
              v32 = 136315906;
              v33 = "AUBeamIt.cpp";
              v34 = 1024;
              v35 = 222;
              v36 = 1024;
              v37 = v16;
              v38 = 1024;
              v39 = v29;
              v27 = "%25s:%-5d The number of channels in the output format (%u) is larger than the number of uplink/selection beams (%u).\n";
              goto LABEL_86;
            }

            return 4294956421;
          }
        }

        else if (v16 != 1)
        {
          if (AUBeamItFDLogScope(void)::once != -1)
          {
            dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
          }

          if (AUBeamItFDLogScope(void)::scope)
          {
            v28 = *AUBeamItFDLogScope(void)::scope;
            if (!*AUBeamItFDLogScope(void)::scope)
            {
              return 4294956421;
            }
          }

          else
          {
            v28 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v32 = 136315650;
            v33 = "AUBeamIt.cpp";
            v34 = 1024;
            v35 = 216;
            v36 = 1024;
            v37 = v16;
            v27 = "%25s:%-5d The number of channels in the output format (%u) not equal to 1.\n";
            v30 = v28;
            v31 = 24;
            goto LABEL_87;
          }

          return 4294956421;
        }
      }
    }

    v10 = ausdk::AUScope::GetElement((this + 80), v6);
    if (!v10)
    {
      goto LABEL_93;
    }

    v11 = *(v10 + 108);
    if (v11 != *(*(this + 80) + 8))
    {
      break;
    }

    v7 = *(v10 + 80);
    ++v6;
  }

  if (AUBeamItFDLogScope(void)::once != -1)
  {
    dispatch_once(&AUBeamItFDLogScope(void)::once, &__block_literal_global_12742);
  }

  if (AUBeamItFDLogScope(void)::scope)
  {
    v17 = *AUBeamItFDLogScope(void)::scope;
    if (!*AUBeamItFDLogScope(void)::scope)
    {
      return 4294956421;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v26 = *(*(this + 80) + 8);
    v32 = 136315906;
    v33 = "AUBeamIt.cpp";
    v34 = 1024;
    v35 = 208;
    v36 = 1024;
    v37 = v11;
    v38 = 1024;
    v39 = v26;
    v27 = "%25s:%-5d The number of channels in the input format (%u) is not equal to the number of mics the beamformer expects (%u).\n";
LABEL_86:
    v30 = v17;
    v31 = 30;
LABEL_87:
    _os_log_impl(&dword_1DDB85000, v30, OS_LOG_TYPE_ERROR, v27, &v32, v31);
  }

  return 4294956421;
}

void AUBeamIt::CreateExtendedElements(AUBeamIt *this)
{
  ausdk::AUScope::Initialize((this + 584), this, 4, 16);
  for (i = 0; i != 16; ++i)
  {
    std::to_string(&v8, i);
    v3 = std::string::insert(&v8, 0, "Mic", 3uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 584), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDE5DF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUBeamIt::~AUBeamIt(AUBeamIt *this)
{
  AUBeamIt::~AUBeamIt(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5927498;
  AUBeamIt::Cleanup(this);
  v2 = *(this + 80);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 80) = 0;
  }

  v3 = (this + 600);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v3);

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUECMicRef::ValidFormat(AUECMicRef *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel != 32 || a4->mFormatID != 1819304813 || a4->mChannelsPerFrame >= 9)
  {
    return 0;
  }

  else
  {
    return (a4->mFormatFlags >> 5) & 1;
  }
}

uint64_t AUECMicRef::SupportedNumChannels(AUECMicRef *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUECMicRef::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

uint64_t AUECMicRef::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUECMicRef::GetParameterInfo(AUECMicRef *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x16)
  {
    v6 = *(&off_1E866BD38 + a3);
    v7 = dword_1DE0E7CDC[a3];
    v8 = flt_1DE0E7D38[a3];
    v9 = flt_1DE0E7D94[a3];
    v10 = flt_1DE0E7DF0[a3];
    v11 = dword_1DE0E7E4C[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

uint64_t AUECMicRef::GetParameterList(AUECMicRef *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09C1F0;
    *(a3 + 10) = 0x1500000014;
    a3[22] = 22;
  }

  result = 0;
  *a4 = 23;
  return result;
}

uint64_t AUECMicRef::Render(AUECMicRef *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUECMicRef::ProcessMultipleBufferLists(AUECMicRef *this, unsigned int *a2, int a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7, double a8, double a9)
{
  v104 = *MEMORY[0x1E69E9840];
  LODWORD(a8) = *(this + 137);
  LODWORD(a9) = *(this + 136);
  *(this + 76) = *(this + 76) + *&a8 / *&a9;
  if (*(this + 84) != a3)
  {
    if (AUECMicRefLogScope(void)::once != -1)
    {
      dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
    }

    if (AUECMicRefLogScope(void)::scope)
    {
      v20 = *AUECMicRefLogScope(void)::scope;
      if (!*AUECMicRefLogScope(void)::scope)
      {
        return 4294956422;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(this + 84);
      v94 = 4.8153e-34;
      v95 = "AUECMicRef.cpp";
      v96 = 1024;
      v97 = 937;
      v98 = 1024;
      v99 = a3;
      v100 = 1024;
      v101 = v21;
      _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d AUECMicRef::ProcessMultipleBufferLists error - wrong (%u) block size expected (%u)\n", &v94, 0x1Eu);
    }

    return 4294956422;
  }

  result = 4294956428;
  if (a4 != 3 || a6 != 3)
  {
    return result;
  }

  v11 = *a5;
  v12 = *a7;
  if (*(this + 528) == 1)
  {
    if (v12 != v11 && *(this + 138))
    {
      v13 = 0;
      v14 = (v11 + 4);
      v15 = (v12 + 16);
      do
      {
        v17 = *v15;
        v15 += 2;
        v16 = v17;
        v18 = *v14;
        v14 += 2;
        memcpy(v16, v18, 4 * *(this + 137));
        ++v13;
      }

      while (v13 < *(this + 138));
    }

    goto LABEL_89;
  }

  v22 = a5[1];
  v23 = a5[2];
  v25 = a7[1];
  v24 = a7[2];
  v26 = *(this + 133);
  if (v26 != *(this + 134))
  {
    v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v28 & 1) == 0)
    {
      goto LABEL_93;
    }

    *(this + 170) = ausdk::AUElement::GetParameter(v27, 1u);
    v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v30 & 1) == 0)
    {
      goto LABEL_93;
    }

    Parameter = ausdk::AUElement::GetParameter(v29, 2u);
    *(this + 171) = Parameter;
    (*(**(this + 91) + 136))(*(this + 91), *(this + 170), Parameter);
    *(this + 134) = v26;
  }

  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_93;
  }

  v34 = ausdk::AUElement::GetParameter(v32, 0x12u) != 0.0;
  (*(**(this + 91) + 40))(*(this + 91), v11, v22, v23, v12, v25, v24, v34);
  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_93;
  }

  v37 = ausdk::AUElement::GetParameter(v35, 0xFu);
  v38 = (*(**(this + 91) + 160))(*(this + 91));
  if (v38)
  {
    goto LABEL_44;
  }

  v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_93;
  }

  *(this + 148) = ausdk::AUElement::GetParameter(v39, 0x14u);
  v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_93;
  }

  *(this + 149) = ausdk::AUElement::GetParameter(v41, 0x15u);
  if (*v11)
  {
    v43 = 0;
    v44 = *(this + 137);
    v45 = 0.0;
    v46 = 4;
    v47 = 0.0;
    do
    {
      v94 = 0.0;
      vDSP_svesq(*&v11[v46], 1, &v94, v44);
      v44 = *(this + 137);
      v48 = log10f((v94 / v44) + 1.0e-20) * 10.0;
      if (v43)
      {
        v45 = v45 + v48;
      }

      else
      {
        v47 = v48;
      }

      ++v43;
      v49 = *v11;
      v46 += 4;
    }

    while (v43 < v49);
    if (v49 > 2)
    {
      v45 = v45 / (v49 - 1);
    }
  }

  else
  {
    v47 = 0.0;
    v45 = 0.0;
  }

  if (v45 >= *(this + 148) || (v47 - v45) <= *(this + 149))
  {
LABEL_44:
    v52 = 0;
  }

  else
  {
    if (*(this + 72) > 0.0)
    {
      v50 = *(this + 99);
      if (v50)
      {
        if (!*MEMORY[0x1E69E3C08])
        {
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v51 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v51 + 16) = 0;
        *v51 = &unk_1F5927A38;
        *(v51 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v50, v51);
      }
    }

    v52 = 1;
  }

  v53 = v37 == 0.0 ? 1 : v38;
  v54 = v53 | v52;
  v55 = v37 == 0.0 ? v38 : 1;
  v56 = v54 ? 1.0 : 0.0;
  v57 = v55 | v52 ? 1.0 : 0.0;
  v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_93;
  }

  ausdk::AUElement::SetParameter(v58, 0x10u, v38);
  v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v61 & 1) == 0)
  {
    goto LABEL_93;
  }

  ausdk::AUElement::SetParameter(v60, 0x11u, v56);
  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_93;
  }

  ausdk::AUElement::SetParameter(v62, 0x16u, v57);
  v64 = (*(**(this + 91) + 72))(*(this + 91));
  v65 = (*(**(this + 91) + 88))(*(this + 91));
  v66 = (*(**(this + 91) + 80))(*(this + 91));
  v67 = v66;
  if (!v64 || !v65 || (v66 & 1) == 0)
  {
    if (AUECMicRefLogScope(void)::once != -1)
    {
      dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
    }

    if (AUECMicRefLogScope(void)::scope)
    {
      v68 = *AUECMicRefLogScope(void)::scope;
      if (!*AUECMicRefLogScope(void)::scope)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v68 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v94 = 4.8154e-34;
      v95 = "AUECMicRef.cpp";
      v96 = 1024;
      v97 = 1048;
      v98 = 1024;
      v99 = v64;
      v100 = 1024;
      v101 = v65;
      v102 = 1024;
      v103 = v67;
      _os_log_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d AUECMicRef: ********* Reset begins *********\nAUECMicRef: state variables have finite values (1 if True): %u\nAUECMicRef: ref-signal buffers have finite values (1 if True): %u\nAUECMicRef: EC output buffers have valid values (1 if True): %u\n", &v94, 0x24u);
    }

LABEL_71:
    std::mutex::lock((this + 616));
    AUECMicRef::DoCoreECInit(this);
  }

  v69 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v70 & 1) == 0)
  {
LABEL_93:
    abort();
  }

  v71 = ausdk::AUElement::GetParameter(v69, 0xEu);
  result = 0;
  *(this + 72) = v71;
  LODWORD(v72) = *(this + 137);
  LODWORD(v73) = *(this + 136);
  v74 = *(this + 75) + v72 / v73;
  if (v74 < 0.0)
  {
    v74 = 0.0;
  }

  *(this + 75) = v74;
  if (v71 > 0.0 && v74 > v71)
  {
    v75 = *(this + 99);
    if (!v75)
    {
      return 0;
    }

    v76 = (*(**(this + 91) + 72))(*(this + 91));
    v77 = (*(**(this + 91) + 88))(*(this + 91));
    v78 = (*(**(this + 91) + 80))(*(this + 91));
    v79 = MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v80 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v80 + 8) = 0;
      *(v80 + 16) = 0;
      *(v80 + 24) = *(this + 600);
      *(v80 + 40) = v76;
      *(v80 + 41) = v77;
      *(v80 + 42) = v78;
      *v80 = &unk_1F5927998;
      caulk::concurrent::messenger::enqueue(v75, v80);
      if (*(this + 138))
      {
        v81 = 0;
        while (1)
        {
          v82 = *(this + 99);
          v83 = (*(**(this + 91) + 96))(*(this + 91), v81);
          (*(**(this + 91) + 104))(*(this + 91), v81);
          if (!*v79)
          {
            break;
          }

          v85 = v84;
          v86 = caulk::rt_safe_memory_resource::rt_allocate(*v79);
          *(v86 + 16) = 0;
          *(v86 + 24) = v81;
          *(v86 + 28) = v83;
          *(v86 + 32) = v85;
          *v86 = &unk_1F59279C0;
          *(v86 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v82, v86);
          v81 = (v81 + 1);
          if (v81 >= *(this + 138))
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
LABEL_83:
        if (*(this + 139))
        {
          v87 = 0;
          while (1)
          {
            v88 = *(this + 99);
            (*(**(this + 91) + 112))(*(this + 91), v87);
            if (!*v79)
            {
              break;
            }

            v90 = v89;
            v91 = caulk::rt_safe_memory_resource::rt_allocate(*v79);
            *(v91 + 16) = 0;
            *(v91 + 24) = v87;
            *(v91 + 28) = v90;
            *v91 = &unk_1F59279E8;
            *(v91 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v88, v91);
            v87 = (v87 + 1);
            if (v87 >= *(this + 139))
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
LABEL_87:
          if (*v79)
          {
            v92 = *(this + 99);
            v93 = caulk::rt_safe_memory_resource::rt_allocate(*v79);
            *(v93 + 16) = 0;
            *v93 = &unk_1F5927A10;
            *(v93 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v92, v93);
LABEL_89:
            result = 0;
            *(this + 75) = 0;
            return result;
          }
        }
      }
    }

    goto LABEL_92;
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_2,int &,float>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v3 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::rt_cleanup::~rt_cleanup(&v5);
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "AUECMicRef.cpp";
    v8 = 1024;
    v9 = 1115;
    v10 = 1024;
    v11 = v1;
    v12 = 2048;
    v13 = v2;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: energy measure in [dB] for ref-channel %u : %f\n", buf, 0x22u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_2,int &,float>::rt_cleanup::~rt_cleanup(&v5);
}

void caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_2,int &,float>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_3>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v1 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "AUECMicRef.cpp";
    v6 = 1024;
    v7 = 1120;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: ********* Logging ends *********\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_3>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_1,int &,float,float>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v1 = *(a1 + 24);
  v2 = *(a1 + 28);
  v3 = *(a1 + 32);
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v4 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v8 = "AUECMicRef.cpp";
    v9 = 1024;
    v10 = 1107;
    v11 = 1024;
    v12 = v1;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: ERLE measure in [dB] for mic-channel %u , internal: %f (dB), external: %f (dB)\n", buf, 0x2Cu);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v6);
}

void caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_1,int &,float,float>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::perform(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  v5 = *(a1 + 42);
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v6 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(&v8);
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v10 = "AUECMicRef.cpp";
    v11 = 1024;
    v12 = 1099;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v1;
    v17 = 1024;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: ********* Logging begins *********\nAUECMicRef: logging (period, timestamp): (%f, %f) (s)\nAUECMicRef: state variables have finite values (1 if True): %u\nAUECMicRef: ref-signal buffers have finite values (1 if True): %u\nAUECMicRef: EC output buffers have valid values (1 if True): %u\n", buf, 0x38u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::rt_cleanup::~rt_cleanup(&v8);
}

void caulk::concurrent::details::rt_message_call<AUECMicRef::LogMaster(void)::$_0,double &,double &,BOOL,BOOL,BOOL>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

void AUECMicRef::DoCoreECInit(AUECMicRef *this)
{
  v2 = *(this + 91);
  if (v2)
  {
    *(this + 91) = 0;
    (*(*v2 + 8))(v2);
  }

  operator new();
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECMicRef::CheckForAOPMode(BOOL,AudioBufferList const*)::$_0>::perform(caulk::concurrent::message *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v1 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v5 = "AUECMicRef.cpp";
    v6 = 1024;
    v7 = 1188;
    _os_log_impl(&dword_1DDB85000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: AOPMode detected (non-realtime logging).\n", buf, 0x12u);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_3>::rt_cleanup::~rt_cleanup(&v3);
}

void caulk::concurrent::details::rt_message_call<AUECMicRef::CheckForAOPMode(BOOL,AudioBufferList const*)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECMicRef::SetParameter(AUECMicRef *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  ++*(this + 133);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  return 0;
}

uint64_t AUECMicRef::SetProperty(AUECMicRef *this, int a2, int a3, unsigned int a4, const __CFArray **a5, int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 != 103800)
  {
    if (a2 != 21)
    {
      return 4294956417;
    }

    if (a6 == 4)
    {
      result = 0;
      *(this + 528) = *a5 != 0;
      return result;
    }

    return 4294956445;
  }

  if (*(this + 17))
  {
    return 4294956447;
  }

  if (a6 != 8)
  {
    return 4294956445;
  }

  applesauce::CF::convert_as<std::vector<float>,0>(&v9, *a5);
  if (v11 != 1)
  {
    return 4294956445;
  }

  v8 = v9;
  std::vector<float>::__assign_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 92, v9, v10, (v10 - v9) >> 2);
  *(this + 784) = 1;
  if (v8)
  {
    operator delete(v8);
  }

  return 0;
}

void sub_1DDE5F868(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUECMicRef::GetProperty(AUECMicRef *this, int a2, int a3, unsigned int a4, unsigned int *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 7698)
  {
    if (a2 <= 4698)
    {
      if (a2 == 21)
      {
        result = 0;
        v9 = *(this + 528);
        goto LABEL_43;
      }

      if (a2 == 3700)
      {
        result = 0;
        v9 = *(this + 376);
        goto LABEL_43;
      }

      if (a2 != 3800)
      {
        return result;
      }

      goto LABEL_27;
    }

    if (a2 != 4699)
    {
      if (a2 == 5699)
      {
        v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_49;
        }

        v12 = 22;
      }

      else
      {
        if (a2 != 6699)
        {
          return result;
        }

        v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v11 & 1) == 0)
        {
          goto LABEL_49;
        }

        v12 = 16;
      }

      Parameter = ausdk::AUElement::GetParameter(v10, v12);
      result = 0;
      v9 = Parameter;
      goto LABEL_43;
    }

    v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v20)
    {
      v21 = ausdk::AUElement::GetParameter(v19, 0x11u);
      result = 0;
      v18 = v21 == 1.0;
LABEL_36:
      v9 = v18;
      goto LABEL_43;
    }

LABEL_49:
    abort();
  }

  if (a2 > 303799)
  {
    if (a2 <= 503799)
    {
      if (a2 == 303800)
      {
        result = 0;
        v9 = *(this + 139);
        goto LABEL_43;
      }

      if (a2 == 403800)
      {
        result = 0;
        v9 = *(this + 142);
LABEL_43:
        *a5 = v9;
        return result;
      }

      return result;
    }

    if (a2 != 503800 && a2 != 603800)
    {
      return result;
    }

    v13 = (this + 616);
    std::mutex::lock((this + 616));
    (*(**(this + 91) + 64))(*(this + 91), this + 760);
    if (a2 == 603800)
    {
      CFArray = applesauce::CF::details::make_CFArrayRef<float>(this + 95);
LABEL_29:
      *a5 = CFArray;
LABEL_47:
      std::mutex::unlock(v13);
      return 0;
    }

    v24 = *(this + 95);
    v25 = 2 * *(this + 138) * *(this + 139) * *(this + 146) * *(this + 137);
    goto LABEL_46;
  }

  switch(a2)
  {
    case 7699:
      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v16)
      {
        v17 = ausdk::AUElement::GetParameter(v15, 0x11u);
        result = 0;
        v18 = v17 == 0.0;
        goto LABEL_36;
      }

      goto LABEL_49;
    case 103800:
LABEL_27:
      v13 = (this + 616);
      std::mutex::lock((this + 616));
      (*(**(this + 91) + 48))(*(this + 91), this + 736);
      if (a2 == 103800)
      {
        CFArray = applesauce::CF::details::make_CFArrayRef<float>(this + 92);
        goto LABEL_29;
      }

      v24 = *(this + 92);
      v25 = *(this + 139) * *(this + 138) * *(this + 142);
LABEL_46:
      memcpy(a5, v24, 4 * v25);
      goto LABEL_47;
    case 203800:
      result = 0;
      v9 = *(this + 138);
      goto LABEL_43;
  }

  return result;
}

uint64_t AUECMicRef::GetPropertyInfo(AUECMicRef *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  result = 4294956417;
  if (a2 <= 7698)
  {
    if (a2 <= 4698)
    {
      if (a2 == 21)
      {
        *a6 = 1;
        goto LABEL_21;
      }

      if (a2 != 3700)
      {
        if (a2 != 3800)
        {
          return result;
        }

        *a6 = 0;
        v9 = 4 * *(this + 138) * *(this + 139) * *(this + 142);
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (a2 == 4699 || a2 == 5699)
    {
      goto LABEL_20;
    }

    v8 = 6699;
    goto LABEL_19;
  }

  if (a2 <= 303799)
  {
    if (a2 == 7699)
    {
      goto LABEL_20;
    }

    if (a2 == 103800)
    {
      *a6 = *(this + 17) ^ 1;
      goto LABEL_29;
    }

    v8 = 203800;
LABEL_19:
    if (a2 != v8)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (a2 <= 503799)
  {
    if (a2 != 303800)
    {
      v8 = 403800;
      goto LABEL_19;
    }

LABEL_20:
    *a6 = 0;
LABEL_21:
    v9 = 4;
LABEL_22:
    result = 0;
    *a5 = v9;
    return result;
  }

  if (a2 == 503800)
  {
    *a6 = 0;
    v9 = 8 * *(this + 138) * *(this + 139) * *(this + 146) * *(this + 137);
    goto LABEL_22;
  }

  if (a2 == 603800)
  {
    *a6 = 0;
LABEL_29:
    v9 = 8;
    goto LABEL_22;
  }

  return result;
}

uint64_t AUECMicRef::Reset(AUECMicRef *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v2 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUECMicRef.cpp";
    v6 = 1024;
    v7 = 382;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: Reset.\n", &v4, 0x12u);
  }

LABEL_9:
  if (*(this + 17) == 1)
  {
    AUECMicRef::DoCoreECInit(this);
  }

  return 0;
}

uint64_t AUECMicRef::Cleanup(AUECMicRef *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v2 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AUECMicRef.cpp";
    v6 = 1024;
    v7 = 334;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: Cleanup.\n", &v4, 0x12u);
  }

LABEL_9:
  result = *(this + 91);
  *(this + 91) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t AUECMicRef::Initialize(AUECMicRef *this)
{
  v70 = *MEMORY[0x1E69E9840];
  if (AUECMicRefLogScope(void)::once != -1)
  {
    dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
  }

  if (AUECMicRefLogScope(void)::scope)
  {
    v2 = *AUECMicRefLogScope(void)::scope;
    if (!*AUECMicRefLogScope(void)::scope)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "AUECMicRef.cpp";
    v66 = 1024;
    v67 = 181;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: Initialize.\n", buf, 0x12u);
  }

LABEL_9:
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = ausdk::AUScope::GetElement((this + 80), 1u);
  if (!v4)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = ausdk::AUScope::GetElement((this + 80), 2u);
  if (!v5)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v6 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v6)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = ausdk::AUScope::GetElement((this + 128), 1u);
  if (!v7)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = ausdk::AUScope::GetElement((this + 128), 2u);
  if (!v8)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v9 = *(Element + 108);
  *(this + 138) = v9;
  v10 = *(v4 + 108);
  *(this + 139) = v10;
  *(this + 140) = *(v5 + 108);
  v11 = *(Element + 80);
  *(this + 136) = v11;
  if (v11 != *(v4 + 80))
  {
    return 4294956428;
  }

  v13 = *(v6 + 80);
  result = 4294956428;
  if (v13 == v11 && v13 == *(v8 + 80) && v13 == *(v7 + 80))
  {
    v14 = *(v6 + 108);
    if (v14 == v9 && v14 == *(v7 + 108) && v10 == *(v8 + 108))
    {
      v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v16)
      {
        *(this + 135) = ausdk::AUElement::GetParameter(v15, 0);
        v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v18)
        {
          *(this + 170) = ausdk::AUElement::GetParameter(v17, 1u);
          v19 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v20)
          {
            *(this + 171) = ausdk::AUElement::GetParameter(v19, 2u);
            v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
            if (v22)
            {
              *(this + 172) = ausdk::AUElement::GetParameter(v21, 3u);
              v23 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
              if (v24)
              {
                *(this + 173) = ausdk::AUElement::GetParameter(v23, 4u);
                *(this + 137) = *(this + 84);
                v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                if (v26)
                {
                  *(this + 174) = ausdk::AUElement::GetParameter(v25, 5u);
                  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                  if (v28)
                  {
                    *(this + 175) = ausdk::AUElement::GetParameter(v27, 6u);
                    v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                    if (v30)
                    {
                      *(this + 176) = ausdk::AUElement::GetParameter(v29, 7u);
                      v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                      if (v32)
                      {
                        *(this + 177) = ausdk::AUElement::GetParameter(v31, 8u);
                        v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v34)
                        {
                          *(this + 178) = ausdk::AUElement::GetParameter(v33, 9u);
                          v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v36)
                          {
                            *(this + 179) = ausdk::AUElement::GetParameter(v35, 0xAu);
                            v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v38)
                            {
                              *(this + 180) = ausdk::AUElement::GetParameter(v37, 0xBu);
                              v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v40)
                              {
                                *(this + 181) = ausdk::AUElement::GetParameter(v39, 0xCu);
                                v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v42)
                                {
                                  Parameter = ausdk::AUElement::GetParameter(v41, 0xDu);
                                  *(this + 143) = Parameter;
                                  v44 = *(this + 137);
                                  v45 = *(this + 136);
                                  v46 = v44;
                                  v47 = v44 * vcvtps_u32_f32(((v45 * *(this + 135)) / 1000.0) / v44);
                                  *(this + 141) = v47;
                                  if (v47 <= v44)
                                  {
                                    *(this + 141) = v44;
                                    *(this + 135) = ((v46 / v45) * 1000.0);
                                    v47 = v44;
                                  }

                                  v48 = v44 * vcvtps_u32_f32(((v45 * Parameter) / 1000.0) / v46);
                                  *(this + 142) = v48;
                                  if (v48 <= v44)
                                  {
                                    *(this + 142) = v44;
                                    *(this + 143) = ((v46 / v45) * 1000.0);
                                    v48 = v44;
                                  }

                                  if (v48 <= v47)
                                  {
                                    v49 = v47;
                                  }

                                  else
                                  {
                                    *(this + 142) = v47;
                                    v49 = v47;
                                    *(this + 143) = ((v47 / v45) * 1000.0);
                                  }

                                  *(this + 146) = vcvtps_u32_f32(v49 / v46);
                                  v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v51)
                                  {
                                    *(this + 147) = ausdk::AUElement::GetParameter(v50, 0x13u);
                                    v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if (v53)
                                    {
                                      *(this + 148) = ausdk::AUElement::GetParameter(v52, 0x14u);
                                      v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                      if (v55)
                                      {
                                        *(this + 149) = ausdk::AUElement::GetParameter(v54, 0x15u);
                                        *(this + 134) = *(this + 133);
                                        v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                        if (v57)
                                        {
                                          *(this + 72) = ausdk::AUElement::GetParameter(v56, 0xEu);
                                          *(this + 600) = 0u;
                                          v64 = 0;
                                          AppFloatValue = CACFPreferencesGetAppFloatValue(@"ecmicref_log_period_in_seconds", @"com.apple.coreaudio", &v64);
                                          if (!v64)
                                          {
                                            goto LABEL_60;
                                          }

                                          v60 = AppFloatValue;
                                          if (v60 <= 0.0)
                                          {
                                            goto LABEL_60;
                                          }

                                          *(this + 72) = v60;
                                          v61 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                          if (v62)
                                          {
                                            ausdk::AUElement::SetParameter(v61, 0xEu, v60);
                                            if (AUECMicRefLogScope(void)::once != -1)
                                            {
                                              dispatch_once(&AUECMicRefLogScope(void)::once, &__block_literal_global_13095);
                                            }

                                            if (AUECMicRefLogScope(void)::scope)
                                            {
                                              v63 = *AUECMicRefLogScope(void)::scope;
                                              if (!*AUECMicRefLogScope(void)::scope)
                                              {
                                                goto LABEL_60;
                                              }
                                            }

                                            else
                                            {
                                              v63 = MEMORY[0x1E69E9C10];
                                            }

                                            v58 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
                                            if (v58)
                                            {
                                              buf[0] = 136315650;
                                              *&buf[1] = "AUECMicRef.cpp";
                                              v66 = 1024;
                                              v67 = 267;
                                              v68 = 2048;
                                              v69 = v60;
                                              _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AUECMicRef: Using logPeriod of (%g)s as specified in defaults write ecmicref_log_period_in_seconds.\n", buf, 0x1Cu);
                                            }

LABEL_60:
                                            if (!*(this + 99) && *(this + 72) > 0.0)
                                            {
                                              caulk::concurrent::messenger::shared_logging_priority(v58);
                                              std::make_unique[abi:ne200100]<caulk::concurrent::messenger,caulk::concurrent::messenger::thread_strategy,caulk::thread::attributes &,0>();
                                            }

                                            AUECMicRef::DoCoreECInit(this);
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
      }

      abort();
    }
  }

  return result;
}

void AUECMicRef::~AUECMicRef(AUECMicRef *this)
{
  AUECMicRef::~AUECMicRef(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5927728;
  AUECMicRef::Cleanup(this);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 99, 0);
  v2 = *(this + 95);
  if (v2)
  {
    *(this + 96) = v2;
    operator delete(v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    *(this + 93) = v3;
    operator delete(v3);
  }

  v4 = *(this + 91);
  *(this + 91) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::mutex::~mutex((this + 616));

  ausdk::AUBase::~AUBase(this);
}

uint64_t ABHelperIsABTestModeOn()
{
  {
    isABTestModeOn(void)::sIsABTestModeOn = CFPreferencesGetAppBooleanValue(@"abtest_mode", @"com.apple.coreaudio", 0) != 0;
  }

  return isABTestModeOn(void)::sIsABTestModeOn;
}

void ABHelperWriteJSONFileFromDescription(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a1 options:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"/tmp/"];
    [v7 appendString:v3];
    [v7 appendString:@".json"];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    v9 = [MEMORY[0x1E696AEC0] stringWithString:v7];
    [v8 writeToFile:v9 atomically:1 encoding:4 error:0];
  }

  else
  {
    v7 = [v5 debugDescription];
    NSLog(&cfstr_Error.isa, v7);
  }
}

id ABHelperCreateDescriptionFromDSPGraph(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  for (i = *(a1 + 24); i; i = *i)
  {
    v4 = createNSDescriptionFromDSPGraphBox(i[2]);
    v5 = i[2];
    v6 = v5 + 4;
    if (*(v5 + 55) < 0)
    {
      v6 = *v6;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", v6];
    [v2 setObject:v4 forKey:v7];
  }

  return v2;
}

uint64_t AUSoundIsolation_v1::ValidFormat(AUSoundIsolation_v1 *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  if (a2 != 2 && a2 != 1)
  {
    return 0;
  }

  if (a3)
  {
    return 0;
  }

  v4 = *&a4->mBytesPerPacket;
  v6[0] = *&a4->mSampleRate;
  v6[1] = v4;
  v7 = *&a4->mBitsPerChannel;
  if (DWORD2(v6[0]) != 1819304813)
  {
    return 0;
  }

  v8 = 0;
  LODWORD(result) = CAStreamBasicDescription::IdentifyCommonPCMFormat(v6, &v8, 0);
  if (v8 == 1)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t AUSoundIsolation_v1::SupportedNumChannels(AUSoundIsolation_v1 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSoundIsolation_v1::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

double AUSoundIsolation_v1::GetTailTime(AUSoundIsolation_v1 *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v2 = getAUSoundIsolationLog(void)::gLog;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "AUSoundIsolation_v1.mm";
    v6 = 1024;
    v7 = 458;
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "%s:%i Use processing graph latency as an estimate of the tail time", &v4, 0x12u);
  }

  return AUSoundIsolation_v1::GetProcessingLatency(this);
}

double AUSoundIsolation_v1::GetProcessingLatency(AUSoundIsolation_v1 *this)
{
  v26 = *MEMORY[0x1E69E9840];
  ProcessingGraphOutput = AUSoundIsolation_v1::GetProcessingGraphOutput(this);
  if (ProcessingGraphOutput)
  {
    v5 = ProcessingGraphOutput;
    v6 = DSPGraph::Box::totalLatencyInSamples(ProcessingGraphOutput);
    v7 = *(v5 + 8);
    if (*(v5 + 9) == v7)
    {
      std::string::basic_string[abi:ne200100]<0>(buf, "/AppleInternal/Library/BuildRoots/4~B_5OugCNKhS3Po__bFTpwhA5Rt2e-Vyc7sgRc5A/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/System/Library/PrivateFrameworks/AudioToolboxCore.framework/PrivateHeaders/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v17, "in");
      v15 = (v5 + 32);
      if (*(v5 + 55) < 0)
      {
        v15 = *v15;
      }

      DSPGraph::strprintf(v16, "Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v14, v15, (*(v5 + 9) - *(v5 + 8)) >> 5, 0);
      DSPGraph::ThrowException();
      __break(1u);
    }

    else
    {
      v2 = v6;
      v3 = **((*(*v7 + 40))(v7) + 120);
      v1 = &getScottyLog(void)::gLog;
      if (getAUSoundIsolationLog(void)::onceToken == -1)
      {
LABEL_4:
        v8 = v2 / v3;
        v9 = getAUSoundIsolationLog(void)::gLog;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v13 = DSPGraph::Box::totalLatencyInSamples(v5);
          *buf = 136315906;
          v19 = "AUSoundIsolation_v1.mm";
          v20 = 1024;
          v21 = 431;
          v22 = 2048;
          v23 = v8;
          v24 = 1024;
          v25 = v13;
          _os_log_debug_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "%s:%i processing latency is %f seconds (%u samples)", buf, 0x22u);
        }

        if (v1[88] != -1)
        {
          dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
        }

        v10 = getAUSoundIsolationLog(void)::gLog;
        if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v19 = "AUSoundIsolation_v1.mm";
          v20 = 1024;
          v21 = 432;
          v22 = 2048;
          v23 = v8;
          _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_INFO, "%s:%i total latency is %f seconds", buf, 0x1Cu);
        }

        return v8;
      }
    }

    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
    goto LABEL_4;
  }

  if (getAUSoundIsolationLog(void)::onceToken != -1)
  {
    dispatch_once(&getAUSoundIsolationLog(void)::onceToken, &__block_literal_global_48);
  }

  v11 = getAUSoundIsolationLog(void)::gLog;
  v8 = 0.0;
  if (os_log_type_enabled(getAUSoundIsolationLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v19 = "AUSoundIsolation_v1.mm";
    v20 = 1024;
    v21 = 436;
    _os_log_error_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "%s:%i The host requested latency before the real value is available!", buf, 0x12u);
  }

  return v8;
}

uint64_t AUSoundIsolation_v1::GetProcessingGraphOutput(AUSoundIsolation_v1 *this)
{
  v2 = *(this + 75);
  if (!v2 || !DSPGraph::Graph::out(v2))
  {
    return 0;
  }

  v3 = *(this + 75);

  return DSPGraph::Graph::out(v3);
}