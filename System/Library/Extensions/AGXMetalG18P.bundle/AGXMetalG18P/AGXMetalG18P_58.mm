void AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deallocateCodeHeap(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 1128));
  v2 = *(a1 + 1132);
  v3 = __OFSUB__(v2--, 1);
  *(a1 + 1132) = v2;
  if ((v2 < 0) ^ v3 | (v2 == 0))
  {
    if (*(a1 + 752))
    {
      if (*(a1 + 720))
      {
        v4 = *(a1 + 728);
        v5 = *(v4 + 16);
        v14 = MEMORY[0x29EDCA5F8];
        v15 = 3221225472;
        v16 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v17 = &__block_descriptor_48_e5_v8__0l;
        v18 = v4;
        v19 = a1 + 696;
        dispatch_sync(v5, &v14);
        *(a1 + 721) = 0u;
        *(a1 + 696) = 0u;
        *(a1 + 712) = 0u;
      }

      *(a1 + 752) = 0;
    }

    if (*(a1 + 840))
    {
      if (*(a1 + 808))
      {
        v6 = *(a1 + 816);
        v7 = *(v6 + 16);
        v14 = MEMORY[0x29EDCA5F8];
        v15 = 3221225472;
        v16 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v17 = &__block_descriptor_48_e5_v8__0l;
        v18 = v6;
        v19 = a1 + 784;
        dispatch_sync(v7, &v14);
        *(a1 + 809) = 0u;
        *(a1 + 784) = 0u;
        *(a1 + 800) = 0u;
      }

      *(a1 + 840) = 0;
    }

    if (*(a1 + 928))
    {
      if (*(a1 + 896))
      {
        v8 = *(a1 + 904);
        v9 = *(v8 + 16);
        v14 = MEMORY[0x29EDCA5F8];
        v15 = 3221225472;
        v16 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v17 = &__block_descriptor_48_e5_v8__0l;
        v18 = v8;
        v19 = a1 + 872;
        dispatch_sync(v9, &v14);
        *(a1 + 897) = 0u;
        *(a1 + 872) = 0u;
        *(a1 + 888) = 0u;
      }

      *(a1 + 928) = 0;
    }

    if (*(a1 + 1016))
    {
      if (*(a1 + 984))
      {
        v10 = *(a1 + 992);
        v11 = *(v10 + 16);
        v14 = MEMORY[0x29EDCA5F8];
        v15 = 3221225472;
        v16 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v17 = &__block_descriptor_48_e5_v8__0l;
        v18 = v10;
        v19 = a1 + 960;
        dispatch_sync(v11, &v14);
        *(a1 + 985) = 0u;
        *(a1 + 960) = 0u;
        *(a1 + 976) = 0u;
      }

      *(a1 + 1016) = 0;
    }

    if (*(a1 + 1104))
    {
      if (*(a1 + 1072))
      {
        v12 = *(a1 + 1080);
        v13 = *(v12 + 16);
        v14 = MEMORY[0x29EDCA5F8];
        v15 = 3221225472;
        v16 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v17 = &__block_descriptor_48_e5_v8__0l;
        v18 = v12;
        v19 = a1 + 1048;
        dispatch_sync(v13, &v14);
        *(a1 + 1073) = 0u;
        *(a1 + 1048) = 0u;
        *(a1 + 1064) = 0u;
      }

      *(a1 + 1104) = 0;
    }
  }

  os_unfair_lock_unlock((a1 + 1128));
}

uint64_t AGX::DynamicLibrary<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enumResources(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 768))
  {
    v14 = *(result + 768);
    v4 = *(a2 + 24);
    if (!v4)
    {
      goto LABEL_17;
    }

    result = (*(*v4 + 48))(v4, &v14);
  }

  if (v3[107])
  {
    v14 = v3[107];
    v5 = *(a2 + 24);
    if (!v5)
    {
      goto LABEL_17;
    }

    result = (*(*v5 + 48))(v5, &v14);
  }

  if (v3[118])
  {
    v14 = v3[118];
    v6 = *(a2 + 24);
    if (!v6)
    {
      goto LABEL_17;
    }

    result = (*(*v6 + 48))(v6, &v14);
  }

  if (v3[129])
  {
    v14 = v3[129];
    v7 = *(a2 + 24);
    if (!v7)
    {
      goto LABEL_17;
    }

    result = (*(*v7 + 48))(v7, &v14);
  }

  if (!v3[140])
  {
    return result;
  }

  v14 = v3[140];
  v8 = *(a2 + 24);
  if (!v8)
  {
LABEL_17:
    v9 = std::__throw_bad_function_call[abi:nn200100]();
    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::initialize(v9, v10, v11, v12, v13);
  }

  return (*(*v8 + 48))(v8, &v14);
}

void AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::initialize(int8x8_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a1;
  v307 = *MEMORY[0x29EDCA608];
  if (a2[58])
  {
    v7 = a2[59] == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = 58;
  if (v7)
  {
    v8 = 128;
  }

  v272 = a2 + 128;
  v273 = a2 + 58;
  if (v7)
  {
    v9 = a2 + 128;
  }

  else
  {
    v9 = a2 + 58;
  }

  v10 = a2[v8];
  v11 = v9[1];
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
    v13 = 0;
  }

  else
  {
    v13 = (v10 + *v10);
  }

  v14 = (v13 - *v13);
  if (*v14 >= 5u && (v15 = v14[2]) != 0)
  {
    v16 = (v13 + v15 + *(v13 + v15));
  }

  else
  {
    v16 = 0;
  }

  v17 = a2[227];
  v18 = (v16 - *v16);
  v277 = v16;
  if (*v18 < 7u)
  {
    LODWORD(v19) = 0;
  }

  else
  {
    v19 = v18[3];
    if (v19)
    {
      LODWORD(v19) = *(v16 + v19);
    }
  }

  v291 = a2[224];
  v20 = HIDWORD(v17);
  v21 = a2[225];
  a1->i32[0] = v19;
  MEMORY[0x29ED51E00](&a1[1], a4);
  v6[4] = v6;
  v22 = v277;
  if (a5)
  {
    v23 = (v277 - *v277);
    if (*v23 < 0x43u)
    {
      LODWORD(v24) = 0;
    }

    else
    {
      v24 = v23[33];
      if (v24)
      {
        LODWORD(v24) = *(v277 + v24);
      }
    }

    v6[65].i32[1] = v24;
  }

  v25 = vcvtps_u32_f32(v20 / *v6[38].i32);
  v297 = a2;
  if (v25 == 1)
  {
    v25 = 2;
  }

  else if ((v25 & (v25 - 1)) != 0)
  {
    prime = std::__next_prime(v25);
    v22 = v277;
    v25 = prime;
  }

  v27 = v6[35];
  if (v25 > *&v27)
  {
    goto LABEL_34;
  }

  if (v25 < *&v27)
  {
    v28 = vcvtps_u32_f32(v6[37] / *v6[38].i32);
    if (*&v27 < 3uLL || (v29 = vcnt_s8(v27), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
    {
      v31 = v25;
      v28 = std::__next_prime(v28);
      v22 = v277;
      v25 = v31;
    }

    else
    {
      v30 = 1 << -__clz(v28 - 1);
      if (v28 >= 2)
      {
        v28 = v30;
      }
    }

    if (v25 <= v28)
    {
      v25 = v28;
    }

    if (v25 < *&v27)
    {
LABEL_34:
      std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(&v6[34], v25);
      v22 = v277;
    }
  }

  v32 = v21 + 1;
  v296 = v21 + 1;
  v298 = v6;
  if (!v20)
  {
    goto LABEL_276;
  }

  v33 = 0;
  v270 = 0;
  v275 = v6 + 55;
  v274 = v6 + 59;
  v278 = v17;
  v279 = HIDWORD(v17);
  while (1)
  {
    v34 = (v291 + 16 * (v33 + v17));
    v35 = *v34;
    v292 = *(v34 + 4);
    v36 = *(v34 + 5);
    v289 = *(v34 + 1);
    v37 = strncmp((v32 + v35), "agc.main", 8uLL);
    v38 = strncmp((v32 + v35), "agc.intersection", 0x10uLL);
    v39 = strncmp((v32 + v35), "agc.cliqueS", 0xBuLL);
    v40 = strncmp((v32 + v35), "agc.ifb_emulation_wrapper", 0x19uLL);
    if (v37)
    {
      v41 = v38 == 0;
    }

    else
    {
      v41 = 1;
    }

    if (v41 || v39 == 0 || v40 == 0)
    {
      v6 = v298;
      goto LABEL_48;
    }

    v44 = v297;
    v45 = *(v297 + 220);
    if ((v45 & (v45 - 1)) != 0)
    {
      v47 = v36;
      if (v45 <= v36)
      {
        v47 = v36 % *(v297 + 220);
      }

      v46 = *(*(v297 + 219) + 8 * v47);
      do
      {
        do
        {
          v46 = *v46;
        }

        while (v46[1] != v36);
      }

      while (*(v46 + 4) != v36);
    }

    else
    {
      v46 = *(*(v297 + 219) + 8 * ((v45 - 1) & v36));
      do
      {
        do
        {
          v46 = *v46;
        }

        while (v46[1] != v36);
      }

      while (*(v46 + 4) != v36);
    }

    if (*(v46 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v299, v46[3], v46[4]);
      v48 = HIBYTE(v299.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v299.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_71:
        if (v48 != 6)
        {
          if (v48 != 12)
          {
            if (v48 != 13)
            {
              goto LABEL_83;
            }

            v49 = &v299;
LABEL_80:
            v50 = bswap64(*v49);
            v51 = 0x5F5F444154415F43;
            if (v50 == 0x5F5F444154415F43 && (v50 = bswap64(*(v49 + 5)), v51 = 0x415F434F4D4D4F4ELL, v50 == 0x415F434F4D4D4F4ELL))
            {
              v52 = 0;
            }

            else if (v50 < v51)
            {
              v52 = -1;
            }

            else
            {
              v52 = 1;
            }

            v53 = 0;
            v54 = 0;
            v280 = 0;
            v55 = 0;
            v281 = 0;
            v56 = 0;
            v285 = 0;
            v287 = 0;
            v283 = 0;
            v57 = 0;
            if (v52)
            {
              v58 = 0;
            }

            else
            {
              v58 = 3;
            }

            goto LABEL_115;
          }

          v53 = 0;
          v54 = 0;
          v280 = 0;
          v55 = 0;
          v281 = 0;
          v56 = 0;
          v285 = 0;
          v287 = 0;
          v283 = 0;
          v57 = 0;
          v59 = v299.__r_.__value_.__r.__words[0] == 0x435F545845545F5FLL;
          v60 = LODWORD(v299.__r_.__value_.__r.__words[1]);
          goto LABEL_97;
        }

        if (LODWORD(v299.__r_.__value_.__l.__data_) != 1163157343 || WORD2(v299.__r_.__value_.__r.__words[0]) != 21592)
        {
          v53 = 0;
          v54 = 0;
          v280 = 0;
          v55 = 0;
          v281 = 0;
          v56 = 0;
          v285 = 0;
          v287 = 0;
          v283 = 0;
          v57 = 0;
          v62 = LODWORD(v299.__r_.__value_.__l.__data_) == 1094999903;
          v63 = WORD2(v299.__r_.__value_.__r.__words[0]);
          goto LABEL_108;
        }

        goto LABEL_146;
      }
    }

    else
    {
      v299 = *(v46 + 1);
      v48 = HIBYTE(v299.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v299.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_71;
      }
    }

    if (v299.__r_.__value_.__l.__size_ != 6)
    {
      if (v299.__r_.__value_.__l.__size_ != 12)
      {
        if (v299.__r_.__value_.__l.__size_ != 13)
        {
LABEL_83:
          v282 = 0;
          v53 = 0;
          v54 = 0;
          v280 = 0;
          v55 = 0;
          v281 = 0;
          v56 = 0;
          v285 = 0;
          v287 = 0;
          v283 = 0;
          v57 = 0;
          goto LABEL_116;
        }

        v49 = v299.__r_.__value_.__r.__words[0];
        goto LABEL_80;
      }

      v53 = 0;
      v54 = 0;
      v280 = 0;
      v55 = 0;
      v281 = 0;
      v56 = 0;
      v285 = 0;
      v287 = 0;
      v283 = 0;
      v57 = 0;
      v59 = *v299.__r_.__value_.__l.__data_ == 0x435F545845545F5FLL;
      v60 = *(v299.__r_.__value_.__r.__words[0] + 8);
LABEL_97:
      v58 = v59 && v60 == 1414745679;
      goto LABEL_115;
    }

    if (*v299.__r_.__value_.__l.__data_ != 1163157343 || *(v299.__r_.__value_.__r.__words[0] + 4) != 21592)
    {
      v53 = 0;
      v54 = 0;
      v280 = 0;
      v55 = 0;
      v281 = 0;
      v56 = 0;
      v285 = 0;
      v287 = 0;
      v283 = 0;
      v57 = 0;
      v62 = *v299.__r_.__value_.__l.__data_ == 1094999903;
      v63 = *(v299.__r_.__value_.__r.__words[0] + 4);
LABEL_108:
      v67 = v62 && v63 == 16724;
      v58 = 2 * v67;
LABEL_115:
      v282 = v58;
      goto LABEL_116;
    }

LABEL_146:
    v76 = strlen((v32 + v35));
    if (v76 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_596:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v77 = v76;
    if (v76 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v76;
    if (v76)
    {
      memmove(__dst, (v32 + v35), v76);
    }

    __dst[0].__r_.__value_.__s.__data_[v77] = 0;
    v78 = std::string::append(__dst, "@md");
    v79 = *&v78->__r_.__value_.__l.__data_;
    __src.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&__src.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[0].__r_.__value_.__l.__data_);
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src.__r_.__value_.__r.__words[0];
    }

    BackendMetadataFBPtr = AGCDeserializedReply::getBackendMetadataFBPtr(v297, p_src);
    v82 = BackendMetadataFBPtr;
    v83 = (BackendMetadataFBPtr - *BackendMetadataFBPtr);
    if (*v83 >= 5u && (v84 = v83[2]) != 0)
    {
      v85 = (BackendMetadataFBPtr + v84 + *(BackendMetadataFBPtr + v84));
    }

    else
    {
      v85 = 0;
    }

    v86 = (v85 - *v85);
    v87 = *v86;
    if (v87 < 5)
    {
      LODWORD(v88) = 0;
LABEL_168:
      v90 = 0;
      goto LABEL_169;
    }

    v88 = v86[2];
    if (v86[2])
    {
      LODWORD(v88) = *(v85 + v88);
    }

    if (v87 < 0x21)
    {
      goto LABEL_168;
    }

    v89 = v86[16];
    if (!v89)
    {
      goto LABEL_168;
    }

    v90 = *(v85 + v89);
LABEL_169:
    v271 = v88;
    {
      v118 = v90;
      v90 = v118;
      if (v119)
      {
        getAdditionalSpillBufferBytes(void)::extra = 0;
        v90 = v118;
      }
    }

    v91 = getAdditionalSpillBufferBytes(void)::extra;
    v92 = (v85 - *v85);
    v93 = *v92;
    if (v93 < 0x51)
    {
      if (v93 < 0x25)
      {
        v281 = 0;
        v94 = 0;
LABEL_190:
        v53 = 0;
LABEL_191:
        v55 = 0;
        goto LABEL_192;
      }
    }

    else if (v92[40])
    {
      v94 = *(v85 + v92[40]);
      v95 = v92[18];
      if (!v92[18])
      {
        goto LABEL_183;
      }

      goto LABEL_176;
    }

    v94 = 0;
    v95 = v92[18];
    if (!v92[18])
    {
      goto LABEL_183;
    }

LABEL_176:
    if (*(v85 + v95))
    {
      if (v93 < 0x27)
      {
        v53 = 0;
        v55 = 0;
        v281 = 1;
        goto LABEL_192;
      }

      v96 = v92[19];
LABEL_179:
      v97 = 1;
      goto LABEL_180;
    }

LABEL_183:
    if (v93 < 0x27)
    {
      v281 = 0;
      goto LABEL_190;
    }

    v96 = v92[19];
    if (v92[19] && *(v85 + v92[19]))
    {
      v281 = 1;
      v53 = 1;
      if (v93 < 0x55)
      {
        goto LABEL_191;
      }

      goto LABEL_240;
    }

    if (v93 < 0x29)
    {
LABEL_238:
      v281 = 0;
      if (!v92[19])
      {
LABEL_239:
        v53 = 0;
        if (v93 < 0x55)
        {
          goto LABEL_191;
        }

        goto LABEL_240;
      }

      goto LABEL_181;
    }

    if (v92[20] && *(v85 + v92[20]))
    {
      goto LABEL_179;
    }

    if (v93 < 0x71 || !v92[56])
    {
      goto LABEL_238;
    }

    v97 = *(v85 + v92[56]) != 0;
LABEL_180:
    v281 = v97;
    if (!v96)
    {
      goto LABEL_239;
    }

LABEL_181:
    v53 = *(v85 + v96) != 0;
    if (v93 < 0x55)
    {
      goto LABEL_191;
    }

LABEL_240:
    v116 = v92[42];
    if (v92[42])
    {
      LOBYTE(v116) = *(v85 + v116) != 0;
    }

    v270 |= v116;
    if (v93 < 0x5D || !v92[46])
    {
      goto LABEL_191;
    }

    v55 = *(v85 + v92[46]) != 0;
LABEL_192:
    v98 = 0;
    if (*(v297 + 58))
    {
      v99 = *(v297 + 59) == 0;
    }

    else
    {
      v99 = 1;
    }

    v100 = 464;
    if (v99)
    {
      v100 = 1024;
    }

    v101 = v273;
    if (v99)
    {
      v101 = v272;
    }

    v102 = *(v297 + v100);
    if (v102 && v101[1])
    {
      v98 = (v102 + *v102);
    }

    v103 = (v98 - *v98);
    v54 = *v103 >= 0x1Bu && v103[13] != 0;
    v104 = (v82 - *v82);
    if (*v104 >= 0xDu && (v105 = v104[6]) != 0)
    {
      v106 = (v82 + v105 + *(v82 + v105));
      v107 = (v106 - *v106);
      v109 = *v107 >= 0x29u && (v108 = v107[20]) != 0 && *(v106 + v108) != 0;
      v44 = v297;
      v54 |= v109;
      if (v93 >= 0x3F)
      {
LABEL_211:
        if (v92[31] && (v110 = (v85 + v92[31] + *(v85 + v92[31])), v111 = *v110, v111))
        {
          v112 = v110 + 1;
          while (1)
          {
            v114 = *v112++;
            v113 = v114;
            if (v114 < 0x36 && ((0x3F000000000777uLL >> v113) & 1) != 0)
            {
              break;
            }

            if (!--v111)
            {
              goto LABEL_218;
            }
          }

          v280 = 1;
        }

        else
        {
LABEL_218:
          v280 = 0;
        }

        v56 = v94;
        if (v93 < 0x4D)
        {
          v287 = 0;
        }

        else if (v92[38])
        {
          v287 = *(v85 + v92[38]);
          if (v93 >= 0x53)
          {
            goto LABEL_246;
          }
        }

        else
        {
          v287 = 0;
          if (v93 >= 0x53)
          {
LABEL_246:
            v117 = v92[41];
            if (v117)
            {
              v285 = *(v85 + v117);
              if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_230;
              }

LABEL_229:
              v115 = v90;
              operator delete(__src.__r_.__value_.__l.__data_);
              v90 = v115;
              goto LABEL_230;
            }
          }
        }

        v285 = 0;
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_229;
        }

        goto LABEL_230;
      }
    }

    else
    {
      v44 = v297;
      if (v93 >= 0x3F)
      {
        goto LABEL_211;
      }
    }

    v287 = 0;
    v280 = 0;
    v285 = 0;
    v56 = v94;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_229;
    }

LABEL_230:
    v282 = 0;
    v283 = v91 + v90;
    v57 = v271;
LABEL_116:
    v298[27].i8[0] |= v54;
    v68 = (v289 - *(*(v44 + 228) + 4 * v36));
    if ((v292 & 0x10) != 0)
    {
      if (!strcmp((v296 + v35), "agc.global_constructor"))
      {
        v6 = v298;
        v298[53] = v68;
        v298[54].i32[0] = v57;
        v298[54].i32[1] = v283;
        v275->i32[0] = 0;
        v275->i8[4] = 0;
        v298[56] = v298;
        v298[57].i32[0] = v282;
        v298[57].i32[1] = v287;
        v298[58].i32[0] = v285;
        v298[58].i32[1] = v56;
        *v274->i8 = 0u;
        *v274[2].i8 = 0u;
        v274[4] = 0;
        v32 = v296;
        LODWORD(v17) = v278;
        v20 = v279;
        if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_145;
        }

        goto LABEL_48;
      }

      v71 = strlen((v296 + v35));
      v20 = v279;
      v6 = v298;
      if (v71 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_596;
      }

      v72 = v71;
      v294 = v68;
      if (v71 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v71;
      if (v71)
      {
        memmove(__dst, (v296 + v35), v71);
      }

      __dst[0].__r_.__value_.__s.__data_[v72] = 0;
      v75 = v298[4];
      v74 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__src, __dst[0].__r_.__value_.__l.__data_, __dst[0].__r_.__value_.__l.__size_);
      }

      else
      {
        __src = __dst[0];
      }

      v302 = v294;
      v303[0] = v57;
      v303[1] = v283;
      LOBYTE(v303[2]) = v281;
      BYTE1(v303[2]) = v55;
      HIWORD(v303[2]) = v280;
      LOBYTE(v303[3]) = v53;
      v304 = v75;
      v305 = v282;
      v306[0] = v287;
      v306[1] = v285;
      v306[2] = v56;
      memset(&v306[3], 0, 40);
      std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>(&v298[39], &__src);
      v32 = v296;
      LODWORD(v17) = v278;
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_134:
        if ((v74 & 0x80000000) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_144;
      }
    }

    else
    {
      v69 = strlen((v296 + v35));
      if (v69 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_596;
      }

      v70 = v69;
      v293 = v68;
      if (v69 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v69;
      v6 = v298;
      if (v69)
      {
        memmove(__dst, (v296 + v35), v69);
      }

      __dst[0].__r_.__value_.__s.__data_[v70] = 0;
      v73 = v298[4];
      v74 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__src, __dst[0].__r_.__value_.__l.__data_, __dst[0].__r_.__value_.__l.__size_);
      }

      else
      {
        __src = __dst[0];
      }

      v302 = v293;
      v303[0] = v57;
      v303[1] = v283;
      LOBYTE(v303[2]) = v281;
      BYTE1(v303[2]) = v55;
      BYTE2(v303[2]) = v280;
      HIBYTE(v303[2]) = v54;
      LOBYTE(v303[3]) = v53;
      v304 = v73;
      v305 = v282;
      v306[0] = v287;
      v306[1] = v285;
      v306[2] = v56;
      memset(&v306[3], 0, 40);
      std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>(&v298[34], &__src);
      v32 = v296;
      LODWORD(v17) = v278;
      v20 = v279;
      if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_134;
      }
    }

    operator delete(__src.__r_.__value_.__l.__data_);
    if ((v74 & 0x80000000) == 0)
    {
LABEL_135:
      if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_145;
      }

      goto LABEL_48;
    }

LABEL_144:
    operator delete(__dst[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_145:
      operator delete(v299.__r_.__value_.__l.__data_);
    }

LABEL_48:
    if (++v33 == v20)
    {
      v22 = v277;
      if (v270)
      {
        v120 = (v277 - *v277);
        v121 = *v120;
        if (v121 < 0x45)
        {
          if (v121 >= 0x3D)
          {
            LOWORD(v122) = 0;
            v123 = v120[30];
            if (v120[30])
            {
              goto LABEL_256;
            }

            goto LABEL_257;
          }

          LODWORD(v125) = 0;
          if (v121 >= 0x3B)
          {
            LOWORD(v123) = 0;
            LOWORD(v122) = 0;
            v124 = v120[29];
            if (v120[29])
            {
              goto LABEL_258;
            }

            goto LABEL_259;
          }

          v126 = 0;
          LOWORD(v123) = 0;
          LOWORD(v122) = 0;
          v124 = 0;
        }

        else
        {
          v122 = v120[34];
          if (v120[34])
          {
            LODWORD(v122) = *(v277 + v122);
          }

          v123 = v120[30];
          if (v120[30])
          {
LABEL_256:
            LODWORD(v123) = *(v277 + v123);
          }

LABEL_257:
          v124 = v120[29];
          if (v120[29])
          {
LABEL_258:
            v124 = *(v277 + v124);
          }

LABEL_259:
          if (v121 < 0x3F)
          {
            LODWORD(v125) = 0;
            v126 = 0;
          }

          else
          {
            v125 = v120[31];
            if (v120[31])
            {
              LODWORD(v125) = *(v277 + v125);
            }

            if (v121 < 0x4B)
            {
              v126 = 0;
            }

            else
            {
              v126 = v120[37];
              if (v126)
              {
                v126 = *(v277 + v126) << 16;
              }
            }
          }
        }

        v6[11].i32[0] = v125;
        v127 = v125 + v123 - 1;
        v128 = -v125;
        v129 = v6[12];
        v130 = (v122 | ((v128 & v127) << 32) | (v124 << 48)) + v126 + (v129.i32[0] & 0xFF000000);
        v6[12] = v130;
        v22 = v277;
        if (v130 != *&v129)
        {
          *v6[17].i8 = 0u;
          *v6[15].i8 = 0u;
          *v6[13].i8 = 0u;
          *&v131 = -1;
          *(&v131 + 1) = -1;
          *v6[19].i8 = v131;
          *v6[21].i8 = v131;
          *v6[23].i8 = v131;
          v6[25] = -1;
        }
      }

LABEL_276:
      v132 = (v22 - *v22);
      if (*v132 < 0x57u)
      {
        LODWORD(v133) = 0;
        v134 = v297;
      }

      else
      {
        v133 = v132[43];
        v134 = v297;
        if (v133)
        {
          LODWORD(v133) = *(v22 + v133);
        }
      }

      v6[26].i32[0] = v133;
      if ((a5 & 1) == 0)
      {
        v135 = (v22 - *v22);
        if (*v135 < 0x49u)
        {
          LODWORD(v136) = 0;
        }

        else
        {
          v136 = v135[36];
          if (v136)
          {
            LODWORD(v136) = *(v22 + v136);
          }
        }

        v6[64].i32[0] = v136;
      }

      v137 = (v22 - *v22);
      if (*v137 >= 0x31u)
      {
        v138 = v137[24];
        if (v137[24])
        {
          v139 = *(v277 + v138);
          v140 = (v277 + v138 + v139);
          v141 = v137[22];
          if (v141)
          {
            LODWORD(v141) = *(v277 + v141);
          }

          v298[64].i32[1] = v141;
          v142 = (v277 - *v277);
          if (*v142 < 0x2Fu)
          {
            LODWORD(v143) = 0;
          }

          else
          {
            v143 = v142[23];
            if (v143)
            {
              LODWORD(v143) = *(v277 + v143);
            }
          }

          v298[65].i32[0] = v143;
          v144 = *v140;
          if (v144)
          {
            v145 = 0;
            v146 = 4 * v144;
            v147 = v277 + v138 + v139;
            do
            {
              v148 = v140[v145 / 4 + 1];
              v149 = &v140[v145 / 4] + v148;
              v150 = &v140[v145 / 4] + v148 - *(v149 + 1);
              if (*(v150 + 2) >= 5u && (v151 = *(v150 + 4)) != 0)
              {
                v152 = &v140[v145 / 4 + 1] + v148 + v151 + *(&v140[v145 / 4 + 1] + v148 + v151);
              }

              else
              {
                v152 = 0;
              }

              v153 = strlen((v152 + 4));
              if (v153 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_596;
              }

              v154 = v153;
              if (v153 >= 0x17)
              {
                operator new();
              }

              *(&v299.__r_.__value_.__s + 23) = v153;
              if (v153)
              {
                memmove(&v299, (v152 + 4), v153);
              }

              v299.__r_.__value_.__s.__data_[v154] = 0;
              v155 = &v147[v145 + v148 - *(v149 + 1)];
              if (*(v155 + 2) >= 7u && (v156 = *(v155 + 5)) != 0)
              {
                v157 = *&v147[v145 + 4 + v148 + v156];
                v158 = SHIBYTE(v299.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_311;
                }
              }

              else
              {
                v157 = 0;
                v158 = SHIBYTE(v299.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v299.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_311:
                  std::string::__init_copy_ctor_external(&__src, v299.__r_.__value_.__l.__data_, v299.__r_.__value_.__l.__size_);
                  goto LABEL_314;
                }
              }

              __src = v299;
LABEL_314:
              memset(v303, 0, 13);
              v302 = v157;
              v304 = v298;
              v305 = 4;
              memset(v306, 0, sizeof(v306));
              std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>(&v298[34], &__src);
              if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__src.__r_.__value_.__l.__data_);
                if (v158 < 0)
                {
                  goto LABEL_316;
                }
              }

              else if (v158 < 0)
              {
LABEL_316:
                operator delete(v299.__r_.__value_.__l.__data_);
              }

              v145 += 4;
              v134 = v297;
            }

            while (v146 != v145);
          }
        }
      }

      v159 = *(v134 + 176);
      v160 = v298;
      if (v159)
      {
        while (2)
        {
          v162 = (v159 + 2);
          if (*(v159 + 39) < 0)
          {
            v162 = *v162;
          }

          v163 = AGCDeserializedReply::getBackendMetadataFBPtr(v297, v162);
          v164 = (v163 - *v163);
          if (*v164 < 5u)
          {
            v166 = 0;
            v160 = v298;
          }

          else
          {
            v165 = v164[2];
            v160 = v298;
            if (v165)
            {
              v166 = (v163 + v165 + *(v163 + v165));
            }

            else
            {
              v166 = 0;
            }
          }

          v167 = (v166 - *v166);
          if (*v167 < 0x49u || !v167[36] || !*(v166 + v167[36]))
          {
            goto LABEL_321;
          }

          v168 = v167[2];
          if (v168)
          {
            LODWORD(v168) = *(v166 + v168);
          }

          if (v160[6].i32[0] > v168)
          {
            LODWORD(v168) = v160[6].i32[0];
          }

          v160[6].i32[0] = v168;
          v169 = (v166 - *v166);
          if (*v169 < 0x51u)
          {
            LODWORD(v170) = 0;
          }

          else
          {
            v170 = v169[40];
            if (v170)
            {
              LODWORD(v170) = *(v166 + v170);
            }
          }

          if (v160[6].i32[1] > v170)
          {
            LODWORD(v170) = v160[6].i32[1];
          }

          v160[6].i32[1] = v170;
          v171 = (v166 - *v166);
          if (*v171 >= 0x21u && (v172 = v171[16]) != 0)
          {
            v173 = *(v166 + v172);
            {
              goto LABEL_397;
            }
          }

          else
          {
            v173 = 0;
            {
LABEL_397:
              v193 = v163;
              v163 = v193;
              if (v194)
              {
                getAdditionalSpillBufferBytes(void)::extra = 0;
                v163 = v193;
              }
            }
          }

          v174 = getAdditionalSpillBufferBytes(void)::extra + v173;
          v160 = v298;
          if (v298[7].i32[0] > v174)
          {
            v174 = v298[7].u32[0];
          }

          v298[7].i32[0] = v174;
          v175 = (v166 - *v166);
          v176 = *v175;
          if (v176 < 0x25)
          {
            goto LABEL_364;
          }

          if (v175[18] && *(v166 + v175[18]))
          {
            LOBYTE(v177) = 1;
            goto LABEL_365;
          }

          if (v176 < 0x27)
          {
            goto LABEL_364;
          }

          v178 = v175[19];
          if (v175[19] && *(v166 + v175[19]))
          {
LABEL_359:
            v298[26].i8[4] = 1;
            if (v178)
            {
              goto LABEL_367;
            }

            goto LABEL_368;
          }

          if (v176 < 0x29)
          {
            goto LABEL_364;
          }

          if (v175[20] && *(v166 + v175[20]))
          {
            goto LABEL_359;
          }

          if (v176 < 0x71)
          {
LABEL_364:
            LOBYTE(v177) = 0;
            goto LABEL_365;
          }

          v177 = v175[56];
          if (v175[56])
          {
            LOBYTE(v177) = *(v166 + v177) != 0;
          }

LABEL_365:
          v298[26].i8[4] |= v177;
          if (v176 >= 0x27)
          {
            v178 = v175[19];
            if (v175[19])
            {
LABEL_367:
              LOBYTE(v178) = *(v166 + v178) != 0;
            }

LABEL_368:
            v298[27].i8[1] |= v178;
            if (v176 < 0x5D)
            {
              if (v176 >= 0x3F)
              {
                goto LABEL_373;
              }
            }

            else
            {
              v179 = v175[46];
              if (v175[46])
              {
                LOBYTE(v179) = *(v166 + v179) != 0;
              }

              v298[26].i8[5] |= v179;
LABEL_373:
              v180 = v175[31];
              if (v175[31])
              {
                v181 = (v166 + v180 + *(v166 + v180));
                v180 = *v181;
                if (v180)
                {
                  v182 = v181 + 1;
                  while (1)
                  {
                    v184 = *v182++;
                    v183 = v184;
                    if (v184 < 0x36 && ((0x3F000000000777uLL >> v183) & 1) != 0)
                    {
                      break;
                    }

                    if (!--v180)
                    {
                      goto LABEL_380;
                    }
                  }

                  LOBYTE(v180) = 1;
                }
              }

LABEL_380:
              v298[26].i8[6] |= v180;
              if (v176 >= 0x4D)
              {
                v185 = v175[38];
                if (v185)
                {
                  LODWORD(v185) = *(v166 + v185);
                }

LABEL_384:
                if (v298[7].i32[1] > v185)
                {
                  LODWORD(v185) = v298[7].i32[1];
                }

                v298[7].i32[1] = v185;
                v186 = (v166 - *v166);
                if (*v186 < 0x53u)
                {
                  LODWORD(v187) = 0;
                }

                else
                {
                  v187 = v186[41];
                  if (v187)
                  {
                    LODWORD(v187) = *(v166 + v187);
                  }
                }

                if (v298[8].i32[0] > v187)
                {
                  LODWORD(v187) = v298[8].i32[0];
                }

                v298[8].i32[0] = v187;
                v188 = (v163 - *v163);
                if (*v188 >= 0xDu)
                {
                  v189 = v188[6];
                  if (v189)
                  {
                    v190 = (v163 + v189 + *(v163 + v189));
                    v191 = (v190 - *v190);
                    v161 = *v191 >= 0x29u && (v192 = v191[20]) != 0 && *(v190 + v192) != 0;
                    v298[26].i8[7] |= v161;
                  }
                }

LABEL_321:
                v159 = *v159;
                if (!v159)
                {
                  goto LABEL_399;
                }

                continue;
              }
            }
          }

          break;
        }

        LODWORD(v185) = 0;
        goto LABEL_384;
      }

