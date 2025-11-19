@interface MPSGraphExecutableConstantDataRequest
- (MPSGraphExecutableConstantDataRequest)initWithCoder:(id)a3;
- (id)initForMPSGraphPackageAtURL:(id)a3 device:(id)a4 multipleInputTypes:(id)a5 compilationDescriptor:(id)a6 includeConstantDataForNewSpecializations:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSGraphExecutableConstantDataRequest

- (MPSGraphExecutableConstantDataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MPSGraphExecutableConstantDataRequest;
  v5 = [(MPSGraphExecutableConstantDataRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mpsgraphPackageURL"];
    [(MPSGraphExecutableConstantDataRequest *)v5 setMpsgraphPackageURL:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"resourceOffsets"];
    [(MPSGraphExecutableConstantDataRequest *)v5 setResourceOffsets:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MPSGraphExecutableConstantDataRequest *)self mpsgraphPackageURL];
  [v6 encodeObject:v4 forKey:@"mpsgraphPackageURL"];

  v5 = [(MPSGraphExecutableConstantDataRequest *)self resourceOffsets];
  [v6 encodeObject:v5 forKey:@"resourceOffsets"];
}

- (id)initForMPSGraphPackageAtURL:(id)a3 device:(id)a4 multipleInputTypes:(id)a5 compilationDescriptor:(id)a6 includeConstantDataForNewSpecializations:(BOOL)a7
{
  v7 = a7;
  v88 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v59 = a4;
  v53 = a5;
  v61 = a6;
  v69.receiver = self;
  v69.super_class = MPSGraphExecutableConstantDataRequest;
  v13 = [(MPSGraphExecutableConstantDataRequest *)&v69 init];
  v55 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_mpsgraphPackageURL, a3);
    v51 = [[MPSGraphPackage alloc] initWithSourcePackageURL:v52];
    v54 = [(MPSGraphPackage *)v51 getMLIRLibrary];
    if ([v54 getResourceStorageMode] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v58 = [v54 getCallablesDescription];
    v60 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (v7)
    {
      v14 = [v54 getOriginalResourcesUsed];
      [v60 addObjectsFromArray:v14];
    }

    v57 = [v54 getOptimizedResourcesUsedLibrary];
    memset(v68, 0, sizeof(v68));
    obj = v53;
    if ([obj countByEnumeratingWithState:v68 objects:v87 count:16])
    {
      v15 = *v68[0].super_class;
      __dst = 0;
      p_dst = &__dst;
      v79[0] = 0x3032000000;
      v79[1] = __Block_byref_object_copy__5;
      v79[2] = __Block_byref_object_dispose__5;
      v80 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
      v72 = MEMORY[0x1E69E9820];
      v73 = 3221225472;
      v74[0] = ___Z18getShapesFromTypesP7NSArrayIP12MPSGraphTypeE_block_invoke;
      v74[1] = &unk_1E86D4F38;
      v74[2] = &__dst;
      [v15 enumerateObjectsUsingBlock:&v72];
      v16 = *(p_dst + 40);
      _Block_object_dispose(&__dst, 8);

      getFlatShapes(&__src, v16);
      v17 = [v61 entryFunctionName];
      v18 = [v59 deviceDescriptor];
      v19 = v61;
      v20 = v58;
      v21 = v17;
      v22 = v18;
      __dst = v79;
      p_dst = 0x600000000;
      v23 = v86;
      if (!v86)
      {
        goto LABEL_12;
      }

      v24 = v79;
      v25 = v86;
      if (v86 >= 7uLL)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v79, v86, 8);
        v25 = v86;
        if (!v86)
        {
LABEL_11:
          LODWORD(p_dst) = v23;
LABEL_12:
          v81 = v19;
          v82 = v20;
          v83 = v21;
          v84 = v22;

          v72 = v74;
          v73 = 0x600000000;
          v26 = p_dst;
          if (!p_dst)
          {
            goto LABEL_18;
          }

          v27 = v74;
          v28 = p_dst;
          if (p_dst >= 7uLL)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, p_dst, 8);
            v28 = p_dst;
            if (!p_dst)
            {
LABEL_17:
              LODWORD(v73) = v26;
LABEL_18:
              v29 = v81;
              v30 = v82;
              v31 = v83;
              v32 = v84;
              *&v33 = v31;
              *(&v33 + 1) = v32;
              *&v34 = v29;
              *(&v34 + 1) = v30;
              v75 = v34;
              v76 = v33;
              v67 = 4;
              v66[0] = llvm::allocate_buffer(0x180uLL, 8uLL);
              llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::initEmpty(v66);
              v70 = 0;
              if (llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::LookupBucketFor<MPSGraphModuleKey>(v66[0], v67, &v72, &v70))
              {
                goto LABEL_32;
              }

              inserted = llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::InsertIntoBucketImpl<MPSGraphModuleKey>(v66, &v72, v70);
              v36 = inserted;
              if (inserted == &v72)
              {
LABEL_31:
                objc_storeStrong(v36 + 8, v75);
                objc_storeStrong(v36 + 9, *(&v75 + 1));
                objc_storeStrong(v36 + 10, v76);
                objc_storeStrong(v36 + 11, *(&v76 + 1));
LABEL_32:
                MPSGraphModuleKeysSetToJSONString(v66);
                objc_claimAutoreleasedReturnValue();
                llvm::DenseMapBase<llvm::DenseMap<MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>,MPSGraphModuleKey,llvm::detail::DenseSetEmpty,MPSGraphModuleKeyInfo,llvm::detail::DenseSetPair<MPSGraphModuleKey>>::destroyAll(v66);
                llvm::deallocate_buffer(v66[0], (96 * v67));
              }

              v37 = v73;
              v38 = *(inserted + 2);
              if (v38 >= v73)
              {
                if (v73)
                {
                  memmove(*inserted, v72, 8 * v73);
                }

                goto LABEL_30;
              }

              if (*(inserted + 3) >= v73)
              {
                if (v38)
                {
                  memmove(*inserted, v72, 8 * v38);
                  v39 = v73 - v38;
                  if (v73 != v38)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_30;
                }
              }

              else
              {
                *(inserted + 2) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod(inserted, inserted + 16, v37, 8);
              }

              v38 = 0;
              v39 = v73;
              if (v73)
              {
LABEL_29:
                memcpy((*v36 + 8 * v38), v72 + 8 * v38, 8 * v39);
              }

LABEL_30:
              *(v36 + 2) = v37;
              goto LABEL_31;
            }

            v27 = v72;
          }

          memcpy(v27, __dst, 8 * v28);
          goto LABEL_17;
        }

        v24 = __dst;
      }

      memcpy(v24, __src, 8 * v25);
      goto LABEL_11;
    }

    v40 = [v54 getResourceOffsetsLibrary];
    v41 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v60, "count")}];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v42 = v60;
    v43 = [v42 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v43)
    {
      v44 = *v63;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v63 != v44)
          {
            objc_enumerationMutation(v42);
          }

          v46 = *(*(&v62 + 1) + 8 * i);
          v47 = [v40 objectForKeyedSubscript:v46];
          if (v47)
          {
            [(NSDictionary *)v41 setObject:v47 forKeyedSubscript:v46];
          }
        }

        v43 = [v42 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v43);
    }

    resourceOffsets = v55->_resourceOffsets;
    v55->_resourceOffsets = v41;

    v49 = v55;
  }

  return v55;
}

@end