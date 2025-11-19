uint64_t MTLCompilerBuildRequestWithOptions(void *a1, char *a2, unint64_t a3, char a4, llvm::Module *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, char **a12)
{
  *a9 = 0;
  *a11 = 0;
  v19 = mach_absolute_time();
  v29 = 0;
  v20 = AGCCodeGenServiceBuildRequestInternal(a1, a2, a3, 0, 0, a5, &v29, a6, a7);
  if ((a4 & 2) != 0)
  {
    *a11 = 32;
    v21 = mach_absolute_time() - v19;
    if (getTimebaseInfo(void)::once != -1)
    {
      dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_16695);
    }

    v22 = v21 * getTimebaseInfo(void)::sTimebaseInfo / *algn_28117E63C;
    v23 = v22 - a1[7];
    a1[5] = v22;
    a1[6] = v23;
    *a10 = a1 + 4;
  }

  if (v20)
  {
    InternalErrorMessage = 0;
    v25 = 0;
  }

  else
  {
    v27 = a1[2];
    v26 = (a1 + 2);
    InternalErrorMessage = v27;
    if (!v27)
    {
      InternalErrorMessage = generateInternalErrorMessage(v26, v29);
    }

    v25 = 1;
  }

  *a12 = InternalErrorMessage;
  return v25;
}

uint64_t AGCCodeGenServiceBuildRequestInternal(void *a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, llvm::Module *a6, _DWORD *a7, void *a8, void *a9)
{
  v117 = 0;
  v111 = 0;
  v112 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v109 = 0;
  v113 = 0;
  v106 = 0;
  v107 = 0;
  v110 = 0;
  v9 = 0;
  v108 = 0;
  v124 = 0;
  v10 = 0;
  v11 = 0;
  v144 = *MEMORY[0x277D85DE8];
  v12 = &a2[a3];
  v13 = a2;
  v123 = a7;
  v119 = a2;
  v120 = a3;
  while (2)
  {
    v14 = v9;
    v15 = *v13;
    if (a3 <= 4 * (v15 >> 8) || (v16 = &a2[4 * (v15 >> 8)], (v16 - 4) >= v12))
    {
LABEL_157:
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = *v13;
      v19 = v16 - v13;
      v20 = v16 - v13 - 4;
      switch(*v13)
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0x34u:
        case 0x6Bu:
          *a7 = v18;
          ++v11;
          v10 = 2;
          goto LABEL_146;
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x14u:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Bu:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x1Fu:
        case 0x20u:
        case 0x21u:
        case 0x22u:
        case 0x23u:
        case 0x24u:
        case 0x25u:
        case 0x26u:
        case 0x27u:
        case 0x28u:
        case 0x29u:
        case 0x2Au:
        case 0x2Bu:
        case 0x2Cu:
        case 0x2Du:
        case 0x2Eu:
        case 0x2Fu:
        case 0x30u:
        case 0x31u:
        case 0x32u:
        case 0x36u:
        case 0x37u:
        case 0x38u:
        case 0x5Au:
        case 0x5Bu:
        case 0x5Eu:
        case 0x5Fu:
        case 0x62u:
        case 0x65u:
        case 0x67u:
        case 0x68u:
        case 0x6Au:
          *a7 = v18;
          ++v11;
          v10 = 1;
          goto LABEL_146;
        case 0x3Au:
          v43 = *a7;
          if (*a7 > 0x1Fu || ((1 << v43) & 0xF200800A) == 0)
          {
            v44 = v43 - 90;
            if (v44 > 0x10 || ((1 << v44) & 0x10031) == 0)
            {
              goto LABEL_157;
            }
          }

          if (v20 < 0x60)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x3Bu:
          if (*a7 > 0x32u || ((1 << *a7) & 0x4000000007814) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_130;
        case 0x3Cu:
          v52 = *a7;
          if (*a7 > 0x1Fu || ((1 << v52) & 0xF200800A) == 0)
          {
            v53 = v52 - 90;
            if (v53 > 0x10 || ((1 << v53) & 0x10031) == 0)
            {
              goto LABEL_157;
            }
          }

          goto LABEL_110;
        case 0x3Du:
          v54 = *a7;
          if (*a7 != 9 && v54 != 105 && v54 != 26)
          {
            goto LABEL_157;
          }

LABEL_110:
          if (v16 - v13 == 4)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x3Eu:
          if (v16 - v13 == 4 || *a7 != 10)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x3Fu:
          v21 = *a7;
          if (*a7 <= 0x32u && ((1 << v21) & 0x4000000007814) != 0)
          {
            if (v20 < 0x48)
            {
              goto LABEL_157;
            }
          }

          else if (v20 < 0x48 || v21 != 5)
          {
            goto LABEL_157;
          }

LABEL_144:
          v124 = (v13 + 4);
LABEL_145:
          ++v11;
LABEL_146:
          v13 = v16;
          if (v18 != 96)
          {
            continue;
          }

          if ((v11 - 2) >= 8)
          {
            v17 = 0;
          }

          else
          {
            v17 = v10;
          }

          v14 = v9;
          break;
        case 0x40u:
          if (v20 < 0x84)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x41u:
          if (v20 < 0x40)
          {
            goto LABEL_157;
          }

          goto LABEL_146;
        case 0x42u:
          v45 = *a7;
          if (*a7 <= 0x32u && ((1 << v45) & 0x4000000007834) != 0)
          {
            if (v20 < 0x28)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v62 = isComputeShader(v45);
            if (v20 < 0x28)
            {
              goto LABEL_157;
            }

            a7 = v123;
            a2 = v119;
            a3 = v120;
            if ((v62 & 1) == 0)
            {
              goto LABEL_157;
            }
          }

          goto LABEL_145;
        case 0x43u:
          if (v20 < 8 || *a7 != 5)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x44u:
          if (*a7 <= 0x32u && ((1 << *a7) & 0x4000000007814) != 0 && v20 < 8)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x45u:
          if (v20 < 0x50)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x46u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x47u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x48u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x49u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v112 = (v13 + 4);
          goto LABEL_145;
        case 0x4Au:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v116 = (v13 + 4);
          goto LABEL_145;
        case 0x4Bu:
          v9 = (v13 + 4);
          *v138 = v13 + 4;
          *&v138[8] = v16 - v13 - 4;
          *&v138[16] = xmmword_20E70C4C0;
          v139 = 0;
          v140 = 1;
          if (v20 < 5)
          {
            goto LABEL_157;
          }

          v22 = *v9;
          if (v22 < 1)
          {
            goto LABEL_157;
          }

          if (v19 - 5 < v22)
          {
            goto LABEL_157;
          }

          v23 = &v9[v22];
          if (!flatbuffers::Verifier::VerifyTableStart(v138, &v9[v22]) || !flatbuffers::Table::VerifyOffset(&v9[v22], v138))
          {
            goto LABEL_157;
          }

          v24 = *v23;
          if (*&v23[-v24] < 5u)
          {
            goto LABEL_43;
          }

          if (!*&v23[-v24 + 4])
          {
            goto LABEL_26;
          }

          if (!flatbuffers::Verifier::VerifyVectorOrString(v138, &v23[*&v23[-v24 + 4] + *&v23[*&v23[-v24 + 4]]], 4uLL, 0))
          {
            goto LABEL_157;
          }

          v24 = *v23;
          if (*&v23[-v24] < 5u)
          {
            goto LABEL_43;
          }

LABEL_26:
          v25 = &v23[-v24];
          v26 = *(v25 + 2);
          if (!*(v25 + 2))
          {
            goto LABEL_43;
          }

          v27 = *&v23[v26];
          v28 = *&v23[v26 + v27];
          if (!v28)
          {
            goto LABEL_43;
          }

          v29 = 0;
          v30 = 4 * v28;
          v31 = v26 + v22;
          v32 = &v13[v26 + 8 + v22 + v27];
          v33 = &v13[v22 + 8 + v26 + v27 - *v138];
          v34 = &v13[v27 + 8 + v31];
          do
          {
            v35 = *&v32[v29];
            v36 = v33 + v29 + v35;
            if (!(((v36 & 3) == 0) | (v140 ^ 1) & 1))
            {
              goto LABEL_157;
            }

            if (*&v138[8] < 5uLL)
            {
              goto LABEL_157;
            }

            if (*&v138[8] - 4 < v36)
            {
              goto LABEL_157;
            }

            v37 = *&v32[v35 + v29];
            if (v37 > 0x7FFFFFFE)
            {
              goto LABEL_157;
            }

            v38 = v37 + 4;
            v39 = v35 + v38;
            v41 = *&v138[8] >= v38;
            v40 = *&v138[8] - v38;
            v41 = v40 != 0 && v41 && v40 >= v36;
            v42 = v41 && *&v138[8] - 1 >= (v33 + v29 + v39);
            if (!v42 || *(v34 + v39 + v29))
            {
              goto LABEL_157;
            }

            v29 += 4;
          }

          while (v30 != v29);
LABEL_43:
          ++v11;
LABEL_95:
          a7 = v123;
          a2 = v119;
          a3 = v120;
          goto LABEL_146;
        case 0x4Cu:
          v47 = (v13 + 4);
          *v138 = v47;
          *&v138[8] = v20;
          *&v138[16] = xmmword_20E70C4C0;
          v139 = 0;
          v140 = 1;
          if (v20 < 5)
          {
            goto LABEL_157;
          }

          v48 = *v47;
          if (v48 < 1)
          {
            goto LABEL_157;
          }

          if (v19 - 5 < v48)
          {
            goto LABEL_157;
          }

          v49 = &v47[v48];
          if (!flatbuffers::Verifier::VerifyTableStart(v138, &v47[v48]))
          {
            goto LABEL_157;
          }

          if (!flatbuffers::Table::VerifyOffset(v49, v138))
          {
            goto LABEL_157;
          }

          v50 = (v49 - *v49);
          if (*v50 >= 5u)
          {
            v51 = v50[2];
            if (v51)
            {
              if (!flatbuffers::Verifier::VerifyVectorOrString(v138, v49 + v51 + *(v49 + v51), 4uLL, 0))
              {
                goto LABEL_157;
              }
            }
          }

          ++v11;
          v115 = v47;
          goto LABEL_95;
        case 0x4Du:
          if (v20 < 8)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x4Eu:
          v56 = *a7;
          if (*a7 > 0x1Bu || ((1 << v56) & 0x8070040) == 0)
          {
            v57 = v56 - 91;
            if (v57 > 0xC || ((1 << v57) & 0x1401) == 0)
            {
              goto LABEL_157;
            }
          }

LABEL_130:
          if (v20 < 0x18)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x4Fu:
          v59 = *a7 == 8 || *a7 == 99;
          if (v20 < 8 || !v59)
          {
            goto LABEL_157;
          }

          goto LABEL_144;
        case 0x50u:
          if (v20 < 0x20)
          {
            goto LABEL_157;
          }

          goto LABEL_146;
        case 0x51u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v117 = v13 + 4;
          goto LABEL_145;
        case 0x53u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x54u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v111 = v13 + 4;
          goto LABEL_145;
        case 0x55u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v113 = v13 + 4;
          goto LABEL_145;
        case 0x56u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v114 = v13 + 4;
          goto LABEL_145;
        case 0x57u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v109 = v13 + 4;
          goto LABEL_145;
        case 0x58u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v107 = v13 + 4;
          goto LABEL_145;
        case 0x60u:
          goto LABEL_145;
        case 0x63u:
          if (v20 < 0x18)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        case 0x64u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v110 = v13 + 4;
          goto LABEL_145;
        case 0x66u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v108 = v13 + 4;
          goto LABEL_145;
        case 0x69u:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          v106 = v13 + 4;
          goto LABEL_145;
        case 0x6Cu:
          if (v20 < 4)
          {
            goto LABEL_157;
          }

          goto LABEL_145;
        default:
          goto LABEL_162;
      }
    }

    break;
  }

LABEL_162:
  v63 = 0;
  v64 = a6;
  v65 = a1[8];
  if (!a6 && v17 != 1)
  {
    v63 = (***(v65 + 32))(*(v65 + 32));
  }

  *(v65 + 1953) = v63;
  if ((v17 - 1) >= 2)
  {
    v71 = 0;
    a1[2] = strdup("compiler plugin input state failed validation");
    goto LABEL_303;
  }

  MEMORY[0x20F32FFB0](v128);
  if (!a6)
  {
    if (!a5)
    {
      v69 = AGCGetReplacementIR(0, v128);
      goto LABEL_177;
    }

    if (!OGLCodeGenService::oglCodeGenService)
    {
      operator new();
    }

    v64 = (*(OGLCodeGenService::oglCodeGenService + 16))(v128, a4);
  }

  v66 = AGCGetReplacementIR(v64, v128);
  if (v66)
  {
    v69 = v66;
    if (v64)
    {
      v70 = MEMORY[0x20F330EC0](v64);
      MEMORY[0x20F331DC0](v70, 0x10B2C407FF26C1CLL);
    }
  }

  else
  {
    v69 = v64;
  }

LABEL_177:
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v67)) != 0 && *Value != 48 && atoi(Value))
  {
    llvm::SHA256::SHA256(__p);
    if (v69)
    {
      v134 = 0;
      v135 = 0;
      __dst = &v136;
      *&v138[8] = 0;
      v140 = 0;
      v141 = 0;
      LODWORD(v142) = 1;
      v139 = 0;
      *&v138[16] = 0;
      *&v138[24] = 0;
      *v138 = MEMORY[0x277D82200] + 16;
      p_dst = &__dst;
      llvm::raw_ostream::SetUnbuffered(v138);
      llvm::WriteBitcodeToFile();
      v73 = *p_dst;
      v74 = p_dst[1];
      llvm::SHA256::update();
      llvm::raw_ostream::~raw_ostream(v138);
      if (__dst != &v136)
      {
        free(__dst);
      }
    }

    llvm::SHA256::update();
    llvm::SHA256::final(v138, __p);
    llvm::SHA256::~SHA256(__p);
    v75 = v138[0];
    v137[0] = *&v138[1];
    *(v137 + 15) = *&v138[16];
    v76 = 1;
  }

  else
  {
    v76 = 0;
    v75 = 0;
  }

  v71 = 0;
  v77 = a1[8];
  v126 = v76;
  switch(*v123)
  {
    case 1:
      operator new();
    case 2:
      *v138 = &unk_2825BE458;
      *&v138[8] = v124;
      *&v138[24] = v124;
      operator new();
    case 3:
      AGPVertexShaderObject = AGCLLVMAGPVertexShader::createAGPVertexShaderObject(v77, v69, v124, v14, v115);
      goto LABEL_260;
    case 4:
      *v138 = &unk_2825BE458;
      *&v138[8] = v124;
      *&v138[16] = v124;
      *&v138[24] = 0;
      AGPVertexShaderObject = (*(**(v77 + 32) + 64))(*(v77 + 32));
      goto LABEL_260;
    case 5:
      __dst = &unk_2825BE458;
      v134 = v124;
      v135 = v124;
      v136 = 0;
      *v138 = "air.kernel";
      LOWORD(v139) = 259;
      NamedMetadata = llvm::Module::getNamedMetadata(v69, v138);
      v87 = *(v77 + 32);
      v88 = *v87;
      if (NamedMetadata)
      {
        AGPVertexShaderObject = (*(v88 + 56))();
      }

      else
      {
        AGPVertexShaderObject = (*(v88 + 64))(v87);
      }

      goto LABEL_260;
    case 6:
      AGPVertexShaderObject = (*(**(v77 + 32) + 48))(*(v77 + 32), v77, v69, v124);
      goto LABEL_260;
    case 7:
      AGPVertexShaderObject = (*(**(v77 + 32) + 224))(*(v77 + 32), v77, v69, v111);
      goto LABEL_260;
    case 8:
      operator new();
    case 9:
      AGPVertexShaderObject = (*(**(v77 + 32) + 96))(*(v77 + 32), v77, v69, v124);
      goto LABEL_260;
    case 0xA:
      v89 = **(v77 + 32);
      if ((*(v124 + 16) & 0x80) != 0)
      {
        AGPVertexShaderObject = (*(v89 + 128))();
      }

      else
      {
        AGPVertexShaderObject = (*(v89 + 120))();
      }

      goto LABEL_260;
    case 0xB:
      operator new();
    case 0xC:
      operator new();
    case 0xD:
      operator new();
    case 0xE:
      operator new();
    case 0xF:
      operator new();
    case 0x10:
      operator new();
    case 0x11:
      AGCLLVMDriverSparseShaders::create(v77, v128, *v112);
    case 0x12:
      AGCLLVMDriverFastClearShaders::create(v77, v128, *v116);
    case 0x13:
      operator new();
    case 0x14:
      AGCLLVMDriverExecuteIndirectESLGenerationShader::create(v77, v128, v68);
    case 0x15:
      AGCLLVMDriverExecuteIndirectRangeExecutionVertexShader::create(v77, v128, v68);
    case 0x16:
      AGPVertexShaderObject = (*(**(v77 + 32) + 152))(*(v77 + 32), v77, v128);
      goto LABEL_260;
    case 0x17:
      AGPVertexShaderObject = (*(**(v77 + 32) + 144))(*(v77 + 32), v77, v128);
      goto LABEL_260;
    case 0x18:
      AGPVertexShaderObject = (*(**(v77 + 32) + 176))(*(v77 + 32), v77, v128, v113);
      goto LABEL_260;
    case 0x19:
      v83 = *v109 & 3;
      if ((v83 - 1) >= 2)
      {
        v84 = 2;
      }

      else
      {
        v84 = 3;
      }

      if (v83 == 2)
      {
        v85 = v84;
      }

      else
      {
        v85 = (v83 - 1) < 2;
      }

      AGPVertexShaderObject = (*(**(v77 + 32) + 40))(*(v77 + 32), v77, v128, v85 | *v109 & 4u);
      goto LABEL_260;
    case 0x1A:
      AGPVertexShaderObject = (*(**(v77 + 32) + 104))(*(v77 + 32), v77, v128, *v107 & 1, (*v107 >> 1) & 1);
      goto LABEL_260;
    case 0x1C:
      operator new();
    case 0x1D:
    case 0x1E:
      v78 = *(**(v77 + 32) + 32);
      goto LABEL_232;
    case 0x1F:
      v78 = *(**(v77 + 32) + 32);
      goto LABEL_232;
    case 0x20:
      v78 = *(**(v77 + 32) + 32);
LABEL_232:
      AGPVertexShaderObject = v78();
      goto LABEL_260;
    case 0x21:
    case 0x23:
      v79 = a1[8];
      v80 = 1;
      goto LABEL_192;
    case 0x22:
    case 0x24:
      v79 = a1[8];
      v80 = 0;
LABEL_192:
      AGCLLVMContextSwitchProgram::create(v79, v128, v80);
    case 0x25:
    case 0x26:
    case 0x27:
      operator new();
    case 0x28:
      {
        goto LABEL_200;
      }

      goto LABEL_309;
    case 0x29:
      AGPVertexShaderObject = (*(**(v77 + 32) + 160))(*(v77 + 32), v77, v128);
      goto LABEL_260;
    case 0x2A:
      AGPVertexShaderObject = (*(**(v77 + 32) + 168))(*(v77 + 32), v77, v128, v114);
      goto LABEL_260;
    case 0x2B:
      AGCLLVMDriverTessellationNonBucketedEmitDrawCommandsShader::create(v77, v128, v117);
    case 0x2C:
      AGCLLVMDriverTessellationBucketedComputeInstanceCountsShader::create(v77, v128, v117);
    case 0x2D:
      AGCLLVMDriverTessellationBucketedSumInstanceCountsShader::create(v77, v128, v68);
    case 0x2E:
      AGCLLVMDriverTessellationBucketedEmitDrawCommandsShader::create(v77, v128, v117);
    case 0x2F:
      AGCLLVMDriverVDMNOPDBGShader::create(v77, v128, v68);
    case 0x30:
      AGCLLVMDriverTessellationClearInstanceCountsShader::create(v77, v128, v68);
    case 0x31:
      operator new();
    case 0x32:
      operator new();
    case 0x34:
      operator new();
    case 0x36:
      AGPVertexShaderObject = (*(**(v77 + 32) + 200))(*(v77 + 32), v77, v128);
      goto LABEL_260;
    case 0x37:
      AGPVertexShaderObject = (*(**(v77 + 32) + 208))(*(v77 + 32), v77, v128);
      goto LABEL_260;
    case 0x38:
      AGPVertexShaderObject = (*(**(v77 + 32) + 216))(*(v77 + 32), v77, v128);
      goto LABEL_260;
    case 0x5A:
      AGCLLVMDriverGPUGatherVertexShader::create(v77, v128, v68);
    case 0x5B:
      AGPVertexShaderObject = (*(**(v77 + 32) + 136))(*(v77 + 32), v77, v128);
      goto LABEL_260;
    case 0x5E:
      AGCLLVMDriverVRRPatchVertexShader::create(v77, v128, v68);
    case 0x5F:
      AGCLLVMDriverFastClearVertexShaders::create(v77, v128, *v116);
    case 0x62:
      operator new();
    case 0x65:
      AGPVertexShaderObject = (*(**(v77 + 32) + 184))(*(v77 + 32), v77, v128, v110);
      goto LABEL_260;
    case 0x67:
      AGPVertexShaderObject = (*(**(v77 + 32) + 192))(*(v77 + 32), v77, v128, v108);
      goto LABEL_260;
    case 0x68:
      AGPVertexShaderObject = (*(**(v77 + 32) + 112))(*(v77 + 32), v77, v128, *v106 & 1);
LABEL_260:
      v90 = AGPVertexShaderObject;
      if (!AGPVertexShaderObject)
      {
        v71 = 0;
        goto LABEL_302;
      }

      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1 && (v91 = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v82)) != 0 && *v91 != 48 && (v92 = atoi(v91), v92))
      {
        if ((v126 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
LABEL_309:
          {
            pluginCreateLLVMObject(AGCLLVMCtx &,_AGCStreamToken,llvm::LLVMContext &,llvm::Module *,CompilationState &)::computeCS = 0;
            *algn_27C8D89C8 = 0;
            qword_27C8D89D0 = 0;
          }

LABEL_200:
          AGCLLVMDriverTGSizeOptimizationShader::create(v77, v128);
        }

        AGCPrinterFactory::Get(v92);
        v93 = *(v77 + 40) < 2u;
        v94 = (*(*v90 + 6))(v90);
        std::string::basic_string[abi:nn200100]<0>(&__dst, v94);
        (*(*v90 + 5))(__p, v90);
        v138[0] = v75;
        *&v138[1] = v137[0];
        *&v138[16] = *(v137 + 15);
        LOBYTE(v139) = 1;
        AGCPrinterFactory::createObjectPrinter(v129, v93, &__dst, __p, v138);
        v95 = v129[0];
        if (v132 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v135) < 0)
        {
          operator delete(__dst);
        }

        v96 = v95;
      }

      else
      {
        v96 = 0;
        v95 = *(v77 + 2032);
      }

      (*(*v90 + 8))(v90, v95);
      if ((*(*v90 + 2))(v90))
      {
        *&v138[24] = 0;
        v97 = (*(*v90 + 3))(v90, a1, a1 + 1, a1 + 4, v138);
        std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v138);
        if (v97)
        {
          v71 = 1;
          if (!v96)
          {
            goto LABEL_301;
          }

          goto LABEL_297;
        }

        v100 = v129;
        std::string::basic_string[abi:nn200100]<0>(v129, "Error occurred composing compiler reply.");
        if (v130 >= 0)
        {
          v101 = v129;
        }

        else
        {
          v101 = v129[0];
        }

        AGCTargetPrinter::printMessage(v90[212], "** Compilation failed with error: %s **", v101);
        if (v130 < 0)
        {
LABEL_295:
          operator delete(*v100);
        }
      }

      else
      {
        v98 = v90 + 207;
        if (*(v90 + 1679) < 0)
        {
          if (!v90[208])
          {
            goto LABEL_296;
          }

          v99 = *v98;
        }

        else
        {
          v99 = (v90 + 207);
          if (!*(v90 + 1679))
          {
            goto LABEL_296;
          }
        }

        a1[2] = strdup(v99);
        if (*(v90 + 1679) < 0)
        {
          std::string::__init_copy_ctor_external(v138, v90[207], v90[208]);
        }

        else
        {
          *v138 = *v98;
          *&v138[16] = v90[209];
        }

        v100 = v138;
        if (v138[23] >= 0)
        {
          v102 = v138;
        }

        else
        {
          v102 = *v138;
        }

        AGCTargetPrinter::printMessage(v90[212], "** Compilation failed with error: %s **", v102);
        if ((v138[23] & 0x80000000) != 0)
        {
          goto LABEL_295;
        }
      }