LABEL_399:
      if (a5)
      {
        if (v160[65].i32[1])
        {
          v290 = 0;
          v284 = 0;
          v286 = 0;
          v195 = 0;
          v288 = 0;
          v196 = *(v297 + 176);
          if (v196)
          {
            goto LABEL_460;
          }
        }

        else
        {
          v290 = 0;
          v284 = 0;
          v286 = 0;
          v195 = 0;
          v288 = 0;
          v160[65].i32[1] = 1024;
          v196 = *(v297 + 176);
          if (v196)
          {
            goto LABEL_460;
          }
        }

LABEL_588:
        operator new();
      }

      v197 = (v297 + 784);
      if (*(v297 + 28))
      {
        v198 = *(v297 + 29) == 0;
      }

      else
      {
        v198 = 1;
      }

      v199 = 224;
      if (v198)
      {
        v199 = 784;
      }

      else
      {
        v197 = (v297 + 224);
      }

      v200 = *(v297 + v199);
      v201 = v197[1];
      if (v200)
      {
        v202 = v201 == 0;
      }

      else
      {
        v202 = 1;
      }

      if (v202)
      {
        v203 = 0;
      }

      else
      {
        v203 = (v200 + *v200);
      }

      v204 = (v203 - *v203);
      if (*v204 >= 5u && (v205 = v204[2]) != 0)
      {
        v206 = (v203 + v205 + *(v203 + v205));
      }

      else
      {
        v206 = 0;
      }

      v207 = (v206 - *v206);
      v208 = *v207;
      if (v208 < 0x67)
      {
        v288 = 0;
        v195 = 0;
        v284 = 0;
        v290 = 0;
        v211 = 0;
        goto LABEL_456;
      }

      v209 = v207[51];
      if (v207[51])
      {
        v290 = *(v206 + v209);
        if (v208 >= 0x6F)
        {
          goto LABEL_422;
        }

LABEL_434:
        v211 = 0;
        if (v208 < 0x69)
        {
          v212 = 0;
          v284 = 0;
          v195 = 0;
          v288 = 0;
          if (v207[51])
          {
            goto LABEL_438;
          }
        }

        else
        {
          v284 = 0;
          v210 = v207[52];
          if (!v207[52])
          {
            goto LABEL_436;
          }

LABEL_424:
          v195 = *(v206 + v210);
          if (v208 >= 0x6B)
          {
            goto LABEL_425;
          }

LABEL_437:
          v211 = 0;
          v288 = 0;
          v212 = 0;
          if (v207[51])
          {
LABEL_438:
            v213 = *(v206 + v209);
            goto LABEL_441;
          }
        }

LABEL_440:
        v213 = 0;
LABEL_441:
        *&v160[66] |= v213;
        if (v208 < 0x6F)
        {
          if (v208 >= 0x69)
          {
            goto LABEL_446;
          }

          v215 = 0;
        }

        else
        {
          v214 = v207[55];
          if (v207[55])
          {
            v214 = *(v206 + v214);
          }

          *&v160[70] |= v214;
LABEL_446:
          v215 = v207[52];
          if (v207[52])
          {
            v215 = *(v206 + v215);
          }

          if (v208 >= 0x6B && v207[53])
          {
            v216 = *(v206 + v207[53]);
            *&v160[67] |= v215;
            *&v160[68] |= v216;
            if (v212)
            {
LABEL_454:
              v217 = v207[54];
              if (v217)
              {
                v218 = *(v206 + v217);
LABEL_457:
                v286 = v211;
                *&v160[69] |= v218;
                v196 = *(v297 + 176);
                if (!v196)
                {
                  goto LABEL_588;
                }

LABEL_460:
                v219 = (v196 + 2);
                v220 = *(v196 + 39);
                if ((v220 & 0x8000000000000000) != 0)
                {
                  v221 = v196[2];
                  v220 = v196[3];
                }

                else
                {
                  v221 = v196 + 2;
                }

                if (v220 >= v220 - 3)
                {
                  v222 = v220 - 3;
                }

                else
                {
                  v222 = v220;
                }

                if (v222 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_596;
                }

                if (v222 >= 0x17)
                {
                  operator new();
                }

                *(&__src.__r_.__value_.__s + 23) = v222;
                if (v222)
                {
                  memmove(&__src, v221, v222);
                }

                __src.__r_.__value_.__s.__data_[v222] = 0;
                v223 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
                v224 = __src.__r_.__value_.__r.__words[0];
                if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v225 = &__src;
                }

                else
                {
                  v225 = __src.__r_.__value_.__r.__words[0];
                }

                if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(__src.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = __src.__r_.__value_.__l.__size_;
                }

                v227 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v225, size);
                v228 = v160[35];
                if (!*&v228)
                {
                  v160 = v298;
                  goto LABEL_524;
                }

                v229 = v227;
                v295 = v223;
                v230 = v224;
                v231 = vcnt_s8(v228);
                v231.i16[0] = vaddlv_u8(v231);
                if (v231.u32[0] > 1uLL)
                {
                  v232 = v227;
                  if (v227 >= *&v228)
                  {
                    v232 = v227 % *&v228;
                  }
                }

                else
                {
                  v232 = (*&v228 - 1) & v227;
                }

                v233 = *(*&v298[34] + 8 * v232);
                if (!v233 || (v234 = *v233) == 0)
                {
LABEL_522:
                  v224 = v230;
                  v160 = v298;
LABEL_523:
                  v223 = v295;
                  goto LABEL_524;
                }

                if (v231.u32[0] < 2uLL)
                {
                  v235 = *&v228 - 1;
                  while (1)
                  {
                    v240 = v234[1];
                    if (v240 == v229)
                    {
                      v241 = *(v234 + 39);
                      v242 = v241;
                      if (v241 < 0)
                      {
                        v241 = v234[3];
                      }

                      if (v241 == size)
                      {
                        v243 = v242 >= 0 ? (v234 + 2) : v234[2];
                        if (!memcmp(v243, v225, size))
                        {
                          goto LABEL_511;
                        }
                      }
                    }

                    else if ((v240 & v235) != v232)
                    {
                      goto LABEL_522;
                    }

                    v234 = *v234;
                    if (!v234)
                    {
                      goto LABEL_522;
                    }
                  }
                }

                while (1)
                {
                  v236 = v234[1];
                  if (v236 == v229)
                  {
                    v237 = *(v234 + 39);
                    v238 = v237;
                    if (v237 < 0)
                    {
                      v237 = v234[3];
                    }

                    if (v237 == size)
                    {
                      v239 = v238 >= 0 ? (v234 + 2) : v234[2];
                      if (!memcmp(v239, v225, size))
                      {
LABEL_511:
                        if (*(v196 + 39) < 0)
                        {
                          v219 = *v219;
                        }

                        v224 = v230;
                        v244 = AGCDeserializedReply::getBackendMetadataFBPtr(v297, v219);
                        v160 = v298;
                        v245 = (v244 - *v244);
                        if (*v245 < 5u)
                        {
                          goto LABEL_523;
                        }

                        v246 = v245[2];
                        v223 = v295;
                        if (!v246)
                        {
                          goto LABEL_524;
                        }

                        v247 = (v244 + v246 + *(v244 + v246));
                        v248 = (v247 - *v247);
                        v249 = *v248;
                        if (v249 < 0x67)
                        {
                          goto LABEL_533;
                        }

                        v250 = v248[51];
                        if (v248[51])
                        {
                          v250 = *(v247 + v250);
                        }

                        v234[11] = (v234[11] | v250);
                        v251 = v249 > 0x6E;
                        if (v249 < 0x6F)
                        {
                          if (v249 >= 0x69)
                          {
                            goto LABEL_529;
                          }

LABEL_533:
                          v255 = 0;
                          v253 = 0;
                          v251 = 0;
                          v256 = 0;
                          v254 = 0;
                          goto LABEL_539;
                        }

                        v252 = v248[55];
                        if (v248[55])
                        {
                          v252 = *(v247 + v252);
                        }

                        v234[15] = (v234[15] | v252);
LABEL_529:
                        if (v248[52])
                        {
                          v253 = *(v247 + v248[52]);
                          if (v249 >= 0x6B)
                          {
                            goto LABEL_531;
                          }

LABEL_535:
                          v255 = 0;
                          v254 = 0;
                        }

                        else
                        {
                          v253 = 0;
                          if (v249 < 0x6B)
                          {
                            goto LABEL_535;
                          }

LABEL_531:
                          if (v248[53])
                          {
                            v254 = *(v247 + v248[53]);
                          }

                          else
                          {
                            v254 = 0;
                          }

                          v255 = 1;
                        }

                        v256 = 1;
LABEL_539:
                        v257 = v234[13] | v254;
                        v234[12] = (v234[12] | v253);
                        v234[13] = v257;
                        if (v249 < 0x6D)
                        {
                          if (v249 >= 0x67)
                          {
                            goto LABEL_544;
                          }

                          if (v249 >= 0x49)
                          {
                            goto LABEL_566;
                          }

                          goto LABEL_524;
                        }

                        v258 = v248[54];
                        if (v248[54])
                        {
                          v258 = *(v247 + v258);
                        }

                        v234[14] = (v234[14] | v258);
LABEL_544:
                        v259 = v248[51];
                        if (v248[51])
                        {
                          v259 = *(v247 + v259);
                        }

                        if (!v251)
                        {
                          if (v256)
                          {
                            goto LABEL_551;
                          }

                          v261 = 0;
                          v262 = 0;
                          if (v249 >= 0x6D)
                          {
                            goto LABEL_559;
                          }

LABEL_564:
                          v263 = 0;
                          goto LABEL_565;
                        }

                        v260 = v248[55];
                        if (v248[55])
                        {
                          v260 = *(v247 + v260);
                        }

                        v284 |= v260;
LABEL_551:
                        v261 = v248[52];
                        if (v248[52])
                        {
                          v261 = *(v247 + v261);
                        }

                        if (!v255)
                        {
                          v262 = 0;
LABEL_558:
                          if (v249 < 0x6D)
                          {
                            goto LABEL_564;
                          }

                          goto LABEL_559;
                        }

                        v262 = v248[53];
                        if (!v248[53])
                        {
                          goto LABEL_558;
                        }

                        v262 = *(v247 + v262);
                        if (v249 < 0x6D)
                        {
                          goto LABEL_564;
                        }

LABEL_559:
                        v263 = v248[54];
                        if (v248[54])
                        {
                          v263 = *(v247 + v263);
                        }

LABEL_565:
                        v290 |= v259;
                        v195 |= v261;
                        v288 |= v262;
                        v286 |= v263;
LABEL_566:
                        if (!v248[36] || !*(v247 + v248[36]))
                        {
                          goto LABEL_524;
                        }

                        if (v249 < 0x67)
                        {
                          goto LABEL_586;
                        }

                        v264 = v248[51];
                        if (v248[51])
                        {
                          v264 = *(v247 + v264);
                        }

                        *&v298[66] |= v264;
                        if (!v251)
                        {
                          if (v256)
                          {
                            goto LABEL_576;
                          }

                          v266 = 0;
LABEL_582:
                          v267 = 0;
                          goto LABEL_583;
                        }

                        v265 = v248[55];
                        if (v248[55])
                        {
                          v265 = *(v247 + v265);
                        }

                        *&v298[70] |= v265;
LABEL_576:
                        v266 = v248[52];
                        if (v248[52])
                        {
                          v266 = *(v247 + v266);
                        }

                        if (!v255)
                        {
                          goto LABEL_582;
                        }

                        v267 = v248[53];
                        if (v248[53])
                        {
                          v267 = *(v247 + v267);
                        }

LABEL_583:
                        *&v298[67] |= v266;
                        *&v298[68] |= v267;
                        if (v249 >= 0x6D)
                        {
                          v268 = v248[54];
                          if (v268)
                          {
                            v269 = *(v247 + v268);
                            goto LABEL_587;
                          }
                        }

LABEL_586:
                        v269 = 0;
LABEL_587:
                        *&v298[69] |= v269;
LABEL_524:
                        if (v223 < 0)
                        {
                          operator delete(v224);
                        }

                        v196 = *v196;
                        if (!v196)
                        {
                          goto LABEL_588;
                        }

                        goto LABEL_460;
                      }
                    }
                  }

                  else
                  {
                    if (v236 >= *&v228)
                    {
                      v236 %= *&v228;
                    }

                    if (v236 != v232)
                    {
                      goto LABEL_522;
                    }
                  }

                  v234 = *v234;
                  if (!v234)
                  {
                    goto LABEL_522;
                  }
                }
              }
            }

LABEL_456:
            v218 = 0;
            goto LABEL_457;
          }
        }

        *&v160[67] |= v215;
        if (v212)
        {
          goto LABEL_454;
        }

        goto LABEL_456;
      }

      v290 = 0;
      if (v208 < 0x6F)
      {
        goto LABEL_434;
      }

LABEL_422:
      if (v207[55])
      {
        v284 = *(v206 + v207[55]);
        v210 = v207[52];
        if (!v207[52])
        {
          goto LABEL_436;
        }

        goto LABEL_424;
      }

      v284 = 0;
      v210 = v207[52];
      if (v207[52])
      {
        goto LABEL_424;
      }

LABEL_436:
      v195 = 0;
      if (v208 < 0x6B)
      {
        goto LABEL_437;
      }

LABEL_425:
      if (v207[53])
      {
        v288 = *(v206 + v207[53]);
        if (v208 >= 0x6D)
        {
          goto LABEL_427;
        }
      }

      else
      {
        v288 = 0;
        if (v208 >= 0x6D)
        {
LABEL_427:
          if (v207[54])
          {
            v211 = *(v206 + v207[54]);
            v212 = 1;
            if (v207[51])
            {
              goto LABEL_438;
            }
          }

          else
          {
            v211 = 0;
            v212 = 1;
            if (v207[51])
            {
              goto LABEL_438;
            }
          }

          goto LABEL_440;
        }
      }

      v211 = 0;
      v212 = 0;
      if (v207[51])
      {
        goto LABEL_438;
      }

      goto LABEL_440;
    }
  }
}

void sub_29CD4B2D4(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AGCDeserializedReply::getBackendMetadataFBPtr(AGCDeserializedReply *this, const char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    v18 = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    *(&__dst + v5) = 0;
    v7 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(this + 174, &__dst);
    if (v18 < 0)
    {
      operator delete(__dst);
    }

    v8 = this + 24;
    if (*(this + 3))
    {
      if (!*(this + 4))
      {
        v8 = this + 584;
      }
    }

    else
    {
      v8 = this + 584;
    }

    v9 = *v8;
    v10 = (*v8 + *(v7 + 10));
    v11 = this + 224;
    if (*(this + 28))
    {
      if (!*(this + 29))
      {
        v11 = this + 784;
      }
    }

    else
    {
      v11 = this + 784;
    }

    v12 = *(v11 + 1);
    if (v9)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      return v10 + *v10;
    }

    return 0;
  }

  if (*(this + 28))
  {
    if (*(this + 29))
    {
      v6 = this + 224;
    }

    else
    {
      v6 = this + 784;
    }
  }

  else
  {
    v6 = this + 784;
  }

  v10 = *v6;
  v15 = *(v6 + 1);
  if (v10)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    return 0;
  }

  return v10 + *v10;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>(void *a1, uint64_t a2)
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
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_41;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 39);
        v15 = v14;
        if (v14 < 0)
        {
          v14 = v12[3];
        }

        if (v14 == v5)
        {
          v16 = v15 >= 0 ? (v12 + 2) : v12[2];
          result = memcmp(v16, v4, v5);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_41;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v18 = v12[1];
    if (v18 == v7)
    {
      break;
    }

    if (v18 >= *&v8)
    {
      v18 %= *&v8;
    }

    if (v18 != v10)
    {
      goto LABEL_41;
    }

LABEL_29:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v19 = *(v12 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v12[3];
  }

  if (v19 != v5)
  {
    goto LABEL_29;
  }

  v21 = v20 >= 0 ? (v12 + 2) : v12[2];
  result = memcmp(v21, v4, v5);
  if (result)
  {
    goto LABEL_29;
  }

  return result;
}

void sub_29CD4BA7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::initialize(AGCDeserializedReply const&,AGX::HAL300::Device &,char const*,BOOL)::{lambda(AGX::HAL300::Encoders,std::string,std::function<void ()(AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo &,unsigned int)>)#1}::operator()<AGX::ArgumentMask<64ul>>(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    do
    {
      v8 = __clz(__rbit64(v6));
      std::to_string(&__p, v8);
      v9 = *(a3 + 23);
      if (v9 >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      if (v9 >= 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = *(a3 + 8);
      }

      v12 = std::string::insert(&__p, 0, v10, v11);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v26.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v14 = *(a1 + 32);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v26;
      }

      v19 = 0;
      v20[0] = 0;
      *(v20 + 5) = 0;
      v20[2] = v14;
      v21 = 5;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>((a1 + 272), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = &v26;
      v15 = std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 272), &v26);
      LODWORD(__p.__r_.__value_.__l.__data_) = v8;
      v16 = *(a4 + 24);
      if (!v16)
      {
        v17 = std::__throw_bad_function_call[abi:nn200100]();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        _Unwind_Resume(v17);
      }

      (*(*v16 + 48))(*(a4 + 24), v15 + 5, &__p);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v6 &= ~(1 << v8);
    }

    while (v6);
  }
}

uint64_t std::function<void ()(AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo &,unsigned int)>::~function(uint64_t a1)
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

void *std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    operator new();
  }

  return result;
}

uint64_t std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::__emplace_back_slow_path<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 32) = *(a2 + 32);
  v7 = 40 * v2 + 40;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      *(v12 + 32) = *(v11 + 32);
      v11 += 40;
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 40;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::insert(int8x8_t *a1, char *__s, int a3)
{
  v5 = strlen(__s);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_104:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v53) = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  *(&__dst + v6) = 0;
  v7 = SHIBYTE(v53);
  v8 = __dst;
  if (v53 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v53 >= 0)
  {
    v10 = HIBYTE(v53);
  }

  else
  {
    v10 = *(&__dst + 1);
  }

  v11 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](p_dst, v10);
  v12 = a1[2];
  if (v12)
  {
    v13 = v11;
    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = v11;
      if (v11 >= *&v12)
      {
        v15 = v11 % *&v12;
      }
    }

    else
    {
      v15 = (*&v12 - 1) & v11;
    }

    v17 = *(*&a1[1] + 8 * v15);
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        if (v14.u32[0] < 2uLL)
        {
          v19 = *&v12 - 1;
          while (1)
          {
            v20 = v18[1];
            if (v20 == v13)
            {
              v21 = *(v18 + 39);
              v22 = v21;
              if (v21 < 0)
              {
                v21 = v18[3];
              }

              if (v21 == v10)
              {
                v23 = v22 >= 0 ? (v18 + 2) : v18[2];
                if (!memcmp(v23, p_dst, v10))
                {
                  goto LABEL_34;
                }
              }
            }

            else if ((v20 & v19) != v15)
            {
              goto LABEL_48;
            }

            v18 = *v18;
            if (!v18)
            {
              goto LABEL_48;
            }
          }
        }

        do
        {
          v24 = v18[1];
          if (v24 == v13)
          {
            v25 = *(v18 + 39);
            v26 = v25;
            if (v25 < 0)
            {
              v25 = v18[3];
            }

            if (v25 == v10)
            {
              v27 = v26 >= 0 ? (v18 + 2) : v18[2];
              if (!memcmp(v27, p_dst, v10))
              {
LABEL_34:
                v16 = 0;
                goto LABEL_49;
              }
            }
          }

          else
          {
            if (v24 >= *&v12)
            {
              v24 %= *&v12;
            }

            if (v24 != v15)
            {
              break;
            }
          }

          v18 = *v18;
        }

        while (v18);
      }
    }

LABEL_48:
    v16 = 1;
LABEL_49:
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v16 = 1;
    if ((v7 & 0x80000000) == 0)
    {
LABEL_50:
      if (!v16)
      {
        return;
      }

      goto LABEL_53;
    }
  }

  operator delete(v8);
  if (!v16)
  {
    return;
  }

LABEL_53:
  a1->i32[0] = (a3 + a1->i32[0] - 1) & -a3;
  v28 = strlen(__s);
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_104;
  }

  v29 = v28;
  if (v28 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v51) = v28;
  if (v28)
  {
    memcpy(&v50, __s, v28);
  }

  *(&v50 + v29) = 0;
  v53 = v51;
  __dst = v50;
  v54 = a1->i32[0];
  v30 = SHIBYTE(v51);
  __sa = v50;
  if (v51 >= 0)
  {
    v31 = &__dst;
  }

  else
  {
    v31 = v50;
  }

  if (v51 >= 0)
  {
    v32 = HIBYTE(v51);
  }

  else
  {
    v32 = *(&v50 + 1);
  }

  v33 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v31, v32);
  v34 = v33;
  v35 = a1[2];
  if (!*&v35)
  {
    goto LABEL_99;
  }

  v36 = vcnt_s8(v35);
  v36.i16[0] = vaddlv_u8(v36);
  if (v36.u32[0] > 1uLL)
  {
    v37 = v33;
    if (v33 >= *&v35)
    {
      v37 = v33 % *&v35;
    }
  }

  else
  {
    v37 = (*&v35 - 1) & v33;
  }

  v38 = *(*&a1[1] + 8 * v37);
  if (!v38 || (v39 = *v38) == 0)
  {
LABEL_99:
    operator new();
  }

  if (v36.u32[0] < 2uLL)
  {
    while (1)
    {
      v40 = v39[1];
      if (v40 == v34)
      {
        v41 = *(v39 + 39);
        v42 = v41;
        if (v41 < 0)
        {
          v41 = v39[3];
        }

        if (v41 == v32)
        {
          v43 = v42 >= 0 ? (v39 + 2) : v39[2];
          if (!memcmp(v43, v31, v32))
          {
            goto LABEL_100;
          }
        }
      }

      else if ((v40 & (*&v35 - 1)) != v37)
      {
        goto LABEL_99;
      }

      v39 = *v39;
      if (!v39)
      {
        goto LABEL_99;
      }
    }
  }

  while (1)
  {
    v44 = v39[1];
    if (v44 == v34)
    {
      break;
    }

    if (v44 >= *&v35)
    {
      v44 %= *&v35;
    }

    if (v44 != v37)
    {
      goto LABEL_99;
    }

LABEL_87:
    v39 = *v39;
    if (!v39)
    {
      goto LABEL_99;
    }
  }

  v45 = *(v39 + 39);
  v46 = v45;
  if (v45 < 0)
  {
    v45 = v39[3];
  }

  if (v45 != v32)
  {
    goto LABEL_87;
  }

  v47 = v46 >= 0 ? (v39 + 2) : v39[2];
  if (memcmp(v47, v31, v32))
  {
    goto LABEL_87;
  }

LABEL_100:
  if (v30 < 0)
  {
    operator delete(__sa);
  }

  a1->i32[0] += a3;
}

