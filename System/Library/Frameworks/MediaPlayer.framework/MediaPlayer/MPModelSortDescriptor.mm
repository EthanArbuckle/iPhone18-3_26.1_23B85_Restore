@interface MPModelSortDescriptor
+ (id)sortDescriptorWithKeyPath:(id)path ascending:(BOOL)ascending;
- (BOOL)isEqual:(id)equal;
- (MPModelSortDescriptor)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPModelSortDescriptor

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MPModelSortDescriptor;
  coderCopy = coder;
  [(MPModelSortDescriptor *)&v6 encodeWithCoder:coderCopy];
  v5 = [(MPModelSortDescriptor *)self keyPath:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"keyPath"];
}

- (MPModelSortDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MPModelSortDescriptor;
  v5 = [(MPModelSortDescriptor *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"keyPath"];
    [(MPModelSortDescriptor *)v5 setKeyPath:v9];
  }

  return v5;
}

- (unint64_t)hash
{
  v216 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  memset(&v211.hash[3], 0, 168);
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v210 = 1000;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v17 = v14 + v13;
  v211.hash[0] = __ROR8__(v17, 32);
  v211.hash[1] = v16 ^ __ROR8__(v15, 43);
  v211.count[0] = v16 ^ v11;
  v211.count[1] = v17 ^ __ROR8__(v13, 47);
  v211.hash[2] = 0x800000000000000;

  v209.receiver = self;
  v209.super_class = MPModelSortDescriptor;
  v18 = [(MPModelSortDescriptor *)&v209 hash];
  *&data[0] = v18;
  if (v210 <= 3000)
  {
    if (v210 > 1999)
    {
      if (v210 == 2000)
      {
        LOBYTE(v40) = 0;
        if (BYTE3(v211.count[1]) > 1u)
        {
          if (BYTE3(v211.count[1]) == 2)
          {
            v43 = v18 >> 8;
            v41 = v211.count[1];
            LODWORD(v40) = HIBYTE(LOWORD(v211.count[1]));
            LOBYTE(v42) = v18;
          }

          else
          {
            v41 = 0;
            LOBYTE(v42) = 0;
            LODWORD(v43) = 0;
            if (BYTE3(v211.count[1]) == 3)
            {
              v41 = v211.count[1];
              LODWORD(v40) = HIBYTE(LOWORD(v211.count[1]));
              LOBYTE(v42) = BYTE2(v211.count[1]);
              LODWORD(v43) = v18;
            }
          }
        }

        else if (BYTE3(v211.count[1]))
        {
          v41 = 0;
          LOBYTE(v42) = 0;
          LODWORD(v43) = 0;
          if (BYTE3(v211.count[1]) == 1)
          {
            v42 = v18 >> 8;
            v41 = v211.count[1];
            v43 = v18 >> 16;
            LOBYTE(v40) = v18;
          }
        }

        else
        {
          v40 = v18 >> 8;
          v42 = v18 >> 16;
          v41 = v18;
          v43 = v18 >> 24;
        }

        v51 = (v42 << 16) | (v43 << 24) | v41 | (v40 << 8);
        HIDWORD(v52) = (461845907 * ((380141568 * v51) | ((-862048943 * v51) >> 17))) ^ LODWORD(v211.count[0]);
        LODWORD(v52) = HIDWORD(v52);
        v53 = 5 * (v52 >> 19) - 430675100;
        LODWORD(v211.count[0]) = v53;
        v54 = data - BYTE3(v211.count[1]) + 4;
        v55 = data + ((BYTE3(v211.count[1]) + 8) & 0x1FC) - BYTE3(v211.count[1]);
        if (v54 < v55)
        {
          do
          {
            v56 = *v54;
            v54 += 4;
            HIDWORD(v57) = (461845907 * ((380141568 * v56) | ((-862048943 * v56) >> 17))) ^ v53;
            LODWORD(v57) = HIDWORD(v57);
            v53 = 5 * (v57 >> 19) - 430675100;
          }

          while (v54 < v55);
          LODWORD(v211.count[0]) = v53;
        }

        if ((BYTE3(v211.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v211.count[1]) = *v55;
          if ((BYTE3(v211.count[1]) & 3) != 2)
          {
            BYTE2(v211.count[1]) = v55[2];
          }
        }

        else if ((v211.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v211.count[1]) = *v55;
        }

        BYTE3(v211.count[1]) &= 3u;
        HIDWORD(v211.count[0]) += 8;
      }

      else if (v210 == 3000)
      {
        _MSV_XXH_XXH32_update_27340(&v211, data, 8uLL);
      }
    }

    else if (v210)
    {
      if (v210 == 1000)
      {
        v19 = v211.hash[2];
        if ((v211.hash[2] & 0x400000000000000) != 0)
        {
          v44 = v211.hash[2] & 0xFFFFFFFFFFFFFFLL | (v18 << 32);
          v45 = (v211.count[0] + v211.count[1]) ^ __ROR8__(v211.count[1], 51);
          v46 = v211.hash[0] + (v211.hash[1] ^ v44);
          v47 = __ROR8__(v211.hash[1] ^ v44, 48);
          v48 = (v46 ^ v47) + __ROR8__(v211.count[0] + v211.count[1], 32);
          v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
          v50 = v46 + v45;
          v211.hash[0] = __ROR8__(v50, 32);
          v211.hash[1] = v49;
          v211.count[0] = v48 ^ v44;
          v211.count[1] = v50 ^ __ROR8__(v45, 47);
          v37 = (v211.hash[2] & 0xFF00000000000000) + HIDWORD(v18) + 0x800000000000000;
        }

        else
        {
          v20 = v211.count[0];
          v22 = v211.hash[0];
          v21 = v211.count[1];
          v23 = v211.hash[1];
          if ((v211.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v24 = (v211.count[0] + v211.count[1]) ^ __ROR8__(v211.count[1], 51);
            v25 = v211.hash[0] + (v211.hash[1] ^ v211.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v26 = __ROR8__(v211.hash[1] ^ v211.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v27 = (v25 ^ v26) + __ROR8__(v211.count[0] + v211.count[1], 32);
            v23 = v27 ^ __ROR8__(v25 ^ v26, 43);
            v28 = v25 + v24;
            v21 = v28 ^ __ROR8__(v24, 47);
            v22 = __ROR8__(v28, 32);
            v20 = v27 ^ v211.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v19 = v211.hash[2] & 0xFF00000000000000;
          }

          v29 = v23 ^ v18;
          v30 = v20 + v21;
          v31 = (v20 + v21) ^ __ROR8__(v21, 51);
          v32 = v22 + v29;
          v33 = __ROR8__(v29, 48);
          v34 = (v32 ^ v33) + __ROR8__(v30, 32);
          v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
          v36 = v32 + v31;
          v211.hash[0] = __ROR8__(v36, 32);
          v211.hash[1] = v35;
          v211.count[0] = v34 ^ v18;
          v211.count[1] = v36 ^ __ROR8__(v31, 47);
          v37 = v19 + 0x800000000000000;
        }

        v211.hash[2] = v37;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [currentHandler handleFailureInFunction:v39 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v210 <= 4000)
  {
    if (v210 == 3001)
    {
      _MSV_XXH_XXH64_update(&v211, data, 8uLL);
    }

    else if (v210 == 4000)
    {
      CC_MD5_Update(&v211, data, 4u);
    }
  }

  else
  {
    switch(v210)
    {
      case 4001:
        CC_SHA1_Update(&v211, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v211, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v211, data, 4u);
        break;
    }
  }

  v205 = 0u;
  v206 = 0u;
  v207 = 0u;
  v208 = 0u;
  keyPath = [(MPModelSortDescriptor *)self keyPath];
  v59 = [keyPath countByEnumeratingWithState:&v205 objects:v212 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v206;
    do
    {
      for (i = 0; i != v60; ++i)
      {
        if (*v206 != v61)
        {
          objc_enumerationMutation(keyPath);
        }

        v63 = *(*(&v205 + 1) + 8 * i);
        uTF8String = [v63 UTF8String];
        v65 = [v63 length];
        v66 = v65;
        if (v210 > 3000)
        {
          if (v210 <= 4000)
          {
            if (v210 == 3001)
            {
              _MSV_XXH_XXH64_update(&v211, uTF8String, v65);
            }

            else if (v210 == 4000)
            {
              CC_MD5_Update(&v211, uTF8String, v65);
            }
          }

          else
          {
            switch(v210)
            {
              case 4001:
                CC_SHA1_Update(&v211, uTF8String, v65);
                break;
              case 4256:
                CC_SHA256_Update(&v211, uTF8String, v65);
                break;
              case 4512:
                CC_SHA512_Update(&v211, uTF8String, v65);
                break;
            }
          }

          goto LABEL_117;
        }

        if (v210 <= 1999)
        {
          if (!v210)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
            [currentHandler2 handleFailureInFunction:v100 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

            goto LABEL_117;
          }

          if (v210 != 1000)
          {
            goto LABEL_117;
          }

          v67 = HIBYTE(v211.hash[2]);
          v68 = v211.hash[2] & 0xFFFFFFFFFFFFFFLL;
          v69 = HIBYTE(v211.hash[2]) & 7;
          if (v69)
          {
            v70 = 8 - v69;
            v71 = v65 - (8 - v69);
            if (v65 >= 8 - v69)
            {
              v72 = 8 * v69;
              v73 = uTF8String;
              v74 = v211.hash[2] & 0xFFFFFFFFFFFFFFLL;
              do
              {
                v75 = *v73++;
                v74 |= v75 << v72;
                v72 += 8;
              }

              while (v72 != 64);
              v76 = (v211.count[0] + v211.count[1]) ^ __ROR8__(v211.count[1], 51);
              v77 = v211.hash[0] + (v211.hash[1] ^ v74);
              v78 = __ROR8__(v211.hash[1] ^ v74, 48);
              v79 = (v77 ^ v78) + __ROR8__(v211.count[0] + v211.count[1], 32);
              v80 = v79 ^ __ROR8__(v77 ^ v78, 43);
              v81 = v77 + v76;
              v211.hash[0] = __ROR8__(v81, 32);
              v211.hash[1] = v80;
              v211.count[0] = v79 ^ v74;
              v211.count[1] = v81 ^ __ROR8__(v76, 47);
              uTF8String = (uTF8String + v70);
              v211.hash[2] = (v70 + v67) << 56;
              v66 = v71;
              goto LABEL_63;
            }
          }

          else
          {
LABEL_63:
            if (v66 >= 8)
            {
              v82 = v211.count[0];
              v85 = v211.hash[0];
              v83 = v211.count[1];
              v84 = v211.hash[1];
              do
              {
                v86 = *uTF8String;
                uTF8String += 4;
                v87 = v84 ^ v86;
                v88 = v82 + v83;
                v89 = v88 ^ __ROR8__(v83, 51);
                v90 = v85 + v87;
                v91 = __ROR8__(v87, 48);
                v92 = (v90 ^ v91) + __ROR8__(v88, 32);
                v84 = v92 ^ __ROR8__(v90 ^ v91, 43);
                v93 = v90 + v89;
                v83 = v93 ^ __ROR8__(v89, 47);
                v85 = __ROR8__(v93, 32);
                v211.hash[0] = v85;
                v211.hash[1] = v84;
                v82 = v92 ^ v86;
                v211.count[0] = v82;
                v211.count[1] = v83;
                v66 -= 8;
                v67 += 8;
              }

              while (v66 > 7);
            }

            v69 = 0;
          }

          if (v66)
          {
            v94 = 0;
            v95 = 0;
            v96 = v66;
            do
            {
              v97 = *uTF8String;
              uTF8String = (uTF8String + 1);
              v95 |= v97 << v94;
              v94 += 8;
              --v96;
            }

            while (v96);
            if (v69)
            {
              v98 = (v95 << (8 * v69)) | ((v66 + v67) << 56) | v68;
            }

            else
            {
              v98 = v95 | ((v66 + v67) << 56);
            }
          }

          else
          {
            if (v69)
            {
              goto LABEL_117;
            }

            v98 = v67 << 56;
          }

          v211.hash[2] = v98;
          goto LABEL_117;
        }

        if (v210 == 2000)
        {
          v101 = v65 + BYTE3(v211.count[1]);
          if (v101 < 4)
          {
            v102 = v65;
            v103 = &v211.hash[-1] + BYTE3(v211.count[1]);
            if (v102 <= 1u)
            {
              if (!v102)
              {
LABEL_116:
                HIDWORD(v211.count[0]) += v66;
                goto LABEL_117;
              }

              if (v102 == 1)
              {
                *v103 = *uTF8String;
                goto LABEL_116;
              }

LABEL_100:
              memcpy(v103, uTF8String, v102);
              goto LABEL_116;
            }

            if (v102 == 2)
            {
              v107 = *uTF8String;
            }

            else
            {
              if (v102 != 3)
              {
                goto LABEL_100;
              }

              v107 = *uTF8String;
              v103[2] = *(uTF8String + 2);
            }

            *v103 = v107;
            goto LABEL_116;
          }

          v104 = 0;
          if (BYTE3(v211.count[1]) > 1u)
          {
            if (BYTE3(v211.count[1]) == 2)
            {
              v105 = LOBYTE(v211.count[1]);
              v104 = HIBYTE(LOWORD(v211.count[1]));
              v106 = *uTF8String;
LABEL_105:
              v108 = v106;
              v109 = v106 >> 8;
            }

            else
            {
              v105 = 0;
              v108 = 0;
              v109 = 0;
              if (BYTE3(v211.count[1]) == 3)
              {
                v105 = LOBYTE(v211.count[1]);
                v104 = HIBYTE(LOWORD(v211.count[1]));
                v108 = BYTE2(v211.count[1]);
                v109 = *uTF8String;
              }
            }
          }

          else
          {
            if (BYTE3(v211.count[1]))
            {
              v105 = LOBYTE(v211.count[1]);
              v104 = *uTF8String;
              v106 = *(uTF8String + 1);
              goto LABEL_105;
            }

            v104 = BYTE1(*uTF8String);
            v105 = *uTF8String;
            v108 = BYTE2(*uTF8String);
            v109 = HIBYTE(*uTF8String);
          }

          v110 = (v108 << 16) | (v109 << 24) | v105 | (v104 << 8);
          HIDWORD(v111) = (461845907 * ((380141568 * v110) | ((-862048943 * v110) >> 17))) ^ LODWORD(v211.count[0]);
          LODWORD(v111) = HIDWORD(v111);
          v112 = 5 * (v111 >> 19) - 430675100;
          LODWORD(v211.count[0]) = v112;
          v113 = (uTF8String - BYTE3(v211.count[1]) + 4);
          v114 = uTF8String + (v101 & 0xFFFFFFFFFFFFFFFCLL) - BYTE3(v211.count[1]);
          while (v113 < v114)
          {
            v115 = *v113++;
            HIDWORD(v116) = (461845907 * ((380141568 * v115) | ((-862048943 * v115) >> 17))) ^ v112;
            LODWORD(v116) = HIDWORD(v116);
            v112 = 5 * (v116 >> 19) - 430675100;
            LODWORD(v211.count[0]) = v112;
          }

          v117 = v101 & 3;
          if (v117 > 1)
          {
            if (v117 == 2)
            {
              LOWORD(v211.count[1]) = *v114;
            }

            else
            {
              v118 = *v114;
              BYTE2(v211.count[1]) = *(v114 + 2);
              LOWORD(v211.count[1]) = v118;
            }
          }

          else if (v117)
          {
            LOBYTE(v211.count[1]) = *v114;
          }

          BYTE3(v211.count[1]) = v117;
          goto LABEL_116;
        }

        if (v210 == 3000)
        {
          _MSV_XXH_XXH32_update_27340(&v211, uTF8String, v65);
        }

LABEL_117:
      }

      v60 = [keyPath countByEnumeratingWithState:&v205 objects:v212 count:16];
    }

    while (v60);
  }

  memset(&v213[8], 0, 64);
  *v213 = v210;
  if (v210 <= 3000)
  {
    if (v210 <= 1999)
    {
      if (!v210)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        v153 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
        [currentHandler3 handleFailureInFunction:v153 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

        goto LABEL_166;
      }

      if (v210 != 1000)
      {
        goto LABEL_166;
      }

      v119 = (v211.count[0] + v211.count[1]) ^ __ROR8__(v211.count[1], 51);
      v120 = v211.hash[0] + (v211.hash[1] ^ v211.hash[2]);
      v121 = __ROR8__(v211.hash[1] ^ v211.hash[2], 48);
      v122 = (v120 ^ v121) + __ROR8__(v211.count[0] + v211.count[1], 32);
      v123 = v122 ^ __ROR8__(v120 ^ v121, 43);
      v124 = v120 + v119;
      v125 = v124 ^ __ROR8__(v119, 47);
      v126 = (v122 ^ v211.hash[2]) + v125;
      v127 = v126 ^ __ROR8__(v125, 51);
      v128 = (__ROR8__(v124, 32) ^ 0xFFLL) + v123;
      v129 = __ROR8__(v123, 48);
      v130 = __ROR8__(v126, 32) + (v128 ^ v129);
      v131 = v130 ^ __ROR8__(v128 ^ v129, 43);
      v132 = v127 + v128;
      v133 = v132 ^ __ROR8__(v127, 47);
      v134 = v133 + v130;
      v135 = v134 ^ __ROR8__(v133, 51);
      v136 = __ROR8__(v132, 32) + v131;
      v137 = __ROR8__(v131, 48);
      v138 = __ROR8__(v134, 32) + (v136 ^ v137);
      v139 = v138 ^ __ROR8__(v136 ^ v137, 43);
      v140 = v135 + v136;
      v141 = v140 ^ __ROR8__(v135, 47);
      v142 = v141 + v138;
      v143 = v142 ^ __ROR8__(v141, 51);
      v144 = __ROR8__(v140, 32) + v139;
      v145 = __ROR8__(v139, 48);
      v146 = __ROR8__(v142, 32) + (v144 ^ v145);
      v147 = v146 ^ __ROR8__(v144 ^ v145, 43);
      v148 = v143 + v144;
      v211.count[0] = v146;
      v211.count[1] = v148 ^ __ROR8__(v143, 47);
      v211.hash[0] = __ROR8__(v148, 32);
      v211.hash[1] = v147;
      v149 = v211.count[1] ^ v146 ^ v211.hash[0] ^ v147;
      goto LABEL_153;
    }

    if (v210 != 2000)
    {
      if (v210 != 3000)
      {
        goto LABEL_166;
      }

      v150 = &v211.hash[1];
      if (HIDWORD(v211.count[0]))
      {
        v151 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v211.count[1], xmmword_1A273DD70), vshlq_u32(*&v211.count[1], xmmword_1A273DD60)));
      }

      else
      {
        v151 = LODWORD(v211.hash[0]) + 374761393;
      }

      v163 = LODWORD(v211.count[0]) + v151;
      v164 = v211.hash[3] & 0xF;
      if (v164 >= 4)
      {
        do
        {
          v165 = *v150;
          v150 = (v150 + 4);
          HIDWORD(v166) = v163 - 1028477379 * v165;
          LODWORD(v166) = HIDWORD(v166);
          v163 = 668265263 * (v166 >> 15);
          v164 -= 4;
        }

        while (v164 > 3);
      }

      for (; v164; --v164)
      {
        v167 = *v150;
        v150 = (v150 + 1);
        HIDWORD(v168) = v163 + 374761393 * v167;
        LODWORD(v168) = HIDWORD(v168);
        v163 = -1640531535 * (v168 >> 21);
      }

      v169 = -1028477379 * ((-2048144777 * (v163 ^ (v163 >> 15))) ^ ((-2048144777 * (v163 ^ (v163 >> 15))) >> 13));
      v170 = v169 ^ HIWORD(v169);
      goto LABEL_165;
    }

    switch(BYTE3(v211.count[1]))
    {
      case 1u:
        v154 = LOBYTE(v211.count[1]);
        break;
      case 2u:
        v154 = LOWORD(v211.count[1]);
        break;
      case 3u:
        v154 = LOWORD(v211.count[1]) | (BYTE2(v211.count[1]) << 16);
        break;
      default:
        v171 = v211.count[0];
        goto LABEL_164;
    }

    v171 = (461845907 * ((380141568 * v154) | ((-862048943 * v154) >> 17))) ^ LODWORD(v211.count[0]);
LABEL_164:
    v172 = -2048144789 * (v171 ^ HIDWORD(v211.count[0]) ^ ((v171 ^ HIDWORD(v211.count[0])) >> 16));
    v170 = (-1028477387 * (v172 ^ (v172 >> 13))) ^ ((-1028477387 * (v172 ^ (v172 >> 13))) >> 16);
    LODWORD(v211.count[0]) = v170;
LABEL_165:
    *&v213[8] = v170;
    goto LABEL_166;
  }

  if (v210 > 4000)
  {
    switch(v210)
    {
      case 4001:
        CC_SHA1_Final(&v213[8], &v211);
        break;
      case 4256:
        CC_SHA256_Final(&v213[8], &v211);
        break;
      case 4512:
        CC_SHA512_Final(&v213[8], &v211);
        break;
    }

    goto LABEL_166;
  }

  if (v210 == 3001)
  {
    v155 = &v211.hash[3];
    if (v211.count[0] < 0x20)
    {
      v156 = v211.hash[1] + 0x27D4EB2F165667C5;
    }

    else
    {
      v156 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v211.hash[0], 57) + __ROR8__(v211.count[1], 63) + __ROR8__(v211.hash[1], 52) + __ROR8__(v211.hash[2], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v211.count[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v211.hash[0], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v211.hash[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v211.hash[2], 33))) - 0x7A1435883D4D519DLL;
    }

    v157 = v156 + v211.count[0];
    v158 = v211.count[0] & 0x1F;
    if (v158 >= 8)
    {
      do
      {
        v159 = *v155++;
        v157 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v159, 33)) ^ v157, 37);
        v158 -= 8;
      }

      while (v158 > 7);
    }

    if (v158 >= 4)
    {
      v160 = *v155;
      v155 = (v155 + 4);
      v157 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v160) ^ v157, 41);
      v158 -= 4;
    }

    for (; v158; --v158)
    {
      v161 = *v155;
      v155 = (v155 + 1);
      v157 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v161) ^ v157, 53);
    }

    v162 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v157 ^ (v157 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v157 ^ (v157 >> 33))) >> 29));
    v149 = v162 ^ HIDWORD(v162);