LABEL_296:
      v71 = 0;
      if (!v96)
      {
        goto LABEL_301;
      }

LABEL_297:
      v103 = *v96;
      if (*v96 && v103 != MEMORY[0x277D82670])
      {
        (*(*v103 + 8))(v103);
        *v96 = 0;
      }

      MEMORY[0x20F331DC0](v96, 0x1020C409DFBF432);
LABEL_301:
      (*(*v90 + 1))(v90);
LABEL_302:
      llvm::LLVMContext::~LLVMContext(v128);
      *a8 = *a1;
      *a9 = a1[1];
      break;
    case 0x6A:
      AGCLLVMDriverMSTessellationPatchVertexShader::create(v77, v128, v68);
    case 0x6B:
      operator new();
    default:
      goto LABEL_302;
  }

LABEL_303:
  v104 = *MEMORY[0x277D85DE8];
  return v71;
}

void *AGCGetReplacementIR(llvm::Module *this, llvm::LLVMContext *a2)
{
  v57[21] = *MEMORY[0x277D85DE8];
  {
  }

  v3 = 0;
  {
    {
      v47[0] = "air.requestHash";
      LOWORD(v49) = 259;
      NamedMetadata = llvm::Module::getNamedMetadata(this, v47);
      if (NamedMetadata)
      {
        Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
        String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
        std::string::basic_string[abi:nn200100]<0>(__p, String);
        v10 = *(v4 + 8);
        v8 = v4 + 8;
        v9 = v10;
        if (!v10)
        {
          goto LABEL_17;
        }

        v11 = v8;
        do
        {
          v12 = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100]((v9 + 32), __p);
          if (v12)
          {
            v13 = 8;
          }

          else
          {
            v13 = 0;
          }

          if (!v12)
          {
            v11 = v9;
          }

          v9 = *(v9 + v13);
        }

        while (v9);
        if (v11 == v8 || std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:nn200100](__p, (v11 + 32)))
        {
LABEL_17:
          v3 = 0;
        }

        else
        {
          v50 = 0;
          v48 = 0u;
          v49 = 0u;
          *v47 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0;
          v56[0] = v57;
          v56[1] = 0x400000000;
          v17 = *(v11 + 56);
          v16 = v11 + 56;
          if (*(v16 + 23) >= 0)
          {
            v18 = *(v16 + 23);
          }

          else
          {
            v18 = *(v16 + 8);
          }

          llvm::parseAssemblyString();
          v3 = v43[0];
          if (!v43[0])
          {
            if ((SBYTE7(v52) & 0x80u) == 0)
            {
              v19 = &v51;
            }

            else
            {
              v19 = v51;
            }

            if (v19)
            {
              if ((SBYTE7(v52) & 0x80u) == 0)
              {
                v20 = BYTE7(v52);
              }

              else
              {
                v20 = *(&v51 + 1);
              }

              std::string::basic_string[abi:nn200100](&__dst, v19, v20);
            }

            else
            {
              memset(&__dst, 0, sizeof(__dst));
            }

            v21 = std::string::insert(&__dst, 0, "AssemblerError: error message is: ");
            v22 = v21->__r_.__value_.__r.__words[2];
            *&v40.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
            v40.__r_.__value_.__r.__words[2] = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            v23 = std::string::append(&v40, "\n");
            v24 = v23->__r_.__value_.__r.__words[2];
            *&v41.__r_.__value_.__l.__data_ = *&v23->__r_.__value_.__l.__data_;
            v41.__r_.__value_.__r.__words[2] = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            v25 = std::string::append(&v41, "AssemblerError: line content is: ");
            v26 = v25->__r_.__value_.__r.__words[2];
            *&v42.__r_.__value_.__l.__data_ = *&v25->__r_.__value_.__l.__data_;
            v42.__r_.__value_.__r.__words[2] = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            if (v53 >= 0)
            {
              v27 = &v52 + 8;
            }

            else
            {
              v27 = *(&v52 + 1);
            }

            if (v27)
            {
              if (v53 >= 0)
              {
                v28 = HIBYTE(v53);
              }

              else
              {
                v28 = v53;
              }

              std::string::basic_string[abi:nn200100](&v36, v27, v28);
              v29 = HIBYTE(v38);
              v31 = v36;
              v30 = v37;
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v29 = 0;
              v36 = 0;
              v37 = 0;
              v38 = 0;
            }

            if ((v29 & 0x80u) == 0)
            {
              v32 = &v36;
            }

            else
            {
              v32 = v31;
            }

            if ((v29 & 0x80u) == 0)
            {
              v33 = v29;
            }

            else
            {
              v33 = v30;
            }

            v34 = std::string::append(&v42, v32, v33);
            v35 = v34->__r_.__value_.__r.__words[2];
            *v43 = *&v34->__r_.__value_.__l.__data_;
            v44 = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v38) < 0)
            {
              operator delete(v36);
            }

            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v40.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v44) < 0)
            {
              operator delete(v43[0]);
            }
          }

          llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v56);
          if (v54)
          {
            *(&v54 + 1) = v54;
            operator delete(v54);
          }

          if (SHIBYTE(v53) < 0)
          {
            operator delete(*(&v52 + 1));
          }

          if (SBYTE7(v52) < 0)
          {
            operator delete(v51);
          }

          if (SBYTE7(v49) < 0)
          {
            operator delete(v48);
          }
        }

        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_23;
      }

      std::string::basic_string[abi:nn200100]<0>(v47, "Unable to find air.requestHash metadata");
      if (SBYTE7(v48) < 0)
      {
        operator delete(v47[0]);
      }
    }

    v3 = 0;
  }

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

void AGCLLVMObjectBase::AGCLLVMObjectBase(AGCLLVMObjectBase *this, AGCLLVMCtx *a2)
{
  *this = &unk_2825BDF20;
  *(this + 1) = &unk_2825BDF78;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 5) = this + 56;
  *(this + 6) = 0x400000000;
  *(this + 23) = this + 200;
  *(this + 24) = 0x400000000;
  *(this + 41) = this + 344;
  *(this + 42) = 0x400000000;
  *(this + 59) = this + 488;
  *(this + 60) = 0x400000000;
  *(this + 77) = this + 632;
  *(this + 78) = 0x400000000;
  *(this + 95) = this + 776;
  *(this + 96) = 0x400000000;
  *(this + 113) = this + 920;
  *(this + 114) = 0x400000000;
  *(this + 131) = this + 1064;
  *(this + 132) = 0x400000000;
  *(this + 149) = this + 1208;
  *(this + 150) = 0x400000000;
  *(this + 1336) = 0u;
  *(this + 169) = 0x2000000000;
  llvm::AnalysisManager<llvm::Loop,llvm::LoopStandardAnalysisResults &>::AnalysisManager();
}

void AGCLLVMGen5TargetLowerer::AGCLLVMGen5TargetLowerer(AGCLLVMGen5TargetLowerer *this, llvm::LLVMContext *a2, const char **a3)
{
  v5 = this + 940;
  AGCLLVMBuilder::AGCLLVMBuilder(this, a2);
  *v6 = &unk_2825B9C60;
  v6[58] = 0x400000008;
  if (a3[2])
  {
    v7 = strlen(a3[2]);
  }

  *(this + 32) = xmmword_20E70C6A0;
  *(this + 68) = 0x1000000000;
  *(this + 240) = 0;
  *(this + 246) = 0;
  *(this + 63) = this + 528;
  *(this + 67) = this + 552;
  *(this + 85) = 0;
  *(this + 43) = 0u;
  *(this + 88) = this + 720;
  *(this + 89) = 0x800000000;
  *(this + 106) = 0;
  *(this + 107) = this + 872;
  *(this + 108) = 0x800000000;
  llvm::DataLayout::reset();
  *(this + 904) = 0;
  *(this + 114) = a3;
  *(this + 920) = 0u;
  *(v5 + 5) = -1;
  *(this + 245) = 0;
  *(this + 246) = a3[3];
  *(this + 462) = 16842752;
  *(this + 228) = "driver_parameters";
  *(this + 458) = 3;
  *(this + 921) = 0;
  *(this + 1844) = 0;
  *(this + 216) = 0;
  *(this + 1868) = 0;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_ENABLE_ATOMIC_OPTIMIZATIONS_VERTEX_FRAGMENT", v8);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        *(this + 1868) = 1;
      }
    }
  }

  *(this + 468) = 0x38u / *(this + 117);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v10 = 1;
  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v11 = AGCEnv::getValue("AGC_SKIP_TEXTURE_OOB_CHECKS", v8);
    v10 = !v11 || *v11 == 48 || atoi(v11) == 0;
  }

  *(this + 1881) = v10;
  *(this + 941) = 0;
  *(this + 1884) = 0;
  *(this + 1896) = 0;
  *(this + 1912) = 1;
  *(this + 1917) = 1;
  *(this + 960) = 0;
  *(this + 1922) = 0;
  *(this + 1926) = 0;
  *(this + 483) = 4;
  *(this + 1937) = 0;
  *(this + 1939) = 0;
  *(this + 1943) = 0;
  *(this + 962) = 0;
  *(this + 1890) = 0;
  *(this + 1955) = 0;
  *(this + 1951) = 0;
  *(v5 + 1007) = 0x1000000;
  *this = &unk_2825B9068;
  operator new();
}

void AGCLLVMBuilder::AGCLLVMBuilder(AGCLLVMBuilder *this, llvm::LLVMContext *a2)
{
  *(this + 1) = this + 24;
  *(this + 2) = 0x200000000;
  *(this + 9) = a2;
  *(this + 10) = this + 128;
  *(this + 11) = this + 136;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 54) = 512;
  *(this + 110) = 7;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v4 = MEMORY[0x277D821C8] + 16;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = v4;
  *(this + 17) = MEMORY[0x277D82210] + 16;
  *this = &unk_2825A9608;
  *(this + 18) = llvm::Type::getVoidTy(a2, a2);
  *(this + 19) = llvm::Type::getHalfTy(*(this + 9), v5);
  *(this + 20) = llvm::Type::getBFloatTy(*(this + 9), v6);
  *(this + 21) = llvm::Type::getFloatTy(*(this + 9), v7);
  *(this + 22) = llvm::Type::getInt1Ty(*(this + 9), v8);
  *(this + 23) = llvm::Type::getInt8Ty(*(this + 9), v9);
  *(this + 24) = llvm::Type::getInt16Ty(*(this + 9), v10);
  *(this + 25) = llvm::Type::getInt32Ty(*(this + 9), v11);
  *(this + 26) = llvm::Type::getInt64Ty(*(this + 9), v12);
  v13 = *(this + 19);
  *(this + 27) = llvm::FixedVectorType::get();
  v14 = *(this + 21);
  *(this + 28) = llvm::FixedVectorType::get();
  v15 = *(this + 23);
  *(this + 29) = llvm::FixedVectorType::get();
  v16 = *(this + 24);
  *(this + 30) = llvm::FixedVectorType::get();
  v17 = *(this + 25);
  *(this + 31) = llvm::FixedVectorType::get();
  v18 = *(this + 26);
  *(this + 32) = llvm::FixedVectorType::get();
  v19 = *(this + 19);
  *(this + 33) = llvm::FixedVectorType::get();
  v20 = *(this + 21);
  *(this + 34) = llvm::FixedVectorType::get();
  v21 = *(this + 24);
  *(this + 35) = llvm::FixedVectorType::get();
  v22 = *(this + 25);
  *(this + 36) = llvm::FixedVectorType::get();
  v23 = *(this + 19);
  *(this + 37) = llvm::FixedVectorType::get();
  v24 = *(this + 20);
  *(this + 38) = llvm::FixedVectorType::get();
  v25 = *(this + 21);
  *(this + 39) = llvm::FixedVectorType::get();
  v26 = *(this + 23);
  *(this + 40) = llvm::FixedVectorType::get();
  v27 = *(this + 24);
  *(this + 41) = llvm::FixedVectorType::get();
  v28 = *(this + 25);
  *(this + 42) = llvm::FixedVectorType::get();
  v29 = *(this + 23);
  *(this + 43) = llvm::FixedVectorType::get();
  v30 = *(this + 19);
  *(this + 44) = llvm::FixedVectorType::get();
  v31 = *(this + 20);
  *(this + 45) = llvm::FixedVectorType::get();
  v32 = *(this + 21);
  *(this + 46) = llvm::FixedVectorType::get();
  v33 = *(this + 23);
  *(this + 47) = llvm::FixedVectorType::get();
  v34 = *(this + 24);
  *(this + 48) = llvm::FixedVectorType::get();
  v35 = *(this + 25);
  *(this + 49) = llvm::FixedVectorType::get();
  v36 = *(this + 19);
  *(this + 50) = llvm::FixedVectorType::get();
  v37 = *(this + 20);
  *(this + 51) = llvm::FixedVectorType::get();
  v38 = *(this + 21);
  *(this + 52) = llvm::FixedVectorType::get();
  v39 = *(this + 9);
  v40 = llvm::IntegerType::get();
  *(this + 54) = 0;
  *(this + 55) = 0;
  *(this + 53) = v40;
  *(this + 57) = a2;
}

unint64_t llvm::DataLayout::getTypeAllocSize(llvm::DataLayout *this, llvm::Type *a2)
{
  v4 = llvm::DataLayout::getTypeSizeInBits(this, a2) + 7;
  ABITypeAlignment = llvm::DataLayout::getABITypeAlignment(this, a2);
  return (ABITypeAlignment + (v4 >> 3) - 1) / ABITypeAlignment * ABITypeAlignment;
}