void sub_29CD4C67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](&a23);
  if (a12 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(AGXIotoInstruction_LDIMM *this, const unsigned __int8 *a2)
{
  *(this + 17) = -1;
  v2 = *a2;
  if ((v2 & 0xFFFF800F) == 0xC)
  {
    *(this + 6) = 0;
    *(this + 2) = 0;
    *this = 0u;
    *(this + 28) = 0x300000069;
    *(this + 18) = (v2 >> 3) & 0x1E;
    *(this + 38) = 0;
    *(this + 21) = 0;
    *(this + 44) = xmmword_29D2F1B60;
    *(this + 15) = 0;
    *(this + 16) = v2 >> 8;
    v3 = 1;
    goto LABEL_5;
  }

  if ((v2 & 0xFFFF800F) == 4)
  {
    v3 = 0;
    *this = 0u;
    *(this + 6) = 0;
    *(this + 2) = 0;
    *(this + 28) = 0x300000069;
    *(this + 18) = (v2 >> 3) & 0x1E;
    *(this + 38) = 0;
    *(this + 21) = 0;
    *(this + 44) = xmmword_29D2F1B60;
    *(this + 15) = 0;
    *(this + 16) = v2 >> 8;
LABEL_5:
    *(this + 17) = v3;
    return;
  }

  v4 = *(a2 + 1) & 3;
  if (v4 == 3)
  {
    if ((v2 & 0xFFFF8007) == 0x8004)
    {
      v9 = this;
      AGXIotoInstruction_LDIMM_3::AGXIotoInstruction_LDIMM_3(&v12, a2);
      this = v9;
      v10 = v15;
      *(v9 + 2) = v14;
      *(v9 + 3) = v10;
      *(v9 + 16) = v16;
      v11 = v13;
      *v9 = v12;
      *(v9 + 1) = v11;
      v3 = 3;
      goto LABEL_5;
    }
  }

  else if (v4 == 2 && (v2 & 0xFFFF8007) == 32772)
  {
    v6 = this;
    AGXIotoInstruction_LDIMM_2::AGXIotoInstruction_LDIMM_2(&v12, a2);
    this = v6;
    v7 = v15;
    *(v6 + 2) = v14;
    *(v6 + 3) = v7;
    *(v6 + 16) = v16;
    v8 = v13;
    *v6 = v12;
    *(v6 + 1) = v8;
    v3 = 2;
    goto LABEL_5;
  }
}

void AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::initialize(AGCDeserializedReply const&,AGX::HAL300::Device &,char const*,BOOL)::{lambda(AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::MaxFunctionRequirements &,AGCCodeTranslator::VisibleFunction const*)#1}::operator()(uint64_t a1, _DWORD *a2, int *a3)
{
  v5 = *(a1 + 8);
  v6 = (a3 - *a3);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = a3 + v7 + *(a3 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(v8 + 4);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(&__dst, v8 + 4, v9);
  }

  __dst.__r_.__value_.__s.__data_[v10] = 0;
  v11 = std::string::append(&__dst, "@md");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v47 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v47 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  BackendMetadataFBPtr = AGCDeserializedReply::getBackendMetadataFBPtr(*a1, v13);
  v15 = (BackendMetadataFBPtr - *BackendMetadataFBPtr);
  v16 = *v15;
  if (v16 < 0xD)
  {
    v17 = 0;
    v18 = 0;
    if (v16 >= 5)
    {
      v18 = v15[2];
      if (v15[2])
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (v15[6])
    {
      v17 = (BackendMetadataFBPtr + v15[6] + *(BackendMetadataFBPtr + v15[6]));
      v18 = v15[2];
      if (!v15[2])
      {
        goto LABEL_23;
      }

LABEL_22:
      v18 = (v18 + BackendMetadataFBPtr + *(v18 + BackendMetadataFBPtr));
      goto LABEL_23;
    }

    v17 = 0;
    v18 = v15[2];
    if (v15[2])
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v19 = (v17 - *v17);
  if (*v19 < 5u)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    v20 = v19[2];
    if (v20)
    {
      LODWORD(v20) = *(v17 + v20);
    }
  }

  if (*a2 > v20)
  {
    LODWORD(v20) = *a2;
  }

  *a2 = v20;
  v21 = (v18 - *v18);
  if (*v21 < 0x51u)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v21[40];
    if (v22)
    {
      LODWORD(v22) = *(v18 + v22);
    }
  }

  if (a2[1] > v22)
  {
    LODWORD(v22) = a2[1];
  }

  a2[1] = v22;
  v23 = (v17 - *v17);
  if (*v23 < 7u)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v23[3];
    if (v24)
    {
      LODWORD(v24) = *(v17 + v24);
    }
  }

  if (a2[2] > v24)
  {
    LODWORD(v24) = a2[2];
  }

  a2[2] = v24;
  v25 = (v17 - *v17);
  v26 = *v25;
  if (v26 < 0xB)
  {
    goto LABEL_54;
  }

  if (v25[5] && *(v17 + v25[5]))
  {
    goto LABEL_50;
  }

  if (v26 < 0xD)
  {
    goto LABEL_54;
  }

  if (v25[6] && *(v17 + v25[6]))
  {
    goto LABEL_50;
  }

  if (v26 < 0xF)
  {
LABEL_54:
    LOBYTE(v28) = 0;
    goto LABEL_55;
  }

  if (v25[7] && *(v17 + v25[7]))
  {
LABEL_50:
    v27 = 1;
    goto LABEL_51;
  }

  if (v26 < 0x3F)
  {
    v27 = 0;
LABEL_51:
    *(v5 + 212) |= v27;
    if (v26 >= 0x29)
    {
      v28 = v25[20];
      if (!v25[20])
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v44 = v25[31];
  if (v25[31])
  {
    LOBYTE(v44) = *(v17 + v44) != 0;
  }

  *(v5 + 212) |= v44;
  v28 = v25[20];
  if (v25[20])
  {
LABEL_53:
    LOBYTE(v28) = *(v17 + v28) != 0;
  }

LABEL_55:
  *(v5 + 215) |= v28;
  v29 = (v18 - *v18);
  v30 = *v29;
  if (v30 < 0x3F)
  {
    LOBYTE(v31) = 0;
  }

  else
  {
    v31 = v29[31];
    if (v29[31])
    {
      v32 = (v18 + v31 + *(v18 + v31));
      v31 = *v32;
      if (v31)
      {
        v33 = v32 + 1;
        while (1)
        {
          v35 = *v33++;
          v34 = v35;
          if (v35 < 0x36 && ((0x3F000000000777uLL >> v34) & 1) != 0)
          {
            break;
          }

          if (!--v31)
          {
            goto LABEL_64;
          }
        }

        LOBYTE(v31) = 1;
      }
    }
  }

LABEL_64:
  *(v5 + 214) |= v31;
  if (v26 < 0xD)
  {
    goto LABEL_70;
  }

  v36 = v25[6];
  if (v25[6])
  {
    LOBYTE(v36) = *(v17 + v36) != 0;
  }

  *(v5 + 217) |= v36;
  if (v26 >= 0x2D && (v37 = v25[22]) != 0)
  {
    v38 = *(v17 + v37) != 0;
  }

  else
  {
LABEL_70:
    v38 = 0;
  }

  *(v5 + 213) |= v38;
  if (v30 < 0x67)
  {
    goto LABEL_84;
  }

  v39 = v29[51];
  if (v29[51])
  {
    v39 = *(v18 + v39);
  }

  *(v5 + 528) |= v39;
  if (v30 < 0x6F)
  {
    if (v30 >= 0x69)
    {
      goto LABEL_79;
    }

LABEL_84:
    v41 = 0;
LABEL_85:
    v42 = 0;
    goto LABEL_86;
  }

  v40 = v29[55];
  if (v29[55])
  {
    v40 = *(v18 + v40);
  }

  *(v5 + 560) |= v40;
LABEL_79:
  v41 = v29[52];
  if (v29[52])
  {
    v41 = *(v18 + v41);
  }

  if (v30 < 0x6B)
  {
    goto LABEL_85;
  }

  v42 = v29[53];
  if (v29[53])
  {
    v42 = *(v18 + v42);
  }

LABEL_86:
  *(v5 + 536) |= v41;
  *(v5 + 544) |= v42;
  if (v30 >= 0x6D && v29[54])
  {
    v43 = *(v18 + v29[54]);
  }

  else
  {
    v43 = 0;
  }

  *(v5 + 552) |= v43;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29CD4CCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
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
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_41;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 39);
        v15 = v14;
        if (v14 < 0)
        {
          v14 = v12[3];
        }

        if (v14 == v5)
        {
          v16 = v15 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v16, v4, v5))
          {
            return v12;
          }
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_41;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v17 = v12[1];
    if (v17 == v7)
    {
      break;
    }

    if (v17 >= *&v8)
    {
      v17 %= *&v8;
    }

    if (v17 != v10)
    {
      goto LABEL_41;
    }

LABEL_29:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v18 = *(v12 + 39);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = v12[3];
  }

  if (v18 != v5)
  {
    goto LABEL_29;
  }

  v20 = v19 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v20, v4, v5))
  {
    goto LABEL_29;
  }

  return v12;
}

void sub_29CD4D230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

unsigned __int8 *AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::applyInternalRelocations(unsigned __int8 *result, int *a2, int *a3, int *a4, int *a5, int *a6)
{
  v9 = result;
  if (*(result + 10) == -1)
  {
    if (((*(result + 56) + 7) & 0xFFFFFFF8) != 0)
    {
      add_explicit = atomic_fetch_add_explicit(AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::getNextGOTOffset::next_got_offset, (*(result + 56) + 7) & 0xFFFFFFF8, memory_order_relaxed);
    }

    else
    {
      add_explicit = 152;
    }

    *(result + 10) = add_explicit;
  }

  v11 = *(result + 47);
  v12 = *(result + 48);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      v23 = *v11;
      if (*v11 < 0xCu || v23 - 14 < 2)
      {
        v24 = *(v11 + 32);
        v25 = (*(a2 + 1) + v24);
        if (v25 != v13)
        {
          v13 = (*(a2 + 1) + v24);
LABEL_16:
          switch(v23)
          {
            case 0u:
            case 1u:
              v26 = (v11 + 8);
              if (*(v11 + 31) < 0)
              {
                v26 = *v26;
              }

              goto LABEL_35;
            case 2u:
              v32 = (v11 + 8);
              if (*(v11 + 31) < 0)
              {
                v32 = *v32;
              }

              v33 = *(v9 + 10);
              Offset = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::getOffset((v9 + 224), v32);
              v54 = -1;
              v16 = (Offset + v33) >> 1;
              v47 = 0;
              v49 = 0;
              v35 = 0u;
              goto LABEL_36;
            case 3u:
              v26 = (v11 + 8);
              if (*(v11 + 31) < 0)
              {
                v26 = *v26;
              }

LABEL_35:
              v40 = *(v9 + 10);
              v41 = AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::getOffset((v9 + 224), v26);
              v54 = -1;
              v16 = (v41 + v40) >> 2;
              v47 = 0;
              v49 = 0;
              v35 = 0u;
LABEL_36:
              v48 = v35;
              v50 = 0x300000069;
              v51 = 0;
              v52 = xmmword_29D2F1B60;
              v53 = 0;
              v15 = &v47;
              goto LABEL_10;
            case 4u:
              v42 = *a3;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v16 = HIDWORD(v53) + v42;
              v54 = -1;
              v47 = 0;
              v17 = 0u;
              goto LABEL_9;
            case 5u:
              v36 = *a3;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v29 = (HIDWORD(v53) + v36) >> 32;
              v54 = -1;
              v47 = 0;
              v30 = 0u;
              goto LABEL_39;
            case 6u:
              v38 = *a4;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v16 = HIDWORD(v53) + v38;
              v54 = -1;
              v47 = 0;
              v17 = 0u;
              goto LABEL_9;
            case 7u:
              v39 = *a4;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v29 = (HIDWORD(v53) + v39) >> 32;
              v54 = -1;
              v47 = 0;
              v30 = 0u;
              goto LABEL_39;
            case 8u:
              v44 = *a5;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v16 = HIDWORD(v53) + v44;
              v54 = -1;
              v47 = 0;
              v17 = 0u;
              goto LABEL_9;
            case 9u:
              v43 = *a5;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v29 = (HIDWORD(v53) + v43) >> 32;
              v54 = -1;
              v47 = 0;
              v30 = 0u;
              goto LABEL_39;
            case 0xAu:
              v14 = *a2;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v16 = HIDWORD(v53) + v14;
              v54 = -1;
              v47 = 0;
              v17 = 0u;
              goto LABEL_9;
            case 0xBu:
              v37 = a2[1];
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v16 = HIDWORD(v53) + v37;
              v54 = -1;
              v47 = 0;
              v17 = 0u;
              goto LABEL_9;
            case 0xEu:
              v31 = *a6;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v16 = HIDWORD(v53) + v31;
              v54 = -1;
              v47 = 0;
              v17 = 0u;
LABEL_9:
              v48 = v17;
              v49 = 0;
              v50 = 0x300000069;
              v51 = 0;
              v52 = xmmword_29D2F1B60;
              v53 = 0;
LABEL_10:
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(v15, v25);
              HIDWORD(v53) = v16;
              goto LABEL_11;
            case 0xFu:
              v27 = *a6;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v47, v25);
              v29 = (HIDWORD(v53) + v27) >> 32;
              v54 = -1;
              v47 = 0;
              v30 = 0u;
LABEL_39:
              v48 = v30;
              v49 = 0;
              v50 = 0x300000069;
              v51 = 0;
              v52 = xmmword_29D2F1B60;
              v53 = 0;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(v28, v25);
              HIDWORD(v53) = v29;
LABEL_11:
              result = AGXIotoInstruction_LDIMM::emit(v18, v25, v19, v20, v21, v22);
              break;
            case 0x13u:
              *(*(a5 + 1) + 8 * (v24 >> 3)) += *a2;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        v24 = *(v11 + 32);
        v25 = (*(a2 + 1) + v24);
        if (v23 <= 0x13)
        {
          goto LABEL_16;
        }
      }

      v11 += 40;
    }

    while (v11 != v12);
  }

  return result;
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::getOffset(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v9 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  v6 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 8), &__dst);
  if (v9 < 0)
  {
    operator delete(__dst);
  }

  return *(v6 + 10);
}

unsigned __int8 *AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::revertInternalRelocations(unsigned __int8 *result, _DWORD *a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, _DWORD *a7, void *a8, _DWORD *a9)
{
  if (result != a2)
  {
    v14 = result;
    v15 = 0;
    do
    {
      v23 = *v14;
      if (*v14 < 0xC || (v23 - 14) < 2)
      {
        v24 = v14[8];
        v25 = (*(a3 + 8) + v24);
        if (v25 == v15)
        {
          goto LABEL_5;
        }

        v15 = (*(a3 + 8) + v24);
        if (v23 > 8)
        {
LABEL_9:
          if (v23 > 13)
          {
            if (v23 == 14)
            {
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
              LODWORD(v17) = HIDWORD(v35) - *a9;
              v36 = -1;
              v29 = 0;
              v26 = 0u;
            }

            else
            {
              if (v23 != 15)
              {
                if (v23 == 19)
                {
                  *(*(a4 + 8) + 8 * (v24 >> 3)) -= *a5;
                }

                goto LABEL_5;
              }

              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
              v17 = (HIDWORD(v35) - *a9) >> 32;
              v36 = -1;
              v29 = 0;
              v26 = 0u;
            }
          }

          else
          {
            switch(v23)
            {
              case 9:
                AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
                v17 = (HIDWORD(v35) - *a8) >> 32;
                v36 = -1;
                v29 = 0;
                v26 = 0u;
                break;
              case 10:
                AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
                LODWORD(v17) = HIDWORD(v35) - *a5;
                v36 = -1;
                v29 = 0;
                v26 = 0u;
                break;
              case 11:
                AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
                v17 = ((HIDWORD(v35) << 32) - *a5) >> 32;
                v36 = -1;
                v29 = 0;
                v26 = 0u;
                break;
              default:
                goto LABEL_5;
            }
          }

          goto LABEL_4;
        }
      }

      else
      {
        v24 = v14[8];
        v25 = (*(a3 + 8) + v24);
        if (v23 > 8)
        {
          goto LABEL_9;
        }
      }

      if (v23 <= 5)
      {
        if (v23 == 4)
        {
          AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
          LODWORD(v17) = HIDWORD(v35) - *a6;
          v36 = -1;
          v29 = 0;
          v26 = 0u;
        }

        else
        {
          if (v23 != 5)
          {
            goto LABEL_5;
          }

          AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
          v17 = (HIDWORD(v35) - *a6) >> 32;
          v36 = -1;
          v29 = 0;
          v26 = 0u;
        }
      }

      else if (v23 == 6)
      {
        AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
        LODWORD(v17) = HIDWORD(v35) - *a7;
        v36 = -1;
        v29 = 0;
        v26 = 0u;
      }

      else
      {
        if (v23 == 7)
        {
          AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
          v17 = (HIDWORD(v35) - *a7) >> 32;
        }

        else
        {
          AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(&v29, v25);
          LODWORD(v17) = HIDWORD(v35) - *a8;
        }

        v36 = -1;
        v29 = 0;
        v26 = 0u;
      }

LABEL_4:
      v30 = v26;
      v31 = 0;
      v32 = 0x300000069;
      v33 = 0;
      v34 = xmmword_29D2F1B60;
      v35 = 0;
      AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(v16, v25);
      HIDWORD(v35) = v17;
      result = AGXIotoInstruction_LDIMM::emit(v18, v25, v19, v20, v21, v22);
LABEL_5:
      v14 += 10;
    }

    while (v14 != a2);
  }

  return result;
}

void AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::applySPIRelocation(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  v8 = strlen(__s);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_24:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memcpy(&__dst, __s, v8);
  }

  *(&__dst + v9) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 312), &__dst);
  v11 = v10;
  if (v16 < 0)
  {
    operator delete(__dst);
    if (!v11)
    {
      goto LABEL_11;
    }

LABEL_20:
    v14 = 32;
    if (*(v11 + 18) == 1)
    {
      v14 = 8;
    }

    *(v11[5] + *(a4 + v14)) = a3;
    return;
  }

  if (v10)
  {
    goto LABEL_20;
  }

LABEL_11:
  v12 = strlen(__s);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_24;
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    operator new();
  }

  v16 = v12;
  if (v12)
  {
    memcpy(&__dst, __s, v12);
  }

  *(&__dst + v13) = 0;
  v11 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 272), &__dst);
  if (v16 < 0)
  {
    operator delete(__dst);
  }

  if (v11)
  {
    goto LABEL_20;
  }
}

void AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::applySPIConstantRelocation(uint64_t a1, char *__s, NSObject *a3, uint64_t a4)
{
  v8 = strlen(__s);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_29;
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v22 = v8;
  if (v8)
  {
    memcpy(&__p, __s, v8);
  }

  *(&__p + v9) = 0;
  v10 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 312), &__p);
  v11 = v10;
  if (v22 < 0)
  {
    operator delete(__p);
    if (v11)
    {
LABEL_9:
      v12 = v11[5];
      v13 = *(v11 + 18);
      if (v13 != 1)
      {
        if (v13 == 3)
        {
LABEL_11:
          v14 = 32;
LABEL_26:
          v19 = v12 + *(a4 + v14);
          goto LABEL_27;
        }

LABEL_24:
        v19 = 0;
LABEL_27:
        __p = 0;
        size_ptr = 0;
        v20 = dispatch_data_create_map(a3, &__p, &size_ptr);
        memcpy(v19, __p, size_ptr);
        dispatch_release(v20);
        return;
      }

      goto LABEL_25;
    }
  }

  else if (v10)
  {
    goto LABEL_9;
  }

  v15 = strlen(__s);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_29:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  v22 = v15;
  if (v15)
  {
    memcpy(&__p, __s, v15);
  }

  *(&__p + v16) = 0;
  v17 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 272), &__p);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    v12 = v17[5];
    v18 = *(v17 + 18);
    if (v18 != 1)
    {
      if (v18 == 3)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_25:
    v14 = 8;
    goto LABEL_26;
  }
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::addressForSymbol(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v6;
  if (v6)
  {
    memcpy(&__dst, __s, v6);
  }

  *(&__dst + v7) = 0;
  v8 = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 272), &__dst);
  v9 = v8;
  if (v12 < 0)
  {
    operator delete(__dst);
    if (v9)
    {
      return v9[5] + a3;
    }
  }

  else if (v8)
  {
    return v9[5] + a3;
  }

  return -1;
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::RuntimeState::enumResources(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    v4 = *(*result + 24);
    if (v4)
    {
      v14 = *(v4 + 296);
      v5 = *(a2 + 24);
      if (!v5)
      {
        goto LABEL_14;
      }

      result = (*(*v5 + 48))(v5, &v14);
    }
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      v14 = *(v7 + 296);
      v8 = *(a2 + 24);
      if (!v8)
      {
        goto LABEL_14;
      }

      result = (*(*v8 + 48))(v8, &v14);
    }
  }

  v9 = *(v3 + 32);
  if (v9)
  {
    v10 = *(v9 + 24);
    if (v10)
    {
      v14 = *(v10 + 296);
      v11 = *(a2 + 24);
      if (v11)
      {
        return (*(*v11 + 48))(v11, &v14);
      }

LABEL_14:
      v12 = std::__throw_bad_function_call[abi:nn200100]();
      return ___ZN3AGX13DynamicLoaderINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20DynamicLibraryFilter33newFilteredLinkedDynamicLibrariesEP7NSArrayIPU28objcproto17MTLDynamicLibrary11objc_objectE_block_invoke(v12, v13);
    }
  }

  return result;
}

uint64_t ___ZN3AGX13DynamicLoaderINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE20DynamicLibraryFilter33newFilteredLinkedDynamicLibrariesEP7NSArrayIPU28objcproto17MTLDynamicLibrary11objc_objectE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::LinkInfo(v13, *(a2 + 56) + 120);
  v3 = v2[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v14;
    if (v14 >= *&v3)
    {
      v5 = v14 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v14;
  }

  v6 = *(*v2 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v3 - 1;
    while (1)
    {
      v10 = v7[1];
      if (v10 == v14)
      {
        if (v7[2] == v14)
        {
          goto LABEL_21;
        }
      }

      else if ((v10 & v8) != v5)
      {
        goto LABEL_22;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == v14)
    {
      break;
    }

    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }

    if (v9 != v5)
    {
      goto LABEL_22;
    }

LABEL_11:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != v14)
  {
    goto LABEL_11;
  }

LABEL_21:
  v11 = 1;
LABEL_23:
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::~LinkInfo(v13);
  return v11;
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::LinkInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  v13 = *(a2 + 192);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 176) = v12;
  *(a1 + 192) = v13;
  *(a1 + 160) = v11;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = *(a2 + 264);
  prime = *(a2 + 240);
  if (prime == 1)
  {
    prime = 2;
LABEL_20:
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1 + 232, prime);
    goto LABEL_21;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 240));
    v15 = *(a1 + 240);
    v16 = prime >= *&v15;
    if (prime > *&v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
    v16 = 1;
    if (prime)
    {
      goto LABEL_20;
    }
  }

  if (!v16)
  {
    v17 = vcvtps_u32_f32(*(a1 + 256) / *(a1 + 264));
    if (*&v15 < 3uLL || (v18 = vcnt_s8(v15), v18.i16[0] = vaddlv_u8(v18), v18.u32[0] > 1uLL))
    {
      v17 = std::__next_prime(v17);
    }

    else
    {
      v19 = 1 << -__clz(v17 - 1);
      if (v17 >= 2)
      {
        v17 = v19;
      }
    }

    if (prime <= v17)
    {
      prime = v17;
    }

    if (prime < *&v15)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  for (i = *(a2 + 248); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,unsigned int> const&>((a1 + 232), (i + 2));
  }

  std::unordered_map<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::unordered_map(a1 + 272, a2 + 272);
  std::unordered_map<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::unordered_map(a1 + 312, a2 + 312);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  v22 = *(a2 + 352);
  v21 = *(a2 + 360);
  if (v21 != v22)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v21 - v22) >> 3) <= 0x666666666666666)
    {
      operator new();
    }

    goto LABEL_33;
  }

  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v24 = *(a2 + 376);
  v23 = *(a2 + 384);
  if (v23 != v24)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v23 - v24) >> 3) <= 0x666666666666666)
    {
      operator new();
    }

LABEL_33:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v25 = *(a2 + 400);
  v26 = *(a2 + 408);
  if (v26 != v25)
  {
    if (((v26 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v27 = *(a2 + 424);
  v28 = *(a2 + 440);
  v29 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 440) = v28;
  *(a1 + 456) = v29;
  *(a1 + 424) = v27;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  v30 = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 512) = v30;
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  return a1;
}

void sub_29CD4E880(_Unwind_Exception *a1)
{
  std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::~vector[abi:nn200100]((v1 + 376));
  std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::~vector[abi:nn200100]((v1 + 352));
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 312);
  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](v1 + 272);
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::~GOTEntryLayout(v3);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo> const&>(a1, (i + 2));
  }

  return a1;
}

void **std::vector<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation,std::allocator<AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::LinkInfo::Relocation>>::~vector[abi:nn200100](void **a1)
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
        if (*(v3 - 9) < 0)
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::~GOTEntryLayout(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo> const&>(void *a1, uint64_t a2)
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
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_41;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 39);
        v15 = v14;
        if (v14 < 0)
        {
          v14 = v12[3];
        }

        if (v14 == v5)
        {
          v16 = v15 >= 0 ? (v12 + 2) : v12[2];
          result = memcmp(v16, v4, v5);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_41;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v18 = v12[1];
    if (v18 == v7)
    {
      break;
    }

    if (v18 >= *&v8)
    {
      v18 %= *&v8;
    }

    if (v18 != v10)
    {
      goto LABEL_41;
    }

LABEL_29:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_41;
    }
  }

  v19 = *(v12 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v12[3];
  }

  if (v19 != v5)
  {
    goto LABEL_29;
  }

  v21 = v20 >= 0 ? (v12 + 2) : v12[2];
  result = memcmp(v21, v4, v5);
  if (result)
  {
    goto LABEL_29;
  }

  return result;
}

void sub_29CD4EED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::load(uint64_t *a1, void ***a2, uint64_t **a3, void *a4, int a5, void *a6, void *a7, int a8, double a9, int8x16_t a10, uint64_t a11)
{
  v11 = a8;
  v485 = a1;
  v486 = a7;
  LODWORD(v487) = a5;
  v536 = *MEMORY[0x29EDCA608];
  v12 = *a4;
  v13 = a4[1];
  *__n = 0u;
  *v495 = 0u;
  *&v496 = 1.0;
  v497 = 0u;
  v498 = 0u;
  v499 = 1065353216;
  v500 = 0;
  memset(v501, 0, 12);
  v14 = *a2;
  v489 = a2[1];
  if (v14 == v489)
  {
    v16 = 0;
    v15 = 0;
    goto LABEL_39;
  }

  LODWORD(v484) = a8;
  v15 = 0;
  v16 = 0;
  v488 = v495;
  while (2)
  {
    v20 = *v14;
    for (i = *(*v14 + 36); i; i = *i)
    {
      std::__hash_table<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::ExternalSymbolInfo> const&>(&v497, (i + 2));
    }

    LODWORD(v490) = (v15 + *(v20 + 130) - 1) & -*(v20 + 130);
    v22 = *(v20 + 4);
    if (!__n[1])
    {
      goto LABEL_33;
    }

    v23 = vcnt_s8(__n[1]);
    v23.i16[0] = vaddlv_u8(v23);
    if (v23.u32[0] > 1uLL)
    {
      v24 = *(v20 + 4);
      if (v22 >= __n[1])
      {
        v24 = v22 % __n[1];
      }
    }

    else
    {
      v24 = (__n[1] - 1) & v22;
    }

    v25 = *(__n[0] + 8 * v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_33:
      operator new();
    }

    if (v23.u32[0] < 2uLL)
    {
      while (1)
      {
        v28 = v26[1];
        if (v28 == v22)
        {
          if (v26[2] == v22)
          {
            goto LABEL_34;
          }
        }

        else if ((v28 & (__n[1] - 1)) != v24)
        {
          goto LABEL_33;
        }

        v26 = *v26;
        if (!v26)
        {
          goto LABEL_33;
        }
      }
    }

    while (1)
    {
      v27 = v26[1];
      if (v27 == v22)
      {
        break;
      }

      if (v27 >= __n[1])
      {
        v27 %= __n[1];
      }

      if (v27 != v24)
      {
        goto LABEL_33;
      }

LABEL_23:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    if (v26[2] != v22)
    {
      goto LABEL_23;
    }

LABEL_34:
    v29 = *(v20 + 56);
    if (v29 || *(v20 + 216) == 1)
    {
      v17 = (*(v20 + 10) + v29);
      if (v500 > v17)
      {
        v17 = v500;
      }

      v500 = v17;
    }

    v18 = *(v20 + 129);
    v15 = v18 + v490;
    if (v16 <= *(v20 + 128))
    {
      v16 = *(v20 + 128);
    }

    v47 = v18 == 0;
    v19 = v501[0];
    if (!v47)
    {
      v19 = LODWORD(v501[0]) + 1;
    }

    LODWORD(v501[0]) = v19;
    v14 += 10;
    if (v14 != v489)
    {
      continue;
    }

    break;
  }

  v12 = *a4;
  v13 = a4[1];
  v11 = v484;
LABEL_39:
  if (v15 <= v16)
  {
    v30 = v16;
  }

  else
  {
    v30 = v15;
  }

  HIDWORD(v501[0]) = (v30 + 15) & 0xFFFFFFF0;
  LODWORD(v501[1]) = HIDWORD(v501[0]) + v487;
  if (v12 == v13)
  {
    v43 = a4;
    goto LABEL_64;
  }

  while (2)
  {
    v33 = *(v12 + 80);
    v32 = *(v12 + 88);
    v35 = *v32;
    v34 = v32[1];
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    v36 = v33[1];
    *v33 = v35;
    v33[1] = v34;
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
      v38 = v32[2];
      v37 = v32[3];
      if (v37)
      {
LABEL_50:
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v38 = v32[2];
      v37 = v32[3];
      if (v37)
      {
        goto LABEL_50;
      }
    }

    v39 = v33[3];
    v33[2] = v38;
    v33[3] = v37;
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
      v41 = v32[4];
      v40 = v32[5];
      if (v40)
      {
LABEL_54:
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v41 = v32[4];
      v40 = v32[5];
      if (v40)
      {
        goto LABEL_54;
      }
    }

    v42 = v33[5];
    v33[4] = v41;
    v33[5] = v40;
    if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    memcpy(v33 + 6, v32 + 6, 0x108uLL);
    v31 = *(v12 + 80);
    *(v31 + 232) = v500;
    *(v31 + 96) = v501[0];
    *(v31 + 88) = *(v501 + 4);
    v12 += 96;
    if (v12 != v13)
    {
      continue;
    }

    break;
  }

  v43 = a4;
  v12 = *a4;
LABEL_64:
  v44 = *(v12 + 80);
  v45 = *(v12 + 88);
  *(v44 + 260) = v11;
  v46 = *(v44 + 232);
  if (v46)
  {
    if (v44 == v45 || (v46 == v45[29] ? (v47 = *(v45 + 260) == v11) : (v47 = 0), !v47))
    {
      operator new();
    }
  }

  v49 = *v45;
  v48 = v45[1];
  if (v48)
  {
    atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
  }

  v50 = *(v44 + 8);
  *v44 = v49;
  *(v44 + 8) = v48;
  if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
  }

  v51 = *(v44 + 96);
  if (v51 && (v44 == v45 || v51 != *(v45 + 24) || *(v44 + 260) != *(v45 + 260)))
  {
    operator new();
  }

  v53 = v45[2];
  v52 = v45[3];
  if (v52)
  {
    atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
  }

  v54 = *(v44 + 24);
  *(v44 + 16) = v53;
  *(v44 + 24) = v52;
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

  v55 = *v43;
  if (0xAAAAAAAAAAAAAAABLL * ((v43[1] - *v43) >> 5) >= 2)
  {
    v56 = 176;
    v57 = 1;
    do
    {
      v58 = *(v55 + 80);
      v59 = *(v55 + v56);
      v61 = *v58;
      v60 = v58[1];
      if (v60)
      {
        atomic_fetch_add_explicit((v60 + 8), 1uLL, memory_order_relaxed);
      }

      v62 = v59[1];
      *v59 = v61;
      v59[1] = v60;
      if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v62->__on_zero_shared)(v62);
        std::__shared_weak_count::__release_weak(v62);
      }

      v63 = *(*v43 + 80);
      v64 = *(v55 + v56);
      v66 = *(v63 + 16);
      v65 = *(v63 + 24);
      if (v65)
      {
        atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
      }

      v67 = *(v64 + 24);
      *(v64 + 16) = v66;
      *(v64 + 24) = v65;
      if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v67->__on_zero_shared)(v67);
        std::__shared_weak_count::__release_weak(v67);
      }

      ++v57;
      v55 = *v43;
      v56 += 96;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v43[1] - *v43) >> 5) > v57);
  }

  v68 = *(v55 + 80);
  if (*v68)
  {
    v467 = *(*v68 + 64);
    v69 = *(v68 + 16);
    if (v69)
    {
      goto LABEL_102;
    }

LABEL_104:
    v466 = 0;
  }

  else
  {
    v467 = 0;
    v69 = *(v68 + 16);
    if (!v69)
    {
      goto LABEL_104;
    }

LABEL_102:
    v466 = *(v69 + 64);
  }

  v70 = *a3;
  v485 = a3[1];
  if (v70 == v485)
  {
LABEL_187:
    v109 = v498;
    v110 = a4;
    if (!v498)
    {
      goto LABEL_221;
    }

    while (*(v109 + 18) != 5)
    {
LABEL_189:
      v109 = *v109;
      if (!v109)
      {
        goto LABEL_221;
      }
    }

    v111 = v109[11];
    if (v111)
    {
      v109[5] = 8 * __clz(__rbit64(v111));
    }

    v112 = v109[12];
    if (v112)
    {
      v113 = __clz(__rbit64(v112));
      v114 = 0x80 - v113;
      if (((0x80 - v113) & 0x80) == 0)
      {
LABEL_195:
        v115 = *(v68 + 280);
        if (v113 > 0x40)
        {
          v116 = (v115 << v114);
          v117 = (((-1 << v114) & v115) >> v114) | (*(v68 + 288) << v114);
        }

        else
        {
          v116 = 0;
          v117 = v115 << v114;
        }

        goto LABEL_201;
      }
    }

    else
    {
      v118 = v109[13];
      if (!v118)
      {
LABEL_202:
        v122 = v109[14];
        if (v122)
        {
          v123 = vmovn_s64(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*(v68 + 280))))));
          *a10.i8 = vdup_lane_s32(v123, 1);
          v124 = vadd_s32(*a10.i8, v123).u32[0];
          v125 = *(v68 + 272);
          v126 = 512 - 8 * __clz(v125);
          if (v125)
          {
            v127 = v126;
          }

          else
          {
            v127 = 0;
          }

          v128 = v127 + 8 * v124;
          v129 = __clz(__rbit64(v122));
          v130 = vcnt_s8((*(v68 + 296) << -v129));
          v130.i16[0] = vaddlv_u8(v130);
          if (v129)
          {
            v131 = 8 * v130.i32[0];
          }

          else
          {
            v131 = 0;
          }

          v109[5] = (v128 + v131);
        }

        v132 = v109[15];
        if (v132)
        {
          a10.i64[0] = *(v68 + 288);
          v133 = vcnt_s8(*(v68 + 280));
          v133.i16[0] = vaddlv_u8(v133);
          v134 = v133.i32[0];
          v135 = __clz(__rbit64(v132));
          v136 = vcnt_s8(*a10.i8);
          v136.i16[0] = vaddlv_u8(v136);
          v137 = v136.i32[0];
          v138 = vcnt_s8(*(v68 + 296));
          v138.i16[0] = vaddlv_u8(v138);
          v139 = v134 - __clz(*(v68 + 272)) + v137 + v138.i32[0];
          v140 = vcnt_s8((*(v68 + 304) << -v135));
          v140.i16[0] = vaddlv_u8(v140);
          if (v135)
          {
            v141 = 4 * v140.i32[0];
          }

          else
          {
            v141 = 0;
          }

          v109[5] = (v141 + 8 * v139 + 512);
        }

        goto LABEL_189;
      }

      v113 = __clz(__rbit64(v118)) | 0x40;
      v114 = 0x80 - v113;
      if (((0x80 - v113) & 0x80) == 0)
      {
        goto LABEL_195;
      }
    }

    v117 = 0;
    v116 = 0;
