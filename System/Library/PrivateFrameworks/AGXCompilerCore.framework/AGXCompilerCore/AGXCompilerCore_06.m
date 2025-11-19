uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

uint64_t *llvm::StringMap<AGCLLVMUserObject::BuiltinArg,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 33, 8);
  v11 = v10;
  v12 = v10 + 32;
  if (a3)
  {
    memcpy((v10 + 32), a2, a3);
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

uint64_t *AGCLLVMTargetConfig::createTargetConfig(int a1)
{
  v1 = 0;
  if (a1 > 0x18u)
  {
    if (a1 > 0x1Fu)
    {
      if (a1 > 0x22u)
      {
        if (a1 == 35 || a1 == 38)
        {
          {
            v43 = a1;
            a1 = v43;
            if (v44)
            {
              AGCLLVMG17GA0TargetConfig::AGCLLVMG17GA0TargetConfig();
              __cxa_atexit(AGCLLVMG17GA0TargetConfig::~AGCLLVMG17GA0TargetConfig, &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g17g_a0, &dword_20E4E1000);
              a1 = v43;
            }
          }

          {
            v45 = a1;
            a1 = v45;
            if (v46)
            {
              AGCLLVMG18PA0TargetConfig::AGCLLVMG18PA0TargetConfig();
              __cxa_atexit(AGCLLVMG18PA0TargetConfig::~AGCLLVMG18PA0TargetConfig, &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g18p_a0, &dword_20E4E1000);
              a1 = v45;
            }
          }

          if (a1 == 65574)
          {
            return &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g18p_a0;
          }

          else
          {
            return &AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g17g_a0;
          }
        }

        return v1;
      }

      if (a1 == 32 || a1 == 34)
      {
        {
          v37 = a1;
          a1 = v37;
          if (v38)
          {
            AGCLLVMG16GA0TargetConfig::AGCLLVMG16GA0TargetConfig();
            __cxa_atexit(AGCLLVMG16GA0TargetConfig::~AGCLLVMG16GA0TargetConfig, &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_a0, &dword_20E4E1000);
            a1 = v37;
          }
        }

        {
          v39 = a1;
          a1 = v39;
          if (v40)
          {
            AGCLLVMG16GB0TargetConfig::AGCLLVMG16GB0TargetConfig();
            __cxa_atexit(AGCLLVMG16GB0TargetConfig::~AGCLLVMG16GB0TargetConfig, &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_b0, &dword_20E4E1000);
            a1 = v39;
          }
        }

        {
          v41 = a1;
          a1 = v41;
          if (v42)
          {
            AGCLLVMG17PA0TargetConfig::AGCLLVMG17PA0TargetConfig();
            __cxa_atexit(AGCLLVMG17PA0TargetConfig::~AGCLLVMG17PA0TargetConfig, &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g17p_a0, &dword_20E4E1000);
            a1 = v41;
          }
        }

        if (a1 == 196640)
        {
          v1 = &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_b0;
        }

        else
        {
          v1 = &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_a0;
        }

        v2 = 65570;
        v3 = &AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g17p_a0;
        goto LABEL_53;
      }
    }

    else
    {
      if (a1 - 25 < 3)
      {
        goto LABEL_27;
      }

      if (a1 == 31)
      {
        {
          v47 = a1;
          a1 = v47;
          if (v48)
          {
            AGCLLVMG16PA0TargetConfig::AGCLLVMG16PA0TargetConfig();
            __cxa_atexit(AGCLLVMG16PA0TargetConfig::~AGCLLVMG16PA0TargetConfig, &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pA0, &dword_20E4E1000);
            a1 = v47;
          }
        }

        {
          v49 = a1;
          a1 = v49;
          if (v50)
          {
            AGCLLVMG16PB0TargetConfig::AGCLLVMG16PB0TargetConfig(&AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB0, 196639);
            __cxa_atexit(AGCLLVMG16PB0TargetConfig::~AGCLLVMG16PB0TargetConfig, &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB0, &dword_20E4E1000);
            a1 = v49;
          }
        }

        v2 = 262175;
        {
          v51 = a1;
          v2 = 262175;
          v53 = v52;
          a1 = v51;
          if (v53)
          {
            AGCLLVMG16PB0TargetConfig::AGCLLVMG16PB0TargetConfig(&AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB1, 262175);
            __cxa_atexit(AGCLLVMG16PB0TargetConfig::~AGCLLVMG16PB0TargetConfig, &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB1, &dword_20E4E1000);
            v2 = 262175;
            a1 = v51;
          }
        }

        v1 = &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pA0;
        if (a1 == 196639)
        {
          v1 = &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB0;
        }

        v3 = &AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pB1;
LABEL_53:
        if (a1 == v2)
        {
          return v3;
        }
      }
    }

    return v1;
  }

  if (a1 <= 0x12u)
  {
    if (a1 - 17 < 2)
    {
      goto LABEL_82;
    }

    if (a1 != 14 && a1 != 16)
    {
      return v1;
    }

LABEL_27:
    {
      v5 = a1;
      a1 = v5;
      if (v6)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0, 65550);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0 = &unk_2825B03B8;
        dword_27C8D8744 = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0, &dword_20E4E1000);
        a1 = v5;
      }
    }

    {
      v7 = a1;
      a1 = v7;
      if (v8)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0, 65552);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0 = &unk_2825B03B8;
        dword_27C8D8854 = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0, &dword_20E4E1000);
        a1 = v7;
      }
    }

    {
      v9 = a1;
      a1 = v9;
      if (v10)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0, 196622);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0 = &unk_2825B03B8;
        dword_27C8D86BC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0, &dword_20E4E1000);
        a1 = v9;
      }
    }

    {
      v11 = a1;
      a1 = v11;
      if (v12)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0, 196624);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0 = &unk_2825B03B8;
        dword_27C8D87CC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0, &dword_20E4E1000);
        a1 = v11;
      }
    }

    {
      v13 = a1;
      a1 = v13;
      if (v14)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0, 65561);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0 = &unk_2825B03B8;
        dword_27C8DA9DC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0, &dword_20E4E1000);
        a1 = v13;
      }
    }

    {
      v15 = a1;
      a1 = v15;
      if (v16)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0, 65562);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0 = &unk_2825B03B8;
        dword_27C8DAA6C = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0, &dword_20E4E1000);
        a1 = v15;
      }
    }

    {
      v17 = a1;
      a1 = v17;
      if (v18)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0, 65563);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0 = &unk_2825B03B8;
        dword_27C8DAAFC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0, &dword_20E4E1000);
        a1 = v17;
      }
    }

    {
      v19 = a1;
      a1 = v19;
      if (v20)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0, 196633);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0 = &unk_2825B03B8;
        dword_27C8DAB8C = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0, &dword_20E4E1000);
        a1 = v19;
      }
    }

    {
      v21 = a1;
      a1 = v21;
      if (v22)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0, 196634);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0 = &unk_2825B03B8;
        dword_27C8DAC1C = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0, &dword_20E4E1000);
        a1 = v21;
      }
    }

    {
      v23 = a1;
      a1 = v23;
      if (v24)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0, 196635);
        AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0 = &unk_2825B03B8;
        dword_27C8DACAC = 64;
        __cxa_atexit(AGCLLVMG13TargetConfig::~AGCLLVMG13TargetConfig, &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0, &dword_20E4E1000);
        a1 = v23;
      }
    }

    v1 = &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pA0;
    if (a1 <= 196621)
    {
      if (a1 > 65561)
      {
        if (a1 == 65562)
        {
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cA0;
        }

        else if (a1 == 65563)
        {
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dA0;
        }
      }

      else if (a1 == 65552)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gA0;
      }

      else if (a1 == 65561)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sA0;
      }
    }

    else if (a1 <= 196632)
    {
      if (a1 == 196622)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13pB0;
      }

      else if (a1 == 196624)
      {
        return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13gB0;
      }
    }

    else
    {
      switch(a1)
      {
        case 196633:
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13sB0;
        case 196634:
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13cB0;
        case 196635:
          return &AGCLLVMCreateG13TargetConfig(AGCTargetArch)::g13dB0;
      }
    }

    return v1;
  }

  if (a1 - 19 < 3)
  {
    {
      v25 = a1;
      a1 = v25;
      if (v26)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0, 65555);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0 = &unk_2825B1558;
        dword_27C8DAD3C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0, &dword_20E4E1000);
        a1 = v25;
      }
    }

    {
      v27 = a1;
      a1 = v27;
      if (v28)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0, 196627);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0 = &unk_2825B1558;
        dword_27C8DADCC = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0, &dword_20E4E1000);
        a1 = v27;
      }
    }

    {
      v29 = a1;
      a1 = v29;
      if (v30)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0, 65556);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0 = &unk_2825B1558;
        dword_27C8DAE5C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0, &dword_20E4E1000);
        a1 = v29;
      }
    }

    {
      v31 = a1;
      a1 = v31;
      if (v32)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0, 196628);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0 = &unk_2825B1558;
        dword_27C8DAEEC = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0, &dword_20E4E1000);
        a1 = v31;
      }
    }

    {
      v33 = a1;
      a1 = v33;
      if (v34)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0, 65557);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0 = &unk_2825B1558;
        dword_27C8DAF7C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0, &dword_20E4E1000);
        a1 = v33;
      }
    }

    {
      v35 = a1;
      a1 = v35;
      if (v36)
      {
        AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0, 196629);
        AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0 = &unk_2825B1558;
        dword_27C8DB00C = 64;
        __cxa_atexit(AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig, &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0, &dword_20E4E1000);
        a1 = v35;
      }
    }

    v1 = &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sA0;
    if (a1 <= 196626)
    {
      if (a1 == 65556)
      {
        return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cA0;
      }

      else if (a1 == 65557)
      {
        return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dA0;
      }
    }

    else
    {
      switch(a1)
      {
        case 196629:
          return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14dB0;
        case 196628:
          return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14cB0;
        case 196627:
          return &AGCLLVMCreateG14XTargetConfig(AGCTargetArch)::g14sB0;
      }
    }

    return v1;
  }

  if (a1 != 22)
  {
    if (a1 != 24)
    {
      return v1;
    }

    goto LABEL_85;
  }

  if (a1 != 196630)
  {
LABEL_85:

    return AGCLLVMCreateG15TargetConfig(a1);
  }

  a1 = 196625;
LABEL_82:

  return AGCLLVMCreateG14TargetConfig(a1);
}

void AGCLLVMG16PA0TargetConfig::AGCLLVMG16PA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pA0, 65567);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B6390;
  *(v0 + 8) = "agx3-apple-ios";
}

double AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(uint64_t a1, int a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 8) = "agx2-apple-ios";
  *(a1 + 16) = "e-p:64:64:64-f32:32:32-i64:64:64-i32:32:32-i16:16:16-v32:32:32-n32-S64";
  *(a1 + 24) = a2;
  *(a1 + 28) = a2;
  *(a1 + 32) = "ei_rt.metallib";
  *(a1 + 40) = "/metal_rt_precise.metallib";
  result = 7.29290208e-304;
  *(a1 + 48) = 0x100010000010100;
  *(a1 + 56) = 124;
  *a1 = &unk_2825BAE60;
  *(a1 + 54) = 1;
  return result;
}

void AGCLLVMTargetConfig::getTargetFeatureString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void AGCLLVMG16PB0TargetConfig::AGCLLVMG16PB0TargetConfig(uint64_t a1, int a2)
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(a1, a2);
  *(v2 + 60) = 0;
  *(v2 + 49) = 0;
  *v2 = &unk_2825B6C88;
  *(v2 + 8) = "agx3-apple-ios";
}

uint64_t AGCEnv::isEnabled(AGCEnv *this)
{
  v1 = 0x27C8D7000uLL;
  {
    v1 = 0x27C8D7000;
    if (v3)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v1 = 0x27C8D7000;
    }
  }

  return *(v1 + 2944);
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::getRaytracingFunctionMap(void)::$_0 &&>>()
{
  v36 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v0, "air.get_intersection_params_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v1, "air.get_world_space_ray_origin_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v2, "air.get_world_space_ray_direction_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v3, "air.get_ray_min_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v4, "air.get_candidate_intersection_type_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v5, "air.get_candidate_triangle_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v6, "air.is_candidate_non_opaque_bounding_box_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v7, "air.get_candidate_geometry_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v8, "air.get_candidate_primitive_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v9, "air.get_candidate_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v10, "air.get_candidate_user_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v11, "air.get_candidate_instance_count_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v12, "air.get_candidate_object_to_world_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v13, "air.get_candidate_world_to_object_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v14, "air.get_candidate_triangle_barycentric_coord_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v15, "air.is_candidate_triangle_front_facing_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v16, "air.get_candidate_curve_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v17, "air.get_candidate_curve_parameter_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v18, "air.get_candidate_ray_origin_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v19, "air.get_candidate_ray_direction_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v20, "air.get_candidate_primitive_data_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v21, "air.get_committed_intersection_type_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v22, "air.get_committed_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v23, "air.get_committed_geometry_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v24, "air.get_committed_primitive_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v25, "air.get_committed_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v26, "air.get_committed_user_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v27, "air.get_committed_instance_count_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v28, "air.get_committed_object_to_world_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v29, "air.get_committed_world_to_object_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v30, "air.get_committed_triangle_barycentric_coord_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v31, "air.is_committed_triangle_front_facing_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v32, "air.get_committed_curve_parameter_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v33, "air.get_committed_ray_origin_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v34, "air.get_committed_ray_direction_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v35, "air.get_committed_primitive_data_intersection_query");
  operator new();
}