unint64_t llvm::DataLayout::getTypeSizeInBits(llvm::DataLayout *this, llvm::Type *a2)
{
  result = 16;
  switch(*(a2 + 2))
  {
    case 2u:
      return 32;
    case 3u:
    case 0xAu:
      return 64;
    case 4u:
      return 80;
    case 5u:
    case 6u:
      return 128;
    case 7u:
    case 9u:
    case 0xCu:
    case 0xEu:
    case 0x14u:
      __break(1u);
      JUMPOUT(0x20E4E7308);
    case 8u:
      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0xBu:
      return 0x2000;
    case 0xDu:
      return *(a2 + 2) >> 8;
    case 0xFu:
      if ((*(a2 + 2) & 0xFE) == 0x12)
      {
        v7 = *(**(a2 + 2) + 8);
      }

      v6 = this;
      return *(llvm::DataLayout::getPointerAlignElem(v6) + 4);
    case 0x10u:
      v8 = *llvm::DataLayout::getStructLayout();
      goto LABEL_16;
    case 0x11u:
      v9 = *(a2 + 4);
      v8 = v9 * llvm::DataLayout::getTypeAllocSize(this, *(a2 + 3));
LABEL_16:
      result = 8 * v8;
      break;
    case 0x12u:
    case 0x13u:
      v4 = *(a2 + 8);
      result = llvm::DataLayout::getTypeSizeInBits(this, *(a2 + 3)) * v4;
      break;
    case 0x15u:
      v5 = MEMORY[0x20F3315E0](a2);
      result = llvm::DataLayout::getTypeSizeInBits(this, v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,AGCLLVMGen3TargetLowerer::MemoryTransferOp>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCLLVMGen3TargetLowerer::MemoryTransferOp>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCLLVMGen3TargetLowerer::MemoryTransferOp>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
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
  v11[1] = 0;
  v11[2] = 0;
  *v11 = a3;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void *AGCEnv::getValue(AGCEnv *this, const char *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  AGCEnv::getEnvLookup(this);
  v3 = __p;
  v4 = std::string::basic_string[abi:nn200100]<0>(__p, this);
  v5 = qword_28117E518;
  v6 = HIBYTE(v28);
  if (!qword_28117E518)
  {
    goto LABEL_39;
  }

  if (v28 >= 0)
  {
    v7 = HIBYTE(v28);
  }

  else
  {
    v7 = *&__p[8];
  }

  if (v28 < 0)
  {
    v3 = *__p;
  }

  v8 = &qword_28117E518;
  do
  {
    v9 = *(v5 + 55);
    if (v9 >= 0)
    {
      v10 = *(v5 + 55);
    }

    else
    {
      v10 = *(v5 + 40);
    }

    if (v9 >= 0)
    {
      v11 = (v5 + 32);
    }

    else
    {
      v11 = *(v5 + 32);
    }

    if (v7 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v4 = memcmp(v11, v3, v12);
    v13 = v10 < v7;
    if (v4)
    {
      v13 = v4 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v8 = v5;
    }

    v5 = *(v5 + v15);
  }

  while (v5);
  if (v8 == &qword_28117E518)
  {
    goto LABEL_39;
  }

  v16 = *(v8 + 55);
  if (v16 >= 0)
  {
    v17 = *(v8 + 55);
  }

  else
  {
    v17 = v8[5];
  }

  if (v16 >= 0)
  {
    v18 = v8 + 4;
  }

  else
  {
    v18 = v8[4];
  }

  if (v17 >= v7)
  {
    v19 = v7;
  }

  else
  {
    v19 = v17;
  }

  v4 = memcmp(v3, v18, v19);
  v20 = v7 < v17;
  if (v4)
  {
    v20 = v4 < 0;
  }

  if (v20)
  {
LABEL_39:
    v8 = &qword_28117E518;
  }

  if (v6 < 0)
  {
    operator delete(*__p);
  }

  if (v8 == &qword_28117E518)
  {
    v21 = 0;
  }

  else
  {
    v21 = v8 + 7;
    if (*(v8 + 79) < 0)
    {
      v21 = *v21;
    }

    OSLog = AGCEnv::getOSLog(v4);
    if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(v8 + 55);
      if (v23 < 0)
      {
        v23 = v8[5];
      }

      v24 = *(v8 + 79);
      if (v24 < 0)
      {
        v24 = v8[8];
      }

      *__p = 136316162;
      *&__p[4] = "static const char *AGCEnv::getValue(const char *)";
      *&__p[12] = 2080;
      *&__p[14] = this;
      v28 = 2048;
      v29 = v23;
      v30 = 2080;
      v31 = v21;
      v32 = 2048;
      v33 = v24;
      _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s: %s[%zu] = %s[%zu]\n", __p, 0x34u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

void AGCEnv::getEnvLookup(AGCEnv *this)
{
  {
    qword_28117E520 = 0;
    qword_28117E518 = 0;
    AGCEnv::getEnvLookup(void)::envlookup = &qword_28117E518;
    __cxa_atexit(std::map<std::string,std::string>::~map[abi:nn200100], &AGCEnv::getEnvLookup(void)::envlookup, &dword_20E4E1000);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

BOOL std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  result = std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(uint64_t result)
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
      *(v4 - 1) = &unk_2825BDF98;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty(uint64_t result)
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
      *(v4 - 1) = &unk_2825A7378;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty(uint64_t result)
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
      *(v4 - 1) = &unk_2825A7350;
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

BOOL isStringMDNode(llvm::MDString *a1, const char *a2)
{
  if (*a1)
  {
    return 0;
  }

  String = llvm::MDString::getString(a1);
  v6 = v5;
  if (a2)
  {
    v7 = String;
    v8 = strlen(a2);
    if (v6 != v8)
    {
      return 0;
    }

    if (!v8)
    {
      return 1;
    }

    return memcmp(v7, a2, v8) == 0;
  }

  else
  {
    return v5 == 0;
  }
}

void llvm::SmallVectorImpl<llvm::MDNode const*>::resizeImpl<false>(uint64_t a1, unint64_t a2)
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
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = v3;
  }
}

uint64_t AGCLLVMFragmentShader::AGCLLVMFragmentShader(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  *a1 = v9;
  *(a1 + *(v9 - 24)) = a2[2];
  *(a1 + *(*a1 - 24) + 1704) = a2[3];
  *(a1 + 8) = 0;
  *(a1 + 12) = -1;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  v10 = *a2;
  *a1 = *a2;
  *(a1 + *(v10 - 24)) = a2[4];
  *(a1 + *(*a1 - 24) + 1704) = a2[5];
  bzero((a1 + 40), 0x2C0uLL);
  for (i = 0; i != 704; i += 88)
  {
    v12 = a1 + i;
    *(v12 + 84) = 0;
    *(v12 + 104) = 0;
    *(v12 + 40) = 0uLL;
    *(v12 + 56) = 0uLL;
    *(v12 + 66) = 0uLL;
    *(v12 + 116) = 0;
    *(v12 + 108) = 0;
    *(v12 + 124) = 0;
  }

  *(a1 + 744) = a3;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0;
  *(a1 + 856) = a1 + 872;
  *(a1 + 864) = 0x800000000;
  *(a1 + 936) = a1 + 952;
  *(a1 + 944) = 0x800000000;
  v13 = a1 + *(*a1 - 24);
  *(v13 + 2280) = a4;
  *(v13 + 2284) = 1;
  if (a5)
  {
    llvm::AnalysisManager<llvm::Module>::AnalysisManager();
  }

  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL AGCLLVMUserFragmentShader::isSampleMaskVariant(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 20)
  {
    if (a2 == 21)
    {
      v16 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 13);
      v12 = v16 == 0x6F6C6F632E726961;
      v13 = 0x656C706D61735F72;
    }

    else
    {
      if (a2 != 22)
      {
        return result;
      }

      v9 = *a1;
      v10 = a1[1];
      v11 = *(a1 + 14);
      v12 = v9 == 0x747361722E726961;
      v13 = 0x6C706D61735F7265;
    }

    v15 = v12 && v10 == v13;
  }

  else
  {
    if (a2 != 15)
    {
      if (a2 != 18)
      {
        return result;
      }

      v4 = *a1;
      v5 = a1[1];
      v6 = *(a1 + 8);
      return v4 == 0x706D61732E726961 && v5 == 0x5F6B73616D5F656CLL && v6 == 28265;
    }

    v14 = *a1;
    v11 = *(a1 + 7);
    v15 = v14 == 0x706D61732E726961;
  }

  return v15 && v11 == 0x6B73616D5F656C70;
}

uint64_t llvm::raw_ostream::SetUnbuffered(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

uint64_t AGCLLVMUserObject::translatorCompile(AGCLLVMUserObject *this)
{
  v106 = *MEMORY[0x277D85DE8];
  if (*(this + 37) == 1)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      v2 = this + *(*this - 24);
      v3 = v2 + 5040;
      if (v2[5063] < 0)
      {
        v3 = *v3;
      }

      AGCTargetPrinter::printMessage(*(v2 + 212), "------ Compiling function : %s ------\n", v3);
    }

    v4 = *(this + *(*this - 24) + 2136);
    *__str = "llvm.dbg.cu";
    v105 = 259;
    NamedMetadata = llvm::Module::getNamedMetadata(v4, __str);
    v6 = *this;
    if (NamedMetadata)
    {
      v7 = *this;
      *(this + *(v6 - 24) + 4576) = 1;
      v8 = *(this + 21);
      if (v8)
      {
        Subprogram = llvm::Function::getSubprogram(v8);
        v6 = *this;
        if (Subprogram)
        {
          v10 = *this;
          v11 = *(this + *(v6 - 24) + 2160);
          v12 = Subprogram[6];
          llvm::DILocalScope::getNonLexicalBlockFileScope(Subprogram);
          *(this + 5) = llvm::DILocation::getImpl();
          v6 = *this;
        }
      }
    }

    AGCLLVMObject::processBuildRequestInfo((this + *(v6 - 24)));
    v13 = *(this + *(*this - 24) + 2136);
    *__str = "air.shaderSource";
    v105 = 259;
    v14 = llvm::Module::getNamedMetadata(v13, __str);
    if (v14)
    {
      v15 = v14;
      Operand = llvm::NamedMDNode::getOperand(v14);
      String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
      v18 = (this + *(*this - 24));
      isValidToPrintMessage = AGCTargetPrinter::isValidToPrintMessage(v18[212]);
      if (String)
      {
        v20 = !isValidToPrintMessage;
      }

      else
      {
        v20 = 1;
      }

      if (!v20 && AGCLLVMObjectBase::dumpShaderToFile(v18))
      {
        v21 = (*(*v18 + 6))(v18);
        snprintf(__str, 0x80uLL, "%s shader %u (shader source)", v21, *(v18 + 1272));
        v22 = (*(*v18 + 6))(v18);
        if (!strcmp(v22, "compute") || !strcmp(v22, "compute-program"))
        {
          v23 = "Compute";
        }

        else
        {
          v23 = "Graphics";
        }

        if (AGCTargetPrinter::isValidToPrintMessage(v18[212]))
        {
          AGCTargetPrinter::printMessage(v18[212], "------ Start %s %s -------\n", v23, __str);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(v18[212]))
        {
          AGCTargetPrinter::printMessage(v18[212], "%s\n", String);
        }

        if (AGCTargetPrinter::isValidToPrintMessage(v18[212]))
        {
          AGCTargetPrinter::printMessage(v18[212], "------ End %s %s -------\n", v23, __str);
        }
      }

      llvm::NamedMDNode::eraseFromParent(v15);
    }

    v24 = (this + *(*this - 24));
    if (AGCTargetPrinter::isValidToPrintMessage(v24[212]) && AGCLLVMObjectBase::dumpShaderToFile(v24))
    {
      v25 = (*(*v24 + 6))(v24);
      snprintf(__str, 0x80uLL, "%s shader %u (%s)", v25, *(v24 + 1272), "generic");
      __p = 0;
      v76 = 0;
      v77 = 0;
      LODWORD(v95) = 0;
      LOBYTE(v99) = 0;
      v100 = 0;
      LODWORD(v101) = 1;
      v97 = 0;
      v98 = 0;
      v96 = 0;
      v94 = MEMORY[0x277D821F8] + 16;
      p_p = &__p;
      llvm::raw_ostream::SetUnbuffered(&v94);
      v26 = v24[267];
      llvm::Module::print();
      v27 = v24[267];
      v28 = v27 + 24;
      v29 = *(v27 + 4);
      if (v29 == v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = 0;
        do
        {
          if (v29)
          {
            v31 = v29 - 56;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31 + 72;
          for (i = *(v31 + 80); i != v32; i = *(i + 8))
          {
            if (i)
            {
              v34 = i - 24;
            }

            else
            {
              v34 = 0;
            }

            v35 = v34 + 40;
            v36 = *(v34 + 48);
            if (v36 == v35)
            {
              v37 = 0;
            }

            else
            {
              v37 = 0;
              do
              {
                ++v37;
                v36 = *(v36 + 8);
              }

              while (v36 != v35);
            }

            v30 += v37;
          }

          v29 = *(v29 + 8);
        }

        while (v29 != v28);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v24[212]))
      {
        AGCTargetPrinter::printMessage(v24[212], "------ Start LLVM IR %s -------\n", __str);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v24[212]))
      {
        v38 = &__p;
        if (v77 < 0)
        {
          v38 = __p;
        }

        AGCTargetPrinter::printMessage(v24[212], "%s\n", v38);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v24[212]))
      {
        AGCTargetPrinter::printMessage(v24[212], "; %u instructions", v30);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(v24[212]))
      {
        AGCTargetPrinter::printMessage(v24[212], "------ End LLVM IR %s -------\n", __str);
      }

      llvm::raw_ostream::~raw_ostream(&v94);
      if (SHIBYTE(v77) < 0)
      {
        operator delete(__p);
      }
    }

    if (AGCLLVMObjectBase::dumpShaderToFile((this + *(*this - 24))))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v39 = (this + *(*this - 24));
        v40 = v39[212];
        v41 = (*(*v39 + 48))(v39);
        AGCTargetPrinter::printMessage(v40, "------ Compilation flags for %s shader %u ------", v41, *(this + *(*this - 24) + 5088));
      }

      v42 = this + *(*this - 24);
      v43 = *(v42 + 452);
      if (AGCTargetPrinter::isValidToPrintMessage(*(v42 + 212)))
      {
        AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Object fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", (v43 >> 1) & 1, (v43 >> 2) & 1, (v43 >> 3) & 1, (v43 >> 4) & 1, v43 == -1);
      }

      v44 = this + *(*this - 24);
      v45 = *(*(v44 + 271) + 104);
      if (AGCTargetPrinter::isValidToPrintMessage(*(v44 + 212)))
      {
        AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Target fast-math flags: {nonan=%d, noinf=%d, nosignedzero=%d, allowrcp=%d, unsafealgebra=%d}", (v45 >> 1) & 1, (v45 >> 2) & 1, (v45 >> 3) & 1, (v45 >> 4) & 1, v45 == -1);
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Codegen fast-math options: { finite-math=%d, unsafe-fp-math=%d, less_pecise_fmad=%d}", *(this + 34), *(this + 33), *(this + 36));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v46 = (this + *(*this - 24));
        v47 = v46[212];
        v48 = (*(*v46 + 48))(v46);
        AGCTargetPrinter::printMessage(v47, "------ End compilation flags for %s shader %u ------", v48, *(this + *(*this - 24) + 5088));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v49 = (this + *(*this - 24));
        v50 = v49[212];
        v51 = (*(*v49 + 48))(v49);
        AGCTargetPrinter::printMessage(v50, "------ Start compilation key description for %s shader %u  ------", v51, *(this + *(*this - 24) + 5088));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v52 = (this + *(*this - 24));
        v53 = v52[212];
        (*(*v52 + 136))(__str);
        v54 = v104 >= 0 ? __str : *__str;
        AGCTargetPrinter::printMessage(v53, "%s", v54);
        if (v104 < 0)
        {
          operator delete(*__str);
        }
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v55 = (this + *(*this - 24));
        v56 = v55[212];
        v57 = (*(*v55 + 48))(v55);
        AGCTargetPrinter::printMessage(v56, "------ End compilation key description for %s shader %u  ------", v57, *(this + *(*this - 24) + 5088));
      }

      if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
      {
        v58 = (this + *(*this - 24));
        v59 = *(v58 + 212);
        DefaultRoundingMode = AGCLLVMObject::getDefaultRoundingMode(v58);
        AGCTargetPrinter::printMessage(v59, "Default rounding mode: %s", _AGCFPRoundingModeStrings[DefaultRoundingMode]);
      }
    }

    v61 = *(this + *(*this - 24) + 2136);
    GlobalVariable = llvm::Module::getGlobalVariable();
    if (GlobalVariable)
    {
      llvm::GlobalVariable::eraseFromParent(GlobalVariable);
    }

    v63 = this + *(*this - 24);
    *__str = &AGCUserObjectWrapper::Key;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v63 + 1584), __str)[1])
    {
      operator new();
    }

    v64 = this + *(*this - 24);
    *__str = &MetadataAnalysis::Key;
    if (!llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct((v64 + 1584), __str)[1])
    {
      operator new();
    }

    v93 = 0;
    v65 = this + *(*this - 24);
    llvm::OptNoneInstrumentation::registerCallbacks();
    llvm::PipelineTuningOptions::PipelineTuningOptions(&v94);
    LOBYTE(v85) = 0;
    v92 = 0;
    MEMORY[0x20F330050](__str, 0, &v94, &v85, this + *(*this - 24) + 40);
    if (v92 == 1)
    {
      v66 = v91;
      if (v91 && atomic_fetch_add((v91 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v66 + 8))(v66);
      }

      if (v90 < 0)
      {
        operator delete(v89);
      }

      if (v88 < 0)
      {
        operator delete(v87);
      }

      if (v86 < 0)
      {
        operator delete(v85);
      }

      v92 = 0;
    }

    memset(v84, 0, sizeof(v84));
    LODWORD(v76) = 0;
    v80 = 0;
    v81 = 0;
    v82 = 1;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    __p = (MEMORY[0x277D821F8] + 16);
    v83 = v84;
    llvm::raw_ostream::SetUnbuffered(&__p);
    *(this + 105) = &__p;
    v67 = this + *(*this - 24);
    llvm::PassBuilder::registerModuleAnalyses();
    v68 = this + *(*this - 24);
    llvm::PassBuilder::registerCGSCCAnalyses();
    v69 = this + *(*this - 24);
    llvm::PassBuilder::registerFunctionAnalyses();
    v70 = this + *(*this - 24);
    llvm::PassBuilder::registerLoopAnalyses();
    v71 = this + *(*this - 24);
    llvm::PassBuilder::crossRegisterProxies();
    v72 = this + *(*this - 24);
    operator new();
  }

  v73 = *MEMORY[0x277D85DE8];
  return 0;
}

llvm::ValueHandleBase *llvm::ValueHandleBase::ValueHandleBase(llvm::ValueHandleBase *this, unsigned int a2, void *a3)
{
  *this = 2 * a2;
  *(this + 1) = 0;
  v4 = a3[2];
  *(this + 2) = v4;
  if (v4 != -8192 && v4 != -4096 && v4 != 0)
  {
    llvm::ValueHandleBase::AddToExistingUseList(this, (*a3 & 0xFFFFFFFFFFFFFFF8));
  }

  return this;
}

void *llvm::StringRef::str(void *this, uint64_t a2)
{
  v2 = this;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(this + 23) = v4;
    if (v4)
    {
      this = memmove(this, v3, v4);
    }

    *(v2 + v4) = 0;
  }

  else
  {
    *this = 0;
    this[1] = 0;
    this[2] = 0;
  }

  return this;
}

uint64_t parseMDInt(const char *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v9 = 0;
  if (!parseMDType<llvm::ValueAsMetadata>(a1, a2, a3, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 128);
  if (!v5 || *(v5 + 16) != 16)
  {
    return 0;
  }

  v8 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v8 = *v8;
  }

  *a4 = *v8;
  return 1;
}

BOOL parseMDType<llvm::ValueAsMetadata>(const char *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v7 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
  if (a1)
  {
    result = isStringMDNode(v7, a1);
    if (!result)
    {
      return result;
    }

    v10 = (*a3)++;
    v11 = *(a2 - 8 * *(a2 + 8) + 8 * (v10 + 1));
    if (v11)
    {
      if (*v11 - 1 >= 2)
      {
        v11 = 0;
      }
    }

    *a4 = v11;
    *a3 = v10 + 2;
  }

  else
  {
    if (v7)
    {
      if (*v7 - 1 >= 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(a2 - 8 * *(a2 + 8) + 8 * *a3);
      }
    }

    else
    {
      v11 = 0;
    }

    *a4 = v11;
  }

  return v11 != 0;
}

