void AGXIotoInstruction_LDIMM_3::AGXIotoInstruction_LDIMM_3(AGXIotoInstruction_LDIMM_3 *this, const unsigned __int8 *a2)
{
  *(this + 16) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 105;
  v2 = *(a2 + 1);
  *(this + 16) = (4 * *(a2 + 4)) & 0xFC3FFFFF | ((*(a2 + 3) & 0xF) << 22) | a2[1] & 3 | (((v2 >> 2) & 1) << 30) & 0x43C3FFFF | ((v2 >> 5) << 31) | (v2 >> 13 << 19) & 0xC3FBFFFF | ((*(a2 + 2) & 7) << 26) & 0xDFFBFFFF | (((*(a2 + 2) >> 11) & 1) << 29) | (((*(a2 + 2) >> 15) & 1) << 18);
  *this = (a2[6] & 0x10) != 0;
  v3 = *a2;
  *(this + 24) = (*a2 & 0x400) != 0;
  LOBYTE(v2) = (*a2 >> 10) & 2 | ((v3 & 0x400) != 0);
  *(this + 24) = v2;
  LOBYTE(v3) = v2 | (*a2 >> 10) & 4;
  *(this + 24) = v3;
  LOBYTE(v3) = v3 | (*a2 >> 10) & 8;
  *(this + 24) = v3;
  LOBYTE(v3) = v3 | (*a2 >> 10) & 0x10;
  *(this + 24) = v3;
  LOBYTE(v3) = v3 | (*(a2 + 3) >> 10) & 0x20;
  *(this + 24) = v3;
  LOBYTE(v3) = v3 | a2[2] & 0x40;
  *(this + 24) = v3;
  *(this + 24) = v3 | (16 * *a2) & 0x80;
  v4 = *(a2 + 1);
  if ((v4 & 0x200) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(this + 12) = v5;
  v6 = *a2;
  v7 = (v6 >> 5) & 3;
  if (v7 > 1)
  {
    if (v7 == 3)
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

  else
  {
    if (v7)
    {
      goto LABEL_10;
    }

    v8 = 2;
  }

  *(this + 1) = v8;
LABEL_10:
  v9 = *(a2 + 2);
  v10 = (v9 >> 5) & 3;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_17;
    }

    v11 = 1;
  }

  else if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 2;
  }

  *(this + 2) = v11;
LABEL_17:
  v12 = *(a2 + 3);
  v13 = (v12 >> 5) & 3;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_24;
    }

    v14 = 1;
  }

  else if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  *(this + 3) = v14;
LABEL_24:
  v15 = (v12 >> 7) & 3;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_31;
    }

    v16 = 1;
  }

  else if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  *(this + 4) = v16;
LABEL_31:
  v17 = (v12 >> 9) & 3;
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_38;
    }

    v18 = 1;
  }

  else if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  *(this + 5) = v18;
LABEL_38:
  if ((v4 & 0x800) == 0)
  {
    *(this + 52) &= ~1u;
    *(this + 15) = 0;
    *(this + 11) = 4;
    v19 = *(this + 9) | (*(a2 + 3) >> 9) & 0xC | HIBYTE(*(a2 + 3)) & 0x20 | (*(a2 + 3) >> 5) & 0x200 | (*a2 >> 3) & 0x12 | (((*(a2 + 1) >> 3) & 3) << 7) & 0x3FF | (*(a2 + 1) >> 1) & 0x40 | HIBYTE(*(a2 + 1)) & 1 | (((*(a2 + 1) >> 10) & 1) << 15) | (((*(a2 + 2) >> 3) & 3) << 10) & 0x8FFF | (((*(a2 + 2) >> 7) & 7) << 12) | (((*(a2 + 2) >> 10) & 1) << 16);
    *(this + 8) = 1;
    *(this + 9) = v19;
    v20 = (*(a2 + 2) >> 12) & 7;
    if (v20 <= 3)
    {
      if (((*(a2 + 2) >> 12) & 7u) <= 1)
      {
        if (!v20)
        {
          *(this + 14) = 0;
          return;
        }

LABEL_58:
        v20 = 1;
LABEL_59:
        *(this + 14) = v20;
        return;
      }

      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if ((v4 & 0x1000) == 0)
  {
    *(this + 52) &= ~1u;
    *(this + 11) = 5;
    *(this + 8) = 1;
    *(this + 18) |= (*a2 >> 3) & 0x12 | (((*(a2 + 1) >> 3) & 3) << 7) & 0xE3FF | (*(a2 + 1) >> 1) & 0x40 | HIBYTE(*(a2 + 1)) & 1 | (((*(a2 + 2) >> 3) & 3) << 10) & 0xEFFF | (((*(a2 + 2) >> 7) & 1) << 12) | (*(a2 + 3) >> 9) & 0xC | HIBYTE(*(a2 + 3)) & 0x20 | (*(a2 + 3) >> 5) & 0x200;
    v21 = *(a2 + 2);
    *(this + 15) |= (v21 >> 12) & 1;
    v20 = (v21 >> 8) & 7;
    if (v20 <= 3)
    {
      if (v20 <= 1)
      {
        if (!v20)
        {
          *(this + 14) = 0;
          return;
        }

        goto LABEL_58;
      }

LABEL_53:
      if (v20 != 2)
      {
        *(this + 14) = 3;
        return;
      }

      goto LABEL_59;
    }

LABEL_48:
    if (v20 > 5)
    {
      if (v20 != 6)
      {
        *(this + 14) = 7;
        return;
      }
    }

    else if (v20 != 4)
    {
      *(this + 14) = 5;
      return;
    }

    goto LABEL_59;
  }

  if ((v9 & 0x10) != 0)
  {
    *(this + 52) &= ~1u;
    *(this + 7) = 8;
    *(this + 11) = 3;
    *(this + 8) = 1;
    *(this + 18) |= (*a2 >> 3) & 0x12 | (((*(a2 + 1) >> 3) & 3) << 7) | (*(a2 + 1) >> 1) & 0x40 | HIBYTE(*(a2 + 1)) & 1 | (*(a2 + 3) >> 9) & 0xC | HIBYTE(*(a2 + 3)) & 0x20;
  }

  else
  {
    *(this + 7) = 8;
    *(this + 11) = 2;
    *(this + 8) = 3;
    *(this + 18) |= (v4 >> 1) & 0x40 | (((v4 >> 3) & 3) << 7) | (v4 >> 8) & 1 | (v6 >> 3) & 0x12 | (v12 >> 9) & 0xC | (v12 >> 8) & 0x20;
    *(this + 52) |= (a2[4] & 8) != 0;
  }
}

void AGXIotoInstruction_LDIMM_2::AGXIotoInstruction_LDIMM_2(AGXIotoInstruction_LDIMM_2 *this, const unsigned __int8 *a2)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 14) = 8;
  *(this + 28) = 0x300000069;
  *(this + 18) = (*a2 >> 3) & 0x1E | (*(a2 + 1) >> 2) & 1 | (((*(a2 + 1) >> 3) & 3) << 7) | (*(a2 + 1) >> 1) & 0x60;
  *(this + 16) = (a2[1] | (*(a2 + 1) << 16)) & 0xFE00007F | (((*(a2 + 2) >> 1) & 0xF) << 7) & 0xFE0007FF | (((*(a2 + 2) >> 10) & 3) << 11) & 0xFE001FFF | ((*(a2 + 3) & 0xFFF) << 13);
  *(this + 52) = (a2[2] & 0x20) != 0;
  *this = a2[4] & 1;
  v2 = (*(a2 + 3) >> 10) & 0x20;
  *(this + 24) = v2;
  v3 = (*(a2 + 3) >> 10) & 0x10 | v2;
  *(this + 24) = v3;
  v4 = v3 | (*(a2 + 3) >> 10) & 8;
  *(this + 24) = v4;
  v5 = v4 | (*(a2 + 2) >> 13) & 4;
  *(this + 24) = v5;
  v6 = v5 | (*(a2 + 2) >> 13) & 2;
  *(this + 24) = v6;
  *(this + 24) = v6 & 0xFE | ((*(a2 + 2) & 0x2000) != 0);
  if ((*a2 & 8) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  *(this + 11) = 2;
  *(this + 12) = v7;
  switch((*(a2 + 2) >> 5) & 0x1F)
  {
    case 1:
      *(this + 1) = 0;
      *(this + 2) = 0;
      *(this + 1) = 1;
      break;
    case 2:
      *(this + 1) = 0;
      *(this + 2) = 0;
      *(this + 1) = 2;
      break;
    case 3:
      *(this + 4) = xmmword_29D2F1B30;
      break;
    case 4:
      *(this + 4) = xmmword_29D2F1B20;
      break;
    case 5:
      *(this + 4) = xmmword_29D2F1B10;
      break;
    case 6:
      *(this + 4) = xmmword_29D2F1B00;
      break;
    case 7:
      *(this + 4) = xmmword_29D2F1AF0;
      break;
    case 8:
      *(this + 4) = xmmword_29D2F1AE0;
      break;
    case 9:
      *(this + 4) = xmmword_29D2F1AD0;
      break;
    case 0xA:
      *(this + 4) = xmmword_29D2F1AC0;
      break;
    case 0xB:
      *(this + 4) = xmmword_29D2F1AB0;
      break;
    case 0xC:
      *(this + 4) = xmmword_29D2F1AA0;
      break;
    case 0xD:
      *(this + 4) = xmmword_29D2F1A90;
      break;
    case 0xE:
      *(this + 4) = xmmword_29D2F1A80;
      break;
    case 0xF:
      *(this + 4) = xmmword_29D2F1A70;
      break;
    case 0x10:
      *(this + 4) = xmmword_29D2F1A60;
      break;
    case 0x11:
      *(this + 4) = xmmword_29D2F1A50;
      break;
    case 0x12:
      *(this + 4) = xmmword_29D2F1A40;
      break;
    case 0x13:
      *(this + 4) = xmmword_29D2F1A30;
      break;
    case 0x14:
      *(this + 4) = xmmword_29D2F1A20;
      break;
    case 0x15:
      *(this + 4) = xmmword_29D2F1A10;
      break;
    case 0x16:
      *(this + 4) = xmmword_29D2F1A00;
      break;
    case 0x17:
      *(this + 4) = xmmword_29D2F19F0;
      break;
    case 0x18:
      *(this + 4) = xmmword_29D2F19E0;
      break;
    case 0x19:
      *(this + 4) = xmmword_29D2F19D0;
      break;
    case 0x1A:
      *(this + 4) = xmmword_29D2F19C0;
      break;
    case 0x1B:
      *(this + 4) = xmmword_29D2F17E0;
      break;
    case 0x1C:
      *(this + 4) = xmmword_29D2F19B0;
      break;
    case 0x1D:
      *(this + 4) = xmmword_29D2F19A0;
      break;
    case 0x1E:
      *(this + 4) = xmmword_29D2F1990;
      break;
    case 0x1F:
      *(this + 4) = xmmword_29D2F1980;
      break;
    default:
      *(this + 12) = 0;
      *(this + 4) = 0;
      *(this + 5) = 0;
      break;
  }
}

double AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::patchCDMControlStreamAndReset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2 + 24576;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 56);
    *a3 = WORD2(v9) | 0x20000000;
    *(a3 + 4) = v9;
    *(a3 + 8) = v10;
    v11 = *(a1 + 8);
    v26 = 0;
    AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(27, v11, &v26);
    v12 = *(v8 + 3264) + *(a1 + 68);
    if (*(v8 + 3260) < v12)
    {
      *(v8 + 3260) = v12;
    }

    *(v8 + 3264) = 0;
    *(a1 + 68) = 0;
    v13 = *(a1 + 8);
    v26 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(27, v13, 16, 0, 0, 0, &v26);
    v14 = *(a1 + 8);
    LODWORD(v15) = *(a1 + 36) | 0x20000000;
    DWORD1(v15) = *(a1 + 32);
    *(&v15 + 1) = *(a1 + 48);
    v16 = *(v14 + 912);
    *v16 = v15;
    *(v14 + 912) = v16 + 1;
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    *a3 = WORD2(v17) | 0x20000000;
    *(a3 + 4) = v17;
    *(a3 + 8) = v18;
  }

  v19 = *(a1 + 8);
  v26 = 2;
  AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(26, v19, &v26);
  v20 = *(v8 + 3264) + *(a1 + 64);
  if (*(v8 + 3260) < v20)
  {
    *(v8 + 3260) = v20;
  }

  *(v8 + 3264) = 0;
  *(a1 + 64) = 0;
  v21 = *(a1 + 8);
  v26 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(26, v21, 16, 0, 0, 0, &v26);
  v22 = *(a1 + 8);
  result = *&a5;
  LODWORD(v24) = WORD2(a4) | 0x20000000;
  DWORD1(v24) = a4;
  *(&v24 + 1) = a5;
  v25 = *(v22 + 880);
  *v25 = v24;
  *(v22 + 880) = v25 + 1;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  return result;
}

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F6FF8;
  v13 = 22;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken22ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F6FF8;
  LODWORD(v7) = 22;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken22ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F6FF8, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken22ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)22,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F6FF8;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F6FF8;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CD35B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke(uint64_t a1)
{
  v12 = &unk_2A23F7038;
  v13 = 23;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v1 = *(a1 + 32);
  v2 = *(v1 + 7160);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3321888768;
  v5[2] = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke_2;
  v5[3] = &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken23ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l;
  v6 = &unk_2A23F7038;
  LODWORD(v7) = 23;
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *(v2 + 8);
  v11 = v1;
  v4 = objc_opt_new();
  [v4 setSync:{1, v5[0], 3321888768, ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke_2, &__block_descriptor_80_e8_32c77_ZTS10ProgramKeyIL15_AGCStreamToken23ELN3AGX27DriverShaderCompilationModeE1EE_e26_v32__0r_v8Q16__NSString_24l, &unk_2A23F7038, v7}];
  [v4 setPipelineCache:v3];
  [v4 setBinaryArchives:0];
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = ___ZN3AGX8Compiler14compileProgramI10ProgramKeyIL15_AGCStreamToken23ELNS_27DriverShaderCompilationModeE1EEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v17[3] = &unk_29F342280;
  v17[4] = v5;
  AGX::Compiler::compileProgram<ProgramKey<(_AGCStreamToken)23,(AGX::DriverShaderCompilationMode)1>,AGCDeserializedReply>(v2, &v12, v4, v17);

  v6 = &unk_2A23F7038;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  v12 = &unk_2A23F7038;
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_29CD35D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v4 = "MTLCompilerErrorTimeout";
  v5 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v5 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v6 = v4;
  }

  v12 = 0;
  v13 = 0;
  ProgramKey<(_AGCStreamToken)23,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, &v13, &v12);
  v8 = a4;
  v9 = v6;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CD35F9C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29ED520D0](v1, v3);
  _Unwind_Resume(a1);
}

void ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_19CommandEncodingNextENS1_32EncoderComputeServiceClassesNextEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v4 = "MTLCompilerErrorTimeout";
  v5 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v5 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    v6 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v6 = v4;
  }

  v12 = 0;
  v13 = 0;
  ProgramKey<(_AGCStreamToken)22,(AGX::DriverShaderCompilationMode)1>::serialize(a1 + 32, &v13, &v12);
  v8 = a4;
  v9 = v6;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CD36200(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29ED520D0](v1, v3);
  _Unwind_Resume(a1);
}

double AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext,AGX::HAL300::EncoderComputeServiceClassesNext>::patchCDMControlStreamAndReset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 56);
    *a3 = WORD2(v9) | 0x20000000;
    *(a3 + 4) = v9;
    *(a3 + 8) = v10;
    v11 = *(a1 + 8);
    v26 = 0;
    AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(27, v11, &v26);
    v12 = *(a2 + 5192) + *(a1 + 68);
    if (*(a2 + 5188) < v12)
    {
      *(a2 + 5188) = v12;
    }

    *(a2 + 5192) = 0;
    *(a1 + 68) = 0;
    v13 = *(a1 + 8);
    v26 = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(27, v13, 16, 0, 0, 0, &v26);
    v14 = *(a1 + 8);
    LODWORD(v15) = *(a1 + 36) | 0x20000000;
    DWORD1(v15) = *(a1 + 32);
    *(&v15 + 1) = *(a1 + 48);
    v16 = *(v14 + 912);
    *v16 = v15;
    *(v14 + 912) = v16 + 1;
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    *a3 = WORD2(v17) | 0x20000000;
    *(a3 + 4) = v17;
    *(a3 + 8) = v18;
  }

  v19 = *(a1 + 8);
  v26 = 2;
  AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(26, v19, &v26);
  v20 = *(a2 + 5192) + *(a1 + 64);
  if (*(a2 + 5188) < v20)
  {
    *(a2 + 5188) = v20;
  }

  *(a2 + 5192) = 0;
  *(a1 + 64) = 0;
  v21 = *(a1 + 8);
  v26 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(26, v21, 16, 0, 0, 0, &v26);
  v22 = *(a1 + 8);
  result = *&a5;
  LODWORD(v24) = WORD2(a4) | 0x20000000;
  DWORD1(v24) = a4;
  *(&v24 + 1) = a5;
  v25 = *(v22 + 880);
  *v25 = v24;
  *(v22 + 880) = v25 + 1;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  return result;
}

void AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::ComputePipeline(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 220) = 0xFFFFFFFF00000001;
  *(a1 + 228) = 1610612736;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *&v1 = -1;
  *(&v1 + 1) = -1;
  *(a1 + 284) = v1;
  *(a1 + 300) = v1;
  *(a1 + 316) = v1;
  *(a1 + 332) = -1;
  *(a1 + 340) = 0;
  *(a1 + 348) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 376) = 1024;
  *(a1 + 380) = 0;
  *(a1 + 384) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 496) = 1065353216;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 1065353216;
  operator new();
}

void sub_29CD365B8(_Unwind_Exception *a1)
{
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v4 + 308);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v3);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v4 + 228);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 432));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 120));
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::~RangeAllocation(v2);
  std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t *AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::~ComputePipeline(uint64_t *a1)
{
  if ((*(a1 + 26) & 1) == 0 && a1[8])
  {
    v2 = a1[9];
    v3 = *(v2 + 16);
    v37 = MEMORY[0x29EDCA5F8];
    v38 = 3221225472;
    v39 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v40 = &__block_descriptor_48_e5_v8__0l;
    v41 = v2;
    v42 = a1 + 5;
    dispatch_sync(v3, &v37);
    *(a1 + 65) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 5) = 0u;
  }

  v4 = a1[54];
  v5 = a1[55];
  while (v4 != v5)
  {
    v6 = *v4;
    v4 += 2;
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(v6);
  }

  if (a1[70])
  {
    AGX::FunctionTableSet<AGXG18PFamilyVisibleFunctionTable>::releaseAll(a1[68]);
    v7 = a1[70];
    if (v7)
    {
      v8 = AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::~Mempool(v7);
      MEMORY[0x29ED520D0](v8, 0x10A0C407F467501);
    }
  }

  v9 = a1[74];
  for (i = a1[73]; v9 != i; v9 -= 16)
  {
    v11 = *(v9 - 8);
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  a1[74] = i;
  v12 = a1[77];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[73];
  if (v13)
  {
    v14 = a1[74];
    v15 = a1[73];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = a1[73];
    }

    a1[74] = v13;
    operator delete(v15);
  }

  v17 = a1[72];
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = a1[69];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = a1[65];
  if (v19)
  {
    do
    {
      v27 = *v19;
      if (*(v19 + 39) < 0)
      {
        operator delete(v19[2]);
      }

      operator delete(v19);
      v19 = v27;
    }

    while (v27);
  }

  v20 = a1[63];
  a1[63] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  v21 = a1[60];
  if (v21)
  {
    do
    {
      v22 = *v21;

      operator delete(v21);
      v21 = v22;
    }

    while (v22);
  }

  v23 = a1[58];
  a1[58] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  v24 = a1[54];
  if (v24)
  {
    v25 = a1[55];
    v26 = a1[54];
    if (v25 != v24)
    {
      do
      {
        v28 = *(v25 - 8);
        if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        v25 -= 16;
      }

      while (v25 != v24);
      v26 = a1[54];
    }

    a1[55] = v24;
    operator delete(v26);
  }

  v29 = a1[20];
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = a1[18];
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  v31 = a1[16];
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    if (!*(a1 + 22))
    {
      goto LABEL_64;
    }
  }

  else if (!*(a1 + 22))
  {
    goto LABEL_64;
  }

  if ((a1[13] & 1) == 0)
  {
    v32 = a1[12];
    os_unfair_lock_lock(v32 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(a1[12] + 696, *(a1 + 22), *(a1 + 22) + *(a1 + 23) - 1);
    os_unfair_lock_unlock(v32 + 188);
  }

LABEL_64:
  v33 = *a1;
  *a1 = 0;
  if (v33)
  {
    if (*(v33 + 64) && *(v33 + 24))
    {
      v34 = *(v33 + 32);
      v35 = *(v34 + 16);
      v37 = MEMORY[0x29EDCA5F8];
      v38 = 3221225472;
      v39 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
      v40 = &__block_descriptor_48_e5_v8__0l;
      v41 = v34;
      v42 = v33;
      dispatch_sync(v35, &v37);
      *(v33 + 25) = 0u;
      *v33 = 0u;
      *(v33 + 16) = 0u;
    }

    MEMORY[0x29ED520D0](v33, 0x1070C4082A93E96);
  }

  return a1;
}