uint64_t *llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 25, 8);
  v11 = v10;
  v12 = v10 + 24;
  if (a3)
  {
    memcpy((v10 + 24), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

__n128 AGCLLVMUserObject::initializeRaytracingFunctionMap(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator> &)::$_0::operator()(uint64_t a1, uint64_t a2, std::string *this)
{
  if (**a2)
  {
    std::string::append(this, ".intersection_function_buffer");
  }

  v6 = **(a2 + 8);
  if (v6 == 1)
  {
    v7 = ".instancing";
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v7 = ".multi_level_instancing";
  }

  std::string::append(this, v7);
LABEL_8:
  if (**(a2 + 16))
  {
    std::string::append(this, ".triangle_data");
  }

  if (**(a2 + 24))
  {
    std::string::append(this, ".curve_data");
  }

  if (**(a2 + 32))
  {
    std::string::append(this, ".world_space_data");
  }

  if (**(a2 + 40) == 1)
  {
    std::string::append(this, ".user_data");
  }

  if (**(a2 + 48))
  {
    std::string::append(this, ".primitive_motion");
  }

  if (**(a2 + 56))
  {
    std::string::append(this, ".instance_motion");
  }

  if (**(a2 + 64))
  {
    std::string::append(this, ".extended_limits");
  }

  result = *&this->__r_.__value_.__l.__data_;
  *a1 = *&this->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void AIRNTInit(AGCEnv *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  AGCEnv::load(a1);
  memset(&v18, 0, sizeof(v18));
  {
    if (v1)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
LABEL_36:
    AGCEnv::deserialize(&v18);
    AGCLLVMCtx::initialize(v17);
    operator new();
  }

  OSLog = AGCEnv::getOSLog(v1);
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG))
  {
    *buffer = 136315138;
    *&buffer[4] = "serialize";
    _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s(){\n", buffer, 0xCu);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "AGC_ENABLE_STATUS_FILE");
  v3 = 0;
  v4 = MEMORY[0x277D85DE0];
  while (1)
  {
    v5 = AGCEnv::getStatusVariables(unsigned long *)::status_vars[v3];
    v6 = getenv(v5);
    if (v6)
    {
      v7 = v6;
      v8 = AGCEnv::getOSLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buffer = 136315394;
        *&buffer[4] = v5;
        *&buffer[12] = 2080;
        *&buffer[14] = v7;
        _os_log_debug_impl(&dword_20E4E1000, v8, OS_LOG_TYPE_DEBUG, "%s = %s\n", buffer, 0x16u);
      }

      if (!std::string::compare(&v20, v5))
      {
        std::string::append(&v18, "AGC_CLIENT_PROCESS_NAME");
        std::string::push_back(&v18, 10);
        std::string::basic_string[abi:nn200100]<0>(&v19, "agc_status_");
        v9 = getpid();
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        memset(buffer, 0, sizeof(buffer));
        v10 = proc_name(v9, buffer, 0x80u);
        if (v10)
        {
          v11 = v10;
          v12 = buffer;
          while (1)
          {
            v13 = *v12;
            if ((v13 & 0x80000000) != 0)
            {
              break;
            }

            if ((*(v4 + 4 * v13 + 60) & 0x500) == 0)
            {
              goto LABEL_14;
            }

LABEL_15:
            ++v12;
            if (!--v11)
            {
              goto LABEL_19;
            }
          }

          if (__maskrune(v13, 0x500uLL))
          {
            goto LABEL_15;
          }

LABEL_14:
          *v12 = 95;
          goto LABEL_15;
        }

LABEL_19:
        std::string::append(&v19, buffer);
        *buffer = v19;
        memset(&v19, 0, sizeof(v19));
        if (buffer[23] >= 0)
        {
          v14 = buffer;
        }

        else
        {
          v14 = *buffer;
        }

        if (buffer[23] >= 0)
        {
          v15 = HIBYTE(*&buffer[16]);
        }

        else
        {
          v15 = *&buffer[8];
        }

        std::string::append(&v18, v14, v15);
        if ((buffer[23] & 0x80000000) != 0)
        {
          operator delete(*buffer);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        std::string::push_back(&v18, 10);
      }

      std::string::append(&v18, v5);
      std::string::push_back(&v18, 10);
      std::string::append(&v18, v7);
      std::string::push_back(&v18, 10);
    }

    v3 = (v3 + 1);
    if (v3 >= 0x2E)
    {
      v16 = AGCEnv::getOSLog(v6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buffer = 0;
        _os_log_debug_impl(&dword_20E4E1000, v16, OS_LOG_TYPE_DEBUG, "}\n", buffer, 2u);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      goto LABEL_36;
    }
  }
}

void AGCEnv::deserialize(AGCEnv *a1)
{
  v1 = a1;
  v28 = *MEMORY[0x277D85DE8];
  {
    if (a1)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v2 = *(v1 + 23);
    if ((v2 & 0x80u) != 0)
    {
      v2 = *(v1 + 1);
    }

    if (v2)
    {
      AGCEnv::getEnvLookup(a1);
      OSLog = AGCEnv::getOSLog(v3);
      v5 = os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        *buf = 136315138;
        *&buf[4] = "deserialize";
        _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s(){\n", buf, 0xCu);
      }

      v6 = 0;
      do
      {
        v7 = *(v1 + 23);
        if ((v7 & 0x80u) != 0)
        {
          v7 = *(v1 + 1);
        }

        if (v6 >= v7)
        {
          break;
        }

        v5 = std::string::find(v1, 10, v6);
        if (v5 == -1)
        {
          break;
        }

        v8 = v5;
        std::string::basic_string(&v20, v1, v6, v5 - v6, buf);
        v6 = v8 + 1;
        v5 = std::string::find(v1, 10, v8 + 1);
        v9 = v5;
        if (v5 != -1)
        {
          std::string::basic_string(&__str, v1, v6, v5 - v6, buf);
          *buf = &v20;
          v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v20.__r_.__value_.__l.__data_);
          v11 = std::string::operator=((v10 + 56), &__str);
          v12 = AGCEnv::getOSLog(v11);
          v5 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
          if (v5)
          {
            size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
            if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v14 = &v20;
            }

            else
            {
              v14 = v20.__r_.__value_.__r.__words[0];
            }

            if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v20.__r_.__value_.__l.__size_;
            }

            v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v15 = __str.__r_.__value_.__l.__size_;
            }

            *buf = 136315906;
            *&buf[4] = v14;
            v22 = 2048;
            v23 = size;
            v24 = 2080;
            v25 = p_str;
            v26 = 2048;
            v27 = v15;
            _os_log_debug_impl(&dword_20E4E1000, v12, OS_LOG_TYPE_DEBUG, "\t%s[%zu] = %s[%zu]\n", buf, 0x2Au);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v6 = v9 + 1;
        }

        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      while (v9 != -1);
      v17 = AGCEnv::getOSLog(v5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_20E4E1000, v17, OS_LOG_TYPE_DEBUG, "}\n", buf, 2u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void AGCNativeTranslator::init(AGCNativeTranslator *this)
{
  GetAGCActiveTargets();
  v2 = GetAGCActiveTargets(void)::active_impls;
  if (qword_27C8D88B0 != GetAGCActiveTargets(void)::active_impls)
  {
    v3 = 0;
    do
    {
      v4 = AGCTarget::TargetArchToCPUSubtypeImpl(*(v2 + 4 * v3));
      v5 = HIDWORD(v4);
      v7 = v4;
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this, v4);
      v8 = &v7;
      v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 3, v7);
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v6 + 3), v5);
      ++v3;
      v2 = GetAGCActiveTargets(void)::active_impls;
    }

    while (v3 < (qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls) >> 2);
  }
}

void GetAGCActiveTargets(void)
{
  {
    GetAGCActiveTargets(void)::active_impls = 0;
    qword_27C8D88B0 = 0;
    qword_27C8D88B8 = 0;
    __cxa_atexit(std::vector<AGCTargetArch>::~vector[abi:nn200100], &GetAGCActiveTargets(void)::active_impls, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&GetAGCActiveTargets(void)::flag, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&GetAGCActiveTargets(void)::flag, &v1, std::__call_once_proxy[abi:nn200100]<std::tuple<GetAGCActiveTargets(void)::$_0 &&>>);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<GetAGCActiveTargets(void)::$_0 &&>>()
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 14;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 16;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 17;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 18;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 19;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 21;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 22;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 24;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 31;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 32;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 34;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 35;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 38;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v0 = v11;
  v1 = v12;
  if (v11 != v12)
  {
    v2 = v11 + 1;
    while (v2 != v12)
    {
      v3 = v2 - 1;
      v4 = *(v2 - 1);
      v5 = *v2++;
      if (v4 == v5)
      {
        for (i = v3 + 2; i != v1; ++i)
        {
          v7 = v4;
          v4 = *i;
          if (v7 != *i)
          {
            v3[1] = v4;
            ++v3;
          }
        }

        v1 = v3 + 1;
        break;
      }
    }

    if (v0 != v1)
    {
      v8 = v0;
      do
      {
        v9 = *v8;
        if (*v8 == 14)
        {
          v10 = 196622;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 16)
        {
          v10 = 196624;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 25)
        {
          v10 = 65561;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 25)
          {
            v10 = 196633;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 27)
        {
          v10 = 65563;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 27)
          {
            v10 = 196635;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 17)
        {
          v10 = 196625;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 18)
        {
          v10 = 65554;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 18)
          {
            v10 = 196626;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 19)
        {
          v10 = 65555;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 19)
          {
            v10 = 196627;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 20)
        {
          v10 = 65556;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 21)
        {
          v10 = 65557;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 21)
          {
            v10 = 196629;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 22)
        {
          v10 = 196630;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 24)
        {
          v10 = 196632;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 24)
          {
            v10 = 327704;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 31)
        {
          v10 = 65567;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 31)
          {
            v10 = 196639;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
            if (*v8 == 31)
            {
              v10 = 262175;
              std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
              v9 = *v8;
            }
          }
        }

        if (v9 == 32)
        {
          v10 = 65568;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 32)
          {
            v10 = 196640;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 34)
        {
          v10 = 65570;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 35)
        {
          v10 = 65571;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 38)
        {
          v10 = 65574;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
        }

        ++v8;
      }

      while (v8 != v1);
    }
  }

  if (v0)
  {

    operator delete(v0);
  }
}

void std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::vector<AGCTargetArch>::push_back[abi:nn200100](_DWORD *a1)
{
  v1 = qword_27C8D88B0;
  if (qword_27C8D88B0 >= qword_27C8D88B8)
  {
    v3 = GetAGCActiveTargets(void)::active_impls;
    v4 = qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls;
    v5 = (qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls) >> 2;
    v6 = v5 + 1;
    if ((v5 + 1) >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = qword_27C8D88B8 - GetAGCActiveTargets(void)::active_impls;
    if ((qword_27C8D88B8 - GetAGCActiveTargets(void)::active_impls) >> 1 > v6)
    {
      v6 = v7 >> 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v8 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = (4 * v5);
    v10 = &v9[-((qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls) >> 2)];
    *v9 = *a1;
    v2 = (v9 + 1);
    memcpy(v10, v3, v4);
    GetAGCActiveTargets(void)::active_impls = v10;
    qword_27C8D88B0 = v2;
    qword_27C8D88B8 = 0;
    if (v3)
    {
      operator delete(v3);
    }
  }

  else
  {
    *qword_27C8D88B0 = *a1;
    v2 = v1 + 4;
  }

  qword_27C8D88B0 = v2;
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2)
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
      v4 = *(v2 + 28);
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

uint64_t AGCTarget::TargetArchToCPUSubtypeImpl(int a1)
{
  if ((a1 - 14) >= 0xEu || ((0x38FDu >> (a1 - 14)) & 1) == 0)
  {
    if (a1 > 196629)
    {
      if (a1 > 196639)
      {
        if (a1 == 196640)
        {
          v3 = 0x19300000000;
          goto LABEL_27;
        }

        if (a1 == 262175)
        {
          v3 = 0x1B300000000;
          goto LABEL_33;
        }

        if (a1 != 327704)
        {
          goto LABEL_34;
        }

        v3 = 0x11300000000;
      }

      else
      {
        if (a1 == 196630)
        {
          v3 = 0x26200000000;
          v2 = 610;
          return v3 | v2;
        }

        if (a1 != 196632)
        {
          if (a1 != 196639)
          {
            goto LABEL_34;
          }

          v3 = 0xF300000000;
          goto LABEL_33;
        }

        v3 = 0x5300000000;
      }
    }

    else
    {
      if (a1 > 65569)
      {
        switch(a1)
        {
          case 65570:
            v3 = 0x14300000000;
            v2 = 323;
            return v3 | v2;
          case 65571:
            v3 = 0x15300000000;
            v2 = 339;
            return v3 | v2;
          case 65574:
            v3 = 0x17300000000;
            v2 = 371;
            return v3 | v2;
        }

        goto LABEL_34;
      }

      if (a1 != 65560)
      {
        if (a1 != 65567)
        {
          if (a1 == 65568)
          {
            v3 = 0x10300000000;
LABEL_27:
            v2 = 403;
            return v3 | v2;
          }

LABEL_34:
          v2 = 0;
          v3 = 0;
          return v3 | v2;
        }

        v3 = 0xE300000000;
LABEL_33:
        v2 = 435;
        return v3 | v2;
      }

      v3 = 0x4300000000;
    }

    v2 = 275;
    return v3 | v2;
  }

  v1 = (a1 - 14);
  v2 = qword_20E716388[v1];
  v3 = qword_20E7163F8[v1];
  return v3 | v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
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
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t AIRNTSupportsThreads()
{
  if (atomic_load_explicit(&isMultithreadEnabled(void)::flag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&isMultithreadEnabled(void)::flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<isMultithreadEnabled(void)::$_0 &&>>);
  }

  return isMultithreadEnabled(void)::enable_multithread;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<isMultithreadEnabled(void)::$_0 &&>>(uint64_t a1, const char *a2)
{
  v2 = 0x27C8D7000uLL;
  {
    v2 = 0x27C8D7000;
    if (v5)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v2 = 0x27C8D7000;
    }
  }

  v4 = *(v2 + 2944) != 1 || (Value = AGCEnv::getValue("AGC_AIR_NT_DISABLE_MULTITHREAD", a2)) == 0 || *Value == 48 || atoi(Value) == 0;
  isMultithreadEnabled(void)::enable_multithread = v4;
}

uint64_t *AGCLLVMGen6TargetConfig::initializeAirBuiltinsMap(AGCLLVMGen6TargetConfig *this, AGCLLVMAirBuiltinsMap *a2)
{
  AGCLLVMGen5TargetConfig::initializeAirBuiltinsMap(this, a2);
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "yield_simdgroup", 0xFuLL);
  v4 = *result;
  *(v4 + 8) = 1;
  *(v4 + 16) = AGCLLVMAirBuiltins::buildSimdYield;
  *(v4 + 24) = 0;
  *(v4 + 32) = 3;
  *(v4 + 36) = 0;
  return result;
}

uint64_t *AGCLLVMGen5TargetConfig::initializeAirBuiltinsMap(AGCLLVMGen5TargetConfig *this, AGCLLVMAirBuiltinsMap *a2)
{
  AGCLLVMGen3TargetConfig::initializeAirBuiltinsMap(this, a2);
  v3 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_warped_coordinates", 0x16uLL);
  *(v3 + 8) = 1;
  *(v3 + 16) = AGCLLVMAirBuiltins::buildCoordinateWarp;
  *(v3 + 24) = 0;
  *(v3 + 32) = 9;
  *(v3 + 36) = 0;
  v4 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_dewarped_coordinates", 0x18uLL);
  *(v4 + 8) = 1;
  *(v4 + 16) = AGCLLVMAirBuiltins::buildCoordinateDewarp;
  *(v4 + 24) = 0;
  *(v4 + 32) = 9;
  *(v4 + 36) = 0;
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "map_screen_to_physical_coordinates", 0x22uLL);
  *(v5 + 8) = 1;
  *(v5 + 16) = AGCLLVMAirBuiltins::buildCoordinateWarp;
  *(v5 + 24) = 0;
  *(v5 + 32) = 9;
  *(v5 + 36) = 0;
  v6 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "map_physical_to_screen_coordinates", 0x22uLL);
  *(v6 + 8) = 1;
  *(v6 + 16) = AGCLLVMAirBuiltins::buildCoordinateDewarp;
  *(v6 + 24) = 0;
  *(v6 + 32) = 9;
  *(v6 + 36) = 0;
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_ballot", 0xBuLL);
  *(v7 + 8) = 1;
  *(v7 + 16) = AGCLLVMAirBuiltins::buildQuadBallot;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  *(v7 + 36) = 0;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_broadcast", 0xEuLL);
  *(v8 + 8) = 1;
  *(v8 + 16) = AGCLLVMAirBuiltins::buildSimdBroadcast;
  *(v8 + 24) = 0;
  *(v8 + 32) = 5;
  *(v8 + 36) = 0;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_ballot", 0xBuLL);
  *(v9 + 8) = 1;
  *(v9 + 16) = AGCLLVMAirBuiltins::buildSimdBallot;
  *(v9 + 24) = 0;
  *(v9 + 32) = 9;
  *(v9 + 36) = 0;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle", 0xCuLL);
  *(v10 + 8) = 1;
  *(v10 + 16) = AGCLLVMAirBuiltins::buildSimdShuffle;
  *(v10 + 24) = 0;
  *(v10 + 32) = 5;
  *(v10 + 36) = 0;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_up", 0xFuLL);
  *(v11 + 8) = 1;
  *(v11 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleUp;
  *(v11 + 24) = 0;
  *(v11 + 32) = 5;
  *(v11 + 36) = 0;
  v12 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_down", 0x11uLL);
  *(v12 + 8) = 1;
  *(v12 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleDown;
  *(v12 + 24) = 0;
  *(v12 + 32) = 5;
  *(v12 + 36) = 0;
  v13 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_xor", 0x10uLL);
  *(v13 + 8) = 1;
  *(v13 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleXor;
  *(v13 + 24) = 0;
  *(v13 + 32) = 5;
  *(v13 + 36) = 0;
  v14 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_rotate_up", 0x16uLL);
  *(v14 + 8) = 1;
  *(v14 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleRotateUp;
  *(v14 + 24) = 0;
  *(v14 + 32) = 5;
  *(v14 + 36) = 0;
  v15 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_rotate_down", 0x18uLL);
  *(v15 + 8) = 1;
  *(v15 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleRotateDown;
  *(v15 + 24) = 0;
  *(v15 + 32) = 5;
  *(v15 + 36) = 0;
  v16 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_threads_per_simdgroup", 0x19uLL);
  *(v16 + 8) = 1;
  *(v16 + 16) = AGCLLVMAirBuiltins::buildThreadsPerSimdgroup;
  *(v16 + 24) = 0;
  *(v16 + 32) = 9;
  *(v16 + 36) = 0;
  v17 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_thread_index_in_simdgroup", 0x1DuLL);
  *(v17 + 8) = 1;
  *(v17 + 16) = AGCLLVMAirBuiltins::buildThreadIndexInSimdGroup;
  *(v17 + 24) = 0;
  *(v17 + 32) = 9;
  *(v17 + 36) = 0;
  v18 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_simdgroup_index_in_threadgroup", 0x22uLL);
  *(v18 + 8) = 1;
  *(v18 + 16) = AGCLLVMAirBuiltins::buildSimdGroupIndexInThreadgroup;
  *(v18 + 24) = 0;
  *(v18 + 32) = 9;
  *(v18 + 36) = 0;
  v19 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_active_threads_mask", 0x18uLL);
  *(v19 + 8) = 1;
  *(v19 + 16) = AGCLLVMAirBuiltins::buildSimdActiveThreadsMask;
  *(v19 + 24) = 0;
  *(v19 + 32) = 9;
  *(v19 + 36) = 256;
  v20 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_active_threads_mask", 0x18uLL);
  *(v20 + 8) = 1;
  *(v20 + 16) = AGCLLVMAirBuiltins::buildQuadActiveThreadsMask;
  *(v20 + 24) = 0;
  *(v20 + 32) = 1;
  *(v20 + 36) = 0;
  v21 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_all", 8uLL);
  *(v21 + 8) = 1;
  *(v21 + 16) = AGCLLVMAirBuiltins::buildSimdAll;
  *(v21 + 24) = 0;
  *(v21 + 32) = 3;
  *(v21 + 36) = 0;
  v22 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_any", 8uLL);
  *(v22 + 8) = 1;
  *(v22 + 16) = AGCLLVMAirBuiltins::buildSimdAny;
  *(v22 + 24) = 0;
  *(v22 + 32) = 3;
  *(v22 + 36) = 0;
  v23 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_all", 8uLL);
  *(v23 + 8) = 1;
  *(v23 + 16) = AGCLLVMAirBuiltins::buildQuadAll;
  *(v23 + 24) = 0;
  *(v23 + 32) = 3;
  *(v23 + 36) = 0;
  v24 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_any", 8uLL);
  *(v24 + 8) = 1;
  *(v24 + 16) = AGCLLVMAirBuiltins::buildQuadAny;
  *(v24 + 24) = 0;
  *(v24 + 32) = 3;
  *(v24 + 36) = 0;
  v25 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_vote_all", 0xDuLL);
  *(v25 + 8) = 1;
  *(v25 + 16) = AGCLLVMAirBuiltins::buildSimdVoteAll;
  *(v25 + 24) = 0;
  *(v25 + 32) = 9;
  *(v25 + 36) = 0;
  v26 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_vote_any", 0xDuLL);
  *(v26 + 8) = 1;
  *(v26 + 16) = AGCLLVMAirBuiltins::buildSimdVoteAny;
  *(v26 + 24) = 0;
  *(v26 + 32) = 9;
  *(v26 + 36) = 0;
  v27 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_vote_all", 0xDuLL);
  *(v27 + 8) = 1;
  *(v27 + 16) = AGCLLVMAirBuiltins::buildQuadVoteAll;
  *(v27 + 24) = 0;
  *(v27 + 32) = 3;
  *(v27 + 36) = 0;
  v28 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_vote_any", 0xDuLL);
  *(v28 + 8) = 1;
  *(v28 + 16) = AGCLLVMAirBuiltins::buildQuadVoteAny;
  *(v28 + 24) = 0;
  *(v28 + 32) = 3;
  *(v28 + 36) = 0;
  v29 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simdgroup_matrix_8x8_multiply_accumulate", 0x28uLL);
  *(v29 + 8) = 1;
  *(v29 + 16) = AGCLLVMAirBuiltins::buildSimdMatrixMultiplyAccumulate;
  *(v29 + 24) = 0;
  *(v29 + 32) = 12;
  *(v29 + 36) = 0;
  v30 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simdgroup_matrix_8x8_init_diag", 0x1EuLL);
  *(v30 + 8) = 1;
  *(v30 + 16) = AGCLLVMAirBuiltins::buildSimdMatrixThreadElementsInit;
  *(v30 + 24) = 0;
  *(v30 + 32) = 12;
  *(v30 + 36) = 0;
  v31 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simdgroup_matrix_8x8_init_filled", 0x20uLL);
  *(v31 + 8) = 1;
  *(v31 + 16) = AGCLLVMAirBuiltins::buildSimdMatrixThreadElementsInit;
  *(v31 + 24) = 0;
  *(v31 + 32) = 12;
  *(v31 + 36) = 0;
  v32 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_and", 8uLL);
  *(v32 + 8) = 1;
  *(v32 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v32 + 24) = 0;
  *(v32 + 32) = 12;
  *(v32 + 36) = 0;
  v33 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_or", 7uLL);
  *(v33 + 8) = 1;
  *(v33 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v33 + 24) = 0;
  *(v33 + 32) = 12;
  *(v33 + 36) = 0;
  v34 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_xor", 8uLL);
  *(v34 + 8) = 1;
  *(v34 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v34 + 24) = 0;
  *(v34 + 32) = 12;
  *(v34 + 36) = 0;
  v35 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_product", 0xCuLL);
  *(v35 + 8) = 1;
  *(v35 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v35 + 24) = 0;
  *(v35 + 32) = 12;
  *(v35 + 36) = 0;
  v36 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_sum", 8uLL);
  *(v36 + 8) = 1;
  *(v36 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v36 + 24) = 0;
  *(v36 + 32) = 12;
  *(v36 + 36) = 0;
  v37 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_max", 8uLL);
  *(v37 + 8) = 1;
  *(v37 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v37 + 24) = 0;
  *(v37 + 32) = 12;
  *(v37 + 36) = 0;
  v38 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_min", 8uLL);
  *(v38 + 8) = 1;
  *(v38 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v38 + 24) = 0;
  *(v38 + 32) = 12;
  *(v38 + 36) = 0;
  v39 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_inclusive_product", 0x1DuLL);
  *(v39 + 8) = 1;
  *(v39 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v39 + 24) = 0;
  *(v39 + 32) = 12;
  *(v39 + 36) = 0;
  v40 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_inclusive_sum", 0x19uLL);
  *(v40 + 8) = 1;
  *(v40 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v40 + 24) = 0;
  *(v40 + 32) = 12;
  *(v40 + 36) = 0;
  v41 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_exclusive_product", 0x1DuLL);
  *(v41 + 8) = 1;
  *(v41 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v41 + 24) = 0;
  *(v41 + 32) = 12;
  *(v41 + 36) = 0;
  v42 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_exclusive_sum", 0x19uLL);
  *(v42 + 8) = 1;
  *(v42 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v42 + 24) = 0;
  *(v42 + 32) = 12;
  *(v42 + 36) = 0;
  v43 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_is_helper_thread", 0x15uLL);
  *(v43 + 8) = 1;
  *(v43 + 16) = AGCLLVMAirBuiltins::buildQuadIsHelperThread;
  *(v43 + 24) = 0;
  *(v43 + 32) = 12;
  *(v43 + 36) = 0;
  v44 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_is_first", 0xDuLL);
  *(v44 + 8) = 1;
  *(v44 + 16) = AGCLLVMAirBuiltins::buildQuadIsFirstActiveThread;
  *(v44 + 24) = 0;
  *(v44 + 32) = 12;
  *(v44 + 36) = 0;
  v45 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_broadcast_first", 0x14uLL);
  *(v45 + 8) = 1;
  *(v45 + 16) = AGCLLVMAirBuiltins::buildQuadBroadcastFirstActiveThread;
  *(v45 + 24) = 0;
  *(v45 + 32) = 12;
  *(v45 + 36) = 0;
  v46 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_and", 8uLL);
  *(v46 + 8) = 1;
  *(v46 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v46 + 24) = 0;
  *(v46 + 32) = 12;
  *(v46 + 36) = 0;
  v47 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_or", 7uLL);
  *(v47 + 8) = 1;
  *(v47 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v47 + 24) = 0;
  *(v47 + 32) = 12;
  *(v47 + 36) = 0;
  v48 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_xor", 8uLL);
  *(v48 + 8) = 1;
  *(v48 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v48 + 24) = 0;
  *(v48 + 32) = 12;
  *(v48 + 36) = 0;
  v49 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_product", 0xCuLL);
  *(v49 + 8) = 1;
  *(v49 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v49 + 24) = 0;
  *(v49 + 32) = 12;
  *(v49 + 36) = 0;
  v50 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_sum", 8uLL);
  *(v50 + 8) = 1;
  *(v50 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v50 + 24) = 0;
  *(v50 + 32) = 12;
  *(v50 + 36) = 0;
  v51 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_max", 8uLL);
  *(v51 + 8) = 1;
  *(v51 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v51 + 24) = 0;
  *(v51 + 32) = 12;
  *(v51 + 36) = 0;
  v52 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_min", 8uLL);
  *(v52 + 8) = 1;
  *(v52 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v52 + 24) = 0;
  *(v52 + 32) = 12;
  *(v52 + 36) = 0;
  v53 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_inclusive_product", 0x1DuLL);
  *(v53 + 8) = 1;
  *(v53 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v53 + 24) = 0;
  *(v53 + 32) = 12;
  *(v53 + 36) = 0;
  v54 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_inclusive_sum", 0x19uLL);
  *(v54 + 8) = 1;
  *(v54 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v54 + 24) = 0;
  *(v54 + 32) = 12;
  *(v54 + 36) = 0;
  v55 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_exclusive_product", 0x1DuLL);
  *(v55 + 8) = 1;
  *(v55 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v55 + 24) = 0;
  *(v55 + 32) = 12;
  *(v55 + 36) = 0;
  v56 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_exclusive_sum", 0x19uLL);
  *(v56 + 8) = 1;
  *(v56 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v56 + 24) = 0;
  *(v56 + 32) = 12;
  *(v56 + 36) = 0;
  v57 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_is_helper_thread", 0x15uLL);
  *(v57 + 8) = 1;
  *(v57 + 16) = AGCLLVMAirBuiltins::buildSimdIsHelperThread;
  *(v57 + 24) = 0;
  *(v57 + 32) = 12;
  *(v57 + 36) = 0;
  v58 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_is_first", 0xDuLL);
  *(v58 + 8) = 1;
  *(v58 + 16) = AGCLLVMAirBuiltins::buildSimdIsFirstActiveThread;
  *(v58 + 24) = 0;
  *(v58 + 32) = 12;
  *(v58 + 36) = 0;
  v59 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_broadcast_first", 0x14uLL);
  *(v59 + 8) = 1;
  *(v59 + 16) = AGCLLVMAirBuiltins::buildSimdBroadcastFirstActiveThread;
  *(v59 + 24) = 0;
  *(v59 + 32) = 12;
  *(v59 + 36) = 0;
  v60 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_and_fill_up", 0x18uLL);
  *(v60 + 8) = 1;
  *(v60 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v60 + 24) = 0;
  *(v60 + 32) = 12;
  *(v60 + 36) = 0;
  v61 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_and_fill_down", 0x1AuLL);
  *(v61 + 8) = 1;
  *(v61 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v61 + 24) = 0;
  *(v61 + 32) = 12;
  *(v61 + 36) = 0;
  v62 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_and_fill_up", 0x18uLL);
  *(v62 + 8) = 1;
  *(v62 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v62 + 24) = 0;
  *(v62 + 32) = 12;
  *(v62 + 36) = 0;
  v63 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_and_fill_down", 0x1AuLL);
  *(v63 + 8) = 1;
  *(v63 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v63 + 24) = 0;
  *(v63 + 32) = 12;
  *(v63 + 36) = 0;
  v64 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_thread_position_in_grid", 0x1BuLL);
  *(v64 + 8) = 1;
  *(v64 + 16) = AGCLLVMAirBuiltins::buildGetThreadPositionInGrid;
  *(v64 + 24) = 0;
  *(v64 + 32) = 3;
  *(v64 + 36) = 0;
  v65 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_position", 0xCuLL);
  *(v65 + 8) = 1;
  *(v65 + 16) = AGCLLVMAirBuiltins::buildGetPosition;
  *(v65 + 24) = 0;
  *(v65 + 32) = 3;
  *(v65 + 36) = 0;
  v66 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_sample_id", 0xDuLL);
  *(v66 + 8) = 1;
  *(v66 + 16) = AGCLLVMAirBuiltins::buildGetSampleID;
  *(v66 + 24) = 0;
  *(v66 + 32) = 3;
  *(v66 + 36) = 0;
  v67 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_vertex_id", 0xDuLL);
  *(v67 + 8) = 1;
  *(v67 + 16) = AGCLLVMAirBuiltins::buildGetVertexID;
  *(v67 + 24) = 0;
  *(v67 + 32) = 3;
  *(v67 + 36) = 0;
  v68 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_instance_id", 0xFuLL);
  *(v68 + 8) = 1;
  *(v68 + 16) = AGCLLVMAirBuiltins::buildGetInstanceID;
  *(v68 + 24) = 0;
  *(v68 + 32) = 3;
  *(v68 + 36) = 0;
  v69 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_amplification_id", 0x14uLL);
  *(v69 + 8) = 1;
  *(v69 + 16) = AGCLLVMAirBuiltins::buildGetAmplificationID;
  *(v69 + 24) = 0;
  *(v69 + 32) = 3;
  *(v69 + 36) = 0;
  v70 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_patch_id", 0xCuLL);
  *(v70 + 8) = 1;
  *(v70 + 16) = AGCLLVMAirBuiltins::buildGetPatchID;
  *(v70 + 24) = 0;
  *(v70 + 32) = 3;
  *(v70 + 36) = 0;
  v71 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_render_target_array_index", 0x1DuLL);
  *(v71 + 8) = 1;
  *(v71 + 16) = AGCLLVMAirBuiltins::buildGetRenderTargetArrayIndex;
  *(v71 + 24) = 0;
  *(v71 + 32) = 3;
  *(v71 + 36) = 0;
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_dispatch_private_buffer", 0x1BuLL);
  v73 = *result;
  *(v73 + 8) = 1;
  *(v73 + 16) = AGCLLVMAirBuiltins::buildGetDispatchPrivateBuffer;
  *(v73 + 24) = 0;
  *(v73 + 32) = 3;
  *(v73 + 36) = 0;
  return result;
}

uint64_t *std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 12))
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = 0;
        v5 = 8 * v3;
        do
        {
          v6 = *(*v2 + v4);
          if (v6 != -8 && v6 != 0)
          {
            llvm::deallocate_buffer(v6, (*v6 + 41));
          }

          v4 += 8;
        }

        while (v5 != v4);
      }
    }

    free(*v2);

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

uint64_t *AGCLLVMAirBuiltinsMap::insertBuiltinReplacementsBase(AGCLLVMAirBuiltinsMap *this, const AGCLLVMTargetConfig *a2)
{
  v2 = a2;
  v4 = *(a2 + 49);
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "acos", 4uLL);
  *(v5 + 8) = 1;
  *(v5 + 16) = AGCLLVMAirBuiltins::buildArccos;
  *(v5 + 24) = 0;
  *(v5 + 32) = 3;
  *(v5 + 36) = v4;
  *(v5 + 37) = 1;
  v6 = *(v2 + 50);
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "asin", 4uLL);
  *(v7 + 8) = 1;
  *(v7 + 16) = AGCLLVMAirBuiltins::buildArcsin;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  *(v7 + 36) = v6;
  *(v7 + 37) = 1;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atan", 4uLL);
  *(v8 + 8) = 1;
  *(v8 + 16) = AGCLLVMAirBuiltins::buildArctan;
  *(v8 + 24) = 0;
  *(v8 + 32) = 3;
  *(v8 + 36) = 257;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atan2", 5uLL);
  *(v9 + 8) = 1;
  *(v9 + 16) = AGCLLVMAirBuiltins::buildArctan2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 5;
  *(v9 + 36) = 257;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "acosh", 5uLL);
  *(v10 + 8) = 1;
  *(v10 + 16) = AGCLLVMAirBuiltins::buildArccosh;
  *(v10 + 24) = 0;
  *(v10 + 32) = 3;
  *(v10 + 36) = 257;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "asinh", 5uLL);
  *(v11 + 8) = 1;
  *(v11 + 16) = AGCLLVMAirBuiltins::buildArcsinh;
  *(v11 + 24) = 0;
  *(v11 + 32) = 3;
  *(v11 + 36) = 257;
  v12 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atanh", 5uLL);
  *(v12 + 8) = 1;
  *(v12 + 16) = AGCLLVMAirBuiltins::buildArctanh;
  *(v12 + 24) = 0;
  *(v12 + 32) = 3;
  *(v12 + 36) = 257;
  v13 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "pow", 3uLL);
  *(v13 + 8) = 1;
  *(v13 + 16) = AGCLLVMAirBuiltins::buildPow;
  *(v13 + 24) = 0;
  *(v13 + 32) = 5;
  *(v13 + 36) = 257;
  v14 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "powr", 4uLL);
  *(v14 + 8) = 1;
  *(v14 + 16) = AGCLLVMAirBuiltins::buildPowr;
  *(v14 + 24) = 0;
  *(v14 + 32) = 5;
  *(v14 + 36) = 257;
  v15 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "cosh", 4uLL);
  *(v15 + 8) = 1;
  *(v15 + 16) = AGCLLVMAirBuiltins::buildCosh;
  *(v15 + 24) = 0;
  *(v15 + 32) = 3;
  *(v15 + 36) = 257;
  v16 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sinh", 4uLL);
  *(v16 + 8) = 1;
  *(v16 + 16) = AGCLLVMAirBuiltins::buildSinh;
  *(v16 + 24) = 0;
  *(v16 + 32) = 3;
  *(v16 + 36) = 257;
  v17 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "tanh", 4uLL);
  *(v17 + 8) = 1;
  *(v17 + 16) = AGCLLVMAirBuiltins::buildTanh;
  *(v17 + 24) = 0;
  *(v17 + 32) = 3;
  *(v17 + 36) = 257;
  v18 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "exp10", 5uLL);
  *(v18 + 8) = 1;
  *(v18 + 16) = AGCLLVMAirBuiltins::buildExp10;
  *(v18 + 24) = 0;
  *(v18 + 32) = 3;
  *(v18 + 36) = 257;
  v19 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "log10", 5uLL);
  *(v19 + 8) = 1;
  *(v19 + 16) = AGCLLVMAirBuiltins::buildLog10;
  *(v19 + 24) = 0;
  *(v19 + 32) = 3;
  *(v19 + 36) = 257;
  v20 = *(v2 + 48);
  v21 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "cos", 3uLL);
  *(v21 + 8) = 1;
  *(v21 + 16) = AGCLLVMAirBuiltins::buildCos;
  *(v21 + 24) = 0;
  *(v21 + 32) = 3;
  *(v21 + 36) = v20;
  *(v21 + 37) = 1;
  v22 = *(v2 + 48);
  v23 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sin", 3uLL);
  *(v23 + 8) = 1;
  *(v23 + 16) = AGCLLVMAirBuiltins::buildSin;
  *(v23 + 24) = 0;
  *(v23 + 32) = 3;
  *(v23 + 36) = v22;
  *(v23 + 37) = 1;
  v24 = *(v2 + 48);
  v25 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "tan", 3uLL);
  *(v25 + 8) = 1;
  *(v25 + 16) = AGCLLVMAirBuiltins::buildTan;
  *(v25 + 24) = 0;
  *(v25 + 32) = 3;
  *(v25 + 36) = v24;
  *(v25 + 37) = 1;
  v26 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sincos", 6uLL);
  *(v26 + 8) = 1;
  *(v26 + 16) = AGCLLVMAirBuiltins::buildMetalSinCos;
  *(v26 + 24) = 0;
  *(v26 + 32) = 5;
  *(v26 + 36) = 0;
  v27 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rint", 4uLL);
  *(v27 + 8) = 1;
  *(v27 + 16) = AGCLLVMAirBuiltins::buildRNE;
  *(v27 + 24) = 0;
  *(v27 + 32) = 3;
  *(v27 + 36) = 257;
  v28 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "round", 5uLL);
  *(v28 + 8) = 1;
  *(v28 + 16) = AGCLLVMAirBuiltins::buildRound;
  *(v28 + 24) = 0;
  *(v28 + 32) = 3;
  *(v28 + 36) = 257;
  v29 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmod", 4uLL);
  *(v29 + 8) = 1;
  *(v29 + 16) = AGCLLVMAirBuiltins::buildFmod;
  *(v29 + 24) = 0;
  *(v29 + 32) = 5;
  *(v29 + 36) = 1;
  v30 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mod", 3uLL);
  *(v30 + 8) = 1;
  *(v30 + 16) = AGCLLVMAirBuiltins::buildMod;
  *(v30 + 24) = 0;
  *(v30 + 32) = 5;
  *(v30 + 36) = 1;
  v31 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "ceil", 4uLL);
  *(v31 + 8) = 1;
  *(v31 + 16) = AGCLLVMAirBuiltins::buildCeil;
  *(v31 + 24) = 0;
  *(v31 + 32) = 3;
  *(v31 + 36) = 256;
  v32 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "exp", 3uLL);
  *(v32 + 8) = 1;
  *(v32 + 16) = AGCLLVMTargetBuilder::CreateExp;
  *(v32 + 24) = 0;
  *(v32 + 32) = 3;
  *(v32 + 36) = 1;
  v33 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "exp2", 4uLL);
  *(v33 + 8) = 1;
  *(v33 + 16) = AGCLLVMTargetBuilder::CreateExp2;
  *(v33 + 24) = 0;
  *(v33 + 32) = 3;
  *(v33 + 36) = 0;
  v34 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fabs", 4uLL);
  *(v34 + 8) = 1;
  *(v34 + 16) = AGCLLVMTargetBuilder::CreateFabs;
  *(v34 + 24) = 0;
  *(v34 + 32) = 3;
  *(v34 + 36) = 0;
  v35 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "floor", 5uLL);
  *(v35 + 8) = 1;
  *(v35 + 16) = AGCLLVMTargetBuilder::CreateFloor;
  *(v35 + 24) = 0;
  *(v35 + 32) = 3;
  *(v35 + 36) = 0;
  v36 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fma", 3uLL);
  *(v36 + 8) = 1;
  *(v36 + 16) = AGCLLVMBuilder::buildFma;
  *(v36 + 24) = 0;
  *(v36 + 32) = 7;
  *(v36 + 36) = 0;
  v37 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmax", 4uLL);
  *(v37 + 8) = 1;
  *(v37 + 16) = AGCLLVMAirBuiltins::buildNanFMax;
  *(v37 + 24) = 0;
  *(v37 + 32) = 5;
  *(v37 + 36) = 256;
  v38 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmin", 4uLL);
  *(v38 + 8) = 1;
  *(v38 + 16) = AGCLLVMAirBuiltins::buildNanFMin;
  *(v38 + 24) = 0;
  *(v38 + 32) = 5;
  *(v38 + 36) = 256;
  v39 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fract", 5uLL);
  *(v39 + 8) = 1;
  *(v39 + 16) = AGCLLVMAirBuiltins::buildFract;
  *(v39 + 24) = 0;
  *(v39 + 32) = 3;
  *(v39 + 36) = 0;
  v40 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "ldexp", 5uLL);
  *(v40 + 8) = 1;
  *(v40 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v40 + 24) = 0;
  *(v40 + 32) = 9;
  *(v40 + 36) = 256;
  v41 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "log", 3uLL);
  *(v41 + 8) = 1;
  *(v41 + 16) = AGCLLVMTargetBuilder::CreateLog;
  *(v41 + 24) = 0;
  *(v41 + 32) = 3;
  *(v41 + 36) = 1;
  v42 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "log2", 4uLL);
  *(v42 + 8) = 1;
  *(v42 + 16) = AGCLLVMTargetBuilder::CreateLog2;
  *(v42 + 24) = 0;
  *(v42 + 32) = 3;
  *(v42 + 36) = 0;
  v43 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad", 3uLL);
  *(v43 + 8) = 1;
  *(v43 + 16) = AGCLLVMAirBuiltins::buildFmad;
  *(v43 + 24) = 0;
  *(v43 + 32) = 7;
  *(v43 + 36) = 0;
  v44 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rsqrt", 5uLL);
  *(v44 + 8) = 1;
  *(v44 + 16) = AGCLLVMTargetBuilder::CreateRsqrt;
  *(v44 + 24) = 0;
  *(v44 + 32) = 3;
  *(v44 + 36) = 256;
  v45 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sqrt", 4uLL);
  *(v45 + 8) = 1;
  *(v45 + 16) = AGCLLVMTargetBuilder::CreateSqrt;
  *(v45 + 24) = 0;
  *(v45 + 32) = 3;
  *(v45 + 36) = 0;
  v46 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "trunc", 5uLL);
  *(v46 + 8) = 1;
  *(v46 + 16) = AGCLLVMAirBuiltins::buildTrunc;
  *(v46 + 24) = 0;
  *(v46 + 32) = 3;
  *(v46 + 36) = 256;
  v47 = *(v2 + 49);
  v48 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_acos", 9uLL);
  *(v48 + 8) = 2;
  *(v48 + 16) = AGCLLVMAirBuiltins::buildArccos;
  *(v48 + 24) = 0;
  *(v48 + 32) = 3;
  *(v48 + 36) = v47;
  *(v48 + 37) = 1;
  v49 = *(v2 + 50);
  v50 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_asin", 9uLL);
  *(v50 + 8) = 2;
  *(v50 + 16) = AGCLLVMAirBuiltins::buildArcsin;
  *(v50 + 24) = 0;
  *(v50 + 32) = 3;
  *(v50 + 36) = v49;
  *(v50 + 37) = 1;
  v51 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_atan", 9uLL);
  *(v51 + 8) = 2;
  *(v51 + 16) = AGCLLVMAirBuiltins::buildArctan;
  *(v51 + 24) = 0;
  *(v51 + 32) = 3;
  *(v51 + 36) = 257;
  v52 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_atan2", 0xAuLL);
  *(v52 + 8) = 2;
  *(v52 + 16) = AGCLLVMAirBuiltins::buildArctan2;
  *(v52 + 24) = 0;
  *(v52 + 32) = 5;
  *(v52 + 36) = 257;
  v53 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_exp10", 0xAuLL);
  *(v53 + 8) = 2;
  *(v53 + 16) = AGCLLVMAirBuiltins::buildExp10;
  *(v53 + 24) = 0;
  *(v53 + 32) = 3;
  *(v53 + 36) = 0;
  v54 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_log10", 0xAuLL);
  *(v54 + 8) = 2;
  *(v54 + 16) = AGCLLVMAirBuiltins::buildLog10;
  *(v54 + 24) = 0;
  *(v54 + 32) = 3;
  *(v54 + 36) = 1;
  v55 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_acosh", 0xAuLL);
  *(v55 + 8) = 2;
  *(v55 + 16) = AGCLLVMAirBuiltins::buildArccosh;
  *(v55 + 24) = 0;
  *(v55 + 32) = 3;
  *(v55 + 36) = 1;
  *(v55 + 37) = 1;
  v56 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_asinh", 0xAuLL);
  *(v56 + 8) = 2;
  *(v56 + 16) = AGCLLVMAirBuiltins::buildArcsinh;
  *(v56 + 24) = 0;
  *(v56 + 32) = 3;
  *(v56 + 36) = 1;
  *(v56 + 37) = 1;
  v57 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_atanh", 0xAuLL);
  *(v57 + 8) = 2;
  *(v57 + 16) = AGCLLVMAirBuiltins::buildArctanh;
  *(v57 + 24) = 0;
  *(v57 + 32) = 3;
  *(v57 + 36) = 1;
  *(v57 + 37) = 1;
  v58 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_pow", 8uLL);
  *(v58 + 8) = 2;
  *(v58 + 16) = AGCLLVMAirBuiltins::buildPow;
  *(v58 + 24) = 0;
  *(v58 + 32) = 5;
  *(v58 + 36) = 1;
  *(v58 + 37) = 1;
  v59 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_powr", 9uLL);
  *(v59 + 8) = 2;
  *(v59 + 16) = AGCLLVMAirBuiltins::buildPowr;
  *(v59 + 24) = 0;
  *(v59 + 32) = 5;
  *(v59 + 36) = 1;
  *(v59 + 37) = 1;
  v60 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_cosh", 9uLL);
  *(v60 + 8) = 2;
  *(v60 + 16) = AGCLLVMAirBuiltins::buildCosh;
  *(v60 + 24) = 0;
  *(v60 + 32) = 3;
  *(v60 + 36) = 1;
  *(v60 + 37) = 1;
  v61 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sinh", 9uLL);
  *(v61 + 8) = 2;
  *(v61 + 16) = AGCLLVMAirBuiltins::buildSinh;
  *(v61 + 24) = 0;
  *(v61 + 32) = 3;
  *(v61 + 36) = 1;
  *(v61 + 37) = 1;
  v62 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_tanh", 9uLL);
  *(v62 + 8) = 2;
  *(v62 + 16) = AGCLLVMAirBuiltins::buildTanh;
  *(v62 + 24) = 0;
  *(v62 + 32) = 3;
  *(v62 + 36) = 1;
  *(v62 + 37) = 1;
  v63 = *(v2 + 48);
  v64 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_cos", 8uLL);
  *(v64 + 8) = 2;
  *(v64 + 16) = AGCLLVMAirBuiltins::buildCos;
  *(v64 + 24) = 0;
  *(v64 + 32) = 3;
  *(v64 + 36) = v63;
  *(v64 + 37) = 1;
  v65 = *(v2 + 48);
  v66 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sin", 8uLL);
  *(v66 + 8) = 2;
  *(v66 + 16) = AGCLLVMAirBuiltins::buildSin;
  *(v66 + 24) = 0;
  *(v66 + 32) = 3;
  *(v66 + 36) = v65;
  *(v66 + 37) = 1;
  v67 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_tan", 8uLL);
  *(v67 + 8) = 2;
  *(v67 + 16) = AGCLLVMAirBuiltins::buildTan;
  *(v67 + 24) = 0;
  *(v67 + 32) = 3;
  *(v67 + 36) = 1;
  *(v67 + 37) = 1;
  v68 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sincos", 0xBuLL);
  *(v68 + 8) = 2;
  *(v68 + 16) = AGCLLVMAirBuiltins::buildMetalSinCos;
  *(v68 + 24) = 0;
  *(v68 + 32) = 5;
  *(v68 + 36) = 0;
  v69 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_round", 0xAuLL);
  *(v69 + 8) = 2;
  *(v69 + 16) = AGCLLVMAirBuiltins::buildRound;
  *(v69 + 24) = 0;
  *(v69 + 32) = 3;
  *(v69 + 36) = 1;
  *(v69 + 37) = 1;
  v70 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmod", 9uLL);
  *(v70 + 8) = 2;
  *(v70 + 16) = AGCLLVMAirBuiltins::buildFmod;
  *(v70 + 24) = 0;
  *(v70 + 32) = 5;
  *(v70 + 36) = 1;
  v71 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_mod", 8uLL);
  *(v71 + 8) = 2;
  *(v71 + 16) = AGCLLVMAirBuiltins::buildMod;
  *(v71 + 24) = 0;
  *(v71 + 32) = 5;
  *(v71 + 36) = 1;
  v72 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_exp", 8uLL);
  *(v72 + 8) = 2;
  *(v72 + 16) = AGCLLVMTargetBuilder::CreateExp;
  *(v72 + 24) = 0;
  *(v72 + 32) = 3;
  *(v72 + 36) = 0;
  v73 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_exp2", 9uLL);
  *(v73 + 8) = 2;
  *(v73 + 16) = AGCLLVMTargetBuilder::CreateExp2;
  *(v73 + 24) = 0;
  *(v73 + 32) = 3;
  *(v73 + 36) = 0;
  v74 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_ldexp", 0xAuLL);
  *(v74 + 8) = 2;
  *(v74 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v74 + 24) = 0;
  *(v74 + 32) = 9;
  *(v74 + 36) = 0;
  *(v74 + 37) = 1;
  v75 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_log", 8uLL);
  *(v75 + 8) = 2;
  *(v75 + 16) = AGCLLVMTargetBuilder::CreateLog;
  *(v75 + 24) = 0;
  *(v75 + 32) = 3;
  *(v75 + 36) = 0;
  v76 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_log2", 9uLL);
  *(v76 + 8) = 2;
  *(v76 + 16) = AGCLLVMTargetBuilder::CreateLog2;
  *(v76 + 24) = 0;
  *(v76 + 32) = 3;
  *(v76 + 36) = 0;
  v77 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_rsqrt", 0xAuLL);
  *(v77 + 8) = 2;
  *(v77 + 16) = AGCLLVMTargetBuilder::CreateRsqrt;
  *(v77 + 24) = 0;
  *(v77 + 32) = 3;
  *(v77 + 36) = 0;
  *(v77 + 37) = 1;
  v78 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sqrt", 9uLL);
  *(v78 + 8) = 2;
  *(v78 + 16) = AGCLLVMTargetBuilder::CreateSqrt;
  *(v78 + 24) = 0;
  *(v78 + 32) = 3;
  *(v78 + 36) = 0;
  v79 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_ceil", 9uLL);
  *(v79 + 8) = 2;
  *(v79 + 16) = AGCLLVMAirBuiltins::buildCeil;
  *(v79 + 24) = 0;
  *(v79 + 32) = 3;
  *(v79 + 36) = 0;
  *(v79 + 37) = 1;
  v80 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fabs", 9uLL);
  *(v80 + 8) = 2;
  *(v80 + 16) = AGCLLVMTargetBuilder::CreateFabs;
  *(v80 + 24) = 0;
  *(v80 + 32) = 3;
  *(v80 + 36) = 0;
  v81 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_floor", 0xAuLL);
  *(v81 + 8) = 2;
  *(v81 + 16) = AGCLLVMTargetBuilder::CreateFloor;
  *(v81 + 24) = 0;
  *(v81 + 32) = 3;
  *(v81 + 36) = 0;
  v82 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fract", 0xAuLL);
  *(v82 + 8) = 2;
  *(v82 + 16) = AGCLLVMAirBuiltins::buildFastFract;
  *(v82 + 24) = 0;
  *(v82 + 32) = 3;
  *(v82 + 36) = 0;
  v83 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_rint", 9uLL);
  *(v83 + 8) = 2;
  *(v83 + 16) = AGCLLVMAirBuiltins::buildRNE;
  *(v83 + 24) = 0;
  *(v83 + 32) = 3;
  *(v83 + 36) = 1;
  *(v83 + 37) = 1;
  v84 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_trunc", 0xAuLL);
  *(v84 + 8) = 2;
  *(v84 + 16) = AGCLLVMAirBuiltins::buildTrunc;
  *(v84 + 24) = 0;
  *(v84 + 32) = 3;
  *(v84 + 36) = 0;
  *(v84 + 37) = 1;
  v85 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmax", 9uLL);
  *(v85 + 8) = 2;
  *(v85 + 16) = AGCLLVMAirBuiltins::buildFastFMax;
  *(v85 + 24) = 0;
  *(v85 + 32) = 5;
  *(v85 + 36) = 0;
  *(v85 + 37) = 1;
  v86 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmin", 9uLL);
  *(v86 + 8) = 2;
  *(v86 + 16) = AGCLLVMAirBuiltins::buildFastFMin;
  *(v86 + 24) = 0;
  *(v86 + 32) = 5;
  *(v86 + 36) = 0;
  *(v86 + 37) = 1;
  v87 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_expand", 0xCuLL);
  *(v87 + 8) = 1;
  *(v87 + 16) = AGCLLVMAirBuiltins::buildGExp8;
  *(v87 + 24) = 0;
  *(v87 + 32) = 3;
  *(v87 + 36) = 0;
  v88 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_compress", 0xEuLL);
  *(v88 + 8) = 1;
  *(v88 + 16) = AGCLLVMAirBuiltins::buildGCmp8;
  *(v88 + 24) = 0;
  *(v88 + 32) = 3;
  *(v88 + 36) = 0;
  v89 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_expand_xr", 0xFuLL);
  *(v89 + 8) = 1;
  *(v89 + 16) = AGCLLVMAirBuiltins::buildGExp10;
  *(v89 + 24) = 0;
  *(v89 + 32) = 3;
  *(v89 + 36) = 0;
  v90 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_compress_xr", 0x11uLL);
  *(v90 + 8) = 1;
  *(v90 + 16) = AGCLLVMAirBuiltins::buildGCmp10;
  *(v90 + 24) = 0;
  *(v90 + 32) = 3;
  *(v90 + 36) = 0;
  v91 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "convert", 7uLL);
  *(v91 + 8) = 1;
  *(v91 + 16) = AGCLLVMAirBuiltins::buildConvert;
  *(v91 + 24) = 0;
  *(v91 + 32) = 9;
  *(v91 + 36) = 0;
  *(v91 + 37) = 1;
  v92 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "pack", 4uLL);
  *(v92 + 8) = 1;
  *(v92 + 16) = AGCLLVMAirBuiltins::buildPack;
  *(v92 + 24) = 0;
  *(v92 + 32) = 9;
  *(v92 + 36) = 0;
  v93 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "unpack", 6uLL);
  *(v93 + 8) = 1;
  *(v93 + 16) = AGCLLVMAirBuiltins::buildUnpack;
  *(v93 + 24) = 0;
  *(v93 + 32) = 9;
  *(v93 + 36) = 0;
  v94 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "abs", 3uLL);
  *(v94 + 8) = 1;
  *(v94 + 16) = AGCLLVMAirBuiltins::buildAbs;
  *(v94 + 24) = 0;
  *(v94 + 32) = 9;
  *(v94 + 36) = 0;
  *(v94 + 37) = 1;
  v95 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "abs_diff", 8uLL);
  *(v95 + 8) = 1;
  *(v95 + 16) = AGCLLVMAirBuiltins::buildAbsDiff;
  *(v95 + 24) = 0;
  *(v95 + 32) = 9;
  *(v95 + 36) = 0;
  *(v95 + 37) = 1;
  v96 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "add_sat", 7uLL);
  *(v96 + 8) = 1;
  *(v96 + 16) = AGCLLVMAirBuiltins::buildAddSat;
  *(v96 + 24) = 0;
  *(v96 + 32) = 9;
  *(v96 + 36) = 0;
  *(v96 + 37) = 1;
  v97 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sub_sat", 7uLL);
  *(v97 + 8) = 1;
  *(v97 + 16) = AGCLLVMAirBuiltins::buildSubSat;
  *(v97 + 24) = 0;
  *(v97 + 32) = 9;
  *(v97 + 36) = 0;
  *(v97 + 37) = 1;
  v98 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "hadd", 4uLL);
  *(v98 + 8) = 1;
  *(v98 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v98 + 24) = 0;
  *(v98 + 32) = 9;
  *(v98 + 36) = 0;
  *(v98 + 37) = 1;
  v99 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rhadd", 5uLL);
  *(v99 + 8) = 1;
  *(v99 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v99 + 24) = 0;
  *(v99 + 32) = 9;
  *(v99 + 36) = 0;
  *(v99 + 37) = 1;
  v100 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "clamp", 5uLL);
  *(v100 + 8) = 1;
  *(v100 + 16) = AGCLLVMAirBuiltins::buildClamp;
  *(v100 + 24) = 0;
  *(v100 + 32) = 9;
  *(v100 + 36) = 0;
  *(v100 + 37) = 1;
  v101 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "clz", 3uLL);
  *(v101 + 8) = 1;
  *(v101 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v101 + 24) = 0;
  *(v101 + 32) = 9;
  *(v101 + 36) = 0;
  *(v101 + 37) = 1;
  v102 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "ctz", 3uLL);
  *(v102 + 8) = 1;
  *(v102 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v102 + 24) = 0;
  *(v102 + 32) = 9;
  *(v102 + 36) = 0;
  *(v102 + 37) = 1;
  v103 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad_hi", 6uLL);
  *(v103 + 8) = 1;
  *(v103 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v103 + 24) = 0;
  *(v103 + 32) = 9;
  *(v103 + 36) = 0;
  *(v103 + 37) = 1;
  v104 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad_sat", 7uLL);
  *(v104 + 8) = 1;
  *(v104 + 16) = AGCLLVMAirBuiltins::buildMadSat;
  *(v104 + 24) = 0;
  *(v104 + 32) = 9;
  *(v104 + 36) = 0;
  *(v104 + 37) = 1;
  v105 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "max", 3uLL);
  *(v105 + 8) = 1;
  *(v105 + 16) = AGCLLVMAirBuiltins::buildIMax;
  *(v105 + 24) = 0;
  *(v105 + 32) = 9;
  *(v105 + 36) = 0;
  *(v105 + 37) = 1;
  v106 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "min", 3uLL);
  *(v106 + 8) = 1;
  *(v106 + 16) = AGCLLVMAirBuiltins::buildIMin;
  *(v106 + 24) = 0;
  *(v106 + 32) = 9;
  *(v106 + 36) = 0;
  *(v106 + 37) = 1;
  v107 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mul_hi", 6uLL);
  *(v107 + 8) = 1;
  *(v107 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v107 + 24) = 0;
  *(v107 + 32) = 9;
  *(v107 + 36) = 0;
  *(v107 + 37) = 1;
  v108 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rotate", 6uLL);
  *(v108 + 8) = 1;
  *(v108 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v108 + 24) = 0;
  *(v108 + 32) = 9;
  *(v108 + 36) = 0;
  *(v108 + 37) = 1;
  v109 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "popcount", 8uLL);
  *(v109 + 8) = 1;
  *(v109 + 16) = AGCLLVMAirBuiltins::buildPopCount;
  *(v109 + 24) = 0;
  *(v109 + 32) = 3;
  *(v109 + 36) = 0;
  *(v109 + 37) = 1;
  v110 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "extract_bits", 0xCuLL);
  *(v110 + 8) = 1;
  *(v110 + 16) = AGCLLVMAirBuiltins::buildExtractBits;
  *(v110 + 24) = 0;
  *(v110 + 32) = 9;
  *(v110 + 36) = 0;
  *(v110 + 37) = 1;
  v111 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "insert_bits", 0xBuLL);
  *(v111 + 8) = 1;
  *(v111 + 16) = AGCLLVMAirBuiltins::buildInsertBits;
  *(v111 + 24) = 0;
  *(v111 + 32) = 9;
  *(v111 + 36) = 0;
  *(v111 + 37) = 1;
  v112 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "reverse_bits", 0xCuLL);
  *(v112 + 8) = 1;
  *(v112 + 16) = AGCLLVMAirBuiltins::buildReverseBits;
  *(v112 + 24) = 0;
  *(v112 + 32) = 3;
  *(v112 + 36) = 0;
  *(v112 + 37) = 1;
  v113 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "any", 3uLL);
  *(v113 + 8) = 1;
  *(v113 + 16) = AGCLLVMAirBuiltins::buildAny;
  *(v113 + 24) = 0;
  *(v113 + 32) = 3;
  *(v113 + 36) = 0;
  v114 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "all", 3uLL);
  *(v114 + 8) = 1;
  *(v114 + 16) = AGCLLVMAirBuiltins::buildAll;
  *(v114 + 24) = 0;
  *(v114 + 32) = 3;
  *(v114 + 36) = 0;
  v115 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "any_msb", 7uLL);
  *(v115 + 8) = 1;
  *(v115 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v115 + 24) = 0;
  *(v115 + 32) = 9;
  *(v115 + 36) = 0;
  *(v115 + 37) = 1;
  v116 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "all_msb", 7uLL);
  *(v116 + 8) = 1;
  *(v116 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v116 + 24) = 0;
  *(v116 + 32) = 9;
  *(v116 + 36) = 0;
  *(v116 + 37) = 1;
  v117 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "saturate", 8uLL);
  *(v117 + 8) = 1;
  *(v117 + 16) = AGCLLVMAirBuiltins::buildNanFSaturate;
  *(v117 + 24) = 0;
  *(v117 + 32) = 3;
  *(v117 + 36) = 0;
  *(v117 + 37) = 1;
  v118 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mix", 3uLL);
  *(v118 + 8) = 1;
  *(v118 + 16) = AGCLLVMAirBuiltins::buildMix;
  *(v118 + 24) = 0;
  *(v118 + 32) = 8;
  *(v118 + 36) = 0;
  *(v118 + 37) = 1;
  v119 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sign", 4uLL);
  *(v119 + 8) = 1;
  *(v119 + 16) = AGCLLVMAirBuiltins::buildSign;
  *(v119 + 24) = 0;
  *(v119 + 32) = 3;
  *(v119 + 36) = 0;
  *(v119 + 37) = 1;
  v120 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "dot", 3uLL);
  *(v120 + 8) = 1;
  *(v120 + 16) = AGCLLVMAirBuiltins::buildDot;
  *(v120 + 24) = 0;
  *(v120 + 32) = 6;
  *(v120 + 36) = 0;
  v121 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_clamp", 0xAuLL);
  *(v121 + 8) = 2;
  *(v121 + 16) = AGCLLVMAirBuiltins::buildFastFClamp;
  *(v121 + 24) = 0;
  *(v121 + 32) = 7;
  *(v121 + 36) = 0;
  *(v121 + 37) = 1;
  v122 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_saturate", 0xDuLL);
  *(v122 + 8) = 2;
  *(v122 + 16) = AGCLLVMAirBuiltins::buildFastFSaturate;
  *(v122 + 24) = 0;
  *(v122 + 32) = 3;
  *(v122 + 36) = 0;
  *(v122 + 37) = 1;
  v123 = *(v2 + 51);
  v124 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "dfdx", 4uLL);
  *(v124 + 8) = 1;
  *(v124 + 16) = AGCLLVMAirBuiltins::buildDfdx;
  *(v124 + 24) = 0;
  *(v124 + 32) = 3;
  *(v124 + 36) = v123;
  *(v124 + 37) = 1;
  v125 = *(v2 + 51);
  v126 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "dfdy", 4uLL);
  *(v126 + 8) = 1;
  *(v126 + 16) = AGCLLVMAirBuiltins::buildDfdy;
  *(v126 + 24) = 0;
  *(v126 + 32) = 3;
  *(v126 + 36) = v125;
  *(v126 + 37) = 1;
  LOBYTE(v2) = *(v2 + 51);
  v127 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fwidth", 6uLL);
  *(v127 + 8) = 1;
  *(v127 + 16) = AGCLLVMAirBuiltins::buildWidth;
  *(v127 + 24) = 0;
  *(v127 + 32) = 3;
  *(v127 + 36) = v2;
  *(v127 + 37) = 1;
  v128 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atomic", 6uLL);
  *(v128 + 8) = 1;
  *(v128 + 16) = AGCLLVMAirBuiltins::buildAtomic;
  *(v128 + 24) = 0;
  *(v128 + 32) = 9;
  *(v128 + 36) = 0;
  v129 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "assert", 6uLL);
  *(v129 + 8) = 1;
  *(v129 + 16) = AGCLLVMAirBuiltins::buildAssert;
  *(v129 + 24) = 0;
  *(v129 + 32) = 1;
  *(v129 + 36) = 0;
  v130 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_simd_width", 0xEuLL);
  *(v130 + 8) = 1;
  *(v130 + 16) = AGCLLVMAirBuiltins::buildSimdWidth;
  *(v130 + 24) = 0;
  *(v130 + 32) = 9;
  *(v130 + 36) = 0;
  v131 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_simdgroup_size", 0x12uLL);
  *(v131 + 8) = 1;
  *(v131 + 16) = AGCLLVMAirBuiltins::buildSimdWidth;
  *(v131 + 24) = 0;
  *(v131 + 32) = 9;
  *(v131 + 36) = 0;
  v132 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_thread_execution_width", 0x1AuLL);
  *(v132 + 8) = 1;
  *(v132 + 16) = AGCLLVMAirBuiltins::buildThreadExecutionWidth;
  *(v132 + 24) = 0;
  *(v132 + 32) = 9;
  *(v132 + 36) = 0;
  v133 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "simdgroup", 9uLL);
  *(v133 + 8) = 1;
  *(v133 + 16) = AGCLLVMAirBuiltins::buildSimdBarrier;
  *(v133 + 24) = 0;
  *(v133 + 32) = 9;
  *(v133 + 36) = 0;
  v134 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "is_uniform", 0xAuLL);
  *(v134 + 8) = 1;
  *(v134 + 16) = AGCLLVMAirBuiltins::replaceIsUniform;
  *(v134 + 24) = 0;
  *(v134 + 32) = 12;
  *(v134 + 36) = 0;
  v135 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mul24", 5uLL);
  *(v135 + 8) = 1;
  *(v135 + 16) = AGCLLVMAirBuiltins::buildIMul24;
  *(v135 + 24) = 0;
  *(v135 + 32) = 9;
  *(v135 + 36) = 0;
  *(v135 + 37) = 1;
  v136 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad24", 5uLL);
  *(v136 + 8) = 1;
  *(v136 + 16) = AGCLLVMAirBuiltins::buildIMad24;
  *(v136 + 24) = 0;
  *(v136 + 32) = 9;
  *(v136 + 36) = 0;
  *(v136 + 37) = 1;
  v137 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "min3", 4uLL);
  *(v137 + 8) = 1;
  *(v137 + 16) = AGCLLVMAirBuiltins::buildIMin3;
  *(v137 + 24) = 0;
  *(v137 + 32) = 9;
  *(v137 + 36) = 0;
  *(v137 + 37) = 1;
  v138 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmin3", 5uLL);
  *(v138 + 8) = 1;
  *(v138 + 16) = AGCLLVMAirBuiltins::buildFMin3;
  *(v138 + 24) = 0;
  *(v138 + 32) = 9;
  *(v138 + 36) = 0;
  *(v138 + 37) = 1;
  v139 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmin3", 0xAuLL);
  *(v139 + 8) = 2;
  *(v139 + 16) = AGCLLVMAirBuiltins::buildFastFMin3;
  *(v139 + 24) = 0;
  *(v139 + 32) = 9;
  *(v139 + 36) = 0;
  *(v139 + 37) = 1;
  v140 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "max3", 4uLL);
  *(v140 + 8) = 1;
  *(v140 + 16) = AGCLLVMAirBuiltins::buildIMax3;
  *(v140 + 24) = 0;
  *(v140 + 32) = 9;
  *(v140 + 36) = 0;
  *(v140 + 37) = 1;
  v141 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmax3", 5uLL);
  *(v141 + 8) = 1;
  *(v141 + 16) = AGCLLVMAirBuiltins::buildFMax3;
  *(v141 + 24) = 0;
  *(v141 + 32) = 9;
  *(v141 + 36) = 0;
  *(v141 + 37) = 1;
  v142 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmax3", 0xAuLL);
  *(v142 + 8) = 2;
  *(v142 + 16) = AGCLLVMAirBuiltins::buildFastFMax3;
  *(v142 + 24) = 0;
  *(v142 + 32) = 9;
  *(v142 + 36) = 0;
  *(v142 + 37) = 1;
  v143 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "median3", 7uLL);
  *(v143 + 8) = 1;
  *(v143 + 16) = AGCLLVMAirBuiltins::buildIMedian3;
  *(v143 + 24) = 0;
  *(v143 + 32) = 9;
  *(v143 + 36) = 0;
  *(v143 + 37) = 1;
  v144 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmedian3", 8uLL);
  *(v144 + 8) = 1;
  *(v144 + 16) = AGCLLVMAirBuiltins::buildFMedian3;
  *(v144 + 24) = 0;
  *(v144 + 32) = 9;
  *(v144 + 36) = 0;
  *(v144 + 37) = 1;
  v145 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmedian3", 0xDuLL);
  *(v145 + 8) = 2;
  *(v145 + 16) = AGCLLVMAirBuiltins::buildFastFMedian3;
  *(v145 + 24) = 0;
  *(v145 + 32) = 9;
  *(v145 + 36) = 0;
  *(v145 + 37) = 1;
  v146 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "projective_coordinates", 0x16uLL);
  *(v146 + 8) = 1;
  *(v146 + 16) = AGCLLVMAirBuiltins::buildProjectiveCoordinates;
  *(v146 + 24) = 0;
  *(v146 + 32) = 3;
  *(v146 + 36) = 0;
  v147 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_compute_pipeline_state", 0x2CuLL);
  *(v147 + 8) = 1;
  *(v147 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v147 + 24) = 0;
  *(v147 + 32) = 3;
  *(v147 + 36) = 0;
  *(v147 + 37) = 1;
  v148 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_render_pipeline_state", 0x2BuLL);
  *(v148 + 8) = 1;
  *(v148 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v148 + 24) = 0;
  *(v148 + 32) = 3;
  *(v148 + 36) = 0;
  *(v148 + 37) = 1;
  v149 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_command_buffer", 0x24uLL);
  *(v149 + 8) = 1;
  *(v149 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v149 + 24) = 0;
  *(v149 + 32) = 3;
  *(v149 + 36) = 0;
  *(v149 + 37) = 1;
  v150 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_visible_function_table", 0x2CuLL);
  *(v150 + 8) = 1;
  *(v150 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v150 + 24) = 0;
  *(v150 + 32) = 3;
  *(v150 + 36) = 0;
  *(v150 + 37) = 1;
  v151 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_depth_stencil_state", 0x29uLL);
  *(v151 + 8) = 1;
  *(v151 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v151 + 24) = 0;
  *(v151 + 32) = 3;
  *(v151 + 36) = 0;
  *(v151 + 37) = 1;
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_threads_per_simdgroup", 0x19uLL);
  v153 = *result;
  *(v153 + 8) = 1;
  *(v153 + 16) = AGCLLVMAirBuiltins::buildThreadExecutionWidth;
  *(v153 + 24) = 0;
  *(v153 + 32) = 9;
  *(v153 + 36) = 0;
  return result;
}