LABEL_201:
    v119 = vcnt_s8(v116);
    v119.i16[0] = vaddlv_u8(v119);
    v120 = v119.i32[0];
    v121 = vcnt_s8(v117);
    v121.i16[0] = vaddlv_u8(v121);
    v109[5] = 8 * (v121.i32[0] - __clz(*(v68 + 272)) + v120) + 512;
    goto LABEL_202;
  }

  v71 = (v68 + 280);
  v489 = (v68 + 280);
  while (1)
  {
    v487 = *v70;
    v488 = v70;
    v72 = v487[44];
    v490 = v487[45];
    if (v72 != v490)
    {
      break;
    }

    v103 = *(v68 + 272);
    v104 = *v71;
    v106 = *(v68 + 296);
    v107 = *(v68 + 304);
LABEL_186:
    v108 = v487;
    *(v68 + 272) = v103 | v487[66];
    a10 = *(v108 + 67);
    *v71 = vorrq_s8(v104, a10);
    *(v68 + 296) = v106 | v108[69];
    *(v68 + 304) = v107 | v108[70];
    v70 = (v488 + 10);
    if (v488 + 10 == v485)
    {
      goto LABEL_187;
    }
  }

  while (2)
  {
    v73 = (v72 + 8);
    v74 = *(v72 + 31);
    if (v74 < 0)
    {
      v75 = *(v72 + 8);
      v76 = *(v72 + 16);
      if (v76 < 19)
      {
        goto LABEL_134;
      }
    }

    else
    {
      v75 = (v72 + 8);
      v76 = *(v72 + 31);
      if (v74 < 19)
      {
        goto LABEL_134;
      }
    }

    v77 = &v75[v76];
    v78 = v75;
    do
    {
      v79 = memchr(v78, 46, v76 - 18);
      if (!v79)
      {
        break;
      }

      if (*v79 == 0x5349565F4C544D2ELL && *(v79 + 1) == 0x5F4E465F454C4249 && *(v79 + 11) == 0x4645525F4E465F45)
      {
        if (v79 == v77 || v79 - v75 == -1)
        {
          break;
        }

        if ((v74 & 0x80000000) != 0)
        {
          v73 = *(v72 + 8);
          v74 = *(v72 + 16);
        }

        if (v74 >= (v79 - v75))
        {
          v82 = v79 - v75;
        }

        else
        {
          v82 = v74;
        }

        if (v82 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_1105:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v82 >= 0x17)
        {
          operator new();
        }

        __dst[23] = v82;
        if (v82)
        {
          memmove(__dst, v73, v82);
        }

        __dst[v82] = 0;
        goto LABEL_137;
      }

      v78 = v79 + 1;
      v76 = v77 - v78;
    }

    while (v77 - v78 >= 19);
LABEL_134:
    if ((v74 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(__dst, *(v72 + 8), *(v72 + 16));
    }

    else
    {
      *__dst = *v73;
      *&__dst[16] = *(v72 + 24);
    }

LABEL_137:
    v83 = __dst[23];
    v84 = *__dst;
    if (__dst[23] >= 0)
    {
      v85 = __dst;
    }

    else
    {
      v85 = *__dst;
    }

    if (__dst[23] >= 0)
    {
      v86 = __dst[23];
    }

    else
    {
      v86 = *&__dst[8];
    }

    v87 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v85, v86);
    v88 = *(&v497 + 1);
    if (!*(&v497 + 1))
    {
      goto LABEL_176;
    }

    v89 = v87;
    v90 = vcnt_s8(*(&v497 + 8));
    v90.i16[0] = vaddlv_u8(v90);
    if (v90.u32[0] > 1uLL)
    {
      v91 = v87;
      if (v87 >= *(&v497 + 1))
      {
        v91 = v87 % *(&v497 + 1);
      }
    }

    else
    {
      v91 = (*(&v497 + 1) - 1) & v87;
    }

    v92 = *(v497 + 8 * v91);
    if (v92)
    {
      v93 = *v92;
      if (*v92)
      {
        if (v90.u32[0] < 2uLL)
        {
          v94 = *(&v497 + 1) - 1;
          while (1)
          {
            v99 = v93->i64[1];
            if (v99 == v89)
            {
              v100 = v93[2].u8[7];
              v101 = v100;
              if ((v100 & 0x80u) != 0)
              {
                v100 = v93[1].i64[1];
              }

              if (v100 == v86)
              {
                v102 = v101 >= 0 ? &v93[1] : v93[1].i64[0];
                if (!memcmp(v102, v85, v86))
                {
                  goto LABEL_177;
                }
              }
            }

            else if ((v99 & v94) != v91)
            {
              goto LABEL_176;
            }

            v93 = v93->i64[0];
            if (!v93)
            {
              goto LABEL_177;
            }
          }
        }

        do
        {
          v95 = v93->u64[1];
          if (v95 == v89)
          {
            v96 = v93[2].u8[7];
            v97 = v96;
            if ((v96 & 0x80u) != 0)
            {
              v96 = v93[1].i64[1];
            }

            if (v96 == v86)
            {
              v98 = v97 >= 0 ? &v93[1] : v93[1].i64[0];
              if (!memcmp(v98, v85, v86))
              {
                break;
              }
            }
          }

          else
          {
            if (v95 >= v88)
            {
              v95 %= v88;
            }

            if (v95 != v91)
            {
              goto LABEL_176;
            }
          }

          v93 = v93->i64[0];
        }

        while (v93);
      }
    }

    else
    {
LABEL_176:
      v93 = 0;
    }

LABEL_177:
    if (v83 < 0)
    {
      operator delete(v84);
    }

    if (v93)
    {
      v103 = *(v68 + 272) | v93[5].i64[1];
      *(v68 + 272) = v103;
      v71 = v489;
      v104 = vorrq_s8(*v489, v93[6]);
      *v489 = v104;
      v105 = *(v68 + 304);
      v106 = *(v68 + 296) | v93[7].i64[0];
      *(v68 + 296) = v106;
      v107 = v105 | v93[7].i64[1];
      *(v68 + 304) = v107;
      v72 += 40;
      if (v72 == v490)
      {
        goto LABEL_186;
      }

      continue;
    }

    break;
  }

  v110 = a4;
  if (v486)
  {
    v142 = MEMORY[0x29EDBA0F8];
    AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createErrorString(__dst, *a3, a3[1], &v497);
    v143 = __dst[23] >= 0 ? __dst : *__dst;
    *v486 = [v142 stringWithUTF8String:v143];
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

LABEL_221:
  v144 = *v110;
  v484 = v110[1];
  v490 = a11;
  if (v144 != v484)
  {
    v145 = 0;
    v146 = 0;
    v147 = 0;
    LODWORD(v487) = 0;
    v488 = (a11 + 8);
    v489 = v492;
    v148 = 1;
    while (1)
    {
      size = v144[3].__r_.__value_.__l.__size_;
      if (!v148)
      {
        v148 = 0;
        v149 = v487;
        goto LABEL_224;
      }

      v151 = v144[3].__r_.__value_.__r.__words[2];
      *v491 = 0u;
      *v492 = 0u;
      v493 = *&v496;
      prime = __n[1];
      if (__n[1] == 1)
      {
        break;
      }

      if ((__n[1] & (__n[1] - 1)) != 0)
      {
        prime = std::__next_prime(__n[1]);
        v260 = v491[1];
        v261 = prime >= v491[1];
        if (prime > v491[1])
        {
          goto LABEL_228;
        }
      }

      else
      {
        v260 = 0;
        v261 = 1;
        if (__n[1])
        {
          goto LABEL_228;
        }
      }

      if (!v261)
      {
        v268 = vcvtps_u32_f32(v492[1] / v493);
        if (v260 < 3 || (v269 = vcnt_s8(v260), v269.i16[0] = vaddlv_u8(v269), v269.u32[0] > 1uLL))
        {
          v268 = std::__next_prime(v268);
        }

        else
        {
          v270 = 1 << -__clz(v268 - 1);
          if (v268 >= 2)
          {
            v268 = v270;
          }
        }

        if (prime <= v268)
        {
          prime = v268;
        }

        if (prime < v260)
        {
          goto LABEL_228;
        }
      }

LABEL_229:
      v485 = v151;
      v482 = v145;
      LODWORD(v483) = v146;
      LODWORD(v481) = v147;
      v153 = v495[0];
      if (!v495[0])
      {
        goto LABEL_252;
      }

      do
      {
        v154 = v153[2];
        if (!v491[1])
        {
          goto LABEL_250;
        }

        v155 = vcnt_s8(v491[1]);
        v155.i16[0] = vaddlv_u8(v155);
        if (v155.u32[0] > 1uLL)
        {
          v156 = v153[2];
          if (v154 >= v491[1])
          {
            v156 = v154 % v491[1];
          }
        }

        else
        {
          v156 = (v491[1] - 1) & v154;
        }

        v157 = *(v491[0] + v156);
        if (!v157 || (v158 = *v157) == 0)
        {
LABEL_250:
          operator new();
        }

        if (v155.u32[0] < 2uLL)
        {
          while (1)
          {
            v160 = v158[1];
            if (v160 == v154)
            {
              if (v158[2] == v154)
              {
                goto LABEL_251;
              }
            }

            else if ((v160 & (v491[1] - 1)) != v156)
            {
              goto LABEL_250;
            }

            v158 = *v158;
            if (!v158)
            {
              goto LABEL_250;
            }
          }
        }

        while (1)
        {
          v159 = v158[1];
          if (v159 == v154)
          {
            break;
          }

          if (v159 >= v491[1])
          {
            v159 %= v491[1];
          }

          if (v159 != v156)
          {
            goto LABEL_250;
          }

LABEL_240:
          v158 = *v158;
          if (!v158)
          {
            goto LABEL_250;
          }
        }

        if (v158[2] != v154)
        {
          goto LABEL_240;
        }

LABEL_251:
        v153 = *v153;
      }

      while (v153);
LABEL_252:
      v161 = a3;
      if (size == v485)
      {
        v161 = a2;
      }

      v162 = *v161;
      v476 = v161[1];
      if (*v161 == v476)
      {
        *&v163 = 0;
        LODWORD(v485) = 1024;
LABEL_488:
        *(size + 256) = v485;
        v262 = *(size + 56);
        v264 = *(size + 68);
        v263 = *(size + 72);
        v265 = v262 + v263 * *(size + 76);
        v266 = *(size + 80) + v262;
        if (v265 > v266)
        {
          v266 = v265;
        }

        *(size + 52) = v266;
        v267 = v264 + *(size + 84) * v263;
        *(size + 64) = v267;
        *a10.i8 = vmla_s32(*(size + 240), vdup_n_s32(v263), *&v163);
        *(size + 240) = a10.i64[0];
        v267 >>= 2;
        v148 = v267 < 0xFF1;
        v110 = a4;
        if (v267 >= 0xFF1)
        {
          v145 = v482;
          LOBYTE(v146) = v483;
          LOBYTE(v147) = v481;
          if (v486)
          {
            v148 = 0;
            *v486 = @"Exceeds maximum interface register allocation";
            v259 = v492[0];
            if (!v492[0])
            {
              goto LABEL_506;
            }

            goto LABEL_505;
          }
        }

        else
        {
          v145 = v482;
          LOBYTE(v146) = v483;
          LOBYTE(v147) = v481;
        }

        v259 = v492[0];
        if (!v492[0])
        {
          goto LABEL_506;
        }

        do
        {
LABEL_505:
          v271 = *v259;
          operator delete(v259);
          v259 = v271;
        }

        while (v271);
        goto LABEL_506;
      }

      v472 = v161;
      v163 = 0uLL;
      LODWORD(v485) = 1024;
      while (1)
      {
        v164 = *v162;
        v165 = *(*v162 + 352);
        if (v165 != *(*v162 + 360))
        {
          break;
        }

        v479 = 0;
LABEL_451:
        v248 = *(size + 48);
        if (*(v164 + 448))
        {
          if (v248 <= *(v164 + 432))
          {
            v248 = *(v164 + 432);
          }

          *(size + 48) = v248;
          v249 = v479;
          if (v479 <= *(v164 + 436))
          {
            v249 = *(v164 + 436);
          }

          *&v163 = vmax_u32(*&v163, *(v164 + 460));
        }

        else
        {
          v249 = v479;
        }

        v250 = *(v164 + 56);
        if (v249 > v250)
        {
          v250 = v249;
        }

        v251 = *(v164 + 524);
        v252 = v485;
        if (v251 >= v485)
        {
          v253 = v485;
        }

        else
        {
          v253 = *(v164 + 524);
        }

        if (v251)
        {
          v252 = v253;
        }

        LODWORD(v485) = v252;
        v254 = *(size + 84);
        if (v254 <= *(v164 + 52))
        {
          v254 = *(v164 + 52);
        }

        v255 = *(v164 + 60);
        *&v163 = vmax_u32(*&v163, v255);
        v478 = v163;
        if (v248 <= *(v164 + 48))
        {
          v248 = *(v164 + 48);
        }

        if (v254 <= *(v164 + 72))
        {
          v254 = *(v164 + 72);
        }

        *(size + 84) = v254;
        if (v248 <= *(v164 + 68))
        {
          v248 = *(v164 + 68);
        }

        *(size + 48) = v248;
        *(size + 228) |= *(v164 + 217);
        v255.i32[0] = *(v164 + 212);
        a10.i32[0] = *(size + 224);
        v256 = vorr_s8(*&vmovl_u8(*a10.i8), *&vmovl_u8(v255));
        *(size + 224) = vuzp1_s8(v256, v256).u32[0];
        v256.i32[0] = v250;
        v256.i32[1] = *(v164 + 76);
        *(size + 76) = vmax_u32(*(size + 76), v256);
        AGX::RayPayloadSizeAlignImpl<AGX::HAL300::Classes>::merge((size + 100), (v164 + 88));
        v163 = v478;
        v162 += 10;
        if (v162 == v476)
        {
          goto LABEL_488;
        }
      }

      v479 = 0;
      v469 = *(*v162 + 360);
      v470 = v162;
      v468 = *v162;
      while (2)
      {
        v166 = (v165 + 8);
        v167 = *(v165 + 31);
        v474 = v165;
        if ((v167 & 0x8000000000000000) != 0)
        {
          v168 = *(v165 + 8);
          v169 = *(v165 + 16);
        }

        else
        {
          v168 = (v165 + 8);
          v169 = *(v165 + 31);
        }

        v477 = v163;
        if (v169 < 19)
        {
          goto LABEL_284;
        }

        v170 = &v168[v169];
        v171 = v168;
        while (1)
        {
          v172 = memchr(v171, 46, v169 - 18);
          if (!v172)
          {
            goto LABEL_284;
          }

          v173 = *v172 == 0x5349565F4C544D2ELL && *(v172 + 1) == 0x5F4E465F454C4249;
          if (v173 && *(v172 + 11) == 0x4645525F4E465F45)
          {
            break;
          }

          v171 = v172 + 1;
          v169 = v170 - v171;
          if (v170 - v171 < 19)
          {
            goto LABEL_284;
          }
        }

        if (v172 == v170 || v172 - v168 == -1)
        {
LABEL_284:
          if ((v167 & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(__dst, *(v474 + 8), *(v474 + 16));
          }

          else
          {
            v176 = *v166;
            *&__dst[16] = v166[2];
            *__dst = v176;
          }
        }

        else
        {
          if ((v167 & 0x80000000) != 0)
          {
            v166 = *(v474 + 8);
            v167 = *(v474 + 16);
          }

          if (v167 >= v172 - v168)
          {
            v175 = v172 - v168;
          }

          else
          {
            v175 = v167;
          }

          if (v175 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_1105;
          }

          if (v175 >= 0x17)
          {
            operator new();
          }

          __dst[23] = v175;
          if (v175)
          {
            memmove(__dst, v166, v175);
          }

          __dst[v175] = 0;
        }

        if (__dst[23] >= 0)
        {
          v177 = __dst;
        }

        else
        {
          v177 = *__dst;
        }

        if (__dst[23] >= 0)
        {
          v178 = __dst[23];
        }

        else
        {
          v178 = *&__dst[8];
        }

        v179 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v177, v178);
        v181 = *(&v497 + 1);
        if (!*(&v497 + 1))
        {
          goto LABEL_326;
        }

        v182 = v179;
        v180 = vcnt_s8(*(&v497 + 8));
        v180.i16[0] = vaddlv_u8(v180);
        if (v180.u32[0] > 1uLL)
        {
          v183 = v179;
          if (v179 >= *(&v497 + 1))
          {
            v183 = v179 % *(&v497 + 1);
          }
        }

        else
        {
          v183 = (*(&v497 + 1) - 1) & v179;
        }

        v184 = *(v497 + 8 * v183);
        if (!v184)
        {
LABEL_326:
          v185 = 0;
          goto LABEL_327;
        }

        v185 = *v184;
        if (!*v184)
        {
          goto LABEL_327;
        }

        if (v180.u32[0] < 2uLL)
        {
          v186 = *(&v497 + 1) - 1;
          while (1)
          {
            v191 = v185[1];
            if (v182 == v191)
            {
              v192 = *(v185 + 39);
              v193 = v192;
              if ((v192 & 0x80u) != 0)
              {
                v192 = v185[3];
              }

              if (v192 == v178)
              {
                v194 = v193 >= 0 ? v185 + 2 : v185[2];
                if (!memcmp(v194, v177, v178))
                {
                  goto LABEL_327;
                }
              }
            }

            else if ((v191 & v186) != v183)
            {
              v185 = 0;
              goto LABEL_327;
            }

            v185 = *v185;
            if (!v185)
            {
              goto LABEL_327;
            }
          }
        }

        while (2)
        {
          v187 = v185[1];
          if (v182 != v187)
          {
            if (v187 >= v181)
            {
              v187 %= v181;
            }

            if (v187 != v183)
            {
              goto LABEL_326;
            }

LABEL_303:
            v185 = *v185;
            if (!v185)
            {
              goto LABEL_327;
            }

            continue;
          }

          break;
        }

        v188 = *(v185 + 39);
        v189 = v188;
        if ((v188 & 0x80u) != 0)
        {
          v188 = v185[3];
        }

        if (v188 != v178)
        {
          goto LABEL_303;
        }

        v190 = v189 >= 0 ? v185 + 2 : v185[2];
        if (memcmp(v190, v177, v178))
        {
          goto LABEL_303;
        }

LABEL_327:
        v195 = v488;
LABEL_330:
        if (v185)
        {
          v235 = v479;
          if (v479 <= *(v185 + 13))
          {
            v235 = *(v185 + 13);
          }

          v236 = *(v185 + 76);
          v237 = *(size + 48);
          if (v237 <= *(v185 + 12))
          {
            v237 = *(v185 + 12);
          }

          *(size + 48) = v237;
          *(size + 228) |= *(v185 + 60);
          v180.i32[0] = *(v185 + 14);
          a10.i32[0] = *(size + 224);
          a10.i64[0] = vmovl_u8(*a10.i8).u64[0];
          v238 = vorr_s8(*a10.i8, *&vmovl_u8(v180));
          *(size + 224) = vuzp1_s8(v238, v238).u32[0];
          v239 = *(size + 84);
          if (v239 <= *(v185 + 21))
          {
            v239 = *(v185 + 21);
          }

          *(size + 84) = v239;
          v479 = v235;
          if (a6)
          {
            v240 = v185[8];
            v241 = a6[1];
            if (v241)
            {
              v242 = vcnt_s8(v241);
              v242.i16[0] = vaddlv_u8(v242);
              if (v242.u32[0] > 1uLL)
              {
                v243 = v185[8];
                if (v240 >= *&v241)
                {
                  v243 = v240 % *&v241;
                }
              }

              else
              {
                v243 = (*&v241 - 1) & v240;
              }

              v244 = *(*a6 + 8 * v243);
              if (v244)
              {
                v245 = *v244;
                if (v245)
                {
                  if (v242.u32[0] < 2uLL)
                  {
                    while (1)
                    {
                      v247 = v245[1];
                      if (v247 == v240)
                      {
                        if (v245[2] == v240)
                        {
                          goto LABEL_422;
                        }
                      }

                      else if ((v247 & (*&v241 - 1)) != v243)
                      {
                        goto LABEL_441;
                      }

                      v245 = *v245;
                      if (!v245)
                      {
                        goto LABEL_441;
                      }
                    }
                  }

                  do
                  {
                    v246 = v245[1];
                    if (v246 == v240)
                    {
                      if (v245[2] == v240)
                      {
                        goto LABEL_422;
                      }
                    }

                    else
                    {
                      if (v246 >= *&v241)
                      {
                        v246 %= *&v241;
                      }

                      if (v246 != v243)
                      {
                        break;
                      }
                    }

                    v245 = *v245;
                  }

                  while (v245);
                }
              }
            }

LABEL_441:
            operator new();
          }

LABEL_422:
          v162 = v470;
          if (v237 < 0x7F)
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            *(&v163 + 1) = *(&v477 + 1);
            *&v163 = vmax_u32(*&v477, v236);
            v165 = v474 + 40;
            v164 = v468;
            if (v474 + 40 == v469)
            {
              goto LABEL_451;
            }

            continue;
          }

          if (v486)
          {
            *v486 = @"Exceeds maximum temporary register allocation";
          }

          v110 = a4;
          v145 = v482;
          LOBYTE(v146) = v483;
          LOBYTE(v147) = v481;
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          v148 = 0;
          v259 = v492[0];
          if (!v492[0])
          {
            goto LABEL_506;
          }

          goto LABEL_505;
        }

        break;
      }

      if (*(v490 + 24) == 1)
      {
        v196 = *v195;
        if (*v195)
        {
          v197 = __dst[23] >= 0 ? __dst[23] : *&__dst[8];
          v198 = __dst[23] >= 0 ? __dst : *__dst;
          v199 = v195;
          do
          {
            v200 = *(v196 + 55);
            if (v200 >= 0)
            {
              v201 = *(v196 + 55);
            }

            else
            {
              v201 = v196[5];
            }

            if (v200 >= 0)
            {
              v202 = v196 + 4;
            }

            else
            {
              v202 = v196[4];
            }

            if (v197 >= v201)
            {
              v203 = v201;
            }

            else
            {
              v203 = v197;
            }

            v204 = memcmp(v202, v198, v203);
            v205 = v201 < v197;
            if (v204)
            {
              v205 = v204 < 0;
            }

            v206 = !v205;
            v207 = v205;
            if (v206)
            {
              v199 = v196;
            }

            v196 = v196[v207];
          }

          while (v196);
          if (v199 != v195)
          {
            v208 = *(v199 + 55);
            if (v208 >= 0)
            {
              v209 = *(v199 + 55);
            }

            else
            {
              v209 = v199[5];
            }

            if (v208 >= 0)
            {
              v210 = v199 + 4;
            }

            else
            {
              v210 = v199[4];
            }

            if (v209 >= v197)
            {
              v211 = v197;
            }

            else
            {
              v211 = v209;
            }

            v212 = memcmp(v198, v210, v211);
            v213 = v197 >= v209;
            if (v212)
            {
              v213 = v212 >= 0;
            }

            if (v213)
            {
              v216 = v199[7];
              v215 = (v199 + 7);
              v214 = v216;
              v217 = SHIBYTE(v215->__r_.__value_.__r.__words[2]);
              if (v217 >= 0)
              {
                v218 = v215;
              }

              else
              {
                v218 = v214;
              }

              if (v217 >= 0)
              {
                v219 = HIBYTE(v215->__r_.__value_.__r.__words[2]);
              }

              else
              {
                v219 = v215->__r_.__value_.__l.__size_;
              }

              v220 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v218, v219);
              v221 = *(&v497 + 1);
              if (*(&v497 + 1))
              {
                v222 = v220;
                v223 = vcnt_s8(*(&v497 + 8));
                v223.i16[0] = vaddlv_u8(v223);
                if (v223.u32[0] > 1uLL)
                {
                  v224 = v220;
                  if (v220 >= *(&v497 + 1))
                  {
                    v224 = v220 % *(&v497 + 1);
                  }
                }

                else
                {
                  v224 = (*(&v497 + 1) - 1) & v220;
                }

                v225 = *(v497 + 8 * v224);
                if (v225)
                {
                  v185 = *v225;
                  if (*v225)
                  {
                    if (v223.u32[0] < 2uLL)
                    {
                      v226 = *(&v497 + 1) - 1;
                      while (1)
                      {
                        v231 = v185[1];
                        if (v222 == v231)
                        {
                          v232 = *(v185 + 39);
                          v233 = v232;
                          if ((v232 & 0x80u) != 0)
                          {
                            v232 = v185[3];
                          }

                          if (v232 == v219)
                          {
                            v234 = v233 >= 0 ? v185 + 2 : v185[2];
                            if (!memcmp(v234, v218, v219))
                            {
                              goto LABEL_329;
                            }
                          }
                        }

                        else if ((v231 & v226) != v224)
                        {
                          goto LABEL_410;
                        }

                        v185 = *v185;
                        if (!v185)
                        {
                          goto LABEL_329;
                        }
                      }
                    }

                    do
                    {
                      v227 = v185[1];
                      if (v222 == v227)
                      {
                        v228 = *(v185 + 39);
                        v229 = v228;
                        if ((v228 & 0x80u) != 0)
                        {
                          v228 = v185[3];
                        }

                        if (v228 == v219)
                        {
                          v230 = v229 >= 0 ? v185 + 2 : v185[2];
                          if (!memcmp(v230, v218, v219))
                          {
                            break;
                          }
                        }
                      }

                      else
                      {
                        if (v227 >= v221)
                        {
                          v227 %= v221;
                        }

                        if (v227 != v224)
                        {
                          goto LABEL_410;
                        }
                      }

                      v185 = *v185;
                    }

                    while (v185);
                  }
                }

                else
                {
LABEL_410:
                  v185 = 0;
                }
              }

              else
              {
                v185 = 0;
              }

LABEL_329:
              std::string::operator=(__dst, v215);
              v195 = v488;
              goto LABEL_330;
            }
          }
        }
      }

      LOBYTE(v146) = v483;
      if (v486 && ((v257 = MEMORY[0x29EDBA0F8], AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createErrorString(__p, *v472, v472[1], &v497), __p[23] >= 0) ? (v258 = __p) : (v258 = *__p), *v486 = [v257 stringWithUTF8String:v258], (__p[23] & 0x80000000) != 0))
      {
        operator delete(*__p);
        if ((__dst[23] & 0x80000000) != 0)
        {
LABEL_481:
          operator delete(*__dst);
        }
      }

      else if ((__dst[23] & 0x80000000) != 0)
      {
        goto LABEL_481;
      }

      v148 = 0;
      v110 = a4;
      v145 = v482;
      LOBYTE(v147) = v481;
      v259 = v492[0];
      if (v492[0])
      {
        goto LABEL_505;
      }

LABEL_506:
      v272 = v491[0];
      v491[0] = 0;
      if (v272)
      {
        operator delete(v272);
      }

      v149 = v487;
LABEL_224:
      LODWORD(v487) = (*(size + 224) | v149 & 1) != 0;
      v147 = (*(size + 225) | v147) != 0;
      v146 = (*(size + 228) | v146) != 0;
      v145 |= *(size + 220);
      v144 += 4;
      if (v144 == v484)
      {
        v144 = *v110;
        v273 = v487;
        goto LABEL_522;
      }
    }

    prime = 2;
