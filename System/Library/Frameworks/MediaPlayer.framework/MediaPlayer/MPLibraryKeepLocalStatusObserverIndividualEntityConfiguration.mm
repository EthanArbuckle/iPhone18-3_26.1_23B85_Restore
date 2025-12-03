@interface MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration

- (unint64_t)hash
{
  v250 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  memset(&v246.hash[3], 0, 168);
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v245 = 1000;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v17 = v14 + v13;
  v246.hash[0] = __ROR8__(v17, 32);
  v246.hash[1] = v16 ^ __ROR8__(v15, 43);
  v246.count[0] = v16 ^ v11;
  v246.count[1] = v17 ^ __ROR8__(v13, 47);
  v246.hash[2] = 0x800000000000000;

  v244.receiver = self;
  v244.super_class = MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration;
  v18 = [(MPLibraryKeepLocalStatusObserverConfiguration *)&v244 hash];
  *&data[0] = v18;
  if (v245 <= 3000)
  {
    if (v245 > 1999)
    {
      if (v245 == 2000)
      {
        LOBYTE(v40) = 0;
        if (BYTE3(v246.count[1]) > 1u)
        {
          if (BYTE3(v246.count[1]) == 2)
          {
            v43 = v18 >> 8;
            v41 = v246.count[1];
            LODWORD(v40) = HIBYTE(LOWORD(v246.count[1]));
            LOBYTE(v42) = v18;
          }

          else
          {
            v41 = 0;
            LOBYTE(v42) = 0;
            LODWORD(v43) = 0;
            if (BYTE3(v246.count[1]) == 3)
            {
              v41 = v246.count[1];
              LODWORD(v40) = HIBYTE(LOWORD(v246.count[1]));
              LOBYTE(v42) = BYTE2(v246.count[1]);
              LODWORD(v43) = v18;
            }
          }
        }

        else if (BYTE3(v246.count[1]))
        {
          v41 = 0;
          LOBYTE(v42) = 0;
          LODWORD(v43) = 0;
          if (BYTE3(v246.count[1]) == 1)
          {
            v42 = v18 >> 8;
            v41 = v246.count[1];
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
        HIDWORD(v52) = (461845907 * ((380141568 * v51) | ((-862048943 * v51) >> 17))) ^ LODWORD(v246.count[0]);
        LODWORD(v52) = HIDWORD(v52);
        v53 = 5 * (v52 >> 19) - 430675100;
        LODWORD(v246.count[0]) = v53;
        v54 = data - BYTE3(v246.count[1]) + 4;
        v55 = data + ((BYTE3(v246.count[1]) + 8) & 0x1FC) - BYTE3(v246.count[1]);
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
          LODWORD(v246.count[0]) = v53;
        }

        if ((BYTE3(v246.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v246.count[1]) = *v55;
          if ((BYTE3(v246.count[1]) & 3) != 2)
          {
            BYTE2(v246.count[1]) = v55[2];
          }
        }

        else if ((v246.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v246.count[1]) = *v55;
        }

        BYTE3(v246.count[1]) &= 3u;
        HIDWORD(v246.count[0]) += 8;
      }

      else if (v245 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v246, data, 8uLL);
      }
    }

    else if (v245)
    {
      if (v245 == 1000)
      {
        v19 = v246.hash[2];
        if ((v246.hash[2] & 0x400000000000000) != 0)
        {
          v44 = v246.hash[2] & 0xFFFFFFFFFFFFFFLL | (v18 << 32);
          v45 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
          v46 = v246.hash[0] + (v246.hash[1] ^ v44);
          v47 = __ROR8__(v246.hash[1] ^ v44, 48);
          v48 = (v46 ^ v47) + __ROR8__(v246.count[0] + v246.count[1], 32);
          v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
          v50 = v46 + v45;
          v246.hash[0] = __ROR8__(v50, 32);
          v246.hash[1] = v49;
          v246.count[0] = v48 ^ v44;
          v246.count[1] = v50 ^ __ROR8__(v45, 47);
          v37 = (v246.hash[2] & 0xFF00000000000000) + HIDWORD(v18) + 0x800000000000000;
        }

        else
        {
          v20 = v246.count[0];
          v22 = v246.hash[0];
          v21 = v246.count[1];
          v23 = v246.hash[1];
          if ((v246.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v24 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
            v25 = v246.hash[0] + (v246.hash[1] ^ v246.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v26 = __ROR8__(v246.hash[1] ^ v246.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v27 = (v25 ^ v26) + __ROR8__(v246.count[0] + v246.count[1], 32);
            v23 = v27 ^ __ROR8__(v25 ^ v26, 43);
            v28 = v25 + v24;
            v21 = v28 ^ __ROR8__(v24, 47);
            v22 = __ROR8__(v28, 32);
            v20 = v27 ^ v246.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v19 = v246.hash[2] & 0xFF00000000000000;
          }

          v29 = v23 ^ v18;
          v30 = v20 + v21;
          v31 = (v20 + v21) ^ __ROR8__(v21, 51);
          v32 = v22 + v29;
          v33 = __ROR8__(v29, 48);
          v34 = (v32 ^ v33) + __ROR8__(v30, 32);
          v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
          v36 = v32 + v31;
          v246.hash[0] = __ROR8__(v36, 32);
          v246.hash[1] = v35;
          v246.count[0] = v34 ^ v18;
          v246.count[1] = v36 ^ __ROR8__(v31, 47);
          v37 = v19 + 0x800000000000000;
        }

        v246.hash[2] = v37;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [currentHandler handleFailureInFunction:v39 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v245 <= 4000)
  {
    if (v245 == 3001)
    {
      _MSV_XXH_XXH64_update(&v246, data, 8uLL);
    }

    else if (v245 == 4000)
    {
      CC_MD5_Update(&v246, data, 4u);
    }
  }

  else
  {
    switch(v245)
    {
      case 4001:
        CC_SHA1_Update(&v246, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v246, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v246, data, 4u);
        break;
    }
  }

  isCollectionType = [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)self isCollectionType];
  LODWORD(data[0]) = isCollectionType;
  if (v245 <= 3000)
  {
    if (v245 > 1999)
    {
      if (v245 == 2000)
      {
        v62 = 0;
        if (BYTE3(v246.count[1]) > 1u)
        {
          if (BYTE3(v246.count[1]) == 2)
          {
            v65 = 0;
            v63 = v246.count[1];
            v62 = HIBYTE(LOWORD(v246.count[1]));
            v64 = isCollectionType;
          }

          else
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            if (BYTE3(v246.count[1]) == 3)
            {
              v63 = v246.count[1];
              v62 = HIBYTE(LOWORD(v246.count[1]));
              v64 = BYTE2(v246.count[1]);
              if (isCollectionType)
              {
                v65 = 256;
              }

              else
              {
                v65 = 0;
              }
            }
          }
        }

        else if (BYTE3(v246.count[1]))
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
          if (BYTE3(v246.count[1]) == 1)
          {
            v64 = 0;
            v65 = 0;
            v63 = v246.count[1];
            v62 = isCollectionType;
          }
        }

        else
        {
          v62 = 0;
          v64 = 0;
          v65 = 0;
          v63 = isCollectionType;
        }

        v74 = v63 | (v62 << 8) | ((v65 | v64) << 16);
        HIDWORD(v75) = (461845907 * ((380141568 * v74) | ((-862048943 * v74) >> 17))) ^ LODWORD(v246.count[0]);
        LODWORD(v75) = HIDWORD(v75);
        v76 = 5 * (v75 >> 19) - 430675100;
        LODWORD(v246.count[0]) = v76;
        v77 = data - BYTE3(v246.count[1]) + 4;
        v78 = data + ((BYTE3(v246.count[1]) + 4) & 0x1FC) - BYTE3(v246.count[1]);
        if (v77 < v78)
        {
          do
          {
            v79 = *v77;
            v77 += 4;
            HIDWORD(v80) = (461845907 * ((380141568 * v79) | ((-862048943 * v79) >> 17))) ^ v76;
            LODWORD(v80) = HIDWORD(v80);
            v76 = 5 * (v80 >> 19) - 430675100;
          }

          while (v77 < v78);
          LODWORD(v246.count[0]) = v76;
        }

        if ((BYTE3(v246.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v246.count[1]) = *v78;
          if ((BYTE3(v246.count[1]) & 3) != 2)
          {
            BYTE2(v246.count[1]) = v78[2];
          }
        }

        else if ((v246.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v246.count[1]) = *v78;
        }

        BYTE3(v246.count[1]) &= 3u;
        HIDWORD(v246.count[0]) += 4;
      }

      else if (v245 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v246, data, 4uLL);
      }
    }

    else if (v245)
    {
      if (v245 == 1000)
      {
        if ((v246.hash[2] & 0x400000000000000) != 0)
        {
          v66 = 0x100000000;
          if (!isCollectionType)
          {
            v66 = 0;
          }

          v67 = v246.hash[2] & 0xFFFFFFFFFFFFFFLL | v66;
          v68 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
          v69 = v246.hash[0] + (v246.hash[1] ^ v67);
          v70 = __ROR8__(v246.hash[1] ^ v67, 48);
          v71 = (v69 ^ v70) + __ROR8__(v246.count[0] + v246.count[1], 32);
          v72 = v71 ^ __ROR8__(v69 ^ v70, 43);
          v73 = v69 + v68;
          v246.hash[0] = __ROR8__(v73, 32);
          v246.hash[1] = v72;
          v246.count[0] = v71 ^ v67;
          v246.count[1] = v73 ^ __ROR8__(v68, 47);
          v59 = (v246.hash[2] & 0xFF00000000000000) + 0x400000000000000;
        }

        else
        {
          v59 = v246.hash[2] | isCollectionType | 0x400000000000000;
        }

        v246.hash[2] = v59;
      }
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend32(MSVHasher * _Nonnull, uint32_t)"}];
      [currentHandler2 handleFailureInFunction:v61 file:@"MSVHasher+Algorithms.h" lineNumber:192 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v245 <= 4000)
  {
    if (v245 == 3001)
    {
      _MSV_XXH_XXH64_update(&v246, data, 4uLL);
    }

    else if (v245 == 4000)
    {
      CC_MD5_Update(&v246, data, 4u);
    }
  }

  else
  {
    switch(v245)
    {
      case 4001:
        CC_SHA1_Update(&v246, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v246, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v246, data, 4u);
        break;
    }
  }

  isStoreRedownloadable = [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)self isStoreRedownloadable];
  LODWORD(data[0]) = isStoreRedownloadable;
  if (v245 <= 3000)
  {
    if (v245 > 1999)
    {
      if (v245 == 2000)
      {
        v85 = 0;
        if (BYTE3(v246.count[1]) > 1u)
        {
          if (BYTE3(v246.count[1]) == 2)
          {
            v88 = 0;
            v86 = v246.count[1];
            v85 = HIBYTE(LOWORD(v246.count[1]));
            v87 = isStoreRedownloadable;
          }

          else
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            if (BYTE3(v246.count[1]) == 3)
            {
              v86 = v246.count[1];
              v85 = HIBYTE(LOWORD(v246.count[1]));
              v87 = BYTE2(v246.count[1]);
              if (isStoreRedownloadable)
              {
                v88 = 256;
              }

              else
              {
                v88 = 0;
              }
            }
          }
        }

        else if (BYTE3(v246.count[1]))
        {
          v86 = 0;
          v87 = 0;
          v88 = 0;
          if (BYTE3(v246.count[1]) == 1)
          {
            v87 = 0;
            v88 = 0;
            v86 = v246.count[1];
            v85 = isStoreRedownloadable;
          }
        }

        else
        {
          v85 = 0;
          v87 = 0;
          v88 = 0;
          v86 = isStoreRedownloadable;
        }

        v97 = v86 | (v85 << 8) | ((v88 | v87) << 16);
        HIDWORD(v98) = (461845907 * ((380141568 * v97) | ((-862048943 * v97) >> 17))) ^ LODWORD(v246.count[0]);
        LODWORD(v98) = HIDWORD(v98);
        v99 = 5 * (v98 >> 19) - 430675100;
        LODWORD(v246.count[0]) = v99;
        v100 = data - BYTE3(v246.count[1]) + 4;
        v101 = data + ((BYTE3(v246.count[1]) + 4) & 0x1FC) - BYTE3(v246.count[1]);
        if (v100 < v101)
        {
          do
          {
            v102 = *v100;
            v100 += 4;
            HIDWORD(v103) = (461845907 * ((380141568 * v102) | ((-862048943 * v102) >> 17))) ^ v99;
            LODWORD(v103) = HIDWORD(v103);
            v99 = 5 * (v103 >> 19) - 430675100;
          }

          while (v100 < v101);
          LODWORD(v246.count[0]) = v99;
        }

        if ((BYTE3(v246.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v246.count[1]) = *v101;
          if ((BYTE3(v246.count[1]) & 3) != 2)
          {
            BYTE2(v246.count[1]) = v101[2];
          }
        }

        else if ((v246.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v246.count[1]) = *v101;
        }

        BYTE3(v246.count[1]) &= 3u;
        HIDWORD(v246.count[0]) += 4;
      }

      else if (v245 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v246, data, 4uLL);
      }
    }

    else if (v245)
    {
      if (v245 == 1000)
      {
        if ((v246.hash[2] & 0x400000000000000) != 0)
        {
          v89 = 0x100000000;
          if (!isStoreRedownloadable)
          {
            v89 = 0;
          }

          v90 = v246.hash[2] & 0xFFFFFFFFFFFFFFLL | v89;
          v91 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
          v92 = v246.hash[0] + (v246.hash[1] ^ v90);
          v93 = __ROR8__(v246.hash[1] ^ v90, 48);
          v94 = (v92 ^ v93) + __ROR8__(v246.count[0] + v246.count[1], 32);
          v95 = v94 ^ __ROR8__(v92 ^ v93, 43);
          v96 = v92 + v91;
          v246.hash[0] = __ROR8__(v96, 32);
          v246.hash[1] = v95;
          v246.count[0] = v94 ^ v90;
          v246.count[1] = v96 ^ __ROR8__(v91, 47);
          v82 = (v246.hash[2] & 0xFF00000000000000) + 0x400000000000000;
        }

        else
        {
          v82 = v246.hash[2] | isStoreRedownloadable | 0x400000000000000;
        }

        v246.hash[2] = v82;
      }
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend32(MSVHasher * _Nonnull, uint32_t)"}];
      [currentHandler3 handleFailureInFunction:v84 file:@"MSVHasher+Algorithms.h" lineNumber:192 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v245 <= 4000)
  {
    if (v245 == 3001)
    {
      _MSV_XXH_XXH64_update(&v246, data, 4uLL);
    }

    else if (v245 == 4000)
    {
      CC_MD5_Update(&v246, data, 4u);
    }
  }

  else
  {
    switch(v245)
    {
      case 4001:
        CC_SHA1_Update(&v246, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v246, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v246, data, 4u);
        break;
    }
  }

  hasNonPurgeableAsset = self->_hasNonPurgeableAsset;
  LODWORD(data[0]) = self->_hasNonPurgeableAsset;
  if (v245 <= 3000)
  {
    if (v245 > 1999)
    {
      if (v245 == 2000)
      {
        v108 = 0;
        if (BYTE3(v246.count[1]) > 1u)
        {
          if (BYTE3(v246.count[1]) == 2)
          {
            v111 = 0;
            v109 = v246.count[1];
            v108 = HIBYTE(LOWORD(v246.count[1]));
            v110 = hasNonPurgeableAsset;
          }

          else
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            if (BYTE3(v246.count[1]) == 3)
            {
              v109 = v246.count[1];
              v108 = HIBYTE(LOWORD(v246.count[1]));
              v110 = BYTE2(v246.count[1]);
              v111 = hasNonPurgeableAsset << 8;
            }
          }
        }

        else if (BYTE3(v246.count[1]))
        {
          v109 = 0;
          v110 = 0;
          v111 = 0;
          if (BYTE3(v246.count[1]) == 1)
          {
            v110 = 0;
            v111 = 0;
            v109 = v246.count[1];
            v108 = hasNonPurgeableAsset;
          }
        }

        else
        {
          v108 = 0;
          v110 = 0;
          v111 = 0;
          v109 = hasNonPurgeableAsset;
        }

        v119 = v109 | (v108 << 8) | ((v111 | v110) << 16);
        HIDWORD(v120) = (461845907 * ((380141568 * v119) | ((-862048943 * v119) >> 17))) ^ LODWORD(v246.count[0]);
        LODWORD(v120) = HIDWORD(v120);
        v121 = 5 * (v120 >> 19) - 430675100;
        LODWORD(v246.count[0]) = v121;
        v122 = data - BYTE3(v246.count[1]) + 4;
        v123 = data + ((BYTE3(v246.count[1]) + 4) & 0x1FC) - BYTE3(v246.count[1]);
        if (v122 < v123)
        {
          do
          {
            v124 = *v122;
            v122 += 4;
            HIDWORD(v125) = (461845907 * ((380141568 * v124) | ((-862048943 * v124) >> 17))) ^ v121;
            LODWORD(v125) = HIDWORD(v125);
            v121 = 5 * (v125 >> 19) - 430675100;
          }

          while (v122 < v123);
          LODWORD(v246.count[0]) = v121;
        }

        if ((BYTE3(v246.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v246.count[1]) = *v123;
          if ((BYTE3(v246.count[1]) & 3) != 2)
          {
            BYTE2(v246.count[1]) = v123[2];
          }
        }

        else if ((v246.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v246.count[1]) = *v123;
        }

        BYTE3(v246.count[1]) &= 3u;
        HIDWORD(v246.count[0]) += 4;
      }

      else if (v245 == 3000)
      {
        _MSV_XXH_XXH32_update_29287(&v246, data, 4uLL);
      }
    }

    else if (v245)
    {
      if (v245 == 1000)
      {
        if ((v246.hash[2] & 0x400000000000000) != 0)
        {
          v112 = v246.hash[2] & 0xFFFFFFFFFFFFFFLL | (hasNonPurgeableAsset << 32);
          v113 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
          v114 = v246.hash[0] + (v246.hash[1] ^ v112);
          v115 = __ROR8__(v246.hash[1] ^ v112, 48);
          v116 = (v114 ^ v115) + __ROR8__(v246.count[0] + v246.count[1], 32);
          v117 = v116 ^ __ROR8__(v114 ^ v115, 43);
          v118 = v114 + v113;
          v246.hash[0] = __ROR8__(v118, 32);
          v246.hash[1] = v117;
          v246.count[0] = v116 ^ v112;
          v246.count[1] = v118 ^ __ROR8__(v113, 47);
          v105 = (v246.hash[2] & 0xFF00000000000000) + 0x400000000000000;
        }

        else
        {
          v105 = v246.hash[2] | hasNonPurgeableAsset | 0x400000000000000;
        }

        v246.hash[2] = v105;
      }
    }

    else
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend32(MSVHasher * _Nonnull, uint32_t)"}];
      [currentHandler4 handleFailureInFunction:v107 file:@"MSVHasher+Algorithms.h" lineNumber:192 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v245 <= 4000)
  {
    if (v245 == 3001)
    {
      _MSV_XXH_XXH64_update(&v246, data, 4uLL);
    }

    else if (v245 == 4000)
    {
      CC_MD5_Update(&v246, data, 4u);
    }
  }

  else
  {
    switch(v245)
    {
      case 4001:
        CC_SHA1_Update(&v246, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v246, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v246, data, 4u);
        break;
    }
  }

  managedStatus = self->_managedStatus;
  *&data[0] = managedStatus;
  v127 = v245;
  if (v245 <= 3000)
  {
    if (v245 > 1999)
    {
      if (v245 == 2000)
      {
        LOBYTE(v149) = 0;
        if (BYTE3(v246.count[1]) > 1u)
        {
          if (BYTE3(v246.count[1]) == 2)
          {
            v152 = managedStatus >> 8;
            v150 = v246.count[1];
            LODWORD(v149) = HIBYTE(LOWORD(v246.count[1]));
            LOBYTE(v151) = managedStatus;
          }

          else
          {
            v150 = 0;
            LOBYTE(v151) = 0;
            LODWORD(v152) = 0;
            if (BYTE3(v246.count[1]) == 3)
            {
              v150 = v246.count[1];
              LODWORD(v149) = HIBYTE(LOWORD(v246.count[1]));
              LOBYTE(v151) = BYTE2(v246.count[1]);
              LODWORD(v152) = managedStatus;
            }
          }
        }

        else if (BYTE3(v246.count[1]))
        {
          v150 = 0;
          LOBYTE(v151) = 0;
          LODWORD(v152) = 0;
          if (BYTE3(v246.count[1]) == 1)
          {
            v151 = managedStatus >> 8;
            v150 = v246.count[1];
            v152 = managedStatus >> 16;
            LOBYTE(v149) = managedStatus;
          }
        }

        else
        {
          v149 = managedStatus >> 8;
          v151 = managedStatus >> 16;
          v150 = managedStatus;
          v152 = managedStatus >> 24;
        }

        v160 = (v151 << 16) | (v152 << 24) | v150 | (v149 << 8);
        HIDWORD(v161) = (461845907 * ((380141568 * v160) | ((-862048943 * v160) >> 17))) ^ LODWORD(v246.count[0]);
        LODWORD(v161) = HIDWORD(v161);
        v162 = 5 * (v161 >> 19) - 430675100;
        LODWORD(v246.count[0]) = v162;
        v163 = data - BYTE3(v246.count[1]) + 4;
        v164 = data + ((BYTE3(v246.count[1]) + 8) & 0x1FC) - BYTE3(v246.count[1]);
        if (v163 < v164)
        {
          do
          {
            v165 = *v163;
            v163 += 4;
            HIDWORD(v166) = (461845907 * ((380141568 * v165) | ((-862048943 * v165) >> 17))) ^ v162;
            LODWORD(v166) = HIDWORD(v166);
            v162 = 5 * (v166 >> 19) - 430675100;
          }

          while (v163 < v164);
          LODWORD(v246.count[0]) = v162;
        }

        if ((BYTE3(v246.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v246.count[1]) = *v164;
          if ((BYTE3(v246.count[1]) & 3) != 2)
          {
            BYTE2(v246.count[1]) = v164[2];
          }
        }

        else if ((v246.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v246.count[1]) = *v164;
        }

        BYTE3(v246.count[1]) &= 3u;
        HIDWORD(v246.count[0]) += 8;
      }

      else
      {
        if (v245 != 3000)
        {
          goto LABEL_219;
        }

        _MSV_XXH_XXH32_update_29287(&v246, data, 8uLL);
      }
    }

    else if (v245)
    {
      if (v245 != 1000)
      {
        goto LABEL_219;
      }

      v128 = v246.hash[2];
      if ((v246.hash[2] & 0x400000000000000) != 0)
      {
        v153 = v246.hash[2] & 0xFFFFFFFFFFFFFFLL | (managedStatus << 32);
        v154 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
        v155 = v246.hash[0] + (v246.hash[1] ^ v153);
        v156 = __ROR8__(v246.hash[1] ^ v153, 48);
        v157 = (v155 ^ v156) + __ROR8__(v246.count[0] + v246.count[1], 32);
        v158 = v157 ^ __ROR8__(v155 ^ v156, 43);
        v159 = v155 + v154;
        v246.hash[0] = __ROR8__(v159, 32);
        v246.hash[1] = v158;
        v246.count[0] = v157 ^ v153;
        v246.count[1] = v159 ^ __ROR8__(v154, 47);
        v146 = (v246.hash[2] & 0xFF00000000000000) + HIDWORD(managedStatus) + 0x800000000000000;
      }

      else
      {
        v129 = v246.count[0];
        v131 = v246.hash[0];
        v130 = v246.count[1];
        v132 = v246.hash[1];
        if ((v246.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
        {
          v133 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
          v134 = v246.hash[0] + (v246.hash[1] ^ v246.hash[2] & 0xFFFFFFFFFFFFFFLL);
          v135 = __ROR8__(v246.hash[1] ^ v246.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
          v136 = (v134 ^ v135) + __ROR8__(v246.count[0] + v246.count[1], 32);
          v132 = v136 ^ __ROR8__(v134 ^ v135, 43);
          v137 = v134 + v133;
          v130 = v137 ^ __ROR8__(v133, 47);
          v131 = __ROR8__(v137, 32);
          v129 = v136 ^ v246.hash[2] & 0xFFFFFFFFFFFFFFLL;
          v128 = v246.hash[2] & 0xFF00000000000000;
        }

        v138 = v132 ^ managedStatus;
        v139 = v129 + v130;
        v140 = (v129 + v130) ^ __ROR8__(v130, 51);
        v141 = v131 + v138;
        v142 = __ROR8__(v138, 48);
        v143 = (v141 ^ v142) + __ROR8__(v139, 32);
        v144 = v143 ^ __ROR8__(v141 ^ v142, 43);
        v145 = v141 + v140;
        v246.hash[0] = __ROR8__(v145, 32);
        v246.hash[1] = v144;
        v246.count[0] = v143 ^ managedStatus;
        v246.count[1] = v145 ^ __ROR8__(v140, 47);
        v146 = v128 + 0x800000000000000;
      }

      v246.hash[2] = v146;
    }

    else
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v148 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [currentHandler5 handleFailureInFunction:v148 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v245 <= 4000)
  {
    if (v245 == 3001)
    {
      _MSV_XXH_XXH64_update(&v246, data, 8uLL);
    }

    else
    {
      if (v245 != 4000)
      {
        goto LABEL_219;
      }

      CC_MD5_Update(&v246, data, 4u);
    }
  }

  else
  {
    switch(v245)
    {
      case 4001:
        CC_SHA1_Update(&v246, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v246, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v246, data, 4u);
        break;
      default:
        goto LABEL_219;
    }
  }

  v127 = v245;
LABEL_219:
  memset(&v247[8], 0, 64);
  *v247 = v127;
  if (v127 > 3000)
  {
    if (v127 <= 4000)
    {
      if (v127 == 3001)
      {
        *&v247[8] = _MSV_XXH_XXH64_digest(&v246);
      }

      else if (v127 == 4000)
      {
        CC_MD5_Final(&v247[8], &v246);
      }
    }

    else
    {
      switch(v127)
      {
        case 4001:
          CC_SHA1_Final(&v247[8], &v246);
          break;
        case 4256:
          CC_SHA256_Final(&v247[8], &v246);
          break;
        case 4512:
          CC_SHA512_Final(&v247[8], &v246);
          break;
      }
    }

    goto LABEL_256;
  }

  if (v127 > 1999)
  {
    if (v127 != 2000)
    {
      if (v127 != 3000)
      {
        goto LABEL_256;
      }

      v197 = &v246.hash[1];
      if (HIDWORD(v246.count[0]))
      {
        v198 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v246.count[1], xmmword_1A273DD70), vshlq_u32(*&v246.count[1], xmmword_1A273DD60)));
      }

      else
      {
        v198 = LODWORD(v246.hash[0]) + 374761393;
      }

      v202 = LODWORD(v246.count[0]) + v198;
      v203 = v246.hash[3] & 0xF;
      if (v203 >= 4)
      {
        do
        {
          v204 = *v197;
          v197 = (v197 + 4);
          HIDWORD(v205) = v202 - 1028477379 * v204;
          LODWORD(v205) = HIDWORD(v205);
          v202 = 668265263 * (v205 >> 15);
          v203 -= 4;
        }

        while (v203 > 3);
      }

      for (; v203; --v203)
      {
        v206 = *v197;
        v197 = (v197 + 1);
        HIDWORD(v207) = v202 + 374761393 * v206;
        LODWORD(v207) = HIDWORD(v207);
        v202 = -1640531535 * (v207 >> 21);
      }

      v208 = -1028477379 * ((-2048144777 * (v202 ^ (v202 >> 15))) ^ ((-2048144777 * (v202 ^ (v202 >> 15))) >> 13));
      v209 = v208 ^ HIWORD(v208);
      goto LABEL_255;
    }

    switch(BYTE3(v246.count[1]))
    {
      case 1u:
        v201 = LOBYTE(v246.count[1]);
        break;
      case 2u:
        v201 = LOWORD(v246.count[1]);
        break;
      case 3u:
        v201 = LOWORD(v246.count[1]) | (BYTE2(v246.count[1]) << 16);
        break;
      default:
        v210 = v246.count[0];
        goto LABEL_254;
    }

    v210 = (461845907 * ((380141568 * v201) | ((-862048943 * v201) >> 17))) ^ LODWORD(v246.count[0]);
LABEL_254:
    v211 = -2048144789 * (v210 ^ HIDWORD(v246.count[0]) ^ ((v210 ^ HIDWORD(v246.count[0])) >> 16));
    v209 = (-1028477387 * (v211 ^ (v211 >> 13))) ^ ((-1028477387 * (v211 ^ (v211 >> 13))) >> 16);
    LODWORD(v246.count[0]) = v209;
LABEL_255:
    *&v247[8] = v209;
    goto LABEL_256;
  }

  if (v127)
  {
    if (v127 == 1000)
    {
      v167 = (v246.count[0] + v246.count[1]) ^ __ROR8__(v246.count[1], 51);
      v168 = v246.hash[0] + (v246.hash[1] ^ v246.hash[2]);
      v169 = __ROR8__(v246.hash[1] ^ v246.hash[2], 48);
      v170 = (v168 ^ v169) + __ROR8__(v246.count[0] + v246.count[1], 32);
      v171 = v170 ^ __ROR8__(v168 ^ v169, 43);
      v172 = v168 + v167;
      v173 = v172 ^ __ROR8__(v167, 47);
      v174 = (v170 ^ v246.hash[2]) + v173;
      v175 = v174 ^ __ROR8__(v173, 51);
      v176 = (__ROR8__(v172, 32) ^ 0xFFLL) + v171;
      v177 = __ROR8__(v171, 48);
      v178 = __ROR8__(v174, 32) + (v176 ^ v177);
      v179 = v178 ^ __ROR8__(v176 ^ v177, 43);
      v180 = v175 + v176;
      v181 = v180 ^ __ROR8__(v175, 47);
      v182 = v181 + v178;
      v183 = v182 ^ __ROR8__(v181, 51);
      v184 = __ROR8__(v180, 32) + v179;
      v185 = __ROR8__(v179, 48);
      v186 = __ROR8__(v182, 32) + (v184 ^ v185);
      v187 = v186 ^ __ROR8__(v184 ^ v185, 43);
      v188 = v183 + v184;
      v189 = v188 ^ __ROR8__(v183, 47);
      v190 = v189 + v186;
      v191 = v190 ^ __ROR8__(v189, 51);
      v192 = __ROR8__(v188, 32) + v187;
      v193 = __ROR8__(v187, 48);
      v194 = __ROR8__(v190, 32) + (v192 ^ v193);
      v195 = v194 ^ __ROR8__(v192 ^ v193, 43);
      v196 = v191 + v192;
      v246.count[0] = v194;
      v246.count[1] = v196 ^ __ROR8__(v191, 47);
      v246.hash[0] = __ROR8__(v196, 32);
      v246.hash[1] = v195;
      *&v247[8] = v246.count[1] ^ v194 ^ v246.hash[0] ^ v195;
    }
  }

  else
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    v200 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [currentHandler6 handleFailureInFunction:v200 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_256:
  data[0] = *v247;
  data[1] = *&v247[16];
  data[2] = *&v247[32];
  data[3] = *&v247[48];
  v249 = *&v247[64];
  if (*v247 > 3999)
  {
    if (*&data[0] > 4255)
    {
      if (*&data[0] == 4256)
      {
        v234 = data + 8;
        v235 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v236 = v235;
        for (i = 0; i != 64; i += 2)
        {
          v238 = *v234++;
          v239 = &v235[i];
          *v239 = MSVFastHexStringFromBytes_hexCharacters_55966[v238 >> 4];
          v239[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v238 & 0xF];
        }

        v218 = objc_alloc(MEMORY[0x1E696AEC0]);
        v219 = v236;
        v220 = 64;
      }

      else
      {
        if (*&data[0] != 4512)
        {
          goto LABEL_284;
        }

        v222 = data + 8;
        v223 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v224 = v223;
        for (j = 0; j != 128; j += 2)
        {
          v226 = *v222++;
          v227 = &v223[j];
          *v227 = MSVFastHexStringFromBytes_hexCharacters_55966[v226 >> 4];
          v227[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v226 & 0xF];
        }

        v218 = objc_alloc(MEMORY[0x1E696AEC0]);
        v219 = v224;
        v220 = 128;
      }
    }

    else if (*&data[0] == 4000)
    {
      v228 = data + 8;
      v229 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v230 = v229;
      for (k = 0; k != 32; k += 2)
      {
        v232 = *v228++;
        v233 = &v229[k];
        *v233 = MSVFastHexStringFromBytes_hexCharacters_55966[v232 >> 4];
        v233[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v232 & 0xF];
      }

      v218 = objc_alloc(MEMORY[0x1E696AEC0]);
      v219 = v230;
      v220 = 32;
    }

    else
    {
      if (*&data[0] != 4001)
      {
        goto LABEL_284;
      }

      v212 = data + 8;
      v213 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v214 = v213;
      for (m = 0; m != 40; m += 2)
      {
        v216 = *v212++;
        v217 = &v213[m];
        *v217 = MSVFastHexStringFromBytes_hexCharacters_55966[v216 >> 4];
        v217[1] = MSVFastHexStringFromBytes_hexCharacters_55966[v216 & 0xF];
      }

      v218 = objc_alloc(MEMORY[0x1E696AEC0]);
      v219 = v214;
      v220 = 40;
    }

    v240 = [v218 initWithBytesNoCopy:v219 length:v220 encoding:4 freeWhenDone:1];
    v221 = [v240 hash];

    return v221;
  }

  if (*&data[0] <= 2999)
  {
    if (*&data[0] != 1000)
    {
      if (*&data[0] != 2000)
      {
        goto LABEL_284;
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
LABEL_284:
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    v243 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
    [currentHandler7 handleFailureInFunction:v243 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

    return 0;
  }

  return *(&data[0] + 1);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v10.receiver = self;
    v10.super_class = MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration;
    v8 = [(MPLibraryKeepLocalStatusObserverConfiguration *)&v10 isEqual:v5]&& (v6 = [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)self isCollectionType], v6 == [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v5 isCollectionType]) && self->_hasNonPurgeableAsset == v5->_hasNonPurgeableAsset && (v7 = [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)self isStoreRedownloadable], v7 == [(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration *)v5 isStoreRedownloadable]) && self->_managedStatus == v5->_managedStatus;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end