void sub_29CD36BA0(_Unwind_Exception *a1)
{
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 608);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 584));
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 568);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v1 + 544);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 504);
  std::unordered_map<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>::~unordered_map[abi:nn200100](v1 + 464);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((v1 + 432));
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::~RuntimeState((v1 + 120));
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::~RangeAllocation(v1 + 88);
  std::unique_ptr<AGX::HeapBuffer>::~unique_ptr[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void AGX::FunctionTableSet<AGXG18PFamilyVisibleFunctionTable>::releaseAll(uint64_t a1)
{
  os_unfair_lock_lock(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      objc_copyWeak(&v3, v2 + 3);
      if (objc_loadWeakRetained(&v3))
      {
        operator new();
      }

      objc_destroyWeak(&v3);
      v2 = *v2;
    }

    while (v2);
    os_unfair_lock_unlock(a1);
  }

  else
  {

    os_unfair_lock_unlock(a1);
  }
}

void sub_29CD36DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_t lock)
{
  os_unfair_lock_unlock(lock);
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
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
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v5 == v11)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v5 == v12)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
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

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
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
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v11 == v5)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v12 == v5)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
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

uint64_t AGX::getIntersectionFunctionPipelineBinaries<AGX::HAL300::Classes>(uint64_t ****a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = *a1;
  v3 = a1[1];
  if (v4 == v3)
  {
    goto LABEL_17;
  }

  while (2)
  {
    v5 = **v4;
    v6 = (*v4)[1];
    while (v5 != v6)
    {
      v8 = *v5;
      v9 = objc_alloc(MEMORY[0x29EDBB728]);
      if (!v8)
      {
        goto LABEL_5;
      }

      if ((*(v8 + 2007) & 0x8000000000000000) != 0)
      {
        if (!*(v8 + 1992))
        {
LABEL_5:
          v7 = 0;
          goto LABEL_6;
        }
      }

      else if (!*(v8 + 2007))
      {
        goto LABEL_5;
      }

      v10 = v9;
      v11 = objc_alloc(MEMORY[0x29EDB8DA0]);
      v12 = *(v8 + 2007);
      if (v12 < 0)
      {
        v13 = *(v8 + 1984);
        v12 = *(v8 + 1992);
      }

      else
      {
        v13 = v8 + 1984;
      }

      v7 = [v11 initWithBytes:v13 length:v12];
      v9 = v10;
LABEL_6:
      [v2 addObject:{objc_msgSend(v9, "initWithBinary:uniqueIdentifier:debugIdentifier:", v7, *(v8 + 1392), *(v8 + 1384))}];
      v5 += 43;
    }

    v4 += 2;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_17:
  v14 = [v2 copy];

  return v14;
}

uint64_t AGX::PipelineDylibResources<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,(AGX::ICBType)0>::getPipelineBinaries(uint64_t **a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *v3;
      if (*v3)
      {
        if ((*(v5 + 87) & 0x8000000000000000) != 0)
        {
          if (*(v5 + 72))
          {
LABEL_10:
            v8 = objc_alloc(MEMORY[0x29EDB8DA0]);
            v9 = *(v5 + 87);
            if (v9 < 0)
            {
              v10 = *(v5 + 64);
              v9 = *(v5 + 72);
            }

            else
            {
              v10 = v5 + 64;
            }

            v5 = [v8 initWithBytes:v10 length:v9];
            goto LABEL_4;
          }
        }

        else if (*(v5 + 87))
        {
          goto LABEL_10;
        }

        v5 = 0;
      }

LABEL_4:
      v6 = objc_alloc(MEMORY[0x29EDBB728]);
      v7 = *v3;
      v3 += 2;
      [v2 addObject:{objc_msgSend(v6, "initWithBinary:uniqueIdentifier:debugIdentifier:", v5, *v7, *(v7 + 8))}];
    }

    while (v3 != v4);
  }

  v11 = [v2 copy];

  return v11;
}

void sub_29CD398F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](&a64);
  v66 = *(v64 - 256);
  if (v66)
  {
    operator delete(v66);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](&a42);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,void *> *>>(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 8);
  if (v4 && (bzero(*a1, 8 * v4), v5 = *(a1 + 16), *(a1 + 16) = 0, *(a1 + 24) = 0, v5))
  {
    while (a2)
    {
      v5[2] = a2[2];
      if (v5 != a2)
      {
        v7 = a2[3];
        v8 = v5[3];
        if (v8 != v7)
        {
          v9 = v7;

          v5[3] = v9;
        }
      }

      v6 = *v5;
      std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__node_insert_multi(a1, v5);
      a2 = *a2;
      v5 = v6;
      if (!v6)
      {
        goto LABEL_3;
      }
    }

    do
    {
      v10 = *v5;

      operator delete(v5);
      v5 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_3:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_29CD39B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t AGX::mergeAndInsertAdditionalBinaryLinkedFunctions<AGX::HAL300::ObjClasses,AGX::HAL300::Classes>(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t *a8)
{
  v76 = *MEMORY[0x29EDCA608];
  if (*a5 == *(a5 + 8))
  {
    v14 = a2;
    if ([a1 requiresRaytracingEmulation])
    {
      v62 = 0;
    }

    else
    {
      v16 = a6[1] - *a6;
      v62 = v16 >> 4;
      v63 = a3;
      if (*(a5 + 16) - *a5 < v16)
      {
        if (!(v62 >> 60))
        {
          operator new();
        }

LABEL_93:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = *a6;
      v18 = a6[1];
      if (*a6 != v18)
      {
        v65 = a6[1];
        do
        {
          v20 = *v17;
          if ((*(*v17 + 24) & 1) == 0)
          {
            operator new();
          }

          v21 = *(a5 + 8);
          v22 = *(a5 + 16);
          if (v21 >= v22)
          {
            v24 = (v21 - *a5) >> 4;
            v25 = v24 + 1;
            if ((v24 + 1) >> 60)
            {
              goto LABEL_93;
            }

            v26 = v22 - *a5;
            if (v26 >> 3 > v25)
            {
              v25 = v26 >> 3;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF0)
            {
              v27 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              if (!(v27 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v28 = (16 * v24);
            *v28 = v20;
            v29 = v17[1];
            v28[1] = v29;
            if (v29)
            {
              atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = v28 + 2;
            v30 = *a5;
            v31 = *(a5 + 8) - *a5;
            v32 = v28 - v31;
            memcpy(v28 - v31, *a5, v31);
            *a5 = v32;
            *(a5 + 8) = v19;
            *(a5 + 16) = 0;
            if (v30)
            {
              operator delete(v30);
            }

            v18 = v65;
            v14 = a2;
          }

          else
          {
            *v21 = v20;
            v23 = v17[1];
            v21[1] = v23;
            if (v23)
            {
              atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = v21 + 2;
          }

          *(a5 + 8) = v19;
          v17 += 2;
        }

        while (v17 != v18);
      }

      if ([v14 count])
      {
        if (v63)
        {
          v33 = 0;
          do
          {
            v34 = [v14 objectAtIndexedSubscript:v33];
            if ([v34 functionType] == 6)
            {
              AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getOrCreatePipelineSet(&v74, [v34 vendorPrivate] + 8);
              std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::push_back[abi:nn200100](a5, &v74);
              v35 = *(&v74 + 1);
              if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v35->__on_zero_shared)(v35);
                std::__shared_weak_count::__release_weak(v35);
              }

              v14 = a2;
            }

            ++v33;
          }

          while (v33 < [v14 count]);
        }

        else
        {
          v36 = 0;
          do
          {
            v37 = [v14 objectAtIndexedSubscript:v36];
            if ([v37 functionType] == 6)
            {
              AGX::UserIntersectionProgram<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getOrCreatePipelineSet(&v74, [v37 vendorPrivate] + 8);
              std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::push_back[abi:nn200100](a5, &v74);
              v38 = *(&v74 + 1);
              if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
              {
                (v38->__on_zero_shared)(v38);
                std::__shared_weak_count::__release_weak(v38);
              }

              v14 = a2;
            }

            ++v36;
          }

          while (v36 < [v14 count]);
        }
      }
    }

    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v66 = [v14 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v66)
    {
      v61 = a4 + 2;
      v64 = *v70;
      while (2)
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v70 != v64)
          {
            objc_enumerationMutation(a2);
          }

          v40 = *(*(&v69 + 1) + 8 * i);
          v73 = v40;
          if ([v40 functionType] != 6 || (objc_msgSend(a1, "requiresRaytracingEmulation") & 1) != 0)
          {
            result = [v40 vendorPrivate];
            if (result)
            {
              [v40 vendorPrivate];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (v41 = [v40 vendorPrivate], (v42 = v41) != 0))
              {
                v43 = *(v41 + 56);
                AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateCodeHeap(v43);
                v44 = [v40 name];
                v45 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol((v43 + 30), [v44 cStringUsingEncoding:4], *(*(v42 + 56) + 744));
                if (v45 != -1)
                {
                  v46 = -[AGXG18PFamilyFunctionHandle initWithHandleType:name:device:handle:dylib:]([AGXG18PFamilyFunctionHandle alloc], "initWithHandleType:name:device:handle:dylib:", 2 * ([v40 functionType] == 5), v44, a1, v45, v42);
                  v47 = 0x9DDFEA08EB382D69 * ((8 * (v40 & 0x1FFFFFFF) + 8) ^ HIDWORD(v40));
                  v48 = 0x9DDFEA08EB382D69 * (HIDWORD(v40) ^ (v47 >> 47) ^ v47);
                  v49 = 0x9DDFEA08EB382D69 * (v48 ^ (v48 >> 47));
                  v50 = a4[1];
                  if (!*&v50)
                  {
                    goto LABEL_81;
                  }

                  v51 = vcnt_s8(v50);
                  v51.i16[0] = vaddlv_u8(v51);
                  if (v51.u32[0] > 1uLL)
                  {
                    v52 = 0x9DDFEA08EB382D69 * (v48 ^ (v48 >> 47));
                    if (v49 >= *&v50)
                    {
                      v52 = v49 % *&v50;
                    }
                  }

                  else
                  {
                    v52 = v49 & (*&v50 - 1);
                  }

                  v53 = *(*a4 + 8 * v52);
                  if (!v53 || (v54 = *v53) == 0)
                  {
LABEL_81:
                    operator new();
                  }

                  if (v51.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v56 = v54[1];
                      if (v56 == v49)
                      {
                        if (v54[2] == v40)
                        {
                          goto LABEL_86;
                        }
                      }

                      else if ((v56 & (*&v50 - 1)) != v52)
                      {
                        goto LABEL_81;
                      }

                      v54 = *v54;
                      if (!v54)
                      {
                        goto LABEL_81;
                      }
                    }
                  }

                  while (1)
                  {
                    v55 = v54[1];
                    if (v55 == v49)
                    {
                      if (v54[2] == v40)
                      {
LABEL_86:
                        v60 = v54[3];
                        if (v60 != v46)
                        {

                          v54[3] = v46;
                        }

                        goto LABEL_52;
                      }
                    }

                    else
                    {
                      if (v55 >= *&v50)
                      {
                        v55 %= *&v50;
                      }

                      if (v55 != v52)
                      {
                        goto LABEL_81;
                      }
                    }

                    v54 = *v54;
                    if (!v54)
                    {
                      goto LABEL_81;
                    }
                  }
                }

                AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(*(v42 + 56));
                return 0;
              }

              else
              {
                return 0;
              }
            }

            return result;
          }

          if (!std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::find<objc_object  {objcproto11MTLFunction}>(a4, v40))
          {
            v57 = v62;
            v58 = *(*a5 + 16 * v62);
            if (*(v58 + 25) == 1)
            {
              v57 = *(v58 + 32) & 0xFFFFFFF | 0x80000000;
              v59 = 1;
            }

            else
            {
              v59 = 0;
            }

            *&v74 = -[AGXG18PFamilyFunctionHandle initWithHandleType:name:device:handle:dylib:]([AGXG18PFamilyFunctionHandle alloc], "initWithHandleType:name:device:handle:dylib:", v59, [v40 name], a1, v57, 0);
            std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_impl<_MTLFunction *&,AGXG18PFamilyFunctionHandle>();
          }

LABEL_52:
          ;
        }

        v66 = [a2 countByEnumeratingWithState:&v69 objects:v75 count:16];
        result = 1;
        if (v66)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Expected null intersectionPipelineSets for Descendant PSO."];
    result = 0;
    *a8 = v9;
  }

  return result;
}

void sub_29CD3A630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_29CD3A660(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::computeMaximumRayPayloadSizes(uint64_t a1)
{
  v1 = *(a1 + 584);
  v56 = *(a1 + 592);
  if (v1 != v56)
  {
    v3 = (a1 + 236);
    v4 = a1 + 284;
    do
    {
      v6 = *v1;
      if (*(*v1 + 24) != 1)
      {
        v29 = *v6;
        v30 = v6[1];
        if (*v6 != v30)
        {
          v31 = *(a1 + 228);
          v33 = *(a1 + 220);
          v32 = *(a1 + 224);
          do
          {
            v34 = *(v29 + 140);
            if (v33 <= *(v29 + 132))
            {
              v33 = *(v29 + 132);
            }

            *(a1 + 220) = v33;
            v35 = BYTE2(v31);
            if (BYTE2(v31) <= BYTE2(v34))
            {
              v35 = BYTE2(v34);
            }

            v36 = v31;
            if (v31 <= v34)
            {
              v36 = v34;
            }

            if (v36 >= v32)
            {
              v36 = v32;
            }

            v37 = v36 | (v35 << 16);
            v38 = WORD2(v31);
            if (WORD2(v31) <= WORD2(v34))
            {
              v38 = WORD2(v34);
            }

            v39 = (-v33 & (v33 + v38 - 1));
            v40 = HIWORD(v34);
            if (HIWORD(v31) > v40)
            {
              v40 = HIWORD(v31);
            }

            v41 = v31 & 0xFF000000 | (v40 << 48) | v37 | (v39 << 32);
            *(a1 + 228) = v41;
            if (v41 != v31)
            {
              SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1 + 228, 4);
              v43 = v41 & 0xFFFFFFFF00FFFFFFLL;
              __p = (v43 | 0x1000000);
              v44 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(&__p, 12);
              v45 = (16773120 - SectionEnd) / (v44 - SectionEnd);
              if (v45 >= 0x60)
              {
                v46 = 96;
              }

              else
              {
                v46 = (16773120 - SectionEnd) / (v44 - SectionEnd);
              }

              v47 = v46 << 24;
              if (v45 >= 0x20)
              {
                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              if (v44 == SectionEnd)
              {
                v48 = 1610612736;
              }

              v31 = v43 | v48;
              *(a1 + 228) = v31;
              *v3 = 0u;
              v3[1] = 0u;
              v3[2] = 0u;
              *&v49 = -1;
              *(&v49 + 1) = -1;
              *v4 = v49;
              *(v4 + 16) = v49;
              *(v4 + 32) = v49;
              *(v4 + 48) = -1;
            }

            v29 += 344;
          }

          while (v29 != v30);
        }

        goto LABEL_5;
      }

      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::snapshotRuntimeStates(&__p, v6);
      v7 = __p;
      v8 = v58;
      if (__p == v58)
      {
        v5 = __p;
        if (!__p)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v55 = v1;
        v9 = *(a1 + 228);
        v10 = __p;
        v11 = *(a1 + 220);
        v12 = *(a1 + 224);
        do
        {
          if (v11 <= *(v10 + 25))
          {
            v11 = *(v10 + 25);
          }

          *(a1 + 220) = v11;
          v13 = *(v10 + 108);
          v14 = BYTE2(v9);
          if (BYTE2(v9) <= BYTE2(v13))
          {
            v14 = BYTE2(v13);
          }

          v15 = v9;
          if (v9 <= *(v10 + 108))
          {
            v15 = *(v10 + 108);
          }

          if (v15 >= v12)
          {
            v15 = v12;
          }

          v16 = v15 | (v14 << 16);
          v17 = WORD2(v9);
          if (WORD2(v9) <= WORD2(v13))
          {
            v17 = WORD2(*(v10 + 108));
          }

          v18 = (-v11 & (v11 + v17 - 1));
          v19 = HIWORD(v13);
          if (HIWORD(v9) > v19)
          {
            v19 = HIWORD(v9);
          }

          v20 = v9 & 0xFF000000 | (v19 << 48) | v16 | (v18 << 32);
          *(a1 + 228) = v20;
          if (v20 != v9)
          {
            v21 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1 + 228, 4);
            v22 = v20 & 0xFFFFFFFF00FFFFFFLL;
            v59 = v22 | 0x1000000;
            v23 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(&v59, 12);
            v24 = (16773120 - v21) / (v23 - v21);
            if (v24 >= 0x60)
            {
              v25 = 96;
            }

            else
            {
              v25 = (16773120 - v21) / (v23 - v21);
            }

            v26 = v25 << 24;
            if (v24 >= 0x20)
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }

            if (v23 == v21)
            {
              v27 = 1610612736;
            }

            v9 = v22 | v27;
            *(a1 + 228) = v9;
            *v3 = 0u;
            v3[1] = 0u;
            v3[2] = 0u;
            *&v28 = -1;
            *(&v28 + 1) = -1;
            *v4 = v28;
            *(v4 + 16) = v28;
            *(v4 + 32) = v28;
            *(v4 + 48) = -1;
          }

          v10 += 39;
        }

        while (v10 != v8);
        v1 = v55;
        if (!v7)
        {
          goto LABEL_5;
        }

        v5 = v7;
        if (v7 != v8)
        {
          v50 = v8 - 38;
          while (1)
          {
            v52 = v50[4];
            if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v52->__on_zero_shared)(v52);
              std::__shared_weak_count::__release_weak(v52);
              v53 = v50[2];
              if (v53)
              {
LABEL_64:
                if (!atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v53->__on_zero_shared)(v53);
                  std::__shared_weak_count::__release_weak(v53);
                }
              }
            }

            else
            {
              v53 = v50[2];
              if (v53)
              {
                goto LABEL_64;
              }
            }

            v54 = *v50;
            if (*v50)
            {
              if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v54->__on_zero_shared)(v54);
                std::__shared_weak_count::__release_weak(v54);
              }
            }

            v51 = v50 - 1;
            v50 -= 39;
            if (v51 == v7)
            {
              v5 = __p;
              break;
            }
          }
        }
      }

      v58 = v7;
      operator delete(v5);
LABEL_5:
      v1 += 2;
    }

    while (v1 != v56);
  }
}

uint64_t AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::createScsPerShaderConfigTable(uint64_t result)
{
  v1 = *MEMORY[0x29EDCA608];
  if ((*(*(result + 16) + 2407) & 0x40) != 0)
  {
    operator new();
  }

  return result;
}