uint64_t *AGCLLVMUserShader::AGCLLVMUserShader(uint64_t *a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6, char a7)
{
  v143 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  *a1 = v11;
  *(a1 + *(v11 - 24)) = a2[2];
  *(a1 + *(*a1 - 24) + 1704) = a2[3];
  *(a1 + 6) = 0;
  *(a1 + 2) = 0;
  *(a1 + 14) = a6;
  *(a1 + 15) = a7;
  *(a1 + 4) = 0;
  *(a1 + 20) = 0;
  a1[3] = a5;
  *(a1 + 8) = 16843009;
  *(a1 + 18) = 257;
  a1[10] = (a1 + 12);
  v135 = (a1 + 10);
  *(a1 + 38) = 0u;
  *(a1 + 54) = 0u;
  *(a1 + 4) = 0u;
  a1[11] = 0x800000000;
  a1[20] = 0;
  a1[21] = 0;
  v142 = 260;
  *&v140 = a3 + 216;
  MEMORY[0x20F330F20](a1 + 22, &v140);
  v12 = *(*(a1 + *(*a1 - 24) + 1688) + 32);
  if (*(v12 + 16))
  {
    v13 = strlen(*(v12 + 16));
  }

  *(a1 + 116) = 0;
  *(a1 + 122) = 0;
  a1[32] = (a1 + 35);
  *(a1 + 33) = xmmword_20E70C6A0;
  a1[36] = (a1 + 38);
  a1[37] = 0x1000000000;
  a1[54] = 0;
  *(a1 + 55) = 0u;
  a1[57] = (a1 + 59);
  a1[58] = 0x800000000;
  a1[75] = 0;
  a1[76] = (a1 + 78);
  a1[77] = 0x800000000;
  llvm::DataLayout::reset();
  a1[82] = (a1 + 84);
  a1[83] = 0x400000000;
  *(a1 + 176) = 128;
  a1[86] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty((a1 + 86));
  *(a1 + 712) = 0;
  *(a1 + 736) = 0;
  *(a1 + 192) = 128;
  a1[94] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::GlobalVariable *,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::GlobalVariable *>>::initEmpty((a1 + 94));
  *(a1 + 776) = 0;
  *(a1 + 800) = 0;
  a1[103] = 0;
  *(a1 + 52) = 0u;
  a1[102] = (a1 + 103);
  a1[106] = (a1 + 110);
  a1[107] = (a1 + 110);
  a1[108] = 8;
  *(a1 + 218) = 0;
  *(a1 + 63) = 0u;
  *(a1 + 59) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 61) = 0u;
  a1[124] = 0;
  a1[125] = (a1 + 126);
  *(a1 + 129) = 0u;
  a1[128] = (a1 + 129);
  a1[131] = (a1 + 135);
  a1[132] = (a1 + 135);
  a1[133] = 8;
  *(a1 + 268) = 0;
  a1[143] = (a1 + 147);
  a1[144] = (a1 + 147);
  a1[145] = 8;
  *(a1 + 292) = 0;
  bzero(a1 + 155, 0x280uLL);
  for (i = 0; i != 80; i += 8)
  {
    v15 = &a1[i];
    v15[155] = 4;
    *(v15 + 78) = 0uLL;
    *(v15 + 79) = 0uLL;
    *(v15 + 80) = 0uLL;
    v15[162] = -1;
  }

  v16 = 0;
  *(a1 + 263) = 0u;
  *(a1 + 265) = 0u;
  *(a1 + 259) = 0u;
  *(a1 + 261) = 0u;
  *(a1 + 255) = 0u;
  *(a1 + 257) = 0u;
  *(a1 + 251) = 0u;
  *(a1 + 253) = 0u;
  *(a1 + 247) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 243) = 0u;
  *(a1 + 245) = 0u;
  *(a1 + 239) = 0u;
  *(a1 + 241) = 0u;
  *(a1 + 235) = 0u;
  *(a1 + 237) = 0u;
  do
  {
    v17 = &a1[v16];
    v17[235] = 4;
    *(v17 + 118) = 0uLL;
    *(v17 + 119) = 0uLL;
    *(v17 + 120) = 0uLL;
    v16 += 8;
    v17[242] = -1;
  }

  while (v16 != 32);
  v18 = 0;
  *(a1 + 295) = 0u;
  *(a1 + 297) = 0u;
  *(a1 + 291) = 0u;
  *(a1 + 293) = 0u;
  *(a1 + 287) = 0u;
  *(a1 + 289) = 0u;
  *(a1 + 283) = 0u;
  *(a1 + 285) = 0u;
  *(a1 + 279) = 0u;
  *(a1 + 281) = 0u;
  *(a1 + 275) = 0u;
  *(a1 + 277) = 0u;
  *(a1 + 271) = 0u;
  *(a1 + 273) = 0u;
  *(a1 + 267) = 0u;
  *(a1 + 269) = 0u;
  do
  {
    v19 = &a1[v18];
    v19[267] = 4;
    *(v19 + 134) = 0uLL;
    *(v19 + 135) = 0uLL;
    *(v19 + 136) = 0uLL;
    v18 += 8;
    v19[274] = -1;
  }

  while (v18 != 32);
  v20 = 0;
  *(a1 + 2392) = 0;
  *(a1 + 599) = 0;
  a1[300] = 0;
  do
  {
    v21 = &a1[v20];
    v21[301] = 4;
    *(v21 + 151) = 0uLL;
    v20 += 3;
  }

  while (v20 != 9);
  a1[310] = 4;
  *(a1 + 311) = 0u;
  a1[313] = 4;
  *(a1 + 157) = 0u;
  a1[316] = 4;
  *(a1 + 317) = 0u;
  a1[319] = 4;
  *(a1 + 160) = 0u;
  a1[322] = 4;
  *(a1 + 323) = 0u;
  a1[325] = 4;
  *(a1 + 163) = 0u;
  a1[328] = 4;
  *(a1 + 329) = 0u;
  a1[331] = 4;
  *(a1 + 166) = 0u;
  a1[335] = 4;
  *(a1 + 168) = 0u;
  a1[339] = 4;
  *(a1 + 170) = 0u;
  a1[343] = 4;
  *(a1 + 172) = 0u;
  a1[346] = 4;
  *(a1 + 347) = 0u;
  a1[349] = 4;
  *(a1 + 175) = 0u;
  a1[352] = 4;
  *(a1 + 353) = 0u;
  a1[355] = 4;
  *(a1 + 178) = 0u;
  a1[358] = 4;
  *(a1 + 359) = 0u;
  a1[361] = 4;
  *(a1 + 181) = 0u;
  a1[364] = 4;
  *(a1 + 365) = 0u;
  a1[367] = 4;
  *(a1 + 184) = 0u;
  a1[370] = 0;
  a1[371] = 4;
  *(a1 + 186) = 0u;
  a1[374] = 4;
  *(a1 + 375) = 0u;
  a1[377] = 4;
  *(a1 + 189) = 0u;
  a1[380] = 4;
  *(a1 + 381) = 0u;
  a1[383] = (a1 + 385);
  a1[384] = 0x200000000;
  a1[387] = "agc.driver.api_texture.";
  *(a1 + 195) = 0u;
  *(a1 + 194) = 0u;
  *(a1 + 784) = 1065353216;
  a1[393] = "agc.driver.api_sampler.";
  *(a1 + 198) = 0u;
  *(a1 + 197) = 0u;
  *(a1 + 796) = 1065353216;
  a1[399] = "agc.driver.ab_texture.";
  *(a1 + 201) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 808) = 1065353216;
  a1[405] = "agc.driver.ab_sampler.";
  *(a1 + 204) = 0u;
  *(a1 + 203) = 0u;
  *(a1 + 820) = 1065353216;
  a1[411] = "agc.driver.api_texture.global_ref";
  *(a1 + 207) = 0u;
  *(a1 + 206) = 0u;
  *(a1 + 832) = 1065353216;
  a1[417] = "agc.driver.api_sampler.global_ref";
  *(a1 + 210) = 0u;
  *(a1 + 209) = 0u;
  *(a1 + 844) = 1065353216;
  a1[423] = (a1 + 425);
  a1[424] = 0x200000000;
  *(a1 + 214) = 0u;
  a1[427] = (a1 + 428);
  *(a1 + 864) = 128;
  a1[430] = MEMORY[0x20F330650](6144, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::initEmpty((a1 + 430));
  *(a1 + 3464) = 0;
  *(a1 + 3488) = 0;
  *(a1 + 219) = 0u;
  *(a1 + 220) = 0u;
  a1[442] = (a1 + 444);
  a1[443] = 0x400000000;
  *(a1 + 232) = 0u;
  *(a1 + 932) = 0;
  a1[467] = 4;
  *(a1 + 234) = 0u;
  *(a1 + 3760) = 0;
  *(a1 + 3762) = 0;
  *(a1 + 1883) = 0;
  a1[471] = 1;
  a1[472] = -4096;
  a1[473] = -4096;
  a1[474] = (a1 + 476);
  a1[475] = 0x200000000;
  a1[488] = 0;
  *(a1 + 1956) = 0;
  *(a1 + 962) = 0;
  a1[480] = 0;
  *(a1 + 239) = 0u;
  *(a1 + 964) = 0;
  *(a1 + 483) = 0u;
  *(a1 + 485) = 0u;
  *(a1 + 3896) = 0;
  a1[492] = 0;
  *(a1 + 986) = 0;
  *(a1 + 245) = 0u;
  *(a1 + 247) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 249) = 0u;
  *(a1 + 250) = 0u;
  *(a1 + 251) = 0u;
  *(a1 + 252) = 0u;
  a1[506] = 0;
  a1[507] = 1;
  a1[508] = 0;
  *(a1 + 1018) = 0;
  a1[510] = (a1 + 512);
  a1[511] = 0x1000000000;
  std::string::basic_string[abi:nn200100]<0>(a1 + 4352, "texture");
  *(a1 + 1094) = 93;
  std::string::basic_string[abi:nn200100]<0>(a1 + 4384, "sampler");
  *(a1 + 1102) = 113;
  *(a1 + 4448) = 0;
  *(a1 + 1110) = 0;
  a1[554] = 0;
  a1[553] = 0;
  a1[552] = 0;
  a1[238] = "agc.sampler_words";
  v22 = *a1;
  a1[239] = *(*(a1 + *(*a1 - 24) + 2168) + 1792);
  a1[240] = "sampler_state";
  a1[242] = 0x100000040;
  a1[246] = "agc.sampler_es1_lod_bias";
  a1[247] = *(a1 + *(v22 - 24) + 1872);
  a1[248] = "driver_parameters";
  *(a1 + 500) = *(*(a1 + *(v22 - 24) + 2168) + 972);
  *(a1 + 501) = 19;
  a1[254] = "agc.sampler_unique_id";
  a1[255] = *(a1 + *(v22 - 24) + 1912);
  a1[256] = "driver_parameters";
  *(a1 + 516) = *(*(a1 + *(v22 - 24) + 2168) + 972);
  *(a1 + 517) = 98;
  a1[262] = "agc.sampler_heap_index";
  a1[263] = *(a1 + *(v22 - 24) + 1904);
  a1[264] = "driver_parameters";
  *(a1 + 532) = *(*(a1 + *(v22 - 24) + 2168) + 972);
  *(a1 + 533) = 113;
  a1[270] = "agc.constant_sampler_words";
  a1[271] = *(*(a1 + *(v22 - 24) + 2168) + 1792);
  a1[272] = "constant_driver";
  a1[274] = 0x1200000040;
  a1[158] = "agc.read_image_words";
  a1[159] = *(*(a1 + *(v22 - 24) + 2168) + 1784);
  a1[160] = "image_state";
  a1[162] = 64;
  a1[166] = "agc.write_image_words";
  a1[167] = *(*(a1 + *(v22 - 24) + 2168) + 1784);
  a1[168] = "image_state";
  a1[170] = 0x600000040;
  a1[174] = "agc.image_dim";
  v23 = *(a1 + *(v22 - 24) + 1904);
  a1[175] = llvm::FixedVectorType::get();
  a1[176] = "driver_parameters";
  v24 = *a1;
  *(a1 + 356) = *(*(a1 + *(*a1 - 24) + 2168) + 972);
  *(a1 + 357) = 11;
  a1[182] = "agc.image_array_info";
  v25 = *(a1 + *(v24 - 24) + 1888);
  v26 = llvm::PointerType::get();
  v27 = *(a1 + *(*a1 - 24) + 1904);
  v28 = *v26;
  *&v140 = v26;
  *(&v140 + 1) = v27;
  v141 = v27;
  a1[183] = llvm::StructType::get();
  a1[184] = "driver_parameters";
  v29 = *a1;
  *(a1 + 372) = *(*(a1 + *(*a1 - 24) + 2168) + 972);
  *(a1 + 373) = 12;
  a1[198] = "agc.image_mipmap_count";
  a1[199] = *(a1 + *(v29 - 24) + 1904);
  a1[200] = "driver_parameters";
  *(a1 + 404) = *(*(a1 + *(v29 - 24) + 2168) + 972);
  *(a1 + 405) = 16;
  a1[206] = "agc.image_sample_count";
  a1[207] = *(a1 + *(v29 - 24) + 1904);
  a1[208] = "driver_parameters";
  *(a1 + 420) = *(*(a1 + *(v29 - 24) + 2168) + 972);
  *(a1 + 421) = 17;
  a1[190] = "agc.image_pack_format";
  a1[191] = *(a1 + *(v29 - 24) + 1904);
  a1[192] = "driver_parameters";
  *(a1 + 388) = *(*(a1 + *(v29 - 24) + 2168) + 972);
  *(a1 + 389) = 13;
  a1[214] = "agc.image_base_level";
  a1[215] = *(a1 + *(v29 - 24) + 1904);
  a1[216] = "driver_parameters";
  *(a1 + 436) = *(*(a1 + *(v29 - 24) + 2168) + 972);
  *(a1 + 437) = 62;
  a1[230] = "agc.image_unique_id";
  a1[231] = *(a1 + *(v29 - 24) + 1912);
  a1[232] = "driver_parameters";
  *(a1 + 468) = *(*(a1 + *(v29 - 24) + 2168) + 972);
  *(a1 + 469) = 97;
  a1[222] = "agc.image_heap_index";
  a1[223] = *(a1 + *(v29 - 24) + 1904);
  a1[224] = "driver_parameters";
  *(a1 + 452) = *(*(a1 + *(v29 - 24) + 2168) + 972);
  *(a1 + 453) = 93;
  v30 = *a1;
  *(a1 + *(*a1 - 24) + 2136) = a3;
  *(*(a1 + *(v30 - 24) + 2168) + 432) = *(a1 + *(v30 - 24) + 2136);
  *(*(a1 + *(v30 - 24) + 2168) + 904) = (*(a1 + 53) & 0xFFFFFFF7) == 3;
  *(*(a1 + *(v30 - 24) + 2168) + 440) = a1 + *(v30 - 24) + 4592;
  *(*(a1 + *(v30 - 24) + 2168) + 448) = a1 + *(v30 - 24) + 4672;
  v31 = *(a1 + *(v30 - 24) + 2136);
  *&v140 = "air.compile_options";
  v142 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v31, &v140);
  if (NamedMetadata)
  {
    v33 = NamedMetadata;
    v34 = 0;
    while (v34 < llvm::NamedMDNode::getNumOperands(v33))
    {
      Operand = llvm::NamedMDNode::getOperand(v33);
      ++v34;
      if (isStringMDNode(*(Operand - 8 * *(Operand + 8)), "air.compile.fast_math_disable"))
      {
        *(a1 + 32) = 0;
        break;
      }
    }

    llvm::NamedMDNode::eraseFromParent(v33);
  }

  v36 = (a3 + 168);
  if ((*(a3 + 191) & 0x80000000) == 0)
  {
    v37 = *(a3 + 191);
    if (v37 != 20)
    {
      if (v37 != 22)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

LABEL_34:
    v45 = *v36;
    v46 = v36[1];
    v47 = *(v36 + 4);
    v44 = v45 == 0x535F786574726556 && v46 == 0x6F72505F65746174 && v47 == 1835102823;
    goto LABEL_43;
  }

  v38 = *(a3 + 176);
  if (v38 == 20)
  {
    v36 = *v36;
    goto LABEL_34;
  }

  if (v38 != 22)
  {
LABEL_31:
    v44 = 0;
    goto LABEL_43;
  }

  v36 = *v36;
LABEL_24:
  v39 = *v36;
  v40 = v36[1];
  v41 = *(v36 + 14);
  if (v39 != 0x746E656D67617246 || v40 != 0x505F65746174535FLL || v41 != 0x6D6172676F72505FLL)
  {
    goto LABEL_31;
  }

  v44 = 1;
LABEL_43:
  *(a1 + 14) |= v44;
  v50 = *(a1 + *(*a1 - 24) + 2136);
  *&v140 = "air.language_version";
  v142 = 259;
  v51 = llvm::Module::getNamedMetadata(v50, &v140);
  if (v51)
  {
    v52 = llvm::NamedMDNode::getOperand(v51);
    if (v52)
    {
      if (isStringMDNode(*(v52 - 8 * *(v52 + 8)), "OpenGL ES GLSL"))
      {
        *(a1 + 14) = 1;
      }
    }
  }

  v53 = *(a1 + *(*a1 - 24) + 2136);
  *&v140 = "llvm.module.flags";
  v142 = 259;
  v54 = llvm::Module::getNamedMetadata(v53, &v140);
  if (v54)
  {
    v55 = v54;
    v56 = 0;
LABEL_49:
    if (v56 < llvm::NamedMDNode::getNumOperands(v55))
    {
      v57 = llvm::NamedMDNode::getOperand(v55);
      v58 = 8 - 8 * *(v57 + 8);
      do
      {
        if (!v58)
        {
          ++v56;
          goto LABEL_49;
        }

        v59 = isStringMDNode(*(v57 + v58), "SDK Version");
        v58 += 8;
      }

      while (!v59);
      a1[6] = 0;
      v60 = *(v57 - 8 * *(v57 + 8) + 16);
      if (v60 && *v60 - 1 <= 1)
      {
        v61 = *(v60 + 16);
        if ((*(v61 + 16) & 0xFE) != 0xE)
        {
          v61 = 0;
        }

        a1[6] = v61;
      }
    }
  }

  v62 = *(a1 + *(*a1 - 24) + 2136);
  *&v140 = "air.version";
  v142 = 259;
  v63 = llvm::Module::getNamedMetadata(v62, &v140);
  if (v63)
  {
    v64 = llvm::NamedMDNode::getOperand(v63);
    if (v64)
    {
      v65 = v64;
      LODWORD(v137) = 0;
      v139 = 0;
      LODWORD(v140) = 0;
      parseMDInt(0, v64, &v140, &v137);
      v66 = 1;
      LODWORD(v140) = 1;
      parseMDInt(0, v65, &v140, &v139);
      if (v137 <= 2)
      {
        v66 = v137 == 2 && v139 > 7;
      }

      *(a1 + 4448) = v66;
    }
  }

  v68 = *(a1 + 32);
  *(a1 + 34) = v68 | a6;
  *(a1 + 36) = v68 | a6;
  *(a1 + 35) = v68 | a6;
  *(a1 + 33) = v68;
  v69 = *a1;
  v70 = *(a1 + *(*a1 - 24) + 2136);
  v71 = *(v70 + 32);
  v72 = v70 + 24;
  if (v71 != v70 + 24)
  {
    do
    {
      v73 = *(v71 + 8);
      llvm::Function::removeFnAttr();
      llvm::Function::removeFnAttr();
      llvm::Function::removeFnAttr();
      v71 = v73;
    }

    while (v73 != v72);
    v69 = *a1;
  }

  v74 = v69;
  v75 = a1 + *(v69 - 24);
  v76 = *(a1 + 33);
  if (v76)
  {
    v77 = -1;
  }

  else
  {
    v77 = 16;
  }

  if ((v76 & 0x100) != 0)
  {
    v77 |= 6u;
  }

  *(v75 + 1808) = v77 | (v76 >> 13) & 8;
  v78 = *(a1 + 33);
  if (v78)
  {
    v79 = -1;
  }

  else
  {
    v79 = 16;
  }

  if ((v78 & 0x100) != 0)
  {
    v79 |= 6u;
  }

  *(*(a1 + *(v74 - 24) + 2168) + 104) = v79 | (v78 >> 13) & 8;
  v80 = *(a1 + *(v74 - 24) + 2136);
  *&v140 = "air.visible";
  v142 = 259;
  v81 = llvm::Module::getNamedMetadata(v80, &v140);
  if (v81)
  {
    v82 = v81;
    NumOperands = llvm::NamedMDNode::getNumOperands(v81);
    if (NumOperands)
    {
      v84 = NumOperands;
      for (j = 0; j != v84; ++j)
      {
        v86 = llvm::NamedMDNode::getOperand(v82);
        v87 = *(v86 - 8 * *(v86 + 8));
        if (v87 && *v87 - 1 <= 1)
        {
          v88 = v86;
          v89 = *(v87 + 16);
          if (v89 && *(v89 + 16) == 0)
          {
            v91 = *(*a1 - 24);
            *&v140 = llvm::Value::getName(v89);
            *(&v140 + 1) = v92;
            v141 = v88;
            llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::try_emplace<llvm::MDNode *>((a1 + v91 + 5136), v140, v92, &v141);
          }
        }
      }
    }
  }

  v93 = *(a1 + *(*a1 - 24) + 2136);
  v94 = 1;
  HIBYTE(v142) = 1;
  if (*a4)
  {
    *&v140 = a4;
    v94 = 3;
  }

  LOBYTE(v142) = v94;
  v95 = llvm::Module::getNamedMetadata(v93, &v140);
  a1[7] = v95;
  if (*(a1 + 15) == 1)
  {
    MEMORY[0x20F331AA0](a1 + *(*a1 - 24) + 5040, "dylib");
  }

  else
  {
    v96 = llvm::NamedMDNode::getOperand(v95);
    a1[21] = 0;
    v97 = *(v96 - 8 * *(v96 + 8));
    if (v97 && *v97 - 1 <= 1)
    {
      v98 = *(v97 + 16);
      if (*(v98 + 16))
      {
        v99 = 0;
      }

      else
      {
        v99 = v98;
      }

      a1[21] = v99;
    }

    else
    {
      v99 = 0;
    }

    Name = llvm::Value::getName(v99);
    if (v101 == 23)
    {
      v102 = *Name == 0x747265762E726961 && Name[1] == 0x4668637465467865;
      if (v102 && *(Name + 15) == 0x6E6F6974636E7546)
      {
        v104 = *(a1[21] + 80);
        v105 = v104 ? v104 - 24 : 0;
        v106 = *(v105 + 40);
        v107 = v106 - 24;
        v108 = v106 ? v106 - 24 : 0;
        v109 = *(v108 + 16) - 29 >= 0xB ? 0 : v107;
        v110 = *(v109 + 16) == 29 ? v109 : 0;
        v111 = *(v110 + 20) & 0x7FFFFFF;
        if (v111 && (v112 = *(v110 - 32 * v111)) != 0)
        {
          v113 = *(v112 + 16);
        }

        else
        {
          v114 = *(v110 + 24);
          v112 = v114 - 24;
          v115 = v114 ? v114 - 24 : 0;
          v113 = *(v115 + 16);
        }

        if (v113 == 84)
        {
          v116 = *(v112 - 32);
          if (!v116 || *(v116 + 16) || *(v116 + 24) != *(v112 + 72))
          {
            v116 = 0;
          }

          if (v116)
          {
            v99 = v116;
          }
        }
      }
    }

    v137 = *(v99 + 14);
    *&v140 = llvm::AttributeList::getAttributeAtIndex();
    if (llvm::Attribute::isStringAttribute(&v140))
    {
      ValueAsString = llvm::Attribute::getValueAsString(&v140);
      if (v118 == 10 && *ValueAsString == 0x696F706563617274 && *(ValueAsString + 8) == 29806)
      {
        *(a1 + 39) = 1;
      }
    }

    v137 = llvm::Value::getName(v99);
    v138 = v120;
    llvm::StringRef::str(&v140, &v137);
    v121 = a1 + *(*a1 - 24);
    v122 = v121 + 5040;
    if (*(v121 + 5063) < 0)
    {
      operator delete(*v122);
    }

    *v122 = v140;
    *(v122 + 16) = v141;
    v137 = llvm::Value::getName(v99);
    v138 = v123;
    llvm::StringRef::str(&v140, &v137);
    v124 = a1 + *(*a1 - 24);
    v125 = v124 + 5064;
    if (*(v124 + 5087) < 0)
    {
      operator delete(*v125);
    }

    *v125 = v140;
    *(v125 + 16) = v141;
    v126 = a1[21];
    if (**(*(v126 + 24) + 16) != *(a1 + *(*a1 - 24) + 1848))
    {
      a1[8] = *(v96 - 8 * *(v96 + 8) + 8);
    }

    v127 = *(v126 + 96);
    if (v127)
    {
      a1[9] = *(v96 - 8 * *(v96 + 8) + 16);
      llvm::SmallVectorImpl<llvm::MDNode const*>::resizeImpl<false>(v135, v127);
      v128 = a1[9];
      v129 = *(v128 + 8);
      if (v129)
      {
        for (k = 0; k < v129; ++k)
        {
          v131 = *(v128 - 8 * v129 + 8 * k);
          LODWORD(v137) = 0;
          LODWORD(v140) = 0;
          parseMDInt(0, v131, &v140, &v137);
          *(a1[10] + 8 * v137) = v131;
          v128 = a1[9];
          v129 = *(v128 + 8);
        }
      }
    }
  }

  v132 = *a2;
  *a1 = *a2;
  *(a1 + *(v132 - 24)) = a2[4];
  *(a1 + *(*a1 - 24) + 1704) = a2[5];
  a1[557] = 4;
  *(a1 + 279) = 0u;
  a1[560] = 4;
  *(a1 + 561) = 0u;
  a1[563] = 4;
  a1[564] = 0;
  a1[566] = 0;
  a1[565] = 0;
  v133 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t AGCLLVMUserFragmentShader::AGCLLVMUserFragmentShader(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1 + 4096;
  v12 = (a4 + 8);
  v13 = AGCLLVMUserShader::AGCLLVMUserShader(a1, a2 + 1, a3, "air.fragment", *(a4 + 8), a6, 0);
  AGCLLVMFragmentShader::AGCLLVMFragmentShader((v13 + 567), a2 + 7, a5, (**v12 >> 20) & 7, 0);
  v14 = *a2;
  *a1 = *a2;
  *(a1 + *(v14 - 24)) = a2[13];
  *(a1 + *(*a1 - 24) + 1704) = a2[14];
  *(a1 + 4536) = a2[15];
  v87 = v11;
  *(v11 + 1432) = 0;
  *(a1 + 5536) = 0u;
  *(a1 + 5552) = 0u;
  *(a1 + 5568) = 0u;
  *(a1 + 5584) = 0u;
  *(a1 + 5600) = 0u;
  *(a1 + 5616) = 0u;
  *(a1 + 5632) = 0u;
  *(a1 + 5648) = 0u;
  *(a1 + 5664) = 0u;
  *(a1 + 5680) = 0u;
  *(a1 + 5696) = 0u;
  *(a1 + 5712) = 0u;
  *(a1 + 5728) = 0u;
  *(a1 + 5744) = 0u;
  *(a1 + 5760) = 0u;
  *(a1 + 5776) = 0u;
  v15 = -256;
  do
  {
    v16 = a1 + v15;
    *(v16 + 5800) = 4;
    *(v16 + 5808) = 0uLL;
    v15 += 32;
  }

  while (v15);
  *(a1 + 6032) = 0u;
  *(a1 + 6016) = 0u;
  *(a1 + 6000) = 0u;
  *(a1 + 5984) = 0u;
  *(a1 + 5968) = 0u;
  *(a1 + 5952) = 0u;
  *(a1 + 5936) = 0u;
  *(a1 + 5920) = 0u;
  *(a1 + 5904) = 0u;
  *(a1 + 5888) = 0u;
  *(a1 + 5872) = 0u;
  *(a1 + 5856) = 0u;
  *(a1 + 5840) = 0u;
  *(a1 + 5824) = 0u;
  *(a1 + 5808) = 0u;
  v17 = -256;
  *(a1 + 5792) = 0u;
  do
  {
    v18 = a1 + v17;
    *(v18 + 6056) = 4;
    *(v18 + 6064) = 0uLL;
    v17 += 32;
  }

  while (v17);
  *(v11 + 1964) = 0;
  *(a1 + 6048) = 0;
  *(a1 + 6056) = 0;
  *(a1 + 6064) = 4;
  *(a1 + 6072) = 0u;
  *(a1 + 6088) = 4;
  *(a1 + 6096) = 0u;
  *(a1 + 6112) = 4;
  *(a1 + 6120) = 0u;
  *(a1 + 6136) = 4;
  *(a1 + 6144) = 0u;
  *(a1 + 6160) = 4;
  *(a1 + 6168) = 0u;
  *(a1 + 6184) = **(a4 + 8) >> 12;
  *(a1 + 6200) = 0u;
  *(a1 + 6192) = 4;
  *(a1 + 6216) = 4;
  *(a1 + 6224) = 0u;
  *(a1 + 6248) = 0u;
  *(a1 + 6240) = 4;
  *(a1 + 6264) = 4;
  *(a1 + 6272) = 0;
  *(a1 + 6280) = 0u;
  *(a1 + 6296) = 4;
  *(a1 + 6304) = 0u;
  *(a1 + 6320) = 4;
  *(a1 + 6328) = 0u;
  *(a1 + 6344) = 4;
  *(a1 + 6352) = 0u;
  *(a1 + 6368) = 4;
  *(a1 + 6376) = 0u;
  *(a1 + 6392) = &unk_2825BE458;
  v19 = *v12;
  *(a1 + 6416) = *(v12 + 2);
  *(a1 + 6400) = v19;
  *(v11 + 2339) = 0;
  *(a1 + 6424) = 0;
  *(a1 + 6432) = 0;
  v86 = (v11 + 2340);
  *(v11 + 2340) = 0x500000000;
  *(v11 + 2348) = 0;
  *(a1 + 6448) = 0;
  *(a1 + 6464) = 0;
  *(a1 + 6456) = 0;
  *(a1 + 6472) = 0;
  v20 = *(a4 + 16);
  v21 = *a1;
  *(a1 + *(*a1 - 24) + 4577) = *(v20 + 61) & 1;
  *(*(a1 + *(v21 - 24) + 2168) + 1941) = (*(v20 + 68) & 0x1000) != 0;
  *(a1 + 3912) = (*(v20 + 60) & 0x200) != 0;
  v88 = "air.fragment";
  v89 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a3, &v88);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v24 = *(Operand + 8);
  if (v24 >= 4)
  {
    v25 = Operand;
    for (i = 3; i < v24; ++i)
    {
      v27 = *(v25 - 8 * v24 + 8 * i);
      v28 = *v27;
      if (v28 <= 0x22 && ((0x7FFFFFFF0uLL >> v28) & 1) != 0)
      {
        v29 = *(v27 + 2);
        if (v29)
        {
          for (j = 0; j < v29; ++j)
          {
            if (isStringMDNode(*&v27[8 * j + -8 * v29], "air.fragment_rate"))
            {
              String = llvm::MDString::getString(*&v27[8 * j + 8 + -8 * *(v27 + 2)]);
              if (v32 == 5)
              {
                v33 = *String == 1869377379 && *(String + 4) == 114;
                v34 = v33;
              }

              else
              {
                v34 = 0;
              }

              *(a1 + 6472) = v34;
              if (1 << ((*(*(a1 + 5280) + 32) >> 10) & 3) == 1 << (BYTE1(*(*(a1 + 5280) + 32)) & 3))
              {
                *(a1 + 6472) = 0;
              }
            }

            v29 = *(v27 + 2);
          }

          v24 = *(v25 + 8);
        }
      }
    }
  }

  v35 = *(a1 + 88);
  if (v35)
  {
    v36 = 0;
    v37 = 0x69736F702E726961;
    do
    {
      v38 = *(*(a1 + 80) + 8 * v36);
      if (v38)
      {
        v39 = llvm::MDString::getString(*(v38 - 8 * *(v38 + 8) + 8));
        if (v40 > 15)
        {
          if (v40 == 16)
          {
            if (*v39 == 0x6E6F72662E726961 && *(v39 + 8) == 0x676E696361665F74)
            {
              v87[2336] = 1;
            }
          }

          else if (v40 == 18)
          {
            v42 = *v39 == 0x706D61732E726961 && *(v39 + 8) == 0x5F6B73616D5F656CLL;
            if (v42 && *(v39 + 16) == 28265)
            {
              v44 = v37;
              v45 = *(v38 + 8);
              if (v38 - 8 * v45 + 16 == v38)
              {
                v48 = 0;
              }

              else
              {
                v46 = -8 * v45;
                v47 = v38 + 16;
                do
                {
                  v48 = isStringMDNode(*(v47 + v46), "air.post_depth_coverage");
                  if (v48)
                  {
                    break;
                  }

                  v33 = v46 == -24;
                  v46 += 8;
                }

                while (!v33);
              }

              v87[2360] = v48;
              v37 = v44;
            }
          }
        }

        else if (v40 == 12)
        {
          if (*v39 == v37 && *(v39 + 8) == 1852795252)
          {
            v87[2335] = 1;
          }
        }

        else if (v40 == 15 && *v39 == 0x6E696F702E726961 && *(v39 + 7) == 0x64726F6F635F746ELL)
        {
          v87[2337] = 1;
        }
      }

      ++v36;
    }

    while (v36 != v35);
  }

  v51 = **(a1 + 6400);
  v52 = (v51 & 0x60000) == 0x40000 && ((v51 & 0x10000) != 0 || (*(*(a1 + 5280) + 33) & 3) != 0);
  v87[2338] = v52;
  v53 = *(a1 + 64);
  if (v53)
  {
    v54 = *(v53 + 8);
    if (v54)
    {
      v55 = 0;
      while (1)
      {
        v56 = *(*(a1 + 64) - 8 * *(*(a1 + 64) + 8) + 8 * v55);
        v57 = llvm::MDString::getString(*(v56 - 8 * *(v56 + 8)));
        v59 = v57;
        v60 = v58;
        if (v58 == 12)
        {
          break;
        }

        if (v58 != 9)
        {
          goto LABEL_92;
        }

        if (*v57 != 0x747065642E726961 || *(v57 + 8) != 104)
        {
          goto LABEL_92;
        }

        v87[2339] = 1;
        *(a1 + 6440) = 0;
        v62 = *(v56 + 8);
        if (v62 >= 2)
        {
          v64 = 1;
          while (1)
          {
            v63 = v56 - 8 * v62;
            v65 = *(v63 + 8 * v64);
            if (!*v65)
            {
              break;
            }

            if (v62 == ++v64)
            {
              goto LABEL_129;
            }
          }

          v68 = llvm::MDString::getString(*(v63 + 8 * v64));
          if (v69 == 19)
          {
            v70 = *v68 == 0x747065642E726961 && v68[1] == 0x66696C6175715F68;
            if (v70 && *(v68 + 11) == 0x72656966696C6175)
            {
              v65 = *(v56 - 8 * *(v56 + 8) + 8 * (v64 + 1));
            }
          }

          v72 = llvm::MDString::getString(v65);
          switch(v73)
          {
            case 11:
              if (*v72 == 0x616572672E726961 && *(v72 + 3) == 0x726574616572672ELL)
              {
                v74 = 1;
                goto LABEL_127;
              }

              break;
            case 8:
              v75 = 2 * (*v72 == 0x7373656C2E726961);
              goto LABEL_128;
            case 7:
              v74 = 0;
              v75 = 0;
              if (*v72 != 779250017 || *(v72 + 3) != 2037276974)
              {
                goto LABEL_128;
              }

LABEL_127:
              v75 = v74;
LABEL_128:
              *v86 = v75;
              goto LABEL_129;
          }

          v75 = 0;
          goto LABEL_128;
        }

LABEL_129:
        if (++v55 == v54)
        {
          goto LABEL_130;
        }
      }

      if (*v57 != 0x65766F632E726961 || *(v57 + 8) != 1701273970)
      {
LABEL_92:
        if (!AGCLLVMUserFragmentShader::isSampleMaskVariant(v57, v58))
        {
          if (v60 == 11 && *v59 == 0x6E6574732E726961 && *(v59 + 3) == 0x6C69636E6574732ELL)
          {
            v87[2361] = 1;
          }

          goto LABEL_129;
        }
      }

      v87[2348] = 1;
      goto LABEL_129;
    }
  }

LABEL_130:
  v78 = *(a1 + *(*a1 - 24) + 2136);
  Function = llvm::Module::getFunction();
  if (Function)
  {
    v80 = *(Function + 8) != 0;
  }

  else
  {
    v80 = 0;
  }

  v87[2349] = v80;
  *(a1 + 6448) = Function;
  v81 = *(a1 + *(*a1 - 24) + 2136);
  v82 = llvm::Module::getFunction();
  if (v82)
  {
    v83 = *(v82 + 8) != 0;
  }

  else
  {
    v83 = 0;
  }

  v84 = a1 + *(*a1 - 24);
  *(v84 + 2224) = v83;
  *(v84 + 5128) = v82;
  return a1;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::AGCLLVMAGPFragmentShaderGen3(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int *a7, int a8, _DWORD *a9)
{
  v12 = (a1 + 4096);
  v13 = AGCLLVMAGPFragmentShader::AGCLLVMAGPFragmentShader(a1, a2 + 1, a3, a4, a5, a6, a7);
  v14 = *a2;
  *v13 = *a2;
  *(a1 + *(v14 - 24)) = a2[21];
  *(a1 + *(*a1 - 24) + 1704) = a2[22];
  *(a1 + 4536) = a2[23];
  *(a1 + 7536) = 0u;
  *(a1 + 7528) = a1 + 7536;
  *(a1 + 7560) = 0u;
  *(a1 + 7552) = a1 + 7560;
  *(a1 + 7576) = 0u;
  *(a1 + 7592) = 0;
  *(a1 + 7600) = a1 + 7616;
  *(a1 + 7608) = 0x800000000;
  *(a1 + 7648) = a1 + 7664;
  *(a1 + 7656) = 0x800000000;
  *(a1 + 7696) = 0u;
  *(a1 + 7712) = 0u;
  *(a1 + 7728) = 0u;
  *(a1 + 7744) = 0u;
  *(a1 + 7760) = 0u;
  *(a1 + 7776) = 0u;
  *(a1 + 7792) = 0u;
  *(a1 + 7808) = 0u;
  *(a1 + 7824) = 0;
  *(a1 + 7832) = 4;
  *(a1 + 7840) = 0u;
  *(a1 + 7856) = a8;
  v12[3764] = a8 == 3;
  *(a1 + 7864) = 0;
  *(a1 + 7872) = 4;
  *(a1 + 7880) = 0u;
  *(a1 + 7896) = 4;
  *(a1 + 7904) = 0u;
  if (*(*(a1 + *(*a1 - 24) + 2168) + 1863) != 1)
  {
    if (a8 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = xmmword_20E70C570;
  std::vector<AIRConstSampler>::push_back[abi:nn200100](a1 + 944, &v23);
  v22 = xmmword_20E70C570;
  std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](a1 + 968, &v22);
  if (v12[3764])
  {
LABEL_5:
    *(a1 + 7864) = *a9;
  }

LABEL_6:
  if (v12[2349] == 1)
  {
    v12[2366] = 1;
    v15 = *(a1 + 6448);
    do
    {
      v15 = *(v15 + 8);
      if (!v15)
      {
        break;
      }

      v16 = *(*(*(v15 + 24) + 40) + 40);
      v17 = v16 - 24;
      v18 = v16 ? v16 - 24 : 0;
      v19 = *(v18 + 16) - 29 >= 0xB ? 0 : v17;
      v20 = *(v19 + 16);
      v12[2366] = v20 != 35;
    }

    while (v20 != 35);
  }

  return a1;
}

uint64_t AGCLLVMAGPFragmentShader::AGCLLVMAGPFragmentShader(uint64_t a1, uint64_t *a2, llvm::Module *a3, uint64_t a4, uint64_t a5, unsigned int *a6, unsigned int *a7)
{
  v12 = AGCLLVMUserFragmentShader::AGCLLVMUserFragmentShader(a1, a2 + 1, a3, a4, a5, 0);
  v13 = *a2;
  *v12 = *a2;
  *(a1 + *(v13 - 24)) = a2[17];
  *(a1 + *(*a1 - 24) + 1704) = a2[18];
  *(a1 + 4536) = a2[19];
  *(a1 + 6480) = 0u;
  *(a1 + 6496) = 0x1000000000;
  *(a1 + 6512) = a1 + 6528;
  *(a1 + 6520) = 0x800000000;
  *(a1 + 7040) = 0;
  *(a1 + 7044) = 0;
  *(a1 + 7048) = 0u;
  *(a1 + 7064) = 0u;
  *(a1 + 7080) = 0;
  v14 = -120;
  do
  {
    v15 = a1 + v14;
    *(v15 + 7208) = 4;
    *(v15 + 7216) = 0uLL;
    v14 += 24;
  }

  while (v14);
  v16 = a1 + 7224;
  v17 = 160;
  do
  {
    *(v16 - 16) = v16;
    *(v16 - 8) = 0x300000000;
    v16 += 32;
    v17 -= 32;
  }

  while (v17);
  v18 = a1 + 7384;
  v19 = 160;
  do
  {
    *(v18 - 16) = v18;
    *(v18 - 8) = 0x300000000;
    v18 += 32;
    v19 -= 32;
  }

  while (v19);
  AGCLLVMUserShader::enableStatistics(a1, *(*(a4 + 16) + 60) & 1, (*(*(a4 + 16) + 60) >> 1) & 1);
  v20 = *(a4 + 16);
  *(a1 + 18) = (*(v20 + 60) & 8) != 0;
  *(a1 + *(*a1 - 24) + 4576) = (*(v20 + 60) & 0x4000000) != 0;
  *(a1 + 6476) = *(v20 + 56);
  *(a1 + 3504) = *(v20 + 16);
  *(a1 + 20) = (*(v20 + 60) & 4) != 0;
  if (a6 && a7)
  {
    v21 = (a6 + *a6);
    v22 = (a7 + *a7);
    v23 = (v21 - *v21);
    if (*v23 >= 5u && (v24 = v23[2]) != 0)
    {
      v25 = (v21 + v24 + *(v21 + v24));
    }

    else
    {
      v25 = 0;
    }

    v26 = (v22 - *v22);
    if (*v26 >= 5u && (v27 = v26[2]) != 0)
    {
      v28 = v22 + v27 + *(v22 + v27);
    }

    else
    {
      v28 = 0;
    }

    if (*v25)
    {
      v29 = 0;
      v30 = v28 + 4;
      v31 = (v25 + 2);
      v32 = v25 + 2;
      do
      {
        v33 = *&v30[4 * v29];
        v34 = *(v31 - 1);
        v35 = strlen(&v31[v34]);
        *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((a1 + 6480), v32 + v34, v35) + 8) = v33;
        ++v29;
        ++v32;
        v31 += 4;
      }

      while (v29 < *v25);
    }
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t AGCLLVMObjectBase::dumpShaderToFile(AGCTargetPrinter **this)
{
  result = AGCTargetPrinter::isValidToPrintMessage(this[212]);
  if (result)
  {
    if ((*(*this + 7))(this))
    {
      {
        {
          AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
        }
      }

      if (AGCEnv::isEnabled(void)::is_internal != 1)
      {
        return 0;
      }

      result = AGCEnv::getValue("AGC_STATUS_LOG_DRIVER_SHADERS", v3);
      if (result)
      {
        if (*result == 48)
        {
          return 0;
        }

        return atoi(result) != 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL AGCTargetPrinter::isValidToPrintMessage(AGCTargetPrinter *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*this)
  {
    v3 = MEMORY[0x277D82670];
    if (v2 != MEMORY[0x277D82670])
    {
      v4 = v2 + *(*v2 - 24);
      if ((v4[32] & 5) != 0)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v5 = -1;
        v25 = -1;
      }

      else
      {
        (*(**(v4 + 5) + 32))(&v17);
        v5 = v25;
      }

      v6 = v5 - *(this + 17);
      if (v6 >= 1)
      {
        v7 = *(this + 18);
        if (*(v7 + 8) == 1 && (*(v7 + 9) & 1) == 0 && *(v7 + 4))
        {
          atomic_fetch_add(v7, v6);
        }

        v8 = v21;
        *(this + 88) = v22;
        v9 = v24;
        *(this + 104) = v23;
        *(this + 120) = v9;
        v10 = v17;
        *(this + 24) = v18;
        v11 = v20;
        *(this + 40) = v19;
        *(this + 56) = v11;
        *(this + 72) = v8;
        *(this + 17) = v25;
        *(this + 8) = v10;
      }
    }

    v12 = *(this + 18);
    if (*(v12 + 8) != 1 || (*(v12 + 9) & 1) == 0 && *(v12 + 4) && (v13 = atomic_load(v12), v13 > *(v12 + 4)))
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(*this, "<< Rest of the status file truncated>>\n", 39);
      v14 = *this;
      if (*this && v14 != v3)
      {
        (*(*v14 + 8))(v14);
        *this = 0;
      }
    }
  }

  result = *this != 0;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::compile(AGCLLVMUserObject *this)
{
  if ((AGCLLVMUserObject::translatorCompile(this) & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 1;
  v11 = 0;
  v2 = (*(*(this + *(*this - 24)) + 80))(this + *(*this - 24));
  v3 = v2 > 0x1C || ((1 << v2) & 0x18400180) == 0;
  v4 = v3 ? 2 : 1;
  v10 = (*(*(this + *(*this - 24)) + 88))(this + *(*this - 24));
  v5 = *(this + 38);
  if (AGCLLVMCtx::compile(*(this + *(*this - 24) + 1688), this + *(*this - 24), *(this + *(*this - 24) + 2136), *(this + 33), v4, &v8))
  {
    v6 = (*(*(this + *(*this - 24)) + 160))(this + *(*this - 24));
  }

  else
  {
LABEL_10:
    v6 = 0;
  }

  *(this + *(*this - 24) + 2184) = mach_absolute_time() - *(this + *(*this - 24) + 2176);
  return v6;
}

void *AGCLLVMUserShader::enableStatistics(void *this, int a2, int a3)
{
  v5 = this;
  if ((a2 & 1) != 0 || a3)
  {
    v6 = *(this + *(*this - 24) + 2136);
    this = llvm::Module::getOrInsertNamedMetadata();
    if (a2)
    {
      v7 = *(v5 + *(*v5 - 24) + 2136);
      this = llvm::Module::getOrInsertNamedMetadata();
      *(v5 + 38) = 1;
    }

    if (a3)
    {
      v8 = *(v5 + *(*v5 - 24) + 2136);

      return llvm::Module::getOrInsertNamedMetadata();
    }
  }

  return this;
}

void std::vector<AIRConstSampler>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
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

void std::vector<std::pair<unsigned long long,unsigned long long>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t newObjectArrayWithIntersectionShadersIfNeeded<_AGCFragmentContextStateAGP>(void *a1, int a2, llvm::Module *this)
{
  v6 = "air.intersection";
  v7 = 259;
  if (llvm::Module::getNamedMetadata(this, &v6))
  {
    operator new();
  }

  if (a1)
  {
    return a1 + *(*a1 - 24);
  }

  else
  {
    return 0;
  }
}

void AGCLLVMObject::processBuildRequestInfo(AGCLLVMObject *this)
{
  if (AGCLLVMObjectBase::dumpShaderToFile(this))
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + 212)))
    {
      v2 = *(this + 212);
      v3 = (*(*this + 48))(this);
      AGCTargetPrinter::printMessage(v2, "------ Build Request Info for %s shader %u ------", v3, *(this + 1272));
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + 212)))
    {
      if (*(*(this + 211) + 1955))
      {
        v4 = "AIRNT";
      }

      else
      {
        v4 = "MTLCompiler";
      }

      AGCTargetPrinter::printMessage(*(this + 212), "translator interface: %s", v4);
    }

    v5 = *(this + 267);
    if (v5)
    {
      *&v15 = "air.requestHash";
      v17 = 259;
      NamedMetadata = llvm::Module::getNamedMetadata(v5, &v15);
      if (NamedMetadata)
      {
        v7 = NamedMetadata;
        Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
        String = llvm::MDString::getString(*(Operand - 8 * *(Operand + 8)));
        v14[0] = String;
        v14[1] = v10;
        llvm::StringRef::str(&v15, v14);
        v11 = (this + 5096);
        if (*(this + 5119) < 0)
        {
          operator delete(*v11);
        }

        *v11 = v15;
        *(this + 639) = v16;
        if (AGCTargetPrinter::isValidToPrintMessage(*(this + 212)))
        {
          AGCTargetPrinter::printMessage(*(this + 212), "hash: %s", String);
        }

        llvm::NamedMDNode::eraseFromParent(v7);
      }
    }

    if (AGCTargetPrinter::isValidToPrintMessage(*(this + 212)))
    {
      v12 = *(this + 212);
      v13 = (*(*this + 48))(this);
      AGCTargetPrinter::printMessage(v12, "------ End Build Request Info for %s shader %u ------\n", v13, *(this + 1272));
    }
  }
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
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
    llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::grow(a1, v7);
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
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
        v6 = (a1 + 16 * (v13 & v4));
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

void std::vector<std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (8 * (v8 >> 3));
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = v4 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::grow(uint64_t a1, int a2)
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

void std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *llvm::SmallPtrSetImpl<void *>::insert(uint64_t a1, llvm::SmallPtrSetImplBase *this, void *a3)
{
  result = llvm::SmallPtrSetImplBase::insert_imp(this, a3);
  v7 = *(this + 1);
  v8 = 16;
  if (v7 == *this)
  {
    v8 = 20;
  }

  v9 = (v7 + 8 * *(this + v8));
  if (v9 != result)
  {
    while (*result >= 0xFFFFFFFFFFFFFFFELL)
    {
      if (++result == v9)
      {
        result = v9;
        break;
      }
    }
  }

  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
  return result;
}

void *llvm::SmallPtrSetImplBase::insert_imp(llvm::SmallPtrSetImplBase *this, const void *a2)
{
  v2 = *this;
  if (*(this + 1) != *this)
  {
    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_12:
    if (v5 < *(this + 4))
    {
      *(this + 5) = v5 + 1;
      *(v2 + 8 * v5) = a2;
      return (*this + 8 * v5);
    }

    return llvm::SmallPtrSetImplBase::insert_imp_big(this, a2);
  }

  v6 = 0;
  v7 = 8 * v5;
  v3 = *this;
  while (*v3 != a2)
  {
    if (*v3 == -2)
    {
      v6 = v3;
    }

    ++v3;
    v7 -= 8;
    if (!v7)
    {
      if (!v6)
      {
        goto LABEL_12;
      }

      *v6 = a2;
      --*(this + 6);
      return v6;
    }
  }

  return v3;
}

void AGCLLVMUserObject::addInitCompilePass(AGCLLVMUserObject *this)
{
  v1 = this + *(*this - 24);
  LOBYTE(v2) = 0;
  AGCModulePassManager::addPass<llvm::AlwaysInlinerPass>();
}

void OUTLINED_FUNCTION_1()
{

  operator new();
}

uint64_t *std::unique_ptr<llvm::detail::PassConcept<llvm::Module,llvm::AnalysisManager<llvm::Module>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

char *llvm::PassInfoMixin<AGCUserObjectWrapperInitPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x4E)
  {
    v1 = v0;
  }

  else
  {
    v1 = 78;
  }

  v2 = &aStringrefLlvmG_75[v1];
  v3 = 78 - v1;
  if ((78 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 78 - v1;
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

void llvm::detail::AnalysisPassModel<llvm::Module,AGCUserObjectWrapper,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>::run(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = v1 + *(*v1 - 24) + 1704;
  }

  operator new();
}

char *llvm::PassInfoMixin<MarkFunctionsInlinePass>::name()
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

  v2 = &aStringrefLlvmG_77[v1];
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

uint64_t llvm::SmallVectorImpl<llvm::MDNode *>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*a1, v4, 8 * v7);
        }
      }

      else
      {
        if (*(a1 + 12) < v7)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v8)
        {
          memmove(*a1, v4, 8 * v8);
        }

        else
        {
          v8 = 0;
        }

        v9 = *(a2 + 8) - v8;
        if (v9)
        {
          memcpy((*a1 + 8 * v8), (*a2 + 8 * v8), 8 * v9);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 16)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
    }

    *(a2 + 8) = 0;
  }

  return a1;
}