uint64_t *AGCLLVMGen3TargetConfig::initializeAirBuiltinsMap(AGCLLVMGen3TargetConfig *this, AGCLLVMAirBuiltinsMap *a2)
{
  AGCLLVMAirBuiltinsMap::insertBuiltinReplacementsBase(a2, this);
  v3 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_broadcast", 0xEuLL);
  *(v3 + 8) = 1;
  *(v3 + 16) = AGCLLVMAirBuiltins::buildQuadBroadcast;
  *(v3 + 24) = 0;
  *(v3 + 32) = 5;
  *(v3 + 36) = 0;
  v4 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle", 0xCuLL);
  *(v4 + 8) = 1;
  *(v4 + 16) = AGCLLVMAirBuiltins::buildQuadShuffle;
  *(v4 + 24) = 0;
  *(v4 + 32) = 5;
  *(v4 + 36) = 0;
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_up", 0xFuLL);
  *(v5 + 8) = 1;
  *(v5 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleUp;
  *(v5 + 24) = 0;
  *(v5 + 32) = 5;
  *(v5 + 36) = 0;
  v6 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_down", 0x11uLL);
  *(v6 + 8) = 1;
  *(v6 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleDown;
  *(v6 + 24) = 0;
  *(v6 + 32) = 5;
  *(v6 + 36) = 0;
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_xor", 0x10uLL);
  *(v7 + 8) = 1;
  *(v7 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleXor;
  *(v7 + 24) = 0;
  *(v7 + 32) = 5;
  *(v7 + 36) = 0;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_rotate_up", 0x16uLL);
  *(v8 + 8) = 1;
  *(v8 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleRotateUp;
  *(v8 + 24) = 0;
  *(v8 + 32) = 5;
  *(v8 + 36) = 0;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_rotate_down", 0x18uLL);
  *(v9 + 8) = 1;
  *(v9 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleRotateDown;
  *(v9 + 24) = 0;
  *(v9 + 32) = 5;
  *(v9 + 36) = 0;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "wg", 2uLL);
  *(v10 + 8) = 1;
  *(v10 + 16) = AGCLLVMAirBuiltins::buildWGBarrier;
  *(v10 + 24) = 0;
  *(v10 + 32) = 9;
  *(v10 + 36) = 0;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_quad_element", 0x10uLL);
  *(v11 + 8) = 1;
  *(v11 + 16) = AGCLLVMAirBuiltins::buildQuadElement;
  *(v11 + 24) = 0;
  *(v11 + 32) = 9;
  *(v11 + 36) = 0;
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_threads_per_simdgroup", 0x19uLL);
  v13 = *result;
  *(v13 + 8) = 1;
  *(v13 + 16) = AGCLLVMAirBuiltins::buildThreadExecutionWidth;
  *(v13 + 24) = 0;
  *(v13 + 32) = 9;
  *(v13 + 36) = 0;
  return result;
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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

  v10 = MEMORY[0x20F330650](a3 + 41, 8);
  v11 = v10;
  v12 = v10 + 40;
  if (a3)
  {
    memcpy((v10 + 40), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0;
  *(v11 + 32) = 0;
  *(v11 + 36) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::IRBuilderBase::CreateFPToSI(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 42, a2, a3, a4);
}

uint64_t llvm::IRBuilderBase::CreateUIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 43, a2, a3, a4);
}

llvm::Value *AGCLLVMTargetBuilder::CreateFloor(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.floor");
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

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::$_0 &&>>(uint64_t ***a1)
{
  v44 = 0;
  v58[8] = *MEMORY[0x277D85DE8];
  v43 = ***a1;
  v56 = v58;
  v57 = xmmword_20E70C500;
  do
  {
    v1 = 0;
    do
    {
      v38 = v1;
      v39 = 0;
      v2 = off_277E20200[v1];
      v45 = *v2;
      __s = v2 + 2;
      v42 = 0x847uLL >> v1;
      do
      {
        if (*v2 == 102)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
          if (*off_277E20200[v39] != 102)
          {
            v36 = 0;
            v3 = 1;
            goto LABEL_9;
          }
        }

        v36 = 1;
        v3 = 4;
LABEL_9:
        v41 = v3;
        v4 = 0;
        v6 = v1 > 2 && v39 > 2;
        v40 = v6;
        do
        {
          if (((v4 != 0) & ~v40) == 0)
          {
            v7 = 0;
            v8 = 0;
            v48 = byte_20E70CF8C[v38];
            v9 = off_277E20200[v39];
            v47 = byte_20E70CF8C[v39];
            v10 = v37;
            if ((v36 & (v4 == 0)) == 0)
            {
              v10 = v4;
            }

            v46 = v10;
            v50 = v9 + 2;
            v11 = 1;
            while (1)
            {
              LOBYTE(v54) = 0;
              memset(__p, 0, sizeof(__p));
              v12 = *v2;
              BYTE1(v52) = v12 == 102;
              HIBYTE(v52) = *v2 == 115;
              BYTE1(v54) = v2[2] == 98;
              BYTE3(v54) = v48;
              v13 = *v9;
              LOBYTE(v52) = v13 == 102;
              BYTE2(v52) = *v9 == 115;
              BYTE2(v54) = v47;
              HIDWORD(v54) = v46;
              v55 = v7 & 1;
              if (*(*(v43 + 464) + 1947) == 1 && (((v13 == 102) & (0x847uLL >> v39)) != 0 || ((v12 == 102) & v42) != 0))
              {
                std::string::basic_string[abi:nn200100]<0>(&v51, v50);
                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }

                __p[0] = v51;
                std::string::basic_string[abi:nn200100]<0>(&v51, __s);
                if (SHIBYTE(__p[1].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[1].__r_.__value_.__l.__data_);
                }

                __p[1] = v51;
                LOBYTE(v54) = 1;
              }

              *&v57 = 0;
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v56, *v2);
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v56, v2[1]);
              v14 = *(&off_277E201D0 + v44);
              v15 = strlen(v14);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v56, v14, &v14[v15]);
              v16 = strlen(__s);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v56, __s, &__s[v16]);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v56, ".", "");
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v56, *v9);
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v56, v9[1]);
              v17 = strlen(v14);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v56, v14, &v14[v17]);
              v18 = strlen(v50);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v56, v50, &v50[v18]);
              v19 = v4;
              v20 = strlen(*(&off_277E20278 + v4));
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v56, *(&off_277E20278 + v4), *(&off_277E20278 + v4) + v20);
              v21 = strlen(*(&off_277E202A8 + v8));
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v56, *(&off_277E202A8 + v8), *(&off_277E202A8 + v8) + v21);
              v23 = v56;
              v22 = v57;
              v24 = llvm::StringMapImpl::LookupBucketFor();
              v25 = AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map;
              v26 = v24;
              v27 = *(AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map + 8 * v24);
              if (v27 == -8)
              {
                break;
              }

              if (!v27)
              {
                goto LABEL_32;
              }