uint64_t AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::constructSpillParamsForIntersection(uint64_t result, uint64_t a2)
{
  if (*(result + 584) != *(result + 592))
  {
    v97 = v11;
    v98 = v10;
    v99 = v9;
    v100 = v8;
    v101 = v7;
    v102 = v6;
    v103 = v5;
    v104 = v4;
    v105 = v3;
    v106 = v2;
    v107 = v12;
    v108 = v13;
    v14 = result;
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v92, a2, 0);
    v95 = 0;
    v15 = 0uLL;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v16 = *(v14 + 584);
    v17 = *(v14 + 592);
    if (v16 == v17)
    {
LABEL_60:
      operator new();
    }

    v89 = *(v14 + 592);
    while (1)
    {
      v19 = *v16;
      if (*(*v16 + 24) != 1)
      {
        v59 = *v19;
        v60 = v19[1];
        if (*v19 != v60)
        {
          v61 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v96 + 7008 + 16 * (*(v96 + 7008) == 0)))))));
          v62 = vadd_s32(vdup_lane_s32(v61, 1), v61).u32[0];
          v64 = v92;
          v63 = v93;
          v65 = v94;
          v66 = v95;
          do
          {
            v67 = 32 * (v59[30] + v59[21]);
            v68 = 32 * v59[24];
            v69 = v67 + 21375;
            if (v67 + 21375 < 0)
            {
              v69 = v67 + 25470;
            }

            v70 = v69 >> 12;
            v71 = (v67 + 82815) / 0x10000;
            v72 = v68 + 4095;
            if (v68 < -4095)
            {
              v72 = v68 + 8190;
            }

            v73 = v72 >> 12;
            v74 = v68 + 0xFFFF;
            v36 = v68 < -65535;
            v75 = v68 + 131070;
            if (!v36)
            {
              v75 = v74;
            }

            v76 = 32 * *(*v59 + 1284);
            v77 = v75 >> 16;
            v78 = 32 * *(*v59 + 1312);
            v79 = v76 + 21375;
            if (v76 + 21375 < 0)
            {
              v79 = v76 + 25470;
            }

            v80 = (v76 + 82815) / 0x10000 + (v79 >> 12);
            v81 = v78 + 4095;
            if (v78 < -4095)
            {
              v81 = v78 + 8190;
            }

            v82 = v78 + 0xFFFF;
            v36 = v78 < -65535;
            v83 = v78 + 131070;
            v84 = v71 + v70 + v77 + v73;
            if (!v36)
            {
              v83 = v82;
            }

            v85 = v80 + (v83 >> 16) + (v81 >> 12);
            v86 = (v73 + v70) * 24 * v62 + (v77 + v71) * 10 * v62;
            v64 = vmaxq_s32(v64, v15);
            v87.i64[0] = 0;
            v87.i32[2] = 0;
            if ((v62 * v85) > v86)
            {
              v86 = v62 * v85;
            }

            v87.i32[3] = v86;
            v88.i32[0] = 0;
            v88.i32[1] = v85;
            v63 = vmaxq_s32(v63, v87);
            v88.i64[1] = v84;
            v65 = vmaxq_s32(v65, v88);
            v66 &= ~(v66 >> 31);
            v59 += 86;
          }

          while (v59 != v60);
          v92 = v64;
          v93 = v63;
          v94 = v65;
          v95 = v66;
        }

        goto LABEL_7;
      }

      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::snapshotRuntimeStates(&v90, v19);
      v20 = v90;
      if (v90 == v91)
      {
        v18 = v90;
        if (!v90)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v21 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v96 + 7008 + 16 * (*(v96 + 7008) == 0)))))));
        v22 = **v16;
        v23 = vadd_s32(vdup_lane_s32(v21, 1), v21).u32[0];
        v25 = v92;
        v24 = v93;
        v26 = v94;
        v27 = v95;
        v28 = v90;
        do
        {
          v29 = 32 * (*(v28 + 22) + *(v28 + 13));
          v30 = 32 * *(v28 + 16);
          v31 = v29 + 21375;
          if (v29 + 21375 < 0)
          {
            v31 = v29 + 25470;
          }

          v32 = v31 >> 12;
          v33 = (v29 + 82815) / 0x10000;
          v34 = v30 + 4095;
          if (v30 < -4095)
          {
            v34 = v30 + 8190;
          }

          v35 = v34 >> 12;
          v37 = v30 + 0xFFFF;
          v36 = v30 < -65535;
          v38 = v30 + 131070;
          if (!v36)
          {
            v38 = v37;
          }

          v39 = 32 * *(*v22 + 1284);
          v40 = 32 * *(*v22 + 1312);
          v41 = v38 >> 16;
          v42 = v39 + 21375;
          v43 = v39 + 25470;
          v44 = v39 + 82815;
          if (v42 < 0)
          {
            v42 = v43;
          }

          v45 = v44 / 0x10000 + (v42 >> 12);
          if (v40 >= -4095)
          {
            v46 = v40 + 4095;
          }

          else
          {
            v46 = v40 + 8190;
          }

          v47 = v40 + 0xFFFF;
          v36 = v40 < -65535;
          v48 = v40 + 131070;
          if (!v36)
          {
            v48 = v47;
          }

          v49 = v33 + v32 + v41 + v35;
          v50 = v45 + (v48 >> 16) + (v46 >> 12);
          v51 = (v35 + v32) * 24 * v23 + (v41 + v33) * 10 * v23;
          if ((v23 * v50) > v51)
          {
            v51 = v23 * v50;
          }

          v52.i64[0] = 0;
          v52.i32[2] = 0;
          v52.i32[3] = v51;
          v53.i32[0] = 0;
          v53.i32[1] = v50;
          v53.i64[1] = v49;
          v24 = vmaxq_s32(v24, v52);
          v25 = vmaxq_s32(v25, 0);
          v26 = vmaxq_s32(v26, v53);
          v27 &= ~(v27 >> 31);
          v28 += 39;
          v22 += 344;
        }

        while (v28 != v91);
        v92 = v25;
        v93 = v24;
        v94 = v26;
        v95 = v27;
        if (!v90)
        {
          goto LABEL_6;
        }

        v18 = v90;
        if (v90 != v91)
        {
          v54 = v91 - 38;
          while (1)
          {
            v56 = v54[4];
            if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v56->__on_zero_shared)(v56);
              std::__shared_weak_count::__release_weak(v56);
              v57 = v54[2];
              if (v57)
              {
LABEL_34:
                if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v57->__on_zero_shared)(v57);
                  std::__shared_weak_count::__release_weak(v57);
                }
              }
            }

            else
            {
              v57 = v54[2];
              if (v57)
              {
                goto LABEL_34;
              }
            }

            v58 = *v54;
            if (*v54)
            {
              if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v58->__on_zero_shared)(v58);
                std::__shared_weak_count::__release_weak(v58);
              }
            }

            v55 = v54 - 1;
            v54 -= 39;
            if (v55 == v20)
            {
              v17 = v89;
              v18 = v90;
              break;
            }
          }
        }
      }

      v91 = v20;
      operator delete(v18);
LABEL_6:
      v19 = *v16;
LABEL_7:
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::patchEslPrograms(v19);
      v16 += 2;
      v15 = 0uLL;
      if (v16 == v17)
      {
        goto LABEL_60;
      }
    }
  }

  return result;
}

void *std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>::~vector[abi:nn200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 39;
        std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>::destroy[abi:nn200100](v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<AGX::HAL300::SpillInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23F94C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

uint64_t AGX::applySPIRelocations<AGX::HAL300::ObjClasses,AGX::HAL300::DynamicLibrary>(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  result = [a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v18;
    v5 = (a1 + 832);
    v6 = (a1 + 1096);
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v17 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [objc_msgSend(v12 "symbolName")];
          v9 = [v12 buffer];
          v10 = *(v9 + *MEMORY[0x29EDC5638] + 72);
          v11 = [v12 offset];
          v21 = *v5;
          v22 = *(a1 + 848);
          v23 = *v6;
          v24 = *(a1 + 1112);
          AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::applySPIRelocation(a1 + 120, v8, v11 + v10, &v21);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [objc_msgSend(v12 "symbolName")];
            v14 = [v12 data];
            v21 = *v5;
            v22 = *(a1 + 848);
            v23 = *v6;
            v24 = *(a1 + 1112);
            AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::applySPIConstantRelocation(a1 + 120, v13, v14, &v21);
          }
        }

        ++v7;
      }

      while (v3 != v7);
      result = [a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void ***std::vector<std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState>>>::~vector[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = v9 - 38;
            while (1)
            {
              v12 = v10[4];
              if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v12->__on_zero_shared)(v12);
                std::__shared_weak_count::__release_weak(v12);
                v13 = v10[2];
                if (v13)
                {
LABEL_14:
                  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v13->__on_zero_shared)(v13);
                    std::__shared_weak_count::__release_weak(v13);
                  }
                }
              }

              else
              {
                v13 = v10[2];
                if (v13)
                {
                  goto LABEL_14;
                }
              }

              v14 = *v10;
              if (*v10 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v14->__on_zero_shared)(v14);
                std::__shared_weak_count::__release_weak(v14);
              }

              v11 = v10 - 1;
              v10 -= 39;
              if (v11 == v7)
              {
                v6 = *v5;
                break;
              }
            }
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_29CD3BEBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<AGX::HAL300::IntersectionPipelineSet>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    v3 = AGX::IntersectionEslData<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionEslData(v2);
    MEMORY[0x29ED520D0](v3, 0x10B0C40F8EBD84CLL);
  }

  if (*(a1 + 56) && (*(a1 + 72) & 1) == 0)
  {
    v4 = *(a1 + 64);
    os_unfair_lock_lock(v4 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(a1 + 64) + 696, *(a1 + 56), *(a1 + 56) + *(a1 + 60) - 1);
    os_unfair_lock_unlock(v4 + 188);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        v6 = AGX::IntersectionPipeline<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~IntersectionPipeline(v6 - 43);
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;

    operator delete(v7);
  }
}

void std::__shared_ptr_emplace<AGX::HAL300::IntersectionPipelineSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23F9640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

void std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v36 = *a1;
        *a1 = 0;
        if (v36)
        {
          operator delete(v36);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] >= 2uLL)
  {
    v26 = v5;
    if (v6 <= v5)
    {
      v26 = v5 % v6;
    }

    v18 = *a1;
    v27 = *(*a1 + 8 * v26);
    if (!v27)
    {
      v24 = 0;
      v34 = a2[1];
      if (v34 < v6)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    v28 = 0;
    do
    {
      v24 = v27;
      v27 = *v27;
      if (!v27)
      {
        break;
      }

      v32 = v27[1];
      v33 = v32;
      if (v32 >= v6)
      {
        v33 = v32 % v6;
      }

      if (v33 != v26)
      {
        break;
      }

      v29 = v32 == v5 && v27[2] == a2[2];
      v30 = v29 != (v28 & 1);
      v31 = v28 & v30;
      v28 |= v30;
    }

    while (v31 != 1);
  }

  else
  {
    v17 = (v6 - 1) & v5;
    v18 = *a1;
    v19 = *(*a1 + 8 * v17);
    if (!v19)
    {
      v24 = 0;
      v34 = a2[1];
      goto LABEL_46;
    }

    v20 = 0;
    do
    {
      v24 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v25 = v19[1];
      if ((v25 & (v6 - 1)) != v17)
      {
        break;
      }

      v21 = v25 == v5 && v19[2] == a2[2];
      v22 = v21 != (v20 & 1);
      v23 = v20 & v22;
      v20 |= v22;
    }

    while ((v23 & 1) == 0);
  }

  v34 = a2[1];
  if (v16.u32[0] <= 1uLL)
  {
LABEL_46:
    v34 &= v6 - 1;
    goto LABEL_49;
  }

  if (v34 >= v6)
  {
LABEL_48:
    v34 %= v6;
  }

LABEL_49:
  if (!v24)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v34] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_63;
    }

    v35 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v35 >= v6)
      {
        v35 %= v6;
      }
    }

    else
    {
      v35 &= v6 - 1;
    }

LABEL_62:
    v18[v35] = a2;
    goto LABEL_63;
  }

  *a2 = *v24;
  *v24 = a2;
  if (*a2)
  {
    v35 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v35 >= v6)
      {
        v35 %= v6;
      }
    }

    else
    {
      v35 &= v6 - 1;
    }

    if (v35 != v34)
    {
      goto LABEL_62;
    }
  }

LABEL_63:
  ++*(a1 + 24);
}

