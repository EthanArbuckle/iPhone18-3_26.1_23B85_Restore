@interface MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration

- (unint64_t)hash
{
  v302 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  memset(&v298.hash[3], 0, 168);
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v297 = 1000;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v17 = v14 + v13;
  v298.hash[0] = __ROR8__(v17, 32);
  v298.hash[1] = v16 ^ __ROR8__(v15, 43);
  v298.count[0] = v16 ^ v11;
  v298.count[1] = v17 ^ __ROR8__(v13, 47);
  v298.hash[2] = 0x800000000000000;

  v296.receiver = self;
  v296.super_class = MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration;
  v18 = [(MPLibraryKeepLocalStatusObserverConfiguration *)&v296 hash];
  *&data[0] = v18;
  if (v297 <= 3000)
  {
    if (v297 > 1999)
    {
      if (v297 == 2000)
      {
        LOBYTE(v40) = 0;
        if (BYTE3(v298.count[1]) > 1u)
        {
          if (BYTE3(v298.count[1]) == 2)
          {
            v43 = v18 >> 8;
            v41 = v298.count[1];
            LODWORD(v40) = HIBYTE(LOWORD(v298.count[1]));
            LOBYTE(v42) = v18;
          }

          else
          {
            v41 = 0;
            LOBYTE(v42) = 0;
            LODWORD(v43) = 0;
            if (BYTE3(v298.count[1]) == 3)
            {
              v41 = v298.count[1];
              LODWORD(v40) = HIBYTE(LOWORD(v298.count[1]));
              LOBYTE(v42) = BYTE2(v298.count[1]);
              LODWORD(v43) = v18;
            }
          }
        }

        else if (BYTE3(v298.count[1]))
        {
          v41 = 0;
          LOBYTE(v42) = 0;
          LODWORD(v43) = 0;
          if (BYTE3(v298.count[1]) == 1)
          {
            v42 = v18 >> 8;
            v41 = v298.count[1];
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
        HIDWORD(v52) = (461845907 * ((380141568 * v51) | ((-862048943 * v51) >> 17))) ^ LODWORD(v298.count[0]);
        LODWORD(v52) = HIDWORD(v52);
        v53 = 5 * (v52 >> 19) - 430675100;
        LODWORD(v298.count[0]) = v53;
        v54 = data - BYTE3(v298.count[1]) + 4;
        v55 = data + ((BYTE3(v298.count[1]) + 8) & 0x1FC) - BYTE3(v298.count[1]);
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
          LODWORD(v298.count[0]) = v53;
        }

        if ((BYTE3(v298.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v298.count[1]) = *v55;
          if ((BYTE3(v298.count[1]) & 3) != 2)
          {
            BYTE2(v298.count[1]) = v55[2];
          }
        }

        else if ((v298.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v298.count[1]) = *v55;
        }

        BYTE3(v298.count[1]) &= 3u;
        HIDWORD(v298.count[0]) += 8;
      }

      else if (v297 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v298, data, 8uLL);
      }
    }

    else if (v297)
    {
      if (v297 == 1000)
      {
        v19 = v298.hash[2];
        if ((v298.hash[2] & 0x400000000000000) != 0)
        {
          v44 = v298.hash[2] & 0xFFFFFFFFFFFFFFLL | (v18 << 32);
          v45 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
          v46 = v298.hash[0] + (v298.hash[1] ^ v44);
          v47 = __ROR8__(v298.hash[1] ^ v44, 48);
          v48 = (v46 ^ v47) + __ROR8__(v298.count[0] + v298.count[1], 32);
          v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
          v50 = v46 + v45;
          v298.hash[0] = __ROR8__(v50, 32);
          v298.hash[1] = v49;
          v298.count[0] = v48 ^ v44;
          v298.count[1] = v50 ^ __ROR8__(v45, 47);
          v37 = (v298.hash[2] & 0xFF00000000000000) + HIDWORD(v18) + 0x800000000000000;
        }

        else
        {
          v20 = v298.count[0];
          v22 = v298.hash[0];
          v21 = v298.count[1];
          v23 = v298.hash[1];
          if ((v298.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v24 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
            v25 = v298.hash[0] + (v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v26 = __ROR8__(v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v27 = (v25 ^ v26) + __ROR8__(v298.count[0] + v298.count[1], 32);
            v23 = v27 ^ __ROR8__(v25 ^ v26, 43);
            v28 = v25 + v24;
            v21 = v28 ^ __ROR8__(v24, 47);
            v22 = __ROR8__(v28, 32);
            v20 = v27 ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v19 = v298.hash[2] & 0xFF00000000000000;
          }

          v29 = v23 ^ v18;
          v30 = v20 + v21;
          v31 = (v20 + v21) ^ __ROR8__(v21, 51);
          v32 = v22 + v29;
          v33 = __ROR8__(v29, 48);
          v34 = (v32 ^ v33) + __ROR8__(v30, 32);
          v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
          v36 = v32 + v31;
          v298.hash[0] = __ROR8__(v36, 32);
          v298.hash[1] = v35;
          v298.count[0] = v34 ^ v18;
          v298.count[1] = v36 ^ __ROR8__(v31, 47);
          v37 = v19 + 0x800000000000000;
        }

        v298.hash[2] = v37;
      }
    }

    else
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v38 handleFailureInFunction:v39 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v297 <= 4000)
  {
    if (v297 == 3001)
    {
      _MSV_XXH_XXH64_update(&v298, data, 8uLL);
    }

    else if (v297 == 4000)
    {
      CC_MD5_Update(&v298, data, 4u);
    }
  }

  else
  {
    switch(v297)
    {
      case 4001:
        CC_SHA1_Update(&v298, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v298, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v298, data, 4u);
        break;
    }
  }

  downloadEnabledItemCount = self->_downloadEnabledItemCount;
  *&data[0] = downloadEnabledItemCount;
  if (v297 <= 3000)
  {
    if (v297 > 1999)
    {
      if (v297 == 2000)
      {
        LOBYTE(v80) = 0;
        if (BYTE3(v298.count[1]) > 1u)
        {
          if (BYTE3(v298.count[1]) == 2)
          {
            v83 = downloadEnabledItemCount >> 8;
            v81 = v298.count[1];
            LODWORD(v80) = HIBYTE(LOWORD(v298.count[1]));
            LOBYTE(v82) = downloadEnabledItemCount;
          }

          else
          {
            v81 = 0;
            LOBYTE(v82) = 0;
            LODWORD(v83) = 0;
            if (BYTE3(v298.count[1]) == 3)
            {
              v81 = v298.count[1];
              LODWORD(v80) = HIBYTE(LOWORD(v298.count[1]));
              LOBYTE(v82) = BYTE2(v298.count[1]);
              LODWORD(v83) = downloadEnabledItemCount;
            }
          }
        }

        else if (BYTE3(v298.count[1]))
        {
          v81 = 0;
          LOBYTE(v82) = 0;
          LODWORD(v83) = 0;
          if (BYTE3(v298.count[1]) == 1)
          {
            v82 = downloadEnabledItemCount >> 8;
            v81 = v298.count[1];
            v83 = downloadEnabledItemCount >> 16;
            LOBYTE(v80) = downloadEnabledItemCount;
          }
        }

        else
        {
          v80 = downloadEnabledItemCount >> 8;
          v82 = downloadEnabledItemCount >> 16;
          v81 = downloadEnabledItemCount;
          v83 = downloadEnabledItemCount >> 24;
        }

        v91 = (v82 << 16) | (v83 << 24) | v81 | (v80 << 8);
        HIDWORD(v92) = (461845907 * ((380141568 * v91) | ((-862048943 * v91) >> 17))) ^ LODWORD(v298.count[0]);
        LODWORD(v92) = HIDWORD(v92);
        v93 = 5 * (v92 >> 19) - 430675100;
        LODWORD(v298.count[0]) = v93;
        v94 = data - BYTE3(v298.count[1]) + 4;
        v95 = data + ((BYTE3(v298.count[1]) + 8) & 0x1FC) - BYTE3(v298.count[1]);
        if (v94 < v95)
        {
          do
          {
            v96 = *v94;
            v94 += 4;
            HIDWORD(v97) = (461845907 * ((380141568 * v96) | ((-862048943 * v96) >> 17))) ^ v93;
            LODWORD(v97) = HIDWORD(v97);
            v93 = 5 * (v97 >> 19) - 430675100;
          }

          while (v94 < v95);
          LODWORD(v298.count[0]) = v93;
        }

        if ((BYTE3(v298.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v298.count[1]) = *v95;
          if ((BYTE3(v298.count[1]) & 3) != 2)
          {
            BYTE2(v298.count[1]) = v95[2];
          }
        }

        else if ((v298.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v298.count[1]) = *v95;
        }

        BYTE3(v298.count[1]) &= 3u;
        HIDWORD(v298.count[0]) += 8;
      }

      else if (v297 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v298, data, 8uLL);
      }
    }

    else if (v297)
    {
      if (v297 == 1000)
      {
        v59 = v298.hash[2];
        if ((v298.hash[2] & 0x400000000000000) != 0)
        {
          v84 = v298.hash[2] & 0xFFFFFFFFFFFFFFLL | (downloadEnabledItemCount << 32);
          v85 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
          v86 = v298.hash[0] + (v298.hash[1] ^ v84);
          v87 = __ROR8__(v298.hash[1] ^ v84, 48);
          v88 = (v86 ^ v87) + __ROR8__(v298.count[0] + v298.count[1], 32);
          v89 = v88 ^ __ROR8__(v86 ^ v87, 43);
          v90 = v86 + v85;
          v298.hash[0] = __ROR8__(v90, 32);
          v298.hash[1] = v89;
          v298.count[0] = v88 ^ v84;
          v298.count[1] = v90 ^ __ROR8__(v85, 47);
          v77 = (v298.hash[2] & 0xFF00000000000000) + HIDWORD(downloadEnabledItemCount) + 0x800000000000000;
        }

        else
        {
          v60 = v298.count[0];
          v62 = v298.hash[0];
          v61 = v298.count[1];
          v63 = v298.hash[1];
          if ((v298.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v64 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
            v65 = v298.hash[0] + (v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v66 = __ROR8__(v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v67 = (v65 ^ v66) + __ROR8__(v298.count[0] + v298.count[1], 32);
            v63 = v67 ^ __ROR8__(v65 ^ v66, 43);
            v68 = v65 + v64;
            v61 = v68 ^ __ROR8__(v64, 47);
            v62 = __ROR8__(v68, 32);
            v60 = v67 ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v59 = v298.hash[2] & 0xFF00000000000000;
          }

          v69 = v63 ^ downloadEnabledItemCount;
          v70 = v60 + v61;
          v71 = (v60 + v61) ^ __ROR8__(v61, 51);
          v72 = v62 + v69;
          v73 = __ROR8__(v69, 48);
          v74 = (v72 ^ v73) + __ROR8__(v70, 32);
          v75 = v74 ^ __ROR8__(v72 ^ v73, 43);
          v76 = v72 + v71;
          v298.hash[0] = __ROR8__(v76, 32);
          v298.hash[1] = v75;
          v298.count[0] = v74 ^ downloadEnabledItemCount;
          v298.count[1] = v76 ^ __ROR8__(v71, 47);
          v77 = v59 + 0x800000000000000;
        }

        v298.hash[2] = v77;
      }
    }

    else
    {
      v78 = [MEMORY[0x1E696AAA8] currentHandler];
      v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v78 handleFailureInFunction:v79 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v297 <= 4000)
  {
    if (v297 == 3001)
    {
      _MSV_XXH_XXH64_update(&v298, data, 8uLL);
    }

    else if (v297 == 4000)
    {
      CC_MD5_Update(&v298, data, 4u);
    }
  }

  else
  {
    switch(v297)
    {
      case 4001:
        CC_SHA1_Update(&v298, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v298, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v298, data, 4u);
        break;
    }
  }

  nonPurgeableItemCount = self->_nonPurgeableItemCount;
  *&data[0] = nonPurgeableItemCount;
  if (v297 <= 3000)
  {
    if (v297 > 1999)
    {
      if (v297 == 2000)
      {
        LOBYTE(v120) = 0;
        if (BYTE3(v298.count[1]) > 1u)
        {
          if (BYTE3(v298.count[1]) == 2)
          {
            v123 = nonPurgeableItemCount >> 8;
            v121 = v298.count[1];
            LODWORD(v120) = HIBYTE(LOWORD(v298.count[1]));
            LOBYTE(v122) = nonPurgeableItemCount;
          }

          else
          {
            v121 = 0;
            LOBYTE(v122) = 0;
            LODWORD(v123) = 0;
            if (BYTE3(v298.count[1]) == 3)
            {
              v121 = v298.count[1];
              LODWORD(v120) = HIBYTE(LOWORD(v298.count[1]));
              LOBYTE(v122) = BYTE2(v298.count[1]);
              LODWORD(v123) = nonPurgeableItemCount;
            }
          }
        }

        else if (BYTE3(v298.count[1]))
        {
          v121 = 0;
          LOBYTE(v122) = 0;
          LODWORD(v123) = 0;
          if (BYTE3(v298.count[1]) == 1)
          {
            v122 = nonPurgeableItemCount >> 8;
            v121 = v298.count[1];
            v123 = nonPurgeableItemCount >> 16;
            LOBYTE(v120) = nonPurgeableItemCount;
          }
        }

        else
        {
          v120 = nonPurgeableItemCount >> 8;
          v122 = nonPurgeableItemCount >> 16;
          v121 = nonPurgeableItemCount;
          v123 = nonPurgeableItemCount >> 24;
        }

        v131 = (v122 << 16) | (v123 << 24) | v121 | (v120 << 8);
        HIDWORD(v132) = (461845907 * ((380141568 * v131) | ((-862048943 * v131) >> 17))) ^ LODWORD(v298.count[0]);
        LODWORD(v132) = HIDWORD(v132);
        v133 = 5 * (v132 >> 19) - 430675100;
        LODWORD(v298.count[0]) = v133;
        v134 = data - BYTE3(v298.count[1]) + 4;
        v135 = data + ((BYTE3(v298.count[1]) + 8) & 0x1FC) - BYTE3(v298.count[1]);
        if (v134 < v135)
        {
          do
          {
            v136 = *v134;
            v134 += 4;
            HIDWORD(v137) = (461845907 * ((380141568 * v136) | ((-862048943 * v136) >> 17))) ^ v133;
            LODWORD(v137) = HIDWORD(v137);
            v133 = 5 * (v137 >> 19) - 430675100;
          }

          while (v134 < v135);
          LODWORD(v298.count[0]) = v133;
        }

        if ((BYTE3(v298.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v298.count[1]) = *v135;
          if ((BYTE3(v298.count[1]) & 3) != 2)
          {
            BYTE2(v298.count[1]) = v135[2];
          }
        }

        else if ((v298.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v298.count[1]) = *v135;
        }

        BYTE3(v298.count[1]) &= 3u;
        HIDWORD(v298.count[0]) += 8;
      }

      else if (v297 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v298, data, 8uLL);
      }
    }

    else if (v297)
    {
      if (v297 == 1000)
      {
        v99 = v298.hash[2];
        if ((v298.hash[2] & 0x400000000000000) != 0)
        {
          v124 = v298.hash[2] & 0xFFFFFFFFFFFFFFLL | (nonPurgeableItemCount << 32);
          v125 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
          v126 = v298.hash[0] + (v298.hash[1] ^ v124);
          v127 = __ROR8__(v298.hash[1] ^ v124, 48);
          v128 = (v126 ^ v127) + __ROR8__(v298.count[0] + v298.count[1], 32);
          v129 = v128 ^ __ROR8__(v126 ^ v127, 43);
          v130 = v126 + v125;
          v298.hash[0] = __ROR8__(v130, 32);
          v298.hash[1] = v129;
          v298.count[0] = v128 ^ v124;
          v298.count[1] = v130 ^ __ROR8__(v125, 47);
          v117 = (v298.hash[2] & 0xFF00000000000000) + HIDWORD(nonPurgeableItemCount) + 0x800000000000000;
        }

        else
        {
          v100 = v298.count[0];
          v102 = v298.hash[0];
          v101 = v298.count[1];
          v103 = v298.hash[1];
          if ((v298.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v104 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
            v105 = v298.hash[0] + (v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v106 = __ROR8__(v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v107 = (v105 ^ v106) + __ROR8__(v298.count[0] + v298.count[1], 32);
            v103 = v107 ^ __ROR8__(v105 ^ v106, 43);
            v108 = v105 + v104;
            v101 = v108 ^ __ROR8__(v104, 47);
            v102 = __ROR8__(v108, 32);
            v100 = v107 ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v99 = v298.hash[2] & 0xFF00000000000000;
          }

          v109 = v103 ^ nonPurgeableItemCount;
          v110 = v100 + v101;
          v111 = (v100 + v101) ^ __ROR8__(v101, 51);
          v112 = v102 + v109;
          v113 = __ROR8__(v109, 48);
          v114 = (v112 ^ v113) + __ROR8__(v110, 32);
          v115 = v114 ^ __ROR8__(v112 ^ v113, 43);
          v116 = v112 + v111;
          v298.hash[0] = __ROR8__(v116, 32);
          v298.hash[1] = v115;
          v298.count[0] = v114 ^ nonPurgeableItemCount;
          v298.count[1] = v116 ^ __ROR8__(v111, 47);
          v117 = v99 + 0x800000000000000;
        }

        v298.hash[2] = v117;
      }
    }

    else
    {
      v118 = [MEMORY[0x1E696AAA8] currentHandler];
      v119 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v118 handleFailureInFunction:v119 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v297 <= 4000)
  {
    if (v297 == 3001)
    {
      _MSV_XXH_XXH64_update(&v298, data, 8uLL);
    }

    else if (v297 == 4000)
    {
      CC_MD5_Update(&v298, data, 4u);
    }
  }

  else
  {
    switch(v297)
    {
      case 4001:
        CC_SHA1_Update(&v298, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v298, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v298, data, 4u);
        break;
    }
  }

  redownloadableItemCount = self->_redownloadableItemCount;
  *&data[0] = redownloadableItemCount;
  if (v297 <= 3000)
  {
    if (v297 > 1999)
    {
      if (v297 == 2000)
      {
        LOBYTE(v160) = 0;
        if (BYTE3(v298.count[1]) > 1u)
        {
          if (BYTE3(v298.count[1]) == 2)
          {
            v163 = redownloadableItemCount >> 8;
            v161 = v298.count[1];
            LODWORD(v160) = HIBYTE(LOWORD(v298.count[1]));
            LOBYTE(v162) = redownloadableItemCount;
          }

          else
          {
            v161 = 0;
            LOBYTE(v162) = 0;
            LODWORD(v163) = 0;
            if (BYTE3(v298.count[1]) == 3)
            {
              v161 = v298.count[1];
              LODWORD(v160) = HIBYTE(LOWORD(v298.count[1]));
              LOBYTE(v162) = BYTE2(v298.count[1]);
              LODWORD(v163) = redownloadableItemCount;
            }
          }
        }

        else if (BYTE3(v298.count[1]))
        {
          v161 = 0;
          LOBYTE(v162) = 0;
          LODWORD(v163) = 0;
          if (BYTE3(v298.count[1]) == 1)
          {
            v162 = redownloadableItemCount >> 8;
            v161 = v298.count[1];
            v163 = redownloadableItemCount >> 16;
            LOBYTE(v160) = redownloadableItemCount;
          }
        }

        else
        {
          v160 = redownloadableItemCount >> 8;
          v162 = redownloadableItemCount >> 16;
          v161 = redownloadableItemCount;
          v163 = redownloadableItemCount >> 24;
        }

        v171 = (v162 << 16) | (v163 << 24) | v161 | (v160 << 8);
        HIDWORD(v172) = (461845907 * ((380141568 * v171) | ((-862048943 * v171) >> 17))) ^ LODWORD(v298.count[0]);
        LODWORD(v172) = HIDWORD(v172);
        v173 = 5 * (v172 >> 19) - 430675100;
        LODWORD(v298.count[0]) = v173;
        v174 = data - BYTE3(v298.count[1]) + 4;
        v175 = data + ((BYTE3(v298.count[1]) + 8) & 0x1FC) - BYTE3(v298.count[1]);
        if (v174 < v175)
        {
          do
          {
            v176 = *v174;
            v174 += 4;
            HIDWORD(v177) = (461845907 * ((380141568 * v176) | ((-862048943 * v176) >> 17))) ^ v173;
            LODWORD(v177) = HIDWORD(v177);
            v173 = 5 * (v177 >> 19) - 430675100;
          }

          while (v174 < v175);
          LODWORD(v298.count[0]) = v173;
        }

        if ((BYTE3(v298.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v298.count[1]) = *v175;
          if ((BYTE3(v298.count[1]) & 3) != 2)
          {
            BYTE2(v298.count[1]) = v175[2];
          }
        }

        else if ((v298.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v298.count[1]) = *v175;
        }

        BYTE3(v298.count[1]) &= 3u;
        HIDWORD(v298.count[0]) += 8;
      }

      else if (v297 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v298, data, 8uLL);
      }
    }

    else if (v297)
    {
      if (v297 == 1000)
      {
        v139 = v298.hash[2];
        if ((v298.hash[2] & 0x400000000000000) != 0)
        {
          v164 = v298.hash[2] & 0xFFFFFFFFFFFFFFLL | (redownloadableItemCount << 32);
          v165 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
          v166 = v298.hash[0] + (v298.hash[1] ^ v164);
          v167 = __ROR8__(v298.hash[1] ^ v164, 48);
          v168 = (v166 ^ v167) + __ROR8__(v298.count[0] + v298.count[1], 32);
          v169 = v168 ^ __ROR8__(v166 ^ v167, 43);
          v170 = v166 + v165;
          v298.hash[0] = __ROR8__(v170, 32);
          v298.hash[1] = v169;
          v298.count[0] = v168 ^ v164;
          v298.count[1] = v170 ^ __ROR8__(v165, 47);
          v157 = (v298.hash[2] & 0xFF00000000000000) + HIDWORD(redownloadableItemCount) + 0x800000000000000;
        }

        else
        {
          v140 = v298.count[0];
          v142 = v298.hash[0];
          v141 = v298.count[1];
          v143 = v298.hash[1];
          if ((v298.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v144 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
            v145 = v298.hash[0] + (v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v146 = __ROR8__(v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v147 = (v145 ^ v146) + __ROR8__(v298.count[0] + v298.count[1], 32);
            v143 = v147 ^ __ROR8__(v145 ^ v146, 43);
            v148 = v145 + v144;
            v141 = v148 ^ __ROR8__(v144, 47);
            v142 = __ROR8__(v148, 32);
            v140 = v147 ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v139 = v298.hash[2] & 0xFF00000000000000;
          }

          v149 = v143 ^ redownloadableItemCount;
          v150 = v140 + v141;
          v151 = (v140 + v141) ^ __ROR8__(v141, 51);
          v152 = v142 + v149;
          v153 = __ROR8__(v149, 48);
          v154 = (v152 ^ v153) + __ROR8__(v150, 32);
          v155 = v154 ^ __ROR8__(v152 ^ v153, 43);
          v156 = v152 + v151;
          v298.hash[0] = __ROR8__(v156, 32);
          v298.hash[1] = v155;
          v298.count[0] = v154 ^ redownloadableItemCount;
          v298.count[1] = v156 ^ __ROR8__(v151, 47);
          v157 = v139 + 0x800000000000000;
        }

        v298.hash[2] = v157;
      }
    }

    else
    {
      v158 = [MEMORY[0x1E696AAA8] currentHandler];
      v159 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v158 handleFailureInFunction:v159 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v297 <= 4000)
  {
    if (v297 == 3001)
    {
      _MSV_XXH_XXH64_update(&v298, data, 8uLL);
    }

    else if (v297 == 4000)
    {
      CC_MD5_Update(&v298, data, 4u);
    }
  }

  else
  {
    switch(v297)
    {
      case 4001:
        CC_SHA1_Update(&v298, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v298, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v298, data, 4u);
        break;
    }
  }

  v178 = self->_pendingItemIdentifiers;
  v179 = [(NSArray *)v178 hash];
  *&data[0] = v179;
  if (v297 <= 3000)
  {
    if (v297 > 1999)
    {
      if (v297 == 2000)
      {
        LOBYTE(v201) = 0;
        if (BYTE3(v298.count[1]) > 1u)
        {
          if (BYTE3(v298.count[1]) == 2)
          {
            v204 = v179 >> 8;
            v202 = v298.count[1];
            LODWORD(v201) = HIBYTE(LOWORD(v298.count[1]));
            LOBYTE(v203) = v179;
          }

          else
          {
            v202 = 0;
            LOBYTE(v203) = 0;
            LODWORD(v204) = 0;
            if (BYTE3(v298.count[1]) == 3)
            {
              v202 = v298.count[1];
              LODWORD(v201) = HIBYTE(LOWORD(v298.count[1]));
              LOBYTE(v203) = BYTE2(v298.count[1]);
              LODWORD(v204) = v179;
            }
          }
        }

        else if (BYTE3(v298.count[1]))
        {
          v202 = 0;
          LOBYTE(v203) = 0;
          LODWORD(v204) = 0;
          if (BYTE3(v298.count[1]) == 1)
          {
            v203 = v179 >> 8;
            v202 = v298.count[1];
            v204 = v179 >> 16;
            LOBYTE(v201) = v179;
          }
        }

        else
        {
          v201 = v179 >> 8;
          v203 = v179 >> 16;
          v202 = v179;
          v204 = v179 >> 24;
        }

        v212 = (v203 << 16) | (v204 << 24) | v202 | (v201 << 8);
        HIDWORD(v213) = (461845907 * ((380141568 * v212) | ((-862048943 * v212) >> 17))) ^ LODWORD(v298.count[0]);
        LODWORD(v213) = HIDWORD(v213);
        v214 = 5 * (v213 >> 19) - 430675100;
        LODWORD(v298.count[0]) = v214;
        v215 = data - BYTE3(v298.count[1]) + 4;
        v216 = data + ((BYTE3(v298.count[1]) + 8) & 0x1FC) - BYTE3(v298.count[1]);
        if (v215 < v216)
        {
          do
          {
            v217 = *v215;
            v215 += 4;
            HIDWORD(v218) = (461845907 * ((380141568 * v217) | ((-862048943 * v217) >> 17))) ^ v214;
            LODWORD(v218) = HIDWORD(v218);
            v214 = 5 * (v218 >> 19) - 430675100;
          }

          while (v215 < v216);
          LODWORD(v298.count[0]) = v214;
        }

        if ((BYTE3(v298.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v298.count[1]) = *v216;
          if ((BYTE3(v298.count[1]) & 3) != 2)
          {
            BYTE2(v298.count[1]) = v216[2];
          }
        }

        else if ((v298.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v298.count[1]) = *v216;
        }

        BYTE3(v298.count[1]) &= 3u;
        HIDWORD(v298.count[0]) += 8;
      }

      else if (v297 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v298, data, 8uLL);
      }
    }

    else if (v297)
    {
      if (v297 == 1000)
      {
        v180 = v298.hash[2];
        if ((v298.hash[2] & 0x400000000000000) != 0)
        {
          v205 = v298.hash[2] & 0xFFFFFFFFFFFFFFLL | (v179 << 32);
          v206 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
          v207 = v298.hash[0] + (v298.hash[1] ^ v205);
          v208 = __ROR8__(v298.hash[1] ^ v205, 48);
          v209 = (v207 ^ v208) + __ROR8__(v298.count[0] + v298.count[1], 32);
          v210 = v209 ^ __ROR8__(v207 ^ v208, 43);
          v211 = v207 + v206;
          v298.hash[0] = __ROR8__(v211, 32);
          v298.hash[1] = v210;
          v298.count[0] = v209 ^ v205;
          v298.count[1] = v211 ^ __ROR8__(v206, 47);
          v198 = (v298.hash[2] & 0xFF00000000000000) + HIDWORD(v179) + 0x800000000000000;
        }

        else
        {
          v181 = v298.count[0];
          v183 = v298.hash[0];
          v182 = v298.count[1];
          v184 = v298.hash[1];
          if ((v298.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v185 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
            v186 = v298.hash[0] + (v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v187 = __ROR8__(v298.hash[1] ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v188 = (v186 ^ v187) + __ROR8__(v298.count[0] + v298.count[1], 32);
            v184 = v188 ^ __ROR8__(v186 ^ v187, 43);
            v189 = v186 + v185;
            v182 = v189 ^ __ROR8__(v185, 47);
            v183 = __ROR8__(v189, 32);
            v181 = v188 ^ v298.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v180 = v298.hash[2] & 0xFF00000000000000;
          }

          v190 = v184 ^ v179;
          v191 = v181 + v182;
          v192 = (v181 + v182) ^ __ROR8__(v182, 51);
          v193 = v183 + v190;
          v194 = __ROR8__(v190, 48);
          v195 = (v193 ^ v194) + __ROR8__(v191, 32);
          v196 = v195 ^ __ROR8__(v193 ^ v194, 43);
          v197 = v193 + v192;
          v298.hash[0] = __ROR8__(v197, 32);
          v298.hash[1] = v196;
          v298.count[0] = v195 ^ v179;
          v298.count[1] = v197 ^ __ROR8__(v192, 47);
          v198 = v180 + 0x800000000000000;
        }

        v298.hash[2] = v198;
      }
    }

    else
    {
      v199 = [MEMORY[0x1E696AAA8] currentHandler];
      v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v199 handleFailureInFunction:v200 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v297 <= 4000)
  {
    if (v297 == 3001)
    {
      _MSV_XXH_XXH64_update(&v298, data, 8uLL);
    }

    else if (v297 == 4000)
    {
      CC_MD5_Update(&v298, data, 4u);
    }
  }

  else
  {
    switch(v297)
    {
      case 4001:
        CC_SHA1_Update(&v298, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v298, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v298, data, 4u);
        break;
    }
  }

  memset(&v299[8], 0, 64);
  *v299 = v297;
  if (v297 > 3000)
  {
    if (v297 <= 4000)
    {
      if (v297 == 3001)
      {
        *&v299[8] = _MSV_XXH_XXH64_digest(&v298);
      }

      else if (v297 == 4000)
      {
        CC_MD5_Final(&v299[8], &v298);
      }
    }

    else
    {
      switch(v297)
      {
        case 4001:
          CC_SHA1_Final(&v299[8], &v298);
          break;
        case 4256:
          CC_SHA256_Final(&v299[8], &v298);
          break;
        case 4512:
          CC_SHA512_Final(&v299[8], &v298);
          break;
      }
    }

    goto LABEL_253;
  }

  if (v297 > 1999)
  {
    if (v297 != 2000)
    {
      if (v297 != 3000)
      {
        goto LABEL_253;
      }

      v249 = &v298.hash[1];
      if (HIDWORD(v298.count[0]))
      {
        v250 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v298.count[1], xmmword_1A273DD70), vshlq_u32(*&v298.count[1], xmmword_1A273DD60)));
      }

      else
      {
        v250 = LODWORD(v298.hash[0]) + 374761393;
      }

      v254 = LODWORD(v298.count[0]) + v250;
      v255 = v298.hash[3] & 0xF;
      if (v255 >= 4)
      {
        do
        {
          v256 = *v249;
          v249 = (v249 + 4);
          HIDWORD(v257) = v254 - 1028477379 * v256;
          LODWORD(v257) = HIDWORD(v257);
          v254 = 668265263 * (v257 >> 15);
          v255 -= 4;
        }

        while (v255 > 3);
      }

      for (; v255; --v255)
      {
        v258 = *v249;
        v249 = (v249 + 1);
        HIDWORD(v259) = v254 + 374761393 * v258;
        LODWORD(v259) = HIDWORD(v259);
        v254 = -1640531535 * (v259 >> 21);
      }

      v260 = -1028477379 * ((-2048144777 * (v254 ^ (v254 >> 15))) ^ ((-2048144777 * (v254 ^ (v254 >> 15))) >> 13));
      v261 = v260 ^ HIWORD(v260);
      goto LABEL_252;
    }

    switch(BYTE3(v298.count[1]))
    {
      case 1u:
        v253 = LOBYTE(v298.count[1]);
        break;
      case 2u:
        v253 = LOWORD(v298.count[1]);
        break;
      case 3u:
        v253 = LOWORD(v298.count[1]) | (BYTE2(v298.count[1]) << 16);
        break;
      default:
        v262 = v298.count[0];
        goto LABEL_251;
    }

    v262 = (461845907 * ((380141568 * v253) | ((-862048943 * v253) >> 17))) ^ LODWORD(v298.count[0]);
LABEL_251:
    v263 = -2048144789 * (v262 ^ HIDWORD(v298.count[0]) ^ ((v262 ^ HIDWORD(v298.count[0])) >> 16));
    v261 = (-1028477387 * (v263 ^ (v263 >> 13))) ^ ((-1028477387 * (v263 ^ (v263 >> 13))) >> 16);
    LODWORD(v298.count[0]) = v261;
LABEL_252:
    *&v299[8] = v261;
    goto LABEL_253;
  }

  if (v297)
  {
    if (v297 == 1000)
    {
      v219 = (v298.count[0] + v298.count[1]) ^ __ROR8__(v298.count[1], 51);
      v220 = v298.hash[0] + (v298.hash[1] ^ v298.hash[2]);
      v221 = __ROR8__(v298.hash[1] ^ v298.hash[2], 48);
      v222 = (v220 ^ v221) + __ROR8__(v298.count[0] + v298.count[1], 32);
      v223 = v222 ^ __ROR8__(v220 ^ v221, 43);
      v224 = v220 + v219;
      v225 = v224 ^ __ROR8__(v219, 47);
      v226 = (v222 ^ v298.hash[2]) + v225;
      v227 = v226 ^ __ROR8__(v225, 51);
      v228 = (__ROR8__(v224, 32) ^ 0xFFLL) + v223;
      v229 = __ROR8__(v223, 48);
      v230 = __ROR8__(v226, 32) + (v228 ^ v229);
      v231 = v230 ^ __ROR8__(v228 ^ v229, 43);
      v232 = v227 + v228;
      v233 = v232 ^ __ROR8__(v227, 47);
      v234 = v233 + v230;
      v235 = v234 ^ __ROR8__(v233, 51);
      v236 = __ROR8__(v232, 32) + v231;
      v237 = __ROR8__(v231, 48);
      v238 = __ROR8__(v234, 32) + (v236 ^ v237);
      v239 = v238 ^ __ROR8__(v236 ^ v237, 43);
      v240 = v235 + v236;
      v241 = v240 ^ __ROR8__(v235, 47);
      v242 = v241 + v238;
      v243 = v242 ^ __ROR8__(v241, 51);
      v244 = __ROR8__(v240, 32) + v239;
      v245 = __ROR8__(v239, 48);
      v246 = __ROR8__(v242, 32) + (v244 ^ v245);
      v247 = v246 ^ __ROR8__(v244 ^ v245, 43);
      v248 = v243 + v244;
      v298.count[0] = v246;
      v298.count[1] = v248 ^ __ROR8__(v243, 47);
      v298.hash[0] = __ROR8__(v248, 32);
      v298.hash[1] = v247;
      *&v299[8] = v298.count[1] ^ v246 ^ v298.hash[0] ^ v247;
    }
  }

  else
  {
    v251 = [MEMORY[0x1E696AAA8] currentHandler];
    v252 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [v251 handleFailureInFunction:v252 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_253:
  data[0] = *v299;
  data[1] = *&v299[16];
  data[2] = *&v299[32];
  data[3] = *&v299[48];
  v301 = *&v299[64];
  if (*v299 > 3999)
  {
    if (*&data[0] > 4255)
    {
      if (*&data[0] == 4256)
      {
        v286 = data + 8;
        v287 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v288 = v287;
        for (i = 0; i != 64; i += 2)
        {
          v290 = *v286++;
          v291 = &v287[i];
          *v291 = MSVFastHexStringFromBytes_hexCharacters_55966[v290 >> 4];
          v291[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v290 & 0xF];
        }

        v270 = objc_alloc(MEMORY[0x1E696AEC0]);
        v271 = v288;
        v272 = 64;
      }

      else
      {
        if (*&data[0] != 4512)
        {
          goto LABEL_281;
        }

        v274 = data + 8;
        v275 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v276 = v275;
        for (j = 0; j != 128; j += 2)
        {
          v278 = *v274++;
          v279 = &v275[j];
          *v279 = MSVFastHexStringFromBytes_hexCharacters_55966[v278 >> 4];
          v279[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v278 & 0xF];
        }

        v270 = objc_alloc(MEMORY[0x1E696AEC0]);
        v271 = v276;
        v272 = 128;
      }
    }

    else if (*&data[0] == 4000)
    {
      v280 = data + 8;
      v281 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v282 = v281;
      for (k = 0; k != 32; k += 2)
      {
        v284 = *v280++;
        v285 = &v281[k];
        *v285 = MSVFastHexStringFromBytes_hexCharacters_55966[v284 >> 4];
        v285[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v284 & 0xF];
      }

      v270 = objc_alloc(MEMORY[0x1E696AEC0]);
      v271 = v282;
      v272 = 32;
    }

    else
    {
      if (*&data[0] != 4001)
      {
        goto LABEL_281;
      }

      v264 = data + 8;
      v265 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v266 = v265;
      for (m = 0; m != 40; m += 2)
      {
        v268 = *v264++;
        v269 = &v265[m];
        *v269 = MSVFastHexStringFromBytes_hexCharacters_55966[v268 >> 4];
        v269[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v268 & 0xF];
      }

      v270 = objc_alloc(MEMORY[0x1E696AEC0]);
      v271 = v266;
      v272 = 40;
    }

    v292 = [v270 initWithBytesNoCopy:v271 length:v272 encoding:4 freeWhenDone:1];
    v273 = [v292 hash];

    return v273;
  }

  if (*&data[0] <= 2999)
  {
    if (*&data[0] != 1000)
    {
      if (*&data[0] != 2000)
      {
        goto LABEL_281;
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
LABEL_281:
    v294 = [MEMORY[0x1E696AAA8] currentHandler];
    v295 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
    [v294 handleFailureInFunction:v295 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

    return 0;
  }

  return *(&data[0] + 1);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else if ([(MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v8.receiver = self;
    v8.super_class = MPLibraryKeepLocalStatusObserverDetailedContainerConfiguration;
    if ([(MPLibraryKeepLocalStatusObserverConfiguration *)&v8 isEqual:v5]&& self->_downloadEnabledItemCount == v5->_downloadEnabledItemCount && self->_nonPurgeableItemCount == v5->_nonPurgeableItemCount && self->_redownloadableItemCount == v5->_redownloadableItemCount)
    {
      v6 = [(NSArray *)self->_pendingItemIdentifiers isEqual:v5->_pendingItemIdentifiers];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end