LABEL_41:
              *(v27 + 8) = v52;
              std::string::operator=((v27 + 16), __p);
              std::string::operator=((v27 + 40), &__p[1]);
              v33 = v55;
              *(v27 + 64) = v54;
              *(v27 + 72) = v33;
              if (SHIBYTE(__p[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[1].__r_.__value_.__l.__data_);
              }

              v4 = v19;
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v34 = (v45 != 102) & v11;
              v7 = 1;
              v8 = 1;
              v11 = 0;
              if ((v34 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            LODWORD(qword_28117E2D8) = qword_28117E2D8 - 1;
LABEL_32:
            v28 = MEMORY[0x20F330650](v22 + 81, 8);
            v29 = v28;
            v30 = v28 + 80;
            if (v22)
            {
              memcpy((v28 + 80), v23, v22);
            }

            *(v30 + v22) = 0;
            *v29 = v22;
            *(v29 + 8) = 0u;
            *(v29 + 24) = 0u;
            *(v29 + 40) = 0u;
            *(v29 + 56) = 0u;
            *(v29 + 72) = 0;
            *(v25 + 8 * v26) = v29;
            ++dword_28117E2D4;
            for (i = (AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map + 8 * llvm::StringMapImpl::RehashTable(&AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map)); ; ++i)
            {
              v27 = *i;
              if (*i && v27 != -8)
              {
                break;
              }
            }

            goto LABEL_41;
          }

LABEL_46:
          ++v4;
        }

        while (v4 != v41);
        v1 = v38;
        ++v39;
      }

      while (v39 != 15);
      v1 = v38 + 1;
    }

    while (v38 != 14);
    ++v44;
  }

  while (v44 != 6);
  if (v56 != v58)
  {
    free(v56);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
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

uint64_t AGCLLVMAirBuiltins::buildClamp(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 == 117)
  {
    v8 = AGCLLVMBuilder::buildICmpSel(a1, *a2, v5, 34);
    v9 = a1;
    v10 = v7;
    v11 = 36;
    goto LABEL_5;
  }

  if (v4 == 115)
  {
    v8 = AGCLLVMBuilder::buildICmpSel(a1, *a2, v5, 38);
    v9 = a1;
    v10 = v7;
    v11 = 40;
LABEL_5:

    return AGCLLVMBuilder::buildICmpSel(v9, v8, v10, v11);
  }

  v13 = *(a1 + 464);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = *v6;
  if ((*(*v6 + 2) & 0xFE) == 0x12)
  {
    v14 = **(v14 + 2);
  }

  v15 = (*(*v13 + 80))(v13, &v16, v6, v5, v7, v14 == *(a1 + 168));
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v15;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMBuilder::getVariableTypeMap(void)::{lambda(llvm::StringMap<ComponentType,llvm::MallocAllocator> &)#1} &,llvm::StringMap<ComponentType,llvm::MallocAllocator> &>>(uint64_t a1)
{
  v1 = *(*a1 + 8);
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i1", 2uLL) + 8) = 2;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "BOOL", 4uLL) + 8) = 2;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i8", 2uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "char", 4uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int8_t", 6uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uchar", 5uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint8_t", 7uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "unsigned char", 0xDuLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i16", 3uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "short", 5uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int16_t", 7uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "ushort", 6uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint16_t", 8uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "unsigned short", 0xEuLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i32", 3uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int", 3uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int32_t", 7uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint", 4uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint32_t", 8uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "unsigned int", 0xCuLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "half", 4uLL) + 8) = 1;
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "float", 5uLL);
  *(*result + 8) = 0;
  return result;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::$_0 &&>>()
{
  v0 = 0;
  v67[8] = *MEMORY[0x277D85DE8];
  __s = "_center";
  v60 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_loc;
  do
  {
    v56 = v0;
    v1 = 0;
    v2 = 1;
    v3 = "_perspective";
    v62 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_mode;
    do
    {
      v58 = v2;
      v4 = 0;
      v57 = v1;
      v5 = ".";
      v63 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps;
      do
      {
        v59 = v4;
        v6 = 0;
        v7 = 1;
        v8 = "f16";
        v9 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type;
        do
        {
          v10 = v6;
          v65 = v67;
          v66 = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, "air.interpolate", "");
          v11 = strlen(__s);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, __s, &__s[v11]);
          v12 = strlen(v3);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v3, &v3[v12]);
          v13 = strlen(v5);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v5, &v5[v13]);
          v14 = strlen(v8);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v8, &v8[v14]);
          v15 = *(v9 + 2);
          v16 = *(v60 + 2);
          v17 = *(v62 + 2);
          v18 = *(v63 + 8);
          if (v16 == 4 || v16 == 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = -1;
          }

          v21 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v65, v66);
          *(v21 + 8) = v16;
          *(v21 + 12) = v17;
          *(v21 + 16) = v15;
          *(v21 + 20) = v18;
          *(v21 + 21) = 0;
          *(v21 + 22) = v20;
          if (v65 != v67)
          {
            free(v65);
          }

          v9 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type)[2 * v7];
          v8 = *v9;
          v6 = 1;
          v7 = 2;
        }

        while ((v10 & 1) == 0);
        v4 = v59 + 1;
        v63 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps)[2 * v59 + 2];
        v5 = *v63;
      }

      while (v59 != 3);
      v62 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_mode)[2 * v58];
      v3 = *v62;
      v1 = 1;
      v2 = 2;
    }

    while ((v57 & 1) == 0);
    v0 = v56 + 1;
    v60 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_loc)[2 * v56 + 2];
    __s = *v60;
  }

  while (v56 != 3);
  v22 = 0;
  v23 = ".";
  v24 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps;
  do
  {
    v25 = 0;
    v26 = 1;
    v27 = "f16";
    v28 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type;
    do
    {
      v29 = v25;
      v65 = v67;
      v66 = xmmword_20E70C500;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, "air.get_vertex_value", "");
      v30 = strlen(v23);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v23, &v23[v30]);
      v31 = strlen(v27);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v27, &v27[v31]);
      v32 = *(v28 + 2);
      v33 = *(v24 + 8);
      v34 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v65, v66);
      *(v34 + 8) = 0x500000000;
      *(v34 + 16) = v32;
      *(v34 + 20) = v33;
      *(v34 + 21) = -256;
      if (v65 != v67)
      {
        free(v65);
      }

      v28 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type)[2 * v26];
      v27 = *v28;
      v25 = 1;
      v26 = 2;
    }

    while ((v29 & 1) == 0);
    ++v22;
    v24 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps)[2 * v22];
    v23 = *v24;
  }

  while (v22 != 4);
  v35 = 0;
  v36 = ".";
  v37 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps;
  do
  {
    v64 = v35;
    v38 = &off_277E1FC30;
    v39 = 3;
    v40 = "i8";
    do
    {
      v65 = v67;
      v66 = xmmword_20E70C500;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, "air.get_vertex_value", "");
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, ".s", "");
      v41 = strlen(v36);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v36, &v36[v41]);
      v42 = strlen(v40);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v40, &v40[v42]);
      v43 = *(v38 - 4);
      v44 = *(v37 + 8);
      v45 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v65, v66);
      *(v45 + 8) = 0x500000000;
      *(v45 + 16) = v43;
      *(v45 + 20) = v44;
      *(v45 + 21) = -256;
      if (v65 != v67)
      {
        free(v65);
      }

      v46 = *v38;
      v38 += 3;
      v40 = v46;
      --v39;
    }

    while (v39);
    v47 = &off_277E1FC90;
    v48 = 4;
    v49 = "i1";
    do
    {
      v65 = v67;
      v66 = xmmword_20E70C500;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, "air.get_vertex_value", "");
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, ".u", "");
      v50 = strlen(v36);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v36, &v36[v50]);
      v51 = strlen(v49);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v65, v49, &v49[v51]);
      v52 = *(v47 - 4);
      v53 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v65, v66);
      *(v53 + 8) = 0x500000000;
      *(v53 + 16) = v52;
      *(v53 + 20) = v44;
      *(v53 + 21) = -256;
      if (v65 != v67)
      {
        free(v65);
      }

      v54 = *v47;
      v47 += 3;
      v49 = v54;
      --v48;
    }

    while (v48);
    v35 = v64 + 1;
    v37 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps)[2 * v64 + 2];
    v36 = *v37;
  }

  while (v64 != 3);
  v55 = *MEMORY[0x277D85DE8];
}

uint64_t *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117E4B0) = qword_28117E4B0 - 1;
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

  v8 = MEMORY[0x20F330650](a2 + 25, 8);
  v9 = v8;
  v10 = v8 + 24;
  if (a2)
  {
    memcpy((v8 + 24), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *(v9 + 16) = 10;
  *(v9 + 20) = 1;
  *(v9 + 22) = -1;
  *i = v9;
  ++dword_28117E4AC;
    ;
  }

  return i;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::$_0 &&>>()
{
  v0 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_sin", 8uLL);
  v1 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v0 + 8), "fast_asin", 9uLL);
  *(v1 + 8) = AGCLLVMAirTrigIdentities::buildNopIdentity;
  *(v1 + 16) = 0;
  v2 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_sin", 8uLL);
  v3 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v2 + 8), "fast_acos", 9uLL);
  *(v3 + 8) = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity;
  *(v3 + 16) = 0;
  v4 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_sin", 8uLL);
  v5 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v4 + 8), "fast_atan", 9uLL);
  *(v5 + 8) = AGCLLVMAirTrigIdentities::buildSinArctan;
  *(v5 + 16) = 0;
  v6 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_cos", 8uLL);
  v7 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v6 + 8), "fast_asin", 9uLL);
  *(v7 + 8) = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity;
  *(v7 + 16) = 0;
  v8 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_cos", 8uLL);
  v9 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v8 + 8), "fast_acos", 9uLL);
  *(v9 + 8) = AGCLLVMAirTrigIdentities::buildNopIdentity;
  *(v9 + 16) = 0;
  v10 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_cos", 8uLL);
  v11 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v10 + 8), "fast_atan", 9uLL);
  *(v11 + 8) = AGCLLVMAirTrigIdentities::buildCosArctan;
  *(v11 + 16) = 0;
  v12 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_tan", 8uLL);
  v13 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v12 + 8), "fast_asin", 9uLL);
  *(v13 + 8) = AGCLLVMAirTrigIdentities::buildTanArcsin;
  *(v13 + 16) = 0;
  v14 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_tan", 8uLL);
  v15 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v14 + 8), "fast_acos", 9uLL);
  *(v15 + 8) = AGCLLVMAirTrigIdentities::buildTanArccos;
  *(v15 + 16) = 0;
  v16 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_tan", 8uLL);
  result = llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v16 + 8), "fast_atan", 9uLL);
  v18 = *result;
  *(v18 + 8) = AGCLLVMAirTrigIdentities::buildNopIdentity;
  *(v18 + 16) = 0;
  return result;
}

uint64_t *llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117E490) = qword_28117E490 - 1;
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

  v8 = MEMORY[0x20F330650](a2 + 41, 8);
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
  ++dword_28117E48C;
    ;
  }

  return i;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildMovmsk(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v23 = *(a2 + 16);
  if (v23)
  {
    llvm::MetadataTracking::track();
  }

  v24 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v22);
  if (v23)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 936);
  v8 = llvm::IntegerType::get();
  v9 = *(a1 + 1624);
  if (v9)
  {
    v10 = strlen(*(a1 + 1624));
  }

  else
  {
    v10 = 0;
  }

  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v9, v10, *(a1 + 144), v8, *(a1 + 192));
  v12 = *(a1 + 192);
  v13 = llvm::ConstantInt::get();
  v19 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v20, (a1 + 8));
  v21 = *(a1 + 104);
  v14 = (*(*a1 + 208))(a1, &v19, v13);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = 257;
  v25[0] = llvm::IRBuilderBase::CreateIntCast((a1 + 8), a3, v8, 1, v17);
  v25[1] = v14;
  v18 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v11 + 24), v11, v25, 2, v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  v13[0] = v14;
  v13[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v13, __src, v13);
  llvm::FunctionType::get();
  v7 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v9 = v8;
  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

llvm::Value *llvm::IRBuilderBase::CreateIntCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, BOOL a4, const llvm::Twine *a5)
{
  IntegerCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      IntegerCast = llvm::CastInst::CreateIntegerCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, IntegerCast, a5);
    }

    else
    {
      IntegerCast = (*(*this[9] + 248))(this[9], a2);
      if (IntegerCast)
      {
        v8 = *(IntegerCast + 16) >= 0x1Cu;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, IntegerCast, a5);
      }
    }
  }

  return IntegerCast;
}

BOOL flatbuffers::Verifier::VerifyTableStart(flatbuffers::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

uint64_t flatbuffers::Verifier::VerifyOffset(flatbuffers::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL flatbuffers::Verifier::VerifyVectorOrString(flatbuffers::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

void *AGCLLVMAGPVertexShader::createAGPVertexShaderObject(uint64_t a1, llvm::Module *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = "air.vertex";
  v15 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v14);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (*(Operand + 8) == 4 && isStringMDNode(*(*(Operand - 8) - 8 * *(*(Operand - 8) + 8)), "air.patch"))
  {
    return (*(**(a1 + 32) + 88))(*(a1 + 32), a1, this, a3, a4, a5);
  }

  v13 = **(a1 + 32);
  if ((*(a3 + 18) & 0x20) == 0)
  {
    return (*(v13 + 72))();
  }

  result = (*(v13 + 80))();
  if (result)
  {
    return (result + *(*result - 24));
  }

  return result;
}

uint64_t AGCLLVMUserVertexShader::AGCLLVMUserVertexShader(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = (a1 + 4096);
  v9 = AGCLLVMUserShader::AGCLLVMUserShader(a1, a2 + 1, a3, "air.vertex", a4, a5, 0);
  v10 = *a2;
  *v9 = *a2;
  *(a1 + *(v10 - 24)) = a2[7];
  *(a1 + *(*a1 - 24) + 1704) = a2[8];
  v11 = *a1;
  LOBYTE(v10) = *(*(a1 + *(*a1 - 24) + 2168) + 1878);
  *(a1 + 4536) = 0;
  *(a1 + 4544) = 0u;
  *(a1 + 4560) = a1 + 4576;
  *(a1 + 4568) = 0x800000000;
  *(a1 + 5088) = 0xFFFFFFFFLL;
  v8[1000] = v10;
  *(a1 + 5228) = 0;
  *(a1 + 5200) = 0u;
  *(a1 + 5184) = 0u;
  *(a1 + 5168) = 0u;
  *(a1 + 5152) = 0u;
  *(a1 + 5136) = 0u;
  *(a1 + 5120) = 0u;
  *(a1 + 5104) = 0u;
  *(a1 + 5210) = 0u;
  v8[1136] = 1;
  *(a1 + 5249) = 0;
  *(a1 + 5240) = 0;
  v8[1181] = 0;
  *(a1 + 5272) = 0;
  v12 = *(a1 + *(v11 - 24) + 4584);
  *(a1 + 5280) = llvm::ConstantInt::get();
  v13 = *(a1 + *(*a1 - 24) + 4584);
  *(a1 + 5288) = llvm::ConstantInt::get();
  *(a1 + 5296) = 0;
  v8[1202] = 0;
  *(a1 + 5300) = 1;
  *(a1 + 5308) = 0;
  *(a1 + 5312) = 0;
  *(a1 + 5396) = 0u;
  *(a1 + 5368) = 0u;
  *(a1 + 5384) = 0u;
  *(a1 + 5336) = 0u;
  *(a1 + 5352) = 0u;
  *(a1 + 5320) = 0u;
  *(a1 + 5416) = 0u;
  *(a1 + 5412) = -1;
  v14 = *(a1 + *(*a1 - 24) + 4584);
  *(a1 + 5432) = llvm::ConstantInt::get();
  v15 = *(a1 + *(*a1 - 24) + 4584);
  *(a1 + 5440) = llvm::ConstantInt::get();
  v16 = -3432;
  do
  {
    v17 = a1 + v16;
    *(v17 + 9712) = 4;
    *(v17 + 9720) = 0uLL;
    v16 += 24;
  }

  while (v16);
  v18 = a3 + 168;
  v19 = *(a3 + 191);
  if (v19 < 0)
  {
    if (*(a3 + 176) != 20)
    {
LABEL_17:
      v25 = 0;
      goto LABEL_18;
    }

    v18 = *v18;
  }

  else if (v19 != 20)
  {
    goto LABEL_17;
  }

  v20 = *v18;
  v21 = *(v18 + 8);
  v22 = *(v18 + 16);
  v25 = v20 == 0x535F786574726556 && v21 == 0x6F72505F65746174 && v22 == 1835102823;
LABEL_18:
  v8[1176] = v25;
  v26 = *a1;
  *(a1 + 9712) = *(a1 + *(*a1 - 24) + 1872);
  *(a1 + 9720) = *(a1 + *(v26 - 24) + 1856);
  *(a1 + 9728) = *(a1 + *(v26 - 24) + 1880);
  *(a1 + 9736) = *(a1 + *(v26 - 24) + 1904);
  *(a1 + 9744) = *(a1 + *(v26 - 24) + 1896);
  *(a1 + 9752) = *(a1 + *(v26 - 24) + 1888);
  *(a1 + 9768) = *(a1 + *(v26 - 24) + 1904);
  *(a1 + 9776) = *(a1 + *(v26 - 24) + 1896);
  *(a1 + 9784) = *(a1 + *(v26 - 24) + 1888);
  return a1;
}

uint64_t AGCLLVMAGPVertexShader::AGCLLVMAGPVertexShader(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v11 = (a1 + 9824);
  v12 = (a1 + 5273);
  v13 = AGCLLVMUserVertexShader::AGCLLVMUserVertexShader(a1, a2 + 1, a3, a4, 0);
  v14 = *a2;
  *v13 = *a2;
  *(a1 + *(v14 - 24)) = a2[10];
  *(a1 + *(*a1 - 24) + 1704) = a2[11];
  *(a1 + 9808) = 0;
  *(a1 + 9792) = 0u;
  *(a1 + 9812) = 16;
  *(a1 + 9824) = 0;
  *(a1 + 9832) = a1 + 9848;
  *(a1 + 9840) = 0x1000000000;
  *(a1 + 10360) = a1 + 10376;
  *(a1 + 10368) = 0x400000000;
  *(a1 + 10417) = 0;
  if (a5 && a6)
  {
    v15 = (a5 + *a5);
    v16 = (a6 + *a6);
    v17 = (v15 - *v15);
    if (*v17 >= 5u && (v18 = v17[2]) != 0)
    {
      v19 = (v15 + v18 + *(v15 + v18));
    }

    else
    {
      v19 = 0;
    }

    v20 = (v16 - *v16);
    v44 = v12;
    v45 = v11;
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = v16 + v21 + *(v16 + v21);
    }

    else
    {
      v22 = 0;
    }

    if (*v19)
    {
      v23 = 0;
      v24 = v22 + 4;
      v25 = (v19 + 2);
      v26 = v19 + 2;
      do
      {
        v27 = *&v24[4 * v23];
        v28 = *(v25 - 1);
        v29 = strlen(&v25[v28]);
        *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((a1 + 9792), v26 + v28, v29) + 8) = v27;
        ++v23;
        ++v26;
        v25 += 4;
      }

      while (v23 < *v19);
    }

    v12 = v44;
    v11 = v45;
    *v45 = (*(a4 + 16) & 0x40000) != 0;
  }

  *(a1 + 5264) = *(a4 + 16);
  *(a1 + 5268) = *(a4 + 8);
  AGCLLVMUserShader::enableStatistics(a1, *(a4 + 12) & 1, (*(a4 + 12) >> 1) & 1);
  *(a1 + 18) = (*(a4 + 12) & 8) != 0;
  v30 = *a1;
  *(a1 + *(*a1 - 24) + 4576) = (*(a4 + 12) & 0x4000000) != 0;
  *(a1 + 3504) = *a4;
  *(a1 + 5304) = (*(a4 + 16) >> 12) & 3;
  v31 = (*(a4 + 16) >> 14) & 0xF;
  *(a1 + 5300) = v31;
  if (v31 > 1)
  {
    v32 = *(*(a1 + *(v30 - 24) + 2168) + 1867);
  }

  else
  {
    v32 = 0;
  }

  v12[25] = v32;
  if (*(*(a1 + *(v30 - 24) + 2168) + 1890))
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = (*(a4 + 19) >> 3) & 1;
  }

  v12[4] = v33;
  if (v32)
  {
    *(a1 + 5304) = 0;
  }

  *(a1 + 20) = (*(a4 + 12) & 4) != 0;
  v11[1] = (*(a4 + 16) & 0x80000) != 0;
  *(a1 + 10408) = (*(a4 + 12) >> 4) & 7;
  *(a1 + 10412) = *(a4 + 12) >> 31;
  v11[595] = (*(a4 + 12) & 0x40000000) != 0;
  v11[2] = (*(a4 + 16) & 0x100000) != 0;
  v11[592] = (*(a4 + 12) & 0x80) != 0;
  *v12 = (*(a4 + 16) & 0x800000) != 0;
  v12[1] = *(a4 + 19) & 1;
  v12[3] = (*(a4 + 16) & 0x2000000) != 0;
  v11[3] = (*(a4 + 16) & 0x4000000) != 0;
  *(a1 + *(v30 - 24) + 4577) = *(a4 + 13) & 1;
  *(*(a1 + *(v30 - 24) + 2168) + 1941) = (*(a4 + 16) & 0x40000000000) != 0;
  *(*(a1 + *(v30 - 24) + 2168) + 1942) = (*(a4 + 16) & 0x80000000000) != 0;
  *(a1 + 3912) = (*(a4 + 12) & 0x200) != 0;
  v11[594] = (*(a4 + 12) & 0x20000000) != 0;
  v34 = *(a1 + *(v30 - 24) + 2136);
  v46 = "llvm.module.flags";
  v47 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v34, &v46);
  if (NamedMetadata)
  {
    v36 = NamedMetadata;
    v37 = 0;
LABEL_25:
    if (v37 < llvm::NamedMDNode::getNumOperands(v36))
    {
      Operand = llvm::NamedMDNode::getOperand(v36);
      v39 = 8 - 8 * *(Operand + 8);
      do
      {
        if (!v39)
        {
          ++v37;
          goto LABEL_25;
        }

        v40 = isStringMDNode(*(Operand + v39), "agx.allow_mismatched_component_counts");
        v39 += 8;
      }

      while (!v40);
      v41 = *(*(Operand - 8 * *(Operand + 8) + 16) + 128);
      v42 = (v41 + 24);
      if (*(v41 + 32) >= 0x41u)
      {
        v42 = *v42;
      }

      if (*v42)
      {
        v11[593] = 1;
      }
    }
  }

  return a1;
}

void *AGCLLVMAGPVertexShaderRegular::AGCLLVMAGPVertexShaderRegular(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  result = AGCLLVMAGPVertexShader::AGCLLVMAGPVertexShader(a1, a2 + 1, a3, a4, a5, a6);
  v8 = *a2;
  *result = *a2;
  *(result + *(v8 - 24)) = a2[13];
  *(result + *(*result - 24) + 1704) = a2[14];
  return result;
}

void AGCLLVMAGPVertexShaderRegular::addSimplifyGenericIRPasses(AGCLLVMAGPVertexShaderRegular *this)
{
  v1 = this + *(*this - 24);
  LOBYTE(v2) = 0;
  AGCModulePassManager::addPass<llvm::AlwaysInlinerPass>();
}