void std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::shared_ptr<AGX::HAL300::DynamicLibrary> const*>,std::__wrap_iter<std::shared_ptr<AGX::HAL300::DynamicLibrary> const*>>(uint64_t a1, char *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (a5 <= (v8 - v9) >> 4)
    {
      v14 = v9 - a2;
      v15 = (v9 - a2) >> 4;
      if (v15 >= a5)
      {
        v21 = &v9[-16 * a5];
        if (v21 >= v9)
        {
          v23 = *(a1 + 8);
        }

        else
        {
          v22 = &v9[-16 * a5];
          v23 = *(a1 + 8);
          do
          {
            *v23++ = *v22;
            *v22 = 0;
            *(v22 + 1) = 0;
            v22 += 16;
          }

          while (v22 < v9);
        }

        *(a1 + 8) = v23;
        if (v9 != &a2[16 * a5])
        {
          v36 = (v9 - 8);
          v37 = (&a2[16 * a5] - v9);
          v38 = v21 - 16;
          do
          {
            v39 = *v38;
            *v38 = 0;
            *(v38 + 1) = 0;
            v40 = *v36;
            *(v36 - 1) = v39;
            if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v40->__on_zero_shared)(v40);
              std::__shared_weak_count::__release_weak(v40);
            }

            v36 -= 2;
            v38 -= 16;
            v37 += 16;
          }

          while (v37);
        }

        v41 = &v6[2 * a5];
        do
        {
          v43 = *v6;
          v42 = v6[1];
          if (v42)
          {
            atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
          }

          v44 = *(v7 + 1);
          *v7 = v43;
          *(v7 + 1) = v42;
          if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
          }

          v6 += 2;
          v7 += 16;
        }

        while (v6 != v41);
      }

      else
      {
        v16 = (a3 + v14);
        if ((a3 + v14) == a4)
        {
          v17 = *(a1 + 8);
        }

        else
        {
          v34 = (a3 + v14);
          v17 = *(a1 + 8);
          do
          {
            v35 = v34[1];
            *v17 = *v34;
            *(v17 + 1) = v35;
            if (v35)
            {
              atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
            }

            v34 += 2;
            v17 += 16;
          }

          while (v34 != a4);
        }

        *(a1 + 8) = v17;
        if (v15 >= 1)
        {
          v18 = &v17[-16 * a5];
          if (v18 >= v9)
          {
            v20 = v17;
          }

          else
          {
            v19 = &v17[-16 * a5];
            v20 = v17;
            do
            {
              *v20 = *v19;
              v20 += 16;
              *v19 = 0;
              *(v19 + 1) = 0;
              v19 += 16;
            }

            while (v19 < v9);
          }

          *(a1 + 8) = v20;
          if (v17 != &a2[16 * a5])
          {
            v45 = (v17 - 8);
            v46 = &a2[16 * a5] - v17;
            v47 = v18 - 16;
            do
            {
              v48 = *v47;
              *v47 = 0;
              *(v47 + 1) = 0;
              v49 = *v45;
              *(v45 - 1) = v48;
              if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v49->__on_zero_shared)(v49);
                std::__shared_weak_count::__release_weak(v49);
              }

              v45 -= 2;
              v47 -= 16;
              v46 += 16;
            }

            while (v46);
          }

          if (v9 != v7)
          {
            do
            {
              v51 = *v6;
              v50 = v6[1];
              if (v50)
              {
                atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
              }

              v52 = *(v7 + 1);
              *v7 = v51;
              *(v7 + 1) = v50;
              if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v52->__on_zero_shared)(v52);
                std::__shared_weak_count::__release_weak(v52);
              }

              v6 += 2;
              v7 += 16;
            }

            while (v6 != v16);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + (&v9[-*a1] >> 4);
      if (v11 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v8 - v10;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = 16 * ((a2 - v10) >> 4);
      v25 = (v24 + 16 * a5);
      v26 = v24;
      do
      {
        v27 = v6[1];
        *v26 = *v6;
        *(v26 + 1) = v27;
        if (v27)
        {
          atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
        }

        v26 += 16;
        v6 += 2;
      }

      while (v26 != v25);
      v28 = *(a1 + 8) - a2;
      memcpy(v25, a2, v28);
      v30 = &v25[v28];
      *(a1 + 8) = v7;
      v31 = *a1;
      v32 = &v7[-*a1];
      v33 = v24 - v32;
      memcpy((v24 - v32), *a1, v32);
      *a1 = v33;
      *(a1 + 8) = v30;
      *(a1 + 16) = 0;
      if (v31)
      {

        operator delete(v31);
      }
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::find<std::string>(void *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v4, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    if (v9.u32[0] < 2uLL)
    {
      v13 = *&v7 - 1;
      while (1)
      {
        v14 = v12[1];
        if (v14 == v8)
        {
          v15 = *(v12 + 39);
          v16 = v15;
          if (v15 < 0)
          {
            v15 = v12[3];
          }

          if (v15 == v5)
          {
            v17 = v16 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v17, v4, v5))
            {
              return v12;
            }
          }
        }

        else if ((v14 & v13) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v18 = v12[1];
      if (v18 == v8)
      {
        v19 = *(v12 + 39);
        v20 = v19;
        if (v19 < 0)
        {
          v19 = v12[3];
        }

        if (v19 == v5)
        {
          v21 = v20 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v21, v4, v5))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v18 >= *&v7)
        {
          v18 %= *&v7;
        }

        if (v18 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto11MTLFunction}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto11MTLFunction}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto11MTLFunction}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto11MTLFunction}*>>::__node_insert_unique(float *a1, uint64_t a2)
{
  v4 = a2 + 16;
  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = (a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 39);
  }

  else
  {
    v7 = *(a2 + 24);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  *(v4 - 8) = v8;
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = v8;
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v9 <= v8)
      {
        v12 = v8 % v9;
      }
    }

    else
    {
      v12 = (v9 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v15 = v14[1];
            if (v15 == v10)
            {
              v16 = *(v14 + 39);
              v17 = v16;
              if (v16 < 0)
              {
                v16 = v14[3];
              }

              if (v16 == v7)
              {
                v18 = v17 >= 0 ? (v14 + 2) : v14[2];
                if (!memcmp(v18, v6, v7))
                {
                  return 0;
                }
              }
            }

            else if ((v15 & (v9 - 1)) != v12)
            {
              goto LABEL_40;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_40;
            }
          }
        }

        do
        {
          v20 = v14[1];
          if (v20 == v10)
          {
            v21 = *(v14 + 39);
            v22 = v21;
            if (v21 < 0)
            {
              v21 = v14[3];
            }

            if (v21 == v7)
            {
              v23 = v22 >= 0 ? (v14 + 2) : v14[2];
              if (!memcmp(v23, v6, v7))
              {
                return 0;
              }
            }
          }

          else
          {
            if (v20 >= v9)
            {
              v20 %= v9;
            }

            if (v20 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

LABEL_40:
  v24 = (*(a1 + 3) + 1);
  v25 = a1[8];
  if (!v9 || (v25 * v9) < v24)
  {
    v26 = 1;
    if (v9 >= 3)
    {
      v26 = (v9 & (v9 - 1)) != 0;
    }

    v27 = v26 | (2 * v9);
    v28 = vcvtps_u32_f32(v24 / v25);
    if (v27 <= v28)
    {
      prime = v28;
    }

    else
    {
      prime = v27;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v9 = *(a1 + 1);
    }

    if (prime > v9)
    {
LABEL_52:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v9)
    {
      v30 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v9 < 3 || (v31 = vcnt_s8(v9), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
      {
        v30 = std::__next_prime(v30);
      }

      else
      {
        v32 = 1 << -__clz(v30 - 1);
        if (v30 >= 2)
        {
          v30 = v32;
        }
      }

      if (prime <= v30)
      {
        prime = v30;
      }

      if (prime >= v9)
      {
        v9 = *(a1 + 1);
      }

      else
      {
        if (prime)
        {
          goto LABEL_52;
        }

        v38 = *a1;
        *a1 = 0;
        if (v38)
        {
          operator delete(v38);
        }

        v9 = 0;
        *(a1 + 1) = 0;
      }
    }
  }

  v33 = *(a2 + 8);
  v34 = vcnt_s8(v9);
  v34.i16[0] = vaddlv_u8(v34);
  if (v34.u32[0] > 1uLL)
  {
    if (v33 >= v9)
    {
      v33 %= v9;
    }
  }

  else
  {
    v33 &= v9 - 1;
  }

  v35 = *a1;
  v36 = *(*a1 + 8 * v33);
  if (v36)
  {
    *a2 = *v36;
  }

  else
  {
    *a2 = *(a1 + 2);
    *(a1 + 2) = a2;
    v35[v33] = a1 + 4;
    if (!*a2)
    {
      goto LABEL_67;
    }

    v37 = *(*a2 + 8);
    if (v34.u32[0] > 1uLL)
    {
      if (v37 >= v9)
      {
        v37 %= v9;
      }

      v36 = &v35[v37];
    }

    else
    {
      v36 = &v35[v37 & (v9 - 1)];
    }
  }

  *v36 = a2;
LABEL_67:
  ++*(a1 + 3);
  return 1;
}

void *std::__hash_table<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,std::__unordered_map_hasher<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::hash<objc_object  {objcproto11MTLFunction}>,std::equal_to<objc_object  {objcproto11MTLFunction}>,true>,std::__unordered_map_equal<objc_object  {objcproto11MTLFunction},RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>,std::equal_to,std::hash,true>,std::allocator<RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<objc_object  {objcproto11MTLFunction},objc_object  {objcproto11MTLFunction}&,AGXG18PFamilyFunctionHandle>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = 0x9DDFEA08EB382D69 * v4;
  v6 = result[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*result + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (v10[2] == a2)
        {
          return result;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_22;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29CD3D75C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<objc_object  {objcproto11MTLFunction}*,RetainedObjCPointer<AGXG18PFamilyFunctionHandle *>>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t *AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::bindResources(void *a1)
{
  v2 = *(a1[2] + 2728);
  do
  {
    v2 &= ~(1 << __clz(__rbit32(v2)));
    result = IOGPUResourceListAddResource();
  }

  while (v2);
  v4 = a1[73];
  for (i = a1[74]; v4 != i; v4 += 2)
  {
    result = *v4;
    if ((*v4)[10])
    {
      AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(result);
      IOGPUResourceListAddResource();
      result = *v4;
    }

    v6 = *result;
    v7 = result[1];
    if (*result != v7)
    {
      do
      {
        v8 = *(*v6 + 2704);
        do
        {
          v8 &= ~(1 << __clz(__rbit32(v8)));
          result = IOGPUResourceListAddResource();
        }

        while (v8);
        v6 += 344;
      }

      while (v6 != v7);
    }
  }

  return result;
}

uint64_t AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::enumResources(uint64_t *a1, uint64_t a2)
{
  v47 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 24);
  v35 = a1;
  if (v4)
  {
    if (v4 == a2)
    {
      v46 = v45;
      (*(*v4 + 24))(v4, v45);
    }

    else
    {
      v46 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v46 = 0;
  }

  v5 = a1[2];
  v6 = v5 + 2928;
  v7 = *(v5 + 2728);
  do
  {
    v8 = __clz(__rbit32(v7));
    v36 = *(v6 + 8 * v8);
    if (!v46)
    {
      goto LABEL_83;
    }

    (*(*v46 + 48))(v46, &v36);
    v7 &= ~(1 << v8);
  }

  while (v7);
  result = v46;
  if (v46 == v45)
  {
    result = (*(*v46 + 32))(v46);
  }

  else if (v46)
  {
    result = (*(*v46 + 40))(v46);
  }

  v10 = a1[54];
  for (i = a1[55]; v10 != i; v10 += 2)
  {
    v12 = *v10;
    v13 = *(a2 + 24);
    if (v13)
    {
      if (v13 == a2)
      {
        v44 = v43;
        (*(*v13 + 24))(v13, v43);
      }

      else
      {
        v44 = (*(*v13 + 16))(v13);
      }
    }

    else
    {
      v44 = 0;
    }

    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enumResources(v12, v43);
    result = v44;
    if (v44 == v43)
    {
      result = (*(*v44 + 32))(v44);
    }

    else if (v44)
    {
      result = (*(*v44 + 40))();
    }
  }

  v14 = a1[73];
  for (j = a1[74]; v14 != j; v14 += 2)
  {
    v16 = **v14;
    for (k = (*v14)[1]; v16 != k; v16 += 43)
    {
      while (1)
      {
        v18 = *v16;
        v19 = *(a2 + 24);
        if (v19)
        {
          if (v19 == a2)
          {
            v42 = v41;
            (*(*v19 + 24))(v19, v41);
          }

          else
          {
            v42 = (*(*v19 + 16))(v19);
          }
        }

        else
        {
          v42 = 0;
        }

        v20 = v18 + 2904;
        v21 = *(v18 + 2704);
        do
        {
          v22 = __clz(__rbit32(v21));
          v36 = *(v20 + 8 * v22);
          if (!v42)
          {
            goto LABEL_83;
          }

          (*(*v42 + 48))(v42, &v36);
          v21 &= ~(1 << v22);
        }

        while (v21);
        result = v42;
        if (v42 != v41)
        {
          break;
        }

        result = (*(*v42 + 32))(v42);
        v16 += 43;
        if (v16 == k)
        {
          goto LABEL_27;
        }
      }

      if (v42)
      {
        result = (*(*v42 + 40))();
      }
    }

LABEL_27:
    ;
  }

  v23 = v35;
  if (v35[3])
  {
    v24 = v35[2];
    v25 = *(a2 + 24);
    if (v25)
    {
      if (v25 == a2)
      {
        v40 = v39;
        (*(*v25 + 24))(v25, v39);
      }

      else
      {
        v40 = (*(*v25 + 16))(v25);
      }

      v23 = v35;
      v26 = v24[405];
      if (!v26)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v40 = 0;
      v26 = v24[405];
      if (!v26)
      {
        goto LABEL_54;
      }
    }

    v36 = *(v26 + 296);
    if (!v40)
    {
      goto LABEL_83;
    }

    (*(*v40 + 48))(v40, &v36);
LABEL_54:
    v27 = v24[437];
    if (v27)
    {
      v36 = *(v27 + 296);
      if (!v40)
      {
        goto LABEL_83;
      }

      (*(*v40 + 48))(v40, &v36);
    }

    v28 = v24[445];
    if (v28)
    {
      v36 = *(v28 + 296);
      if (!v40)
      {
        goto LABEL_83;
      }

      (*(*v40 + 48))(v40, &v36);
    }

    if (v40 == v39)
    {
      (*(*v40 + 32))(v40);
      v29 = *(a2 + 24);
      if (v29)
      {
LABEL_64:
        if (v29 == a2)
        {
          v38 = v37;
          (*(*v29 + 24))(v29, v37);
        }

        else
        {
          v38 = (*(*v29 + 16))(v29);
        }

        v23 = v35;
LABEL_70:
        AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::enumResources((v23 + 15), v37);
        result = v38;
        if (v38 == v37)
        {
          result = (*(*v38 + 32))(v38);
          v30 = v23[8];
          if (v30)
          {
LABEL_74:
            v36 = *(v30 + 296);
            v31 = *(a2 + 24);
            if (!v31)
            {
              goto LABEL_83;
            }

            result = (*(*v31 + 48))(v31, &v36);
            v32 = *v35;
            if (!*v35)
            {
              return result;
            }

LABEL_79:
            v33 = *(v32 + 24);
            if (!v33)
            {
              return result;
            }

            v36 = *(v33 + 296);
            v34 = *(a2 + 24);
            if (v34)
            {
              return (*(*v34 + 48))(v34, &v36);
            }

LABEL_83:
            std::__throw_bad_function_call[abi:nn200100]();
          }
        }

        else
        {
          if (v38)
          {
            result = (*(*v38 + 40))();
          }

          v30 = v23[8];
          if (v30)
          {
            goto LABEL_74;
          }
        }

        v32 = *v23;
        if (!*v23)
        {
          return result;
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (v40)
      {
        (*(*v40 + 40))();
      }

      v29 = *(a2 + 24);
      if (v29)
      {
        goto LABEL_64;
      }
    }

    v38 = 0;
    goto LABEL_70;
  }

  return result;
}

void sub_29CD3E008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<void ()(IOGPUMetalResource const*)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(IOGPUMetalResource const*)>::~function(uint64_t a1)
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

void std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ModuleInfo,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ModuleInfo>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ModuleInfo const*>,std::__wrap_iter<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ModuleInfo const*>>(uint64_t a1, char *__dst, _OWORD *__src, _OWORD *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if ((0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 4)) < a5)
  {
    v8 = *a1;
    v9 = a5 - 0x3333333333333333 * (&v6[-*a1] >> 4);
    if (v9 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x199999999999999)
    {
      v11 = 0x333333333333333;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x333333333333333)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = 16 * ((__dst - v8) >> 4);
    v34 = 80 * a5;
    v35 = v33 + 80 * a5;
    v36 = v33;
    do
    {
      *v36 = *__src;
      v37 = __src[1];
      v38 = __src[2];
      v39 = __src[4];
      v36[3] = __src[3];
      v36[4] = v39;
      v36[1] = v37;
      v36[2] = v38;
      v36 += 5;
      __src += 5;
      v34 -= 80;
    }

    while (v34);
    v40 = *(a1 + 8) - __dst;
    memcpy((v33 + 80 * a5), __dst, v40);
    v42 = v35 + v40;
    *(a1 + 8) = __dst;
    v43 = *a1;
    v44 = &__dst[-*a1];
    v45 = v33 - v44;
    memcpy((v33 - v44), *a1, v44);
    *a1 = v45;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v43)
    {

      operator delete(v43);
    }

    return;
  }

  v12 = v6 - __dst;
  if ((0xCCCCCCCCCCCCCCCDLL * ((v6 - __dst) >> 4)) >= a5)
  {
    v12 = 80 * a5;
    v26 = &__dst[80 * a5];
    v27 = &v6[-80 * a5];
    for (i = *(a1 + 8); v27 < v6; i += 5)
    {
      *i = *v27;
      v29 = *(v27 + 1);
      v30 = *(v27 + 2);
      v31 = *(v27 + 4);
      i[3] = *(v27 + 3);
      i[4] = v31;
      i[1] = v29;
      i[2] = v30;
      v27 += 80;
    }

    *(a1 + 8) = i;
    if (v6 == v26)
    {
      goto LABEL_25;
    }

    v24 = v6 - v26;
    v25 = &v6[-v24];
    goto LABEL_24;
  }

  v13 = (__src + v12);
  for (j = *(a1 + 8); v13 != a4; j += 5)
  {
    *j = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[4];
    j[3] = v13[3];
    j[4] = v17;
    j[1] = v15;
    j[2] = v16;
    v13 += 5;
  }

  *(a1 + 8) = j;
  if (v12 >= 1)
  {
    v18 = &__dst[80 * a5];
    v19 = &j[-5 * a5];
    for (k = j; v19 < v6; k += 5)
    {
      *k = *v19;
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      v23 = *(v19 + 4);
      k[3] = *(v19 + 3);
      k[4] = v23;
      k[1] = v21;
      k[2] = v22;
      v19 += 80;
    }

    *(a1 + 8) = k;
    if (j == v18)
    {
      goto LABEL_25;
    }

    v24 = j - v18;
    v25 = j - v24;
LABEL_24:
    v32 = __src;
    memmove(v25, __dst, v24);
    __src = v32;
LABEL_25:

    memmove(__dst, __src, v12);
  }
}

void std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::__assign_with_size[abi:nn200100]<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*,std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = *(a1 + 8);
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v10 -= 16;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
    }

    if (!(a4 >> 60))
    {
      v21 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v21 = a4;
      }

      v22 = v7 >= 0x7FFFFFFFFFFFFFF0;
      v23 = 0xFFFFFFFFFFFFFFFLL;
      if (!v22)
      {
        v23 = v21;
      }

      if (!(v23 >> 60))
      {
        operator new();
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = *(a1 + 8);
  if (a4 <= (v13 - v8) >> 4)
  {
    if (a2 != a3)
    {
      do
      {
        v19 = *v5;
        v18 = v5[1];
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v20 = *(v8 + 1);
        *v8 = v19;
        *(v8 + 1) = v18;
        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    for (; v13 != v8; v13 -= 16)
    {
      v26 = *(v13 - 1);
      if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }
    }

    *(a1 + 8) = v8;
  }

  else
  {
    v14 = (a2 + v13 - v8);
    if (v13 != v8)
    {
      do
      {
        v16 = *v5;
        v15 = v5[1];
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = *(v8 + 1);
        *v8 = v16;
        *(v8 + 1) = v15;
        if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        v5 += 2;
        v8 += 16;
      }

      while (v5 != v14);
      v13 = *(a1 + 8);
    }

    v24 = v13;
    if (v14 != a3)
    {
      v24 = v13;
      do
      {
        v25 = v14[1];
        *v24 = *v14;
        *(v24 + 1) = v25;
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v14 += 2;
        v24 += 16;
      }

      while (v14 != a3);
    }

    *(a1 + 8) = v24;
  }
}

uint64_t AGX::ComputePipeline<AGX::HAL300::ObjClasses,AGX::HAL300::Classes,AGX::HAL300::Encoders>::appendProgramAddressTables(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    v3 = result;
    result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(v3[2] + 1528), *(v3[2] + 1824), *(v3[2] + 1416), @"compute"}];
    v4 = v3[54];
    for (i = v3[55]; v4 != i; result = [a2 addObject:{objc_msgSend(v8, "initWithMappedAddress:mappedSize:binaryUniqueId:type:", v6, v7, *v9, @"compute-dylib-resource"}])
    {
      v6 = *(*v4 + 744);
      v7 = *(*v4 + 760);
      v8 = objc_alloc(MEMORY[0x29EDBB738]);
      v9 = *v4;
      v4 += 16;
    }

    v10 = v3[73];
    for (j = v3[74]; v10 != j; v10 += 2)
    {
      v12 = **v10;
      for (k = (*v10)[1]; v12 != k; v12 += 344)
      {
        result = [a2 addObject:{objc_msgSend(objc_alloc(MEMORY[0x29EDBB738]), "initWithMappedAddress:mappedSize:binaryUniqueId:type:", *(*v12 + 1504), *(*v12 + 1800), *(*v12 + 1392), @"user-intersection"}];
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
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
  if (!v5 || (result = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29CD3ECF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGXG18PFamilyFunctionHandle *>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,AGXG18PFamilyFunctionHandle *>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_22;
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

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t *std::unique_ptr<AGX::HAL300::DynamicLibrary>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~DynamicLibrary(v2);
    MEMORY[0x29ED520D0](v4, 0x10F2C4037025141);
    return v3;
  }

  return v1;
}

void std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::__emplace_back_slow_path<AGX::HAL300::DynamicLibrary*&>(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 60))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 3 > v3)
    {
      v3 = v4 >> 3;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF0)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      if (!(v5 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(16 * v2) = *a2;
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_29CD3F2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::unique_ptr<AGX::HAL300::DynamicLibrary>::~unique_ptr[abi:nn200100](&a14);
  std::__split_buffer<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::~__split_buffer(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<AGX::HAL300::DynamicLibrary *,std::shared_ptr<AGX::HAL300::DynamicLibrary>::__shared_ptr_default_delete<AGX::HAL300::DynamicLibrary,AGX::HAL300::DynamicLibrary>,std::allocator<AGX::HAL300::DynamicLibrary>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~DynamicLibrary(result);

    JUMPOUT(0x29ED520D0);
  }

  return result;
}

void std::__shared_ptr_pointer<AGX::HAL300::DynamicLibrary *,std::shared_ptr<AGX::HAL300::DynamicLibrary>::__shared_ptr_default_delete<AGX::HAL300::DynamicLibrary,AGX::HAL300::DynamicLibrary>,std::allocator<AGX::HAL300::DynamicLibrary>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

char *std::vector<unsigned char>::__assign_with_size[abi:nn200100]<unsigned char *,unsigned char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v14 = a3 - a2;
    if (v14)
    {
      v15 = result;
      memmove(result, a2, v14);
      result = v15;
    }

    v13 = &result[v14];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    v13 = &v9[v12];
  }

  a1[1] = v13;
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 && (bzero(*a1, 8 * v4), v5 = *(a1 + 16), *(a1 + 16) = 0, *(a1 + 24) = 0, v5))
  {
    while (a2)
    {
      std::string::operator=((v5 + 16), (a2 + 2));
      *(v5 + 10) = *(a2 + 10);
      v6 = *v5;
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__node_insert_multi(a1, v5);
      a2 = *a2;
      v5 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    do
    {
      v7 = *v5;
      if (v5[39] < 0)
      {
        operator delete(*(v5 + 2));
      }

      operator delete(v5);
      v5 = v7;
    }

    while (v7);
  }

  else
  {
LABEL_5:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_29CD3F6CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,void *> *>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 && (bzero(*a1, 8 * v4), v5 = *(a1 + 16), *(a1 + 16) = 0, *(a1 + 24) = 0, v5))
  {
    while (a2)
    {
      std::string::operator=((v5 + 16), (a2 + 2));
      v6 = *(a2 + 7);
      *(v5 + 40) = *(a2 + 5);
      *(v5 + 56) = v6;
      v7 = *(a2 + 11);
      v8 = *(a2 + 13);
      v9 = a2[15];
      *(v5 + 72) = *(a2 + 9);
      *(v5 + 15) = v9;
      *(v5 + 104) = v8;
      *(v5 + 88) = v7;
      v10 = *v5;
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__node_insert_multi(a1, v5);
      a2 = *a2;
      v5 = v10;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    do
    {
      v11 = *v5;
      if (v5[39] < 0)
      {
        operator delete(*(v5 + 2));
      }

      operator delete(v5);
      v5 = v11;
    }

    while (v11);
  }

  else
  {
LABEL_5:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_29CD3F884(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::__assign_with_size[abi:nn200100]<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation*,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation*>(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          if (*(v10 - 9) < 0)
          {
            operator delete(*(v10 - 4));
          }

          v10 -= 5;
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= a4)
      {
        v20 = a4;
      }

      if (v19 >= 0x333333333333333)
      {
        v21 = 0x666666666666666;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x666666666666666)
      {
        operator new();
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * (v12 - v8) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v5;
        std::string::operator=((v8 + 1), (v5 + 8));
        *(v8 + 8) = *(v5 + 32);
        v8 += 5;
        v5 += 40;
      }

      while (v5 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      if (*(v12 - 9) < 0)
      {
        operator delete(*(v12 - 4));
      }

      v12 -= 5;
    }

    a1[1] = v8;
  }

  else
  {
    v13 = a2 + v12 - v8;
    if (v12 != v8)
    {
      do
      {
        *v8 = *v5;
        std::string::operator=((v8 + 1), (v5 + 8));
        *(v8 + 8) = *(v5 + 32);
        v5 += 40;
        v8 += 5;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v14 = v12;
    if (v13 != a3)
    {
      v15 = 0;
      do
      {
        v16 = v13 + v15 * 8;
        LODWORD(v12[v15]) = *(v13 + v15 * 8);
        v17 = &v12[v15 + 1];
        if (*(v13 + v15 * 8 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v17, *(v16 + 8), *(v16 + 16));
        }

        else
        {
          v18 = *(v16 + 8);
          v12[v15 + 3] = *(v16 + 24);
          *&v17->__r_.__value_.__l.__data_ = v18;
        }

        LODWORD(v12[v15 + 4]) = *(v16 + 32);
        v15 += 5;
      }

      while (v16 + 40 != a3);
      v14 = &v12[v15];
    }

    a1[1] = v14;
  }
}

unint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  if (v5 >= 0)
  {
    v6 = (a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 39);
  }

  else
  {
    v7 = *(a2 + 24);
  }

  result = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  *(v4 - 1) = result;
  v9 = *(a1 + 8);
  v10 = (*(a1 + 24) + 1);
  v11 = *(a1 + 32);
  v52 = a1;
  v53 = result;
  if (!v9 || (v11 * v9) < v10)
  {
    v12 = 1;
    if (v9 >= 3)
    {
      v12 = (v9 & (v9 - 1)) != 0;
    }

    v13 = v12 | (2 * v9);
    v14 = vcvtps_u32_f32(v10 / v11);
    if (v13 <= v14)
    {
      prime = v14;
    }

    else
    {
      prime = v13;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      result = v53;
      v9 = *(a1 + 8);
    }

    if (prime > v9)
    {
LABEL_19:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (prime < v9)
    {
      v16 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v9 < 3 || (v17 = vcnt_s8(v9), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
      {
        v16 = std::__next_prime(v16);
      }

      else
      {
        v18 = 1 << -__clz(v16 - 1);
        if (v16 >= 2)
        {
          v16 = v18;
        }
      }

      if (prime <= v16)
      {
        prime = v16;
      }

      if (prime >= v9)
      {
        v9 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_19;
        }

        v19 = *a1;
        *a1 = 0;
        if (v19)
        {
          operator delete(v19);
        }

        v9 = 0;
        *(a1 + 8) = 0;
      }

      result = v53;
    }
  }

  v20 = vcnt_s8(v9);
  v20.i16[0] = vaddlv_u8(v20);
  v21 = v20.u32[0];
  if (v20.u32[0] > 1uLL)
  {
    v22 = result;
    if (v9 <= result)
    {
      v22 = result % v9;
    }
  }

  else
  {
    v22 = (v9 - 1) & result;
  }

  v51 = *a1;
  v23 = *(*a1 + 8 * v22);
  if (v23)
  {
    v24 = *(a2 + 39);
    v25 = a2;
    if (v24 >= 0)
    {
      v26 = *(a2 + 39);
    }

    else
    {
      v26 = *(a2 + 24);
    }

    if (v24 >= 0)
    {
      v27 = v4;
    }

    else
    {
      v27 = *(a2 + 16);
    }

    if (v20.u32[0] >= 2uLL)
    {
      v42 = 0;
      do
      {
        v32 = v23;
        v23 = *v23;
        if (!v23)
        {
          break;
        }

        v46 = v23[1];
        v47 = v46;
        if (v46 >= v9)
        {
          v47 = v46 % v9;
        }

        if (v47 != v22)
        {
          break;
        }

        if (v46 != result)
        {
          goto LABEL_77;
        }

        v48 = *(v23 + 39);
        v49 = v48;
        if ((v48 & 0x80u) != 0)
        {
          v48 = v23[3];
        }

        if (v48 == v26)
        {
          v50 = v49 >= 0 ? v23 + 2 : v23[2];
          v37 = memcmp(v50, v27, v26) == 0;
          result = v53;
          v43 = v37;
        }

        else
        {
LABEL_77:
          v43 = 0;
        }

        v44 = v43 != (v42 & 1);
        v45 = v42 & v44;
        v42 |= v44;
      }

      while (v45 != 1);
    }

    else
    {
      v28 = 0;
      do
      {
        v32 = v23;
        v23 = *v23;
        if (!v23)
        {
          break;
        }

        v33 = v23[1];
        if ((v33 & (v9 - 1)) != v22)
        {
          break;
        }

        if (v33 != result)
        {
          goto LABEL_50;
        }

        v34 = *(v23 + 39);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = v23[3];
        }

        if (v34 == v26)
        {
          v36 = v35 >= 0 ? v23 + 2 : v23[2];
          v37 = memcmp(v36, v27, v26) == 0;
          result = v53;
          v29 = v37;
        }

        else
        {
LABEL_50:
          v29 = 0;
        }

        v30 = v29 != (v28 & 1);
        v31 = v28 & v30;
        v28 |= v30;
      }

      while ((v31 & 1) == 0);
    }
  }

  else
  {
    v25 = a2;
    v32 = 0;
  }

  v38 = v25;
  v39 = *(v25 + 8);
  if (v21 > 1)
  {
    v40 = v52;
    if (v39 >= v9)
    {
      v39 %= v9;
    }
  }

  else
  {
    v39 &= v9 - 1;
    v40 = v52;
  }

  if (!v32)
  {
    *v38 = *(v40 + 16);
    *(v40 + 16) = v38;
    v51[v39] = v40 + 16;
    if (!*v38)
    {
      goto LABEL_100;
    }

    v41 = *(*v38 + 8);
    if (v21 > 1)
    {
      if (v41 >= v9)
      {
        v41 %= v9;
      }
    }

    else
    {
      v41 &= v9 - 1;
    }

LABEL_99:
    v51[v41] = v38;
    goto LABEL_100;
  }

  *v38 = *v32;
  *v32 = v38;
  if (*v38)
  {
    v41 = *(*v38 + 8);
    if (v21 > 1)
    {
      if (v41 >= v9)
      {
        v41 %= v9;
      }
    }

    else
    {
      v41 &= v9 - 1;
    }

    if (v41 != v39)
    {
      goto LABEL_99;
    }
  }

LABEL_100:
  ++*(v40 + 24);
  return result;
}

void sub_29CD405BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_t lock, uint64_t a11, uint64_t a12, uint64_t a13, os_unfair_lock_s a14)
{
  os_unfair_lock_unlock(lock);
  os_unfair_lock_unlock(&a14);
  AGX::FunctionTableSet<AGXG18PFamilyUserIntersectionFunctionTable>::~FunctionTableSet(&a14);
  _Unwind_Resume(a1);
}

uint64_t AGX::FunctionTableSet<AGXG18PFamilyUserIntersectionFunctionTable>::~FunctionTableSet(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
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
  if (!v5 || (result = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_29CD40AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyUserIntersectionFunctionTable>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      objc_destroyWeak(v1 + 3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,AGX::WeakObjCPtr<AGXG18PFamilyVisibleFunctionTable>>>>::remove(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *a2;
  v7 = *(*a2 + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a3);
  if (v8 == a2 + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v10 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a3;
  if (*a3)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a3;
    }
  }

  *v8 = v11;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

double ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfig_block_invoke(uint64_t a1)
{
  xmmword_2A179F218 = xmmword_29D2F1820;
  qword_2A179F228 = 28;
  dword_2A179F230 = 1;
  xmmword_2A179F238 = xmmword_29D2F1820;
  qword_2A179F248 = 28;
  dword_2A179F250 = 1;
  xmmword_2A179F198 = xmmword_29D2F1820;
  qword_2A179F1A8 = 28;
  dword_2A179F1B0 = 1;
  qword_2A179EF38 = 0x2000;
  unk_2A179EF40 = 0u;
  dword_2A179EF50 = 1;
  qword_2A179EF78 = 0x2000;
  unk_2A179EF80 = 0u;
  dword_2A179EF90 = 1;
  *&xmmword_2A179F018 = (1792 * *(*(a1 + 32) + 84) + 11648);
  *(&xmmword_2A179F018 + 8) = xmmword_29D2F1B40;
  dword_2A179F030 = 1;
  xmmword_2A179F078 = xmmword_29D2F1830;
  qword_2A179F088 = 12;
  dword_2A179F090 = 1;
  qword_2A179F158 = 64;
  xmmword_2A179F160 = 0u;
  dword_2A179F170 = 1;
  xmmword_2A179F2F8 = xmmword_29D2F1820;
  qword_2A179F308 = 28;
  dword_2A179F310 = 1;
  xmmword_2A179F318 = xmmword_29D2F1820;
  qword_2A179F328 = 28;
  dword_2A179F330 = 1;
  qword_2A179F278 = 0x2000;
  xmmword_2A179F280 = 0u;
  dword_2A179F290 = 21;
  xmmword_2A179F348 = unk_2A179F028;
  xmmword_2A179F338 = xmmword_2A179F018;
  result = 0.0;
  xmmword_2A179F3A8 = unk_2A179F028;
  xmmword_2A179F398 = xmmword_2A179F018;
  xmmword_2A179F408 = unk_2A179F028;
  xmmword_2A179F3F8 = xmmword_2A179F018;
  return result;
}

double ___ZN3AGX21ComputeUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE31unifiedComputeDataBufferConfigsERK16AGXGPUCoreConfig_block_invoke(uint64_t a1)
{
  xmmword_2A179F218 = xmmword_29D2F1820;
  qword_2A179F228 = 28;
  dword_2A179F230 = 1;
  xmmword_2A179F238 = xmmword_29D2F1820;
  qword_2A179F248 = 28;
  dword_2A179F250 = 1;
  xmmword_2A179F198 = xmmword_29D2F1820;
  qword_2A179F1A8 = 28;
  dword_2A179F1B0 = 1;
  qword_2A179EF38 = 0x2000;
  unk_2A179EF40 = 0u;
  dword_2A179EF50 = 1;
  qword_2A179EF78 = 0x2000;
  unk_2A179EF80 = 0u;
  dword_2A179EF90 = 1;
  *&xmmword_2A179F018 = (1792 * *(*(a1 + 32) + 84) + 11648);
  *(&xmmword_2A179F018 + 8) = xmmword_29D2F1B40;
  dword_2A179F030 = 1;
  xmmword_2A179F078 = xmmword_29D2F1830;
  qword_2A179F088 = 12;
  dword_2A179F090 = 1;
  qword_2A179F158 = 64;
  xmmword_2A179F160 = 0u;
  dword_2A179F170 = 1;
  xmmword_2A179F2F8 = xmmword_29D2F1820;
  qword_2A179F308 = 28;
  dword_2A179F310 = 1;
  xmmword_2A179F318 = xmmword_29D2F1820;
  qword_2A179F328 = 28;
  dword_2A179F330 = 1;
  qword_2A179F278 = 0x2000;
  xmmword_2A179F280 = 0u;
  dword_2A179F290 = 21;
  qword_2A179F298 = 0x2000;
  xmmword_2A179F2A0 = 0u;
  dword_2A179F2B0 = 1;
  *&xmmword_2A179F2B8 = 0x2000;
  *(&xmmword_2A179F2B8 + 8) = 0u;
  dword_2A179F2D0 = 1;
  v1 = *(*(a1 + 32) + 60);
  if (v1 <= 3)
  {
    v1 = 3;
  }

  AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs = 0x2000;
  unk_2A179EEE0 = (v1 << 8) | 0x80;
  qword_2A179EEE8 = 8;
  dword_2A179EEF0 = 1;
  qword_2A179EF58 = 0x2000;
  unk_2A179EF60 = 0uLL;
  dword_2A179EF70 = 4;
  qword_2A179EF98 = 0x2000;
  unk_2A179EFA0 = 0uLL;
  dword_2A179EFB0 = 4;
  xmmword_2A179F038 = 0x2000uLL;
  dword_2A179F050 = 4;
  qword_2A179F098 = 0x2000;
  xmmword_2A179F0A0 = 0uLL;
  dword_2A179F0B0 = 4;
  qword_2A179F118 = 0x2000;
  xmmword_2A179F120 = 0uLL;
  dword_2A179F130 = 1;
  qword_2A179F138 = 0x2000;
  xmmword_2A179F140 = 0uLL;
  dword_2A179F150 = 1;
  qword_2A179F2D8 = 0x2000;
  xmmword_2A179F2E0 = 0uLL;
  dword_2A179F2F0 = 1;
  xmmword_2A179F348 = unk_2A179F028;
  xmmword_2A179F338 = xmmword_2A179F018;
  xmmword_2A179F3A8 = unk_2A179F028;
  xmmword_2A179F398 = xmmword_2A179F018;
  xmmword_2A179F408 = unk_2A179F028;
  xmmword_2A179F3F8 = xmmword_2A179F018;
  xmmword_2A179F368 = unk_2A179F048;
  xmmword_2A179F358 = 0x2000uLL;
  xmmword_2A179F3C8 = unk_2A179F048;
  xmmword_2A179F3B8 = 0x2000uLL;
  xmmword_2A179F428 = unk_2A179F048;
  xmmword_2A179F418 = 0x2000uLL;
  xmmword_2A179F388 = *&dbl_2A179F2C8;
  xmmword_2A179F378 = xmmword_2A179F2B8;
  result = dbl_2A179F2C8;
  xmmword_2A179F3E8 = *&dbl_2A179F2C8;
  xmmword_2A179F3D8 = xmmword_2A179F2B8;
  xmmword_2A179F448 = *&dbl_2A179F2C8;
  xmmword_2A179F438 = xmmword_2A179F2B8;
  return result;
}

uint64_t AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::directTGSizeOptimization(uint64_t a1, int16x4_t *a2, uint64_t a3, _DWORD *a4)
{
  *a4 = 3;
  v4 = *(a3 + 60);
  v5 = *(a3 + 28);
  v6 = vuzp1_s16(*(a3 + 32), a2[508]);
  v7 = HIDWORD(*(a3 + 52));
  v8 = *(a3 + 52);
  if (v4 >= v7)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (v7 >= v8 && v7 >= v4)
  {
    v9 = 1;
  }

  v11 = v8 >= v7 && v8 >= v4;
  v12 = v6.u16[0];
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  v14 = v6.u16[1];
  if (v6.u16[0] > v5 || v6.u16[1] > v5)
  {
    if (v6.u16[0] < v5 || v6.u16[0] < v6.u16[1])
    {
      if (v6.u16[1] >= v6.u16[0] && v6.u16[1] >= *(a3 + 28))
      {
        LODWORD(v15) = 2;
      }

      else
      {
        LODWORD(v15) = 0;
      }
    }

    else
    {
      LODWORD(v15) = 1;
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  v44 = *(a3 + 28);
  v45 = v6.i32[0];
  if (v6.u16[1] == v5 && v6.u16[0] == v5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v15;
  }

  v18 = (44739243 * (v6.u16[3] + 95)) >> 32;
  v19 = (v6.i16[0] * v5 * v6.i16[1]);
  result = v19 & 0x1F;
  v21 = (v19 & 0x1F) == 0;
  if (v18 > v19 || result != 0)
  {
    v23 = v6.u16[3] / v19;
    result = 96;
    if (v23 >= 0x60)
    {
      v23 = 96;
    }

    v24 = v6.u16[3];
    v25 = (v23 * v19) / v24;
    while (1)
    {
      if (v21)
      {
        v26 = v19 + 32;
        v27 = (v19 + 32) / (v12 * v14);
        if (v26 == v27 * v12 * v14)
        {
          v49 = v27;
          if (v8 >= v27)
          {
            v28 = v12 * v14 * v27;
          }

          else
          {
            v28 = -2;
          }
        }

        else
        {
          v28 = -1;
        }

        v46 = v28;
        v31 = v14 * v5;
        v32 = v26 / v31;
        if (v26 == v26 / v31 * v31)
        {
          v50 = v26 / v31;
          if (v7 >= v32)
          {
            v29 = v14 * v5 * v32;
          }

          else
          {
            v29 = -2;
          }
        }

        else
        {
          v29 = -1;
        }

        v47 = v29;
        v33 = v5 * v12;
        v34 = v26 / v33;
        if (v26 == v26 / v33 * v33)
        {
          v51 = v26 / v33;
          v30 = v5 * v12 * v34;
          if (v4 < v34)
          {
            v30 = -2;
          }
        }

        else
        {
          v30 = -1;
        }
      }

      else
      {
        v49 = v5 + (1 << __clz(__rbit32(v5 | 0x10000)));
        if (v8 < v49)
        {
          v28 = -1;
        }

        else
        {
          v28 = v12 * v14 * v49;
        }

        v46 = v28;
        v50 = v12 + (1 << __clz(__rbit32(v12 | 0x10000)));
        if (v7 < v50)
        {
          v29 = -1;
        }

        else
        {
          v29 = v14 * v5 * v50;
        }

        v47 = v29;
        v51 = v14 + (1 << __clz(__rbit32(v14 | 0x10000)));
        if (v4 < v51)
        {
          v30 = -1;
        }

        else
        {
          v30 = v5 * v12 * v51;
        }
      }

      v35 = v29 < v28;
      v36 = *(&v46 + v35);
      v48 = v30;
      if (v36 <= v30)
      {
        v37 = v35;
      }

      else
      {
        v37 = 2;
      }

      v38 = *(&v46 + v37);
      if (v38 > v6.u16[2])
      {
        break;
      }

      v39 = v15;
      v40 = v15;
      if (v38 != *(&v46 + v15))
      {
        if (v38 == *(&v46 + v13))
        {
          v39 = v13;
        }

        else
        {
          v39 = v37;
        }

        v40 = v39;
      }

      v41 = *(&v49 + v39);
      v42 = (*(&v44 + (v40 + 2 - 3 * ((21846 * (v40 + 2)) >> 16))) * v41 * *(&v44 + ((v40 | 4) - 3 * ((21846 * (v40 | 4u)) >> 16))));
      v43 = v6.u16[3] / v42;
      if (v43 >= 0x60)
      {
        v43 = 96;
      }

      if (((v43 * v42) / v24) < v25)
      {
        break;
      }

      *(&v44 + v39) = v41;
      v5 = v44;
      v12 = v45;
      v14 = HIWORD(v45);
      v19 = (v45 * v44 * HIWORD(v45));
      v21 = ((v45 * v44 * BYTE2(v45)) & 0x1F) == 0;
      v25 = (v43 * v42) / v24;
      if (v18 <= v19)
      {
        v25 = (v43 * v42) / v24;
        if (((v45 * v44 * BYTE2(v45)) & 0x1F) == 0)
        {
          break;
        }
      }
    }
  }

  *(a3 + 28) = v5;
  *(a3 + 32) = v12;
  *(a3 + 36) = v14;
  return result;
}

void AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = a1;
  v14 = 0;
  agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(a1, a2, 4, 0, 0, 0, &v14);
  v6 = *a3;
  {
    v13 = v6;
    v6 = v13;
    if (v12)
    {
      v6 = v13;
    }
  }

  v7 = v6 >> 2;
  if (v6)
  {
    v8 = 1610617184;
  }

  else
  {
    v8 = 1610613088;
  }

  v9 = v8 & 0xFFFFF3FF | ((v7 & 1) << 10) & 0xF7FF | v7 & 2 | (((*a3 >> 1) & 1) << 11);
  v10 = a2 + 32 * v5;
  v11 = *(v10 + 48);
  *v11 = v9;
  *(v10 + 48) = v11 + 1;
}

uint64_t AGX::ComputeUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::encodeBarrierForSubstream(uint64_t result, unsigned int a2, int a3)
{
  {
    v9 = result;
    v7 = a2;
    v8 = a3;
    a2 = v7;
    a3 = v8;
    v6 = v5;
    result = v9;
    if (v6)
    {
      a2 = v7;
      a3 = v8;
      result = v9;
    }
  }

  if (a2)
  {
    v3 = 1610617184;
  }

  else
  {
    v3 = 1610613088;
  }

  v4 = *(result + 1136);
  *v4 = v3 & 0xFFFFF3FF | (((a2 >> 2) & 1) << 10) & 0xFFFFF7FF | (a2 >> 2) & 2 | (((a2 >> 1) & 1) << 11) | ((a3 << 21) + 0x200000) & 0x1FE00000;
  *(result + 1136) = v4 + 1;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F7150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F7108;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F70C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherDriverOnlyArguments(unsigned long long *,char const*)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F7078;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  v3 = **(a1 + 16);
  v4 = v3 + 17392;
  v5 = v3 + 248;
  v6 = v3 + 17640;
  if (v2 != 6)
  {
    v6 = 0;
  }

  if (v2 != 5)
  {
    v5 = v6;
  }

  if (v2 != 4)
  {
    v4 = v5;
  }

  v7 = v3 + 496;
  v8 = v3 + 16880;
  if (v2 != 3)
  {
    v8 = 0;
  }

  if (v2 != 2)
  {
    v7 = v8;
  }

  if (v2 != 1)
  {
    v3 = v7;
  }

  if (v2 <= 3)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::FixedLayoutUserArgumentTable,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>(unsigned int *,AGX::HAL300::FixedLayoutUserArgumentTable *,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F7198;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  result = 0;
  v5 = **(a1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 12);
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 20);
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v5 + 24);
    v7 = *(v5 + 4);
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(v5 + 24);
    v7 = *(v5 + 8);
  }

  return v6 + v7;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F7270;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  result = 0;
  v5 = **(a1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 12);
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 20);
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v5 + 24);
    v7 = *(v5 + 4);
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(v5 + 24);
    v7 = *(v5 + 8);
  }

  return v6 + v7;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned int *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F7228;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return **(a1 + 8);
  }

  result = 0;
  v5 = **(a1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(v5 + 24);
      v7 = *(v5 + 12);
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v6 = *(v5 + 24);
      v7 = *(v5 + 20);
    }
  }

  else if (v3 == 1)
  {
    v6 = *(v5 + 24);
    v7 = *(v5 + 4);
  }

  else
  {
    if (v3 != 2)
    {
      return result;
    }

    v6 = *(v5 + 24);
    v7 = *(v5 + 8);
  }

  return v6 + v7;
}

__n128 std::__function::__func<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1},std::allocator<void AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned long long,AGX::CombinedUserDriverArgumentTable<AGX::HAL300::Classes,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>>::gatherArguments<AGX::HAL300::ConfigurableLayoutUserArgumentTable,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes>>(unsigned long long *,AGX::HAL300::ConfigurableLayoutUserArgumentTable *,AGX::ComputeDriverArgumentTable<AGX::HAL300::Classes> *)::{lambda(DriverArgumentOffset::SectionType)#1}>,char const* ()(DriverArgumentOffset::SectionType)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A23F71E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::finalizeScsParameters(uint64_t result, uint64_t a2)
{
  v2 = a2 + 8;
  *(result + 16) = *(a2 + 8);
  v3 = *(a2 + 56);
  if (!v3)
  {
    v9 = result;
    v10 = a2;
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a2 + 8, 6);
    a2 = v10;
    v3 = SectionEnd;
    result = v9;
    *(v10 + 56) = v3;
  }

  v4 = *(a2 + 104);
  if (v4 == -1)
  {
    v4 = 32 * *(a2 + 11) * *(a2 + 12);
    *(a2 + 104) = v4;
  }

  *(result + 8) = v3;
  *(result + 12) = v4 + v3;
  *result = 0;
  v5 = *(a2 + 52);
  if (!v5)
  {
    v12 = result;
    v13 = a2;
    v14 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v2, 5);
    a2 = v13;
    v5 = v14;
    result = v12;
    *(v13 + 52) = v5;
  }

  *(result + 24) = v5;
  v6 = *(a2 + 36);
  if (v6)
  {
    v7 = *(a2 + 52);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = result;
    v16 = a2;
    v17 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v2, 10);
    a2 = v16;
    v6 = v17;
    result = v15;
    *(a2 + 36) = v6;
    v7 = *(a2 + 52);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  v18 = result;
  v19 = v2;
  v20 = a2;
  v21 = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(v19, 5);
  a2 = v20;
  v7 = v21;
  result = v18;
  *(v20 + 52) = v7;
LABEL_9:
  *(result + 40) = v6 - v7;
  v8 = *(a2 + 112);
  if (v8 == -1)
  {
    v22 = *(a2 + 10);
    if (v22 > 1)
    {
      ++v22;
    }

    v8 = 8 * v22;
    *(a2 + 112) = v8;
  }

  *(result + 44) = v8;
  return result;
}

uint64_t AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourceCommon(uint64_t a1, uint64_t a2, int8x16_t a3, uint64_t a4, int a5)
{
  v8 = MEMORY[0x29EDC5638];
  if (*(a2 + *MEMORY[0x29EDC5638] + 16) >> 61 == 2)
  {
    v9 = *(a2 + 592);
    v10 = *(v9 + 592);
    v11 = *(v9 + 600);
    if (v10)
    {
      if (*(a1 + 1896))
      {
        MTLResourceListAddResource();
      }

      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(a1 + 2008), v10, a5, a3);
      IOGPUResourceListAddResource();
    }

    if (v11)
    {
      if (*(a1 + 1896))
      {
        MTLResourceListAddResource();
      }

      AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(a1 + 2008), v11, a5, a3);
      IOGPUResourceListAddResource();
    }
  }

  if ((a5 & 0x82A) != 0 && *(a2 + *v8 + 16) >> 61 == 2)
  {
    v12 = *(a2 + 592);
    v13 = *(v12 + 584);
    if (v13 && (LODWORD(v13) = *(v13 + 1304), v13))
    {
      v14 = *(v12 + 409);
      LOBYTE(v13) = 1;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 1922) |= v13;
    *(a1 + 1923) |= v14;
  }

  if (*(a1 + 1896))
  {
    MTLResourceListAddResource();
  }

  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(a1 + 2008), a2, a5, a3);

  return IOGPUResourceListAddResource();
}

