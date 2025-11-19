@interface MPToMRNowPlayingInfoDictionary
@end

@implementation MPToMRNowPlayingInfoDictionary

void ___MPToMRNowPlayingInfoDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v175[0] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MPNowPlayingInfoPropertyToMRMediaRemoteNowPlayingInfoPropertyMapping();
  v8 = [v7 objectForKey:v5];

  if ([v5 isEqualToString:@"artwork"])
  {
    v9 = v6;
    v10 = [*(a1 + 32) artworkIdentifier];
    v11 = [*(a1 + 32) artworkData];
    v12 = [*(a1 + 32) artwork];

    if (v12 == v9)
    {
LABEL_154:
      if ([v11 length])
      {
        [*(a1 + 40) setObject:v11 forKey:*MEMORY[0x1E69B0E68]];
        [*(a1 + 40) setObject:@"image/jpeg" forKey:*MEMORY[0x1E69B0E88]];
        [*(a1 + 40) setObject:v10 forKey:*MEMORY[0x1E69B0E80]];
        [*(a1 + 40) setObject:&unk_1F150ACC8 forKey:*MEMORY[0x1E69B0E78]];
        [*(a1 + 40) setObject:&unk_1F150ACC8 forKey:*MEMORY[0x1E69B0E70]];
      }

LABEL_157:
      goto LABEL_158;
    }

    v153 = v10;
    v154 = v5;
    v155 = a1;
    v13 = v8;
    v152 = v6;
    v14 = v9;
    v15 = [v9 jpegDataWithSize:{768.0, 768.0}];

    v16 = *MEMORY[0x1E69B1360];
    v17 = v15;
    v170 = 0u;
    v169 = 0u;
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v165 = 0u;
    v164 = 0u;
    v163 = 0u;
    v18 = v16 + 0x60EA27EEADC0B5D6;
    v19 = v16 - 0x3D4D51C2D82B14B1;
    v20 = v16 + 0x61C8864E7A143579;
    v157 = xmmword_1A273DDA0;
    v158.i64[0] = v16 + 0x60EA27EEADC0B5D6;
    v158.i64[1] = v16 - 0x3D4D51C2D82B14B1;
    v159 = v16;
    v160 = v16 + 0x61C8864E7A143579;
    v21 = v161;
    memset(v161, 0, sizeof(v161));
    v162 = 0;
    v22 = v17;
    v23 = [v22 bytes];
    v156 = v22;
    v24 = [v22 length];
    if (v23)
    {
      v25 = v24;
      *(&v157 + 1) = v24;
      if (v24 <= 0x1F)
      {
        memcpy(v161, v23, v24);
        v26 = v162 + v25;
LABEL_28:
        LODWORD(v162) = v26;
        goto LABEL_29;
      }

      v40 = &v23[v24];
      if (v24 >= 32)
      {
        do
        {
          v18 = 0x9E3779B185EBCA87 * __ROR8__(v18 - 0x3D4D51C2D82B14B1 * *v23, 33);
          v19 = 0x9E3779B185EBCA87 * __ROR8__(v19 - 0x3D4D51C2D82B14B1 * *(v23 + 1), 33);
          v16 = 0x9E3779B185EBCA87 * __ROR8__(v16 - 0x3D4D51C2D82B14B1 * *(v23 + 2), 33);
          v20 = 0x9E3779B185EBCA87 * __ROR8__(v20 - 0x3D4D51C2D82B14B1 * *(v23 + 3), 33);
          v23 += 32;
        }

        while (v23 <= v40 - 32);
        v158.i64[0] = v18;
        v158.i64[1] = v19;
        v159 = v16;
        v160 = v20;
      }

      if (v23 < v40)
      {
        v26 = v40 - v23;
        __memcpy_chk();
        goto LABEL_28;
      }
    }

LABEL_29:
    v11 = v156;

    memset(&v171[8], 0, 64);
    *v171 = v157;
    if (v157 > 3000)
    {
      v8 = v13;
      a1 = v155;
      v9 = v14;
      if (v157 <= 4000)
      {
        v5 = v154;
        if (v157 == 3001)
        {
          if (*(&v157 + 1) < 0x20uLL)
          {
            v85 = v159 + 0x27D4EB2F165667C5;
          }

          else
          {
            v85 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v158.i64[1], 57) + __ROR8__(v158.i64[0], 63) + __ROR8__(v159, 52) + __ROR8__(v160, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v158.i64[0], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v158.i64[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v159, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v160, 33))) - 0x7A1435883D4D519DLL;
          }

          v88 = v85 + *(&v157 + 1);
          v89 = BYTE8(v157) & 0x1F;
          if (v89 >= 8)
          {
            do
            {
              v90 = *v21++;
              v88 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v90, 33)) ^ v88, 37);
              v89 -= 8;
            }

            while (v89 > 7);
          }

          if (v89 >= 4)
          {
            v91 = *v21;
            v21 = (v21 + 4);
            v88 = 0xC2B2AE3D27D4EB4FLL * __ROR8__((0x9E3779B185EBCA87 * v91) ^ v88, 41) + 0x165667B19E3779F9;
            v89 -= 4;
          }

          for (; v89; --v89)
          {
            v92 = *v21;
            v21 = (v21 + 1);
            v88 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v92) ^ v88, 53);
          }

          v93 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v88 ^ (v88 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v88 ^ (v88 >> 33))) >> 29));
          *&v171[8] = v93 ^ HIDWORD(v93);
          v41 = v153;
        }

        else
        {
          v41 = v153;
          if (v157 == 4000)
          {
            CC_MD5_Final(&v171[8], (&v157 + 8));
          }
        }
      }

      else
      {
        v41 = v153;
        v5 = v154;
        switch(v157)
        {
          case 0xFA1:
            CC_SHA1_Final(&v171[8], (&v157 + 8));
            break;
          case 0x10A0:
            CC_SHA256_Final(&v171[8], (&v157 + 8));
            break;
          case 0x11A0:
            CC_SHA512_Final(&v171[8], (&v157 + 8));
            break;
        }
      }

      goto LABEL_106;
    }

    v8 = v13;
    a1 = v155;
    v9 = v14;
    if (v157 <= 1999)
    {
      v41 = v153;
      v5 = v154;
      if (v157)
      {
        if (v157 == 1000)
        {
          v42 = (*(&v157 + 1) + v158.i64[0]) ^ __ROR8__(v158.i64[0], 51);
          v43 = v158.i64[1] + (v159 ^ v160);
          v44 = __ROR8__(v159 ^ v160, 48);
          v45 = (v43 ^ v44) + __ROR8__(*(&v157 + 1) + v158.i64[0], 32);
          v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
          v47 = v43 + v42;
          v48 = v47 ^ __ROR8__(v42, 47);
          v49 = (v45 ^ v160) + v48;
          v50 = v49 ^ __ROR8__(v48, 51);
          v51 = (__ROR8__(v47, 32) ^ 0xFFLL) + v46;
          v52 = __ROR8__(v46, 48);
          v53 = __ROR8__(v49, 32) + (v51 ^ v52);
          v54 = v53 ^ __ROR8__(v51 ^ v52, 43);
          v55 = v50 + v51;
          v56 = v55 ^ __ROR8__(v50, 47);
          v57 = v56 + v53;
          v58 = v57 ^ __ROR8__(v56, 51);
          v59 = __ROR8__(v55, 32) + v54;
          v60 = __ROR8__(v54, 48);
          v61 = __ROR8__(v57, 32) + (v59 ^ v60);
          v62 = v61 ^ __ROR8__(v59 ^ v60, 43);
          v63 = v58 + v59;
          v64 = v63 ^ __ROR8__(v58, 47);
          v65 = v64 + v61;
          v66 = v65 ^ __ROR8__(v64, 51);
          v67 = __ROR8__(v63, 32) + v62;
          v68 = __ROR8__(v62, 48);
          v69 = __ROR8__(v65, 32) + (v67 ^ v68);
          v70 = v69 ^ __ROR8__(v67 ^ v68, 43);
          v71 = v66 + v67;
          *(&v157 + 1) = v69;
          v158.i64[0] = v71 ^ __ROR8__(v66, 47);
          v158.i64[1] = __ROR8__(v71, 32);
          v159 = v70;
          *&v171[8] = v158.i64[0] ^ v69 ^ v158.i64[1] ^ v70;
        }
      }

      else
      {
        v82 = [MEMORY[0x1E696AAA8] currentHandler];
        v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
        [v82 handleFailureInFunction:v83 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
      }

LABEL_106:
      v172[0] = *v171;
      v172[1] = *&v171[16];
      v172[2] = *&v171[32];
      v172[3] = *&v171[48];
      v173 = *&v171[64];
      if (*v171 > 3999)
      {
        if (*v171 > 4255)
        {
          if (*v171 == 4256)
          {
            v144 = v172 + 8;
            v145 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
            v146 = v145;
            for (i = 0; i != 64; i += 2)
            {
              v148 = *v144++;
              v149 = &v145[i];
              *v149 = MSVFastHexStringFromBytes_hexCharacters_55966[v148 >> 4];
              v149[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v148 & 0xF];
            }

            v115 = objc_alloc(MEMORY[0x1E696AEC0]);
            v116 = v146;
            v117 = 64;
          }

          else
          {
            if (*v171 != 4512)
            {
              goto LABEL_159;
            }

            v122 = v172 + 8;
            v123 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
            v124 = v123;
            for (j = 0; j != 128; j += 2)
            {
              v126 = *v122++;
              v127 = &v123[j];
              *v127 = MSVFastHexStringFromBytes_hexCharacters_55966[v126 >> 4];
              v127[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v126 & 0xF];
            }

            v115 = objc_alloc(MEMORY[0x1E696AEC0]);
            v116 = v124;
            v117 = 128;
          }
        }

        else if (*v171 == 4000)
        {
          v134 = v172 + 8;
          v135 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
          v136 = v135;
          for (k = 0; k != 32; k += 2)
          {
            v138 = *v134++;
            v139 = &v135[k];
            *v139 = MSVFastHexStringFromBytes_hexCharacters_55966[v138 >> 4];
            v139[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v138 & 0xF];
          }

          v115 = objc_alloc(MEMORY[0x1E696AEC0]);
          v116 = v136;
          v117 = 32;
        }

        else
        {
          if (*v171 != 4001)
          {
            goto LABEL_159;
          }

          v109 = v172 + 8;
          v110 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
          v111 = v110;
          for (m = 0; m != 40; m += 2)
          {
            v113 = *v109++;
            v114 = &v110[m];
            *v114 = MSVFastHexStringFromBytes_hexCharacters_55966[v113 >> 4];
            v114[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v113 & 0xF];
          }

          v115 = objc_alloc(MEMORY[0x1E696AEC0]);
          v116 = v111;
          v117 = 40;
        }
      }

      else
      {
        if (*v171 <= 2999)
        {
          if (*v171 == 1000)
          {
            v128 = *(&v172[0] + 1);
            if (*(&v172[0] + 1))
            {
              v129 = v175 + 1;
              quot = *(&v172[0] + 1);
              v6 = v152;
              do
              {
                v131 = lldiv(quot, 10);
                quot = v131.quot;
                if (v131.rem >= 0)
                {
                  LOBYTE(v132) = v131.rem;
                }

                else
                {
                  v132 = -v131.rem;
                }

                *(v129 - 2) = v132 + 48;
                v133 = (v129 - 2);
                --v129;
              }

              while (v131.quot);
              if (v128 < 0)
              {
                *(v129 - 2) = 45;
                v133 = (v129 - 2);
              }

              v10 = CFStringCreateWithBytes(0, v133, v175 - v133, 0x8000100u, 0);
              a1 = v155;
              v11 = v156;
            }

            else
            {
              v10 = @"0";
              v6 = v152;
              v11 = v156;
            }

            goto LABEL_153;
          }

          if (*v171 == 2000)
          {
            v105 = DWORD2(v172[0]);
            if (DWORD2(v172[0]))
            {
              v106 = v175;
              v6 = v152;
              do
              {
                v107 = ldiv(v105, 10);
                v105 = v107.quot;
                if (v107.rem >= 0)
                {
                  LOBYTE(v108) = v107.rem;
                }

                else
                {
                  v108 = -v107.rem;
                }

                *--v106 = v108 + 48;
              }

              while (v107.quot);
              v10 = CFStringCreateWithBytes(0, v106, v175 - v106, 0x8000100u, 0);
              goto LABEL_153;
            }

            v10 = @"0";
LABEL_152:
            v6 = v152;
LABEL_153:

            goto LABEL_154;
          }

LABEL_159:
          v150 = [MEMORY[0x1E696AAA8] currentHandler];
          v151 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
          [v150 handleFailureInFunction:v151 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

          v10 = &stru_1F149ECA8;
          goto LABEL_152;
        }

        if (*v171 == 3000)
        {
          LODWORD(v174[0]) = bswap32(DWORD2(v172[0]));
          v140 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
          v141 = 0;
          v142 = v140 + 1;
          do
          {
            v143 = *(v174 + v141);
            *(v142 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v143 >> 4];
            *v142 = MSVFastHexStringFromBytes_hexCharacters_55966[v143 & 0xF];
            v142 += 2;
            ++v141;
          }

          while (v141 != 4);
          v115 = objc_alloc(MEMORY[0x1E696AEC0]);
          v116 = v140;
          v117 = 8;
        }

        else
        {
          if (*v171 != 3001)
          {
            goto LABEL_159;
          }

          v174[0] = bswap64(*(&v172[0] + 1));
          v118 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
          v119 = 0;
          v120 = v118 + 1;
          do
          {
            v121 = *(v174 + v119);
            *(v120 - 1) = MSVFastHexStringFromBytes_hexCharacters_55966[v121 >> 4];
            *v120 = MSVFastHexStringFromBytes_hexCharacters_55966[v121 & 0xF];
            v120 += 2;
            ++v119;
          }

          while (v119 != 8);
          v115 = objc_alloc(MEMORY[0x1E696AEC0]);
          v116 = v118;
          v117 = 16;
        }
      }

      v10 = [v115 initWithBytesNoCopy:v116 length:v117 encoding:4 freeWhenDone:1];
      goto LABEL_152;
    }

    v41 = v153;
    v5 = v154;
    if (v157 != 2000)
    {
      if (v157 != 3000)
      {
        goto LABEL_106;
      }

      v72 = &v159;
      if (HIDWORD(v157))
      {
        v73 = vaddvq_s32(vorrq_s8(vshlq_u32(v158, xmmword_1A273DD70), vshlq_u32(v158, xmmword_1A273DD60)));
      }

      else
      {
        v73 = v158.i32[2] + 374761393;
      }

      v95 = DWORD2(v157) + v73;
      v96 = v161[0] & 0xF;
      if (v96 >= 4)
      {
        do
        {
          v97 = *v72;
          v72 = (v72 + 4);
          HIDWORD(v98) = v95 - 1028477379 * v97;
          LODWORD(v98) = HIDWORD(v98);
          v95 = 668265263 * (v98 >> 15);
          v96 -= 4;
        }

        while (v96 > 3);
      }

      for (; v96; --v96)
      {
        v99 = *v72;
        v72 = (v72 + 1);
        HIDWORD(v100) = v95 + 374761393 * v99;
        LODWORD(v100) = HIDWORD(v100);
        v95 = -1640531535 * (v100 >> 21);
      }

      v101 = -1028477379 * ((-2048144777 * (v95 ^ (v95 >> 15))) ^ ((-2048144777 * (v95 ^ (v95 >> 15))) >> 13));
      v102 = v101 ^ HIWORD(v101);
      goto LABEL_105;
    }

    switch(v158.u8[3])
    {
      case 1u:
        v84 = v158.u8[0];
        break;
      case 2u:
        v84 = v158.u16[0];
        break;
      case 3u:
        v84 = v158.u16[0] | (v158.u8[2] << 16);
        break;
      default:
        v103 = DWORD2(v157);
        goto LABEL_104;
    }

    v103 = (461845907 * ((380141568 * v84) | ((-862048943 * v84) >> 17))) ^ DWORD2(v157);
LABEL_104:
    v104 = -2048144789 * (v103 ^ HIDWORD(v157) ^ ((v103 ^ HIDWORD(v157)) >> 16));
    v102 = (-1028477387 * (v104 ^ (v104 >> 13))) ^ ((-1028477387 * (v104 ^ (v104 >> 13))) >> 16);
    DWORD2(v157) = v102;
LABEL_105:
    *&v171[8] = v102;
    goto LABEL_106;
  }

  if (_os_feature_enabled_impl() && [v5 isEqualToString:@"MPNowPlayingInfoProperty1x1AnimatedArtwork"])
  {
    v27 = v6;
    v28 = v27;
    if (v27)
    {
      v29 = [v27 mrAnimatedArtwork];
      v30 = *(a1 + 40);
      v31 = [v28 artworkID];
      [v30 setObject:v31 forKey:*MEMORY[0x1E69B0FE8]];

      v32 = *(a1 + 40);
      v33 = MEMORY[0x1E69B0FE0];
LABEL_14:
      [v32 setObject:v29 forKey:*v33];

      goto LABEL_88;
    }

    goto LABEL_88;
  }

  if (_os_feature_enabled_impl() && [v5 isEqualToString:@"MPNowPlayingInfoProperty3x4AnimatedArtwork"])
  {
    v34 = v6;
    v28 = v34;
    if (v34)
    {
      v29 = [v34 mrAnimatedArtwork];
      v35 = *(a1 + 40);
      v36 = [v28 artworkID];
      [v35 setObject:v36 forKey:*MEMORY[0x1E69B1020]];

      v32 = *(a1 + 40);
      v33 = MEMORY[0x1E69B1018];
      goto LABEL_14;
    }

LABEL_88:

    goto LABEL_158;
  }

  if ([v5 isEqualToString:@"mediaType"])
  {
    v37 = [v6 integerValue];
    if (v37)
    {
      v38 = MEMORY[0x1E69B0DE8];
    }

    else if ((v37 & 0x402) != 0)
    {
      v38 = MEMORY[0x1E69B0DF0];
    }

    else if ((v37 & 4) != 0)
    {
      v38 = MEMORY[0x1E69B0DD0];
    }

    else if ((v37 & 0x1008) != 0)
    {
      v38 = MEMORY[0x1E69B0DE0];
    }

    else
    {
      if ((v37 & 0x20) == 0)
      {
        goto LABEL_158;
      }

      v38 = MEMORY[0x1E69B0DD8];
    }

LABEL_85:
    v94 = *v38;
    if (v94)
    {
LABEL_86:
      v28 = v94;
      v81 = *(a1 + 40);
LABEL_87:
      [v81 setObject:v28 forKey:v8];
      goto LABEL_88;
    }

    goto LABEL_158;
  }

  if ([v5 isEqualToString:@"MPNowPlayingInfoPropertyMediaType"])
  {
    v39 = [v6 integerValue];
    if (v39 == 1)
    {
      v38 = MEMORY[0x1E69B1060];
    }

    else
    {
      if (v39 != 2)
      {
        goto LABEL_158;
      }

      v38 = MEMORY[0x1E69B1068];
    }

    goto LABEL_85;
  }

  if ([v5 isEqualToString:@"_MPNowPlayingInfoPropertyRepeatMode"])
  {
    v74 = [v6 unsignedIntegerValue];
    if (v74 == 1)
    {
      v75 = 2;
    }

    else
    {
      v75 = 1;
    }

    v76 = v74 == 2;
    v77 = 3;
LABEL_57:
    if (v76)
    {
      v79 = v77;
    }

    else
    {
      v79 = v75;
    }

    v80 = *(a1 + 40);
    v28 = [MEMORY[0x1E696AD98] numberWithInt:v79];
    v81 = v80;
    goto LABEL_87;
  }

  if ([v5 isEqualToString:@"_MPNowPlayingInfoPropertyShuffleMode"])
  {
    v78 = [v6 unsignedIntegerValue];
    if (v78 == 1)
    {
      v75 = 3;
    }

    else
    {
      v75 = 1;
    }

    v76 = v78 == 2;
    v77 = 2;
    goto LABEL_57;
  }

  if ([v5 isEqualToString:@"MPNowPlayingInfoPropertyAvailableLanguageOptions"])
  {
    v86 = MRLanguageOptionGroupsFromMPNowPlayingLanguageOptionGroups(v6);
    ExternalRepresentation = MRLanguageOptionGroupsCreateExternalRepresentation();
LABEL_97:
    v9 = ExternalRepresentation;
    if (ExternalRepresentation)
    {
      [*(a1 + 40) setObject:ExternalRepresentation forKey:v8];
    }

    CFRelease(v86);
    goto LABEL_157;
  }

  if ([v5 isEqualToString:@"MPNowPlayingInfoPropertyCurrentLanguageOption"])
  {
    v86 = MRLanguageOptionsFromMPNowPlayingLanguageOptions(v6);
    ExternalRepresentation = MRLanguageOptionsCreateExternalRepresentation();
    goto LABEL_97;
  }

  if ([v5 isEqualToString:@"_MPNowPlayingInfoPropertyCollectionInfo"])
  {
    v94 = MPNowPlayingCollectionInfoToMediaRemote(v6);
    goto LABEL_86;
  }

  if (v8)
  {
    [*(a1 + 40) setObject:v6 forKey:v8];
  }

LABEL_158:
}

@end