LABEL_228:
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__do_rehash<true>(v491, prime);
    goto LABEL_229;
  }

  v273 = 0;
  LOBYTE(v147) = 0;
  LOBYTE(v146) = 0;
  v145 = 0;
  v148 = 1;
LABEL_522:
  v274 = v144[3].__r_.__value_.__l.__size_;
  *(v274 + 224) = v273;
  *(v274 + 228) = v146;
  *(v274 + 220) |= v145;
  *(v274 + 225) = v147;
  if (!v148)
  {
    v455 = 0;
    goto LABEL_1094;
  }

  v515 = 0;
  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v516 = 0xFFFFFFFF00000001;
  v517 = 1610612736;
  v518 = 0u;
  v519 = 0u;
  v520 = 0u;
  *&v275 = -1;
  *(&v275 + 1) = -1;
  v521 = v275;
  v522 = v275;
  v523 = v275;
  v524 = -1;
  v525 = 0;
  v526 = 0;
  v528 = 0;
  v527 = 0;
  v529 = 0;
  v530 = 1024;
  v531 = 0;
  v532 = 0;
  v533 = 0u;
  v534 = 0u;
  v535 = 0;
  v276 = *a3;
  v483 = a3[1];
  if (v276 == v483)
  {
    goto LABEL_1082;
  }

  v277 = (v490 + 8);
  v484 = &v503;
  v482 = 1;
  v481 = xmmword_29D2F1B60;
  v278 = v276;
  do
  {
    v485 = v278;
    v279 = *v278;
    v280 = *(*v278 + 352);
    v488 = *(*v278 + 360);
    if (v280 == v488)
    {
      goto LABEL_1079;
    }

    v487 = v279;
    do
    {
      v281 = (v280 + 1);
      v282 = *(v280 + 31);
      if ((v282 & 0x8000000000000000) != 0)
      {
        v283 = v280[1];
        v284 = v280[2];
      }

      else
      {
        v283 = (v280 + 1);
        v284 = *(v280 + 31);
      }

      v489 = v280;
      if (v284 < 19)
      {
        goto LABEL_546;
      }

      v285 = &v283[v284];
      v286 = v283;
      while (1)
      {
        v287 = memchr(v286, 46, v284 - 18);
        if (!v287)
        {
          goto LABEL_546;
        }

        v288 = *v287 == 0x5349565F4C544D2ELL && *(v287 + 1) == 0x5F4E465F454C4249;
        if (v288 && *(v287 + 11) == 0x4645525F4E465F45)
        {
          break;
        }

        v286 = v287 + 1;
        v284 = v285 - v286;
        if (v285 - v286 < 19)
        {
          goto LABEL_546;
        }
      }

      if (v287 == v285 || v287 - v283 == -1)
      {
LABEL_546:
        if ((v282 & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v506, v280[1], v280[2]);
        }

        else
        {
          v291 = *&v281->__r_.__value_.__l.__data_;
          v506.__r_.__value_.__r.__words[2] = v280[3];
          *&v506.__r_.__value_.__l.__data_ = v291;
        }

        v292 = v490;
      }

      else
      {
        if ((v282 & 0x80000000) != 0)
        {
          v290 = v280[1];
          v282 = v280[2];
        }

        else
        {
          v290 = v280 + 1;
        }

        if (v282 >= v287 - v283)
        {
          v373 = v287 - v283;
        }

        else
        {
          v373 = v282;
        }

        if (v373 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_1105;
        }

        v292 = v490;
        if (v373 >= 0x17)
        {
          operator new();
        }

        *(&v506.__r_.__value_.__s + 23) = v373;
        if (v373)
        {
          memmove(&v506, v290, v373);
        }

        v506.__r_.__value_.__s.__data_[v373] = 0;
      }

      if ((v506.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v293 = &v506;
      }

      else
      {
        v293 = v506.__r_.__value_.__r.__words[0];
      }

      if ((v506.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v294 = HIBYTE(v506.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v294 = v506.__r_.__value_.__l.__size_;
      }

      v295 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v293, v294);
      v296 = *(&v497 + 1);
      if (!*(&v497 + 1))
      {
        v300 = 0;
        goto LABEL_596;
      }

      v297 = v295;
      v298 = vcnt_s8(*(&v497 + 8));
      v298.i16[0] = vaddlv_u8(v298);
      if (v298.u32[0] > 1uLL)
      {
        v299 = v295;
        if (v295 >= *(&v497 + 1))
        {
          v299 = v295 % *(&v497 + 1);
        }
      }

      else
      {
        v299 = (*(&v497 + 1) - 1) & v295;
      }

      v301 = *(v497 + 8 * v299);
      if (!v301)
      {
        v300 = 0;
        goto LABEL_596;
      }

      v300 = *v301;
      if (!*v301)
      {
        goto LABEL_596;
      }

      if (v298.u32[0] < 2uLL)
      {
        while (1)
        {
          v306 = v300[1];
          if (v297 == v306)
          {
            v307 = *(v300 + 39);
            v308 = v307;
            if ((v307 & 0x80u) != 0)
            {
              v307 = v300[3];
            }

            if (v307 == v294)
            {
              v309 = v308 >= 0 ? v300 + 2 : v300[2];
              if (!memcmp(v309, v293, v294))
              {
                v292 = v490;
                goto LABEL_596;
              }
            }
          }

          else if ((v306 & (v296 - 1)) != v299)
          {
            v300 = 0;
            v292 = v490;
            goto LABEL_596;
          }

          v300 = *v300;
          if (!v300)
          {
            v292 = v490;
            goto LABEL_596;
          }
        }
      }

      while (1)
      {
        v302 = v300[1];
        if (v297 == v302)
        {
          break;
        }

        if (v302 >= v296)
        {
          v302 %= v296;
        }

        if (v302 != v299)
        {
          v300 = 0;
          goto LABEL_596;
        }

LABEL_567:
        v300 = *v300;
        if (!v300)
        {
          goto LABEL_596;
        }
      }

      v303 = *(v300 + 39);
      v304 = v303;
      if ((v303 & 0x80u) != 0)
      {
        v303 = v300[3];
      }

      if (v303 != v294)
      {
        goto LABEL_567;
      }

      v305 = v304 >= 0 ? v300 + 2 : v300[2];
      if (memcmp(v305, v293, v294))
      {
        goto LABEL_567;
      }

      while (1)
      {
LABEL_596:
        if (v300)
        {
          v353 = v300[8];
          if ((__n[1] & (__n[1] - 1)) != 0)
          {
            v355 = v300[8];
            v279 = v487;
            if (v353 >= __n[1])
            {
              v355 = v353 % __n[1];
            }

            v354 = *(__n[0] + 8 * v355);
            do
            {
              do
              {
                v354 = *v354;
              }

              while (v353 != v354[1]);
            }

            while (v354[2] != v353);
          }

          else
          {
            v354 = *(__n[0] + 8 * ((__n[1] - 1) & v353));
            v279 = v487;
            do
            {
              do
              {
                v354 = *v354;
              }

              while (v353 != v354[1]);
            }

            while (v354[2] != v353);
          }

          v357 = v354[3];
          v356 = v354[4];
          v358 = v354[5];
          v359 = *(v354 + 12);
          v360 = v489;
          v502 = *v489;
          if (*(v489 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(v484, v489[1], v489[2]);
          }

          else
          {
            *v484 = *v281;
          }

          v361 = 0;
          v362 = *(v360 + 8);
          v505 = *(v360 + 8);
          v363 = v485[8];
          v364 = *(v300 + 18);
          if (v364 <= 1)
          {
            if (v364)
            {
              if (v364 == 1)
              {
                v361 = v356 + v300[5];
              }
            }

            else
            {
              v361 = v357 + v300[5];
            }
          }

          else
          {
            switch(v364)
            {
              case 2:
                v361 = v358 + v300[5];
                break;
              case 4:
                v361 = v300[5] + v359;
                break;
              case 5:
                v361 = v300[5];
                break;
            }
          }

          if (v502 > 17)
          {
            if (v502 <= 20)
            {
              if (v502 == 18)
              {
                *(v363 + v362) = v361;
                if ((v504 & 0x80000000) == 0)
                {
                  goto LABEL_758;
                }

                goto LABEL_756;
              }

              if (v502 == 20)
              {
                *(v363 + v362) = v300[5];
                if ((v504 & 0x80000000) == 0)
                {
                  goto LABEL_758;
                }

                goto LABEL_756;
              }

              goto LABEL_755;
            }

            v365 = v467 + *(v279 + 10);
            if (v502 != 21)
            {
              if (v502 == 22)
              {
                if (v504 >= 0)
                {
                  v377 = v484;
                }

                else
                {
                  v377 = v503;
                }

                *(v365 + AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::getOffset((v279 + 28), v377)) = v361;
              }

              else if (v502 == 23)
              {
                if (v504 >= 0)
                {
                  v366 = v484;
                }

                else
                {
                  v366 = v503;
                }

                *(v365 + AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::getOffset((v279 + 28), v366)) = v300[5];
                if ((v504 & 0x80000000) == 0)
                {
                  goto LABEL_758;
                }

                goto LABEL_756;
              }

LABEL_755:
              if ((v504 & 0x80000000) == 0)
              {
                goto LABEL_758;
              }

              goto LABEL_756;
            }

            if (v504 >= 0)
            {
              v376 = v484;
            }

            else
            {
              v376 = v503;
            }

            *(v365 + AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::GOTEntryLayout::getOffset((v279 + 28), v376)) = v361;
            if ((v504 & 0x80000000) == 0)
            {
              goto LABEL_758;
            }

LABEL_756:
            v352 = v503;
            goto LABEL_757;
          }

          v367 = (v485[2] + v362);
          if (v502 > 15)
          {
            if (v502 == 16)
            {
              memset(__p, 0, 48);
              *&__p[28] = 0x300000014;
              v374 = *(v367 + 1);
              *&__p[40] = (((*v367 >> 6) | (4 * *v367)) & 0x3C02 | (*v367 >> 10) & 0x1C | (32 * ((v374 >> 1) & 1)) & 0xFFFFFFBF | (((v374 >> 3) & 1) << 6) | (4 * v374) & 0x4380) & 0xFFFFFFFFFFF07FFFLL | ((*(v367 + 2) & 0x1F) << 15) | ((*(v367 + 3) & 0x7FF) << 20) | ((*(v367 + 3) >> 14) << 31) | ((*(v367 + 4) & 0x7FFF) << 33);
              __p[0] = (v367[2] & 4) != 0;
              __p[36] = (*(v367 + 3) & 0x2000) != 0;
              v375 = *(v367 + 2);
              if ((v375 >> 5) <= 0xF2u)
              {
                switch((v375 >> 5))
                {
                  case 1u:
                    *&__p[8] = 0;
                    *&__p[16] = 0;
                    goto LABEL_1032;
                  case 2u:
                    goto LABEL_964;
                  case 3u:
                    goto LABEL_1005;
                  case 4u:
                    *&__p[8] = 0;
                    *&__p[16] = 0;
                    goto LABEL_1051;
                  case 5u:
                    goto LABEL_778;
                  case 6u:
                    goto LABEL_1011;
                  case 7u:
                    goto LABEL_1070;
                  case 8u:
                    goto LABEL_1045;
                  case 9u:
                    v380 = 1;
                    goto LABEL_1026;
                  case 0xAu:
                    v381 = 1;
                    goto LABEL_1050;
                  case 0xBu:
                    v379 = 1;
                    goto LABEL_1031;
                  case 0xCu:
                    goto LABEL_1013;
                  case 0xDu:
                    v382 = xmmword_29D2F1A90;
                    goto LABEL_1076;
                  case 0xEu:
                    v382 = xmmword_29D2F1A80;
                    goto LABEL_1076;
                  case 0xFu:
                    goto LABEL_1041;
                  case 0x10u:
                    v382 = xmmword_29D2F1A60;
                    goto LABEL_1076;
                  case 0x11u:
                    v382 = xmmword_29D2F1A50;
                    goto LABEL_1076;
                  case 0x12u:
                    v380 = 2;
                    goto LABEL_1026;
                  case 0x13u:
                    v381 = 2;
                    goto LABEL_1050;
                  case 0x14u:
                    v379 = 2;
                    goto LABEL_1031;
                  case 0x15u:
                    goto LABEL_1062;
                  case 0x16u:
                    v382 = xmmword_29D2F1A00;
                    goto LABEL_1076;
                  case 0x17u:
                    v382 = xmmword_29D2F19F0;
                    goto LABEL_1076;
                  case 0x18u:
                    goto LABEL_1065;
                  case 0x19u:
                    v382 = xmmword_29D2F19D0;
                    goto LABEL_1076;
                  case 0x1Au:
                    v382 = xmmword_29D2F19C0;
                    goto LABEL_1076;
                  case 0x1Bu:
                    *&__p[16] = 1;
                    break;
                  case 0x1Cu:
                    v447 = 1;
                    goto LABEL_1057;
                  case 0x1Du:
                    v397 = 1;
                    goto LABEL_1054;
                  case 0x1Eu:
                    v403 = 1;
                    goto LABEL_1048;
                  case 0x1Fu:
                    v392 = 1;
                    goto LABEL_800;
                  case 0x20u:
                    *&__p[16] = 1;
                    goto LABEL_964;
                  case 0x21u:
                    v383 = 1;
                    v384 = 2;
                    goto LABEL_882;
                  case 0x22u:
                    v390 = 1;
                    goto LABEL_1069;
                  case 0x23u:
                    *&__p[16] = 1;
                    goto LABEL_1045;
                  case 0x24u:
                    goto LABEL_892;
                  case 0x25u:
                    v381 = 0x100000001;
                    goto LABEL_1050;
                  case 0x26u:
                    v379 = 0x100000001;
                    goto LABEL_1031;
                  case 0x27u:
                    v385 = 1;
                    goto LABEL_858;
                  case 0x28u:
                    *&v382 = 0x100000001;
                    *(&v382 + 1) = 0x100000001;
                    goto LABEL_1076;
                  case 0x29u:
                    goto LABEL_960;
                  case 0x2Au:
                    v448 = 1;
                    goto LABEL_1040;
                  case 0x2Bu:
                    goto LABEL_957;
                  case 0x2Cu:
                    goto LABEL_862;
                  case 0x2Du:
                    goto LABEL_976;
                  case 0x2Eu:
                    v381 = 0x100000002;
                    goto LABEL_1050;
                  case 0x2Fu:
                    v379 = 0x100000002;
                    goto LABEL_1031;
                  case 0x30u:
                    *&__p[16] = 1;
                    goto LABEL_1062;
                  case 0x31u:
                    goto LABEL_954;
                  case 0x32u:
                    goto LABEL_986;
                  case 0x33u:
                    v386 = 1;
                    goto LABEL_1064;
                  case 0x34u:
                    goto LABEL_971;
                  case 0x35u:
                    goto LABEL_847;
                  case 0x36u:
                    *&__p[16] = 2;
                    break;
                  case 0x37u:
                    v447 = 2;
LABEL_1057:
                    *&__p[16] = v447;
                    goto LABEL_1058;
                  case 0x38u:
                    v397 = 2;
LABEL_1054:
                    *&__p[16] = v397;
                    goto LABEL_1055;
                  case 0x39u:
                    v383 = 2;
                    v384 = 1;
LABEL_882:
                    *&__p[16] = v383;
                    *&__p[8] = v384;
                    break;
                  case 0x3Au:
                    v392 = 2;
LABEL_800:
                    *&__p[16] = v392;
                    v391 = 0x100000001;
                    goto LABEL_1071;
                  case 0x3Bu:
                    *&__p[16] = 2;
                    goto LABEL_964;
                  case 0x3Cu:
                    v403 = 2;
LABEL_1048:
                    *&__p[16] = v403;
                    *&__p[8] = v403;
                    break;
                  case 0x3Du:
                    v390 = 2;
LABEL_1069:
                    *&__p[16] = v390;
                    goto LABEL_1070;
                  case 0x3Eu:
                    *&__p[16] = 2;
                    goto LABEL_1045;
                  case 0x3Fu:
                    goto LABEL_914;
                  case 0x40u:
                    v381 = 0x200000001;
                    goto LABEL_1050;
                  case 0x41u:
                    v379 = 0x200000001;
                    goto LABEL_1031;
                  case 0x42u:
                    v385 = 2;
LABEL_858:
                    *&__p[16] = v385;
                    goto LABEL_1013;
                  case 0x43u:
                    goto LABEL_928;
                  case 0x44u:
                    goto LABEL_880;
                  case 0x45u:
                    v448 = 2;
LABEL_1040:
                    *&__p[16] = v448;
                    goto LABEL_1041;
                  case 0x46u:
                    goto LABEL_933;
                  case 0x47u:
                    goto LABEL_1022;
                  case 0x48u:
                    goto LABEL_1025;
                  case 0x49u:
                    v381 = 0x200000002;
LABEL_1050:
                    *&__p[12] = v381;
LABEL_1051:
                    *&__p[4] = 1;
                    break;
                  case 0x4Au:
                    v379 = 0x200000002;
LABEL_1031:
                    *&__p[12] = v379;
LABEL_1032:
                    *&__p[4] = 2;
                    break;
                  case 0x4Bu:
                    *&__p[16] = 2;
                    goto LABEL_1062;
                  case 0x4Cu:
                    goto LABEL_948;
                  case 0x4Du:
                    goto LABEL_898;
                  case 0x4Eu:
                    v386 = 2;
LABEL_1064:
                    *&__p[16] = v386;
                    goto LABEL_1065;
                  case 0x4Fu:
                    goto LABEL_905;
                  case 0x50u:
                    goto LABEL_908;
                  case 0x51u:
                    v412 = 1;
                    goto LABEL_830;
                  case 0x52u:
                    v399 = 1;
                    goto LABEL_1038;
                  case 0x53u:
                    v388 = 1;
                    goto LABEL_999;
                  case 0x54u:
                    v407 = 1;
                    goto LABEL_1067;
                  case 0x55u:
                    *&__p[20] = 1;
LABEL_778:
                    v391 = 0x100000001;
                    goto LABEL_1071;
                  case 0x56u:
                    *&__p[20] = 1;
                    goto LABEL_964;
                  case 0x57u:
                    v406 = 1;
                    goto LABEL_1002;
                  case 0x58u:
                    *&__p[20] = 1;
                    goto LABEL_1070;
                  case 0x59u:
                    *&__p[20] = 1;
                    goto LABEL_1045;
                  case 0x5Au:
                    v408 = 1;
                    goto LABEL_920;
                  case 0x5Bu:
                    v405 = 1;
                    *&__p[20] = 1;
                    goto LABEL_1028;
                  case 0x5Cu:
                    v437 = 1;
                    *&__p[20] = 1;
                    v438 = 2;
                    goto LABEL_922;
                  case 0x5Du:
                    *&__p[20] = 1;
                    goto LABEL_1013;
                  case 0x5Eu:
                    v422 = 1;
                    goto LABEL_865;
                  case 0x5Fu:
                    v393 = 1;
                    goto LABEL_963;
                  case 0x60u:
                    v443 = 1;
                    goto LABEL_1034;
                  case 0x61u:
                    v452 = 1;
                    goto LABEL_989;
                  case 0x62u:
                    v450 = 1;
                    goto LABEL_980;
                  case 0x63u:
                    v413 = 1;
                    v414 = 2;
                    goto LABEL_832;
                  case 0x64u:
                    v423 = 1;
                    *&__p[20] = 1;
                    v424 = 2;
                    goto LABEL_996;
                  case 0x65u:
                    *&__p[20] = 1;
                    v405 = 2;
                    goto LABEL_1028;
                  case 0x66u:
                    v451 = 1;
                    goto LABEL_1061;
                  case 0x67u:
                    v420 = 1;
                    v421 = 2;
                    goto LABEL_853;
                  case 0x68u:
                    v395 = 1;
                    v396 = 2;
                    goto LABEL_828;
                  case 0x69u:
                    v401 = 1;
                    goto LABEL_839;
                  case 0x6Au:
                    v434 = 1;
                    v435 = 2;
                    goto LABEL_983;
                  case 0x6Bu:
                    v425 = 1;
                    v426 = 2;
                    goto LABEL_895;
                  case 0x6Cu:
                    *&__p[16] = 0x100000001;
                    break;
                  case 0x6Du:
                    *&__p[16] = 0x100000001;
                    goto LABEL_1058;
                  case 0x6Eu:
                    *&__p[16] = 0x100000001;
                    goto LABEL_1055;
                  case 0x6Fu:
                    v387 = 0x100000001;
                    goto LABEL_1004;
                  case 0x70u:
                    v391 = 0x100000001;
                    *&__p[16] = 0x100000001;
                    goto LABEL_1071;
                  case 0x71u:
                    *&__p[16] = 0x100000001;
                    goto LABEL_964;
                  case 0x72u:
                    v417 = 0x100000001;
                    goto LABEL_1010;
                  case 0x73u:
                    *&__p[16] = 0x100000001;
                    goto LABEL_1070;
                  case 0x74u:
                    v449 = 0x100000001;
                    goto LABEL_1044;
                  case 0x75u:
                    v427 = 1;
                    goto LABEL_891;
                  case 0x76u:
                    v410 = 0x100000001;
                    goto LABEL_991;
                  case 0x77u:
                    v388 = 1;
                    v389 = 0x100000001;
                    goto LABEL_998;
                  case 0x78u:
                    *&v394 = 0x100000001;
                    *(&v394 + 1) = 0x100000001;
                    goto LABEL_1016;
                  case 0x79u:
                    v430 = 1;
                    goto LABEL_873;
                  case 0x7Au:
                    v404 = 1;
                    goto LABEL_959;
                  case 0x7Bu:
                    v394 = xmmword_29D2F1C40;
                    goto LABEL_1016;
                  case 0x7Cu:
                    v416 = 1;
                    goto LABEL_956;
                  case 0x7Du:
                    v419 = 1;
                    goto LABEL_861;
                  case 0x7Eu:
                    v418 = 1;
                    goto LABEL_975;
                  case 0x7Fu:
                    v428 = 0x100000002;
                    goto LABEL_1036;
                  case 0x80u:
                    v388 = 1;
                    v389 = 0x100000002;
                    goto LABEL_998;
                  case 0x81u:
                    v394 = xmmword_29D2F1C30;
                    goto LABEL_1016;
                  case 0x82u:
                    v441 = 1;
                    goto LABEL_953;
                  case 0x83u:
                    v446 = 1;
                    goto LABEL_985;
                  case 0x84u:
                    v394 = xmmword_29D2F1C20;
                    goto LABEL_1016;
                  case 0x85u:
                    v400 = 1;
                    goto LABEL_970;
                  case 0x86u:
                    v415 = 1;
                    goto LABEL_846;
                  case 0x87u:
                    *&__p[16] = 0x100000002;
                    break;
                  case 0x88u:
                    *&__p[16] = 0x100000002;
                    goto LABEL_1058;
                  case 0x89u:
                    *&__p[16] = 0x100000002;
                    goto LABEL_1055;
                  case 0x8Au:
                    v387 = 0x100000002;
                    goto LABEL_1004;
                  case 0x8Bu:
                    v432 = 0x100000002;
                    goto LABEL_1008;
                  case 0x8Cu:
                    v391 = 0x100000002;
                    *&__p[16] = 0x100000002;
                    goto LABEL_1071;
                  case 0x8Du:
                    v417 = 0x100000002;
                    goto LABEL_1010;
                  case 0x8Eu:
                    *&__p[16] = 0x100000002;
                    goto LABEL_1070;
                  case 0x8Fu:
                    v449 = 0x100000002;
                    goto LABEL_1044;
                  case 0x90u:
                    v440 = 1;
                    goto LABEL_913;
                  case 0x91u:
                    v428 = 0x200000001;
LABEL_1036:
                    v399 = 1;
                    goto LABEL_1037;
                  case 0x92u:
                    v388 = 1;
                    v389 = 0x200000001;
                    goto LABEL_998;
                  case 0x93u:
                    v394 = xmmword_29D2F1C10;
                    goto LABEL_1016;
                  case 0x94u:
                    v442 = 1;
                    goto LABEL_927;
                  case 0x95u:
                    v409 = 1;
                    goto LABEL_879;
                  case 0x96u:
                    v394 = xmmword_29D2F1C00;
                    goto LABEL_1016;
                  case 0x97u:
                    v402 = 1;
                    goto LABEL_932;
                  case 0x98u:
                    v436 = 1;
                    goto LABEL_1021;
                  case 0x99u:
                    v445 = 1;
                    goto LABEL_1024;
                  case 0x9Au:
                    v410 = 0x200000002;
LABEL_991:
                    *&__p[12] = v410;
                    v399 = 1;
                    goto LABEL_1038;
                  case 0x9Bu:
                    v388 = 1;
                    v389 = 0x200000002;
LABEL_998:
                    *&__p[12] = v389;
LABEL_999:
                    v439 = 2;
                    goto LABEL_1000;
                  case 0x9Cu:
                    v394 = xmmword_29D2F1BF0;
                    goto LABEL_1016;
                  case 0x9Du:
                    v433 = 1;
                    goto LABEL_947;
                  case 0x9Eu:
                    v398 = 1;
                    goto LABEL_897;
                  case 0x9Fu:
                    v394 = xmmword_29D2F1BE0;
                    goto LABEL_1016;
                  case 0xA0u:
                    v429 = 1;
                    goto LABEL_904;
                  case 0xA1u:
                    v431 = 1;
                    goto LABEL_907;
                  case 0xA2u:
                    v412 = 2;
LABEL_830:
                    *&__p[20] = v412;
                    *&__p[4] = 0;
                    *&__p[12] = 0;
                    break;
                  case 0xA3u:
                    v388 = 2;
                    goto LABEL_902;
                  case 0xA4u:
                    goto LABEL_967;
                  case 0xA5u:
                    v407 = 2;
LABEL_1067:
                    *&__p[20] = v407;
                    *&__p[8] = 1;
                    break;
                  case 0xA6u:
                    *&__p[20] = 2;
                    v391 = 0x100000001;
                    goto LABEL_1071;
                  case 0xA7u:
                    *&__p[20] = 2;
                    goto LABEL_964;
                  case 0xA8u:
                    v406 = 2;
LABEL_1002:
                    *&__p[20] = v406;
                    *&__p[8] = 2;
                    break;
                  case 0xA9u:
                    *&__p[20] = 2;
                    goto LABEL_1070;
                  case 0xAAu:
                    *&__p[20] = 2;
                    goto LABEL_1045;
                  case 0xABu:
                    v413 = 2;
                    v414 = 1;
LABEL_832:
                    *&__p[20] = v413;
                    *&__p[12] = v414;
                    break;
                  case 0xACu:
                    *&__p[20] = 2;
                    v405 = 1;
                    goto LABEL_1028;
                  case 0xADu:
                    v423 = 2;
                    *&__p[20] = 2;
                    v424 = 1;
LABEL_996:
                    *&__p[12] = v424;
                    *&__p[4] = v423;
                    break;
                  case 0xAEu:
                    *&__p[20] = 2;
LABEL_1013:
                    *&__p[8] = 0x100000001;
                    break;
                  case 0xAFu:
                    v420 = 2;
                    v421 = 1;
LABEL_853:
                    *&__p[20] = v420;
                    *&__p[12] = v421;
                    v391 = 0x100000001;
                    goto LABEL_1071;
                  case 0xB0u:
                    v395 = 2;
                    v396 = 1;
LABEL_828:
                    *&__p[20] = v395;
                    *&__p[12] = v396;
                    goto LABEL_964;
                  case 0xB1u:
                    v443 = 2;
LABEL_1034:
                    *&__p[20] = v443;
LABEL_1041:
                    *&__p[8] = 0x100000002;
                    break;
                  case 0xB2u:
                    v434 = 2;
                    v435 = 1;
LABEL_983:
                    *&__p[20] = v434;
                    *&__p[12] = v435;
                    goto LABEL_1070;
                  case 0xB3u:
                    v425 = 2;
                    v426 = 1;
LABEL_895:
                    *&__p[20] = v425;
                    *&__p[12] = v426;
                    goto LABEL_1045;
                  case 0xB4u:
                    v408 = 2;
LABEL_920:
                    *&__p[20] = v408;
                    *&__p[12] = v408;
                    break;
                  case 0xB5u:
                    v437 = 2;
                    *&__p[20] = 2;
                    v438 = 1;
LABEL_922:
                    *&__p[12] = v437;
                    *&__p[4] = v438;
                    break;
                  case 0xB6u:
                    v405 = 2;
                    *&__p[20] = 2;
LABEL_1028:
                    *&__p[12] = v405;
                    *&__p[4] = v405;
                    break;
                  case 0xB7u:
                    v451 = 2;
LABEL_1061:
                    *&__p[20] = v451;
LABEL_1062:
                    *&__p[8] = 0x200000001;
                    break;
                  case 0xB8u:
                    v422 = 2;
LABEL_865:
                    *&__p[20] = v422;
                    *&__p[12] = v422;
                    v391 = 0x100000001;
                    goto LABEL_1071;
                  case 0xB9u:
                    v393 = 2;
LABEL_963:
                    *&__p[20] = v393;
                    *&__p[12] = v393;
                    goto LABEL_964;
                  case 0xBAu:
                    v401 = 2;
LABEL_839:
                    *&__p[20] = v401;
LABEL_1065:
                    *&__p[8] = 0x200000002;
                    break;
                  case 0xBBu:
                    v452 = 2;
LABEL_989:
                    *&__p[20] = v452;
                    *&__p[12] = v452;
                    goto LABEL_1070;
                  case 0xBCu:
                    v450 = 2;
LABEL_980:
                    *&__p[20] = v450;
                    *&__p[12] = v450;
                    goto LABEL_1045;
                  case 0xBDu:
                    *&__p[16] = 0x200000001;
                    break;
                  case 0xBEu:
                    *&__p[16] = 0x200000001;
                    goto LABEL_1058;
                  case 0xBFu:
                    *&__p[16] = 0x200000001;
                    goto LABEL_1055;
                  case 0xC0u:
                    v387 = 0x200000001;
                    goto LABEL_1004;
                  case 0xC1u:
                    v432 = 0x200000001;
                    goto LABEL_1008;
                  case 0xC2u:
                    *&__p[16] = 0x200000001;
                    goto LABEL_964;
                  case 0xC3u:
                    v417 = 0x200000001;
                    goto LABEL_1010;
                  case 0xC4u:
                    v391 = 0x200000001;
                    *&__p[16] = 0x200000001;
                    goto LABEL_1071;
                  case 0xC5u:
                    v449 = 0x200000001;
LABEL_1044:
                    *&__p[16] = v449;
LABEL_1045:
                    v391 = 0x200000002;
                    goto LABEL_1071;
                  case 0xC6u:
                    v427 = 2;
LABEL_891:
                    *&__p[20] = v427;
LABEL_892:
                    v380 = 0x100000001;
                    goto LABEL_1026;
                  case 0xC7u:
                    v388 = 2;
                    v411 = 0x100000001;
                    goto LABEL_901;
                  case 0xC8u:
                    v444 = 0x100000001;
                    goto LABEL_966;
                  case 0xC9u:
                    v394 = xmmword_29D2F1BD0;
                    goto LABEL_1016;
                  case 0xCAu:
                    v430 = 2;
LABEL_873:
                    *&__p[20] = v430;
                    *&v382 = 0x100000001;
                    *(&v382 + 1) = 0x100000001;
                    goto LABEL_1076;
                  case 0xCBu:
                    v404 = 2;
LABEL_959:
                    *&__p[20] = v404;
LABEL_960:
                    v382 = xmmword_29D2F1C40;
                    goto LABEL_1076;
                  case 0xCCu:
                    v394 = xmmword_29D2F1BC0;
                    goto LABEL_1016;
                  case 0xCDu:
                    v416 = 2;
LABEL_956:
                    *&__p[20] = v416;
LABEL_957:
                    v382 = xmmword_29D2F1C30;
                    goto LABEL_1076;
                  case 0xCEu:
                    v419 = 2;
LABEL_861:
                    *&__p[20] = v419;
LABEL_862:
                    v382 = xmmword_29D2F1C20;
                    goto LABEL_1076;
                  case 0xCFu:
                    v418 = 2;
LABEL_975:
                    *&__p[20] = v418;
LABEL_976:
                    v380 = 0x100000002;
                    goto LABEL_1026;
                  case 0xD0u:
                    v388 = 2;
                    v411 = 0x100000002;
                    goto LABEL_901;
                  case 0xD1u:
                    v428 = 0x100000002;
                    v399 = 2;
                    goto LABEL_1037;
                  case 0xD2u:
                    v394 = xmmword_29D2F1BB0;
                    goto LABEL_1016;
                  case 0xD3u:
                    v441 = 2;
LABEL_953:
                    *&__p[20] = v441;
LABEL_954:
                    v382 = xmmword_29D2F1C10;
                    goto LABEL_1076;
                  case 0xD4u:
                    v446 = 2;
LABEL_985:
                    *&__p[20] = v446;
LABEL_986:
                    v382 = xmmword_29D2F1C00;
                    goto LABEL_1076;
                  case 0xD5u:
                    v394 = xmmword_29D2F1BA0;
                    goto LABEL_1016;
                  case 0xD6u:
                    v400 = 2;
LABEL_970:
                    *&__p[20] = v400;
LABEL_971:
                    v382 = xmmword_29D2F1BF0;
                    goto LABEL_1076;
                  case 0xD7u:
                    v415 = 2;
LABEL_846:
                    *&__p[20] = v415;
LABEL_847:
                    v382 = xmmword_29D2F1BE0;
                    goto LABEL_1076;
                  case 0xD8u:
                    *&__p[16] = 0x200000002;
                    break;
                  case 0xD9u:
                    *&__p[16] = 0x200000002;
LABEL_1058:
                    v391 = 1;
                    goto LABEL_1071;
                  case 0xDAu:
                    *&__p[16] = 0x200000002;
LABEL_1055:
                    v391 = 2;
                    goto LABEL_1071;
                  case 0xDBu:
                    v387 = 0x200000002;
LABEL_1004:
                    *&__p[16] = v387;
LABEL_1005:
                    *&__p[8] = 1;
                    break;
                  case 0xDCu:
                    v432 = 0x200000002;
LABEL_1008:
                    *&__p[16] = v432;
                    v391 = 0x100000001;
                    goto LABEL_1071;
                  case 0xDDu:
                    *&__p[16] = 0x200000002;
LABEL_964:
                    v391 = 0x100000002;
                    goto LABEL_1071;
                  case 0xDEu:
                    v417 = 0x200000002;
LABEL_1010:
                    *&__p[16] = v417;
LABEL_1011:
                    *&__p[8] = 2;
                    break;
                  case 0xDFu:
                    *&__p[16] = 0x200000002;
LABEL_1070:
                    v391 = 0x200000001;
                    goto LABEL_1071;
                  case 0xE0u:
                    v391 = 0x200000002;
                    *&__p[16] = 0x200000002;
LABEL_1071:
                    *&__p[4] = v391;
                    break;
                  case 0xE1u:
                    v440 = 2;
LABEL_913:
                    *&__p[20] = v440;
LABEL_914:
                    v380 = 0x200000001;
                    goto LABEL_1026;
                  case 0xE2u:
                    v388 = 2;
                    v411 = 0x200000001;
                    goto LABEL_901;
                  case 0xE3u:
                    v428 = 0x200000001;
                    v399 = 2;
LABEL_1037:
                    *&__p[12] = v428;
                    goto LABEL_1038;
                  case 0xE4u:
                    v394 = xmmword_29D2F1B90;
                    goto LABEL_1016;
                  case 0xE5u:
                    v442 = 2;
LABEL_927:
                    *&__p[20] = v442;
LABEL_928:
                    v382 = xmmword_29D2F1BD0;
                    goto LABEL_1076;
                  case 0xE6u:
                    v409 = 2;
LABEL_879:
                    *&__p[20] = v409;
LABEL_880:
                    v382 = xmmword_29D2F1BC0;
                    goto LABEL_1076;
                  case 0xE7u:
                    v394 = xmmword_29D2F1B80;
                    goto LABEL_1016;
                  case 0xE8u:
                    v402 = 2;
LABEL_932:
                    *&__p[20] = v402;
LABEL_933:
                    v382 = xmmword_29D2F1BB0;
                    goto LABEL_1076;
                  case 0xE9u:
                    v436 = 2;
LABEL_1021:
                    *&__p[20] = v436;
LABEL_1022:
                    v382 = xmmword_29D2F1BA0;
                    goto LABEL_1076;
                  case 0xEAu:
                    v445 = 2;
LABEL_1024:
                    *&__p[20] = v445;
LABEL_1025:
                    v380 = 0x200000002;
LABEL_1026:
                    *&__p[12] = v380;
                    break;
                  case 0xEBu:
                    v388 = 2;
                    v411 = 0x200000002;
LABEL_901:
                    *&__p[12] = v411;
LABEL_902:
                    v439 = 1;
LABEL_1000:
                    *&__p[20] = v388;
                    *&__p[4] = v439;
                    break;
                  case 0xECu:
                    v444 = 0x200000002;
LABEL_966:
                    *&__p[12] = v444;
LABEL_967:
                    v399 = 2;
LABEL_1038:
                    *&__p[20] = v399;
                    *&__p[4] = v399;
                    break;
                  case 0xEDu:
                    v394 = xmmword_29D2F1B70;
                    goto LABEL_1016;
                  case 0xEEu:
                    v433 = 2;
LABEL_947:
                    *&__p[20] = v433;
LABEL_948:
                    v382 = xmmword_29D2F1B90;
                    goto LABEL_1076;
                  case 0xEFu:
                    v398 = 2;
LABEL_897:
                    *&__p[20] = v398;
LABEL_898:
                    v382 = xmmword_29D2F1B80;
                    goto LABEL_1076;
                  case 0xF0u:
                    *&v394 = 0x200000002;
                    *(&v394 + 1) = 0x200000002;
LABEL_1016:
                    *&__p[8] = v394;
                    break;
                  case 0xF1u:
                    v429 = 2;
LABEL_904:
                    *&__p[20] = v429;
LABEL_905:
                    v382 = xmmword_29D2F1B70;
                    goto LABEL_1076;
                  case 0xF2u:
                    v431 = 2;
LABEL_907:
                    *&__p[20] = v431;
LABEL_908:
                    *&v382 = 0x200000002;
                    *(&v382 + 1) = 0x200000002;
LABEL_1076:
                    *&__p[4] = v382;
                    break;
                  default:
                    memset(&__p[4], 0, 20);
                    break;
                }
              }

              __p[24] = byte_29D2F48C8[((*(v367 + 2) >> 10) & 0x38 | (*(v367 + 1) >> 13) | (*(v367 + 3) >> 5) & 0xC0) ^ 0x80];
              __p[36] |= 1u;
              *&__p[40] = v361 & 0xFFFFFFFFFFFFLL | (*&__p[46] << 48);
              AGXIotoInstruction_BL_1::emit(__p, v367);
              if ((v504 & 0x80000000) == 0)
              {
                goto LABEL_758;
              }

              goto LABEL_756;
            }

            v368 = v300[5];
          }

          else
          {
            if (v502 == 12)
            {
              memset(__p, 0, 28);
              v509 = -1;
              *&__p[28] = 0x300000069uLL;
              *&__p[44] = v481;
              v508 = 0;
              AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(__p, v367);
              HIDWORD(v508) = v361;
LABEL_739:
              AGXIotoInstruction_LDIMM::emit(__p, v367, v369, v370, v371, v372);
              if ((v504 & 0x80000000) == 0)
              {
                goto LABEL_758;
              }

              goto LABEL_756;
            }

            if (v502 != 13)
            {
              goto LABEL_755;
            }

            v368 = HIDWORD(v361);
          }

          memset(__p, 0, 28);
          v509 = -1;
          *&__p[28] = 0x300000069uLL;
          *&__p[44] = v481;
          v508 = 0;
          AGXIotoInstruction_LDIMM::AGXIotoInstruction_LDIMM(__p, v367);
          HIDWORD(v508) = v368;
          goto LABEL_739;
        }

        if (*(v292 + 24) != 1)
        {
          break;
        }

        v310 = *v277;
        if (!*v277)
        {
          break;
        }

        v311 = (v506.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v506.__r_.__value_.__r.__words[2]) : v506.__r_.__value_.__l.__size_;
        v312 = (v506.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v506 : v506.__r_.__value_.__r.__words[0];
        v313 = v277;
        do
        {
          v314 = *(v310 + 55);
          if (v314 >= 0)
          {
            v315 = *(v310 + 55);
          }

          else
          {
            v315 = *(v310 + 40);
          }

          if (v314 >= 0)
          {
            v316 = (v310 + 32);
          }

          else
          {
            v316 = *(v310 + 32);
          }

          if (v311 >= v315)
          {
            v317 = v315;
          }

          else
          {
            v317 = v311;
          }

          v318 = memcmp(v316, v312, v317);
          v319 = v315 < v311;
          if (v318)
          {
            v319 = v318 < 0;
          }

          v320 = !v319;
          if (v319)
          {
            v321 = 8;
          }

          else
          {
            v321 = 0;
          }

          if (v320)
          {
            v313 = v310;
          }

          v310 = *(v310 + v321);
        }

        while (v310);
        if (v313 == v277)
        {
          break;
        }

        v322 = *(v313 + 55);
        if (v322 >= 0)
        {
          v323 = *(v313 + 55);
        }

        else
        {
          v323 = v313[5];
        }

        if (v322 >= 0)
        {
          v324 = v313 + 4;
        }

        else
        {
          v324 = v313[4];
        }

        if (v323 >= v311)
        {
          v325 = v311;
        }

        else
        {
          v325 = v323;
        }

        v326 = memcmp(v312, v324, v325);
        v327 = v311 >= v323;
        if (v326)
        {
          v327 = v326 >= 0;
        }

        if (!v327)
        {
          break;
        }

        v330 = v313[7];
        v329 = (v313 + 7);
        v328 = v330;
        v331 = SHIBYTE(v329->__r_.__value_.__r.__words[2]);
        if (v331 >= 0)
        {
          v332 = v329;
        }

        else
        {
          v332 = v328;
        }

        if (v331 >= 0)
        {
          v333 = HIBYTE(v329->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v333 = v329->__r_.__value_.__l.__size_;
        }

        v334 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v332, v333);
        v335 = *(&v497 + 1);
        if (!*(&v497 + 1))
        {
          goto LABEL_594;
        }

        v336 = v334;
        v337 = vcnt_s8(*(&v497 + 8));
        v337.i16[0] = vaddlv_u8(v337);
        if (v337.u32[0] > 1uLL)
        {
          v338 = v334;
          if (v334 >= *(&v497 + 1))
          {
            v338 = v334 % *(&v497 + 1);
          }
        }

        else
        {
          v338 = (*(&v497 + 1) - 1) & v334;
        }

        v339 = *(v497 + 8 * v338);
        if (v339)
        {
          v300 = *v339;
          if (*v339)
          {
            if (v337.u32[0] < 2uLL)
            {
              v340 = *(&v497 + 1) - 1;
              while (1)
              {
                v345 = v300[1];
                if (v336 == v345)
                {
                  v346 = *(v300 + 39);
                  v347 = v346;
                  if ((v346 & 0x80u) != 0)
                  {
                    v346 = v300[3];
                  }

                  if (v346 == v333)
                  {
                    v348 = v347 >= 0 ? v300 + 2 : v300[2];
                    if (!memcmp(v348, v332, v333))
                    {
                      goto LABEL_595;
                    }
                  }
                }

                else if ((v345 & v340) != v338)
                {
                  goto LABEL_594;
                }

                v300 = *v300;
                if (!v300)
                {
                  goto LABEL_595;
                }
              }
            }

            do
            {
              v341 = v300[1];
              if (v336 == v341)
              {
                v342 = *(v300 + 39);
                v343 = v342;
                if ((v342 & 0x80u) != 0)
                {
                  v342 = v300[3];
                }

                if (v342 == v333)
                {
                  v344 = v343 >= 0 ? v300 + 2 : v300[2];
                  if (!memcmp(v344, v332, v333))
                  {
                    break;
                  }
                }
              }

              else
              {
                if (v341 >= v335)
                {
                  v341 %= v335;
                }

                if (v341 != v338)
                {
                  goto LABEL_594;
                }
              }

              v300 = *v300;
            }

            while (v300);
          }
        }

        else
        {
LABEL_594:
          v300 = 0;
        }

LABEL_595:
        std::string::operator=(&v506, v329);
        v292 = v490;
      }

      v349 = v486;
      v279 = v487;
      if (v486)
      {
        v350 = MEMORY[0x29EDBA0F8];
        AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createErrorString(__p, *a3, a3[1], &v497);
        v351 = __p[23] >= 0 ? __p : *__p;
        *v349 = [v350 stringWithUTF8String:v351];
        if ((__p[23] & 0x80000000) != 0)
        {
          v352 = *__p;
LABEL_757:
          operator delete(v352);
        }
      }

LABEL_758:
      v378 = v489;
      if (SHIBYTE(v506.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v506.__r_.__value_.__l.__data_);
      }

      if (!v300)
      {
        v455 = 0;
        v456 = *(&v511 + 1);
        if (*(&v511 + 1))
        {
          goto LABEL_1086;
        }

        goto LABEL_1088;
      }

      v280 = v378 + 5;
    }

    while (v280 != v488);
LABEL_1079:
    v453 = v485;
    if (v279[56])
    {
      v454 = v482;
      *(v466 + 8 * v482) = v279[53] + v485[1];
      *(v466 + 8 * (v454 + 1)) = 0;
      v482 = v454 + 1;
    }

    v278 = v453 + 10;
  }

  while (v278 != v483);
LABEL_1082:
  v455 = 1;
  v456 = *(&v511 + 1);
  if (!*(&v511 + 1))
  {
    goto LABEL_1088;
  }

LABEL_1086:
  if (!atomic_fetch_add(&v456->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v456->__on_zero_shared)(v456);
    std::__shared_weak_count::__release_weak(v456);
  }

LABEL_1088:
  v457 = *&__dst[24];
  if (*&__dst[24] && !atomic_fetch_add((*&__dst[24] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v457->__on_zero_shared)(v457);
    std::__shared_weak_count::__release_weak(v457);
  }

  v458 = *&__dst[8];
  if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v458->__on_zero_shared)(v458);
    std::__shared_weak_count::__release_weak(v458);
  }

LABEL_1094:
  v459 = v498;
  if (v498)
  {
    do
    {
      v465 = *v459;
      if (*(v459 + 39) < 0)
      {
        operator delete(v459[2]);
      }

      operator delete(v459);
      v459 = v465;
    }

    while (v465);
  }

  v460 = v497;
  *&v497 = 0;
  if (v460)
  {
    operator delete(v460);
  }

  v461 = v495[0];
  if (v495[0])
  {
    do
    {
      v462 = *v461;
      operator delete(v461);
      v461 = v462;
    }

    while (v462);
  }

  v463 = __n[0];
  __n[0] = 0;
  if (v463)
  {
    operator delete(v463);
  }

  return v455;
}

void sub_29CD52B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  std::unordered_map<unsigned long,AGX::FunctionCompiledEventInfo>::~unordered_map[abi:nn200100](&a39);
  AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DependentModuleDetails::~DependentModuleDetails(&a45);
  _Unwind_Resume(a1);
}

uint64_t AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::DependentModuleDetails::~DependentModuleDetails(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    do
    {
      v8 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v8;
    }

    while (v8);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

void AGX::DynamicLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::createErrorString(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  *(a1 + 23) = 19;
  strcpy(a1, "Undefined symbols:\n");
  if (a2 != a3)
  {
    while (1)
    {
      v35 = a2;
      v37 = *a2;
      v5 = *(*a2 + 352);
      v38 = *(*a2 + 360);
      if (v5 != v38)
      {
        break;
      }

LABEL_3:
      a2 = v35 + 10;
      if (v35 + 10 == a3)
      {
        return;
      }
    }

    while (1)
    {
      v6 = *(v5 + 31);
      if (v6 >= 0)
      {
        v7 = (v5 + 8);
      }

      else
      {
        v7 = *(v5 + 8);
      }

      if (v6 >= 0)
      {
        v8 = *(v5 + 31);
      }

      else
      {
        v8 = *(v5 + 16);
      }

      v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
      v10 = a4[1];
      if (v10)
      {
        v11 = v9;
        v12 = vcnt_s8(v10);
        v12.i16[0] = vaddlv_u8(v12);
        if (v12.u32[0] > 1uLL)
        {
          v13 = v9;
          if (v9 >= *&v10)
          {
            v13 = v9 % *&v10;
          }
        }

        else
        {
          v13 = (*&v10 - 1) & v9;
        }

        v14 = *(*a4 + 8 * v13);
        if (v14)
        {
          v15 = *v14;
          if (*v14)
          {
            if (v12.u32[0] < 2uLL)
            {
              v16 = *&v10 - 1;
              while (1)
              {
                v17 = v15[1];
                if (v11 == v17)
                {
                  v18 = *(v15 + 39);
                  v19 = v18;
                  if (v18 < 0)
                  {
                    v18 = v15[3];
                  }

                  if (v18 == v8)
                  {
                    v20 = v19 >= 0 ? (v15 + 2) : v15[2];
                    if (!memcmp(v20, v7, v8))
                    {
                      goto LABEL_6;
                    }
                  }
                }

                else if ((v17 & v16) != v13)
                {
                  goto LABEL_46;
                }

                v15 = *v15;
                if (!v15)
                {
                  goto LABEL_46;
                }
              }
            }

            do
            {
              v21 = v15[1];
              if (v11 == v21)
              {
                v22 = *(v15 + 39);
                v23 = v22;
                if (v22 < 0)
                {
                  v22 = v15[3];
                }

                if (v22 == v8)
                {
                  v24 = v23 >= 0 ? (v15 + 2) : v15[2];
                  if (!memcmp(v24, v7, v8))
                  {
                    goto LABEL_6;
                  }
                }
              }

              else
              {
                if (v21 >= *&v10)
                {
                  v21 %= *&v10;
                }

                if (v21 != v13)
                {
                  break;
                }
              }

              v15 = *v15;
            }

            while (v15);
          }
        }
      }

LABEL_46:
      std::operator+<char>();
      v25 = std::string::append(&v39, ", referenced from: ");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = (v37 + 8);
      if (*(v37 + 31) < 0)
      {
        v27 = *(v37 + 8);
      }

      v28 = std::string::append(&v40, v27);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v41.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v41.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v41, "\n");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v43 = v30->__r_.__value_.__r.__words[2];
      v42 = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v43 >= 0)
      {
        v32 = &v42;
      }

      else
      {
        v32 = v42;
      }

      if (v43 >= 0)
      {
        v33 = HIBYTE(v43);
      }

      else
      {
        v33 = *(&v42 + 1);
      }

      std::string::append(a1, v32, v33);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_56:
          if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

      operator delete(v41.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_62;
        }

        goto LABEL_6;
      }

LABEL_61:
      operator delete(v40.__r_.__value_.__l.__data_);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_62:
        operator delete(v39.__r_.__value_.__l.__data_);
      }

LABEL_6:
      v5 += 40;
      if (v5 == v38)
      {
        goto LABEL_3;
      }
    }
  }
}