uint64_t AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useResourcesCommon(uint64_t result, uint64_t *a2, unsigned int a3, int8x16_t a4, uint64_t a5, int a6)
{
  v8 = result;
  v34 = a6 & 0x82A;
  if (*(result + 1896))
  {
    if (a3)
    {
      v9 = a3;
      v10 = MEMORY[0x29EDC5638];
      do
      {
        v13 = *a2;
        if (*a2)
        {
          if (*(v13 + *v10 + 16) >> 61 == 2)
          {
            v14 = *(v13 + 592);
            v15 = *(v14 + 592);
            v16 = *(v14 + 600);
            if (v15)
            {
              MTLResourceListAddResource();
              AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), v15, a6, v17);
              IOGPUResourceListAddResource();
            }

            if (v16)
            {
              MTLResourceListAddResource();
              AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), v16, a6, v18);
              IOGPUResourceListAddResource();
            }
          }

          if (v34 && *(v13 + *v10 + 16) >> 61 == 2)
          {
            v19 = *(v13 + 592);
            v20 = *(v19 + 584);
            if (v20 && (LODWORD(v20) = *(v20 + 1304), v20))
            {
              v11 = *(v19 + 409);
              LOBYTE(v20) = 1;
            }

            else
            {
              v11 = 0;
            }

            *(v8 + 1922) |= v20;
            *(v8 + 1923) |= v11;
          }

          MTLResourceListAddResource();
          AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), v13, a6, v12);
          result = IOGPUResourceListAddResource();
        }

        ++a2;
        --v9;
      }

      while (v9);
    }
  }

  else if (a3)
  {
    v21 = 0;
    v22 = MEMORY[0x29EDC5638];
    v33 = a3;
    do
    {
      v23 = a2[v21];
      if (v23)
      {
        v24 = *v22;
        if (*(v23 + v24 + 16) >> 61 == 2)
        {
          v25 = *(v23 + 592);
          v26 = *(v25 + 600);
          if (*(v25 + 592))
          {
            AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), *(v25 + 592), a6, a4);
            IOGPUResourceListAddResource();
          }

          if (v26)
          {
            AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), v26, a6, a4);
            IOGPUResourceListAddResource();
          }

          LODWORD(v24) = *v22;
        }

        if (v34 && *(v23 + v24 + 16) >> 61 == 2)
        {
          v27 = *(v23 + 592);
          v28 = *(v27 + 584);
          if (v28 && (LODWORD(v28) = *(v28 + 1304), v28))
          {
            v29 = *(v27 + 409);
            LOBYTE(v28) = 1;
          }

          else
          {
            v29 = 0;
          }

          *(v8 + 1922) |= v28;
          *(v8 + 1923) |= v29;
        }

        if (*(v23 + v24 + 16) >> 61 == 3)
        {
          v30 = *(v23 + 312);
          IOGPUResourceListAddResource();
          v31 = *(v30 + 64);
          v32 = *(v30 + 72);
          while (v31 != v32)
          {
            if (*v31)
            {
              AGX::IntersectionPipelineSet<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getEslResourceInfo(*v31);
              IOGPUResourceListAddResource();
            }

            v31 += 2;
          }
        }

        AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v8 + 2008), v23, a6, a4);
        result = IOGPUResourceListAddResource();
      }

      ++v21;
    }

    while (v21 != v33);
  }

  return result;
}