char *llvm::PassInfoMixin<llvm::GlobalOptPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x45)
  {
    v1 = v0;
  }

  else
  {
    v1 = 69;
  }

  v2 = &aStringrefLlvmG_24[v1];
  v3 = 69 - v1;
  if ((69 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 69 - v1;
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

uint64_t AGCLLVMObject::getTempRegistersLimit(AGCLLVMObject *this, unsigned int *a2)
{
  *a2 = *(*(this + 271) + 980);
  result = (*(*this + 112))(this);
  if (result)
  {
    *a2 = result;
    return result != *(*(this + 271) + 980);
  }

  return result;
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x50)
  {
    v1 = v0;
  }

  else
  {
    v1 = 80;
  }

  v2 = &aStringrefLlvmG_20[v1];
  v3 = 80 - v1;
  if ((80 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 80 - v1;
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

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderRegularPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x57)
  {
    v1 = v0;
  }

  else
  {
    v1 = 87;
  }

  v2 = &aStringrefLlvmG_26[v1];
  v3 = 87 - v1;
  if ((87 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 87 - v1;
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

uint64_t AGCLLVMAGPVertexShader::setupShaderInputs(AGCLLVMAGPVertexShader *this)
{
  v111 = *MEMORY[0x277D85DE8];
  AGCLLVMUserVertexShader::setupShaderInputs(this);
  v2 = *(this + 21);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v4 = *(this + 21);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  for (i = this + 1704; v3 != v5; v3 += 40)
  {
    if (*(v3 + 8))
    {
      v6 = *(*(this + 21) + 80);
      v7 = v6 ? v6 - 24 : 0;
      v8 = *this;
      v9 = *(v7 + 40);
      v10 = v9 ? (v9 - 24) : 0;
      AGCLLVMBuilder::SetInsertPoint(&i[*(*this - 24)], v10, *(this + 5));
      v11 = *(v3 + 32);
      v12 = *(*(this + 10) + 8 * v11);
      if ((AGCLLVMUserShader::replaceInputArgument(this, v3, v11, v12) & 1) == 0)
      {
        if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_count"))
        {
          v13 = *(*this - 24);
          v14 = (this + v13);
          if ((*(*(this + v13 + 2168) + 1867) & 1) == 0)
          {
            goto LABEL_84;
          }

          DriverGlobalConstant = AGCLLVMUserVertexShader::getDriverGlobalConstant(this, 0x54u);
          *(this + 661) = AGCLLVMBuilder::truncateToSmall(&i[v13], DriverGlobalConstant, *v3);
          llvm::Value::replaceAllUsesWith();
          *(this + 5297) = 1;
        }

        else if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_mask"))
        {
          v16 = *(*this - 24);
          v14 = (this + v16);
          if ((*(*(this + v16 + 2168) + 1867) & 1) == 0)
          {
            goto LABEL_84;
          }

          v17 = AGCLLVMUserVertexShader::getDriverGlobalConstant(this, 0x55u);
          *(this + 661) = AGCLLVMBuilder::truncateToSmall(&i[v16], v17, *v3);
          llvm::Value::replaceAllUsesWith();
        }

        else if (isStringMDNode(*(v12 - 8 * *(v12 + 8) + 8), "air.amplification_id"))
        {
          v18 = *(*this - 24);
          v14 = (this + v18);
          if ((*(*(this + v18 + 2168) + 1867) & 1) == 0)
          {
LABEL_84:
            std::string::append(v14 + 69, "Vertex amplification is not supported by target architecture.");
            result = 0;
            goto LABEL_83;
          }

          VertexAmpId = AGCLLVMUserVertexShader::getVertexAmpId(this, *(this + 1326));
          *(this + 660) = AGCLLVMBuilder::truncateToSmall(&i[v18], VertexAmpId, *v3);
          llvm::Value::replaceAllUsesWith();
          *(this + 5296) = 1;
        }
      }
    }
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = *(*(this + 21) + 80);
  if (v23)
  {
    v24 = (v23 - 24);
  }

  else
  {
    v24 = 0;
  }

  v88 = this + 2136;
  v89 = v24;
  v25 = this + 1712;
  v26 = this + 2168;
  v91 = this + 1904;
  do
  {
    v27 = *&v88[*(*this - 24)];
    v87 = v20;
    v28 = &(&off_277E1FFC8)[2 * v20];
    if (*v28)
    {
      v29 = strlen(*v28);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v86 = Function;
      v31 = *(Function + 8);
      if (v31)
      {
        v32 = *(v28 + 2);
        do
        {
          v33 = *(v31 + 24);
          v31 = *(v31 + 8);
          if (v33[1])
          {
            if (v32 == 3)
            {
              v34 = v21;
            }

            else
            {
              v34 = v22;
            }

            if (!v34)
            {
              v35 = *(*this - 24);
              FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v89);
              llvm::IRBuilderBase::SetInsertPoint(&v25[v35], v89, FirstInsertionPt);
              v37 = (*(**&v26[*(*this - 24)] + 472))();
              v38 = *(*this - 24);
              if (v37)
              {
                VIRead = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, v32);
                v40 = *&v91[*(*this - 24)];
                LOWORD(v100) = 257;
                Cast = llvm::IRBuilderBase::CreateCast(&v25[v38], 49, VIRead, v40, v96);
                v42 = Cast;
                v43 = v26;
                if (v32 == 3)
                {
                  v44 = v22;
                }

                else
                {
                  v44 = Cast;
                }

                if (v32 == 3)
                {
                  v45 = Cast;
                }

                else
                {
                  v45 = v21;
                }

                if ((*(**&v43[*(*this - 24)] + 480))())
                {
                  v46 = this + *(*this - 24);
                  v47 = *(v46 + 238);
                  inserted = AGCLLVMBuilder::getOrInsertFunction<>((v46 + 1704));
                  v49 = *(*this - 24);
                  LOWORD(v100) = 257;
                  v50 = llvm::IRBuilderBase::CreateCall(&v25[v49], *(inserted + 24), inserted, 0, 0, v96);
                  v94 = 257;
                  Add = llvm::IRBuilderBase::CreateAdd(&v25[v49], v42, v50, v93);
                  if (v32 == 3)
                  {
                    v21 = Add;
                  }

                  else
                  {
                    v22 = Add;
                  }
                }

                else
                {
                  v22 = v44;
                  v21 = v45;
                }

                v26 = this + 2168;
              }

              else
              {
                v52 = (*(**&v26[v38] + 448))(*&v26[v38], this + 5240, v32);
                v53 = *(this + 2592);
                if (v53 >= *(this + 2593))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(*(this + 1295) + 8 * v53) = (v32 << 32) | v52;
                ++*(this + 2592);
                v54 = *(*this - 24);
                v55 = AGCLLVMUserVertexShader::createVIRead(this);
                v56 = *&v91[*(*this - 24)];
                LOWORD(v100) = 257;
                v57 = llvm::IRBuilderBase::CreateCast(&v25[v54], 49, v55, v56, v96);
                if (v32 == 3)
                {
                  v21 = v57;
                }

                else
                {
                  v22 = v57;
                }
              }
            }

            if (v32 == 3)
            {
              v58 = v21;
            }

            else
            {
              v58 = v22;
            }

            v59 = *v33;
            if (*v58 != *v33)
            {
              v60 = *(*this - 24);
              LOWORD(v100) = 257;
              llvm::IRBuilderBase::CreateCast(&v25[v60], 38, v58, v59, v96);
            }

            llvm::Value::replaceAllUsesWith();
          }

          llvm::Instruction::eraseFromParent(v33);
        }

        while (v31);
      }

      llvm::Function::eraseFromParent(v86);
    }

    v20 = v87 + 1;
  }

  while (v87 != 3);
  v96[0] = "air.get_base_vertex.i32";
  v96[1] = "base_vertex";
  v61 = *(*(this + *(*this - 24) + 2168) + 920);
  v97 = (*(*v61 + 216))(v61);
  v98 = 0;
  v99 = "air.get_base_vertex.i16";
  v100 = "base_vertex";
  v62 = *(*(this + *(*this - 24) + 2168) + 920);
  v101 = (*(*v62 + 216))(v62);
  v102 = 0;
  v103 = "air.get_base_instance.i32";
  v104 = "base_instance";
  v63 = *(*(this + *(*this - 24) + 2168) + 920);
  v105 = (*(*v63 + 224))(v63);
  v106 = 1;
  v107 = "air.get_base_instance.i16";
  v108 = "base_instance";
  v64 = *(*(this + *(*this - 24) + 2168) + 920);
  v65 = 0;
  v109 = (*(*v64 + 224))(v64);
  v110 = 1;
  v95[0] = 0;
  v95[1] = 0;
  do
  {
    v66 = *&v88[*(*this - 24)];
    v67 = &v96[3 * v65];
    if (*v67)
    {
      v68 = strlen(*v67);
    }

    v69 = llvm::Module::getFunction();
    if (v69)
    {
      v90 = v69;
      v70 = *(v69 + 8);
      while (v70)
      {
        v71 = *(v70 + 24);
        v70 = *(v70 + 8);
        if (*(v71 + 1))
        {
          v72 = *(v67 + 5);
          GlobalBufferBinding = v95[v72];
          if (!GlobalBufferBinding)
          {
            v74 = *&v91[*(*this - 24)];
            v75 = llvm::PointerType::get();
            if (*v67[1])
            {
              v93[2] = v67[1];
              v76 = 3;
            }

            else
            {
              v76 = 1;
            }

            v93[0] = "agc.buffer_pointers.";
            LOBYTE(v94) = 3;
            HIBYTE(v94) = v76;
            GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v75, v93, *(v67 + 4), 4, 5, 0);
            v95[v72] = GlobalBufferBinding;
          }

          llvm::IRBuilderBase::SetInsertPoint(&v25[*(*this - 24)], v71);
          v77 = *(*this - 24);
          v94 = 257;
          Load = AGCLLVMBuilder::CreateLoad(&i[v77], GlobalBufferBinding, v93);
          v79 = this + *(*this - 24);
          v80 = *(v79 + 238);
          v94 = 257;
          llvm::Type::isOpaquePointerTy(*Load);
          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v79 + 214, v80, Load, 0, v93);
          v82 = *(*this - 24);
          v83 = *v71;
          v94 = 257;
          llvm::IRBuilderBase::CreateCast(&v25[v82], 38, AlignedLoad, v83, v93);
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v71);
      }

      llvm::Function::eraseFromParent(v90);
    }

    ++v65;
  }

  while (v65 != 4);
  result = 1;
LABEL_83:
  v85 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserVertexShader::setupShaderInputs(AGCLLVMUserVertexShader *this)
{
  v2 = *(*(this + 21) + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v5);
  v6 = *(this + 21);
  if (*(v6 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v8 = *(this + 21);
    v7 = *(v6 + 88);
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v6 = v8;
  }

  else
  {
    v7 = *(v6 + 88);
  }

  for (i = *(v6 + 88) + 40 * *(v6 + 96); v7 != i; v7 += 40)
  {
    v10 = *(*(this + 10) + 8 * *(v7 + 32));
    if (*(v7 + 8))
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && isStringMDNode(*(v10 - 8 * *(v10 + 8) + 8), "air.vertex_transform_feedback"))
    {
      v15 = 0;
      v14 = 0;
      LODWORD(v13) = 3;
      parseMDInt(0, v10, &v13, &v15 + 1);
      LODWORD(v13) = 5;
      parseMDInt(0, v10, &v13, &v15);
      LODWORD(v13) = 7;
      parseMDInt(0, v10, &v13, &v14);
      operator new();
    }
  }

  return 1;
}

void AGCLLVMAGPVertexShaderRegular::promoteInput(AGCLLVMAGPVertexShaderRegular *this, llvm::Value *a2, int a3, int a4)
{
  v177 = *MEMORY[0x277D85DE8];
  if ((*(*(this + *(*this - 24) + 2168) + 1848) & 1) == 0 && *(this + 10424) != 0)
  {
    if (a4 == -1)
    {
      snprintf(__str, 0x20uLL, "arg%d");
    }

    else
    {
      snprintf(__str, 0x20uLL, "arg%d.%d");
    }

    if ((llvm::Type::isOpaquePointerTy(*a2) & 1) == 0)
    {
      v8 = **(*a2 + 16);
      v146 = v8;
      v9 = (*(v8 + 2) & 0xFE) == 0x12 ? *(**(v8 + 2) + 8) : *(v8 + 2);
      if (v9 != 15 && llvm::Type::isSized(v8))
      {
        TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v8);
        LODWORD(v158) = v10;
        v11 = llvm::TypeSize::operator unsigned long long();
        if ((v11 & 3) != 0)
        {
          if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
          {
            AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Cannot DMA promote %s : type size %u not a multiple of 4", __str, v11);
          }

          goto LABEL_152;
        }

        v145 = 0;
        v141 = 0;
        v140 = 0;
        v143 = 0;
        v142 = 0;
        v144 = 0;
        v170 = 128;
        v168 = MEMORY[0x20F330650](0x4000, 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(&v168);
        LOBYTE(v171) = 0;
        v173 = 0;
        v174 = 1;
        v175 = 0;
        if (AGCLLVMAGPVertexShaderRegular::canDMAPromote(this, a2, __str, &v145, &v140, &v168) || AGCLLVMAGPVertexShaderRegular::coerceStridedAccess(this, a2, __str, &v146) && (v8 = v146, TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v146), LODWORD(v158) = v36, v11 = llvm::TypeSize::operator unsigned long long(), AGCLLVMAGPVertexShaderRegular::canDMAPromote(this, a2, __str, &v145, &v140, &v168)))
        {
          v12 = v11 >> 2;
          v13 = *(this + *(*this - 24) + 1872);
          v14 = llvm::UndefValue::get();
          v163 = &v165;
          v164 = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::assign(&v163, v12, v14);
          v15 = AGCLLVMAGPVertexShaderRegular::analyzeLoads(this, v8, &v168);
          v17 = v16 + 3;
          v18 = (v16 + 3) >> 2;
          v135 = v15 >> 2;
          v19 = this + *(*this - 24);
          v20 = *(*(v19 + 271) + 984);
          if (v20 >= 0x80)
          {
            v21 = 126;
          }

          else
          {
            v21 = v20 - 2;
          }

          v136 = v18 - (v15 >> 2);
          if (*(this + 1310) + v136 >= v21)
          {
            if (AGCTargetPrinter::isValidToPrintMessage(*(v19 + 212)))
            {
              AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Cannot DMA promote %s : ran out of vi's, need %u, already allocated %u, limit %u", __str, v136, *(this + 1310), v21);
            }
          }

          else
          {
            v22 = v15;
            v23 = *(*(this + 21) + 80);
            if (v23)
            {
              v24 = v23 - 24;
            }

            else
            {
              v24 = 0;
            }

            v25 = *(v24 + 40);
            if (v25)
            {
              v26 = (v25 - 24);
            }

            else
            {
              v26 = 0;
            }

            llvm::IRBuilderBase::SetInsertPoint((v19 + 1712), v26);
            v27 = *(this + 1310);
            if (v11 >= 4)
            {
              v28 = 0;
              v29 = (v17 >> 2);
              v30 = (v22 >> 2);
              do
              {
                if (v28 >= v30 && v28 < v29)
                {
                  ++*(this + 1310);
                  VIRead = AGCLLVMUserVertexShader::createVIRead(this);
                  *(v163 + v28) = VIRead;
                }

                ++v28;
              }

              while (v12 != v28);
            }

            v32 = v174;
            v149 = "vertex_input";
            v152 = 259;
            v156 = 264;
            LODWORD(v153) = a3;
            llvm::Twine::concat(&TypeAllocSize, &v149, &v153);
            v132 = AGCLLVMAGPVertexShaderRegular::materializeVertexAttribute(this, v8, v32, &v163, &TypeAllocSize);
            if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
            {
              AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "DMA promoting %s to VI, attribute size = %u words, only words [%u .. %u] actually used", __str, v12, v135, v18 - 1);
            }

            if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
            {
              v33 = v145;
              v34 = "false";
              if (v145 == 2)
              {
                v35 = "true";
              }

              else
              {
                v35 = "false";
              }

              if (v144)
              {
                v34 = "true";
              }

              AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "DMA Entry = {reg_offset: %u, size : %u, offset %u, stride; %u, instanced: %s, div: %u, base_after_divisor: %s}", v27, v136, v135, v12, v35, HIDWORD(v143), v34);
            }

            else
            {
              v33 = v145;
            }

            LODWORD(v140) = v27;
            _AGCBindingInfo::_AGCBindingInfo(&TypeAllocSize, a3, a4);
            HIDWORD(v140) = TypeAllocSize;
            v142 = __PAIR64__(v135, v136);
            LODWORD(v143) = v12;
            v141 = v33 == 2;
            v37 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(this + 9832, &v140);
            v38 = (*(this + 1229) + 32 * *(this + 2460));
            v39 = v37[1];
            *v38 = *v37;
            v38[1] = v39;
            ++*(this + 2460);
            v40 = v132;
            if (*(v132 + 16) == 60)
            {
              Alloca = *(v132 - 4);
            }

            else if (v175 == 1)
            {
              v42 = (this + *(*this - 24));
              LOWORD(v161) = 257;
              Alloca = llvm::IRBuilderBase::CreateAlloca(v42 + 214, v8, 0, &TypeAllocSize);
              llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v132, Alloca, 0);
            }

            else
            {
              Alloca = 0;
            }

            if (v169)
            {
              v43 = this + 1712;
              v133 = this + 1904;
              v134 = this + 1704;
              v130 = Alloca;
              do
              {
                v44 = v168;
                v45 = v170;
                v46 = v168 + (v170 << 7);
                if (v170)
                {
                  v47 = v170 << 7;
                  v48 = (v168 + 24);
                  v49 = v47;
                  while (1)
                  {
                    v50 = *v48;
                    if ((*v48 | 0x1000) != 0xFFFFFFFFFFFFF000)
                    {
                      break;
                    }

                    v48 += 16;
                    v49 -= 128;
                    if (!v49)
                    {
                      v50 = *(v46 + 24);
                      break;
                    }
                  }

                  v51 = v168;
                  while ((*(v51 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v51 += 128;
                    v47 -= 128;
                    if (!v47)
                    {
                      v51 = v168 + (v170 << 7);
                      break;
                    }
                  }
                }

                else
                {
                  v50 = *(v168 + 24);
                  v51 = v168;
                }

                TypeAllocSize = &v159;
                v158 = 0x800000000;
                if (*(v51 + 48))
                {
                  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, v51 + 40);
                  v44 = v168;
                  v45 = v170;
                  v162 = *(v51 + 120);
                  v46 = v168 + (v170 << 7);
                  if (!v169)
                  {
LABEL_71:
                    v44 = v46;
                    goto LABEL_72;
                  }
                }

                else
                {
                  v162 = *(v51 + 120);
                }

                if (v45)
                {
                  while ((v44[3] | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v44 += 16;
                    if (v44 == v46)
                    {
                      goto LABEL_71;
                    }
                  }
                }

LABEL_72:
                llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(&v168, v44);
                v52 = v158;
                llvm::IRBuilderBase::SetInsertPoint(&v43[*(*this - 24)], v50);
                if (!v52)
                {
                  if (HIDWORD(v162) == 3)
                  {
                    v85 = *(*this - 24);
                    v86 = *v50;
                    v87 = llvm::PointerType::get();
                    v152 = 257;
                    Cast = llvm::IRBuilderBase::CreateCast(&v43[v85], 49, Alloca, v87, &v149);
                    v89 = *(*this - 24);
                    v152 = 257;
                    AGCLLVMBuilder::CreateLoad(&v134[v89], Cast, &v149);
                  }

                  else if (HIDWORD(v162) == 1)
                  {
                    AGCLLVMBuilder::extendVector(&v134[*(*this - 24)], v40, *(*v50 + 32));
                  }

                  goto LABEL_117;
                }

                if (v162 != 1)
                {
                  v149 = v151;
                  v150 = 0x800000000;
                  llvm::SmallVectorImpl<llvm::Value *>::assign(&v149, (v52 + 1), 0);
                  v59 = *&v133[*(*this - 24)];
                  v60 = llvm::ConstantInt::get();
                  v61 = 0;
                  *v149 = v60;
                  do
                  {
                    *(v149 + v61 + 8) = *(TypeAllocSize + v61);
                    v61 += 8;
                  }

                  while (8 * v52 != v61);
                  v62 = *(*this - 24);
                  v63 = v146;
                  v64 = v149;
                  v65 = v150;
                  v156 = 257;
                  llvm::Type::isOpaquePointerTy(*Alloca);
                  GEP = llvm::IRBuilderBase::CreateGEP(&v43[v62], v63, Alloca, v64, v65, &v153);
                  v67 = *v50;
                  if ((HIDWORD(v162) | 2) == 3)
                  {
                    v68 = *(*this - 24);
                    v69 = llvm::PointerType::getWithSamePointeeType(**(v50 - 4), 0);
                    v156 = 257;
                    GEP = llvm::IRBuilderBase::CreateCast(&v43[v68], 49, GEP, v69, &v153);
                  }

                  v70 = *(*this - 24);
                  v156 = 257;
                  llvm::Type::isOpaquePointerTy(*GEP);
                  llvm::IRBuilderBase::CreateAlignedLoad(&v43[v70], v67, GEP, 0, &v153);
                  v71 = v149;
                  v72 = v151;
                  goto LABEL_115;
                }

                v153 = v155;
                v154 = 0xC00000000;
                llvm::SmallVectorImpl<unsigned int>::assign(&v153, v52, 0);
                v53 = TypeAllocSize;
                v54 = v153;
                v55 = v153;
                v56 = v52;
                do
                {
                  v57 = (*v53 + 24);
                  if (*(*v53 + 32) >= 0x41u)
                  {
                    v57 = *v57;
                  }

                  *v55++ = *v57;
                  v53 += 8;
                  --v56;
                }

                while (v56);
                if (SHIDWORD(v162) <= 1)
                {
                  if (HIDWORD(v162))
                  {
                    if (HIDWORD(v162) == 1)
                    {
                      v58 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v54, v154);
                      AGCLLVMBuilder::extendVector(&v134[*(*this - 24)], v58, *(*v50 + 32));
                    }
                  }

                  else
                  {
                    AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v54, v154);
                  }

                  goto LABEL_114;
                }

                if (HIDWORD(v162) != 2)
                {
                  if (HIDWORD(v162) == 3)
                  {
                    v149 = v151;
                    v150 = 0x800000000;
                    llvm::SmallVectorImpl<llvm::Value *>::assign(&v149, (v52 + 1), 0);
                    v73 = *&v133[*(*this - 24)];
                    v74 = llvm::ConstantInt::get();
                    v75 = 0;
                    *v149 = v74;
                    do
                    {
                      *(v149 + v75 + 8) = *(TypeAllocSize + v75);
                      v75 += 8;
                    }

                    while (8 * v52 != v75);
                    v76 = *(*this - 24);
                    v77 = v146;
                    v78 = v149;
                    v79 = v150;
                    v138 = 257;
                    llvm::Type::isOpaquePointerTy(*Alloca);
                    v80 = llvm::IRBuilderBase::CreateGEP(&v43[v76], v77, Alloca, v78, v79, v137);
                    v81 = *(*this - 24);
                    v82 = llvm::PointerType::getWithSamePointeeType(**(v50 - 4), 0);
                    v138 = 257;
                    v83 = llvm::IRBuilderBase::CreateCast(&v43[v81], 49, v80, v82, v137);
                    v84 = *(*this - 24);
                    v138 = 257;
                    AGCLLVMBuilder::CreateLoad(&v134[v84], v83, v137);
                    if (v149 != v151)
                    {
                      free(v149);
                    }
                  }

                  goto LABEL_114;
                }

                v149 = ((llvm::DataLayout::getTypeSizeInBits((this + 224), *v50) + 7) >> 3);
                LODWORD(v150) = v90 == 1;
                v91 = llvm::TypeSize::operator unsigned long long();
                LODWORD(v92) = v91 >> 2;
                if ((*(*v50 + 8) & 0xFE) == 0x10)
                {
                  v93 = *(**(*v50 + 16) + 24);
                  llvm::ArrayType::get(v93, v92);
                  InsertValue = llvm::UndefValue::get();
                  v139 = 0;
                  if (v91 >= 4)
                  {
                    v99 = v52 - 1;
                    v100 = v153;
                    do
                    {
                      v101 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v100, v154);
                      v102 = *(*this - 24);
                      v152 = 257;
                      v103 = llvm::IRBuilderBase::CreateCast(&v43[v102], 49, v101, v93, &v149);
                      v138 = 257;
                      InsertValue = llvm::IRBuilderBase::CreateInsertValue(&v43[v102], InsertValue, v103, &v139, 1, v137);
                      v100 = v153;
                      ++*(v153 + v99);
                      ++v139;
                    }

                    while (v139 < v92);
                  }

                  v104 = *v50;
                  v105 = llvm::UndefValue::get();
                  v106 = *(*this - 24);
                  v137[0] = 0;
                  v152 = 257;
                  llvm::IRBuilderBase::CreateInsertValue(&v43[v106], v105, InsertValue, v137, 1, &v149);
LABEL_113:
                  Alloca = v130;
                  goto LABEL_114;
                }

                v95 = *(v50 - 4);
                if (*(v95 + 16) != 62)
                {
                  v107 = **(**(v95 - 32) + 16);
                  llvm::FixedVectorType::get();
                  InsertElement = llvm::UndefValue::get();
                  if (v91 >= 4)
                  {
                    v109 = 0;
                    v131 = v107;
                    v110 = v52 - 1;
                    if (v92 <= 1)
                    {
                      v92 = 1;
                    }

                    else
                    {
                      v92 = v92;
                    }

                    v111 = v153;
                    do
                    {
                      v112 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v111, v154);
                      v113 = this + *(*this - 24);
                      v152 = 257;
                      v114 = llvm::IRBuilderBase::CreateCast((v113 + 1712), 49, v112, v131, &v149);
                      v138 = 257;
                      v115 = *(v113 + 238);
                      v116 = llvm::ConstantInt::get();
                      v117 = (v113 + 1712);
                      v40 = v132;
                      InsertElement = llvm::IRBuilderBase::CreateInsertElement(v117, InsertElement, v114, v116, v137);
                      v111 = v153;
                      ++*(v153 + v110);
                      ++v109;
                    }

                    while (v92 != v109);
                  }

                  v118 = *(*this - 24);
                  v119 = *v50;
                  v152 = 257;
                  llvm::IRBuilderBase::CreateCast(&v43[v118], 49, InsertElement, v119, &v149);
                  goto LABEL_113;
                }

                v96 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v153, v154);
                v97 = *(*this - 24);
                v98 = *v50;
                v152 = 257;
                llvm::IRBuilderBase::CreateCast(&v43[v97], 49, v96, v98, &v149);
LABEL_114:
                v71 = v153;
                v72 = v155;
LABEL_115:
                if (v71 != v72)
                {
                  free(v71);
                }

LABEL_117:
                v120 = *(v50 - 4);
                llvm::Value::replaceAllUsesWith();
                llvm::Instruction::eraseFromParent(v50);
                if (!*(v120 + 8))
                {
                  v148 = 0;
                  llvm::RecursivelyDeleteTriviallyDeadInstructions();
                  std::__function::__value_func<void ()(llvm::Value *)>::~__value_func[abi:nn200100](v147);
                }

                if (TypeAllocSize != &v159)
                {
                  free(TypeAllocSize);
                }
              }

              while (v169);
            }
          }

          if (v163 != &v165)
          {
            free(v163);
          }
        }

        if (v173 == 1)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v171);
          llvm::deallocate_buffer(v171, (16 * v172));
          v173 = 0;
        }

        v121 = v168;
        if (v170)
        {
          v158 = 2;
          v159 = 0;
          v160 = -4096;
          v161 = 0;
          TypeAllocSize = &unk_28257BDA0;
          v164 = 2;
          v165 = 0;
          v166 = -8192;
          v163 = &unk_28257BDA0;
          v167 = 0;
          v122 = v168 + 56;
          v123 = v170 << 7;
          do
          {
            v124 = *(v122 - 32);
            if (v124 != v160 && v124 != v166)
            {
              v126 = *(v122 - 16);
              if (v122 != v126)
              {
                free(v126);
                v124 = *(v122 - 32);
              }
            }

            if (v124 != -8192 && v124 != -4096 && v124 != 0)
            {
              llvm::ValueHandleBase::RemoveFromUseList((v122 - 48));
            }

            v122 += 128;
            v123 -= 128;
          }

          while (v123);
          if (v166 != -8192 && v166 != -4096 && v166)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v164);
          }

          if (v160 != -8192 && v160 != -4096 && v160)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v158);
          }

          v121 = v168;
          v128 = (v170 << 7);
        }

        else
        {
          v128 = 0;
        }

        llvm::deallocate_buffer(v121, v128);
      }
    }
  }

LABEL_152:
  v129 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMUserVertexShader::createVIRead(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  v6 = *(v5 + 271);
  v9 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v5 + 1712));
  v11 = *(v5 + 452);
  v7 = (*(*v6 + 464))(v6, &v9, a2, a3);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getVertexInputCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = (*(*a1 + 456))(a1, a4);
  v10 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(v7 + 24), v7, 0, 0, v9);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getVertexInputIntrinsic(uint64_t a1, int a2)
{
  if (a2 <= 4)
  {
    if ((a2 - 1) >= 2 && (a2 - 3) >= 2)
    {
      return 0;
    }

LABEL_14:
    v2 = 200;
    goto LABEL_15;
  }

  if (a2 <= 6)
  {
    if (a2 == 5)
    {
      goto LABEL_14;
    }

LABEL_13:
    v2 = 168;
    goto LABEL_15;
  }

  switch(a2)
  {
    case 7:
      goto LABEL_13;
    case 8:
      goto LABEL_14;
    case 9:
      v2 = 192;
LABEL_15:
      v3 = *(a1 + v2);
      return AGCLLVMBuilder::getOrInsertFunction<>(a1);
  }

  return 0;
}

uint64_t AGCLLVMUserVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    v3 = *(this + *(*this - 3) + 2136);
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v5 = Function;
      v17[0] = v18;
      v17[1] = 0x1000000000;
      v6 = this[20];
      if (*(v6 + 18))
      {
        llvm::Function::BuildLazyArguments(this[20]);
        v8 = this[20];
        v7 = *(v6 + 11);
        if (*(v8 + 9))
        {
          llvm::Function::BuildLazyArguments(v8);
        }

        v6 = v8;
      }

      else
      {
        v7 = *(v6 + 11);
      }

      v9 = *(v6 + 11) + 40 * *(v6 + 12);
      while (v7 != v9)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v17, v7);
        v7 += 40;
      }

      v10 = *(v5 + 1);
      while (v10)
      {
        v11 = *(v10 + 24);
        v12 = *(v11 - 4 * (*(v11 + 5) & 0x7FFFFFF));
        v13 = (v12 + 24);
        if (*(v12 + 32) >= 0x41u)
        {
          v13 = *v13;
        }

        v10 = *(v10 + 8);
        v14 = *(v17[0] + *v13);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v11);
      }

      llvm::Function::eraseFromParent(v5);
      if (v17[0] != v18)
      {
        free(v17[0]);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(llvm::Function **this)
{
  v3 = AGCLLVMUserVertexShader::setupShaderWrapper(this);
  if (*(this + 14) == 1)
  {
    v4 = this + *(*this - 3);
    if (**(*(this[21] + 3) + 16) == *(v4 + 231))
    {
      v5 = *(v4 + 271);
      if (v5[1859] == 1)
      {
        (*(*v5 + 400))(v5, this[20]);
      }
    }
  }

  v6 = 0x27C8D7000uLL;
  {
    v6 = 0x27C8D7000;
    if (v10)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v6 = 0x27C8D7000;
    }
  }

  if (*(v6 + 2944) == 1)
  {
    Value = AGCEnv::getValue("AGX_MTL_TESSELLATION_VS_WRITETHROUGH", v2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        v8 = *(this + *(*this - 3) + 2168);
        (*(*v8 + 432))(v8, this[20]);
      }
    }
  }

  return v3;
}

uint64_t AGCLLVMUserVertexShader::wrapperFunctionType(AGCLLVMUserVertexShader *this)
{
  v1 = *(this + 1310);
  if (v1)
  {
    v2 = this + *(*this - 24);
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v1);
  }

  v3 = *(this + *(*this - 24) + 1848);
  return llvm::FunctionType::get();
}

uint64_t AGCLLVMUserVertexShader::addWrapperPostfix(uint64_t this)
{
  v1 = this + *(*this - 24);
  v2 = *(v1 + 2168);
  if (*(v2 + 1945) == 1 && *(v2 + 1908) && (*(v1 + 4577) & 1) == 0)
  {
    v3 = this;
    this = (*(*this + 392))();
    if ((this & 1) == 0)
    {
      llvm::Type::getVoidTy(*(v3 + *(*v3 - 24) + 2160), v4);
      llvm::FunctionType::get();
      v5 = *(v3 + *(*v3 - 24) + 2136);
      llvm::Module::getOrInsertFunction();
      v6 = v3 + *(*v3 - 24);
      v9 = 257;
      return llvm::IRBuilderBase::CreateCall((v6 + 1712), *(v7 + 24), v7, 0, 0, v8);
    }
  }

  return this;
}