void sub_29CD53454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
    if ((a32 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a25 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a25 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a19 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a20);
  if ((a19 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v32 + 23) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a14);
  if ((*(v32 + 23) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*v32);
  _Unwind_Resume(exception_object);
}

unsigned __int8 *AGXIotoInstruction_BL_1::emit(AGXIotoInstruction_BL_1 *this, unsigned __int8 *a2)
{
  LOWORD(v679) = 0;
  v2 = *(this + 24);
  v530 = v2 & 2;
  v528 = v530 == 0;
  v526 = (v2 & 1) == 0;
  v4 = (v2 & 0x80u) == 0;
  v5 = (v2 & 0x40) >> 6;
  v6 = (v2 & 0x80u) != 0 || (v2 & 0x40) == 0;
  v3 = *(this + 24);
  v7 = v3 < 0xC0;
  v8 = (v2 & 0x20) == 0;
  v9 = (v2 & 0x20) >> 5;
  v10 = (v2 & 0x20) == 0 || v3 < 0xC0;
  v11 = (v2 & 0x20) == 0 || v6;
  v12 = (v2 & 0x10) == 0;
  v13 = (v2 & 0x10) >> 4;
  v14 = (v2 & 0x10) == 0 || v10;
  if ((v2 & 0x10) != 0)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1;
  }

  v16 = (v2 & 8) == 0;
  v17 = (v2 & 8) >> 3;
  v18 = ((v2 & 0x80u) != 0) | v5;
  v19 = v18 | v9 | v13;
  v653 = v19 | v17;
  v649 = v19 | v16;
  v20 = v18 | v9 | v12;
  v651 = v20 | v17;
  v21 = v18 | v8;
  v22 = v18 | v8 | v13;
  v23 = v22 | v17;
  v24 = v6 | v9;
  v25 = v24 | v13 | v17;
  v26 = v4 | v5 | v9;
  v27 = v26 | v13;
  v28 = v20 | v16;
  v29 = v22 | v16;
  v30 = v8 | v4 | v5;
  v31 = v21 | v12 | v17;
  v32 = v21 | v12 | v16;
  v33 = v24 | v13 | v16;
  v34 = v24 | v12;
  v35 = v11 | v13;
  v36 = v26 | v12;
  v37 = v7 | v9;
  v38 = v30 | v13;
  v39 = v30 | v12;
  v40 = v12 | v37;
  v41 = v37 | v13;
  v42 = v10 | v13;
  v43 = v34 | v17;
  v44 = v34 | v16;
  v45 = v35 | v17;
  v46 = v35 | v16;
  v47 = v27 | v17;
  v48 = v27 | v16;
  v49 = v36 | v17;
  v50 = v36 | v16;
  v51 = v38 | v17;
  v52 = v38 | v16;
  v53 = v39 | v17;
  v54 = v39 | v16;
  v655 = v41 | v17;
  v55 = v41 | v16;
  v657 = v40 | v17;
  v659 = v40 | v16;
  v665 = v42 | v16;
  v56 = v42 | v17;
  if ((v2 & 8) != 0)
  {
    v57 = v14;
  }

  else
  {
    v57 = 1;
  }

  v667 = v14 | v17;
  v58 = v15 | v17;
  if ((v2 & 8) == 0)
  {
    v15 = 1;
  }

  v59 = v15 ^ 1;
  if ((v2 & 4) != 0)
  {
    v59 = 0;
  }

  v673 = v59;
  if ((v2 & 4) == 0)
  {
    v15 = 1;
  }

  v583 = v15;
  if ((v2 & 4) != 0)
  {
    v60 = v57;
  }

  else
  {
    v60 = 1;
  }

  v61 = v57 ^ 1;
  if ((v2 & 4) != 0)
  {
    v61 = 0;
  }

  v677 = v61;
  v62 = (v2 & 4) == 0;
  v536 = v2;
  v661 = v62 & (v653 ^ 1);
  v671 = v62 & (v649 ^ 1);
  v663 = v62 & (v651 ^ 1);
  v522 = v23;
  v669 = v62 & (v23 ^ 1);
  v541 = v25;
  v63 = v62 & (v25 ^ 1);
  v514 = v47;
  v675 = v60 ^ 1;
  v512 = v28;
  v516 = v29;
  v502 = v31;
  v506 = v32;
  v510 = v33;
  v496 = v43;
  v498 = v44;
  v504 = v45;
  v508 = v46;
  v500 = v58;
  v518 = v48;
  v64 = v62 & (v48 ^ 1);
  v520 = v49;
  v65 = v62 & (v49 ^ 1);
  v524 = v50;
  v66 = v62 & (v50 ^ 1);
  v532 = v51;
  v67 = v62 & (v51 ^ 1);
  v534 = v52;
  v68 = v62 & (v52 ^ 1);
  v538 = v53;
  v543 = v54;
  v69 = v62 & (v54 ^ 1);
  v545 = v55;
  v547 = v56;
  v70 = v62 & (v56 ^ 1);
  v603 = (v2 & 3) == 0;
  v71 = v62 & (v653 ^ 1);
  if ((v2 & 3) != 0)
  {
    v71 = 0;
  }

  v648 = v71;
  v72 = v62 & (v649 ^ 1);
  if ((v2 & 3) != 0)
  {
    v72 = 0;
  }

  v636 = v72;
  v73 = v62 & (v651 ^ 1);
  if ((v2 & 3) != 0)
  {
    v73 = 0;
  }

  v635 = v73;
  v74 = v62 & (v23 ^ 1);
  if ((v2 & 3) != 0)
  {
    v74 = 0;
  }

  v634 = v74;
  v559 = v63;
  if ((v2 & 3) != 0)
  {
    v75 = 0;
  }

  else
  {
    v75 = v63;
  }

  v633 = v75;
  v577 = v62 & (v47 ^ 1);
  if ((v2 & 3) != 0)
  {
    v76 = 0;
  }

  else
  {
    v76 = v62 & (v47 ^ 1);
  }

  v632 = v76;
  v549 = v62 & (v28 ^ 1);
  if ((v2 & 3) != 0)
  {
    v77 = 0;
  }

  else
  {
    v77 = v62 & (v28 ^ 1);
  }

  v605 = v77;
  v551 = v62 & (v29 ^ 1);
  if ((v2 & 3) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = v62 & (v29 ^ 1);
  }

  v606 = v78;
  v553 = v62 & (v31 ^ 1);
  if ((v2 & 3) != 0)
  {
    v79 = 0;
  }

  else
  {
    v79 = v62 & (v31 ^ 1);
  }

  v607 = v79;
  v555 = v62 & (v32 ^ 1);
  if ((v2 & 3) != 0)
  {
    v80 = 0;
  }

  else
  {
    v80 = v62 & (v32 ^ 1);
  }

  v608 = v80;
  v557 = v62 & (v33 ^ 1);
  if ((v2 & 3) != 0)
  {
    v81 = 0;
  }

  else
  {
    v81 = v62 & (v33 ^ 1);
  }

  v609 = v81;
  v561 = v62 & (v43 ^ 1);
  if ((v2 & 3) != 0)
  {
    v82 = 0;
  }

  else
  {
    v82 = v62 & (v43 ^ 1);
  }

  v610 = v82;
  v563 = v62 & (v44 ^ 1);
  if ((v2 & 3) != 0)
  {
    v83 = 0;
  }

  else
  {
    v83 = v62 & (v44 ^ 1);
  }

  v611 = v83;
  v565 = v62 & (v45 ^ 1);
  if ((v2 & 3) != 0)
  {
    v84 = 0;
  }

  else
  {
    v84 = v62 & (v45 ^ 1);
  }

  v612 = v84;
  v567 = v62 & (v46 ^ 1);
  if ((v2 & 3) != 0)
  {
    v85 = 0;
  }

  else
  {
    v85 = v62 & (v46 ^ 1);
  }

  v613 = v85;
  v569 = v62 & (v58 ^ 1);
  if ((v2 & 3) != 0)
  {
    v86 = 0;
  }

  else
  {
    v86 = v62 & (v58 ^ 1);
  }

  v614 = v86;
  v87 = v673;
  if ((v2 & 3) != 0)
  {
    v87 = 0;
  }

  v615 = v87;
  v571 = v64;
  if ((v2 & 3) != 0)
  {
    v88 = 0;
  }

  else
  {
    v88 = v64;
  }

  v616 = v88;
  v573 = v65;
  if ((v2 & 3) != 0)
  {
    v89 = 0;
  }

  else
  {
    v89 = v65;
  }

  v617 = v89;
  v575 = v66;
  if ((v2 & 3) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = v66;
  }

  v618 = v90;
  v579 = v67;
  if ((v2 & 3) != 0)
  {
    v91 = 0;
  }

  else
  {
    v91 = v67;
  }

  v619 = v91;
  v581 = v68;
  if ((v2 & 3) != 0)
  {
    v92 = 0;
  }

  else
  {
    v92 = v68;
  }

  v620 = v92;
  v585 = v62 & (v53 ^ 1);
  if ((v2 & 3) != 0)
  {
    v93 = 0;
  }

  else
  {
    v93 = v62 & (v53 ^ 1);
  }

  v621 = v93;
  v587 = v69;
  if ((v2 & 3) != 0)
  {
    v94 = 0;
  }

  else
  {
    v94 = v69;
  }

  v622 = v94;
  v589 = v62 & (v655 ^ 1);
  if ((v2 & 3) != 0)
  {
    v95 = 0;
  }

  else
  {
    v95 = v62 & (v655 ^ 1);
  }

  v623 = v95;
  v591 = v62 & (v55 ^ 1);
  if ((v2 & 3) != 0)
  {
    v96 = 0;
  }

  else
  {
    v96 = v62 & (v55 ^ 1);
  }

  v624 = v96;
  v593 = v62 & (v657 ^ 1);
  if ((v2 & 3) != 0)
  {
    v97 = 0;
  }

  else
  {
    v97 = v62 & (v657 ^ 1);
  }

  v625 = v97;
  v595 = v62 & (v659 ^ 1);
  if ((v2 & 3) != 0)
  {
    v98 = 0;
  }

  else
  {
    v98 = v62 & (v659 ^ 1);
  }

  v626 = v98;
  v597 = v70;
  if ((v2 & 3) != 0)
  {
    v99 = 0;
  }

  else
  {
    v99 = v70;
  }

  v627 = v99;
  v599 = v62 & (v665 ^ 1);
  if ((v2 & 3) != 0)
  {
    v100 = 0;
  }

  else
  {
    v100 = v62 & (v665 ^ 1);
  }

  v628 = v100;
  v601 = v62 & (v667 ^ 1);
  if ((v2 & 3) != 0)
  {
    v101 = 0;
  }

  else
  {
    v101 = v62 & (v667 ^ 1);
  }

  v629 = v101;
  v102 = v61;
  if ((v2 & 3) != 0)
  {
    v102 = 0;
  }

  v630 = v102;
  v103 = v675;
  if ((v2 & 3) != 0)
  {
    v103 = 0;
  }

  v631 = v103;
  v105 = *(this + 4);
  v104 = *(this + 5);
  v107 = *(this + 1);
  v106 = *(this + 2);
  v108 = *(this + 3);
  v109 = v104 | v105 | v108;
  if (v107)
  {
    v110 = 0;
  }

  else
  {
    v110 = v106 == 1;
  }

  if (v107)
  {
    v111 = 0;
  }

  else
  {
    v111 = v106 == 2;
  }

  v112 = v107 == 1 && v106 == 0;
  v113 = v107 == 1 && v106 == 1;
  v114 = v107 == 1 && v106 == 2;
  v115 = v107 == 2 && v106 == 0;
  v116 = v107 == 2 && v106 == 1;
  v117 = v107 == 2 && v106 == 2;
  v118 = v109 == 0;
  v374 = v109 == 0;
  v354 = v115;
  if (v109)
  {
    v119 = 0;
  }

  else
  {
    v119 = v115;
  }

  v365 = v119;
  v351 = v116;
  v120 = v118 && v116;
  v364 = v120;
  v353 = v110;
  v121 = v118 && v110;
  v363 = v121;
  v355 = v112;
  v122 = v118 && v112;
  v362 = v122;
  v352 = v113;
  v123 = v118 && v113;
  v361 = v123;
  v350 = v111;
  if (!v118)
  {
    v111 = 0;
  }

  v360 = v111;
  v349 = v114;
  v124 = v118 && v114;
  v359 = v124;
  v348 = v117;
  v125 = v118 && v117;
  v358 = v125;
  v126 = v104 != 1;
  v127 = v104 != 2;
  if (v105)
  {
    v128 = 1;
  }

  else
  {
    v128 = v104 != 1;
  }

  if (v105)
  {
    v129 = 1;
  }

  else
  {
    v129 = v104 != 2;
  }

  v130 = v105 != 1 || v104 != 0;
  v131 = v105 != 1 || v104 != 1;
  v132 = v105 != 1 || v104 != 2;
  v133 = v105 == 2;
  v134 = v106 | v107;
  v135 = !v133 || v104 != 0;
  if (!v133)
  {
    v126 = 1;
    v127 = 1;
  }

  if (v108)
  {
    v136 = 1;
  }

  else
  {
    v136 = v130;
  }

  if (v108)
  {
    v137 = 1;
  }

  else
  {
    v137 = v135;
  }

  if (v108)
  {
    v138 = 1;
  }

  else
  {
    v138 = v128;
  }

  if (v108)
  {
    v139 = 1;
  }

  else
  {
    v139 = v131;
  }

  if (v108)
  {
    v140 = 1;
  }

  else
  {
    v140 = v126;
  }

  if (v108)
  {
    v141 = 1;
  }

  else
  {
    v141 = v129;
  }

  if (v108)
  {
    v142 = 1;
  }

  else
  {
    v142 = v132;
  }

  v643 = v142;
  if (v108)
  {
    v143 = 1;
  }

  else
  {
    v143 = v127;
  }

  v645 = v143;
  v144 = v108 != 1 || *(this + 2) != 0;
  v145 = v108 != 1 || v130;
  v146 = v108 != 1 || v135;
  v147 = v108 != 1 || v128;
  v148 = v108 != 1 || v131;
  v149 = v108 != 1 || v126;
  v150 = v108 != 1 || v129;
  v151 = v108 != 1 || v132;
  v639 = v151;
  v152 = v108 != 1 || v127;
  v641 = v152;
  v153 = v108 == 2;
  v154 = v108 != 2 || *(this + 2) != 0;
  v155 = !v153 || v130;
  if (v153)
  {
    v156 = v126;
  }

  else
  {
    v135 = 1;
    v128 = 1;
    v131 = 1;
    v156 = 1;
  }

  v157 = !v153 || v129;
  if (v153)
  {
    v158 = v127;
  }

  else
  {
    v132 = 1;
    v158 = 1;
  }

  v637 = v158;
  v159 = v134 == 0;
  v160 = !v144;
  v161 = !v154;
  v162 = v136 ^ 1;
  v163 = v145 ^ 1;
  v164 = v137 ^ 1;
  v165 = v138 ^ 1;
  v166 = !v128;
  v167 = v148 ^ 1;
  v168 = v140 ^ 1;
  v169 = v149 ^ 1;
  v170 = v156 ^ 1;
  v171 = v141 ^ 1;
  v172 = v150 ^ 1;
  v173 = !v132;
  v174 = v159;
  v373 = v174;
  v356 = !v144;
  if (!v159)
  {
    v160 = 0;
  }

  v357 = v160;
  v347 = !v154;
  if (!v159)
  {
    v161 = 0;
  }

  v346 = v161;
  v326 = v162;
  v327 = v163;
  if (v159)
  {
    v175 = v162;
  }

  else
  {
    v175 = 0;
  }

  if (!v159)
  {
    v163 = 0;
  }

  v323 = v175;
  v324 = v163;
  if (v159)
  {
    v176 = v155 ^ 1;
  }

  else
  {
    v176 = 0;
  }

  v325 = v176;
  if (v159)
  {
    v177 = v164;
  }

  else
  {
    v177 = 0;
  }

  v333 = v146 ^ 1;
  v334 = !v135;
  if (v159)
  {
    v178 = v146 ^ 1;
  }

  else
  {
    v178 = 0;
  }

  v328 = v178;
  v329 = v155 ^ 1;
  v179 = v159 && !v135;
  v330 = v179;
  v331 = v164;
  v336 = v165;
  v337 = v147 ^ 1;
  if (v159)
  {
    v180 = v165;
  }

  else
  {
    v180 = 0;
  }

  v332 = v180;
  if (v159)
  {
    v181 = v147 ^ 1;
  }

  else
  {
    v181 = 0;
  }

  v339 = !v128;
  if (!v159)
  {
    v166 = 0;
  }

  v335 = v166;
  if (v159)
  {
    v182 = v139 ^ 1;
  }

  else
  {
    v182 = 0;
  }

  v343 = v167;
  v344 = !v131;
  if (!v159)
  {
    v167 = 0;
  }

  v338 = v167;
  v183 = v159 && !v131;
  v184 = v170;
  v340 = v183;
  v341 = v139 ^ 1;
  v345 = v168;
  if (v159)
  {
    v185 = v168;
  }

  else
  {
    v185 = 0;
  }

  v342 = v185;
  v186 = v169;
  if (v159)
  {
    v187 = v169;
  }

  else
  {
    v187 = 0;
  }

  v188 = v171;
  if (v159)
  {
    v189 = v170;
  }

  else
  {
    v189 = 0;
  }

  if (v159)
  {
    v190 = v171;
  }

  else
  {
    v190 = 0;
  }

  if (v159)
  {
    v191 = v150 ^ 1;
  }

  else
  {
    v191 = 0;
  }

  if (v159)
  {
    v192 = v157 ^ 1;
  }

  else
  {
    v192 = 0;
  }

  if (v159)
  {
    v193 = v643 ^ 1;
  }

  else
  {
    v193 = 0;
  }

  if (v159)
  {
    v194 = v639 ^ 1;
  }

  else
  {
    v194 = 0;
  }

  if (v159)
  {
    v195 = v173;
  }

  else
  {
    v195 = 0;
  }

  if (v159)
  {
    v196 = v645 ^ 1;
  }

  else
  {
    v196 = 0;
  }

  if (v159)
  {
    v197 = v641 ^ 1;
  }

  else
  {
    v197 = 0;
  }

  if (v159)
  {
    v198 = v637 ^ 1;
  }

  else
  {
    v198 = 0;
  }

  LOWORD(v199) = 126;
  if (*(this + 7) != 20 || (v322 = v177, *(this + 8) != 3) || (v321 = v187, v366 = *(this + 5), (v366 & 1) != 0))
  {
    LOWORD(v253) = 0;
    LOWORD(v254) = 0;
    v252 = 3601;
    goto LABEL_388;
  }

  v294 = v181;
  v295 = v182;
  v296 = v189;
  v297 = v190;
  v298 = v186;
  v299 = v191;
  v300 = v184;
  v301 = v188;
  v302 = v192;
  v303 = v172;
  v304 = v193;
  v305 = v157 ^ 1;
  v306 = v194;
  v307 = v643 ^ 1;
  v308 = v195;
  v309 = v639 ^ 1;
  v310 = v196;
  v311 = v173;
  v312 = v197;
  v313 = v645 ^ 1;
  v314 = v198;
  v315 = v641 ^ 1;
  v316 = v637 ^ 1;
  v200 = v528 & v536;
  v201 = (v530 >> 1) & v526;
  v202 = (v530 >> 1) & v536;
  v539 = v538 | v62;
  v371 = v543 | v62;
  v369 = v655 | v62;
  v367 = v545 | v62;
  v203 = v657 | v62;
  v204 = v659 | v62;
  v205 = v547 | v62;
  v206 = v665 | v62;
  v207 = v667 | v62;
  v208 = (v653 | v62) ^ 1;
  v209 = v661 & v528 & v536;
  v210 = v661 & v201;
  v668 = v661 & v202;
  LODWORD(v254) = (v649 | v62) ^ 1;
  v253 = v208 & v603;
  v666 = v208 & v528 & v536;
  v662 = v208 & v201;
  v660 = v208 & v202;
  v658 = v663 & v528 & v536;
  v656 = v663 & v201;
  v664 = v663 & v202;
  v211 = (v651 | v62) ^ 1;
  v654 = v211 & v603;
  v652 = v211 & v528 & v536;
  v650 = v211 & v201;
  v375 = v211 & v202;
  v376 = v549 & v528 & v536;
  v377 = v549 & v201;
  v378 = v549 & v202;
  v212 = (v512 | v62) ^ 1;
  v379 = v212 & v603;
  v380 = v212 & v528 & v536;
  v381 = v212 & v201;
  v382 = v212 & v202;
  v213 = v671 & v528 & v536;
  v214 = v671 & v201;
  v383 = v671 & v202;
  v384 = v669 & v528 & v536;
  v385 = v669 & v201;
  v386 = v669 & v202;
  v215 = (v522 | v62) ^ 1;
  v387 = v215 & v603;
  v388 = v215 & v528 & v536;
  v389 = v215 & v201;
  v390 = v215 & v202;
  v391 = v551 & v528 & v536;
  v392 = v551 & v201;
  v393 = v551 & v202;
  v216 = (v516 | v62) ^ 1;
  v394 = v216 & v603;
  v395 = v216 & v528 & v536;
  v396 = v216 & v201;
  v397 = v216 & v202;
  v398 = v553 & v528 & v536;
  v399 = v553 & v201;
  v400 = v553 & v202;
  v217 = (v502 | v62) ^ 1;
  v401 = v217 & v603;
  v402 = v217 & v528 & v536;
  v403 = v217 & v201;
  v404 = v217 & v202;
  v405 = v555 & v528 & v536;
  v406 = v555 & v201;
  v407 = v555 & v202;
  v218 = (v506 | v62) ^ 1;
  v408 = v218 & v603;
  v409 = v218 & v528 & v536;
  v410 = v218 & v201;
  v411 = v218 & v202;
  v412 = v559 & v528 & v536;
  v413 = v559 & v201;
  v414 = v559 & v202;
  v415 = ((v541 | v62) ^ 1) & v603;
  v416 = ((v541 | v62) ^ 1) & v528 & v536;
  v417 = ((v541 | v62) ^ 1) & v201;
  v418 = ((v541 | v62) ^ 1) & v202;
  v419 = v557 & v528 & v536;
  v420 = v557 & v201;
  v421 = v557 & v202;
  v219 = (v510 | v62) ^ 1;
  v422 = v219 & v603;
  v423 = v219 & v528 & v536;
  v424 = v219 & v201;
  v425 = v219 & v202;
  v426 = v561 & v528 & v536;
  v427 = v561 & v201;
  v428 = v561 & v202;
  v220 = (v496 | v62) ^ 1;
  v429 = v220 & v603;
  v430 = v220 & v528 & v536;
  v431 = v220 & v201;
  v432 = v220 & v202;
  v433 = v563 & v528 & v536;
  v434 = v563 & v201;
  v435 = v563 & v202;
  v221 = (v498 | v62) ^ 1;
  v436 = v221 & v603;
  v437 = v221 & v528 & v536;
  v438 = v221 & v201;
  v439 = v221 & v202;
  v440 = v565 & v528 & v536;
  v441 = v565 & v201;
  v442 = v565 & v202;
  v222 = (v504 | v62) ^ 1;
  v443 = v222 & v603;
  v444 = v222 & v528 & v536;
  v445 = v222 & v201;
  v446 = v222 & v202;
  v447 = v567 & v528 & v536;
  v448 = v567 & v201;
  v449 = v567 & v202;
  v223 = (v508 | v62) ^ 1;
  v450 = v223 & v603;
  v451 = v223 & v528 & v536;
  v452 = v223 & v201;
  v453 = v223 & v202;
  v454 = v569 & v528 & v536;
  v455 = v569 & v201;
  v456 = v569 & v202;
  v224 = (v500 | v62) ^ 1;
  v457 = v224 & v603;
  v458 = v224 & v528 & v536;
  v459 = v224 & v201;
  v460 = v224 & v202;
  v461 = v673 & v528 & v536;
  v462 = v673 & v201;
  v463 = v673 & v202;
  v464 = (v583 ^ 1) & v603;
  v465 = (v583 ^ 1) & v528 & v536;
  v466 = (v583 ^ 1) & v201;
  v467 = (v583 ^ 1) & v202;
  v468 = v577 & v528 & v536;
  v469 = v577 & v201;
  v470 = v577 & v202;
  v225 = (v514 | v62) ^ 1;
  v471 = v225 & v603;
  v472 = v225 & v528 & v536;
  v473 = v225 & v201;
  v474 = v225 & v202;
  v475 = v571 & v528 & v536;
  v476 = v571 & v201;
  v477 = v571 & v202;
  v226 = (v518 | v62) ^ 1;
  v478 = v226 & v603;
  v479 = v226 & v528 & v536;
  v480 = v226 & v201;
  v481 = v226 & v202;
  v482 = v573 & v528 & v536;
  v483 = v573 & v201;
  v484 = v573 & v202;
  v227 = (v520 | v62) ^ 1;
  v485 = v227 & v603;
  v486 = v227 & v528 & v536;
  v487 = v227 & v201;
  v488 = v227 & v202;
  v489 = v575 & v528 & v536;
  v490 = v575 & v201;
  v491 = v575 & v202;
  v228 = (v524 | v62) ^ 1;
  v492 = v228 & v603;
  v493 = v228 & v528 & v536;
  v494 = v228 & v201;
  v495 = v228 & v202;
  v497 = v579 & v528 & v536;
  v499 = v579 & v201;
  v501 = v579 & v202;
  v229 = (v532 | v62) ^ 1;
  v503 = v229 & v603;
  v505 = v229 & v528 & v536;
  v507 = v229 & v201;
  v509 = v229 & v202;
  v511 = v581 & v528 & v536;
  v513 = v581 & v201;
  v515 = v581 & v202;
  v230 = (v534 | v62) ^ 1;
  v517 = v230 & v603;
  v519 = v230 & v528 & v536;
  v521 = v230 & v201;
  v523 = v230 & v202;
  v525 = v585 & v528 & v536;
  v527 = v585 & v201;
  v529 = v585 & v202;
  v531 = (v539 ^ 1) & v603;
  v533 = (v539 ^ 1) & v200;
  v535 = (v539 ^ 1) & v201;
  v537 = (v539 ^ 1) & v202;
  v540 = v587 & v200;
  v542 = v587 & v201;
  v544 = v587 & v202;
  v546 = (v371 ^ 1) & v603;
  v548 = (v371 ^ 1) & v200;
  v550 = (v371 ^ 1) & v201;
  v552 = (v371 ^ 1) & v202;
  v554 = v589 & v200;
  v556 = v589 & v201;
  v558 = v589 & v202;
  v560 = (v369 ^ 1) & v603;
  v562 = (v369 ^ 1) & v200;
  v564 = (v369 ^ 1) & v201;
  v566 = (v369 ^ 1) & v202;
  v568 = v591 & v200;
  v570 = v591 & v201;
  v572 = v591 & v202;
  v574 = (v367 ^ 1) & v603;
  v576 = (v367 ^ 1) & v200;
  v578 = (v367 ^ 1) & v201;
  v580 = (v367 ^ 1) & v202;
  v582 = v593 & v200;
  v584 = v593 & v201;
  v586 = v593 & v202;
  v231 = v203 ^ 1;
  v232 = (v203 ^ 1) & v603;
  v233 = v231 & v200;
  v234 = v231 & v201;
  v235 = v231 & v202;
  v588 = v595 & v200;
  v590 = v595 & v201;
  v592 = v595 & v202;
  v594 = (v204 ^ 1) & v603;
  v596 = (v204 ^ 1) & v200;
  v638 = (v204 ^ 1) & v201;
  v640 = (v204 ^ 1) & v202;
  v642 = v597 & v200;
  v644 = v597 & v201;
  v646 = v597 & v202;
  v236 = (v205 ^ 1) & v603;
  v670 = (v205 ^ 1) & v200;
  v368 = (v205 ^ 1) & v201;
  v370 = (v205 ^ 1) & v202;
  v672 = v599 & v200;
  v674 = v599 & v201;
  v237 = v599 & v202;
  v238 = (v206 ^ 1) & v603;
  v239 = (v206 ^ 1) & v200;
  v240 = (v206 ^ 1) & v201;
  v372 = (v206 ^ 1) & v202;
  v598 = v601 & v200;
  v600 = v601 & v201;
  v602 = v601 & v202;
  v241 = v207 ^ 1;
  v242 = v254 & v603;
  v243 = v241 & v603;
  v244 = v241 & v200;
  v245 = v241 & v201;
  v246 = v241 & v202;
  v247 = v254 & v200;
  v248 = v677 & v200;
  v604 = v675 & v200;
  v249 = v675 & v202;
  v250 = v675 & v201;
  v199 = v254 & v201;
  v251 = v677 & v201;
  v676 = v253;
  v320 = v213;
  LOBYTE(v241) = v401 | v607 | v396 | v397 | v398 | v399 | v400 | v402 | v403 | v404 | v394 | v606 | v388 | v389 | v390 | v391 | v392 | v393 | v395 | v387 | v380 | v381 | v382 | v383 | v384 | v385 | v386 | v379 | v605 | v650 | v375 | v376 | v377 | v378 | v654 | v660 | v658 | v656 | v664 | v652 | v242 | v666 | v662 | v213 | v214 | v632 | v633 | v249 | v668 | v634 | v635 | v636 | v253 | v210 | v648 | v209;
  v317 = v247;
  v319 = v199;
  LOBYTE(v241) = v621 | v517 | v620 | v503 | v619 | v495 | v497 | v499 | v501 | v505 | v507 | v509 | v511 | v513 | v515 | v519 | v521 | v523 | v492 | v618 | v485 | v617 | v480 | v481 | v482 | v483 | v484 | v486 | v487 | v488 | v489 | v490 | v491 | v493 | v494 | v478 | v616 | v471 | v465 | v466 | v467 | v199 | v468 | v469 | v470 | v472 | v473 | v474 | v475 | v476 | v477 | v479 | v464 | v615 | v457 | v614 | v451 | v452 | v453 | v454 | v455 | v456 | v458 | v459 | v460 | v461 | v462 | v463 | v450 | v613 | v443 | v612 | v438 | v439 | v440 | v441 | v442 | v444 | v445 | v446 | v447 | v448 | v449 | v436 | v611 | v429 | v610 | v426 | v427 | v428 | v430 | v431 | v432 | v433 | v434 | v435 | v437 | v422 | v609 | v415 | v414 | v416 | v417 | v418 | v419 | v420 | v421 | v423 | v424 | v425 | v408 | v608 | v405 | v406 | v407 | v409 | v410 | v411 | v247 | v412 | v413 | v241;
  v252 = 3601;
  LOWORD(v199) = 126;
  v318 = v254 & v202;
  LOBYTE(v241) = v631 | v630 | v243 | v629 | v372 | v598 | v600 | v602 | v244 | v245 | v246 | v248 | v251 | v677 & v202 | v604 | v250 | v254 & v202 | v238 | v628 | v236 | v627 | v594 | v588 | v590 | v592 | v596 | v638 | v640 | v642 | v644 | v646 | v670 | v368 | v370 | v672 | v674 | v237 | v239 | v240 | v626 | v232 | v625 | v574 | v624 | v560 | v562 | v564 | v566 | v568 | v570 | v572 | v576 | v578 | v580 | v582 | v584 | v586 | v233 | v234 | v235 | v623 | v546 | v622 | v531 | v525 | v527 | v529 | v533 | v535 | v537 | v540 | v542 | v544 | v548 | v550 | v552 | v554 | v556 | v558 | v241;
  LOWORD(v253) = 0;
  LOWORD(v254) = 0;
  if (v241)
  {
    v199 = (v366 >> 2) & 0xF00 | (((v366 >> 1) & 1) << 7) & 0xFFFF8FFF | (((v366 >> 2) & 7) << 12) | 0x7E;
    v679 = (v366 >> 15) & 0x1F;
    v254 = (v366 >> 33) & 0x7FFF;
    v255 = (v366 >> 4) & 2 | (v366 >> 3) & 8 | (v366 >> 2) & 0x10E0 | (4 * (*this & 1));
    v252 = v255 | 0xE11;
    v253 = (v366 >> 17) & 0xFFFFC000 | (v366 >> 20) & 0x7FF | ((*(this + 36) & 1) << 13);
    if (v374 & v373)
    {
      goto LABEL_346;
    }

    if (v365)
    {
      v256 = v679 | 0x20;
LABEL_345:
      LOWORD(v679) = v256;
      goto LABEL_346;
    }

    if (v364)
    {
      v256 = v679 | 0x40;
      goto LABEL_345;
    }

    if (v363)
    {
      v256 = v679 | 0x60;
      goto LABEL_345;
    }

    if (v362)
    {
      v256 = v679 | 0x80;
      goto LABEL_345;
    }

    if (v361)
    {
      v257 = 160;
    }

    else
    {
      if (v360)
      {
        v256 = v679 | 0xC0;
        goto LABEL_345;
      }

      if (v359)
      {
        v256 = v679 | 0xE0;
        goto LABEL_345;
      }

      if (v358)
      {
        v256 = v679 | 0x100;
        goto LABEL_345;
      }

      if (v357)
      {
        v257 = 288;
      }

      else if ((v356 & v355) != 0)
      {
        v257 = 320;
      }

      else
      {
        if ((v356 & v354) == 0)
        {
          if ((v356 & v353) != 0)
          {
            v256 = v679 | 0x180;
            goto LABEL_345;
          }

          v262 = (v366 >> 15) & 0x1F;
          if ((v356 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1A0;
          }

          else if ((v356 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1C0;
          }

          else if ((v356 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1E0;
          }

          else if ((v356 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x200;
          }

          else if ((v356 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x220;
          }

          else if (v346)
          {
            LOWORD(v262) = v679 | 0x240;
          }

          else if ((v347 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x260;
          }

          else if ((v347 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x280;
          }

          else if ((v347 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x2A0;
          }

          else if ((v347 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x2C0;
          }

          else if ((v347 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x2E0;
          }

          else if ((v347 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x300;
          }

          else if ((v347 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x320;
          }

          else if ((v347 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x340;
          }

          else if (v323)
          {
            LOWORD(v262) = v679 | 0x360;
          }

          else if ((v326 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x380;
          }

          else if ((v326 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x3A0;
          }

          else if ((v326 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x3C0;
          }

          else if ((v326 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x3E0;
          }

          else if ((v326 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x400;
          }

          else if ((v326 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x420;
          }

          else if ((v326 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x440;
          }

          else if ((v326 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x460;
          }

          else if (v324)
          {
            LOWORD(v262) = v679 | 0x480;
          }

          else if ((v327 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x4A0;
          }

          else if ((v327 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x4C0;
          }

          else if ((v327 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x4E0;
          }

          else if ((v327 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x500;
          }

          else if ((v327 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x520;
          }

          else if ((v327 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x540;
          }

          else if ((v327 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x560;
          }

          else if ((v327 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x580;
          }

          else if (v325)
          {
            LOWORD(v262) = v679 | 0x5A0;
          }

          else if ((v329 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x5C0;
          }

          else if ((v329 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x5E0;
          }

          else if ((v329 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x600;
          }

          else if ((v329 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x620;
          }

          else if ((v329 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x640;
          }

          else if ((v329 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x660;
          }

          else if ((v329 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x680;
          }

          else if ((v329 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x6A0;
          }

          else if (v322)
          {
            LOWORD(v262) = v679 | 0x6C0;
          }

          else if ((v331 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x6E0;
          }

          else if ((v331 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x700;
          }

          else if ((v331 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x720;
          }

          else if ((v331 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x740;
          }

          else if ((v331 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x760;
          }

          else if ((v331 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x780;
          }

          else if ((v331 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x7A0;
          }

          else if ((v331 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x7C0;
          }

          else if (v328)
          {
            LOWORD(v262) = v679 | 0x7E0;
          }

          else if ((v333 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x800;
          }

          else if ((v333 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x820;
          }

          else if ((v333 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x840;
          }

          else if ((v333 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x860;
          }

          else if ((v333 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x880;
          }

          else if ((v333 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x8A0;
          }

          else if ((v333 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x8C0;
          }

          else if ((v333 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x8E0;
          }

          else if (v330)
          {
            LOWORD(v262) = v679 | 0x900;
          }

          else if ((v334 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x920;
          }

          else if ((v334 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x940;
          }

          else if ((v334 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x960;
          }

          else if ((v334 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x980;
          }

          else if ((v334 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x9A0;
          }

          else if ((v334 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x9C0;
          }

          else if ((v334 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x9E0;
          }

          else if ((v334 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0xA00;
          }

          else if (v332)
          {
            LOWORD(v262) = v679 | 0xA20;
          }

          else if ((v336 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0xA40;
          }

          else if ((v336 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0xA60;
          }

          else if ((v336 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0xA80;
          }

          else if ((v336 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0xAA0;
          }

          else if ((v336 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0xAC0;
          }

          else if ((v336 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0xAE0;
          }

          else if ((v336 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0xB00;
          }

          else if ((v336 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0xB20;
          }

          else if (v294)
          {
            LOWORD(v262) = v679 | 0xB40;
          }

          else if ((v337 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0xB60;
          }

          else if ((v337 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0xB80;
          }

          else if ((v337 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0xBA0;
          }

          else if ((v337 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0xBC0;
          }

          else if ((v337 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0xBE0;
          }

          else if ((v337 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0xC00;
          }

          else if ((v337 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0xC20;
          }

          else if ((v337 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0xC40;
          }

          else if (v335)
          {
            LOWORD(v262) = v679 | 0xC60;
          }

          else if ((v339 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0xC80;
          }

          else if ((v339 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0xCA0;
          }

          else if ((v339 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0xCC0;
          }

          else if ((v339 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0xCE0;
          }

          else if ((v339 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0xD00;
          }

          else if ((v339 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0xD20;
          }

          else if ((v339 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0xD40;
          }

          else if ((v339 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0xD60;
          }

          else if (v295)
          {
            LOWORD(v262) = v679 | 0xD80;
          }

          else if ((v341 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0xDA0;
          }

          else if ((v341 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0xDC0;
          }

          else if ((v341 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0xDE0;
          }

          else if ((v341 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0xE00;
          }

          else if ((v341 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0xE20;
          }

          else if ((v341 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0xE40;
          }

          else if ((v341 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0xE60;
          }

          else if ((v341 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0xE80;
          }

          else if (v338)
          {
            LOWORD(v262) = v679 | 0xEA0;
          }

          else if ((v343 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0xEC0;
          }

          else if ((v343 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0xEE0;
          }

          else if ((v343 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0xF00;
          }

          else if ((v343 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0xF20;
          }

          else if ((v343 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0xF40;
          }

          else if ((v343 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0xF60;
          }

          else if ((v343 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0xF80;
          }

          else if ((v343 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0xFA0;
          }

          else if (v340)
          {
            LOWORD(v262) = v679 | 0xFC0;
          }

          else if ((v344 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0xFE0;
          }

          else if ((v344 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1000;
          }

          else if ((v344 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1020;
          }

          else if ((v344 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1040;
          }

          else if ((v344 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1060;
          }

          else if ((v344 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1080;
          }

          else if ((v344 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x10A0;
          }

          else if ((v344 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x10C0;
          }

          else if (v342)
          {
            LOWORD(v262) = v679 | 0x10E0;
          }

          else if ((v345 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1100;
          }

          else if ((v345 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1120;
          }

          else if ((v345 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1140;
          }

          else if ((v345 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1160;
          }

          else if ((v345 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1180;
          }

          else if ((v345 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x11A0;
          }

          else if ((v345 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x11C0;
          }

          else if ((v345 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x11E0;
          }

          else if (v321)
          {
            LOWORD(v262) = v679 | 0x1200;
          }

          else if ((v298 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1220;
          }

          else if ((v298 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1240;
          }

          else if ((v298 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1260;
          }

          else if ((v298 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1280;
          }

          else if ((v298 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x12A0;
          }

          else if ((v298 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x12C0;
          }

          else if ((v298 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x12E0;
          }

          else if ((v298 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1300;
          }

          else if (v296)
          {
            LOWORD(v262) = v679 | 0x1320;
          }

          else if ((v300 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1340;
          }

          else if ((v300 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1360;
          }

          else if ((v300 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1380;
          }

          else if ((v300 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x13A0;
          }

          else if ((v300 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x13C0;
          }

          else if ((v300 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x13E0;
          }

          else if ((v300 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1400;
          }

          else if ((v300 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1420;
          }

          else if (v297)
          {
            LOWORD(v262) = v679 | 0x1440;
          }

          else if ((v301 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1460;
          }

          else if ((v301 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1480;
          }

          else if ((v301 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x14A0;
          }

          else if ((v301 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x14C0;
          }

          else if ((v301 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x14E0;
          }

          else if ((v301 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1500;
          }

          else if ((v301 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1520;
          }

          else if ((v301 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1540;
          }

          else if (v299)
          {
            LOWORD(v262) = v679 | 0x1560;
          }

          else if ((v303 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1580;
          }

          else if ((v303 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x15A0;
          }

          else if ((v303 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x15C0;
          }

          else if ((v303 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x15E0;
          }

          else if ((v303 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1600;
          }

          else if ((v303 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1620;
          }

          else if ((v303 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1640;
          }

          else if ((v303 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1660;
          }

          else if (v302)
          {
            LOWORD(v262) = v679 | 0x1680;
          }

          else if ((v305 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x16A0;
          }

          else if ((v305 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x16C0;
          }

          else if ((v305 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x16E0;
          }

          else if ((v305 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1700;
          }

          else if ((v305 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1720;
          }

          else if ((v305 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1740;
          }

          else if ((v305 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1760;
          }

          else if ((v305 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1780;
          }

          else if (v304)
          {
            LOWORD(v262) = v679 | 0x17A0;
          }

          else if ((v307 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x17C0;
          }

          else if ((v307 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x17E0;
          }

          else if ((v307 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1800;
          }

          else if ((v307 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1820;
          }

          else if ((v307 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1840;
          }

          else if ((v307 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1860;
          }

          else if ((v307 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1880;
          }

          else if ((v307 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x18A0;
          }

          else if (v306)
          {
            LOWORD(v262) = v679 | 0x18C0;
          }

          else if ((v309 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x18E0;
          }

          else if ((v309 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1900;
          }

          else if ((v309 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1920;
          }

          else if ((v309 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1940;
          }

          else if ((v309 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1960;
          }

          else if ((v309 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1980;
          }

          else if ((v309 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x19A0;
          }

          else if ((v309 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x19C0;
          }

          else if (v308)
          {
            LOWORD(v262) = v679 | 0x19E0;
          }

          else if ((v311 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1A00;
          }

          else if ((v311 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1A20;
          }

          else if ((v311 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1A40;
          }

          else if ((v311 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1A60;
          }

          else if ((v311 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1A80;
          }

          else if ((v311 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1AA0;
          }

          else if ((v311 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1AC0;
          }

          else if ((v311 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1AE0;
          }

          else if (v310)
          {
            LOWORD(v262) = v679 | 0x1B00;
          }

          else if ((v313 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1B20;
          }

          else if ((v313 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1B40;
          }

          else if ((v313 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1B60;
          }

          else if ((v313 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1B80;
          }

          else if ((v313 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1BA0;
          }

          else if ((v313 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1BC0;
          }

          else if ((v313 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1BE0;
          }

          else if ((v313 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1C00;
          }

          else if (v312)
          {
            LOWORD(v262) = v679 | 0x1C20;
          }

          else if ((v315 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1C40;
          }

          else if ((v315 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1C60;
          }

          else if ((v315 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1C80;
          }

          else if ((v315 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1CA0;
          }

          else if ((v315 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1CC0;
          }

          else if ((v315 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1CE0;
          }

          else if ((v315 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1D00;
          }

          else if ((v315 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1D20;
          }

          else if (v314)
          {
            LOWORD(v262) = v679 | 0x1D40;
          }

          else if ((v316 & v355) != 0)
          {
            LOWORD(v262) = v679 | 0x1D60;
          }

          else if ((v316 & v354) != 0)
          {
            LOWORD(v262) = v679 | 0x1D80;
          }

          else if ((v316 & v353) != 0)
          {
            LOWORD(v262) = v679 | 0x1DA0;
          }

          else if ((v316 & v352) != 0)
          {
            LOWORD(v262) = v679 | 0x1DC0;
          }

          else if ((v316 & v351) != 0)
          {
            LOWORD(v262) = v679 | 0x1DE0;
          }

          else if ((v316 & v350) != 0)
          {
            LOWORD(v262) = v679 | 0x1E00;
          }

          else if ((v316 & v349) != 0)
          {
            LOWORD(v262) = v679 | 0x1E20;
          }

          else if ((v316 & v348) != 0)
          {
            LOWORD(v262) = v679 | 0x1E40;
          }

          LOWORD(v679) = v262;
LABEL_346:
          if ((v648 & 1) == 0)
          {
            if (v209)
            {
              v252 = v255 | 0x2E11;
              goto LABEL_388;
            }

            if (v210)
            {
              v252 = v255 | 0x4E11;
              goto LABEL_388;
            }

            if (v676)
            {
              v252 = v255 | 0x6E11;
              goto LABEL_388;
            }

            if (v636)
            {
              v252 = v255 | 0x8E11;
              goto LABEL_388;
            }

            if (v635)
            {
              v252 = v255 | 0xAE11;
              goto LABEL_388;
            }

            if (v634)
            {
              v252 = v255 | 0xCE11;
              goto LABEL_388;
            }

            if (v633)
            {
              v252 = v255 | 0xEE11;
              goto LABEL_388;
            }

            if (v632)
            {
              goto LABEL_386;
            }

            if (v249)
            {
              v258 = 11793;
LABEL_385:
              v252 = v255 | v258;
LABEL_386:
              v259 = v679 | 0x2000;
LABEL_387:
              LOWORD(v679) = v259;
              goto LABEL_388;
            }

            if (v668)
            {
              v258 = 19985;
              goto LABEL_385;
            }

            if (v666)
            {
              v258 = 28177;
              goto LABEL_385;
            }

            if (v662)
            {
              v258 = -29167;
              goto LABEL_385;
            }

            if (v320)
            {
              v261 = -20975;
LABEL_401:
              v252 = v255 | v261;
              v259 = v679 | 0x2000;
              goto LABEL_387;
            }

            if (v214)
            {
              v261 = -12783;
              goto LABEL_401;
            }

            if (v242)
            {
              v261 = -4591;
              goto LABEL_401;
            }

            if (v660)
            {
              v263 = v679 | 0x4000;
LABEL_406:
              LOWORD(v679) = v263;
              goto LABEL_388;
            }

            if (v658)
            {
              v264 = 11793;
LABEL_435:
              v252 = v255 | v264;
              v259 = v679 | 0x4000;
              goto LABEL_387;
            }

            if (v656)
            {
              v264 = 19985;
              goto LABEL_435;
            }

            if (v664)
            {
              v264 = 28177;
              goto LABEL_435;
            }

            if (v654)
            {
              v264 = -29167;
              goto LABEL_435;
            }

            if (v652)
            {
              v264 = -20975;
              goto LABEL_435;
            }

            if (v650)
            {
              v264 = -12783;
              goto LABEL_435;
            }

            if (v375)
            {
              v264 = -4591;
              goto LABEL_435;
            }

            if (v605)
            {
              v263 = v679 | 0x6000;
              goto LABEL_406;
            }

            if (v376)
            {
              v265 = 11793;
LABEL_468:
              v252 = v255 | v265;
              v259 = v679 | 0x6000;
              goto LABEL_387;
            }

            if (v377)
            {
              v265 = 19985;
              goto LABEL_468;
            }

            if (v378)
            {
              v265 = 28177;
              goto LABEL_468;
            }

            if (v379)
            {
              v265 = -29167;
              goto LABEL_468;
            }

            if (v380)
            {
              v265 = -20975;
              goto LABEL_468;
            }

            if (v381)
            {
              v265 = -12783;
              goto LABEL_468;
            }

            if (v382)
            {
              v265 = -4591;
              goto LABEL_468;
            }

            if (v383)
            {
              v263 = v679 | 0x8000;
              goto LABEL_406;
            }

            if (v384)
            {
              v266 = 11793;
LABEL_501:
              v252 = v255 | v266;
              v259 = v679 | 0x8000;
              goto LABEL_387;
            }

            if (v385)
            {
              v266 = 19985;
              goto LABEL_501;
            }

            if (v386)
            {
              v266 = 28177;
              goto LABEL_501;
            }

            if (v387)
            {
              v266 = -29167;
              goto LABEL_501;
            }

            if (v388)
            {
              v266 = -20975;
              goto LABEL_501;
            }

            if (v389)
            {
              v266 = -12783;
              goto LABEL_501;
            }

            if (v390)
            {
              v266 = -4591;
              goto LABEL_501;
            }

            if (v606)
            {
              v263 = v679 | 0xA000;
              goto LABEL_406;
            }

            if (v391)
            {
              v267 = 11793;
LABEL_534:
              v252 = v255 | v267;
              v259 = v679 | 0xA000;
              goto LABEL_387;
            }

            if (v392)
            {
              v267 = 19985;
              goto LABEL_534;
            }

            if (v393)
            {
              v267 = 28177;
              goto LABEL_534;
            }

            if (v394)
            {
              v267 = -29167;
              goto LABEL_534;
            }

            if (v395)
            {
              v267 = -20975;
              goto LABEL_534;
            }

            if (v396)
            {
              v267 = -12783;
              goto LABEL_534;
            }

            if (v397)
            {
              v267 = -4591;
              goto LABEL_534;
            }

            if (v607)
            {
              v263 = v679 | 0xC000;
              goto LABEL_406;
            }

            if (v398)
            {
              v268 = 11793;
LABEL_567:
              v252 = v255 | v268;
              v259 = v679 | 0xC000;
              goto LABEL_387;
            }

            if (v399)
            {
              v268 = 19985;
              goto LABEL_567;
            }

            if (v400)
            {
              v268 = 28177;
              goto LABEL_567;
            }

            if (v401)
            {
              v268 = -29167;
              goto LABEL_567;
            }

            if (v402)
            {
              v268 = -20975;
              goto LABEL_567;
            }

            if (v403)
            {
              v268 = -12783;
              goto LABEL_567;
            }

            if (v404)
            {
              v268 = -4591;
              goto LABEL_567;
            }

            if (v608)
            {
              v263 = v679 | 0xE000;
              goto LABEL_406;
            }

            if (v405)
            {
              v269 = 11793;
LABEL_600:
              v252 = v255 | v269;
              v259 = v679 | 0xE000;
              goto LABEL_387;
            }

            if (v406)
            {
              v269 = 19985;
              goto LABEL_600;
            }

            if (v407)
            {
              v269 = 28177;
              goto LABEL_600;
            }

            if (v408)
            {
              v269 = -29167;
              goto LABEL_600;
            }

            if (v409)
            {
              v269 = -20975;
              goto LABEL_600;
            }

            if (v410)
            {
              v269 = -12783;
              goto LABEL_600;
            }

            if (v411)
            {
              v269 = -4591;
              goto LABEL_600;
            }

            if (v317)
            {
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_388;
            }

            if (v412)
            {
              v270 = 11793;
LABEL_633:
              v252 = v255 | v270;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_388;
            }

            if (v413)
            {
              v270 = 19985;
              goto LABEL_633;
            }

            if (v414)
            {
              v270 = 28177;
              goto LABEL_633;
            }

            if (v415)
            {
              v270 = -29167;
              goto LABEL_633;
            }

            if (v416)
            {
              v270 = -20975;
              goto LABEL_633;
            }

            if (v417)
            {
              v270 = -12783;
              goto LABEL_633;
            }

            if (v418)
            {
              v270 = -4591;
              goto LABEL_633;
            }

            if (v609)
            {
              v263 = v679 | 0x2000;
LABEL_836:
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_406;
            }

            if (v419)
            {
              v271 = 11793;
LABEL_666:
              v252 = v255 | v271;
              v259 = v679 | 0x2000;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_387;
            }

            if (v420)
            {
              v271 = 19985;
              goto LABEL_666;
            }

            if (v421)
            {
              v271 = 28177;
              goto LABEL_666;
            }

            if (v422)
            {
              v271 = -29167;
              goto LABEL_666;
            }

            if (v423)
            {
              v271 = -20975;
              goto LABEL_666;
            }

            if (v424)
            {
              v271 = -12783;
              goto LABEL_666;
            }

            if (v425)
            {
              v271 = -4591;
              goto LABEL_666;
            }

            if (v610)
            {
              v263 = v679 | 0x4000;
              goto LABEL_836;
            }

            if (v426)
            {
              v272 = 11793;
LABEL_699:
              v252 = v255 | v272;
              v259 = v679 | 0x4000;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_387;
            }

            if (v427)
            {
              v272 = 19985;
              goto LABEL_699;
            }

            if (v428)
            {
              v272 = 28177;
              goto LABEL_699;
            }

            if (v429)
            {
              v272 = -29167;
              goto LABEL_699;
            }

            if (v430)
            {
              v272 = -20975;
              goto LABEL_699;
            }

            if (v431)
            {
              v272 = -12783;
              goto LABEL_699;
            }

            if (v432)
            {
              v272 = -4591;
              goto LABEL_699;
            }

            if (v611)
            {
              v263 = v679 | 0x6000;
              goto LABEL_836;
            }

            if (v433)
            {
              v273 = 11793;
LABEL_732:
              v252 = v255 | v273;
              v259 = v679 | 0x6000;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_387;
            }

            if (v434)
            {
              v273 = 19985;
              goto LABEL_732;
            }

            if (v435)
            {
              v273 = 28177;
              goto LABEL_732;
            }

            if (v436)
            {
              v273 = -29167;
              goto LABEL_732;
            }

            if (v437)
            {
              v273 = -20975;
              goto LABEL_732;
            }

            if (v438)
            {
              v273 = -12783;
              goto LABEL_732;
            }

            if (v439)
            {
              v273 = -4591;
              goto LABEL_732;
            }

            if (v612)
            {
              v263 = v679 | 0x8000;
              goto LABEL_836;
            }

            if (v440)
            {
              v274 = 11793;
LABEL_765:
              v252 = v255 | v274;
              v259 = v679 | 0x8000;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_387;
            }

            if (v441)
            {
              v274 = 19985;
              goto LABEL_765;
            }

            if (v442)
            {
              v274 = 28177;
              goto LABEL_765;
            }

            if (v443)
            {
              v274 = -29167;
              goto LABEL_765;
            }

            if (v444)
            {
              v274 = -20975;
              goto LABEL_765;
            }

            if (v445)
            {
              v274 = -12783;
              goto LABEL_765;
            }

            if (v446)
            {
              v274 = -4591;
              goto LABEL_765;
            }

            if (v613)
            {
              v263 = v679 | 0xA000;
              goto LABEL_836;
            }

            if (v447)
            {
              v275 = 11793;
LABEL_798:
              v252 = v255 | v275;
              v259 = v679 | 0xA000;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_387;
            }

            if (v448)
            {
              v275 = 19985;
              goto LABEL_798;
            }

            if (v449)
            {
              v275 = 28177;
              goto LABEL_798;
            }

            if (v450)
            {
              v275 = -29167;
              goto LABEL_798;
            }

            if (v451)
            {
              v275 = -20975;
              goto LABEL_798;
            }

            if (v452)
            {
              v275 = -12783;
              goto LABEL_798;
            }

            if (v453)
            {
              v275 = -4591;
              goto LABEL_798;
            }

            if (v614)
            {
              v263 = v679 | 0xC000;
              goto LABEL_836;
            }

            if (v454)
            {
              v276 = 11793;
LABEL_831:
              v252 = v255 | v276;
              v259 = v679 | 0xC000;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_387;
            }

            if (v455)
            {
              v276 = 19985;
              goto LABEL_831;
            }

            if (v456)
            {
              v276 = 28177;
              goto LABEL_831;
            }

            if (v457)
            {
              v276 = -29167;
              goto LABEL_831;
            }

            if (v458)
            {
              v276 = -20975;
              goto LABEL_831;
            }

            if (v459)
            {
              v276 = -12783;
              goto LABEL_831;
            }

            if (v460)
            {
              v276 = -4591;
              goto LABEL_831;
            }

            if (v615)
            {
              v263 = v679 | 0xE000;
              goto LABEL_836;
            }

            if (v461)
            {
              v277 = 11793;
LABEL_865:
              v252 = v255 | v277;
              v259 = v679 | 0xE000;
              LOWORD(v253) = v253 | 0x800;
              goto LABEL_387;
            }

            if (v462)
            {
              v277 = 19985;
              goto LABEL_865;
            }

            if (v463)
            {
              v277 = 28177;
              goto LABEL_865;
            }

            if (v464)
            {
              v277 = -29167;
              goto LABEL_865;
            }

            if (v465)
            {
              v277 = -20975;
              goto LABEL_865;
            }

            if (v466)
            {
              v277 = -12783;
              goto LABEL_865;
            }

            if (v467)
            {
              v277 = -4591;
              goto LABEL_865;
            }

            if (v319)
            {
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_388;
            }

            if (v468)
            {
              v278 = 11793;
LABEL_898:
              v252 = v255 | v278;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_388;
            }

            if (v469)
            {
              v278 = 19985;
              goto LABEL_898;
            }

            if (v470)
            {
              v278 = 28177;
              goto LABEL_898;
            }

            if (v471)
            {
              v278 = -29167;
              goto LABEL_898;
            }

            if (v472)
            {
              v278 = -20975;
              goto LABEL_898;
            }

            if (v473)
            {
              v278 = -12783;
              goto LABEL_898;
            }

            if (v474)
            {
              v278 = -4591;
              goto LABEL_898;
            }

            if (v616)
            {
              v263 = v679 | 0x2000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_406;
            }

            if (v475)
            {
              v279 = 11793;
LABEL_931:
              v252 = v255 | v279;
              v259 = v679 | 0x2000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_387;
            }

            if (v476)
            {
              v279 = 19985;
              goto LABEL_931;
            }

            if (v477)
            {
              v279 = 28177;
              goto LABEL_931;
            }

            if (v478)
            {
              v279 = -29167;
              goto LABEL_931;
            }

            if (v479)
            {
              v279 = -20975;
              goto LABEL_931;
            }

            if (v480)
            {
              v279 = -12783;
              goto LABEL_931;
            }

            if (v481)
            {
              v279 = -4591;
              goto LABEL_931;
            }

            if (v617)
            {
              v263 = v679 | 0x4000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_406;
            }

            if (v482)
            {
              v280 = 11793;
LABEL_964:
              v252 = v255 | v280;
              v259 = v679 | 0x4000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_387;
            }

            if (v483)
            {
              v280 = 19985;
              goto LABEL_964;
            }

            if (v484)
            {
              v280 = 28177;
              goto LABEL_964;
            }

            if (v485)
            {
              v280 = -29167;
              goto LABEL_964;
            }

            if (v486)
            {
              v280 = -20975;
              goto LABEL_964;
            }

            if (v487)
            {
              v280 = -12783;
              goto LABEL_964;
            }

            if (v488)
            {
              v280 = -4591;
              goto LABEL_964;
            }

            if (v618)
            {
              v263 = v679 | 0x6000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_406;
            }

            if (v489)
            {
              v281 = 11793;
LABEL_997:
              v252 = v255 | v281;
              v259 = v679 | 0x6000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_387;
            }

            if (v490)
            {
              v281 = 19985;
              goto LABEL_997;
            }

            if (v491)
            {
              v281 = 28177;
              goto LABEL_997;
            }

            if (v492)
            {
              v281 = -29167;
              goto LABEL_997;
            }

            if (v493)
            {
              v281 = -20975;
              goto LABEL_997;
            }

            if (v494)
            {
              v281 = -12783;
              goto LABEL_997;
            }

            if (v495)
            {
              v281 = -4591;
              goto LABEL_997;
            }

            if (v619)
            {
              v263 = v679 | 0x8000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_406;
            }

            if (v497)
            {
              v282 = 11793;
LABEL_1030:
              v252 = v255 | v282;
              v259 = v679 | 0x8000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_387;
            }

            if (v499)
            {
              v282 = 19985;
              goto LABEL_1030;
            }

            if (v501)
            {
              v282 = 28177;
              goto LABEL_1030;
            }

            if (v503)
            {
              v282 = -29167;
              goto LABEL_1030;
            }

            if (v505)
            {
              v282 = -20975;
              goto LABEL_1030;
            }

            if (v507)
            {
              v282 = -12783;
              goto LABEL_1030;
            }

            if (v509)
            {
              v282 = -4591;
              goto LABEL_1030;
            }

            if (v620)
            {
              v263 = v679 | 0xA000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_406;
            }

            if (v511)
            {
              v283 = 11793;
LABEL_1063:
              v252 = v255 | v283;
              v259 = v679 | 0xA000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_387;
            }

            if (v513)
            {
              v283 = 19985;
              goto LABEL_1063;
            }

            if (v515)
            {
              v283 = 28177;
              goto LABEL_1063;
            }

            if (v517)
            {
              v283 = -29167;
              goto LABEL_1063;
            }

            if (v519)
            {
              v283 = -20975;
              goto LABEL_1063;
            }

            if (v521)
            {
              v283 = -12783;
              goto LABEL_1063;
            }

            if (v523)
            {
              v283 = -4591;
              goto LABEL_1063;
            }

            if (v621)
            {
              v263 = v679 | 0xC000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_406;
            }

            if (v525)
            {
              v284 = 11793;
LABEL_1096:
              v252 = v255 | v284;
              v259 = v679 | 0xC000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_387;
            }

            if (v527)
            {
              v284 = 19985;
              goto LABEL_1096;
            }

            if (v529)
            {
              v284 = 28177;
              goto LABEL_1096;
            }

            if (v531)
            {
              v284 = -29167;
              goto LABEL_1096;
            }

            if (v533)
            {
              v284 = -20975;
              goto LABEL_1096;
            }

            if (v535)
            {
              v284 = -12783;
              goto LABEL_1096;
            }

            if (v537)
            {
              v284 = -4591;
              goto LABEL_1096;
            }

            if (v622)
            {
              v263 = v679 | 0xE000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_406;
            }

            if (v540)
            {
              v285 = 11793;
LABEL_1129:
              v252 = v255 | v285;
              v259 = v679 | 0xE000;
              LOWORD(v253) = v253 | 0x1000;
              goto LABEL_387;
            }

            if (v542)
            {
              v285 = 19985;
              goto LABEL_1129;
            }

            if (v544)
            {
              v285 = 28177;
              goto LABEL_1129;
            }

            if (v546)
            {
              v285 = -29167;
              goto LABEL_1129;
            }

            if (v548)
            {
              v285 = -20975;
              goto LABEL_1129;
            }

            if (v550)
            {
              v285 = -12783;
              goto LABEL_1129;
            }

            if (v552)
            {
              v285 = -4591;
              goto LABEL_1129;
            }

            if (v623)
            {
              LOWORD(v253) = v253 | 0x1800;
              goto LABEL_388;
            }

            if (v554)
            {
              v286 = 11793;
LABEL_1162:
              v252 = v255 | v286;
              LOWORD(v253) = v253 | 0x1800;
              goto LABEL_388;
            }

            if (v556)
            {
              v286 = 19985;
              goto LABEL_1162;
            }

            if (v558)
            {
              v286 = 28177;
              goto LABEL_1162;
            }

            if (v560)
            {
              v286 = -29167;
              goto LABEL_1162;
            }

            if (v562)
            {
              v286 = -20975;
              goto LABEL_1162;
            }

            if (v564)
            {
              v286 = -12783;
              goto LABEL_1162;
            }

            if (v566)
            {
              v286 = -4591;
              goto LABEL_1162;
            }

            if (v624)
            {
              v263 = v679 | 0x2000;
              LOWORD(v253) = v253 | 0x1800;
              goto LABEL_406;
            }

            if (v568)
            {
              v287 = 11793;
            }

            else if (v570)
            {
              v287 = 19985;
            }

            else if (v572)
            {
              v287 = 28177;
            }

            else if (v574)
            {
              v287 = -29167;
            }

            else if (v576)
            {
              v287 = -20975;
            }

            else if (v578)
            {
              v287 = -12783;
            }

            else
            {
              if ((v580 & 1) == 0)
              {
                if (v625)
                {
                  v263 = v679 | 0x4000;
                  LOWORD(v253) = v253 | 0x1800;
                  goto LABEL_406;
                }

                if (v582)
                {
                  v288 = 11793;
                }

                else if (v584)
                {
                  v288 = 19985;
                }

                else if (v586)
                {
                  v288 = 28177;
                }

                else if (v232)
                {
                  v288 = -29167;
                }

                else if (v233)
                {
                  v288 = -20975;
                }

                else if (v234)
                {
                  v288 = -12783;
                }

                else
                {
                  if ((v235 & 1) == 0)
                  {
                    if (v626)
                    {
                      v263 = v679 | 0x6000;
                      LOWORD(v253) = v253 | 0x1800;
                      goto LABEL_406;
                    }

                    if (v588)
                    {
                      v289 = 11793;
                    }

                    else if (v590)
                    {
                      v289 = 19985;
                    }

                    else if (v592)
                    {
                      v289 = 28177;
                    }

                    else if (v594)
                    {
                      v289 = -29167;
                    }

                    else if (v596)
                    {
                      v289 = -20975;
                    }

                    else if (v638)
                    {
                      v289 = -12783;
                    }

                    else
                    {
                      if ((v640 & 1) == 0)
                      {
                        if (v627)
                        {
                          v263 = v679 | 0x8000;
                          LOWORD(v253) = v253 | 0x1800;
                          goto LABEL_406;
                        }

                        if (v642)
                        {
                          v290 = 11793;
                        }

                        else if (v644)
                        {
                          v290 = 19985;
                        }

                        else if (v646)
                        {
                          v290 = 28177;
                        }

                        else if (v236)
                        {
                          v290 = -29167;
                        }

                        else if (v670)
                        {
                          v290 = -20975;
                        }

                        else if (v368)
                        {
                          v290 = -12783;
                        }

                        else
                        {
                          if ((v370 & 1) == 0)
                          {
                            if (v628)
                            {
                              v263 = v679 | 0xA000;
                              LOWORD(v253) = v253 | 0x1800;
                              goto LABEL_406;
                            }

                            if (v672)
                            {
                              v291 = 11793;
                            }

                            else if (v674)
                            {
                              v291 = 19985;
                            }

                            else if (v237)
                            {
                              v291 = 28177;
                            }

                            else if (v238)
                            {
                              v291 = -29167;
                            }

                            else if (v239)
                            {
                              v291 = -20975;
                            }

                            else if (v240)
                            {
                              v291 = -12783;
                            }

                            else
                            {
                              if ((v372 & 1) == 0)
                              {
                                if (v629)
                                {
                                  v263 = v679 | 0xC000;
                                  LOWORD(v253) = v253 | 0x1800;
                                  goto LABEL_406;
                                }

                                if (v598)
                                {
                                  v292 = 11793;
                                }

                                else if (v600)
                                {
                                  v292 = 19985;
                                }

                                else if (v602)
                                {
                                  v292 = 28177;
                                }

                                else if (v243)
                                {
                                  v292 = -29167;
                                }

                                else if (v244)
                                {
                                  v292 = -20975;
                                }

                                else if (v245)
                                {
                                  v292 = -12783;
                                }

                                else
                                {
                                  if ((v246 & 1) == 0)
                                  {
                                    if (v630)
                                    {
                                      v263 = v679 | 0xE000;
                                      LOWORD(v253) = v253 | 0x1800;
                                      goto LABEL_406;
                                    }

                                    if (v248)
                                    {
                                      v293 = 11793;
                                    }

                                    else if (v251)
                                    {
                                      v293 = 19985;
                                    }

                                    else if ((v677 & v202) != 0)
                                    {
                                      v293 = 28177;
                                    }

                                    else if (v631)
                                    {
                                      v293 = -29167;
                                    }

                                    else if (v604)
                                    {
                                      v293 = -20975;
                                    }

                                    else if (v250)
                                    {
                                      v293 = -12783;
                                    }

                                    else
                                    {
                                      if ((v318 & 1) == 0)
                                      {
                                        goto LABEL_388;
                                      }

                                      v293 = -4591;
                                    }

                                    v252 = v255 | v293;
                                    v259 = v679 | 0xE000;
LABEL_1371:
                                    LOWORD(v253) = v253 | 0x1800;
                                    goto LABEL_387;
                                  }

                                  v292 = -4591;
                                }

                                v252 = v255 | v292;
                                v259 = v679 | 0xC000;
                                goto LABEL_1371;
                              }

                              v291 = -4591;
                            }

                            v252 = v255 | v291;
                            v259 = v679 | 0xA000;
                            goto LABEL_1371;
                          }

                          v290 = -4591;
                        }

                        v252 = v255 | v290;
                        v259 = v679 | 0x8000;
                        goto LABEL_1371;
                      }

                      v289 = -4591;
                    }

                    v252 = v255 | v289;
                    v259 = v679 | 0x6000;
                    goto LABEL_1371;
                  }

                  v288 = -4591;
                }

                v252 = v255 | v288;
                v259 = v679 | 0x4000;
                goto LABEL_1371;
              }

              v287 = -4591;
            }

            v252 = v255 | v287;
            v259 = v679 | 0x2000;
            goto LABEL_1371;
          }

          goto LABEL_388;
        }

        v257 = 352;
      }
    }

    LOWORD(v679) = v679 | v257;
    goto LABEL_346;
  }

LABEL_388:
  *a2 = v199;
  *(a2 + 1) = v252;
  *(a2 + 2) = v679;
  *(a2 + 3) = v253;
  result = a2 + 10;
  *(a2 + 4) = v254;
  return result;
}