char *llvm::PassInfoMixin<SimplifyGenericIRAGPFragmentGen4Pass>::name()
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

  v2 = &aStringrefLlvmG_5[v1];
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

char *llvm::PassInfoMixin<InitCompileCommonPass>::name()
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

  v2 = &aStringrefLlvmG_72[v1];
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

double llvm::Module::setTargetTriple(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v7) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v7;
  return result;
}

uint64_t AGCLLVMCtx::compile(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, _BYTE *a6)
{
  v48[6] = *MEMORY[0x277D85DE8];
  a6[1] = *(a1 + 1953);
  if (*(*(a1 + 32) + 55) != 1)
  {
    goto LABEL_7;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_ENABLE_UNSAFE_MATH", a2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
LABEL_7:
        *a6 = a4 & 1;
      }
    }
  }

  v12 = *(a2 + 5088);
  v13 = *a6;
  v14 = (*(*a2 + 48))(a2);
  std::string::basic_string[abi:nn200100]<0>(&__p, v14);
  llvm::AGX::CompileRequest::CompileRequest();
  if (v42 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:nn200100]<0>(&v44, "__GPU_REMARKS_MD");
  std::string::basic_string[abi:nn200100]<0>(&v45, "__GPU_LD_MD");
  std::string::basic_string[abi:nn200100]<0>(&v46, "__GPU_ARCH_LD_MD");
  std::string::basic_string[abi:nn200100]<0>(v47, "__GPU_STATS_MD");
  llvm::AGX::CompileRequest::addSegments();
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v48[i]) < 0)
    {
      operator delete(*&v47[i * 8]);
    }
  }

  (*(*a2 + 104))(a2, v43);
  v16 = *(a2 + 1696);
  if (AGCTargetPrinter::isValidToPrintMessage(v16) && AGCLLVMObjectBase::dumpShaderToFile(a2))
  {
    v17 = *v16;
    std::ostream::flush();
    v18 = *v16;
    llvm::AGX::CompileRequest::setLoggingStream();
  }

  if (a5 == 1)
  {
    if (a6[3] == 1)
    {
      v19 = a1 + 104;
    }

    else
    {
      v19 = a1 + 80;
    }

    v21 = (*(a1 + 1954) ^ 1) & 1;
    v22 = (a2 + 1656);
    v23 = a1;
    v24 = v19;
    v25 = 1;
  }

  else if (a5 == 2)
  {
    v19 = a1 + 128;
    v20 = a6[3];
    v21 = (*(a1 + 1954) & 1) == 0;
    v22 = (a2 + 1656);
    v23 = a1;
    v24 = a1 + 128;
    v25 = 2;
  }

  else
  {
    v19 = a1 + 56;
    v26 = a6[3];
    v22 = (a2 + 1656);
    v23 = a1;
    v24 = a1 + 56;
    v25 = 3;
    v21 = 0;
  }

  AGCLLVMCtx::initializePlan(v23, v24, v25, v21, v22);
  if (*(v19 + 16) == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v27 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v27, "api", *(a2 + 5120));
      v28 = (*(*a2 + 80))(a2);
      if (v28 <= 0x22)
      {
        xpc_dictionary_set_uint64(v27, "shader_kind", qword_20E715C80[v28]);
      }

      v29 = xpc_copy(v27);
      analytics_send_event();
      xpc_release(v29);
    }

    v33 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 1;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v32 = MEMORY[0x277D821F8] + 16;
    v40 = a1 + 304;
    llvm::raw_ostream::SetUnbuffered(&v32);
    operator new();
  }

  llvm::AGX::CompileRequest::~CompileRequest(v43);
  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