BOOL AGCLLVMAGPVertexShader::setupShaderOutputs(AGCLLVMAGPVertexShader *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  v3 = AGCLLVMUserVertexShader::setupShaderOutputs(this);
  v4 = (this + *(*this - 24));
  if (**(*(*(this + 21) + 24) + 16) == v4[231] && *(v4[271] + 1841) == 1)
  {
    v5 = v4[234];
    v6 = llvm::ConstantFP::get();
    v7 = *(this + *(*this - 24) + 1872);
    __p.__r_.__value_.__r.__words[0] = v6;
    __p.__r_.__value_.__l.__size_ = v6;
    __p.__r_.__value_.__r.__words[2] = v6;
    v46 = llvm::ConstantFP::get();
    v8 = llvm::ConstantVector::get();
    v9 = this + *(*this - 24);
    v10 = *(this + 681);
    v11 = *(this + 683);
    v12 = *(this + 682);
    v47 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v9 + 1712), v11, v12, &__p);
    v44 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v9 + 1712), v10, Mul, &__dst);
    AGCLLVMUserVertexShader::replaceOutputUses(this, v8, Add, 0, v2[1212], 4u);
  }

  v15 = *(this + 2451);
  if (v15)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Following fragment input(s) mismatching vertex shader output type(s) or not written by vertex shader: ");
    }

    v16 = *(this + 2450);
    if (v16)
    {
        ;
      }
    }

    else
    {
      i = *(this + 1224);
    }

    v19 = *(this + 1224) + 8 * v16;
    if (i != v19)
    {
      v20 = this + 1696;
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*&v20[*(*this - 24)]))
        {
          v21 = *&v20[*(*this - 24)];
          std::string::basic_string[abi:nn200100](&__p, (*i + 16), **i);
          v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          AGCTargetPrinter::printMessage(v21, "\t%s", v22);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        do
        {
          v24 = *(i + 8);
          i += 8;
          v23 = v24;
          if (v24)
          {
            v25 = v23 == -8;
          }

          else
          {
            v25 = 1;
          }
        }

        while (v25);
      }

      while (i != v19);
    }

    v26 = *(this + 2450);
    if (v26)
    {
        ;
      }
    }

    else
    {
      j = *(this + 1224);
    }

    v29 = *(this + 1224) + 8 * v26;
    if (j != v29)
    {
      v30 = this + 1656;
      v31 = &unk_20E75F419;
      do
      {
        std::string::append(&v30[*(*this - 24)], v31);
        std::string::basic_string[abi:nn200100](&__dst, (*j + 16), **j);
        attribute_name(&__p, &__dst);
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

        std::string::append(&v30[*(*this - 24)], p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        do
        {
          v35 = *(j + 8);
          j += 8;
          v34 = v35;
          if (v35)
          {
            v36 = v34 == -8;
          }

          else
          {
            v36 = 1;
          }
        }

        while (v36);
        v31 = ",";
      }

      while (j != v29);
    }
  }

  if (v2[1200] == 1)
  {
    v37 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertNamedMetadata();
    if (*(this + 1326) > 1u)
    {
      v39 = 0;
    }

    else
    {
      v38 = *(this + *(*this - 24) + 1776);
      v39 = llvm::MDString::get();
    }

    v40 = *(this + *(*this - 24) + 2160);
    __p.__r_.__value_.__r.__words[0] = v39;
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  if (v15)
  {
    result = 0;
  }

  else
  {
    result = v3;
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL AGCLLVMUserVertexShader::setupShaderOutputs(AGCLLVMUserVertexShader *this)
{
  v682 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  v3 = *(this + *(*this - 24) + 2136);
  Function = llvm::Module::getFunction();
  v5 = *(*(Function + 8) + 24);
  v6 = llvm::CallBase::arg_end(v5);
  v600 = v5;
  v7 = (v5 - 32 * (*(v5 + 5) & 0x7FFFFFF));
  if (((v6 - v7) & 0x1FFFFFFFE0) != 0)
  {
    v8 = *v7;
    v9 = **v7;
    v615 = v9;
    if (*(v9 + 8) == 16)
    {
      v10 = *(v9 + 12);
      v668 = v670;
      v669 = 0x1000000000;
      v665 = v667;
      v666 = 0x1000000000;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v668 = v670;
      v669 = 0x1000000000;
      v665 = v667;
      v666 = 0x1000000000;
      v10 = 1;
    }

    llvm::SmallVectorImpl<unsigned int>::append(&v665, v10);
    v11 = 0;
    goto LABEL_9;
  }

  v10 = 0;
  v8 = 0;
  v615 = 0;
  v668 = v670;
  v669 = 0x1000000000;
  v665 = v667;
  v666 = 0x1000000000;
LABEL_6:
  v11 = 1;
LABEL_9:
  memset(v664, 0, sizeof(v664));
  v622 = 0;
  v12 = *(this + *(*this - 24) + 1888);
  NullValue = llvm::ConstantInt::get();
  v13 = *(this + *(*this - 24) + 1888);
  v596 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v600);
  v662[0] = v663;
  v662[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(v662, v10, 0);
  v618 = this;
  v612 = v2;
  v594 = v8;
  v593 = Function;
  if (v11)
  {
    v595 = 0;
    v613 = 0;
  }

  else
  {
    if (*(v615 + 8) == 16)
    {
      AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, v8, v662);
    }

    else
    {
      *v662[0] = v8;
    }

    v77 = 0;
    v78 = 0;
    v613 = 0;
    v595 = 0;
    v609 = this + 1704;
    do
    {
      v79 = *(*(v618 + 8) - 8 * *(*(v618 + 8) + 8) + 8 * v77);
      v80 = (v79 + 8);
      String = llvm::MDString::getString(*(v79 - 8 * *(v79 + 8)));
      v83 = v82;
      v84 = *(v662[0] + v77);
      if (v2[1202] == 1)
      {
        v85 = v79 + 8;
        v86 = 1;
        while (1)
        {
          v87 = *v80;
          if (v86 >= v87)
          {
LABEL_99:
            v88 = 1;
            goto LABEL_102;
          }

          if (isStringMDNode(*(v85 - 8 * v87), "air.shared"))
          {
            break;
          }

          ++v86;
          v85 += 8;
          if (v612[1202] != 1)
          {
            goto LABEL_99;
          }
        }

        v88 = 0;
LABEL_102:
        v2 = v612;
      }

      else
      {
        v88 = 0;
      }

      if (v83 <= 16)
      {
        if (v83 == 12)
        {
          if (*String == 0x69736F702E726961 && *(String + 8) == 1852795252)
          {
            v2[1212] = v88;
            v101 = *v80;
            if (v101 >= 2)
            {
              v102 = v79 + 8;
              v103 = 1;
              while (!isStringMDNode(*(v102 - 8 * v101), "air.invariant"))
              {
                ++v103;
                v101 = *v80;
                v102 += 8;
                if (v103 >= v101)
                {
                  goto LABEL_184;
                }
              }

              v2[1179] = 1;
            }

LABEL_184:
            v613 = v84;
          }
        }

        else if (v83 == 14 && *String == 0x6E696F702E726961 && *(String + 6) == 0x657A69735F746E69)
        {
          v2[1213] = v88;
          v595 = v84;
        }
      }

      else
      {
        switch(v83)
        {
          case 17:
            if (*String == 0x70696C632E726961 && *(String + 8) == 0x636E61747369645FLL && *(String + 16) == 101)
            {
              v104 = (*(*v618 + 504))(v618, v84, v79, v664, &v622);
              v2[1216] = v88;
              if ((v104 & 1) == 0)
              {
                goto LABEL_559;
              }
            }

            else if (*String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865 && *(String + 16) == 116)
            {
              __p = 0;
              v632 = 0;
              v633 = 0;
              if ((*(*v618 + 512))(v618, v615, v77, v79, &v628, v88))
              {
                llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v668, v630, v84);
                GenericVaryingAllocator::addVarying(v618 + 4536, &v628);
              }

              else
              {
                if ((*(*v84 + 8) & 0xFE) == 0x12)
                {
                  {
                    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
                  }

                  if (AGCEnv::isEnabled(void)::is_internal != 1)
                  {
                    goto LABEL_176;
                  }

                  Value = AGCEnv::getValue("AGC_DISABLE_VARYING_SPLITTING", v97);
                  if (!Value || *Value == 48 || !atoi(Value))
                  {
                    goto LABEL_176;
                  }
                }

                {
                  AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
                }

                if (AGCEnv::isEnabled(void)::is_internal == 1)
                {
                  v106 = AGCEnv::getValue("AGC_FORCE_VARYING_SPLITTING", v97);
                  if (v106)
                  {
                    if (*v106 != 48 && atoi(v106))
                    {
LABEL_176:
                      *v677 = 0u;
                      v678 = 0u;
                      v107 = AGCLLVMBuilder::unboxVector(&v609[*(*v618 - 24)], v84, v677);
                      if (v107)
                      {
                        v108 = 0;
                        v109 = v107;
                        do
                        {
                          if ((*(*v618 + 520))(v618, v615, v77, v79, &v628, v88, v108))
                          {
                            llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v668, v630, v677[v108]);
                            GenericVaryingAllocator::addVarying(v618 + 4536, &v628);
                          }

                          ++v108;
                        }

                        while (v109 != v108);
                      }
                    }
                  }
                }
              }

              if (SHIBYTE(v633) < 0)
              {
                operator delete(__p);
              }
            }

            break;
          case 24:
            if (*String == 0x776569762E726961 && *(String + 8) == 0x7272615F74726F70 && *(String + 16) == 0x7865646E695F7961)
            {
              v2[1214] = v88;
              v2[1153] = 1;
              NullValue = v84;
            }

            break;
          case 29:
            v89 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
            v90 = v89 && *(String + 16) == 0x5F79617272615F74;
            if (v90 && *(String + 21) == 0x7865646E695F7961)
            {
              v2[1215] = v88;
              v2[1154] = 1;
              v596 = v84;
            }

            break;
        }
      }

      v78 = ++v77 >= v10;
    }

    while (v77 != v10);
  }

  v15 = v618;
  v16 = *(v618 + 1316) & v622;
  *(v618 + 1316) = v16;
  v14.i32[0] = v16;
  v17 = vcnt_s8(v14);
  v17.i16[0] = vaddlv_u8(v17);
  *(v618 + 1315) = v17.i32[0];
  if (v16 && ((v2[1216] & 1) != 0 || v2[1212] == 1))
  {
    v2[1216] = 1;
    v2[1212] = 1;
  }

  v2[1152] = (*(*v618 + 544))(v618, v595);
  if (v2[1202] == 1)
  {
    if ((v2[1200] & 1) == 0)
    {
      *(v618 + 660) = AGCLLVMUserVertexShader::getVertexAmpId(v618, *(v618 + 1326));
      v2[1200] = 1;
    }

    if ((v2[1201] & 1) == 0)
    {
      *(v618 + 661) = AGCLLVMUserVertexShader::getDriverGlobalConstant(v618, 0x54u);
      v2[1201] = 1;
    }

    v18 = v618 + *(*v618 - 24);
    v19 = *(v618 + 677);
    LOWORD(v632) = 257;
    Load = AGCLLVMBuilder::CreateLoad((v18 + 1704), v19, &v628);
    v21 = v618 + *(*v618 - 24);
    v22 = *(v618 + 678);
    v23 = *(v618 + 660);
    LOWORD(v632) = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v21 + 1712), v22, Load, v23, &v628);
    v25 = v618 + *(*v618 - 24);
    LOWORD(v632) = 257;
    v26 = AGCLLVMBuilder::CreateLoad((v25 + 1704), GEP, &v628);
    v628 = &v630;
    v629 = 0x800000000;
    AGCLLVMBuilder::unboxStruct(v618 + *(*v618 - 24) + 1704, v26, &v628);
    if ((v2[1153] & 1) == 0)
    {
      NullValue = llvm::Constant::getNullValue(**(v618 + 679), v27);
      v2[1153] = 1;
    }

    v2[1214] = 1;
    v28 = AGCLLVMBuilder::truncateToSmall((v618 + *(*v618 - 24) + 1704), *v628, *NullValue);
    *(v618 + 679) = v28;
    v29 = v618 + *(*v618 - 24);
    v30 = *v28;
    LOWORD(v679) = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v29 + 1712), 39, NullValue, v30, v677);
    v32 = v618 + *(*v618 - 24);
    v33 = *(v618 + 679);
    LOWORD(v679) = 257;
    NullValue = llvm::IRBuilderBase::CreateAdd((v32 + 1712), Cast, v33, v677);
    v35 = v596;
    if ((v2[1154] & 1) == 0)
    {
      v35 = llvm::Constant::getNullValue(**(v618 + 680), v34);
      v2[1154] = 1;
    }

    v2[1215] = 1;
    v36 = v35;
    v37 = AGCLLVMBuilder::truncateToSmall((v618 + *(*v618 - 24) + 1704), *(v628 + 1), *v35);
    *(v618 + 680) = v37;
    v38 = v618 + *(*v618 - 24);
    v39 = *v37;
    LOWORD(v679) = 257;
    v40 = llvm::IRBuilderBase::CreateCast((v38 + 1712), 39, v36, v39, v677);
    v41 = v618 + *(*v618 - 24);
    v42 = *(v618 + 680);
    LOWORD(v679) = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v41 + 1712), v40, v42, v677);
    if (v628 != &v630)
    {
      v44 = Add;
      free(v628);
      Add = v44;
    }
  }

  else
  {
    Add = v596;
  }

  v45 = 0;
  LOBYTE(v628) = 1;
  BYTE1(v628) = v2[1200];
  v629 = "air.amplification_id";
  v630 = 20;
  __p = *(v618 + 660);
  v635 = 0;
  v636 = 0;
  v637 = 0;
  v638 = 0;
  v639 = v2[1201];
  v640 = "air.amplification_count";
  v641 = 23;
  v642 = *(v618 + 661);
  v643 = 0;
  v644 = 0;
  v645 = 0;
  v646 = v2[1214];
  v647 = v2[1153];
  v648 = "air.viewport_array_index";
  v649 = 24;
  v650 = NullValue;
  v651 = 0;
  v653 = 0;
  v652 = 0;
  v654 = v2[1215];
  v655 = v2[1154];
  v602 = v618 + 1712;
  v656 = "air.render_target_array_index";
  v657 = 29;
  v603 = v618 + 1704;
  v597 = Add;
  v658 = Add;
  v659 = 0;
  v660 = 0;
  v661 = 0;
  do
  {
    v46 = &v628 + v45;
    if (!(*(*v15 + 528))(v15, *(&v628 + v45 + 8), *(&v630 + v45), &v632 + v45, *(&v628 + v45)))
    {
      goto LABEL_65;
    }

    v47 = *(*v15 - 24);
    v48 = *(v46 + 3);
    ComponentType = AGCLLVMBuilder::getComponentType(&v603[v47], *v48, v677);
    if (v46[1] != 1)
    {
      goto LABEL_64;
    }

    v50 = *(&v632 + v45 + 4);
    if (ComponentType <= 3)
    {
      if (!ComponentType)
      {
        if (!v50)
        {
          goto LABEL_64;
        }

LABEL_62:
        v52 = AGCLLVMBuilder::truncateToSmall(&v603[v47], v48, v50);
        goto LABEL_63;
      }

      if (ComponentType != 3)
      {
        goto LABEL_53;
      }

      if (v50 != 3)
      {
        if (v50 == 6)
        {
          goto LABEL_50;
        }

        if (v50 == 7)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (ComponentType != 4)
      {
        if (ComponentType == 5)
        {
          if (v50 <= 6)
          {
            if (((1 << v50) & 0x59) != 0)
            {
              goto LABEL_50;
            }

            if (v50 == 2)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_64;
        }

        if (ComponentType == 6)
        {
          if (v50 == 6)
          {
            goto LABEL_64;
          }

          goto LABEL_62;
        }

LABEL_53:
        if (v50 <= 3)
        {
          if (!v50)
          {
            goto LABEL_50;
          }

          if (v50 == 3)
          {
            v53 = ComponentType > 7;
            v54 = 1 << ComponentType;
            v55 = 200;
LABEL_68:
            v56 = v54 & v55;
            if (!v53 && v56 != 0)
            {
              goto LABEL_64;
            }

LABEL_50:
            v51 = *(v618 + v50 + 1214);
            LOWORD(v679) = 257;
            v52 = llvm::IRBuilderBase::CreateCast(&v602[v47], 39, v48, v51, v677);
LABEL_63:
            *(v46 + 3) = v52;
            goto LABEL_64;
          }
        }

        else
        {
          switch(v50)
          {
            case 4:
              v53 = ComponentType > 8;
              v54 = 1 << ComponentType;
              v55 = 472;
              goto LABEL_68;
            case 5:
              if (ComponentType != 2)
              {
                goto LABEL_64;
              }

              goto LABEL_50;
            case 6:
              goto LABEL_50;
          }
        }

        goto LABEL_64;
      }

      if (v50 > 8)
      {
        goto LABEL_62;
      }

      if (((1 << v50) & 0x190) == 0)
      {
        if (((1 << v50) & 0x48) != 0)
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      }
    }

LABEL_64:
    v15 = v618;
    GenericVaryingAllocator::addVarying(v618 + 4536, (v46 + 32));
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v668, *&v634[v45], *(v46 + 3));
LABEL_65:
    v45 += 96;
  }

  while (v45 != 384);
  *(&v678 + 1) = 0;
  v679 = 0;
  v680 = 0;
  if ((*(*v15 + 536))(v15, v677))
  {
    do
    {
      GenericVaryingAllocator::addVarying(v15 + 4536, v677);
    }

    while (((*(*v15 + 536))(v15, v677) & 1) != 0);
  }

  v60 = v612;
  v59 = v613;
  if (SHIBYTE(v680) < 0)
  {
    operator delete(*(&v678 + 1));
  }

  v61 = 126 - 2 * __clz(v669);
  if (v669)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,false>(v668, v668 + 16 * v669, v62, 1);
  GenericVaryingAllocator::allocate((v15 + 4536), *(v15 + *(*v15 - 24) + 2168));
  v63 = v600[5];
  v64 = *(v15 + *(*v15 - 24) + 4584);
  v65 = llvm::ConstantInt::get();
  v66 = *(v15 + *(*v15 - 24) + 4584);
  v616 = llvm::ConstantInt::get();
  *(v612 + 1156) = 0;
  v67 = *v15;
  v68 = v15 + *(*v15 - 24);
  if (*(*(v68 + 271) + 1867) == 1 && v612[1200] == 1)
  {
    DriverGlobalConstant = AGCLLVMUserVertexShader::getDriverGlobalConstant(v15, 0x54u);
    v616 = AGCLLVMBuilder::truncateToSmall((v68 + 1704), DriverGlobalConstant, *(v15 + *(*v15 - 24) + 4584));
    v70 = v15 + *(*v15 - 24);
    if (*(v15 + 1326))
    {
      v71 = 85;
    }

    else
    {
      v71 = 84;
    }

    v671 = AGCLLVMUserVertexShader::getDriverGlobalConstant(v15, v71);
    v72 = v15 + *(*v15 - 24);
    v73 = *(v72 + 271);
    v74 = *(v73 + 1600);
    if (v74)
    {
      v75 = strlen(*(v73 + 1600));
    }

    else
    {
      v75 = 0;
    }

    v110 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v72 + 1704), v74, v75, *(v72 + 238), *(v72 + 238));
    v111 = v15 + *(*v15 - 24);
    LOWORD(v679) = 257;
    v112 = llvm::IRBuilderBase::CreateCall((v111 + 1712), *(v110 + 24), v110, &v671, 1, v677);
    v76 = AGCLLVMBuilder::truncateToSmall((v70 + 1704), v112, *(v15 + *(*v15 - 24) + 4584));
    v67 = *v15;
  }

  else
  {
    v76 = v65;
  }

  v113 = *(v15 + *(v67 - 24) + 4584);
  *(v15 + 681) = llvm::ConstantInt::get();
  v114 = *(v15 + *(*v15 - 24) + 4584);
  v115 = llvm::ConstantInt::get();
  Mul = v115;
  *(v15 + 682) = v115;
  v117 = v612[1212];
  v605 = v612 + 1156;
  v607 = v76;
  if (v612[1212])
  {
    v118 = v76;
  }

  else
  {
    v118 = v65;
  }

  *(v15 + 683) = v118;
  if (v117 != 1)
  {
    *(v15 + 684) = v115;
    goto LABEL_200;
  }

  v119 = v15 + *(*v15 - 24);
  LOWORD(v679) = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v119 + 1712), v115, v616, v677);
  v120 = v612[1212];
  *(v15 + 684) = Mul;
  if ((v120 & 1) == 0)
  {
LABEL_200:
    *(v612 + 289) += 4;
    goto LABEL_201;
  }

  *(v15 + 1314) += 4;
LABEL_201:
  v121 = v15 + *(*v15 - 24);
  v122 = *(v15 + 681);
  LOWORD(v679) = 257;
  *(v15 + 685) = llvm::IRBuilderBase::CreateAdd((v121 + 1712), v122, Mul, v677);
  v123 = *(v15 + 1282);
  v124 = *(v15 + *(*v15 - 24) + 4584);
  v125 = llvm::ConstantInt::get();
  *(v15 + 686) = v125;
  *(v15 + 687) = v65;
  *(v15 + 688) = v125;
  v126 = v15 + *(*v15 - 24);
  v127 = *(v15 + 685);
  LOWORD(v679) = 257;
  *(v15 + 689) = llvm::IRBuilderBase::CreateAdd((v126 + 1712), v127, v125, v677);
  v128 = v65;
  v129 = (v15 + 5152);
  v130 = *(v15 + 1283);
  v131 = *(v15 + *(*v15 - 24) + 4584);
  v132 = llvm::ConstantInt::get();
  *(v15 + 690) = v132;
  *(v15 + 691) = v128;
  *(v15 + 692) = v132;
  v133 = v15 + *(*v15 - 24);
  v134 = *(v15 + 689);
  LOWORD(v679) = 257;
  *(v15 + 693) = llvm::IRBuilderBase::CreateAdd((v133 + 1712), v134, v132, v677);
  v135 = *(v15 + 1284);
  v136 = *(v15 + *(*v15 - 24) + 4584);
  v137 = llvm::ConstantInt::get();
  *(v15 + 694) = v137;
  *(v15 + 695) = v128;
  *(v15 + 696) = v137;
  v138 = v15 + *(*v15 - 24);
  v139 = *(v15 + 693);
  LOWORD(v679) = 257;
  *(v15 + 697) = llvm::IRBuilderBase::CreateAdd((v138 + 1712), v139, v137, v677);
  v140 = *(v15 + 1287);
  v141 = *(v15 + *(*v15 - 24) + 4584);
  v142 = llvm::ConstantInt::get();
  *(v15 + 698) = v142;
  *(v15 + 699) = v128;
  *(v15 + 700) = v142;
  v143 = v15 + *(*v15 - 24);
  v144 = *(v15 + 697);
  LOWORD(v679) = 257;
  *(v15 + 701) = llvm::IRBuilderBase::CreateAdd((v143 + 1712), v144, v142, v677);
  v145 = (*(v15 + 1288) + 1) >> 1;
  v612[1000];
  v146 = *(v15 + *(*v15 - 24) + 4584);
  v147 = llvm::ConstantInt::get();
  *(v15 + 702) = v147;
  *(v15 + 703) = v128;
  *(v15 + 704) = v147;
  v148 = v15 + *(*v15 - 24);
  v149 = *(v15 + 701);
  LOWORD(v679) = 257;
  *(v15 + 705) = llvm::IRBuilderBase::CreateAdd((v148 + 1712), v149, v147, v677);
  v150 = (*(v15 + 1289) + 1) >> 1;
  v612[1000];
  v151 = *(v15 + *(*v15 - 24) + 4584);
  v152 = llvm::ConstantInt::get();
  *(v15 + 706) = v152;
  *(v15 + 707) = v128;
  *(v15 + 708) = v152;
  v153 = v15 + *(*v15 - 24);
  v154 = *(v15 + 705);
  LOWORD(v679) = 257;
  *(v15 + 709) = llvm::IRBuilderBase::CreateAdd((v153 + 1712), v154, v152, v677);
  v155 = (*(v15 + 1290) + 1) >> 1;
  v612[1000];
  v156 = *(v15 + *(*v15 - 24) + 4584);
  v157 = llvm::ConstantInt::get();
  *(v15 + 710) = v157;
  *(v15 + 711) = v128;
  *(v15 + 712) = v157;
  v158 = v15 + *(*v15 - 24);
  v159 = *(v15 + 709);
  LOWORD(v679) = 257;
  *(v15 + 713) = llvm::IRBuilderBase::CreateAdd((v158 + 1712), v159, v157, v677);
  v160 = (*(v15 + 1293) + 1) >> 1;
  v612[1000];
  v161 = *(v15 + *(*v15 - 24) + 4584);
  v162 = llvm::ConstantInt::get();
  *(v15 + 714) = v162;
  v610 = v128;
  *(v15 + 715) = v128;
  *(v15 + 716) = v162;
  v163 = v15 + *(*v15 - 24);
  v164 = *(v15 + 713);
  LOWORD(v679) = 257;
  v165 = llvm::IRBuilderBase::CreateAdd((v163 + 1712), v164, v162, v677);
  *(v15 + 717) = v165;
  v166 = *v15;
  if (*(v15 + 1352))
  {
    v167 = *v15;
    if ((*(*(v15 + *(v166 - 24) + 2168) + 1849) & 1) == 0)
    {
      if (v594)
      {
        LODWORD(v678) = 128;
        v677[0] = MEMORY[0x20F330650](6144, 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(v677);
        BYTE8(v678) = 0;
        v681 = 0;
        if (*(v594 + 16) == 83)
        {
          v168 = *(v594 + 5);
          v169 = v168 & 0x7FFFFFF;
          if ((v168 & 0x7FFFFFF) != 0)
          {
            v170 = 0;
            v171 = 0;
            do
            {
              if ((v168 & 0x40000000) != 0)
              {
                v172 = *(v594 - 1);
              }

              else
              {
                v172 = v594 - 32 * v169;
              }

              v173 = *&v172[v170];
              *llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](v677, *&v172[32 * *(v594 + 15) + 8 * v171++]) = v173;
              v168 = *(v594 + 5);
              v169 = v168 & 0x7FFFFFF;
              v170 += 32;
            }

            while (v171 < v169);
          }
        }

        else
        {
          SinglePredecessor = llvm::BasicBlock::getSinglePredecessor(v63);
          *llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](v677, SinglePredecessor) = v594;
        }

        v175 = *(v15 + 665);
        v176 = *(v15 + 666);
        if (v175 != v176)
        {
          while (2)
          {
            v177 = *(v175 + 3);
            if (!v177)
            {
              goto LABEL_243;
            }

            v178 = **(v177 - 64);
            if ((*(v178 + 8) & 0xFE) == 0x12)
            {
              v179 = *(v178 + 32);
            }

            else
            {
              v179 = 1;
            }

            v181 = *v175;
            v180 = v175[1];
            v182 = llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](v677, *(v177 + 40));
            v183 = *v182;
            if (*(*v182 + 16) - 11 >= 2)
            {
              while (*(v183 - 32) != *(v177 - 64))
              {
                v183 = *(v183 - 64);
                if (*(v183 + 16) - 11 <= 1)
                {
                  goto LABEL_234;
                }
              }

              v184 = **(v183 + 64);
              v185 = *(*(v618 + 8) - 8 * *(*(v618 + 8) + 8) + 8 * v184);
              v186 = llvm::MDString::getString(*(v185 - 8 * *(v185 + 8)));
              if (v187 == 17)
              {
                if (*v186 == 0x747265762E726961 && *(v186 + 8) == 0x757074756F5F7865 && *(v186 + 16) == 116)
                {
                  v674 = 0;
                  v675 = 0;
                  v676 = 0;
                  if ((*(*v618 + 512))(v618, *v594, v184, v185, &v671, 0))
                  {
                    v194 = *(v618 + 1142);
                    if (v194)
                    {
                      v195 = *(v618 + 570);
                      v196 = v194 << 6;
                      while (*(v195 + 16) != v673)
                      {
                        v195 += 64;
                        v196 -= 64;
                        if (!v196)
                        {
                          goto LABEL_250;
                        }
                      }

                      v188 = *(v195 + 48);
                    }

                    else
                    {
LABEL_250:
                      v188 = 0xFFFF;
                    }
                  }

                  else
                  {
                    v188 = -2;
                  }

                  if (SHIBYTE(v676) < 0)
                  {
                    operator delete(v674);
                  }

                  goto LABEL_235;
                }
              }

              else if (v187 == 12)
              {
                if (*v186 ^ 0x69736F702E726961 | *(v186 + 8) ^ 0x6E6F6974)
                {
                  v188 = -2;
                }

                else
                {
                  v188 = 0;
                }

                goto LABEL_235;
              }
            }

LABEL_234:
            v188 = -2;
LABEL_235:
            if (v179)
            {
              v191 = *(*(v618 + v180 + 668) + 8);
              while (1)
              {
                v192 = *(v191 + 4 * v181);
                if (v192 != -2)
                {
                  v193 = v188;
                  if (v192 == -1)
                  {
                    goto LABEL_241;
                  }

                  if (v188 != v192)
                  {
                    break;
                  }
                }

LABEL_242:
                ++v188;
                ++v181;
                if (!--v179)
                {
                  goto LABEL_243;
                }
              }

              v193 = -2;
LABEL_241:
              *(v191 + 4 * v181) = v193;
              goto LABEL_242;
            }

LABEL_243:
            v175 += 8;
            if (v175 == v176)
            {
              break;
            }

            continue;
          }
        }

        v15 = v618;
        v197 = *(v618 + 1352);
        if (v197 >= 2)
        {
          for (i = 0; i < v197; ++i)
          {
            v199 = *(v618 + i + 668);
            v200 = *(v199 + 1);
            v201 = *v199;
            if (*v200 < 0xFFFFFFFE)
            {
              if (v201 < 2)
              {
                continue;
              }

              v202 = v201 - 1;
              v203 = v200 + 1;
              v204 = *v200 + 1;
              while (1)
              {
                v205 = *v203++;
                if (v204 != v205)
                {
                  break;
                }

                ++v204;
                if (!--v202)
                {
                  goto LABEL_263;
                }
              }
            }

            memset_pattern4(v200, &TFBufferMap::MAP_CONFLICT, 4 * v201);
            v197 = *(v618 + 1352);
LABEL_263:
            ;
          }
        }

        v206 = *(v618 + 665);
        v207 = *(v618 + 666);
        if (v206 != v207)
        {
          while (2)
          {
            v208 = *(v206 + 3);
            if (v208)
            {
              v209 = *v206;
              v210 = **(v208 - 8);
              if ((*(v210 + 8) & 0xFE) == 0x12)
              {
                v211 = *(v210 + 32);
                if (!v211)
                {
                  goto LABEL_275;
                }
              }

              else
              {
                v211 = 1;
              }

              v212 = *(*(v618 + v206[1] + 668) + 8);
              if (*(v212 + 4 * v209) <= 0xFFFFFFFD)
              {
                v213 = 0;
                v214 = v209 + 1;
                while (v211 - 1 != v213)
                {
                  v215 = *(v212 + 4 * (v214 + v213++));
                  if (v215 >= 0xFFFFFFFE)
                  {
                    if (v213 < v211)
                    {
                      goto LABEL_276;
                    }

                    break;
                  }
                }

LABEL_275:
                v216 = *(v208 - 4);
                llvm::Instruction::eraseFromParent(v208);
                EraseInstructionChain(v216);
              }
            }

LABEL_276:
            v206 += 8;
            if (v206 == v207)
            {
              break;
            }

            continue;
          }
        }

        if (v681 == 1)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v678 + 8);
          llvm::deallocate_buffer(*(&v678 + 1), (16 * v680));
          v681 = 0;
        }

        v217 = v677[0];
        if (v678)
        {
          v672 = 2;
          v673 = 0;
          v674 = -4096;
          v675 = 0;
          v671 = &unk_2825A95E0;
          v624 = 2;
          v625 = 0;
          v626 = -8192;
          v627 = 0;
          v623 = &unk_2825A95E0;
          v218 = (v677[0] + 24);
          v219 = 48 * v678;
          do
          {
            v220 = *v218;
            if (*v218 != -8192 && v220 != -4096 && v220 != 0)
            {
              llvm::ValueHandleBase::RemoveFromUseList((v218 - 2));
            }

            v218 += 6;
            v219 -= 48;
          }

          while (v219);
          if (v626 != -8192 && v626 != -4096 && v626 != 0)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v624);
          }

          if (v674 != -8192 && v674 != -4096 && v674)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v672);
          }

          v217 = v677[0];
          v223 = 48 * v678;
        }

        else
        {
          v223 = 0;
        }

        llvm::deallocate_buffer(v217, v223);
        v165 = *(v618 + 717);
      }

      if (*(v165 + 16) == 16)
      {
        v224 = v165;
      }

      else
      {
        v224 = 0;
      }

      v225 = (v224 + 24);
      if (*(v224 + 32) >= 0x41u)
      {
        v225 = *v225;
      }

      v226 = *v225;
      v227 = *(v15 + 1352);
      if (v227 < 2)
      {
        v230 = 0;
      }

      else
      {
        v228 = v15;
        v229 = 0;
        v230 = 0;
        v231 = v228 + 5344;
        v232 = vdupq_n_s64(4uLL);
        do
        {
          v233 = *(v231 + 8 * v229);
          v234 = *(v233 + 1);
          if (*v234 >= 0xFFFFFFFE)
          {
            v235 = *v233;
            if (v235)
            {
              v236 = (v235 + 3) & 0x1FFFFFFFCLL;
              v237 = vdupq_n_s64(v235 - 1);
              v238 = v234 + 2;
              v239 = v226;
              v240 = xmmword_20E70C4F0;
              v241 = xmmword_20E70C4E0;
              do
              {
                v242 = vmovn_s64(vcgeq_u64(v237, v240));
                if (vuzp1_s16(v242, 2).u8[0])
                {
                  *(v238 - 2) = v239;
                }

                if (vuzp1_s16(v242, 2).i8[2])
                {
                  *(v238 - 1) = v239 + 1;
                }

                if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v237, *&v241))).i32[1])
                {
                  *v238 = v239 + 2;
                  v238[1] = v239 + 3;
                }

                v241 = vaddq_s64(v241, v232);
                v240 = vaddq_s64(v240, v232);
                v239 += 4;
                v238 += 4;
                v236 -= 4;
              }

              while (v236);
              v227 = *(v618 + 1352);
            }

            v226 += v235;
            v230 += v235;
          }

          ++v229;
        }

        while (v229 < v227);
      }

      v243 = *(v618 + 665);
      v244 = *(v618 + 666);
      if (v243 != v244)
      {
        v245 = v618 + 5344;
        while (1)
        {
          v246 = *(v243 + 3);
          if (v246)
          {
            break;
          }

LABEL_335:
          v243 += 8;
          if (v243 == v244)
          {
            goto LABEL_342;
          }
        }

        v247 = *v243;
        v248 = v243[1];
        v249 = *(v246 - 8);
        if ((*(*v246 + 8) & 0xFE) == 0x12)
        {
          v250 = *(*v246 + 32);
          v251 = *&v245[8 * v248];
          if (!v250)
          {
LABEL_334:
            v256 = *(*(v251 + 8) + 4 * v247);
            v257 = *(v618 + *(*v618 - 24) + 4584);
            v258 = llvm::ConstantInt::get();
            AGCLLVMUserVertexShader::replaceOutputUses(v618, v249, v258, 1, 0, 4u);
            v259 = *(v246 - 4);
            llvm::Instruction::eraseFromParent(v246);
            EraseInstructionChain(v259);
            goto LABEL_335;
          }
        }

        else
        {
          v251 = *&v245[8 * v248];
          v250 = 1;
        }

        v252 = *(v251 + 8);
        if (*(v252 + 4 * v247) <= 0xFFFFFFFD)
        {
          v260 = 0;
          while (v250 - 1 != v260)
          {
            v261 = *(v252 + 4 * (v247 + 1 + v260++));
            if (v261 >= 0xFFFFFFFE)
            {
              if (v260 < v250)
              {
                goto LABEL_331;
              }

              goto LABEL_334;
            }
          }
        }

        else
        {
LABEL_331:
          v253 = v226;
          v254 = *v243;
          v255 = v250;
          do
          {
            *(v252 + 4 * v254++) = v253++;
            --v255;
          }

          while (v255);
          v226 += v250;
          v230 += v250;
        }

        goto LABEL_334;
      }