uint64_t AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::useHeaps(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (*(result + 1896))
  {
    if (a3)
    {
      v4 = 0;
      v5 = a3;
      do
      {
        v6 = *(a2 + 8 * v4);
        result = [v6 type];
        if (result == 2)
        {
          for (i = v6[7]; i != v6[8]; i += 8)
          {
            MTLResourceListAddResource();
            result = IOGPUResourceListAddResource();
          }
        }

        else if (v6)
        {
          MTLResourceListAddResource();
          result = IOGPUResourceListAddResource();
        }

        ++v4;
      }

      while (v4 != v5);
    }
  }

  else if (a3)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = *(a2 + 8 * v8);
      result = [v10 type];
      if (result == 2)
      {
        v11 = v10[7];
        v12 = v10 + 1;
        while (v11 != v12[7])
        {
          v11 += 8;
          result = IOGPUResourceListAddResource();
        }
      }

      else if (v10)
      {
        result = IOGPUResourceListAddResource();
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

_DWORD *AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 48);
    *(a1 + 1968) = v6;
    v7 = *(v5 + 56);
    *(a1 + 1976) = v7;
  }

  else
  {
    v6 = *(a1 + 1968);
    v7 = *(a1 + 1976);
  }

  v8 = v6 + a2;
  if (v6 + a2 > v7)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer();
    v9 = *(a1 + 16);
    v6 = *(v9 + 48);
    *(a1 + 1968) = v6;
    *(a1 + 1976) = *(v9 + 56);
    v8 = v6 + a2;
  }

  *(a1 + 1968) = v8;
  *(a1 + 1984) = a2;
  *v6 = 0x10000;
  v6[1] = a2;
  v32 = v6;
  IOGPUMetalCommandBufferStorageBeginSegment();
  v10 = 0;
  v11 = 0;
  v12 = a1 + 64;
  do
  {
    v23 = v11;
    v24 = *(a1 + 24);
    if (*(v24 + 32 * v23 + 24))
    {
      if (((1 << v23) & 0xFFF339E0480) == 0 || *(v12 + 32 * v23 + 8) != 0)
      {
        if (v23 == 33)
        {
          AGX::DataBufferAllocator<44ul>::initializeDataBufferCPUOnly((a1 + 24));
        }

        else
        {
          v26 = (v24 + 32 * v23);
          v27 = (*(a1 + 48) + (v23 << 6));
          if (!v27[4] || (v14 = v27[2], v13 = v27[3], v15 = v26[1] + v26[2], v15 + *v26 > (v14 - v13)))
          {
            if (*(a1 + 1848))
            {
              AGX::DataBufferAllocator<44ul>::doBufferRandomization(a1 + 24, (*(a1 + 48) + (v23 << 6)));
            }

            IOGPUMetalCommandBufferStorageAllocResourceAtIndex();
            v14 = v27[2];
            v13 = v27[3];
            v15 = v26[1] + v26[2];
          }

          v16 = (v12 + 32 * v23);
          *v16 = v14 - v15;
          v16[1] = v13;
          v17 = *v27 - v27[1];
          v16[2] = v13;
          v16[3] = v17;
          IOGPUResourceListAddResource();
        }
      }
    }

    v18 = *(a1 + 1864);
    if (v10 == 10)
    {
      v19 = 36;
    }

    else
    {
      v19 = v10 + 1;
    }

    if (v10 == 30)
    {
      v19 = 37;
    }

    if (v10 == 9)
    {
      v19 = 35;
    }

    if (v10 == 10)
    {
      v20 = 39;
    }

    else
    {
      v20 = v10 + 1;
    }

    if (v10 == 30)
    {
      v20 = 40;
    }

    if (v10 == 9)
    {
      v20 = 38;
    }

    if (v10 == 10)
    {
      v21 = 42;
    }

    else
    {
      v21 = v10 + 1;
    }

    if (v10 == 30)
    {
      v21 = 43;
    }

    if (v10 == 9)
    {
      v21 = 41;
    }

    if (v18 != 7)
    {
      v21 = v10 + 1;
    }

    v22 = v10 + 1;
    if (v18 != 3)
    {
      v20 = v21;
    }

    if (v18 == 1)
    {
      v11 = v19;
    }

    else
    {
      v11 = v20;
    }

    ++v10;
  }

  while (v22 != 35);
  *(a1 + 1920) = 1;
  v28 = *(a1 + 8);
  v29 = *(v28 + 8);
  if (v29 && (*v28 != 1 || ([v29 ownedByParallelEncoder] & 1) != 0))
  {
    v30 = 0;
  }

  else
  {
    *v28 = 0;
    v30 = 4;
  }

  v32[34] = v30;
  *(v32 + 35) = 0;
  *(v32 + 19) = 0;
  v32[40] = 0;
  *(v32 + 43) = 0;
  *(v32 + 47) = 0;
  *(v32 + 45) = 0;
  IOGPUResourceListAddResource();
  return v32 + 2;
}

uint64_t AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v56 = *MEMORY[0x29EDCA608];
  v53 = 0u;
  v54 = 0u;
  v51 = 0;
  v50 = 0;
  v6 = *(a1 + 1968) - *(a1 + 1984);
  *(v6 + 152) = 0;
  v7 = *(a1 + 2060);
  *(v6 + 188) = v7;
  v8 = *(a1 + 2032);
  v9 = *(a1 + 2036);
  v10 = *(a1 + 2040);
  if (*(a1 + 2028))
  {
    *(v6 + 172) = *(a1 + 2028);
    *(v6 + 176) = v8;
    v7 = 0.0;
    *(a1 + 2028) = 0;
    *(a1 + 2044) = 0;
    *(a1 + 2068) = 0;
  }

  v11 = (v6 + 8);
  if (v10 | v9)
  {
    *(v6 + 180) = v9;
    *(v6 + 184) = v10;
  }

  v52 = 0;
  if (AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getUsedResourceGroupsAndWriteRanges(*(a1 + 2008), &v53, __src, &v52 + 1, &v52, &v51, &v50, v7, a3, a4, a5))
  {
    v12 = v52;
    v13 = HIDWORD(v52);
    v14 = (24 * v52 + 2 * HIDWORD(v52));
    v15 = (v14 + 23) & 0x1FFFFFFF8;
    v16 = *(a1 + 1968);
    v17 = v15 + v16;
    if ((v15 + v16) > *(a1 + 1976))
    {
      *(*(a1 + 16) + 48) = v16;
      IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer();
      v18 = *(a1 + 16);
      v16 = *(v18 + 48);
      *(a1 + 1968) = v16;
      *(a1 + 1976) = *(v18 + 56);
      v17 = v15 + v16;
    }

    v19 = *(a1 + 1984);
    v20 = (v16 - v19);
    v20[1] += v15;
    *(a1 + 1968) = v17;
    *(a1 + 1984) = v19 + v15;
    v11 = (v20 + 2);
    v20[38] = v14;
    v21 = v20 + v20[41] + 8;
    *(v21 + 192) = v13;
    *(v21 + 196) = v12;
    *(v21 + 200) = v50;
    v22 = (v21 + 208);
    v23 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      v24 = 192;
    }

    else
    {
      v23 = v54;
      if (v54)
      {
        v24 = 128;
      }

      else
      {
        v23 = v53.u64[1];
        if (v53.i64[1])
        {
          v24 = 64;
        }

        else
        {
          v23 = v53.i64[0];
          if (!v53.i64[0])
          {
LABEL_26:
            if (v12)
            {
              memcpy(v22, __src, 24 * v12);
            }

            goto LABEL_28;
          }

          v24 = 0;
        }
      }
    }

    v25 = (v24 | __clz(v23)) ^ 0x3F;
    *v22++ = v25;
    if (v25)
    {
LABEL_19:
      while (1)
      {
        v26 = v25 - 1;
        v27 = (v25 - 1) >> 6;
        v28 = (v25 & 0x3F) != 0 ? ~(-1 << v25) : -1;
        v29 = v53.i64[v27] & v28;
        if (!v29)
        {
          break;
        }

        v25 = (v26 | 0x3F) - __clz(v29);
        *v22++ = v25;
        if (!v25)
        {
          goto LABEL_26;
        }
      }

      while (1)
      {
        v30 = v27 - 1;
        if (v27 < 1)
        {
          break;
        }

        v31 = *(&v52 + v27--);
        if (v31)
        {
          v25 = (__clz(v31) | (v30 << 6)) ^ 0x3F;
          *v22++ = v25;
          if (v25)
          {
            goto LABEL_19;
          }

          goto LABEL_26;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_28:
  *(v11 + 32) |= v51;
  v32 = *(a1 + 2016);
  if (v32 && [v32 label])
  {
    v33 = [objc_msgSend(*(a1 + 2016) "label")];
    v34 = strlen(v33);
    if (v34 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v35 = v34;
    if (v34 >= 0x17)
    {
      operator new();
    }

    v49 = v34;
    if (v34)
    {
      memmove(&__dst, v33, v34);
    }

    *(&__dst + v35) = 0;
    if (v49 < 0)
    {
      v36 = __dst;
      strncpy(v11, __dst, 0x80uLL);
      v11[127] = 0;
      operator delete(v36);
    }

    else
    {
      strncpy(v11, &__dst, 0x80uLL);
      v11[127] = 0;
    }
  }

  else
  {
    *v11 = 0;
  }

  v37 = 0;
  v38 = 0;
  do
  {
    v44 = *(a1 + 24) + 32 * v38;
    if (*(v44 + 24))
    {
      v45 = (a1 + 64 + 32 * v38);
      if (v45[1])
      {
        v46 = (*(a1 + 48) + (v38 << 6));
        if (*(a1 + 1848))
        {
          AGX::DataBufferAllocator<44ul>::doBufferRandomization(a1 + 24, v46);
        }

        if (*v45 == v46[2] - (*(v44 + 16) + *(v44 + 8)))
        {
          v46[3] = v45[1];
        }
      }
    }

    v39 = *(a1 + 1864);
    if (v37 == 10)
    {
      v40 = 36;
    }

    else
    {
      v40 = v37 + 1;
    }

    if (v37 == 30)
    {
      v40 = 37;
    }

    if (v37 == 9)
    {
      v40 = 35;
    }

    if (v37 == 10)
    {
      v41 = 39;
    }

    else
    {
      v41 = v37 + 1;
    }

    if (v37 == 30)
    {
      v41 = 40;
    }

    if (v37 == 9)
    {
      v41 = 38;
    }

    if (v37 == 10)
    {
      v42 = 42;
    }

    else
    {
      v42 = v37 + 1;
    }

    if (v37 == 30)
    {
      v42 = 43;
    }

    if (v37 == 9)
    {
      v42 = 41;
    }

    if (v39 != 7)
    {
      v42 = v37 + 1;
    }

    v43 = v37 + 1;
    if (v39 != 3)
    {
      v41 = v42;
    }

    if (v39 == 1)
    {
      v38 = v40;
    }

    else
    {
      v38 = v41;
    }

    ++v37;
  }

  while (v43 != 35);
  *(*(a1 + 16) + 48) = *(a1 + 1968);
  result = IOGPUMetalCommandBufferStorageEndSegment();
  *(a1 + 1920) = 0;
  return result;
}

BOOL AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::userDrawTokenIndex(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v5 = *(a1 + 1944);
    if (v5 == *(a1 + 1948))
    {
      return 0;
    }

    else
    {
      *a2 = v5;
      *a3 = *(a1 + 1948) - 1;
      *(a1 + 1944) = *(a1 + 1948);
      return 1;
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Invalid parameters! (tokenIndexMin = 0x%p, tokenIndexMax = 0x%p)\n", "agxa_context_template.hpp", 206, "userDrawTokenIndex", a2, a3);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v8 = "agxa_context_template.hpp";
      v9 = 1024;
      v10 = 206;
      v11 = 2080;
      v12 = "userDrawTokenIndex";
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Invalid parameters! (tokenIndexMin = 0x%p, tokenIndexMax = 0x%p)\n", buf, 0x30u);
    }

    result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136316162;
      v8 = "agxa_context_template.hpp";
      v9 = 1024;
      v10 = 206;
      v11 = 2080;
      v12 = "userDrawTokenIndex";
      v13 = 2048;
      v14 = a2;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Invalid parameters! (tokenIndexMin = 0x%p, tokenIndexMax = 0x%p)\n", buf, 0x30u);
      return 0;
    }
  }

  return result;
}

double AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::createScsParameters(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 48) + (a3 << 6) + 32);
  v4 = *MEMORY[0x29EDC5638];
  v5 = a2 + 32 * a3;
  v7 = *(v5 + 64);
  v6 = *(v5 + 72);
  v8 = (v5 + 64);
  v9 = v6 + 55;
  if (v6 + 55 > v7)
  {
    v13 = a1;
    v14 = AGX::DataBufferAllocator<44ul>::growNoInline(a2 + 24, a3, 0);
    v6 = v8[1];
    if (!v14)
    {
      a1 = v13;
      goto LABEL_3;
    }

    v9 = v6 + 55;
    a1 = v13;
    if ((v6 + 55) > *v8)
    {
      abort();
    }
  }

  v8[2] = v9;
LABEL_3:
  v10 = v8[3];
  v11 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8[1] = v11 + 3;
  result = 0.0;
  v11[1] = 0u;
  v11[2] = 0u;
  *v11 = 0u;
  *a1 = v11 + v10;
  a1[1] = v11;
  a1[2] = v3 + v4;
  return result;
}

void AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::encodeTimestampLists(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4, uint64_t **a5, uint64_t **a6)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v12 = (a3[1] - *a3) >> 4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    if (a4)
    {
LABEL_3:
      v13 = (a4[1] - *a4) >> 4;
      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      LODWORD(v14) = 0;
      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  LODWORD(v13) = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = (a5[1] - *a5) >> 4;
  if (a6)
  {
LABEL_5:
    v15 = (a6[1] - *a6) >> 4;
    goto LABEL_10;
  }

LABEL_9:
  LODWORD(v15) = 0;
LABEL_10:
  v38 = 8 * (v13 + v12 + v14 + v15) + 16;
  v39 = 0;
  v16 = AGX::SidebandBufferAllocator::allocate((a1 + 1880), v38, 1u, &v39);
  if (v16)
  {
    v37 = a2;
    *v16 = v12;
    v16[1] = v13;
    v16[2] = v14;
    v16[3] = v15;
    v17 = *(a1 + 1896);
    v18 = v16 + 4;
    if (a3)
    {
      v19 = a3[1];
      v20 = *a3;
      if (*a3 != v19)
      {
        if (v17)
        {
          do
          {
            v21 = *v20;
            MTLResourceListAddResource();
            IOGPUResourceListAddResource();
            *v18 = [*(v21 + 8) resourceID];
            v18[1] = *(v20 + 2);
            v18 += 2;
            v20 += 2;
          }

          while (v20 != v19);
        }

        else
        {
          do
          {
            v22 = *v20;
            IOGPUResourceListAddResource();
            *v18 = [*(v22 + 8) resourceID];
            v18[1] = *(v20 + 2);
            v18 += 2;
            v20 += 2;
          }

          while (v20 != v19);
        }
      }
    }

    if (a4)
    {
      v23 = a4[1];
      v24 = *a4;
      v25 = v37;
      if (*a4 != v23)
      {
        if (v17)
        {
          do
          {
            v26 = *v24;
            MTLResourceListAddResource();
            IOGPUResourceListAddResource();
            *v18 = [*(v26 + 8) resourceID];
            v18[1] = *(v24 + 2);
            v18 += 2;
            v24 += 2;
          }

          while (v24 != v23);
        }

        else
        {
          do
          {
            v27 = *v24;
            IOGPUResourceListAddResource();
            *v18 = [*(v27 + 8) resourceID];
            v18[1] = *(v24 + 2);
            v18 += 2;
            v24 += 2;
          }

          while (v24 != v23);
        }
      }
    }

    else
    {
      v25 = v37;
    }

    if (a5)
    {
      v28 = a5[1];
      v29 = *a5;
      if (*a5 != v28)
      {
        if (v17)
        {
          do
          {
            v30 = *v29;
            MTLResourceListAddResource();
            IOGPUResourceListAddResource();
            *v18 = [*(v30 + 8) resourceID];
            v18[1] = *(v29 + 2);
            v18 += 2;
            v29 += 2;
          }

          while (v29 != v28);
        }

        else
        {
          do
          {
            v31 = *v29;
            IOGPUResourceListAddResource();
            *v18 = [*(v31 + 8) resourceID];
            v18[1] = *(v29 + 2);
            v18 += 2;
            v29 += 2;
          }

          while (v29 != v28);
        }
      }
    }

    if (a6)
    {
      v32 = a6[1];
      v33 = *a6;
      if (*a6 != v32)
      {
        if (v17)
        {
          do
          {
            v34 = *v33;
            MTLResourceListAddResource();
            IOGPUResourceListAddResource();
            *v18 = [*(v34 + 8) resourceID];
            v18[1] = *(v33 + 2);
            v18 += 2;
            v33 += 2;
          }

          while (v33 != v32);
        }

        else
        {
          do
          {
            v35 = *v33;
            IOGPUResourceListAddResource();
            *v18 = [*(v35 + 8) resourceID];
            v18[1] = *(v33 + 2);
            v18 += 2;
            v33 += 2;
          }

          while (v33 != v32);
        }
      }
    }

    v36 = v39;
    *(v25 + 148) = v38;
    *(v25 + 152) = v36;
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Could not allocate sideband backing\n", "agxa_context_template.hpp", 1332, "encodeTimestampLists");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v41 = "agxa_context_template.hpp";
      v42 = 1024;
      v43 = 1332;
      v44 = 2080;
      v45 = "encodeTimestampLists";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Could not allocate sideband backing\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v41 = "agxa_context_template.hpp";
      v42 = 1024;
      v43 = 1332;
      v44 = 2080;
      v45 = "encodeTimestampLists";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Could not allocate sideband backing\n", buf, 0x1Cu);
    }
  }
}

uint64_t AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupComputeCommand(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 1840) - 1;
  if (v3 > 6)
  {
    v4 = 10;
  }

  else
  {
    v4 = dword_29D2F76D0[v3];
  }

  v5 = v4;
  if (((1 << v4) & 0xFFF00000480) != 0 && !*(a3 + 32 * v4 + 48))
  {
    v21 = result;
    v22 = a2;
    v23 = a3;
    v24 = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v4, 0);
    a3 = v23;
    a2 = v22;
    v25 = v24;
    result = v21;
    if ((v25 & 1) == 0)
    {
LABEL_16:
      abort();
    }
  }

  v6 = a3 + 40;
  v7 = (a3 + 40 + 32 * v5);
  v8 = result + 127;
  v9 = v7[1] + result + 127;
  if (v9 <= *v7)
  {
    goto LABEL_7;
  }

  v15 = result;
  v16 = a2;
  v17 = v5;
  v18 = a3;
  v19 = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v17, 0);
  a3 = v18;
  a2 = v16;
  v20 = v19;
  result = v15;
  if (v20)
  {
    v9 = v7[1] + v8;
    if (v9 > *v7)
    {
      goto LABEL_16;
    }

LABEL_7:
    v7[2] = v9;
  }

  v10 = *(a3 + 1840) - 1;
  if (v10 > 6)
  {
    v11 = 10;
  }

  else
  {
    v11 = qword_29D2F76F0[v10];
  }

  v12 = v6 + 32 * v11;
  v13 = (*(v12 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
  v14 = v13 + *(v12 + 24);
  *(v12 + 8) = v13 + (result & 0xFFFFFFFFFFFFFFFCLL);
  *(a2 + 88) = v14 & 0xFFFFFFFFFF80;
  return result;
}

uint64_t AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupRenderCommand(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 1840) - 1;
  if (v3 > 6)
  {
    v4 = 31;
  }

  else
  {
    v4 = dword_29D2F750C[v3];
  }

  v5 = *(result + 24);
  v6 = v4;
  if (((1 << v4) & 0xFFF339E0480) != 0 && !*(a3 + 32 * v4 + 48))
  {
    v35 = result;
    v36 = a2;
    v37 = a3;
    v38 = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v4, 0);
    a3 = v37;
    a2 = v36;
    v39 = v38;
    result = v35;
    if ((v39 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v7 = a3 + 40;
  v8 = (a3 + 40 + 32 * v6);
  v9 = v5 + 63;
  v10 = v8[1] + v9;
  if (v10 <= *v8)
  {
    goto LABEL_7;
  }

  v26 = result;
  v27 = a2;
  v28 = v6;
  v29 = a3;
  v30 = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v28, 0);
  a3 = v29;
  a2 = v27;
  v31 = v30;
  result = v26;
  if (v31)
  {
    v10 = v8[1] + v9;
    if (v10 > *v8)
    {
      goto LABEL_31;
    }

LABEL_7:
    v8[2] = v10;
  }

  v11 = *(a3 + 1840) - 1;
  if (v11 > 6)
  {
    v12 = 31;
  }

  else
  {
    v12 = qword_29D2F74B8[v11];
  }

  v13 = v7 + 32 * v12;
  v14 = (*(v13 + 8) + 63) & 0xFFFFFFFFFFFFFFC0;
  v15 = v14 + *(v13 + 24);
  *(v13 + 8) = v14 + (*(result + 24) & 0xFFFFFFFFFFFFFFFCLL);
  a2[12] = (*(result + 16) + v15) & 0xFFFFFFFFC0;
  a2[13] = v15 & 0xFFFFFFFFE0;
  if (v11 > 6)
  {
    v16 = 11;
  }

  else
  {
    v16 = dword_29D2F7760[v11];
  }

  v17 = *result;
  v18 = v16;
  v19 = (v7 + 32 * v16);
  if (((1 << v16) & 0xFFF00000480) != 0 && !v19[1])
  {
    v40 = a2;
    v41 = a3;
    result = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v16, 0);
    a3 = v41;
    a2 = v40;
    if ((result & 1) == 0)
    {
LABEL_31:
      abort();
    }
  }

  v20 = v19[1] + v17 + 127;
  if (v20 <= *v19)
  {
    goto LABEL_17;
  }

  v32 = a2;
  v33 = v18;
  v34 = a3;
  result = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v33, 0);
  a3 = v34;
  a2 = v32;
  if (result)
  {
    v20 = v19[1] + v17 + 127;
    if (v20 > *v19)
    {
      goto LABEL_31;
    }

LABEL_17:
    v19[2] = v20;
  }

  v21 = *(a3 + 1840) - 1;
  if (v21 > 6)
  {
    v22 = 11;
  }

  else
  {
    v22 = qword_29D2F7728[v21];
  }

  v23 = v7 + 32 * v22;
  v24 = (*(v23 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
  v25 = v24 + *(v23 + 24);
  *(v23 + 8) = v24 + (v17 & 0xFFFFFFFFFFFFFFFCLL);
  a2[149] = v25;
  return result;
}

uint64_t AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastRenderCommand(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 1840) - 1;
  if (v3 > 6)
  {
    v4 = 11;
  }

  else
  {
    v4 = dword_29D2F7760[v3];
  }

  v5 = v4;
  if (((1 << v4) & 0xFFF00000480) != 0 && !*(a3 + 32 * v4 + 48))
  {
    v21 = result;
    v22 = a2;
    v23 = a3;
    v24 = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v4, 0);
    a3 = v23;
    a2 = v22;
    v25 = v24;
    result = v21;
    if ((v25 & 1) == 0)
    {
LABEL_16:
      abort();
    }
  }

  v6 = a3 + 40;
  v7 = (a3 + 40 + 32 * v5);
  v8 = result + 127;
  v9 = v7[1] + result + 127;
  if (v9 <= *v7)
  {
    goto LABEL_7;
  }

  v15 = result;
  v16 = a2;
  v17 = v5;
  v18 = a3;
  v19 = AGX::DataBufferAllocator<44ul>::growNoInline(a3, v17, 0);
  a3 = v18;
  a2 = v16;
  v20 = v19;
  result = v15;
  if (v20)
  {
    v9 = v7[1] + v8;
    if (v9 > *v7)
    {
      goto LABEL_16;
    }

LABEL_7:
    v7[2] = v9;
  }

  v10 = *(a3 + 1840) - 1;
  if (v10 > 6)
  {
    v11 = 11;
  }

  else
  {
    v11 = qword_29D2F7728[v10];
  }

  v12 = v6 + 32 * v11;
  v13 = (*(v12 + 8) + 127) & 0xFFFFFFFFFFFFFF80;
  v14 = v13 + *(v12 + 24);
  *(v12 + 8) = v13 + (result & 0xFFFFFFFFFFFFFFFCLL);
  *(a2 + 472) = v14;
  return result;
}

uint64_t AGX::DataBufferAllocator<44ul>::doBufferRandomization(uint64_t result, void *a2)
{
  if (a2[4])
  {
    v2 = *(result + 1824);
    if (v2 == 2)
    {
      v5 = a2[1];
      v6 = a2[3];
      if (v6 <= v5)
      {
        v8 = 0;
      }

      else
      {
        v7 = random();
        do
        {
          v8 = v7;
          v9 = v5 + 4 * v7;
          v7 >>= 1;
        }

        while (v9 >= v6);
      }

      result = random();
      *(v5 + 4 * v8) = result;
    }

    else if (v2 == 1)
    {
      v3 = a2[1];
      for (i = a2[2]; v3 < i; ++v3)
      {
        result = random();
        *v3 = result;
      }
    }
  }

  return result;
}

uint64_t AGX::DataBufferAllocator<44ul>::grow(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *a1;
  if (a2 == 33)
  {
    v6 = *([*(*(a1 + 1832) + 264) resourceArgs] + 72);
    v7 = *(a1 + 1712);
    *(a1 + 1712) = malloc_type_malloc(v6, 0x100004077774924uLL);
    std::vector<unsigned char *>::push_back[abi:nn200100](a1 + 1800, (a1 + 1712));
    if (a3)
    {
      v8 = *(a1 + 1104) - v7;
      memcpy(*(a1 + 1712), v7, v8);
    }

    else
    {
      v8 = 0;
    }

    v17 = *(a1 + 1712);
    *(a1 + 1104) = v17 + v8;
    *(a1 + 1096) = v17 + v6 - (*(v5 + 1072) + *(v5 + 1064));
    *(a1 + 1112) = v17 + v8;
    *(a1 + 1120) = -((v17 + v8) & 0xFFFFFFFF00000000);
    return 1;
  }

  v9 = 32 * a2;
  v10 = v5 + v9;
  v11 = (a1 + v9);
  v12 = *(a1 + 24);
  v13 = (v12 + (a2 << 6));
  v14 = v13[3];
  v15 = v11[6];
  if (*(a1 + 1824))
  {
    AGX::DataBufferAllocator<44ul>::doBufferRandomization(a1, (v12 + (a2 << 6)));
  }

  IOGPUMetalCommandBufferStorageAllocResourceAtIndex();
  if (IOGPUResourceListAddResource() != -1)
  {
    v16 = v13[3];
    v11[5] = v13[2] - (*(v10 + 16) + *(v10 + 8));
    v11[6] = v16;
    v11[8] = *v13 - v13[1];
    if (a3)
    {
      memcpy(v16, v14, v15 - v14);
      v16 = (v11[6] + v15 - v14);
      v11[6] = v16;
    }

    v11[7] = v16;
    return 1;
  }

  return 0;
}

BOOL AGX::DataBufferAllocator<44ul>::resize(uint64_t a1)
{
  v2 = *(*(a1 + 1832) + 272);
  v3 = *(*(a1 + 24) + 2208);
  if (v3)
  {
    v4 = 2 * (*(v3 + *MEMORY[0x29EDC5638] + 40) & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_lock(&unk_2A17A1488);
  if (v4 > *([v2 resourceArgs] + 72))
  {
    v5 = [v2 resourceArgsSize];
    v6 = malloc_type_malloc(v5, 0x1000040931E79F6uLL);
    memcpy(v6, [v2 resourceArgs], v5);
    *(v6 + 4) = v4;
    *(v6 + 9) = v4;
    [v2 setResourceArgs:v6 resourceArgsSize:v5];
    free(v6);
  }

  os_unfair_lock_unlock(&unk_2A17A1488);
  v7 = *a1;
  v8 = *(a1 + 24);
  if (*(a1 + 1824))
  {
    AGX::DataBufferAllocator<44ul>::doBufferRandomization(a1, v8 + 272);
  }

  IOGPUMetalCommandBufferStorageAllocResourceAtIndex();
  v9 = IOGPUResourceListAddResource();
  if (v9 != -1)
  {
    v10 = v8[275];
    *(a1 + 1136) = v10;
    *(a1 + 1128) = v8[274] - (*(v7 + 1104) + *(v7 + 1096));
    *(a1 + 1152) = v8[272] - v8[273];
    *(a1 + 1144) = v10;
  }

  return v9 != -1;
}

void AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(uint64_t a1, unsigned int a2)
{
  if (a2 == 33)
  {

    AGX::DataBufferAllocator<44ul>::initializeDataBufferCPUOnly(a1);
  }

  else
  {
    v2 = 32 * a2;
    v3 = (*a1 + v2);
    v4 = (a1 + v2);
    v5 = (*(a1 + 24) + (a2 << 6));
    if (!v5[4] || (v7 = v5[2], v6 = v5[3], v8 = v3[1] + v3[2], v8 + *v3 > (v7 - v6)))
    {
      if (*(a1 + 1824))
      {
        AGX::DataBufferAllocator<44ul>::doBufferRandomization(a1, (*(a1 + 24) + (a2 << 6)));
      }

      IOGPUMetalCommandBufferStorageAllocResourceAtIndex();
      v7 = v5[2];
      v6 = v5[3];
      v8 = v3[1] + v3[2];
    }

    v4[5] = v7 - v8;
    v4[6] = v6;
    v9 = *v5 - v5[1];
    v4[7] = v6;
    v4[8] = v9;

    IOGPUResourceListAddResource();
  }
}

void AGX::DataBufferAllocator<44ul>::initializeDataBufferCPUOnly(void *a1)
{
  v2 = *a1;
  v3 = a1[214];
  if (!v3)
  {
    a1[214] = malloc_type_malloc(v2[133] + v2[134] + v2[132], 0x100004077774924uLL);
    std::vector<unsigned char *>::push_back[abi:nn200100]((a1 + 225), a1 + 214);
    v3 = a1[214];
  }

  a1[138] = v3;
  a1[137] = v3 + v2[132];
  a1[139] = v3;
  a1[140] = -(v3 & 0xFFFFFFFF00000000);
}

uint64_t AGX::DataBufferAllocator<44ul>::~DataBufferAllocator(uint64_t a1)
{
  v2 = *(a1 + 1800);
  v3 = *(a1 + 1808);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      free(v4);
    }

    while (v2 != v3);
    v2 = *(a1 + 1800);
  }

  if (v2)
  {
    *(a1 + 1808) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t AGX::DataBufferAllocator<44ul>::getGPUAddress(uint64_t a1, int a2)
{
  v2 = *(a1 + 1840);
  if (a2 == 11)
  {
    v3 = 42;
  }

  else
  {
    v3 = a2;
  }

  if (a2 == 31)
  {
    v4 = 43;
  }

  else
  {
    v4 = v3;
  }

  if (a2 == 10)
  {
    LODWORD(v5) = 41;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  if (a2 == 11)
  {
    v6 = 39;
  }

  else
  {
    v6 = a2;
  }

  if (a2 == 31)
  {
    v7 = 40;
  }

  else
  {
    v7 = v6;
  }

  if (a2 == 10)
  {
    v8 = 38;
  }

  else
  {
    v8 = v7;
  }

  if (a2 == 11)
  {
    v9 = 36;
  }

  else
  {
    v9 = a2;
  }

  if (a2 == 31)
  {
    v10 = 37;
  }

  else
  {
    v10 = v9;
  }

  if (a2 == 10)
  {
    v11 = 35;
  }

  else
  {
    v11 = v10;
  }

  if (v2 != 1)
  {
    v11 = a2;
  }

  if (v2 != 3)
  {
    v8 = v11;
  }

  if (v2 == 7)
  {
    v5 = v5;
  }

  else
  {
    v5 = v8;
  }

  if (((1 << v5) & 0xFFF339E0480) != 0 && !*(a1 + 32 * v5 + 48))
  {
    v22 = a1;
    v23 = a2;
    AGX::DataBufferAllocator<44ul>::initializeOnDemandDataBufferSlow(a1, v5);
    a2 = v23;
    a1 = v22;
    v2 = *(v22 + 1840);
  }

  if (a2 == 11)
  {
    v12 = 42;
  }

  else
  {
    v12 = a2;
  }

  if (a2 == 31)
  {
    v13 = 43;
  }

  else
  {
    v13 = v12;
  }

  if (a2 == 10)
  {
    LODWORD(v14) = 41;
  }

  else
  {
    LODWORD(v14) = v13;
  }

  if (a2 == 11)
  {
    v15 = 39;
  }

  else
  {
    v15 = a2;
  }

  if (a2 == 31)
  {
    v16 = 40;
  }

  else
  {
    v16 = v15;
  }

  if (a2 == 10)
  {
    v17 = 38;
  }

  else
  {
    v17 = v16;
  }

  if (a2 == 11)
  {
    v18 = 36;
  }

  else
  {
    v18 = a2;
  }

  if (a2 == 31)
  {
    v19 = 37;
  }

  else
  {
    v19 = v18;
  }

  if (a2 == 10)
  {
    v20 = 35;
  }

  else
  {
    v20 = v19;
  }

  if (v2 != 1)
  {
    v20 = a2;
  }

  if (v2 != 3)
  {
    v17 = v20;
  }

  if (v2 == 7)
  {
    v14 = v14;
  }

  else
  {
    v14 = v17;
  }

  return *(a1 + 32 * v14 + 64) + *(a1 + 32 * v14 + 48);
}

double ___ZN3AGX20DeviceUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE11heapConfigsEP13AtomicVersion_block_invoke(uint64_t a1)
{
  AGX::DeviceUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::heap_configs = "com.apple.AGXMetal.GenericHeap";
  qword_2A179F4D0 = 0;
  unk_2A179F4D8 = 0;
  unk_2A179F490 = xmmword_29D2F45A8;
  unk_2A179F4A0 = unk_29D2F45B8;
  unk_2A179F4B0 = xmmword_29D2F45C8;
  unk_2A179F4C0 = unk_29D2F45D8;
  unk_2A179F470 = agx_generic_heap_args;
  unk_2A179F480 = unk_29D2F4598;
  qword_2A179F4E0 = 0;
  unk_2A179F4E8 = 0;
  qword_2A179F4F0 = "com.apple.AGXMetal.CodeHeap";
  qword_2A179F558 = 0;
  xmmword_2A179F4F8 = agx_generic_heap_args;
  unk_2A179F508 = unk_29D2F4598;
  xmmword_2A179F538 = xmmword_29D2F45C8;
  unk_2A179F548 = unk_29D2F45D8;
  xmmword_2A179F518 = xmmword_29D2F45A8;
  unk_2A179F528 = unk_29D2F45B8;
  unk_2A179F560 = vdupq_n_s64(0x40uLL);
  qword_2A179F570 = 0;
  v1 = *(a1 + 32);
  qword_2A179F578 = "com.apple.AGXMetal.ICBGenericHeap";
  xmmword_2A179F5C0 = xmmword_29D2F45C8;
  unk_2A179F5D0 = unk_29D2F45D8;
  xmmword_2A179F5A0 = xmmword_29D2F45A8;
  unk_2A179F5B0 = unk_29D2F45B8;
  xmmword_2A179F580 = agx_generic_heap_args;
  *algn_2A179F590 = unk_29D2F4598;
  qword_2A179F5E0 = 0;
  unk_2A179F5E8 = 0;
  qword_2A179F5F0 = 0;
  unk_2A179F5F8 = v1;
  qword_2A179F600 = "com.apple.AGXMetal.ICBCodeHeap";
  qword_2A179F668 = 0;
  xmmword_2A179F608 = agx_aperture_heap_args;
  unk_2A179F618 = unk_29D2F4600;
  xmmword_2A179F648 = xmmword_29D2F4630;
  unk_2A179F658 = unk_29D2F4640;
  result = dbl_29D2F4620[0];
  xmmword_2A179F628 = xmmword_29D2F4610;
  unk_2A179F638 = *dbl_29D2F4620;
  xmmword_2A179F670 = unk_2A179F560;
  qword_2A179F680 = v1;
  return result;
}

void AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initializeDebugInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a2 + 1024;
  if (*(a2 + 464))
  {
    v9 = *(a2 + 472) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = 464;
  if (v9)
  {
    v10 = 1024;
  }

  else
  {
    v8 = a2 + 464;
  }

  v11 = *(a2 + v10);
  v12 = *(v8 + 8);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v11 + *v11);
  }

  v15 = (v14 - *v14);
  if (*v15 >= 5u && (v16 = v15[2]) != 0)
  {
    v17 = (v14 + v16 + *(v14 + v16));
  }

  else
  {
    v17 = 0;
  }

  v18 = (v17 - *v17);
  if (*v18 < 7u)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[3];
    if (v19)
    {
      LODWORD(v19) = *(v17 + v19);
    }
  }

  *(a1 + 8) = v19;
  v20 = (v17 + *(v17 - *v17 + 8));
  MEMORY[0x29ED51E00](a1 + 16, v20 + *v20 + 4);
  MEMORY[0x29ED51E00](a1 + 40, a3);
  v21 = (v17 - *v17);
  if (*v21 >= 5u && v21[2] && a4)
  {
    v22 = *(a2 + 8);
    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v23 = *a2;
    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v27) = *(a2 + 8);
    if (v22)
    {
      memmove(&__dst, v23, v22);
    }

    *(&__dst + v22) = 0;
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    *(a1 + 64) = __dst;
    *(a1 + 80) = v27;
    v24 = *(a2 + 24);
    if (*(a2 + 32))
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v24 = *(a2 + 584);
    }

    *(a1 + 112) = v24 - *a2;
  }

  JUMPOUT(0x29ED51E00);
}