void *flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

uint64_t flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_2825BFA18;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_2825BFA18;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + *(this + 4) - v5;
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = result + v6;
  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::fill(this, 1uLL);
  flatbuffers::vector_downward::push(this, a2, a3);
  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

void *flatbuffers::vector_downward::fill(void *this, unint64_t a2)
{
  v3 = this;
  v4 = this[6];
  if (v4 - this[7] >= a2)
  {
    this[6] = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, a2);
    v3[6] -= a2;
  }

  v5 = 0;
  do
  {
    *(v3[6] + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

void *flatbuffers::vector_downward::push(void *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = this[6];
    if (v6 - this[7] < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v6 = v5[6];
    }

    v5[6] = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v4, a2, v5);
  }

  return result;
}

void *flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10) - v3 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6);
  }

  return result;
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

void *flatbuffers::FlatBufferBuilder::TrackField(void *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = this[7];
  if (this[6] - v6 <= 7uLL)
  {
    this = flatbuffers::vector_downward::reallocate(this, 8uLL);
    v6 = v5[7];
  }

  *v6 = a3 | (a2 << 32);
  v5[7] += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  v4 = *(this + 6);
  v5 = *(this + 7);
  if ((v4 - v5) <= 3)
  {
    flatbuffers::vector_downward::reallocate(this, 4uLL);
    v4 = *(this + 6);
    v5 = *(this + 7);
  }

  *(v4 - 4) = 0;
  v6 = v4 - 4;
  *(this + 6) = v6;
  v7 = *(this + 4) - v6 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v8 = 4;
  }

  else
  {
    v8 = (*(this + 34) + 2);
  }

  *(this + 34) = v8;
  if (v6 - v5 < v8)
  {
    flatbuffers::vector_downward::reallocate(this, v8);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v8;
  bzero((v6 - v8), v8);
  v9 = v7 - a2;
  v11 = *(this + 6);
  v10 = *(this + 7);
  v11[1] = v9;
  *v11 = *(this + 34);
  v12 = *(this + 16);
  v13 = (v10 - 8 * v12);
  if (v12)
  {
    v14 = v10 - 8 * v12;
    do
    {
      v15 = (v7 - *v14);
      *(v11 + *(v14 + 4)) = v7 - *v14;
      v14 += 8;
    }

    while (v14 < v10);
  }

  *(this + 7) = v13;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v17 = *(this + 4);
  v16 = *(this + 5);
  LODWORD(v18) = v17 - v11 + v16;
  if (*(this + 81) == 1 && v16 < v13)
  {
    v20 = *v11;
    v21 = v16 + v17;
    v22 = *(this + 5);
    while (1)
    {
      v18 = *v22;
      if (v20 == *(v21 - v18) && !memcmp((v21 - v18), v11, v20))
      {
        break;
      }

      if (++v22 >= v13)
      {
        LODWORD(v18) = v17 - v11 + v16;
        goto LABEL_21;
      }
    }

    v11 = (v11 + (v17 - v11 + v16 - v7));
    *(this + 6) = v11;
  }

LABEL_21:
  if (v18 == v17 + v16 - v11)
  {
    if ((v11 - v13) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v13 = *(this + 7);
      v17 = *(this + 4);
      v16 = *(this + 5);
    }

    *v13 = v18;
    *(this + 7) = v13 + 4;
  }

  *(v16 + v17 - v7) = v18 - v7;
  *(this + 70) = 0;
  return v7;
}

void *llvm::SmallVectorImpl<char>::append<char const*,void>(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

uint64_t AGCLLVMAGPFragmentShader::constructReply(AGCLLVMAGPFragmentShader *this)
{
  v125 = *MEMORY[0x277D85DE8];
  if (!AGCDeserializedReply::deserialize((this + *(*this - 24) + 2288), *(*(this + *(*this - 24) + 1688) + 152), *(*(this + *(*this - 24) + 1688) + 160)))
  {
    v6 = 0;
    goto LABEL_143;
  }

  AGCLLVMObject::validateBackendReply((this + *(*this - 24)));
  v106 = AGCLLVMUserObject::constructFlatReply(this);
  v2 = this + *(*this - 24);
  v3 = v2 + 2512;
  v4 = *(v2 + 314);
  if (v4)
  {
    if (*(v2 + 315))
    {
      v5 = v2 + 2512;
    }

    else
    {
      v5 = v2 + 3072;
    }
  }

  else
  {
    v5 = v2 + 3072;
  }

  v8 = *v5;
  v7 = *(v5 + 1);
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v8 + *v8);
  }

  v11 = (v10 - *v10);
  if (*v11 < 9u || (v12 = v11[4]) == 0)
  {
    v13 = 0;
    if (!v4)
    {
      goto LABEL_17;
    }

LABEL_19:
    v15 = *(v2 + 315);
    v14 = v2 + 3072;
    if (v15)
    {
      v14 = v3;
    }

    goto LABEL_21;
  }

  v13 = (v10 + v12 + *(v10 + v12));
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_17:
  v14 = v2 + 3072;
LABEL_21:
  v17 = *v14;
  v16 = *(v14 + 1);
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = (v17 + *v17);
  }

  v20 = (v19 - *v19);
  if (*v20 >= 5u && (v21 = v20[2]) != 0)
  {
    v22 = (v19 + v21 + *(v19 + v21));
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 - *v22);
  v24 = *v23;
  if (v24 < 0x25)
  {
    goto LABEL_44;
  }

  if (v23[18] && *(v22 + v23[18]))
  {
    goto LABEL_40;
  }

  if (v24 < 0x27)
  {
    goto LABEL_44;
  }

  if (v23[19] && *(v22 + v23[19]))
  {
    goto LABEL_40;
  }

  if (v24 < 0x29)
  {
    goto LABEL_44;
  }

  if (v23[20] && *(v22 + v23[20]))
  {
LABEL_40:
    v25 = 1;
    goto LABEL_45;
  }

  if (v24 >= 0x71 && (v26 = v23[56]) != 0)
  {
    v25 = *(v22 + v26) != 0;
  }

  else
  {
LABEL_44:
    v25 = 0;
  }

LABEL_45:
  (*(*this + 560))(this, v13, v25);
  if (*(this + 1630))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(*(this + 1630));
  }

  v27 = *v13;
  v28 = *(v13 - v27 + 8);
  if (*(v13 - v27 + 8))
  {
    v27 = *(v13 + v28);
    v29 = v13 + v28 + v27;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = v27;
  }

  v30 = *(v13 + v28 + v27);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 4 * v30;
    while (1)
    {
      v35 = *&v29[v31 + 4];
      v36 = &v29[v31 + v35];
      v37 = *(v36 + 1);
      v38 = v35 - v37;
      v39 = &v29[v31 + v35 - v37];
      v40 = *(v39 + 2);
      if (v40 < 5)
      {
        v48 = v33;
      }

      else
      {
        v41 = -v37;
        v42 = *(v39 + 4);
        if (!v42)
        {
          goto LABEL_64;
        }

        v43 = v29[v31 + 4 + v35 + v42];
        v44 = v43 > 0xA;
        v45 = (1 << v43) & 0x602;
        if (v44 || v45 == 0)
        {
          goto LABEL_64;
        }

        if (v40 < 7)
        {
          v47 = 0;
        }

        else
        {
          v47 = *&v29[v31 + 10 + v38];
          if (v47)
          {
            v47 = *&v29[v31 + 4 + v35 + v47];
          }
        }

        if (*(4 * v47) != -1)
        {
LABEL_64:
          v48 = v33;
LABEL_65:
          if (*&v29[v35 + 8 + v31 + v41] && v29[v31 + 4 + v35 + *&v29[v35 + 8 + v31 + v41]] == 5)
          {
            v32 += 2;
          }

          goto LABEL_68;
        }

        v48 = (v33 + 1);
        *(4 * v47) = v33;
        v49 = *(v36 + 1);
        if (*&v29[v31 + 4 + v35 - v49] >= 5u)
        {
          v41 = -v49;
          goto LABEL_65;
        }
      }

LABEL_68:
      v31 += 4;
      v33 = v48;
      if (v34 == v31)
      {
        goto LABEL_73;
      }
    }
  }

  LODWORD(v48) = 0;
  v32 = 0;
LABEL_73:
  v50 = *this;
  v51 = *(*(this + *(*this - 24) + 2168) + 1878);
  v117 = 0u;
  v116 = 0;
  v118 = v120;
  v119 = 0x800000000;
  v120[64] = 0x1FFFFFFFFLL;
  v121 = v51;
  v123 = 0;
  memset(v122, 0, 122);
  v124 = 1;
  if (*(*(this + 801) + 68))
  {
    v122[121] = 1;
  }

  v52 = *(this + 1630);
  if (v52)
  {
    v53 = 0;
    v54 = 0;
    while (1)
    {
      v55 = *(this + 814) + v53;
      v56 = *(4 * *(v55 + 16));
      if (v56 != -1)
      {
        goto LABEL_80;
      }

      if (*(v55 + 8) == 3)
      {
        break;
      }

LABEL_81:
      ++v54;
      v53 += 64;
      if (v54 >= v52)
      {
        v50 = *this;
        goto LABEL_83;
      }
    }

    v56 = v48;
    LODWORD(v48) = v48 + 1;
LABEL_80:
    *(v55 + 16) = v56;
    GenericVaryingAllocator::addVarying(&v116, v55);
    v52 = *(this + 1630);
    goto LABEL_81;
  }

LABEL_83:
  GenericVaryingAllocator::allocate(&v116, *(this + *(v50 - 24) + 2168));
  GenericVaryingAllocator::serialize(&v116, (this + *(*this - 24) + 4288));
  v107 = 0;
  VaryingSignature = GenericVaryingAllocator::getVaryingSignature(&v116, (this + *(*this - 24) + 4288), &v107 + 1, &v107);
  v58 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((this + *(*this - 24) + 4288), &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t, 0);
  if (v117 == v116)
  {
    v59 = &flatbuffers::data<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>,std::allocator<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>>(std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>> const&)::t;
  }

  else
  {
    v59 = v116;
  }

  v60 = flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(this + *(*this - 24) + 4288, v59, (v117 - v116) >> 2);
  if (v119)
  {
    v61 = (v119 << 6) - 64;
    v62 = v118 + 58;
    do
    {
      if (*v62)
      {
        v63 = 1;
      }

      else
      {
        v63 = *(v62 - 50) == 1;
      }

      v64 = v63;
      if (v63)
      {
        break;
      }

      v65 = v61;
      v61 -= 64;
      v62 += 64;
    }

    while (v65);
  }

  else
  {
    v64 = 0;
  }

  v105 = AGCLLVMUserFragmentShader::constructFlatReply(this, v64);
  v66 = this + *(*this - 24);
  v66[4358] = 1;
  v102 = *(v66 + 1084);
  v103 = *(v66 + 1080);
  v104 = *(v66 + 1082);
  if (VaryingSignature)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 4, HIDWORD(v107));
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 6, v107);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 22, *(this + 39), 0);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 8, v58);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v66 + 4288), 10, v60);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 12, v122[120], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 14, *(this + 6445), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 16, *(this + 6444), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 20, v25 & *(this + 3760), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 18, v25, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 24, *(this + 7044), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 26, *(this + 1760) == 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 28, *(this + 1330));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 30, *(this + 1331));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 32, *(this + 1332));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 34, *(this + 1333));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 36, *(this + 1334));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 38, *(this + 1335));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 40, *(this + 1336));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 42, *(this + 1337));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 44, *(this + 1338));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 46, *(this + 1339));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 48, *(this + 1340));
  if (v66[4368] == 1)
  {
    v67 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v66 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v66 + 536, 50, v67);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 52, *(this + 32));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 54, *(this + 1341));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 56, *(this + 1342));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 58, *(this + 1343));
  v68 = 0;
  v69 = 0;
  v70 = 0;
  do
  {
    v70 |= AGCLLVMTargetLowerer::getRTZMode(*(this + *(*this - 24) + 2168), *(*(this + 684) + v69)) << v68;
    v69 += 4;
    v68 += 2;
  }

  while (v69 != 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 60, v70);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 62, *(this + 1344));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 64, *(this + 1345));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v66 + 536, 66, *(this + 1346));
  v71 = AGCLLVMUserObject::needsDylibResources(this);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v66 + 536, 68, v71, 0);
  (*(*this + 616))(this);
  if (v66[4368])
  {
    v72 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v66 + 4288), 0);
    flatbuffers::FlatBufferBuilder::TrackField(v66 + 536, 70, v72);
  }

  v73 = flatbuffers::FlatBufferBuilder::EndTable((v66 + 4288), v103 - v102 + v104);
  v74 = this + *(*this - 24);
  v74[4358] = 1;
  v75 = *(v74 + 1082);
  v76 = *(v74 + 1080) - *(v74 + 1084);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ShaderInfo>((v74 + 4288), v106);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::FragmentShaderInfo>((v74 + 4288), v105);
  flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::MTLFragmentInfo>((v74 + 4288), v73);
  v77 = *(*this - 24);
  v78 = flatbuffers::FlatBufferBuilder::EndTable((v74 + 4288), v76 + v75);
  flatbuffers::FlatBufferBuilder::Finish((this + v77 + 4288), v78, v79);
  AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslator::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4288));
  v80 = (this + *(*this - 24));
  if (v80[104].__r_.__value_.__r.__words[2])
  {
    v81 = &v80[104].__r_.__value_.__r.__words[2];
    if (!v80[105].__r_.__value_.__r.__words[0])
    {
      v81 = &v80[128];
    }
  }

  else
  {
    v81 = &v80[128];
  }

  v82 = (v81->__words[0] + *v81->__words[0]);
  v83 = (v82 + *(v82 - *v82 + 4));
  v84 = (v83 + *v83 + *(v83 + *v83 - *(v83 + *v83) + 8));
  if (*(v84 + *v84) > 0x20)
  {
    goto LABEL_139;
  }

  v85 = *(*(v80[70].__r_.__value_.__l.__size_ + 32) + 56);
  if (v123 + v32 > v85)
  {
    std::to_string(&v109, v123 + v32);
    v86 = std::string::insert(&v109, 0, "Number of varying components(");
    v87 = v86->__r_.__value_.__r.__words[2];
    *&v110.__r_.__value_.__l.__data_ = *&v86->__r_.__value_.__l.__data_;
    v110.__r_.__value_.__r.__words[2] = v87;
    v86->__r_.__value_.__l.__size_ = 0;
    v86->__r_.__value_.__r.__words[2] = 0;
    v86->__r_.__value_.__r.__words[0] = 0;
    v88 = std::string::append(&v110, ") ");
    v89 = v88->__r_.__value_.__r.__words[2];
    *&v111.__r_.__value_.__l.__data_ = *&v88->__r_.__value_.__l.__data_;
    v111.__r_.__value_.__r.__words[2] = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    v90 = std::string::append(&v111, "exceeds the limit (");
    v91 = v90->__r_.__value_.__r.__words[2];
    *&v112.__r_.__value_.__l.__data_ = *&v90->__r_.__value_.__l.__data_;
    v112.__r_.__value_.__r.__words[2] = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v108, v85);
    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &v108;
    }

    else
    {
      v92 = v108.__r_.__value_.__r.__words[0];
    }

    if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v108.__r_.__value_.__l.__size_;
    }

    v94 = std::string::append(&v112, v92, size);
    v95 = v94->__r_.__value_.__r.__words[2];
    *&v113.__r_.__value_.__l.__data_ = *&v94->__r_.__value_.__l.__data_;
    v113.__r_.__value_.__r.__words[2] = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    v96 = std::string::append(&v113, ")");
    v97 = v96->__r_.__value_.__r.__words[2];
    __p = *&v96->__r_.__value_.__l.__data_;
    v115 = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    if (v115 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v115 >= 0)
    {
      v99 = HIBYTE(v115);
    }

    else
    {
      v99 = *(&__p + 1);
    }

    std::string::append(v80 + 69, p_p, v99);
    if (SHIBYTE(v115) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v113.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v108.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v112.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v111.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v110.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v109.__r_.__value_.__l.__data_);
    }

LABEL_139:
    v6 = 0;
    goto LABEL_141;
  }

  v6 = 1;
LABEL_141:
  *&__p = v122;
  std::vector<GenericVaryingAllocator::OutIterator>::__destroy_vector::operator()[abi:nn200100](&__p);
  llvm::SmallVector<GenericVarying,8u>::~SmallVector(&v118);
  if (v116)
  {
    *&v117 = v116;
    operator delete(v116);
  }

LABEL_143:
  v100 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::constructReply(AGCLLVMAGPFragmentShaderGen3 *this)
{
  v2 = AGCLLVMAGPFragmentShader::constructReply(this);
  if (v2)
  {
    if (*(this + 7824))
    {
      v3 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>((this + *(*this - 24) + 4384), this + 7696, 8);
      v4 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>((this + *(*this - 24) + 4384), this + 7760, 8);
      v5 = this + *(*this - 24);
      v5[4454] = 1;
      v6 = *(v5 + 1106);
      v7 = *(v5 + 1104) - *(v5 + 1108);
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v5 + 4384), 6, v4);
      flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((v5 + 4384), 4, v3);
      v8 = flatbuffers::FlatBufferBuilder::EndTable((v5 + 4384), v7 + v6);
    }

    else
    {
      v8 = 0;
    }

    v9 = this + *(*this - 24);
    v10 = *(*(v9 + 271) + 1858) == 1 && *(this + 1760) == 1;
    v11 = *(this + 6456);
    if (*(this + 3766) == 1)
    {
      v12 = *(this + 1133);
    }

    else
    {
      v12 = 0;
    }

    v9[4454] = 1;
    v13 = *(v9 + 1106);
    v14 = *(v9 + 1104) - *(v9 + 1108);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 548, 10, v12);
    if (v8)
    {
      flatbuffers::FlatBufferBuilder::Align((v9 + 4384), 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v9 + 548, 8, *(v9 + 1104) - *(v9 + 1108) + *(v9 + 1106) - v8 + 4);
    }

    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 548, 6, v10, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v9 + 548, 4, v11, 0);
    v15 = flatbuffers::FlatBufferBuilder::EndTable((v9 + 4384), v14 + v13);
    v16 = *this;
    v17 = this + *(*this - 24);
    v17[4454] = 1;
    v18 = *(v17 + 1106);
    v19 = *(v17 + 1104) - *(v17 + 1108);
    if (v15)
    {
      v20 = v15;
      flatbuffers::FlatBufferBuilder::Align((v17 + 4384), 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v17 + 548, 6, *(v17 + 1104) - *(v17 + 1108) + *(v17 + 1106) - v20 + 4);
      v16 = *this;
    }

    v21 = *(v16 - 24);
    v22 = flatbuffers::FlatBufferBuilder::EndTable((v17 + 4384), v19 + v18);
    flatbuffers::FlatBufferBuilder::Finish((this + v21 + 4384), v22, v23);
    AGCLLVMObject::dumpTranslatorMetadata<AGCCodeTranslatorG10::CompileReplyBinarySchema>((this + *(*this - 24)), (this + *(*this - 24) + 4384));
  }

  return v2;
}