LABEL_153:
    *&v213[8] = v149;
    goto LABEL_166;
  }

  if (v210 == 4000)
  {
    CC_MD5_Final(&v213[8], &v211);
  }

LABEL_166:
  data[0] = *v213;
  data[1] = *&v213[16];
  data[2] = *&v213[32];
  data[3] = *&v213[48];
  v215 = *&v213[64];
  if (*v213 > 3999)
  {
    if (*&data[0] > 4255)
    {
      if (*&data[0] == 4256)
      {
        v195 = data + 8;
        v196 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v197 = v196;
        for (j = 0; j != 64; j += 2)
        {
          v199 = *v195++;
          v200 = &v196[j];
          *v200 = MSVFastHexStringFromBytes_hexCharacters_55966[v199 >> 4];
          v200[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v199 & 0xF];
        }

        v179 = objc_alloc(MEMORY[0x1E696AEC0]);
        v180 = v197;
        v181 = 64;
      }

      else
      {
        if (*&data[0] != 4512)
        {
          goto LABEL_194;
        }

        v183 = data + 8;
        v184 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v185 = v184;
        for (k = 0; k != 128; k += 2)
        {
          v187 = *v183++;
          v188 = &v184[k];
          *v188 = MSVFastHexStringFromBytes_hexCharacters_55966[v187 >> 4];
          v188[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v187 & 0xF];
        }

        v179 = objc_alloc(MEMORY[0x1E696AEC0]);
        v180 = v185;
        v181 = 128;
      }
    }

    else if (*&data[0] == 4000)
    {
      v189 = data + 8;
      v190 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v191 = v190;
      for (m = 0; m != 32; m += 2)
      {
        v193 = *v189++;
        v194 = &v190[m];
        *v194 = MSVFastHexStringFromBytes_hexCharacters_55966[v193 >> 4];
        v194[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v193 & 0xF];
      }

      v179 = objc_alloc(MEMORY[0x1E696AEC0]);
      v180 = v191;
      v181 = 32;
    }

    else
    {
      if (*&data[0] != 4001)
      {
        goto LABEL_194;
      }

      v173 = data + 8;
      v174 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v175 = v174;
      for (n = 0; n != 40; n += 2)
      {
        v177 = *v173++;
        v178 = &v174[n];
        *v178 = MSVFastHexStringFromBytes_hexCharacters_55966[v177 >> 4];
        v178[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v177 & 0xF];
      }

      v179 = objc_alloc(MEMORY[0x1E696AEC0]);
      v180 = v175;
      v181 = 40;
    }

    v201 = [v179 initWithBytesNoCopy:v180 length:v181 encoding:4 freeWhenDone:1];
    v182 = [v201 hash];

    return v182;
  }

  if (*&data[0] <= 2999)
  {
    if (*&data[0] != 1000)
    {
      if (*&data[0] != 2000)
      {
        goto LABEL_194;
      }

      return DWORD2(data[0]);
    }

    return *(&data[0] + 1);
  }

  if (*&data[0] == 3000)
  {
    return DWORD2(data[0]);
  }

  if (*&data[0] != 3001)
  {
LABEL_194:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    v204 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
    [currentHandler4 handleFailureInFunction:v204 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

    return 0;
  }

  return *(&data[0] + 1);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = MPModelSortDescriptor;
  if ([(MPModelSortDescriptor *)&v10 isEqual:equalCopy])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyPath = [(MPModelSortDescriptor *)self keyPath];
      keyPath2 = [v5 keyPath];

      v8 = [keyPath isEqualToArray:keyPath2];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)sortDescriptorWithKeyPath:(id)path ascending:(BOOL)ascending
{
  ascendingCopy = ascending;
  pathCopy = path;
  v6 = objc_alloc(objc_opt_class());
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 initWithKey:v8 ascending:ascendingCopy];

  [v9 setKeyPath:pathCopy];

  return v9;
}

@end