void *AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initializeCodeHeap(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 688) = a3 + 504;
  v6 = a2 + 3;
  if (a2[4])
  {
    v7 = a2[3] == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = a2 + 73;
  if (v7)
  {
    v9 = a2 + 73;
  }

  else
  {
    v9 = a2 + 3;
  }

  v10 = v9[1];
  v11 = *(a1 + 1144);
  v12 = *(a1 + 1136);
  if (v10 <= &v11[-v12])
  {
    if (v10 < &v11[-v12])
    {
      *(a1 + 1144) = v12 + v10;
    }
  }

  else
  {
    v13 = *(a1 + 1152);
    if (v13 - v11 < v10 - &v11[-v12])
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_91;
    }

    v14 = (v10 + v12);
    bzero(v11, v10 - &v11[-v12]);
    *(a1 + 1144) = v14;
  }

  if (*v6)
  {
    v15 = a2[4];
    if (v15)
    {
      v16 = *v6;
    }

    else
    {
      v16 = a2[73];
    }

    if (v15)
    {
      v8 = v6;
    }
  }

  else
  {
    v16 = *v8;
  }

  memcpy(*(a1 + 1136), v16, v8[1]);
  v17 = a3 + 336;
  *(a1 + 776) = a3 + 336;
  v18 = a2 + 8;
  if (a2[9])
  {
    v19 = a2[8] == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = a2 + 78;
  if (v19)
  {
    v21 = a2 + 78;
  }

  else
  {
    v21 = a2 + 8;
  }

  v22 = v21[1];
  v23 = *(a1 + 1168);
  v24 = *(a1 + 1160);
  if (v22 <= &v23[-v24])
  {
    if (v22 < &v23[-v24])
    {
      *(a1 + 1168) = v24 + v22;
    }
  }

  else
  {
    v25 = *(a1 + 1176);
    if (v25 - v23 < v22 - &v23[-v24])
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_91;
    }

    v26 = (v22 + v24);
    bzero(v23, v22 - &v23[-v24]);
    *(a1 + 1168) = v26;
  }

  if (*v18)
  {
    v27 = a2[9];
    if (v27)
    {
      v28 = *v18;
    }

    else
    {
      v28 = a2[78];
    }

    if (v27)
    {
      v20 = a2 + 8;
    }
  }

  else
  {
    v28 = *v20;
  }

  memcpy(*(a1 + 1160), v28, v20[1]);
  *(a1 + 864) = v17;
  v29 = a2 + 13;
  if (a2[14])
  {
    v30 = a2[13] == 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = a2 + 83;
  if (v30)
  {
    v32 = a2 + 83;
  }

  else
  {
    v32 = a2 + 13;
  }

  v33 = v32[1];
  v34 = *(a1 + 1192);
  v35 = *(a1 + 1184);
  if (v33 <= &v34[-v35])
  {
    if (v33 < &v34[-v35])
    {
      *(a1 + 1192) = v35 + v33;
    }
  }

  else
  {
    v36 = *(a1 + 1200);
    if (v36 - v34 < v33 - &v34[-v35])
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_91;
    }

    v37 = (v33 + v35);
    bzero(v34, v33 - &v34[-v35]);
    *(a1 + 1192) = v37;
  }

  if (*v29)
  {
    v38 = a2[14];
    if (v38)
    {
      v39 = *v29;
    }

    else
    {
      v39 = a2[83];
    }

    if (v38)
    {
      v31 = a2 + 13;
    }
  }

  else
  {
    v39 = *v31;
  }

  memcpy(*(a1 + 1184), v39, v31[1]);
  *(a1 + 952) = v17;
  v40 = a2 + 18;
  if (a2[19])
  {
    v41 = a2[18] == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = a2 + 88;
  if (v41)
  {
    v43 = a2 + 88;
  }

  else
  {
    v43 = a2 + 18;
  }

  v44 = v43[1];
  v45 = *(a1 + 1216);
  v46 = *(a1 + 1208);
  if (v44 <= &v45[-v46])
  {
    if (v44 < &v45[-v46])
    {
      *(a1 + 1216) = v46 + v44;
    }
  }

  else
  {
    v47 = *(a1 + 1224);
    if (v47 - v45 < v44 - &v45[-v46])
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_91:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v48 = (v44 + v46);
    bzero(v45, v44 - &v45[-v46]);
    *(a1 + 1216) = v48;
  }

  if (*v40)
  {
    v49 = a2[19];
    if (v49)
    {
      v50 = *v40;
    }

    else
    {
      v50 = a2[88];
    }

    if (v49)
    {
      v42 = a2 + 18;
    }
  }

  else
  {
    v50 = *v42;
  }

  result = memcpy(*(a1 + 1208), v50, v42[1]);
  *(a1 + 1040) = v17;
  v52 = a2[23];
  v53 = a2[24];
  v54 = a2 + 23;
  if (v53)
  {
    v55 = v52 == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v54 + 70;
  if (!v55)
  {
    v56 = v54;
  }

  *(a1 + 1232) = v56[1];
  return result;
}

uint64_t AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~DynamicLibrary(uint64_t a1)
{
  v2 = *(a1 + 1208);
  if (v2)
  {
    *(a1 + 1216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1184);
  if (v3)
  {
    *(a1 + 1192) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 1160);
  if (v4)
  {
    *(a1 + 1168) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 1136);
  if (v5)
  {
    *(a1 + 1144) = v5;
    operator delete(v5);
  }

  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(a1 + 120);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_11:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      operator delete(*(a1 + 40));
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        return a1;
      }

LABEL_17:
      operator delete(*(a1 + 16));
      return a1;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (*(a1 + 39) < 0)
  {
    goto LABEL_17;
  }

  return a1;
}

void std::__shared_ptr_emplace<AGX::HAL300::DynamicLibrary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23F7F68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

uint64_t AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initialize(int8x8_t *a1, uint64_t a2, dispatch_data_t data, uint64_t a4)
{
  size_ptr = 0;
  buffer_ptr = 0;
  if (dispatch_data_create_map(data, &buffer_ptr, &size_ptr))
  {
    AGCDeserializedReply::AGCDeserializedReply(v8);
    AGCDeserializedReply::deserialize(v8, buffer_ptr, size_ptr);
    *a1 = atomic_fetch_add((a2 + 17008), 1uLL);
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initializeDebugInfo(a1, v8, a4, *(a2 + 16608));
    AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initializeCodeHeap(a1, v8, a2 + 6328);
    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::initialize(a1 + 15, v8, a2, a4, 1);
  }

  return 1;
}

uint64_t AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DynamicLibrary(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  v4 = (a1 + 64);
  *(a1 + 128) = 0;
  v5 = (a1 + 128);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 160) = -1;
  *(a1 + 164) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0xFFFFFFFF00000001;
  *(a1 + 216) = 1610612736;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  *(a1 + 288) = v6;
  *(a1 + 304) = v6;
  *(a1 + 256) = 0u;
  *(a1 + 272) = v6;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = -1;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 384) = 1065353216;
  v7 = a1 + 392;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 1065353216;
  v8 = (a1 + 472);
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 549) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 640) = 1;
  v34 = (a1 + 1136);
  v9 = (a1 + 1160);
  v10 = (a1 + 1184);
  v11 = (a1 + 1208);
  *(a1 + 720) = 0u;
  *(a1 + 692) = 0u;
  *(a1 + 708) = 0u;
  *(a1 + 660) = 0u;
  *(a1 + 676) = 0u;
  *(a1 + 644) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1096) = 0u;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  std::string::operator=((a1 + 16), (a2 + 16));
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=(v4, (a2 + 64));
  std::string::operator=((a1 + 88), (a2 + 88));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  std::string::operator=(v5, (a2 + 128));
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  v14 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v14;
  *(a1 + 168) = v13;
  *(a1 + 152) = v12;
  v15 = *(a2 + 216);
  v16 = *(a2 + 232);
  v17 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = v17;
  *(a1 + 232) = v16;
  *(a1 + 216) = v15;
  v18 = *(a2 + 280);
  v19 = *(a2 + 296);
  v20 = *(a2 + 312);
  *(a1 + 322) = *(a2 + 322);
  *(a1 + 296) = v19;
  *(a1 + 312) = v20;
  *(a1 + 280) = v18;
  *(a1 + 344) = *(a2 + 344);
  if (a1 == a2)
  {
    *(a1 + 544) = *(a2 + 544);
    v27 = *(a2 + 560);
    v28 = *(a2 + 576);
    v29 = *(a2 + 608);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = v29;
    *(a1 + 560) = v27;
    *(a1 + 576) = v28;
    v30 = *(a2 + 624);
    v31 = *(a2 + 640);
    v32 = *(a2 + 672);
    *(a1 + 656) = *(a2 + 656);
    *(a1 + 672) = v32;
    *(a1 + 624) = v30;
    *(a1 + 640) = v31;
    memmove((a1 + 688), (a2 + 688), 0x1B8uLL);
    *(a1 + 1132) = 0;
  }

  else
  {
    *(a1 + 384) = *(a2 + 384);
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *> *>>(a1 + 352, *(a2 + 368));
    *(a1 + 424) = *(a2 + 424);
    std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,void *> *>>(v7, *(a2 + 408));
    *(a1 + 464) = *(a2 + 464);
    std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,void *> *>>(a1 + 432, *(a2 + 448));
    std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::__assign_with_size[abi:nn200100]<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation*,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation*>(v8, *(a2 + 472), *(a2 + 480), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 480) - *(a2 + 472)) >> 3));
    std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::__assign_with_size[abi:nn200100]<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation*,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation*>((a1 + 496), *(a2 + 496), *(a2 + 504), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 504) - *(a2 + 496)) >> 3));
    std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::__assign_with_size[abi:nn200100]<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*,std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>*>(a1 + 520, *(a2 + 520), *(a2 + 528), (*(a2 + 528) - *(a2 + 520)) >> 4);
    *(a1 + 544) = *(a2 + 544);
    v21 = *(a2 + 560);
    v22 = *(a2 + 576);
    v23 = *(a2 + 608);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = v23;
    *(a1 + 560) = v21;
    *(a1 + 576) = v22;
    v24 = *(a2 + 624);
    v25 = *(a2 + 640);
    v26 = *(a2 + 672);
    *(a1 + 656) = *(a2 + 656);
    *(a1 + 672) = v26;
    *(a1 + 624) = v24;
    *(a1 + 640) = v25;
    memmove((a1 + 688), (a2 + 688), 0x1B8uLL);
    *(a1 + 1132) = 0;
    std::vector<unsigned char>::__assign_with_size[abi:nn200100]<unsigned char *,unsigned char *>(v34, *(a2 + 1136), *(a2 + 1144), *(a2 + 1144) - *(a2 + 1136));
    std::vector<unsigned char>::__assign_with_size[abi:nn200100]<unsigned char *,unsigned char *>(v9, *(a2 + 1160), *(a2 + 1168), *(a2 + 1168) - *(a2 + 1160));
    std::vector<unsigned char>::__assign_with_size[abi:nn200100]<unsigned char *,unsigned char *>(v10, *(a2 + 1184), *(a2 + 1192), *(a2 + 1192) - *(a2 + 1184));
    std::vector<unsigned char>::__assign_with_size[abi:nn200100]<unsigned char *,unsigned char *>(v11, *(a2 + 1208), *(a2 + 1216), *(a2 + 1216) - *(a2 + 1208));
  }

  *(a1 + 1232) = *(a2 + 1232);
  return a1;
}

void sub_29CD45EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v17 = *v15;
  if (*v15)
  {
    *(v10 + 1216) = v17;
    operator delete(v17);
    v18 = *v14;
    if (!*v14)
    {
LABEL_3:
      v19 = *v13;
      if (!*v13)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v18 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 1192) = v18;
  operator delete(v18);
  v19 = *v13;
  if (!*v13)
  {
LABEL_5:
    v20 = *a10;
    if (*a10)
    {
      *(v10 + 1144) = v20;
      operator delete(v20);
    }

    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(v10 + 120);
    if (*(v10 + 111) < 0)
    {
      operator delete(*(v10 + 88));
      if ((*(v10 + 87) & 0x80000000) == 0)
      {
LABEL_9:
        if ((*(v10 + 63) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if ((*(v10 + 87) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(*v12);
    if ((*(v10 + 63) & 0x80000000) == 0)
    {
LABEL_10:
      if ((*(v10 + 39) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    operator delete(*(v10 + 40));
    if ((*(v10 + 39) & 0x80000000) == 0)
    {
LABEL_11:
      _Unwind_Resume(a1);
    }

LABEL_18:
    operator delete(*v11);
    _Unwind_Resume(a1);
  }

LABEL_4:
  *(v10 + 1168) = v19;
  operator delete(v19);
  goto LABEL_5;
}

void AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateCodeHeap(int *a1)
{
  v44 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1 + 282);
  v2 = a1[283];
  a1[283] = v2 + 1;
  if (v2 > 0)
  {
    goto LABEL_28;
  }

  v3 = *(a1 + 142);
  v4 = *(a1 + 143);
  if (v3 != v4)
  {
    *(a1 + 95) = v4 - v3;
    AGX::Heap<true>::allocateImpl(buf, *(a1 + 86), v4 - v3, a1 + 96);
    v5 = *&buf[16];
    *(a1 + 174) = *buf;
    *(a1 + 178) = v5;
    *(a1 + 721) = *&buf[25];
    v6 = *(a1 + 88);
    *(a1 + 94) = v6;
    *(a1 + 93) = *(a1 + 87) + 0x1000000000;
    memcpy(v6, *(a1 + 142), *(a1 + 143) - *(a1 + 142));
  }

  v7 = *(a1 + 145);
  v8 = *(a1 + 146);
  if (v7 != v8)
  {
    *(a1 + 106) = v8 - v7;
    AGX::Heap<true>::allocateImpl(buf, *(a1 + 97), v8 - v7, a1 + 107);
    v9 = *&buf[16];
    *(a1 + 49) = *buf;
    *(a1 + 50) = v9;
    *(a1 + 809) = *&buf[25];
    v10 = *(a1 + 99);
    *(a1 + 105) = v10;
    *(a1 + 104) = *(a1 + 98);
    memcpy(v10, *(a1 + 145), *(a1 + 146) - *(a1 + 145));
  }

  v11 = *(a1 + 148);
  v12 = *(a1 + 149);
  if (v11 != v12)
  {
    *(a1 + 117) = v12 - v11;
    AGX::Heap<true>::allocateImpl(buf, *(a1 + 108), v12 - v11, a1 + 118);
    v13 = *&buf[16];
    *(a1 + 218) = *buf;
    *(a1 + 222) = v13;
    *(a1 + 897) = *&buf[25];
    v14 = *(a1 + 110);
    *(a1 + 116) = v14;
    *(a1 + 115) = *(a1 + 109);
    memcpy(v14, *(a1 + 148), *(a1 + 149) - *(a1 + 148));
  }

  v15 = *(a1 + 151);
  v16 = *(a1 + 152);
  if (v15 != v16)
  {
    *(a1 + 128) = v16 - v15;
    AGX::Heap<true>::allocateImpl(buf, *(a1 + 119), v16 - v15, a1 + 129);
    v17 = *&buf[16];
    *(a1 + 60) = *buf;
    *(a1 + 61) = v17;
    *(a1 + 985) = *&buf[25];
    v18 = *(a1 + 121);
    *(a1 + 127) = v18;
    *(a1 + 126) = *(a1 + 120);
    memcpy(v18, *(a1 + 151), *(a1 + 152) - *(a1 + 151));
  }

  v19 = *(a1 + 154);
  if (v19)
  {
    *(a1 + 139) = v19;
    AGX::Heap<true>::allocateImpl(buf, *(a1 + 130), v19, a1 + 140);
    v20 = *&buf[16];
    *(a1 + 262) = *buf;
    *(a1 + 266) = v20;
    *(a1 + 1073) = *&buf[25];
    v21 = *(a1 + 132);
    *(a1 + 138) = v21;
    *(a1 + 137) = *(a1 + 131);
    bzero(v21, v19);
  }

  *&buf[16] = *(a1 + 95);
  *buf = *(a1 + 186);
  v37 = *(a1 + 52);
  v38 = *(a1 + 106);
  v35 = *(a1 + 230);
  v36 = *(a1 + 117);
  v33 = *(a1 + 63);
  v34 = *(a1 + 128);
  v31 = *(a1 + 274);
  v32 = *(a1 + 139);
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::applyInternalRelocations(a1 + 120, buf, &v37, &v35, &v33, &v31);
  v22 = a1 + 16;
  if ((*(a1 + 87) & 0x80000000) == 0)
  {
    if (!*(a1 + 87))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (*(a1 + 9))
  {
    v22 = *v22;
LABEL_17:
    memcpy(v22 + *(a1 + 14), *(a1 + 94), *(a1 + 95));
  }

LABEL_18:
  {
    {
      v24 = a1 + 10;
      if (*(a1 + 63) < 0)
      {
        v24 = *v24;
      }

      v25 = a1 + 4;
      if (*(a1 + 39) < 0)
      {
        v25 = *v25;
      }

      v26 = a1[2];
      v27._os_unfair_lock_opaque = *a1;
      v28 = a1 + 22;
      if (*(a1 + 111) < 0)
      {
        v28 = *v28;
      }

      v29 = *(a1 + 93);
      v30 = *(a1 + 95);
      *buf = 136316674;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 1024;
      *&buf[24] = v26;
      *&buf[28] = 1024;
      *&buf[30] = v27;
      *&buf[34] = 2080;
      *&buf[36] = v28;
      v40 = 2048;
      v41 = v29;
      v42 = 2048;
      v43 = v30;
      _os_signpost_emit_with_name_impl(&dword_29CA13000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{signpost.description:attribute}s \t\t\t\t\t\t\t  Type=%{signpost.description:attribute}s \t\t\t\t\t\t\t  ID=%{signpost.description:attribute}u \t\t\t\t\t\t\t  UniqueID=%{signpost.description:attribute}u \t\t\t\t\t\t\t  RequestHash=%{signpost.description:attribute}s \t\t\t\t\t\t\t  Addr=%{signpost.description:attribute}llu \t\t\t\t\t\t\t  Size=%{signpost.description:attribute}zu", buf, 0x40u);
    }
  }

LABEL_28:
  os_unfair_lock_unlock(a1 + 282);
}