BOOL AGCDeserializedReply::deserialize(AGCDeserializedReply *this, _DWORD *a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = a3;
  if (*a2 != -17958193)
  {
    return 0;
  }

  v85 = a2[4];
  if (v85)
  {
    v4 = 0;
    v5 = a2 + 8;
    v92 = (this + 1824);
    v78 = this + 1192;
    v79 = this + 1880;
    v81 = this + 1864;
    v82 = this + 1856;
    v86 = this + 24;
    v87 = this + 1912;
    v88 = this + 1904;
    do
    {
      v6 = *v5;
      v89 = v4;
      if (*v5 == 2)
      {
        v39 = v5[3];
        v40 = *this + v5[4];
        v41 = (*this + v5[2]);
        *(this + 224) = v41;
        *(this + 225) = v40;
        *(this + 452) = v39;
        if (v39)
        {
          v42 = 0;
          v43 = v40 + 1;
          do
          {
            v44 = *(this + 1760);
            if (v44)
            {
              v45 = *(v41 + 5);
              v46 = vcnt_s8(v44);
              v46.i16[0] = vaddlv_u8(v46);
              if (v46.u32[0] > 1uLL)
              {
                v47 = *(v41 + 5);
                if (*&v44 <= v45)
                {
                  v47 = v45 % v44.i32[0];
                }
              }

              else
              {
                v47 = (v44.i32[0] - 1) & v45;
              }

              v48 = *(*(this + 219) + 8 * v47);
              if (v48)
              {
                v49 = *v48;
                if (v49)
                {
                  v50 = *v41;
                  v51 = *(v41 + 1);
                  do
                  {
                    v52 = v49[1];
                    if (v52 == v45)
                    {
                      if (*(v49 + 4) == v45)
                      {
                        if ((~*(v41 + 4) & 0xE) != 0 || v49 == 0)
                        {
                          break;
                        }

                        v54 = (v49 + 3);
                        if (*(v49 + 47) < 0)
                        {
                          v54 = *v54;
                        }

                        std::string::basic_string[abi:nn200100]<0>(&__p, v54);
                        v55 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(this + 245, &__p);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        std::string::basic_string[abi:nn200100]<0>(&v96, (v43 + v50));
                        v56 = *(v55 + 10);
                        v80 = v43;
                        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__p, v96.__r_.__value_.__l.__data_, v96.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          __p = v96;
                        }

                        v57 = &v78[40 * v56];
                        v94 = v51;
                        v58 = __p.__r_.__value_.__r.__words[0];
                        v77 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
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

                        v61 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](p_p, size);
                        v62 = v61;
                        v63 = *(v57 + 8);
                        if (!*&v63)
                        {
                          goto LABEL_123;
                        }

                        v64 = vcnt_s8(v63);
                        v64.i16[0] = vaddlv_u8(v64);
                        v84 = v64.u32[0];
                        if (v64.u32[0] > 1uLL)
                        {
                          v65 = v61;
                          if (v61 >= *&v63)
                          {
                            v65 = v61 % *&v63;
                          }
                        }

                        else
                        {
                          v65 = (*&v63 - 1) & v61;
                        }

                        v66 = *(*v57 + 8 * v65);
                        v91 = v65;
                        if (!v66 || (v76 = v58, (v67 = *v66) == 0))
                        {
LABEL_123:
                          operator new();
                        }

                        while (1)
                        {
                          v68 = v67[1];
                          if (v68 == v62)
                          {
                            v69 = std::equal_to<std::string>::operator()[abi:nn200100](v67 + 2, &__p);
                            v65 = v91;
                            if (v69)
                            {
                              if (v77 < 0)
                              {
                                operator delete(v76);
                              }

                              v43 = v80;
                              if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v96.__r_.__value_.__l.__data_);
                              }

                              goto LABEL_126;
                            }
                          }

                          else
                          {
                            if (v84 > 1)
                            {
                              if (v68 >= *&v63)
                              {
                                v68 %= *&v63;
                              }
                            }

                            else
                            {
                              v68 &= *&v63 - 1;
                            }

                            if (v68 != v65)
                            {
                              goto LABEL_123;
                            }
                          }

                          v67 = *v67;
                          if (!v67)
                          {
                            goto LABEL_123;
                          }
                        }
                      }
                    }

                    else
                    {
                      if (v46.u32[0] > 1uLL)
                      {
                        if (v52 >= *&v44)
                        {
                          v52 %= *&v44;
                        }
                      }

                      else
                      {
                        v52 &= *&v44 - 1;
                      }

                      if (v52 != v47)
                      {
                        break;
                      }
                    }

                    v49 = *v49;
                  }

                  while (v49);
                }
              }
            }

LABEL_126:
            v41 += 4;
            ++v42;
          }

          while (v42 != v39);
        }
      }

      else if (v6 == 11)
      {
        *(this + 227) = *(v5 + 2);
      }

      else if (v6 == 25)
      {
        *(this + 2) = v5;
        v90 = v5[30];
        std::vector<unsigned int>::resize(v92, (v5[16] + 1));
        v7 = *(this + 2);
        v8 = *(v7 + 64);
        if (*(v7 + 64))
        {
          v9 = 0;
          v83 = 0;
          v10 = v5 + 18;
          v11 = 1;
          v12 = 1;
          while (1)
          {
            *(&v96.__r_.__value_.__s + 23) = 16;
            *&v96.__r_.__value_.__l.__data_ = *(v10 + 1);
            v96.__r_.__value_.__s.__data_[16] = 0;
            begin = v92->__begin_;
            v92->__begin_[v12] = v10[12] - v90;
            if (!strncmp(v10 + 16, "__GPU_STATS", 0x10uLL))
            {
              break;
            }

            if (!strncmp(v10 + 16, "__DWARF", 0x10uLL))
            {
              goto LABEL_64;
            }

            if (strncmp(v10 + 16, "__GPU_METADATA", 0x10uLL))
            {
LABEL_12:
              if (!strncmp(v10 + 16, "__TEXT", 0x10uLL))
              {
                v22 = strncmp(v10, "__const", 0x10uLL);
                v14 = v82;
                if (!v22)
                {
                  goto LABEL_27;
                }

                v23 = strncmp(v10, "__cstring", 0x10uLL);
                v14 = v81;
                if (!v23)
                {
                  goto LABEL_27;
                }
              }

              if (!strncmp(v10 + 16, "__DATA", 0x10uLL) && !strncmp(v10, "__common", 0x10uLL))
              {
                begin[v12] = *(v10 + 4);
                v14 = v79;
                goto LABEL_27;
              }

              goto LABEL_28;
            }

            if (!strncmp(v10, "__helpers", 0x10uLL) && *(this + 28) && *(this + 29))
            {
              v24 = 1;
              goto LABEL_29;
            }

            if (!strncmp(v10, "__helpers", 0x10uLL))
            {
              goto LABEL_12;
            }

            if ((v83 & 1) == 0)
            {
              v24 = 0;
              v83 = 1;
LABEL_29:
              if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = &v96;
              }

              else
              {
                v25 = v96.__r_.__value_.__r.__words[0];
              }

              std::string::basic_string[abi:nn200100]<0>(&__p, v25);
              v26 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(this + 245, &__p);
              v27 = v26;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
                if (v27)
                {
LABEL_34:
                  v28 = *(v10 + 5);
                  v29 = v10;
                  if (v28)
                  {
                    v29 = (*this + v10[12]);
                  }

                  if ((v24 & 1) == 0)
                  {
                    v30 = v10[15];
                    v31 = *this + v10[14];
                    v32 = &v86[40 * *(v27 + 10)];
                    *v32 = v29;
                    *(v32 + 1) = v28;
                    v32[16] = v12;
                    *(v32 + 3) = v31;
                    *(v32 + 8) = v30;
                  }

                  LODWORD(__p.__r_.__value_.__l.__data_) = v11;
                  std::string::basic_string[abi:nn200100]<0>(&__p.__r_.__value_.__s.__data_[8], v25);
                  v33 = *(this + 220);
                  if (!v33)
                  {
                    goto LABEL_56;
                  }

                  v34 = vcnt_s8(v33);
                  v34.i16[0] = vaddlv_u8(v34);
                  if (v34.u32[0] > 1uLL)
                  {
                    data_low = LODWORD(__p.__r_.__value_.__l.__data_);
                    if (v33 <= LODWORD(__p.__r_.__value_.__l.__data_))
                    {
                      data_low = LODWORD(__p.__r_.__value_.__l.__data_) % v33;
                    }
                  }

                  else
                  {
                    data_low = (v33 - 1) & __p.__r_.__value_.__l.__data_;
                  }

                  v36 = *(*(this + 219) + 8 * data_low);
                  if (!v36 || (v37 = *v36) == 0)
                  {
LABEL_56:
                    operator new();
                  }

                  while (1)
                  {
                    v38 = v37[1];
                    if (v38 == LODWORD(__p.__r_.__value_.__l.__data_))
                    {
                      if (*(v37 + 4) == LODWORD(__p.__r_.__value_.__l.__data_))
                      {
                        if (v95 < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__size_);
                        }

                        ++v9;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      if (v34.u32[0] > 1uLL)
                      {
                        if (v38 >= v33)
                        {
                          v38 %= v33;
                        }
                      }

                      else
                      {
                        v38 &= v33 - 1;
                      }

                      if (v38 != data_low)
                      {
                        goto LABEL_56;
                      }
                    }

                    v37 = *v37;
                    if (!v37)
                    {
                      goto LABEL_56;
                    }
                  }
                }
              }

              else if (v26)
              {
                goto LABEL_34;
              }

              printHexDump(MEMORY[0x277D82670], *this, *(this + 1), 0x20u, &unk_20E75F419, 0);
              goto LABEL_64;
            }

            v17 = *(v10 + 5);
            v18 = *this;
            v19 = v10;
            if (v17)
            {
              v19 = (v18 + v10[12]);
            }

            v20 = v10[14];
            v21 = v10[15];
            *(this + 144) = v19;
            *(this + 145) = v17;
            *(this + 1168) = v12;
            *(this + 147) = v18 + v20;
            *(this + 296) = v21;
            v83 = 1;
            *(this + 1144) = 1;
LABEL_64:
            if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v96.__r_.__value_.__l.__data_);
            }

            if (v8 >= ++v12)
            {
              v10 += 20;
              v11 = v12;
              if (v9 <= 0xE)
              {
                continue;
              }
            }

            goto LABEL_130;
          }

          v15 = strncmp(v10, "__counters", 0x10uLL);
          v14 = v88;
          if (!v15 || (v16 = strncmp(v10, "__telemetry", 0x10uLL), v14 = v87, !v16))
          {
LABEL_27:
            MEMORY[0x20F331AA0](&v96, *v14);
          }

LABEL_28:
          v24 = 0;
          goto LABEL_29;
        }
      }

LABEL_130:
      v5 = (v5 + v5[1]);
      v4 = v89 + 1;
    }

    while (v89 + 1 != v85);
  }

  v70 = this + 24;
  if (*(this + 3))
  {
    if (!*(this + 4))
    {
      v70 = this + 584;
    }
  }

  else
  {
    v70 = this + 584;
  }

  if (!*v70)
  {
    return 0;
  }

  v71 = this + 224;
  if (*(this + 28))
  {
    if (!*(this + 29))
    {
      v71 = this + 784;
    }
  }

  else
  {
    v71 = this + 784;
  }

  v73 = *v71;
  v72 = *(v71 + 1);
  return v73 && v72 != 0 && *(this + 152) != 0;
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  v14 = *v13;
  if (*v13)
  {
    do
    {
      v15 = v14[1];
      if (v9 == v15)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
        {
          return v14;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          return 0;
        }
      }

      v14 = *v14;
    }

    while (v14);
  }

  return v14;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *flatbuffers::FlatBufferBuilder::AddElement<signed char>(void *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v4, a2, v5);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

_BYTE *flatbuffers::FlatBufferBuilder::AddElement<float>(_BYTE *this, uint64_t a2, float a3, float a4)
{
  v6 = this;
  if (a3 != a4 || this[80] == 1)
  {
    flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
    v7 = *(v6 + 6);
    if ((v7 - *(v6 + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(v6, 4uLL);
      v7 = *(v6 + 6);
    }

    *(v7 - 4) = a3;
    v8 = v7 - 4;
    *(v6 + 6) = v8;
    v9 = *(v6 + 8) - v8 + *(v6 + 10);

    return flatbuffers::FlatBufferBuilder::TrackField(v6, a2, v9);
  }

  return this;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<AGCCodeTranslator::VertexShaderOutIterator>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      v10 = *(v7 + 4 * v8);
      flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
      flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40) - v10 + 4);
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

void *std::vector<unsigned long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 8 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 8 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 8uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

BOOL AGCLLVMUserFragmentShader::isAnyPsoStateUnknown(AGCLLVMUserFragmentShader *this)
{
  v1 = *(this + 660);
  if ((*v1 & 0x1F) == 0x17)
  {
    return 1;
  }

  v2 = v1 + 1;
  v3 = -1;
  while (v3 != 6)
  {
    v4 = *v2++;
    ++v3;
    if ((v4 & 0x1F) == 0x17)
    {
      if (v3 < 7)
      {
        return 1;
      }

      break;
    }
  }

  if (*(*(this + 800) + 12))
  {
    return 1;
  }

  v5 = *(this + 801);
  if ((*(v5 + 27) & 8) != 0)
  {
    return 1;
  }

  v6 = 0;
  v7 = v5 + 28;
  v8 = 7;
  while (v6 != 7)
  {
    v9 = *(v7 + 4 * v6++);
    if ((v9 & 0x8000000) != 0)
    {
      v8 = v6 - 1;
      return v8 < 7;
    }
  }

  return v8 < 7;
}

uint64_t AGCLLVMTargetLowerer::getRTZMode(_BYTE *a1, const char *a2)
{
  if (a1[1888] != 1)
  {
    return 0;
  }

  if (a1[1889] == 1)
  {
    return a2 != 2;
  }

  if (a1[904])
  {
    v4 = a2 != 2;
  }

  else
  {
    v4 = a2 == 1;
  }

  v5 = 0x27C8D7000uLL;
  {
    v5 = 0x27C8D7000;
    if (v9)
    {
      if (AGCEnv::isEnabled(v9))
      {
        Value = AGCEnv::getValue("AGC_CLAMP_TO_F16_LIMITS", v10);
      }

      else
      {
        Value = 0;
      }

      AGCLLVMTargetLowerer::getRTZMode(_AGCFPRoundingMode)const::clamp_to_f16 = Value;
      v5 = 0x27C8D7000uLL;
    }
  }

  v6 = *(v5 + 2936);
  if (v6)
  {
    v4 = *v6 != 48;
  }

  if (v4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v7 = 0x27C8D7000uLL;
  {
    v7 = 0x27C8D7000;
    if (v12)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v7 = 0x27C8D7000;
    }
  }

  if (*(v7 + 2944) == 1)
  {
    v8 = AGCEnv::getValue("AGC_F32_TO_F16_RTZ", a2);
    if (v8)
    {
      if (*v8 != 48)
      {
        if (atoi(v8))
        {
          return 3;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

uint64_t AGCLLVMObject::validateBackendReply(AGCTargetPrinter **this)
{
  v4 = 0;
  (*(*this + 23))(this, &v4);
  result = AGCLLVMObjectBase::dumpShaderToFile(this);
  if (result)
  {
    if (this[289])
    {
      v3 = (this + 289);
      if (!this[290])
      {
        v3 = (this + 359);
      }
    }

    else
    {
      v3 = (this + 359);
    }

    return (*(*this[271] + 512))(this[271], *v3, *(v3 + 1), this);
  }

  return result;
}

uint64_t AGCLLVMUserObject::constructFlatReply(AGCLLVMUserObject *this)
{
  v1 = this;
  v2 = *(this + 118);
  v3 = *(this + 119);
  v4 = *(this + 122);
  v59 = v4;
  v60 = *(this + 121);
  v57 = v3;
  v58 = v2;
  if (v2 != v3)
  {
    v5 = (v3 - v2) >> 4;
    if (!(v5 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v5);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v60 == v4)
  {
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v65[0] = 0;
    v65[1] = 0;
    v66 = 0;
    __p = 0;
    v63 = 0;
    v64 = 0;
    std::vector<unsigned long long>::reserve(v65, (*(this + 122) - *(this + 121)) >> 4);
    std::vector<unsigned long long>::reserve(&__p, (*(v1 + 122) - *(v1 + 121)) >> 4);
    v6 = *(v1 + 121);
    v7 = *(v1 + 122);
    v68[0] = v65;
    if (v6 != v7)
    {
      do
      {
        v8 = *v6;
        v6 += 2;
        v67 = v8;
        std::back_insert_iterator<std::vector<unsigned long long>>::operator=[abi:nn200100](v68, &v67);
      }

      while (v6 != v7);
      v6 = *(v1 + 121);
      v7 = *(v1 + 122);
    }

    v68[0] = &__p;
    while (v6 != v7)
    {
      v67 = v6[1];
      std::back_insert_iterator<std::vector<unsigned long long>>::operator=[abi:nn200100](v68, &v67);
      v6 += 2;
    }

    v9 = v1 + 4288;
    if (v65[1] == v65[0])
    {
      v10 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
    }

    else
    {
      v10 = v65[0];
    }

    v11 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(&v9[*(*v1 - 24)], v10, (v65[1] - v65[0]) >> 3);
    if (v63 == __p)
    {
      v12 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
    }

    else
    {
      v12 = __p;
    }

    v13 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(&v9[*(*v1 - 24)], v12, (v63 - __p) >> 3);
    if (__p)
    {
      v63 = __p;
      operator delete(__p);
    }

    if (v65[0])
    {
      v65[1] = v65[0];
      operator delete(v65[0]);
    }

    v55 = v11;
    v56 = v13;
  }

  v14 = v1 + *(*v1 - 24);
  if ((*(*v14 + 200))(v14) == 2 || (*(*v14 + 200))(v14) == 1)
  {
    v15 = (v1 + *(*v1 - 24));
    v16 = v15[271];
    if (v15[314])
    {
      v17 = v15 + 314;
      if (!v15[315])
      {
        v17 = v15 + 384;
      }
    }

    else
    {
      v17 = v15 + 384;
    }

    v19 = *v17;
    v18 = v17[1];
    if (v19)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19 + *v19;
    }

    v22 = (*(*v15 + 25))(v15) == 2;
    (*(*v16 + 920))(v65, v16, v21, v22);
    if (v65[0] != &v65[1])
    {
      v23 = v1 + *(*v1 - 24);
      v25 = *(v65[0] + 7);
      v24 = *(v65[0] + 8);
      v23[4358] = 1;
      v26 = *(v23 + 1082);
      v27 = *(v23 + 1080) - *(v23 + 1084);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23 + 536, 6, v24);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v23 + 536, 4, v25);
      flatbuffers::FlatBufferBuilder::EndTable((v23 + 4288), v27 + v26);
      operator new();
    }

    v28 = v1 + *(*v1 - 24);
    v28[4358] = 1;
    flatbuffers::FlatBufferBuilder::PreAlign((v28 + 4288), 0, 4uLL);
    flatbuffers::FlatBufferBuilder::PreAlign((v28 + 4288), 0, 4uLL);
    v28[4358] = 0;
    v29 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v28 + 4288), 0);
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v65[1]);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (*(v1 + 985))
  {
    v31 = v1;
    v32 = *(v1 + 495);
    v61 = v31;
    v33 = *(v31 + 494);
    v34 = v32 - v33;
    if (v32 != v33)
    {
      if (!((v34 >> 5) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v34 >> 5);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v1 = v61;
    v36 = v61 + *(*v61 - 24);
    v36[4358] = 1;
    flatbuffers::FlatBufferBuilder::PreAlign((v36 + 4288), 0, 4uLL);
    flatbuffers::FlatBufferBuilder::PreAlign((v36 + 4288), 0, 4uLL);
    v36[4358] = 0;
    v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>((v36 + 4288), 0);
  }

  else
  {
    v35 = 0;
  }

  v37 = AGCLLVMObject::constructVisibleFunctionArray((v1 + *(*v1 - 24)), 1);
  v38 = AGCLLVMObject::constructFlatReply((v1 + *(*v1 - 24)));
  v39 = v38;
  v41 = v40;
  if (v58 != v57)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>(v38, 0);
  }

  if (v60 != v59)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v39, 12, v55);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v39, 64, v56);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v39, 20, *(v1 + 39), 0);
  if (*(v1 + 3767) == 1)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 22, *(v1 + 483), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 24, *(v1 + 484), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 26, *(v1 + 485), 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 28, *(v1 + 486), 0);
  }

  if (*(v1 + 3896) == 1)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 30, *(v1 + 488), 0);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 32, *(v1 + 980));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 76, *(v1 + 981));
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 78, *(v1 + 491), 0);
  v42 = v1 + *(*v1 - 24);
  if ((*(*v42 + 200))(v42) == 2)
  {
    if (!v30)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if ((*(*v42 + 200))(v42) == 1 && v30 != 0)
  {
LABEL_56:
    flatbuffers::FlatBufferBuilder::Align(v39, 4uLL);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 34, *(v39 + 8) - *(v39 + 12) + *(v39 + 10) - v30 + 4);
  }

LABEL_57:
  v43 = v1 + *(*v1 - 24);
  v44 = (*(*v43 + 200))(v43) == 2 || (*(*v43 + 200))(v43) == 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v39, 36, v44, 0);
  v46 = (*(*(v1 + *(*v1 - 24)) + 200))(v1 + *(*v1 - 24)) == 2;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v39, 38, v46, 0);
  v47 = *(v1 + 984);
  if (v47)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 72, v47);
  }

  v48 = *(v1 + 985);
  if (v48)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 44, v48);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 46, *(v1 + 986));
    if (v35)
    {
      flatbuffers::FlatBufferBuilder::Align(v39, 4uLL);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 48, *(v39 + 8) - *(v39 + 12) + *(v39 + 10) - v35 + 4);
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v39, 52, *(v1 + 10), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v39, 54, *(v1 + 11), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(v39, 56, *(v1 + 13), 0);
  v49 = (*(*v1 + 24))(v1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 66, v49);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 68, *(v1 + 504), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 58, *(v1 + 505), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 60, *(v1 + 506), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(v39, 62, *(v1 + 507), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 74, *(v1 + 1016));
  v50 = (*(*(v1 + *(*v1 - 24)) + 128))(v1 + *(*v1 - 24));
  if (v50 == 1)
  {
    v51 = v39;
    v52 = 1;
    goto LABEL_76;
  }

  if (!v50 && *(v39 + 80) == 1)
  {
    v51 = v39;
    v52 = 0;
LABEL_76:
    v53 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(v51, v52);
    flatbuffers::FlatBufferBuilder::TrackField(v39, 82, v53);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(v39, 84, v37);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v39, 86, *(v1 + 1017));
  return flatbuffers::FlatBufferBuilder::EndTable(v39, v41);
}