LABEL_342:
      v262 = *(v618 + 1311) + v230;
      v15 = v618;
      *(v618 + 1311) = v262;
      v166 = *v618;
      v60 = v612;
      v59 = v613;
    }
  }

  v263 = *(v15 + 1311);
  v264 = *(v15 + *(v166 - 24) + 4584);
  v265 = llvm::ConstantInt::get();
  v266 = 0;
  *(v15 + 718) = v265;
  *(v15 + 719) = v610;
  *(v15 + 720) = v265;
  v267 = -6;
  do
  {
    if ((v267 + 6) <= 5 && ((1 << (v267 + 6)) & 0x27) != 0)
    {
      v268 = *(v129 - 6) + v266;
      v269 = v268 + *v129;
      v266 = v268 + ((*v129 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v266 = v269;
      }
    }

    ++v129;
    v270 = __CFADD__(v267++, 1);
  }

  while (!v270);
  *(v15 + 1313) += *(v15 + 1311) + v266;
  v271 = v15 + *(*v15 - 24);
  v272 = *(v15 + 717);
  LOWORD(v679) = 257;
  v273 = llvm::IRBuilderBase::CreateAdd((v271 + 1712), v272, v265, v677);
  v274 = 0;
  *(v15 + 721) = v273;
  v275 = *v15;
  v276 = (v15 + 5200);
  v277 = -6;
  v278 = (v15 + 5200);
  do
  {
    if ((v277 + 6) <= 5 && ((1 << (v277 + 6)) & 0x27) != 0)
    {
      v279 = *(v278 - 6) + v274;
      v280 = v279 + *v278;
      v274 = v279 + ((*v278 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v274 = v280;
      }
    }

    ++v278;
    v270 = __CFADD__(v277++, 1);
  }

  while (!v270);
  v281 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 722) = llvm::ConstantInt::get();
  *(v15 + 723) = v607;
  v282 = *(v15 + 1294);
  v283 = *(v15 + *(*v15 - 24) + 4584);
  v284 = llvm::ConstantInt::get();
  *(v15 + 724) = v284;
  v285 = v15 + *(*v15 - 24);
  v286 = *(v15 + 721);
  LOWORD(v679) = 257;
  v287 = llvm::IRBuilderBase::CreateAdd((v285 + 1712), v286, v284, v677);
  v288 = 0;
  *(v15 + 725) = v287;
  v289 = *v15;
  v290 = -6;
  v291 = (v15 + 5200);
  do
  {
    if ((v290 + 6) <= 5 && ((1 << (v290 + 6)) & 0x27) != 0)
    {
      v292 = *(v291 - 6) + v288;
      v293 = v292 + *v291;
      v288 = v292 + ((*v291 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v288 = v293;
      }
    }

    ++v291;
    v270 = __CFADD__(v290++, 1);
  }

  while (!v270);
  v294 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 726) = llvm::ConstantInt::get();
  *(v15 + 727) = v607;
  v295 = *(v15 + 1295);
  v296 = *(v15 + *(*v15 - 24) + 4584);
  v297 = llvm::ConstantInt::get();
  *(v15 + 728) = v297;
  v298 = v15 + *(*v15 - 24);
  v299 = *(v15 + 725);
  LOWORD(v679) = 257;
  v300 = llvm::IRBuilderBase::CreateAdd((v298 + 1712), v299, v297, v677);
  v301 = 0;
  *(v15 + 729) = v300;
  v302 = *v15;
  v303 = -6;
  v304 = (v15 + 5200);
  do
  {
    if ((v303 + 6) <= 5 && ((1 << (v303 + 6)) & 0x27) != 0)
    {
      v305 = *(v304 - 6) + v301;
      v306 = v305 + *v304;
      v301 = v305 + ((*v304 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v301 = v306;
      }
    }

    ++v304;
    v270 = __CFADD__(v303++, 1);
  }

  while (!v270);
  v307 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 730) = llvm::ConstantInt::get();
  *(v15 + 731) = v607;
  v308 = *(v15 + 1296);
  v309 = *(v15 + *(*v15 - 24) + 4584);
  v310 = llvm::ConstantInt::get();
  *(v15 + 732) = v310;
  v311 = v15 + *(*v15 - 24);
  v312 = *(v15 + 729);
  LOWORD(v679) = 257;
  v313 = llvm::IRBuilderBase::CreateAdd((v311 + 1712), v312, v310, v677);
  v314 = 0;
  *(v15 + 733) = v313;
  v315 = *v15;
  v316 = -6;
  v317 = (v15 + 5200);
  do
  {
    if ((v316 + 6) <= 5 && ((1 << (v316 + 6)) & 0x27) != 0)
    {
      v318 = *(v317 - 6) + v314;
      v319 = v318 + *v317;
      v314 = v318 + ((*v317 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v314 = v319;
      }
    }

    ++v317;
    v270 = __CFADD__(v316++, 1);
  }

  while (!v270);
  v320 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 734) = llvm::ConstantInt::get();
  *(v15 + 735) = v607;
  v321 = *(v15 + 1299);
  v322 = *(v15 + *(*v15 - 24) + 4584);
  v323 = llvm::ConstantInt::get();
  *(v15 + 736) = v323;
  v324 = v15 + *(*v15 - 24);
  v325 = *(v15 + 733);
  LOWORD(v679) = 257;
  v326 = llvm::IRBuilderBase::CreateAdd((v324 + 1712), v325, v323, v677);
  v327 = 0;
  *(v15 + 737) = v326;
  v328 = *v15;
  v329 = -6;
  v330 = (v15 + 5200);
  do
  {
    if ((v329 + 6) <= 5 && ((1 << (v329 + 6)) & 0x27) != 0)
    {
      v331 = *(v330 - 6) + v327;
      v332 = v331 + *v330;
      v327 = v331 + ((*v330 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v327 = v332;
      }
    }

    ++v330;
    v270 = __CFADD__(v329++, 1);
  }

  while (!v270);
  v333 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 738) = llvm::ConstantInt::get();
  *(v15 + 739) = v607;
  v334 = (*(v15 + 1300) + 1) >> 1;
  v60[1000];
  v335 = *(v15 + *(*v15 - 24) + 4584);
  v336 = llvm::ConstantInt::get();
  *(v15 + 740) = v336;
  v337 = v15 + *(*v15 - 24);
  v338 = *(v15 + 737);
  LOWORD(v679) = 257;
  v339 = llvm::IRBuilderBase::CreateAdd((v337 + 1712), v338, v336, v677);
  v340 = 0;
  *(v15 + 741) = v339;
  v341 = *v15;
  v342 = -6;
  v343 = (v15 + 5200);
  do
  {
    if ((v342 + 6) <= 5 && ((1 << (v342 + 6)) & 0x27) != 0)
    {
      v344 = *(v343 - 6) + v340;
      v345 = v344 + *v343;
      v340 = v344 + ((*v343 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v340 = v345;
      }
    }

    ++v343;
    v270 = __CFADD__(v342++, 1);
  }

  while (!v270);
  v346 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 742) = llvm::ConstantInt::get();
  *(v15 + 743) = v607;
  v347 = (*(v15 + 1301) + 1) >> 1;
  v60[1000];
  v348 = *(v15 + *(*v15 - 24) + 4584);
  v349 = llvm::ConstantInt::get();
  *(v15 + 744) = v349;
  v350 = v15 + *(*v15 - 24);
  v351 = *(v15 + 741);
  LOWORD(v679) = 257;
  v352 = llvm::IRBuilderBase::CreateAdd((v350 + 1712), v351, v349, v677);
  v353 = 0;
  *(v15 + 745) = v352;
  v354 = *v15;
  v355 = -6;
  v356 = (v15 + 5200);
  do
  {
    if ((v355 + 6) <= 5 && ((1 << (v355 + 6)) & 0x27) != 0)
    {
      v357 = *(v356 - 6) + v353;
      v358 = v357 + *v356;
      v353 = v357 + ((*v356 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v353 = v358;
      }
    }

    ++v356;
    v270 = __CFADD__(v355++, 1);
  }

  while (!v270);
  v359 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 746) = llvm::ConstantInt::get();
  *(v15 + 747) = v607;
  v360 = (*(v15 + 1302) + 1) >> 1;
  v60[1000];
  v361 = *(v15 + *(*v15 - 24) + 4584);
  v362 = llvm::ConstantInt::get();
  *(v15 + 748) = v362;
  v363 = v15 + *(*v15 - 24);
  v364 = *(v15 + 745);
  LOWORD(v679) = 257;
  v365 = llvm::IRBuilderBase::CreateAdd((v363 + 1712), v364, v362, v677);
  v366 = 0;
  *(v15 + 749) = v365;
  v367 = *v15;
  v368 = -6;
  v369 = (v15 + 5200);
  do
  {
    if ((v368 + 6) <= 5 && ((1 << (v368 + 6)) & 0x27) != 0)
    {
      v370 = *(v369 - 6) + v366;
      v371 = v370 + *v369;
      v366 = v370 + ((*v369 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v366 = v371;
      }
    }

    ++v369;
    v270 = __CFADD__(v368++, 1);
  }

  while (!v270);
  v372 = *(v15 + *(*v15 - 24) + 4584);
  *(v15 + 750) = llvm::ConstantInt::get();
  *(v15 + 751) = v607;
  v373 = (*(v15 + 1305) + 1) >> 1;
  v60[1000];
  v374 = *(v15 + *(*v15 - 24) + 4584);
  v375 = llvm::ConstantInt::get();
  v376 = 0;
  *(v15 + 752) = v375;
  v377 = *(*v15 - 24);
  v378 = -6;
  v379 = (v15 + 5200);
  do
  {
    if ((v378 + 6) <= 5 && ((1 << (v378 + 6)) & 0x27) != 0)
    {
      v380 = *(v379 - 6) + v376;
      v381 = v380 + *v379;
      v376 = v380 + ((*v379 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v376 = v381;
      }
    }

    ++v379;
    v270 = __CFADD__(v378++, 1);
  }

  while (!v270);
  v598 = v15 + 5448;
  v382 = v15 + v377;
  v383 = *(v15 + v377 + 4584);
  v384 = llvm::ConstantInt::get();
  v385 = v15 + *(*v15 - 24);
  v386 = *(v385 + 573);
  v387 = llvm::ConstantInt::get();
  LOWORD(v679) = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v385 + 1712), v616, v387, v677);
  LOWORD(v675) = 257;
  v389 = llvm::IRBuilderBase::CreateMul((v382 + 1712), v384, Sub, &v671);
  LOWORD(v627) = 257;
  v390 = llvm::IRBuilderBase::CreateAdd((v382 + 1712), v375, v389, &v623);
  v391 = 0;
  *(v15 + 752) = v390;
  v392 = -6;
  do
  {
    if ((v392 + 6) <= 5 && ((1 << (v392 + 6)) & 0x27) != 0)
    {
      v393 = *(v276 - 6) + v391;
      v394 = v393 + *v276;
      v391 = v393 + ((*v276 + 1) >> 1);
      if (v60[1000] != 1)
      {
        v391 = v394;
      }
    }

    ++v276;
    v270 = __CFADD__(v392++, 1);
  }

  while (!v270);
  *(v15 + 1314) += v391;
  v395 = v15 + *(*v15 - 24);
  v396 = *(v395 + 573);
  v397 = llvm::ConstantInt::get();
  LOWORD(v679) = 257;
  v398 = llvm::IRBuilderBase::CreateMul((v395 + 1712), v397, v616, v677);
  v399 = v15 + *(*v15 - 24);
  v400 = *(v15 + 721);
  LOWORD(v679) = 257;
  *(v15 + 769) = llvm::IRBuilderBase::CreateAdd((v399 + 1712), v400, v398, v677);
  v401 = v60[1152];
  v402 = *(v15 + *(*v15 - 24) + 4584);
  v403 = llvm::ConstantInt::get();
  *(v15 + 770) = v403;
  v404 = v60[1213];
  if (v60[1213])
  {
    v405 = v607;
  }

  else
  {
    v405 = v610;
  }

  *(v15 + 771) = v405;
  if (v404 == 1)
  {
    v406 = v15 + *(*v15 - 24);
    LOWORD(v679) = 257;
    v403 = llvm::IRBuilderBase::CreateMul((v406 + 1712), v403, v616, v677);
  }

  *(v15 + 772) = v403;
  if (v60[1152] == 1)
  {
    if (v60[1213] == 1)
    {
      ++*(v15 + 1314);
    }

    else
    {
      ++*v605;
    }
  }

  v407 = v15 + *(*v15 - 24);
  if (*(*(v407 + 271) + 1862) != 1)
  {
    v409 = *(v15 + 769);
    LOWORD(v679) = 257;
    *(v15 + 773) = llvm::IRBuilderBase::CreateAdd((v407 + 1712), v409, v403, v677);
    v410 = v60[1153];
    v411 = *(v15 + *(*v15 - 24) + 4584);
    v412 = llvm::ConstantInt::get();
    *(v15 + 774) = v412;
    v413 = v60[1214];
    if (v60[1214])
    {
      v414 = v607;
    }

    else
    {
      v414 = v610;
    }

    *(v15 + 775) = v414;
    if (v413 == 1)
    {
      v415 = v15 + *(*v15 - 24);
      LOWORD(v679) = 257;
      v412 = llvm::IRBuilderBase::CreateMul((v415 + 1712), v412, v616, v677);
    }

    *(v15 + 776) = v412;
    if (v60[1153] == 1)
    {
      if (v60[1214] == 1)
      {
        ++*(v15 + 1314);
      }

      else
      {
        ++*v605;
      }
    }

    v424 = v15 + *(*v15 - 24);
    v425 = *(v15 + 773);
    LOWORD(v679) = 257;
    *(v15 + 777) = llvm::IRBuilderBase::CreateAdd((v424 + 1712), v425, v412, v677);
    v426 = v60[1154];
    v427 = *(v15 + *(*v15 - 24) + 4584);
    v420 = llvm::ConstantInt::get();
    *(v15 + 778) = v420;
    v428 = v60[1215];
    if (v60[1215])
    {
      v429 = v607;
    }

    else
    {
      v429 = v610;
    }

    *(v15 + 779) = v429;
    if (v428 == 1)
    {
      v430 = v15 + *(*v15 - 24);
      LOWORD(v679) = 257;
      v420 = llvm::IRBuilderBase::CreateMul((v430 + 1712), v420, v616, v677);
    }

    *(v15 + 780) = v420;
    if (v60[1154] != 1)
    {
      goto LABEL_462;
    }

    if (v60[1215] == 1)
    {
      goto LABEL_460;
    }

LABEL_461:
    ++*v605;
    goto LABEL_462;
  }

  if (v60[1153])
  {
    v408 = 1;
  }

  else
  {
    v408 = v60[1154];
  }

  if (v60[1214])
  {
    v416 = 1;
  }

  else
  {
    v416 = v60[1215];
  }

  v417 = *(v15 + 769);
  LOWORD(v679) = 257;
  *(v15 + 773) = llvm::IRBuilderBase::CreateAdd((v407 + 1712), v417, v403, v677);
  v418 = *(v15 + *(*v15 - 24) + 4584);
  v419 = llvm::ConstantInt::get();
  v420 = v419;
  *(v15 + 774) = v419;
  if (v416)
  {
    v421 = v607;
  }

  else
  {
    v421 = v610;
  }

  *(v15 + 775) = v421;
  if (v416)
  {
    v422 = v15 + *(*v15 - 24);
    LOWORD(v679) = 257;
    v420 = llvm::IRBuilderBase::CreateMul((v422 + 1712), v419, v616, v677);
    v423 = *(v15 + 775);
    *(v15 + 776) = v420;
    *(v60 + 2120) = *(v60 + 2088);
    *(v15 + 779) = v423;
    *(v15 + 780) = v420;
    if ((v408 & 1) == 0)
    {
      goto LABEL_462;
    }

LABEL_460:
    ++*(v15 + 1314);
    goto LABEL_462;
  }

  *(v15 + 776) = v419;
  *(v15 + 777) = *(v15 + 773);
  *(v15 + 778) = v419;
  *(v15 + 779) = v610;
  *(v15 + 780) = v419;
  if (v408)
  {
    goto LABEL_461;
  }

LABEL_462:
  v431 = v15 + *(*v15 - 24);
  v432 = *(v15 + 777);
  LOWORD(v679) = 257;
  *(v15 + 781) = llvm::IRBuilderBase::CreateAdd((v431 + 1712), v432, v420, v677);
  v433 = *(v15 + 1315);
  v434 = *(v15 + *(*v15 - 24) + 4584);
  v435 = llvm::ConstantInt::get();
  *(v15 + 782) = v435;
  v436 = v60[1212];
  if (v60[1212])
  {
    v437 = v607;
  }

  else
  {
    v437 = v610;
  }

  *(v15 + 783) = v437;
  if (v436 == 1)
  {
    v438 = v15 + *(*v15 - 24);
    LOWORD(v679) = 257;
    v435 = llvm::IRBuilderBase::CreateMul((v438 + 1712), v435, v616, v677);
  }

  v439 = v15 + 5448;
  *(v15 + 784) = v435;
  v440 = *(v15 + 1315);
  if (!v440)
  {
LABEL_470:
    if (!v59)
    {
      goto LABEL_472;
    }

    goto LABEL_471;
  }

  if (v60[1212] == 1)
  {
    *(v15 + 1314) += v440;
    goto LABEL_470;
  }

  *v605 += v440;
  if (v59)
  {
LABEL_471:
    v441 = v15 + *(*v15 - 24);
    v442 = *(v15 + 681);
    v443 = *(v15 + 683);
    v444 = *(v15 + 682);
    LOWORD(v679) = 257;
    v445 = llvm::IRBuilderBase::CreateMul((v441 + 1712), v443, v444, v677);
    LOWORD(v675) = 257;
    v446 = llvm::IRBuilderBase::CreateAdd((v441 + 1712), v442, v445, &v671);
    AGCLLVMUserVertexShader::replaceOutputUses(v15, v59, v446, 0, v60[1212], 4u);
  }

LABEL_472:
  v447 = *(v15 + 1142);
  if (v447)
  {
    v448 = 0;
    v606 = 0;
    v608 = 0;
    v611 = 0;
    v449 = 0;
    v450 = *(v15 + 570);
    v601 = v450 + (v447 << 6);
    do
    {
      if (v612[1000] == 1)
      {
        v451 = *(v450 + 56);
      }

      else
      {
        v451 = 0;
      }

      v452 = *(v450 + 16);
      if (v669)
      {
        v453 = v668;
        v454 = v669;
        do
        {
          v455 = v454 >> 1;
          v456 = &v453[2 * (v454 >> 1)];
          v458 = *v456;
          v457 = v456 + 4;
          v454 += ~(v454 >> 1);
          if (v458 < v452)
          {
            v453 = v457;
          }

          else
          {
            v454 = v455;
          }
        }

        while (v454);
      }

      else
      {
        v453 = v668;
      }

      if (v453 != (v668 + 16 * v669) && *v453 == v452)
      {
        v617 = v449;
        v459 = *(*v15 - 24);
        v614 = *(v450 + 60);
        v460 = &v439[32 * v614];
        v462 = v460[1];
        v461 = v460[2];
        v463 = *v460;
        LOWORD(v679) = 257;
        v464 = llvm::IRBuilderBase::CreateMul(&v602[v459], v461, v462, v677);
        LOWORD(v675) = 257;
        v465 = llvm::IRBuilderBase::CreateAdd(&v602[v459], v463, v464, &v671);
        v466 = v453[1];
        if ((v451 & 1) == 0)
        {
          v469 = v15 + *(*v15 - 24);
          v470 = *(v450 + 52);
          v471 = *(v469 + 573);
          v472 = llvm::ConstantInt::get();
          LOWORD(v679) = 257;
          v473 = llvm::IRBuilderBase::CreateAdd((v469 + 1712), v465, v472, v677);
          AGCLLVMUserVertexShader::replaceOutputUses(v15, v466, v473, 1, *(v450 + 57), *v450);
          goto LABEL_509;
        }

        v672 = 0;
        v673 = 0;
        v674 = 0;
        v671 = v466;
        if (*v466)
        {
          v467 = *(*v466 + 8) == 18;
        }

        else
        {
          v467 = 0;
        }

        if (!v467)
        {
          v468 = 1;
LABEL_498:
          v604 = v465;
          v474 = *(v450 + 52);
          v475 = v468;
          v476 = &v671;
          while (2)
          {
            v477 = v618;
            v478 = v618 + *(*v618 - 24);
            v479 = *(v478 + 573);
            v480 = llvm::ConstantInt::get();
            LOWORD(v679) = 257;
            v482 = llvm::IRBuilderBase::CreateAdd((v478 + 1712), v465, v480, v677);
            v483 = *v476;
            v484 = *(v450 + 57);
            if (v617)
            {
              v485 = *(*v618 - 24);
              if (v448 == v614 && v606 == (v474 & 0xFFFFFFFE))
              {
                v486 = &v603[v485];
                LOWORD(v679) = 257;
                v487 = *&v603[v485 + 200];
                v488 = llvm::ConstantInt::get();
                InsertElement = llvm::IRBuilderBase::CreateInsertElement((v486 + 8), v617, v483, v488, v677);
                if (InsertElement)
                {
                  v490 = v618 + *(*v618 - 24);
                  v491 = *(v490 + 238);
                  LOWORD(v679) = 257;
                  v492 = llvm::IRBuilderBase::CreateCast((v490 + 1712), 49, InsertElement, v491, v677);
                  AGCLLVMUserVertexShader::replaceOutputUses(v618, v492, v611, 1, v608 & 1, 4u);
                  v617 = 0;
                  v611 = 0;
                }

                else
                {
                  v617 = 0;
                }

LABEL_506:
                v465 = v604;
                ++v474;
                ++v476;
                v448 = v614;
                if (!--v475)
                {
                  v448 = v614;
                  v15 = v618;
                  v439 = v598;
                  goto LABEL_509;
                }

                continue;
              }

              v477 = v618;
              v493 = v618 + v485;
              v494 = *(v493 + 238);
              LOWORD(v679) = 257;
              v495 = llvm::IRBuilderBase::CreateCast((v493 + 1712), 49, v617, v494, v677);
              AGCLLVMUserVertexShader::replaceOutputUses(v618, v495, v611, 1, v608 & 1, 4u);
            }

            break;
          }

          v496 = (v477 + *(*v477 - 24));
          v497 = llvm::Constant::getNullValue(v496[240], v481);
          LOWORD(v679) = 257;
          v498 = v496[238];
          v499 = llvm::ConstantInt::get();
          v617 = llvm::IRBuilderBase::CreateInsertElement((v496 + 214), v497, v483, v499, v677);
          v611 = v482;
          v608 = v484;
          v606 = v474;
          goto LABEL_506;
        }

        if (*v450 >= *(*v466 + 32))
        {
          v468 = *(*v466 + 32);
        }

        else
        {
          v468 = *v450;
        }

        AGCLLVMBuilder::unboxVector(&v603[*(*v15 - 24)], v466, &v671);
        if (v468)
        {
          goto LABEL_498;
        }

LABEL_509:
        v449 = v617;
      }

      v450 += 64;
    }

    while (v450 != v601);
    v60 = v612;
    if (v449)
    {
      v500 = v15 + *(*v15 - 24);
      v501 = *(v500 + 238);
      LOWORD(v679) = 257;
      v502 = llvm::IRBuilderBase::CreateCast((v500 + 1712), 49, v449, v501, v677);
      AGCLLVMUserVertexShader::replaceOutputUses(v15, v502, v611, 1, v608 & 1, 4u);
    }
  }

  v503 = *v15;
  if (*(v15 + 1352))
  {
    v504 = *v15;
    v505 = (v15 + *(v503 - 24));
    if (*(v505[271] + 1849) == 1)
    {
      v506 = v505[220];
      v507 = v505[221];
      v677[0] = "return_block";
      LOWORD(v679) = 259;
      llvm::BasicBlock::splitBasicBlock();
      v508 = *(v15 + *(*v15 - 24) + 2160);
      v677[0] = "tf_write_block";
      LOWORD(v679) = 259;
      v509 = *(v506 + 56);
      operator new();
    }
  }

  llvm::IRBuilderBase::SetInsertPoint((v15 + *(v503 - 24) + 1712), v600);
  if (v60[1152] == 1)
  {
    v510 = (*(*v15 + 552))(v15, v595);
    v511 = *v510;
    v512 = llvm::ConstantFP::get();
    v513 = v15 + *(*v15 - 24);
    v514 = *(v513 + 271);
    v619 = *(v513 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v620, (v513 + 1712));
    v621 = *(v513 + 452);
    v515 = (*(*v514 + 48))(v514, &v619, v510, v512, 0);
    if (v620)
    {
      llvm::MetadataTracking::untrack();
    }

    v516 = v15 + *(*v15 - 24);
    v517 = *(v15 + 769);
    v518 = *(v15 + 771);
    v519 = *(v15 + 770);
    LOWORD(v679) = 257;
    v520 = llvm::IRBuilderBase::CreateMul((v516 + 1712), v518, v519, v677);
    LOWORD(v675) = 257;
    v521 = llvm::IRBuilderBase::CreateAdd((v516 + 1712), v517, v520, &v671);
    AGCLLVMUserVertexShader::replaceOutputUses(v15, v515, v521, 2, v60[1213], 4u);
  }

  v522 = *v15;
  v523 = (v15 + *(*v15 - 24));
  v524 = v523[271];
  if (*(v524 + 1862) == 1)
  {
    if ((v60[1153] & 1) != 0 || v60[1154] == 1)
    {
      v525 = v523[238];
      v526 = llvm::ConstantInt::get();
      if (v60[1153] == 1)
      {
        v527 = v15 + *(*v15 - 24);
        v528 = *(v527 + 238);
        if (*NullValue == v528)
        {
          v545 = *(v527 + 238);
          v546 = llvm::ConstantInt::get();
          v529 = AGCLLVMBuilder::buildICmpSel(v527 + 213, NullValue, v546, 36);
        }

        else
        {
          LOWORD(v679) = 257;
          v529 = llvm::IRBuilderBase::CreateCast((v527 + 1712), 39, NullValue, v528, v677);
        }

        v547 = v529;
        v548 = AGCLLVMUserVertexShader::getDriverGlobalConstant(v15, 0x6Cu);
        v549 = v15 + *(*v15 - 24);
        LOWORD(v679) = 257;
        Shl = llvm::IRBuilderBase::CreateShl((v549 + 1712), v547, v548, v677);
        v551 = v15 + *(*v15 - 24);
        LOWORD(v679) = 257;
        v552 = *Shl;
        v553 = llvm::ConstantInt::get();
        v526 = llvm::IRBuilderBase::CreateShl((v551 + 1712), Shl, v553, v677);
      }

      v554 = v526;
      if (v60[1154] == 1)
      {
        v555 = v15 + *(*v15 - 24);
        v556 = *(v555 + 238);
        if (*v597 == v556)
        {
          v558 = *(v555 + 238);
          v559 = llvm::ConstantInt::get();
          v557 = AGCLLVMBuilder::buildICmpSel(v555 + 213, v597, v559, 36);
        }

        else
        {
          LOWORD(v679) = 257;
          v557 = llvm::IRBuilderBase::CreateCast((v555 + 1712), 39, v597, v556, v677);
        }

        v560 = v557;
        v561 = AGCLLVMUserVertexShader::getDriverGlobalConstant(v15, 0x6Cu);
        v562 = v15 + *(*v15 - 24);
        LOWORD(v679) = 257;
        v563 = llvm::IRBuilderBase::CreateAnd((v562 + 1712), v560, v561, v677);
        v564 = v15 + *(*v15 - 24);
        LOWORD(v679) = 257;
        v565 = *v563;
        v566 = llvm::ConstantInt::get();
        v567 = llvm::IRBuilderBase::CreateShl((v564 + 1712), v563, v566, v677);
        v568 = v15 + *(*v15 - 24);
        LOWORD(v679) = 257;
        v569 = llvm::IRBuilderBase::CreateAdd((v568 + 1712), v554, v567, v677);
        v570 = v15 + *(*v15 - 24);
        LOWORD(v679) = 257;
        v554 = llvm::IRBuilderBase::CreateOr((v570 + 1712), v569, v560, v677);
      }

      v571 = v15 + *(*v15 - 24);
      v572 = *(v15 + 773);
      v573 = *(v15 + 775);
      v574 = *(v15 + 774);
      LOWORD(v679) = 257;
      v575 = llvm::IRBuilderBase::CreateMul((v571 + 1712), v573, v574, v677);
      LOWORD(v675) = 257;
      v540 = llvm::IRBuilderBase::CreateAdd((v571 + 1712), v572, v575, &v671);
      if (v60[1214])
      {
        v576 = 1;
      }

      else
      {
        v576 = v60[1215];
      }

      v541 = v576 & 1;
      v542 = v15;
      v543 = v554;
      v544 = 4;
LABEL_545:
      AGCLLVMUserVertexShader::replaceOutputUses(v542, v543, v540, v544, v541, 4u);
    }
  }

  else
  {
    if (*(v524 + 1860) == 1 && v60[1153] == 1)
    {
      v530 = *(v15 + 773);
      v531 = *(v15 + 775);
      v532 = *(v15 + 774);
      LOWORD(v679) = 257;
      v533 = llvm::IRBuilderBase::CreateMul((v523 + 214), v531, v532, v677);
      LOWORD(v675) = 257;
      v534 = llvm::IRBuilderBase::CreateAdd((v523 + 214), v530, v533, &v671);
      AGCLLVMUserVertexShader::replaceOutputUses(v15, NullValue, v534, 4, v60[1214], 4u);
      v522 = *v15;
    }

    v535 = v15 + *(v522 - 24);
    if (*(*(v535 + 271) + 1861) == 1 && v60[1154] == 1)
    {
      v536 = *(v15 + 777);
      v537 = *(v15 + 779);
      v538 = *(v15 + 778);
      LOWORD(v679) = 257;
      v539 = llvm::IRBuilderBase::CreateMul((v535 + 1712), v537, v538, v677);
      LOWORD(v675) = 257;
      v540 = llvm::IRBuilderBase::CreateAdd((v535 + 1712), v536, v539, &v671);
      v541 = v60[1215];
      v542 = v15;
      v543 = v597;
      v544 = 5;
      goto LABEL_545;
    }
  }

  v577 = 0;
  v578 = 0;
  v579 = 1;
  do
  {
    if ((*(v15 + 1316) & v579) != 0)
    {
      v580 = *(v15 + *(*v15 - 24) + 4584);
      v581 = llvm::ConstantInt::get();
      v582 = *(*v15 - 24);
      v583 = *(v15 + 781);
      v584 = *(v15 + 783);
      v585 = *(v15 + 782);
      LOWORD(v679) = 257;
      v586 = llvm::IRBuilderBase::CreateMul(&v602[v582], v584, v585, v677);
      LOWORD(v675) = 257;
      v587 = llvm::IRBuilderBase::CreateAdd(&v602[v582], v583, v586, &v671);
      LOWORD(v627) = 257;
      v588 = llvm::IRBuilderBase::CreateAdd(&v602[v582], v581, v587, &v623);
      AGCLLVMUserVertexShader::replaceOutputUses(v15, *(v664 + v577), v588, 3, v612[1212], 4u);
      ++v578;
    }

    v579 *= 2;
    v577 += 8;
  }

  while (v577 != 64);
  if (v594)
  {
    EraseInstructionChain(v594);
  }

  v589 = v600 + 3;
  if (!v600)
  {
    v589 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint(v15 + *(*v15 - 24) + 1712, v600[5], v589[1]);
  llvm::Instruction::eraseFromParent(v600);
  llvm::Function::eraseFromParent(v593);
  v590 = 384;
  do
  {
    if (*(&v625 + v590 + 7) < 0)
    {
      operator delete(*(&v623 + v590));
    }

    v590 -= 96;
  }

  while (v590);
  v78 = 1;
LABEL_559:
  if (v662[0] != v663)
  {
    free(v662[0]);
  }

  if (v665 != v667)
  {
    free(v665);
  }

  if (v668 != v670)
  {
    free(v668);
  }

  v591 = *MEMORY[0x277D85DE8];
  return v78;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::append(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 + a2 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v3 = 0;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = (*result + 4 * v2 + 8);
    do
    {
      v6 = vdupq_n_s64(v3);
      v7 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_20E70C4F0)));
      if (vuzp1_s16(v7, *v4.i8).u8[0])
      {
        *(v5 - 2) = -1;
      }

      if (vuzp1_s16(v7, *&v4).i8[2])
      {
        *(v5 - 1) = -1;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_20E70C4E0)))).i32[1])
      {
        *v5 = -1;
        v5[1] = -1;
      }

      v3 += 4;
      v5 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v3);
    LODWORD(v2) = *(result + 8);
  }

  *(result + 8) = v2 + a2;
  return result;
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v13 = v12;
  v14 = *(*(a2 + 16) + 8 * a3);
  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), v14, &v18);
  if ((*(v14 + 2) & 0xFE) == 0x12)
  {
    v16 = *(v14 + 8);
  }

  else
  {
    v16 = 1;
  }

  return AGCLLVMAGPVertexShader::getGenericVaryingInfo(a1, ComponentType, v16, String, v13, a5, a6);
}

uint64_t AGCLLVMBuilder::getComponentType(int8x16_t *this, const llvm::Type *a2, unsigned int *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *a3 = 1;
  if ((*(a2 + 2) & 0xFE) == 0x12)
  {
    *a3 = *(a2 + 8);
    a2 = **(a2 + 2);
  }

  result = 0;
  v5 = this[9].i64[1];
  v6 = this[11].i64[0];
  v8[0] = this[10].i64[1];
  v8[1] = v5;
  v8[2] = v6;
  v9 = vextq_s8(this[12], this[12], 8uLL);
  v10 = this[11].i64[1];
  while (a2 != v8[result])
  {
    if (++result == 6)
    {
      result = 10;
      break;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(uint64_t a1, int a2, int a3, void *a4, size_t a5, uint64_t a6, int a7)
{
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v15 = Key;
  if (Key == *(a1 + 9800))
  {
    return 0;
  }

  v16 = *(a1 + 9792);
  v17 = *(*(v16 + 8 * Key) + 8);
  if (a2 != BYTE2(v17))
  {
    return 0;
  }

  if ((HIBYTE(v17) & 0x7F) != a3)
  {
    a3 = HIBYTE(v17) & 0x7F;
    if (*(a1 + 10417) != 1)
    {
      return 0;
    }
  }

  v18 = *(a1 + 9828) + 1;
  *(a1 + 9828) = v18;
  GenericVarying::GenericVarying(&v21, a3, a2, v17 & 0xF, BYTE1(v17), v18, a7);
  *a6 = v21;
  *(a6 + 16) = v22;
  if (*(a6 + 47) < 0)
  {
    operator delete(*(a6 + 24));
  }

  *(a6 + 24) = v23;
  *(a6 + 40) = v24;
  *(a6 + 48) = v25;
  if (a4)
  {
    std::string::basic_string[abi:nn200100](&v21, a4, a5);
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
  }

  if (*(a6 + 47) < 0)
  {
    operator delete(*(a6 + 24));
  }

  *(a6 + 24) = v21;
  *(a6 + 40) = v22;
  v20 = *(v16 + 8 * v15);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v20, (*v20 + 17));
  return 1;
}

uint64_t AGCLLVMAGPVertexShader::isPointSizePresent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 9826);
  }

  return v2 & 1;
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5)
{
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v11 = Key;
  if (Key == *(a1 + 9800))
  {
    return 0;
  }

  v12 = *(a1 + 9792);
  v13 = *(*(v12 + 8 * Key) + 10);
  if ((v13 - 2) > 3)
  {
    return 0;
  }

  v14 = *(a1 + 9828) + 1;
  *(a1 + 9828) = v14;
  if (a5)
  {
    v15 = 11;
  }

  else
  {
    v15 = 2;
  }

  *a4 = 1;
  *(a4 + 4) = v13;
  *(a4 + 8) = 0x300000001;
  *(a4 + 16) = v14;
  if (*(a4 + 47) < 0)
  {
    operator delete(*(a4 + 24));
  }

  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 57) = a5;
  *(a4 + 58) = 0;
  *(a4 + 60) = v15;
  if (a2)
  {
    std::string::basic_string[abi:nn200100](&__dst, a2, a3);
    if (*(a4 + 47) < 0)
    {
      operator delete(*(a4 + 24));
    }
  }

  else
  {
    __dst = 0uLL;
    v19 = 0;
  }

  *(a4 + 24) = __dst;
  *(a4 + 40) = v19;
  v17 = *(v12 + 8 * v11);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v17, (*v17 + 17));
  return 1;
}

uint64_t AGCLLVMAGPVertexShader::getNextUnlinkedVarying(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9824) != 1)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  if (!*(a1 + 9804))
  {
    return 0;
  }

  v5 = *(a1 + 9792);
  if (*(a1 + 9800))
  {
    while (1)
    {
      v6 = *v5;
      if (*v5 && v6 + 1 != 0)
      {
        break;
      }

      ++v5;
    }
  }

  else
  {
    v6 = *v5;
  }

  v8 = *(v6 + 2);
  v9 = BYTE2(v8);
  v10 = HIBYTE(v8) & 0x7F;
  v11 = v8 & 0xF;
  v12 = BYTE1(v8);
  v13 = *(a1 + 9828) + 1;
  *(a1 + 9828) = v13;
  v14 = v9 == 1;
  if (v9 == 1)
  {
    v15 = 7;
  }

  else
  {
    v15 = 3;
  }

  if (v9 == 1)
  {
    v16 = 19;
  }

  else
  {
    v16 = 18;
  }

  if (v9 == 1)
  {
    v17 = 8;
  }

  else
  {
    v17 = 4;
  }

  if (v11 != 5)
  {
    v17 = v12;
  }

  if (v11 != 3)
  {
    v16 = v17;
  }

  if (v11 != 2)
  {
    v15 = v16;
  }

  if (v9 == 1)
  {
    v18 = 5;
  }

  else
  {
    v18 = 1;
  }

  if (v9 == 1)
  {
    v19 = 6;
  }

  else
  {
    v19 = 2;
  }

  if (v11 != 1)
  {
    v19 = v12;
  }

  if (v11)
  {
    v18 = v19;
  }

  if (v11 <= 1)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *a2 = v10;
  *(a2 + 4) = v9;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  *(a2 + 16) = v13;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 56) = v14;
  *(a2 + 57) = 0;
  *(a2 + 60) = v20;
  std::string::basic_string[abi:nn200100](&__dst, *v5 + 2, **v5);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = __dst;
  *(a2 + 40) = v24;
  v21 = *v5;
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(v21, (*v21 + 17));
  return 1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 16);
  k = v7;
  while (1)
  {
    v7 = k;
    v10 = (a2 - k) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(k, (k + 16), (a2 - 16));
        case 4:
          result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(k, (k + 16), (k + 32));
          v44 = *v8;
          v45 = *(k + 32);
          if (*v8 >= v45)
          {
            if (v45 < v44)
            {
              return result;
            }

            v47 = *(a2 - 8);
            v46 = *(k + 40);
            if (v47 >= v46)
            {
              return result;
            }
          }

          else
          {
            v46 = *(k + 40);
            v47 = *(a2 - 8);
          }

          *(k + 32) = v44;
          *(a2 - 16) = v45;
          *(k + 40) = v47;
          *(a2 - 8) = v46;
          v48 = *(k + 32);
          v49 = *(k + 16);
          if (v48 >= v49)
          {
            if (v49 < v48)
            {
              return result;
            }

            v51 = *(k + 40);
            v50 = *(k + 24);
            if (v51 >= v50)
            {
              return result;
            }
          }

          else
          {
            v50 = *(k + 24);
            v51 = *(k + 40);
          }

          *(k + 16) = v48;
          *(k + 32) = v49;
          *(k + 24) = v51;
          *(k + 40) = v50;
          v52 = *k;
          if (v48 >= *k)
          {
            if (v52 < v48)
            {
              return result;
            }

            v53 = *(k + 8);
            if (v51 >= v53)
            {
              return result;
            }
          }

          else
          {
            v53 = *(k + 8);
          }

          *k = v48;
          *(k + 16) = v52;
          *(k + 8) = v51;
          *(k + 24) = v53;
          return result;
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(k, k + 16, k + 32, k + 48, (a2 - 16));
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v54 = *v8;
        v55 = *k;
        if (*v8 >= *k)
        {
          if (v55 < v54)
          {
            return result;
          }

          v57 = *(a2 - 8);
          v56 = *(k + 8);
          if (v57 >= v56)
          {
            return result;
          }
        }

        else
        {
          v56 = *(k + 8);
          v57 = *(a2 - 8);
        }

        *k = v54;
        *(a2 - 16) = v55;
        *(k + 8) = v57;
        *(a2 - 8) = v56;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v73 = (v10 - 2) >> 1;
      v74 = v73;
      while (1)
      {
        v75 = v74;
        if (v73 >= v74)
        {
          v76 = (2 * v74) | 1;
          v77 = k + 16 * v76;
          if (2 * v75 + 2 < v10)
          {
            v78 = *(v77 + 16);
            if (*v77 < v78 || v78 >= *v77 && *(v77 + 8) < *(v77 + 24))
            {
              v77 += 16;
              v76 = 2 * v75 + 2;
            }
          }

          v79 = k + 16 * v75;
          v80 = *v77;
          v81 = *v79;
          if (*v77 >= *v79)
          {
            if (v81 < v80)
            {
              v82 = *(v79 + 8);
              v83 = *(v77 + 8);
LABEL_147:
              *v79 = v80;
              *(v79 + 8) = v83;
              if (v73 >= v76)
              {
                while (1)
                {
                  v85 = 2 * v76;
                  v76 = (2 * v76) | 1;
                  v84 = k + 16 * v76;
                  v86 = v85 + 2;
                  if (v86 < v10)
                  {
                    result = *(v84 + 16);
                    if (*v84 < result || result >= *v84 && (result = *(v84 + 8), result < *(v84 + 24)))
                    {
                      v84 += 16;
                      v76 = v86;
                    }
                  }

                  v87 = *v84;
                  if (*v84 < v81)
                  {
                    break;
                  }

                  v88 = *(v84 + 8);
                  if (v81 >= v87 && v88 < v82)
                  {
                    break;
                  }

                  *v77 = v87;
                  *(v77 + 8) = v88;
                  v77 = v84;
                  if (v73 < v76)
                  {
                    goto LABEL_149;
                  }
                }
              }

              v84 = v77;
LABEL_149:
              *v84 = v81;
              *(v84 + 8) = v82;
              goto LABEL_150;
            }

            v83 = *(v77 + 8);
            v82 = *(v79 + 8);
            if (v83 >= v82)
            {
              goto LABEL_147;
            }
          }
        }

LABEL_150:
        v74 = v75 - 1;
        if (!v75)
        {
          while (1)
          {
            v92 = 0;
            v93 = *k;
            v94 = *(k + 8);
            v95 = k;
            do
            {
              v96 = v95;
              v97 = v95 + 16 * v92;
              v95 = v97 + 16;
              v98 = 2 * v92;
              v92 = (2 * v92) | 1;
              v99 = v98 + 2;
              if (v99 < v10)
              {
                result = *(v97 + 32);
                v100 = *(v97 + 16);
                if (v100 < result || result >= v100 && (result = *(v97 + 24), result < *(v97 + 40)))
                {
                  v95 = v97 + 32;
                  v92 = v99;
                }
              }

              *v96 = *v95;
              *(v96 + 8) = *(v95 + 8);
            }

            while (v92 <= (v10 - 2) / 2);
            if (v95 == a2 - 16)
            {
              *v95 = v93;
              *(v95 + 8) = v94;
            }

            else
            {
              *v95 = *(a2 - 16);
              *(v95 + 8) = *(a2 - 8);
              *(a2 - 16) = v93;
              *(a2 - 8) = v94;
              v101 = (v95 - k + 16) >> 4;
              v102 = v101 - 2;
              if (v101 >= 2)
              {
                v103 = v102 >> 1;
                v104 = k + 16 * (v102 >> 1);
                v105 = *v104;
                v106 = *v95;
                if (*v104 < *v95)
                {
                  v91 = *(v95 + 8);
                  v90 = *(v104 + 8);
LABEL_179:
                  *v95 = v105;
                  *(v95 + 8) = v90;
                  if (v102 >= 2)
                  {
                    while (1)
                    {
                      v108 = v103 - 1;
                      v103 = (v103 - 1) >> 1;
                      v107 = k + 16 * v103;
                      v109 = *v107;
                      if (*v107 >= v106)
                      {
                        if (v106 < v109)
                        {
                          break;
                        }

                        v110 = *(v107 + 8);
                        if (v110 >= v91)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v110 = *(v107 + 8);
                      }

                      *v104 = v109;
                      *(v104 + 8) = v110;
                      v104 = k + 16 * v103;
                      if (v108 <= 1)
                      {
                        goto LABEL_186;
                      }
                    }
                  }

                  v107 = v104;
LABEL_186:
                  *v107 = v106;
                  *(v107 + 8) = v91;
                  goto LABEL_188;
                }

                if (v106 >= v105)
                {
                  v90 = *(v104 + 8);
                  v91 = *(v95 + 8);
                  if (v90 < v91)
                  {
                    goto LABEL_179;
                  }
                }
              }
            }

LABEL_188:
            a2 -= 16;
            if (v10-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = k + 16 * (v10 >> 1);
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v7 + 16 * (v10 >> 1)), v7, (a2 - 16));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(v7, (v7 + 16 * (v10 >> 1)), (a2 - 16));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v7 + 16), (v12 - 16), (a2 - 32));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v7 + 32), (v7 + 16 + 16 * v11), (a2 - 48));
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v12 - 16), v12, (v7 + 16 + 16 * v11));
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
      v14 = *(v7 + 8);
      *(v7 + 8) = *(v12 + 8);
      *(v12 + 8) = v14;
    }

    --a3;
    v15 = *v7;
    if ((a4 & 1) != 0 || (v16 = *(v7 - 16), v16 < v15))
    {
LABEL_19:
      v18 = *(v7 + 8);
      for (i = v7 + 16; ; i += 16)
      {
        v20 = *i;
        if (*i >= v15 && (v15 < v20 || *(i + 8) >= v18))
        {
          break;
        }
      }

      if (i - 16 == v7)
      {
        j = a2;
        if (i < a2)
        {
          v24 = *v8;
          j = a2 - 16;
          if (*v8 >= v15)
          {
            j = a2 - 16;
            do
            {
              if (v15 >= v24)
              {
                if (*(j + 8) < v18 || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v26 = *(j - 16);
              j -= 16;
              v24 = v26;
            }

            while (v26 >= v15);
          }
        }
      }

      else
      {
        v21 = *v8;
        for (j = a2 - 16; v21 >= v15 && (v15 < v21 || *(j + 8) >= v18); j -= 16)
        {
          v23 = *(j - 16);
          v21 = v23;
        }
      }

      k = i;
      if (i < j)
      {
        v27 = *j;
        k = i;
        v28 = j;
        do
        {
          *k = v27;
          *v28 = v20;
          v29 = *(k + 8);
          *(k + 8) = *(v28 + 8);
          *(v28 + 8) = v29;
          do
          {
            do
            {
              v30 = *(k + 16);
              k += 16;
              v20 = v30;
            }

            while (v30 < v15);
          }

          while (v15 >= v20 && *(k + 8) < v18);
          do
          {
            v31 = *(v28 - 16);
            v28 -= 16;
            v27 = v31;
          }

          while (v31 >= v15 && (v15 < v27 || *(v28 + 8) >= v18));
        }

        while (k < v28);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      *(k - 16) = v15;
      *(k - 8) = v18;
      if (i < j)
      {
LABEL_56:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,false>(v7, k - 16, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v32 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *>(v7, k - 16);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *>(k, a2);
        if (result)
        {
          a2 = k - 16;
          if (v32)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v32)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v15 < v16)
      {
        v17 = *(v7 + 8);
      }

      else
      {
        v17 = *(v7 + 8);
        if (*(v7 - 8) < v17)
        {
          goto LABEL_19;
        }
      }

      v33 = *v8;
      if (v15 < *v8 || v33 >= v15 && v17 < *(a2 - 8))
      {
        k = v7;
        do
        {
          v35 = *(k + 16);
          k += 16;
          v34 = v35;
        }

        while (v15 >= v35 && (v34 < v15 || v17 >= *(k + 8)));
      }

      else
      {
          ;
        }
      }

      m = a2;
      if (k < a2)
      {
        for (m = a2 - 16; v15 < v33 || v33 >= v15 && v17 < *(m + 8); m -= 16)
        {
          v37 = *(m - 16);
          v33 = v37;
        }
      }

      if (k < m)
      {
        v38 = *k;
        v39 = *m;
        do
        {
          *k = v39;
          *m = v38;
          v40 = *(k + 16);
          k += 16;
          v38 = v40;
          v41 = *(k - 8);
          *(k - 8) = *(m + 8);
          *(m + 8) = v41;
          while (v15 >= v38 && (v38 < v15 || v17 >= *(k + 8)))
          {
            v42 = *(k + 16);
            k += 16;
            v38 = v42;
          }

          do
          {
            do
            {
              v43 = *(m - 16);
              m -= 16;
              v39 = v43;
            }

            while (v15 < v43);
          }

          while (v39 >= v15 && v17 < *(m + 8));
        }

        while (k < m);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      a4 = 0;
      *(k - 16) = v15;
      *(k - 8) = v17;
    }
  }

  v58 = k + 16;
  v60 = k == a2 || v58 == a2;
  if ((a4 & 1) == 0)
  {
    if (v60)
    {
      return result;
    }

    while (1)
    {
      v112 = v7;
      v7 = v58;
      v113 = *(v112 + 16);
      v114 = *v112;
      if (v113 < *v112)
      {
        break;
      }

      if (v114 >= v113)
      {
        v115 = *(v112 + 24);
        if (v115 < *(v112 + 8))
        {
          goto LABEL_200;
        }
      }

LABEL_206:
      v58 = v7 + 16;
      if (v7 + 16 == a2)
      {
        return result;
      }
    }

    v115 = *(v112 + 24);
    do
    {
      do
      {
LABEL_200:
        v116 = v112;
        v117 = v114;
        v118 = *(v112 - 16);
        v112 -= 16;
        v114 = v118;
        *(v112 + 32) = v117;
        *(v112 + 40) = *(v112 + 24);
      }

      while (v113 < v118);
    }

    while (v114 >= v113 && v115 < *(v116 - 8));
    *v116 = v113;
    *(v116 + 8) = v115;
    goto LABEL_206;
  }

  if (v60)
  {
    return result;
  }

  v61 = 0;
  v62 = k;
  while (2)
  {
    v63 = v62;
    v62 = v58;
    v64 = *(v63 + 16);
    v65 = *v63;
    if (v64 >= *v63)
    {
      if (v65 < v64)
      {
        goto LABEL_133;
      }

      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
      if (v66 >= v67)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
    }

    *(v63 + 16) = v65;
    *(v62 + 8) = v67;
    v68 = k;
    if (v63 == k)
    {
      goto LABEL_132;
    }

    v69 = v61;
    while (2)
    {
      v70 = *(k + v69 - 16);
      if (v64 < v70)
      {
        v71 = *(k + v69 - 8);
        goto LABEL_126;
      }

      if (v70 >= v64)
      {
        v68 = k + v69;
        v71 = *(k + v69 - 8);
        if (v66 >= v71)
        {
          goto LABEL_132;
        }

LABEL_126:
        v63 -= 16;
        v72 = k + v69;
        *v72 = v70;
        *(v72 + 8) = v71;
        v69 -= 16;
        if (!v69)
        {
          v68 = k;
          goto LABEL_132;
        }

        continue;
      }

      break;
    }

    v68 = v63;
LABEL_132:
    *v68 = v64;
    *(v68 + 8) = v66;
LABEL_133:
    v58 = v62 + 16;
    v61 += 16;
    if (v62 + 16 != a2)
    {
      continue;
    }

    return result;
  }
}

unsigned int *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 < *result || v4 >= v3 && *(a2 + 1) < *(result + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *result = v5;
      *a3 = v4;
      v7 = *(result + 1);
      *(result + 1) = v6;
      *(a3 + 1) = v7;
      return result;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v15 = *(a2 + 1);
      if (v6 < v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *(a2 + 1);
    }

    *result = v3;
    *a2 = v4;
    v16 = *(result + 1);
    *(result + 1) = v15;
    *(a2 + 1) = v16;
    v17 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v17)
      {
        return result;
      }

      v18 = *(a3 + 1);
      if (v18 >= v16)
      {
        return result;
      }
    }

    else
    {
      v18 = *(a3 + 1);
    }

    *a2 = v17;
    *a3 = v4;
    *(a2 + 1) = v18;
    *(a3 + 1) = v16;
    return result;
  }

  v8 = *a3;
  if (*a3 >= v3)
  {
    if (v3 < v8)
    {
      return result;
    }

    v10 = *(a3 + 1);
    v9 = *(a2 + 1);
    if (v10 >= v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
  }

  *a2 = v8;
  *a3 = v3;
  *(a2 + 1) = v10;
  *(a3 + 1) = v9;
  v11 = *a2;
  v12 = *result;
  if (*a2 < *result)
  {
    v13 = *(result + 1);
    v14 = *(a2 + 1);
LABEL_11:
    *result = v11;
    *a2 = v12;
    *(result + 1) = v14;
    *(a2 + 1) = v13;
    return result;
  }

  if (v12 >= v11)
  {
    v14 = *(a2 + 1);
    v13 = *(result + 1);
    if (v14 < v13)
    {
      goto LABEL_11;
    }
  }

  return result;
}