uint64_t AIRConstSampler::constructFlatReply(AIRConstSampler *this, flatbuffers::FlatBufferBuilder *a2)
{
  *(a2 + 70) = 1;
  v4 = *(a2 + 5);
  v5 = *(a2 + 6);
  v6 = *(a2 + 4);
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 4, (0x404040503020004uLL >> (8 * (*this & 7u))) & 7);
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 6, (0x404040503020004uLL >> (*this & 0x38)) & 7);
  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 8, (0x404040503020004uLL >> ((*this >> 3) & 0x38)) & 7);
  v7 = (*this >> 9) & 3;
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 10, v8);
  v9 = (*this >> 11) & 3;
  if (v9 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 12, v10);
  v11 = (*this >> 13) & 3;
  if (v11 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 14, v12);
  v13 = ((*this >> 16) & 0xFLL) - 1;
  if (v13 > 7)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = dword_20E715D98[v13];
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 18, v14);
  v15 = *(this + 3);
  v16 = v15 & 0x7FFF;
  v17 = __clz(v16);
  v18 = (v16 << (v17 - 8)) ^ 0x800000 | (1124073472 - (v17 << 23));
  if ((v15 & 0x7FFF) == 0)
  {
    v18 = 0;
  }

  if ((v15 & 0x7FFF) >> 10 >= 0x1Fu)
  {
    v19 = (v16 << 13) | 0x7F800000;
  }

  else
  {
    v19 = v18;
  }

  v20 = (v16 << 13) + 939524096;
  if (((v15 & 0x7FFFu) - 1024) >> 11 > 0xE)
  {
    v20 = v19;
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a2, 22, COERCE_FLOAT(v20 | ((v15 & 0x8000) << 16)), 0.0);
  v21 = *(this + 5);
  v22 = v21 & 0x7FFF;
  v23 = __clz(v22);
  v24 = (v22 << (v23 - 8)) ^ 0x800000 | (1124073472 - (v23 << 23));
  if ((v21 & 0x7FFF) == 0)
  {
    v24 = 0;
  }

  if ((v21 & 0x7FFF) >> 10 >= 0x1Fu)
  {
    v25 = (v22 << 13) | 0x7F800000;
  }

  else
  {
    v25 = v24;
  }

  v26 = (v22 << 13) + 939524096;
  if (((v21 & 0x7FFFu) - 1024) >> 11 > 0xE)
  {
    v26 = v25;
  }

  flatbuffers::FlatBufferBuilder::AddElement<float>(a2, 24, COERCE_FLOAT(v26 | ((v21 & 0x8000) << 16)), 0.0);
  v27 = *(this + 7) & 3;
  if (v27 == 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = v27 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 26, v28);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a2, 16, (*this & 0x8000) == 0, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a2, 20, ((*this >> 20) & 0xF) + 1, 0);
  v29 = *(this + 4);
  v30 = v29 & 0x7FFF;
  if ((v30 - 1024) >> 11 > 0xE)
  {
    if (v30 >> 10 < 0x1F)
    {
      if ((v29 & 0x7FFF) != 0)
      {
        v31 = __clz(v30);
        v30 = (v30 << (v31 - 8)) ^ 0x800000 | (1124073472 - (v31 << 23));
      }
    }

    else
    {
      v30 = (v30 << 13) | 0x7F800000;
    }
  }

  else
  {
    v30 = (v30 << 13) + 939524096;
  }

  v32 = v6 - v5;
  flatbuffers::FlatBufferBuilder::AddElement<float>(a2, 30, COERCE_FLOAT(v30 | ((v29 & 0x8000) << 16)), 0.0);
  v33 = (*this >> 58) & 3;
  if (v33 == 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = v33 == 1;
  }

  flatbuffers::FlatBufferBuilder::AddElement<signed char>(a2, 34, v34);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a2, 28, *this, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a2, 32, *(this + 1), 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a2, v32 + v4);
}

void *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(void *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned long long>>::operator=[abi:nn200100](uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    *v13 = *a2;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v14 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

uint64_t AGCLLVMObject::constructVisibleFunctionArray(AGCLLVMObject *this, int a2)
{
  std::unordered_map<std::string,unsigned int>::unordered_map(v19, this + 3480);
  v4 = *(this + 438);
  if (v4)
  {
    if (!(v4 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v4);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  for (i = v20; i; i = *i)
  {
    if (a2)
    {
      v6 = *(i + 39);
      if (v6 < 0)
      {
        v7 = i[2];
      }

      v8 = v6 >= 0 ? *(i + 39) : i[3];
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == *(this + 1286))
      {
        continue;
      }
    }

    v10 = i[2];
    v11 = *(i + 39);
    if (v11 >= 0)
    {
      v12 = (i + 2);
    }

    else
    {
      v12 = i[2];
    }

    if (v11 >= 0)
    {
      v13 = *(i + 39);
    }

    else
    {
      v13 = i[3];
    }

    String = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v12, v13);
    *(this + 4358) = 1;
    v15 = *(this + 1082);
    v16 = *(this + 1080) - *(this + 1084);
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 4, String);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 536, 6, *(i + 10), 0);
    flatbuffers::FlatBufferBuilder::EndTable((this + 4288), v16 + v15);
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }

  *(this + 4358) = 1;
  flatbuffers::FlatBufferBuilder::PreAlign((this + 4288), 0, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign((this + 4288), 0, 4uLL);
  *(this + 4358) = 0;
  v17 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 4288, 0);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v19);
  return v17;
}

uint64_t std::unordered_map<std::string,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>(a1, (i + 2));
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t AGCLLVMObject::constructFlatReply(AGCLLVMObject *this)
{
  v2 = (*(*this + 48))(this);
  v3 = strlen(v2);
  String = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v2, v3);
  v5 = (*(*this + 96))(this);
  LOBYTE(__p) = v5;
  if (v5)
  {
    v6 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>((this + 4288), &__p, 1uLL);
  }

  else
  {
    v6 = 0;
  }

  v94 = 0;
  v7 = *(this + 314);
  if (*(this + 3432) != 1)
  {
    if (v7)
    {
      v13 = this + 3072;
      v14 = 2512;
      if (*(this + 315))
      {
        v13 = this + 2512;
      }

      else
      {
        v14 = 3072;
      }

      v15 = *(this + v14);
      v16 = *(v13 + 1);
      if (v15)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
LABEL_57:
        v22 = 0;
        goto LABEL_100;
      }
    }

    else
    {
      v22 = 0;
      v15 = *(this + 384);
      if (!v15 || !*(this + 385))
      {
        goto LABEL_100;
      }
    }

    v23 = (v15 + *v15);
    v24 = (v23 - *v23);
    if (*v24 >= 5u && (v25 = v24[2]) != 0)
    {
      v26 = (v23 + v25 + *(v23 + v25));
    }

    else
    {
      v26 = 0;
    }

    v33 = (v26 - *v26);
    if (*v33 >= 0x39u && v33[28])
    {
      if (v7)
      {
        if (*(this + 315))
        {
          v34 = (this + 2512);
        }

        else
        {
          v34 = (this + 3072);
        }
      }

      else
      {
        v34 = (this + 3072);
      }

      v55 = 0;
      if (*v34 && v34[1])
      {
        v55 = (*v34 + **v34);
      }

      v56 = (v55 - *v55);
      if (*v56 >= 5u && (v57 = v56[2]) != 0)
      {
        v58 = (v55 + v57 + *(v55 + v57));
      }

      else
      {
        v58 = 0;
      }

      v59 = (v58 - *v58);
      if (*v59 >= 0x39u && (v60 = v59[28]) != 0)
      {
        v61 = (v58 + v60 + *(v58 + v60));
      }

      else
      {
        v61 = 0;
      }

      v22 = AGCLLVMObject::extractPhaseOffsets(this, v61, &v94);
      goto LABEL_100;
    }

    goto LABEL_57;
  }

  if (v7)
  {
    v8 = this + 3072;
    v9 = 2512;
    if (*(this + 315))
    {
      v8 = this + 2512;
    }

    else
    {
      v9 = 3072;
    }

    v10 = *(this + v9);
    v11 = *(v8 + 1);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = *(this + 384);
    if (!v10 || !*(this + 385))
    {
      goto LABEL_38;
    }
  }

  v18 = (v10 + *v10);
  v19 = (v18 - *v18);
  if (*v19 >= 5u && (v20 = v19[2]) != 0)
  {
    v21 = (v18 + v20 + *(v18 + v20));
  }

  else
  {
    v21 = 0;
  }

  v27 = (v21 - *v21);
  if (*v27 >= 0x39u && v27[28])
  {
    goto LABEL_53;
  }

LABEL_38:
  v22 = 0;
  v28 = *(this + 430);
  if (v28 && *(this + 431))
  {
    v29 = (v28 + *v28);
    v30 = (v29 - *v29);
    if (*v30 >= 5u && (v31 = v30[2]) != 0)
    {
      v32 = (v29 + v31 + *(v29 + v31));
    }

    else
    {
      v32 = 0;
    }

    v35 = (v32 - *v32);
    if (*v35 >= 0x39u && v35[28])
    {
LABEL_53:
      if (v7)
      {
        if (*(this + 315))
        {
          v36 = (this + 2512);
        }

        else
        {
          v36 = (this + 3072);
        }
      }

      else
      {
        v36 = (this + 3072);
      }

      v37 = 0;
      if (*v36 && v36[1])
      {
        v37 = (*v36 + **v36);
      }

      v38 = (v37 - *v37);
      if (*v38 >= 5u && (v39 = v38[2]) != 0)
      {
        v40 = (v37 + v39 + *(v37 + v39));
      }

      else
      {
        v40 = 0;
      }

      v41 = (v40 - *v40);
      if (*v41 >= 0x39u && (v42 = v41[28]) != 0)
      {
        v43 = (v40 + v42 + *(v40 + v42));
      }

      else
      {
        v43 = 0;
      }

      v44 = 0;
      v45 = *(this + 430);
      if (v45 && *(this + 431))
      {
        v44 = (v45 + *v45);
      }

      v46 = (v44 - *v44);
      if (*v46 >= 5u && (v47 = v46[2]) != 0)
      {
        v48 = (v44 + v47 + *(v44 + v47));
      }

      else
      {
        v48 = 0;
      }

      v49 = (v48 - *v48);
      if (*v49 >= 0x39u && (v50 = v49[28]) != 0)
      {
        v51 = (v48 + v50 + *(v48 + v50));
      }

      else
      {
        v51 = 0;
      }

      __p = 0;
      v92 = 0;
      v93 = 0;
      p_p = &__p;
      v89 = this + 3480;
      AGCLLVMObject::extractPhaseOffsetsWithAux(flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Offset<flatbuffers::Vector<unsigned int>> &)::$_0::operator()(&p_p, v43);
      AGCLLVMObject::extractPhaseOffsetsWithAux(flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Vector<flatbuffers::Offset<AGCCodeGenerator::ShaderPhase>> const*,flatbuffers::Offset<flatbuffers::Vector<unsigned int>> &)::$_0::operator()(&p_p, v51);
      if (v92 == __p)
      {
        v52 = &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t;
      }

      else
      {
        v52 = __p;
      }

      v94 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((this + 4288), v52, (*&v92 - __p) >> 2);
      v53 = __p;
      v54 = v92;
      if (__p)
      {
        v92 = __p;
        operator delete(__p);
      }

      v22 = *&v54 != v53;
      goto LABEL_100;
    }

    goto LABEL_57;
  }

LABEL_100:
  (*(*this + 144))(&__p, this);
  if (v93 >= 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p;
  }

  if (v93 >= 0)
  {
    v63 = HIBYTE(v93);
  }

  else
  {
    v63 = v92;
  }

  v64 = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v62, v63);
  if (SHIBYTE(v93) < 0)
  {
    operator delete(__p);
  }

  v65 = *(this + 5119);
  if (v65 >= 0)
  {
    v66 = this + 5096;
  }

  else
  {
    v66 = *(this + 637);
  }

  if (v65 >= 0)
  {
    v67 = *(this + 5119);
  }

  else
  {
    v67 = *(this + 638);
  }

  v68 = flatbuffers::FlatBufferBuilder::CreateString((this + 4288), v66, v67);
  *(this + 4358) = 1;
  v69 = *(this + 540);
  v70 = *(this + 542);
  v71 = *(this + 541);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 536, 6, *(this + 1272));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 18, v64);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 80, v68);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 8, String);
  if ((*(*this + 96))(this))
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 4, v6);
  }

  if (v22)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>((this + 4288), 14, v94);
  }

  std::unordered_map<std::string,unsigned int>::unordered_map(&__p, this + 3480);
  (*(*this + 72))(&p_p, this);
  v72 = v90;
  v73 = p_p;
  if ((v90 & 0x80u) == 0)
  {
    p_p_p = &p_p;
  }

  else
  {
    p_p_p = p_p;
  }

  if ((v90 & 0x80u) == 0)
  {
    v75 = v90;
  }

  else
  {
    v75 = v89;
  }

  v76 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](p_p_p, v75);
  v77 = v92;
  if (!*&v92)
  {
    v82 = 0;
    if (v72 < 0)
    {
      goto LABEL_146;
    }

    goto LABEL_147;
  }

  v78 = v76;
  v79 = vcnt_s8(v92);
  v79.i16[0] = vaddlv_u8(v79);
  v80 = v79.u32[0];
  if (v79.u32[0] > 1uLL)
  {
    v81 = v76;
    if (v76 >= *&v92)
    {
      v81 = v76 % *&v92;
    }
  }

  else
  {
    v81 = (*&v92 - 1) & v76;
  }

  v83 = *(__p + v81);
  if (!v83)
  {
    v82 = 0;
    goto LABEL_145;
  }

  v82 = *v83;
  if (!*v83)
  {
    goto LABEL_145;
  }

  while (1)
  {
    v84 = v82[1];
    if (v84 == v78)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](v82 + 2, &p_p))
      {
        goto LABEL_145;
      }

      goto LABEL_141;
    }

    if (v80 > 1)
    {
      if (v84 >= *&v77)
      {
        v84 %= *&v77;
      }
    }

    else
    {
      v84 &= *&v77 - 1;
    }

    if (v84 != v81)
    {
      break;
    }

LABEL_141:
    v82 = *v82;
    if (!v82)
    {
      goto LABEL_145;
    }
  }

  v82 = 0;
LABEL_145:
  if (v72 < 0)
  {
LABEL_146:
    operator delete(v73);
  }

LABEL_147:
  if (v82 && (*(*this + 80))(this) != 8)
  {
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 536, 16, *(v82 + 10));
    v85 = (*(*this + 80))(this);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 536, 40, (v85 < 0x1C) & (0x80002C1u >> v85), 0);
  }

  v86 = (*(*this + 120))(this);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 536, 42, v86, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 536, 50, *(this + 2224), 0);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&__p);
  return this + 4288;
}

BOOL AGCLLVMObject::extractPhaseOffsets(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v3 = a3;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = *a2;
  if (v5)
  {
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      v9 = *(a1 + 3496);
      if (v9)
      {
        do
        {
          v10 = &v8[v7];
          v11 = v10 + *v10 + *(v10 + *v10 - *(v10 + *v10) + 4);
          std::string::basic_string[abi:nn200100]<0>(__p, &v11[*v11 + 4]);
          v12 = *(v9 + 39);
          v13 = v27;
          if ((v27 & 0x80u) == 0)
          {
            v14 = v27;
          }

          else
          {
            v14 = __p[1];
          }

          if ((v27 & 0x80u) == 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          if (v12 >= 0)
          {
            v16 = *(v9 + 39);
          }

          else
          {
            v16 = v9[3];
          }

          if (v12 >= 0)
          {
            v17 = v9 + 2;
          }

          else
          {
            v17 = v9[2];
          }

          if (v16 >= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = memcmp(v15, v17, v18);
          if (v16 == v14 && v19 == 0)
          {
            std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](&v28, v9 + 10);
            v13 = v27;
          }

          if ((v13 & 0x80) != 0)
          {
            operator delete(__p[0]);
          }

          v9 = *v9;
        }

        while (v9);
        v5 = *a2;
      }

      ++v7;
    }

    while (v7 < v5);
    v21 = v28;
    v22 = v29;
    v3 = a3;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  if (v22 == v21)
  {
    v23 = &flatbuffers::data<unsigned int,std::allocator<unsigned int>>(std::vector<unsigned int> const&)::t;
  }

  else
  {
    v23 = v21;
  }

  *v3 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>((a1 + 4288), v23, (v22 - v21) >> 2);
  if (v21)
  {
    operator delete(v21);
  }

  return v22 != v21;
}

void std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v11);
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

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned int>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

void AGCLLVMObject::debugName(AGCLLVMObject *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 5063) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 630), *(this + 631));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 315);
    a2->__r_.__value_.__r.__words[2] = *(this + 632);
  }
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<AGCCodeTranslator::ComputeKernelInfo>(flatbuffers::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v3, 10, v4);
  }

  return result;
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFFCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(this + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

uint64_t AGCLLVMAGPFragmentShaderGen3::getTempRegistersLimit(AGCLLVMAGPFragmentShaderGen3 *this, unsigned int *a2)
{
  v4 = (this + *(*this - 24));
  *a2 = *(v4[271] + 980);
  result = (*(*v4 + 112))(v4);
  if (result)
  {
    *a2 = result;
    result = result != *(v4[271] + 980);
  }

  if (*(this + 1966))
  {
    v6 = *(this + *(*this - 24) + 2168);
    if (v6[976] == 1)
    {
      v7 = (*(*v6 + 688))(*(this + *(*this - 24) + 2168));
      *a2 = AGCLLVMGen3TargetLowerer::getTempRegistersLimitAcrossTileSizesForTileShader(v7, *(this + *(*this - 24) + 1688), *(this + 1966));
      return 1;
    }
  }

  return result;
}

const char *AGCLLVMObject::getMaxTempRegistersOverride(AGCLLVMObject *this, const char *a2)
{
  v2 = 0x27C8D7000uLL;
  {
    v2 = 0x27C8D7000;
    if (v4)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v2 = 0x27C8D7000;
    }
  }

  if (*(v2 + 2944) == 1)
  {
    result = AGCEnv::getValue("AGC_TEMP_REGS_IN_BYTES", a2);
    if (!result)
    {
      return result;
    }

    if (*result != 48)
    {
      return ((atoi(result) + 3) >> 2);
    }
  }

  return 0;
}

uint64_t llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::~StringMap(uint64_t a1)
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

void std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*a1);
    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }
    }

    else
    {
      if (*(a1 + 12) < v4)
      {
        *(a1 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a2 + 8) - v5;
      if (v6)
      {
        memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
      }
    }

    *(a1 + 8) = v4;
  }

  return a1;
}

llvm::StringMapImpl *llvm::StringMap<llvm::MDNode *,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1000000000;
  if (*(a2 + 3))
  {
    v4 = *(a2 + 2);
    llvm::StringMapImpl::init(this);
    v5 = *this;
    v6 = *(this + 2);
    v7 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v6)
    {
      v8 = 0;
      v9 = v5 + 8 * v6 + 8;
      v10 = v7 + 8 * v6 + 8;
      do
      {
        v11 = *(*a2 + 8 * v8);
        if (v11)
        {
          v12 = v11 + 1 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(*this + 8 * v8) = v11;
        }

        else
        {
          v13 = *v11;
          v14 = MEMORY[0x20F330650](*v11 + 17, 8);
          v15 = v14;
          v16 = v14 + 16;
          if (v13)
          {
            memcpy((v14 + 16), v11 + 2, v13);
          }

          *(v16 + v13) = 0;
          v17 = v11[1];
          *v15 = v13;
          v15[1] = v17;
          *(*this + 8 * v8) = v15;
          *(v9 + 4 * v8) = *(v10 + 4 * v8);
        }

        ++v8;
      }

      while (v6 != v8);
    }
  }

  return this;
}

char *llvm::PassInfoMixin<llvm::AlwaysInlinerPass>::name()
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

  v2 = &aStringrefLlvmG_23[v1];
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

uint64_t *AGCLLVMUserObject::getSampleFunctionMap(AGCLLVMUserObject *this)
{
  {
    v4 = this;
    LODWORD(this) = v4;
    if (v2)
    {
      AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map = 0;
      unk_27C8D8260 = 0;
      qword_27C8D8268 = 0x4000000000;
      __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map, &dword_20E4E1000);
      LODWORD(this) = v4;
    }
  }

  {
    v5 = this;
    LODWORD(this) = v5;
    if (v3)
    {
      AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map_with_explicit_sampler = 0;
      unk_27C8D8240 = 0;
      qword_27C8D8248 = 0x4000000000;
      __cxa_atexit(llvm::StringMap<AGCLLVMUserObject::AIRSampleFunction,llvm::MallocAllocator>::~StringMap, &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map_with_explicit_sampler, &dword_20E4E1000);
      LODWORD(this) = v5;
    }
  }

  if (this)
  {
    return &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map_with_explicit_sampler;
  }

  else
  {
    return &AGCLLVMUserObject::getSampleFunctionMap(BOOL)::sample_function_map;
  }
}

uint64_t AGCLLVMUserObject::extractConstantSamplers(void *a1, uint64_t a2)
{
  v3 = *(a1 + *(*a1 - 24) + 2136);
  v11 = "air.sampler_states";
  v12 = 259;
  result = llvm::Module::getNamedMetadata(v3, &v11);
  if (result)
  {
    v5 = result;
    for (i = 0; ; ++i)
    {
      result = llvm::NamedMDNode::getNumOperands(v5);
      if (i >= result)
      {
        break;
      }

      Operand = llvm::NamedMDNode::getOperand(v5);
      v8 = *(Operand - 8 * *(Operand + 8) + 8);
      if (v8)
      {
        if (*v8 - 1 > 1)
        {
          v10 = 0;
        }

        else
        {
          v9 = *(v8 + 16);
          if (*(v9 + 16) == 3)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a2, v10);
      }
    }
  }

  return result;
}

char *llvm::PassInfoMixin<SimplifyGenericIRCommonPass>::name()
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

  v2 = &aStringrefLlvmG_71[v1];
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

uint64_t AGCLLVMObject::disableConstantHoisting(AGCLLVMObject *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(this + 267);
  llvm::Module::getOrInsertNamedMetadata();
  v3 = *(this + 270);
  llvm::MDString::get();
  v4 = *(this + 238);
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v5 = *(this + 270);
  llvm::MDTuple::getImpl();
  result = llvm::NamedMDNode::addOperand();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMObject::enableTempRegistersLimit(AGCLLVMObject *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  result = (*(*this + 184))(this, &v8);
  if (result)
  {
    v3 = *(this + 267);
    llvm::Module::getOrInsertNamedMetadata();
    v4 = *(this + 270);
    v9 = llvm::MDString::get();
    v5 = *(this + 238);
    llvm::ConstantInt::get();
    v10 = llvm::ValueAsMetadata::get();
    v6 = *(this + 270);
    llvm::MDTuple::getImpl();
    result = llvm::NamedMDNode::addOperand();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t parseMDLocationIndex(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = isStringMDNode(*(a1 - 8 * *(a1 + 8) + 8 * *a2), "air.location_index");
  if (result)
  {
    v9 = *a2 + 1;
    result = parseMDInt(0, a1, &v9, a3);
    if (result)
    {
      v10 = *a2 + 2;
      result = parseMDInt(0, a1, &v10, a4);
      if (result)
      {
        *a2 += 3;
        return 1;
      }
    }
  }

  return result;
}