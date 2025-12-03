@interface VNGreedyClusteringReadWrite
- (VNGreedyClusteringReadWrite)initWithOptions:(id)options error:(id *)error;
- (id).cxx_construct;
- (id)getClustersWithOptions:(id)options error:(id *)error;
- (int64_t)_cancellableUpdate:(void *)update facesToMove:(void *)move requestRevision:(unint64_t)revision;
@end

@implementation VNGreedyClusteringReadWrite

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  return self;
}

- (id)getClustersWithOptions:(id)options error:(id *)error
{
  v111 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  [(VNClusteringLogger *)self->super._clusteringLogger resetFileNameURLWithCurentDateTime];
  [(VNClusteringLogger *)self->super._clusteringLogger logString:@"Clustering with greedy algorithm"];
  v105 = 0;
  v104 = 0;
  v106 = 0;
  v57 = [optionsCopy objectForKeyedSubscript:@"VNClusterOptionRemoveObjectsFromClustering"];
  selfCopy = self;
  if (!v57)
  {
    goto LABEL_37;
  }

  v6 = [v57 objectAtIndexedSubscript:0];
  v71 = 0;
  v72 = &v71;
  v73 = 0x4812000000;
  v74 = __Block_byref_object_copy__364;
  v75 = __Block_byref_object_dispose__365;
  v76 = "";
  v78 = 0;
  v79 = 0;
  __p = 0;
  v102 = 0;
  v101 = 0;
  v103 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v7 = v57;
    v8 = [v7 countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v8)
    {
      v9 = *v98;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v98 != v9)
          {
            objc_enumerationMutation(v7);
          }

          faceId = [*(*(&v97 + 1) + 8 * i) faceId];
          std::vector<long long>::push_back[abi:ne200100](&v101, &faceId);
        }

        v8 = [v7 countByEnumeratingWithState:&v97 objects:v110 count:16];
      }

      while (v8);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        *error = [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected type of object for clustering"];
      }

      _Block_object_dispose(&v71, 8);
      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }

      v17 = 0;
      goto LABEL_84;
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v11 = v57;
    v12 = [v11 countByEnumeratingWithState:&v93 objects:v109 count:16];
    if (v12)
    {
      v13 = *v94;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v94 != v13)
          {
            objc_enumerationMutation(v11);
          }

          faceId = [*(*(&v93 + 1) + 8 * j) personId];
          std::vector<long long>::push_back[abi:ne200100](&v101, &faceId);
        }

        v12 = [v11 countByEnumeratingWithState:&v93 objects:v109 count:16];
      }

      while (v12);
    }
  }

  faceId = 0;
  v90 = &faceId;
  v91 = 0x2020000000;
  v92 = 0;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3321888768;
  v85[2] = __60__VNGreedyClusteringReadWrite_getClustersWithOptions_error___block_invoke;
  v85[3] = &unk_1F19715B0;
  v85[5] = &faceId;
  v85[4] = selfCopy;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v15 = v101;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v86, v101, v102, (v102 - v101) >> 3);
  v85[6] = &v71;
  if ((VNExecuteBlock(v85, error) & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(v90 + 3) == 128)
  {
    std::vector<std::pair<long long,long long>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<long long,long long>*>,std::__wrap_iter<std::pair<long long,long long>*>>(&v104, v105, v72[6], v72[7], (v72[7] - v72[6]) >> 4);
    v16 = 1;
    goto LABEL_30;
  }

  if (error)
  {
    VNErrorForCVMLStatus(*(v90 + 3));
    *error = v16 = 0;
  }

  else
  {
LABEL_29:
    v16 = 0;
  }

LABEL_30:
  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  _Block_object_dispose(&faceId, 8);
  if (v15)
  {
    operator delete(v15);
  }

  _Block_object_dispose(&v71, 8);
  if (__p)
  {
    v78 = __p;
    operator delete(__p);
  }

  self = selfCopy;
  if ((v16 & 1) == 0)
  {
    v17 = 0;
    goto LABEL_85;
  }

LABEL_37:
  v56 = [optionsCopy objectForKeyedSubscript:@"VNClusterOptionAddObjectsToClustering"];
  v18 = [v56 count];
  v55 = [optionsCopy objectForKeyedSubscript:@"VNClusterOptionAddObjectGroupIdsToClustering"];
  if (!v18)
  {
LABEL_47:
    v54 = [(VNGreedyClusteringReadOnly *)self convertUpdatePairsToClusters:&v104];
    [(VNClusteringLogger *)self->super._clusteringLogger logString:@"Clusters:"];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v24 = v54;
    v32 = [v24 countByEnumeratingWithState:&v66 objects:v108 count:16];
    if (v32)
    {
      v33 = *v67;
      while (2)
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v67 != v33)
          {
            objc_enumerationMutation(v24);
          }

          v35 = *(*(&v66 + 1) + 8 * k);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __60__VNGreedyClusteringReadWrite_getClustersWithOptions_error___block_invoke_384;
          aBlock[3] = &unk_1E77B6430;
          aBlock[4] = v35;
          aBlock[5] = selfCopy;
          v36 = _Block_copy(aBlock);
          v37 = VNExecuteBlock(v36, error);

          if (!v37)
          {

            goto LABEL_82;
          }
        }

        v32 = [v24 countByEnumeratingWithState:&v66 objects:v108 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    [(VNClusteringLogger *)selfCopy->super._clusteringLogger logString:@"clusters:"];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v24;
    v38 = [obj countByEnumeratingWithState:&v61 objects:v107 count:16];
    if (v38)
    {
      v39 = *v62;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v62 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v61 + 1) + 8 * m);
          clusteringLogger = selfCopy->super._clusteringLogger;
          v43 = MEMORY[0x1E696AEC0];
          clusterId = [v41 clusterId];
          objects = [v41 objects];
          v46 = [objects description];
          v47 = v46;
          v48 = [v43 stringWithFormat:@"  clusterId: %ld, %s", clusterId, objc_msgSend(v46, "UTF8String")];
          [(VNClusteringLogger *)clusteringLogger logString:v48];
        }

        v38 = [obj countByEnumeratingWithState:&v61 objects:v107 count:16];
      }

      while (v38);
    }

    v24 = obj;
    v17 = v24;
    goto LABEL_83;
  }

  v19 = self->super._clusteringLogger;
  v20 = MEMORY[0x1E696AEC0];
  v21 = [v56 description];
  v22 = v21;
  v23 = [v20 stringWithFormat:@"adding faces (%lu): %s", v18, objc_msgSend(v21, "UTF8String")];
  [(VNClusteringLogger *)v19 logString:v23];

  v24 = [v56 objectAtIndexedSubscript:0];
  v84 = 0;
  v90 = 0;
  faceId = 0;
  v91 = 0;
  v25 = [optionsCopy objectForKeyedSubscript:@"VNClusterOptionFaceprintRevision"];
  unsignedIntegerValue = [v25 unsignedIntegerValue];

  if (![(NSString *)selfCopy->super._algorithmType isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"])
  {
    faceprint = [v24 faceprint];
    lengthInBytes = [faceprint lengthInBytes];

    v102 = 0;
    v101 = 0;
    v103 = 0;
    vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(&v71, &v101, &v84, lengthInBytes, 0, 0);
    v82 = 0;
    v71 = &unk_1F19764A8;
    v80 = lengthInBytes >> 2;
    v81 = 2;
    [VNGreedyClusteringReadOnly addFaceObservations:v56 toFaceDescriptorBuffer:&v71];
    v31 = [(VNGreedyClusteringReadWrite *)selfCopy _cancellableUpdate:&v71 facesToMove:&faceId requestRevision:unsignedIntegerValue];
    v71 = &unk_1F19764A8;
    free(v82);
    vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(&v71);
LABEL_43:
    if (v31 == 128)
    {
      std::vector<std::pair<long long,long long>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<long long,long long>*>,std::__wrap_iter<std::pair<long long,long long>*>>(&v104, v105, faceId, v90, (v90 - faceId) >> 4);
      if (faceId)
      {
        v90 = faceId;
        operator delete(faceId);
      }

      self = selfCopy;
      goto LABEL_47;
    }

    if (!error)
    {
      goto LABEL_80;
    }

    v49 = VNErrorForCVMLStatus(v31);
LABEL_79:
    *error = v49;
    goto LABEL_80;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    faceTorsoprint = [v24 faceTorsoprint];
    lengthInBytes2 = [faceTorsoprint lengthInBytes];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        goto LABEL_80;
      }

      v49 = [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected type of object for clustering"];
      goto LABEL_79;
    }

    lengthInBytes2 = [v24 lengthInBytes];
  }

  if (!v55)
  {
    if (!error)
    {
      goto LABEL_80;
    }

    v50 = @"Faces to add must be accompanied by grouping identifiers when performing clustering in torso mode.";
    v51 = 7;
    goto LABEL_78;
  }

  if ([v55 count] != v18)
  {
    if (!error)
    {
      goto LABEL_80;
    }

    v50 = @"Faces to add array must be the same size as that of the grouping identifiers array.";
    v51 = 5;
LABEL_78:
    v49 = [VNError errorWithCode:v51 message:v50 underlyingError:0];
    goto LABEL_79;
  }

  v102 = 0;
  v101 = 0;
  v103 = 0;
  memset(v83, 0, sizeof(v83));
  memset(v70, 0, sizeof(v70));
  vision::mod::ImageDescriptorBufferJoint::ImageDescriptorBufferJoint(&v71, v70, &v84, v83, &v101, lengthInBytes2, 0, 0);
  v81 = 3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [VNGreedyClusteringReadOnly addFaceObservations:v56 withGroupingIdentifiers:v55 toFaceDescriptorBuffer:&v71];
LABEL_92:
    v31 = [(VNGreedyClusteringReadWrite *)selfCopy _cancellableUpdate:&v71 facesToMove:&faceId requestRevision:unsignedIntegerValue];
    v53 = 1;
    goto LABEL_93;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [VNGreedyClusteringReadOnly addPersonData:v56 withGroupingIdentifiers:v55 toFaceDescriptorBuffer:&v71];
    goto LABEL_92;
  }

  if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected type of object for clustering"];
    v31 = 0;
    *error = v53 = 0;
  }

  else
  {
    v31 = 0;
    v53 = 0;
  }

LABEL_93:
  vision::mod::ImageDescriptorBufferJoint::~ImageDescriptorBufferJoint(&v71);
  if (v83[0])
  {
    operator delete(v83[0]);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v53)
  {
    goto LABEL_43;
  }

LABEL_80:
  if (faceId)
  {
    v90 = faceId;
    operator delete(faceId);
  }

LABEL_82:
  v17 = 0;
LABEL_83:

  v6 = v56;
LABEL_84:

LABEL_85:
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  return v17;
}

uint64_t __60__VNGreedyClusteringReadWrite_getClustersWithOptions_error___block_invoke_384(uint64_t a1)
{
  [*(a1 + 32) setTotalObjectCount:{(*(**(*(a1 + 40) + 104) + 200))(*(*(a1 + 40) + 104), objc_msgSend(*(a1 + 32), "clusterId"))}];
  v2 = [*(a1 + 32) totalObjectCount];
  v3 = [*(a1 + 32) objects];
  v4 = [v3 count];

  v5 = v2 - v4;
  [*(a1 + 32) setShouldUpdateRepresentative:v2 == v4];
  if (([*(a1 + 32) shouldUpdateRepresentative] & 1) == 0)
  {
    [*(a1 + 32) setShouldUpdateRepresentative:{((COERCE_UNSIGNED_INT(objc_msgSend(*(a1 + 32), "totalObjectCount")) ^ COERCE_UNSIGNED_INT(v5)) & 0x7F800000) != 0}];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %d: prevcount=%d, curcount=%d, shouldUpdateRep = %d", objc_msgSend(*(a1 + 32), "clusterId"), v5, objc_msgSend(*(a1 + 32), "totalObjectCount"), objc_msgSend(*(a1 + 32), "shouldUpdateRepresentative")];
  [v6 logString:v7];

  if ([*(a1 + 32) shouldUpdateRepresentative])
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    (*(**(*(a1 + 40) + 104) + 160))(*(*(a1 + 40) + 104), [*(a1 + 32) clusterId], &__p, 0);
    v8 = [MEMORY[0x1E695DFA8] set];
    v10 = __p;
    v9 = v18;
    if (v18 != __p)
    {
      v11 = 0;
      v12 = 1374389535 * ((v18 - __p) >> 3);
      v13 = (v12 >> 37) + (v12 >> 63);
      do
      {
        if (v11 >= v13)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithLongLong:*v10];
          [v8 addObject:v14];

          v11 = 0;
          v9 = v18;
        }

        else
        {
          ++v11;
        }

        ++v10;
      }

      while (v10 != v9);
    }

    v15 = [v8 allObjects];
    [*(a1 + 32) setSuggestedIdsForRepresentative:v15];

    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  return 1;
}

- (int64_t)_cancellableUpdate:(void *)update facesToMove:(void *)move requestRevision:(unint64_t)revision
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 5248;
  v10 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__VNGreedyClusteringReadWrite__cancellableUpdate_facesToMove_requestRevision___block_invoke;
  v11[3] = &unk_1E77B5EB8;
  v11[4] = self;
  v11[5] = &v12;
  v11[6] = update;
  v11[7] = move;
  v5 = VNExecuteBlock(v11, &v10);
  v6 = v10;
  v7 = v13 + 3;
  if (!v5)
  {
    v7 = &CVML_status_internalError;
  }

  v8 = *v7;

  _Block_object_dispose(&v12, 8);
  return v8;
}

- (VNGreedyClusteringReadWrite)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = VNGreedyClusteringReadWrite;
  v7 = [(VNGreedyClusteringReadWrite *)&v29 init];
  v8 = v7;
  if (!v7 || ![(VNGreedyClusteringReadOnly *)v7 _parseOptions:optionsCopy error:error])
  {
    v15 = 0;
    goto LABEL_31;
  }

  faceprintRevision = v8->super._faceprintRevision;
  torsoprintRevision = v8->super._torsoprintRevision;
  strlen([(NSString *)v8->super._algorithmType UTF8String]);
  apple::vision::GreedyClusteringParamsWrapper::createClusteringHacksWrapper(&v27, faceprintRevision, torsoprintRevision);
  if (!v27)
  {
    if (error)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Creating clustering parameters object failed for following face and torsoprint revisions: %lu and %lu and algorithm type: %@", v8->super._faceprintRevision, v8->super._torsoprintRevision, v8->super._algorithmType];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v16];
    }

    goto LABEL_28;
  }

  if ([(NSString *)v8->super._algorithmType isEqualToString:@"VNClusteringAlgorithm_Greedy"])
  {
    uTF8String = [(NSString *)v8->super._cacheFolderPath UTF8String];
    vectorMapReadOnlyFlag = v8->super._vectorMapReadOnlyFlag;
    bytes = [(NSData *)v8->super._state bytes];
    v14 = [(NSData *)v8->super._state length];
    v33 = uTF8String;
    v32 = vectorMapReadOnlyFlag;
    if (uTF8String)
    {
      if (v14)
      {
        v31 = bytes;
        *&v30 = bytes + v14;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const* const&,unsigned char const*,0>();
      }

      std::allocate_shared[abi:ne200100]<vision::mod::GreedyClustererFaces,std::allocator<vision::mod::GreedyClustererFaces>,char const*&,std::shared_ptr<apple::vision::GreedyClusteringParamsWrapper> const&,0>();
    }
  }

  else
  {
    if (![(NSString *)v8->super._algorithmType isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"])
    {
      goto LABEL_20;
    }

    uTF8String2 = [(NSString *)v8->super._cacheFolderPath UTF8String];
    v18 = v8->super._vectorMapReadOnlyFlag;
    bytes2 = [(NSData *)v8->super._state bytes];
    v20 = [(NSData *)v8->super._state length];
    v33 = uTF8String2;
    v32 = v18;
    if (uTF8String2)
    {
      if (v20)
      {
        v31 = bytes2;
        *&v30 = bytes2 + v20;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const* const&,unsigned char const*,0>();
      }

      std::allocate_shared[abi:ne200100]<vision::mod::GreedyClustererFacesWithTorso,std::allocator<vision::mod::GreedyClustererFacesWithTorso>,char const*&,std::shared_ptr<apple::vision::GreedyClusteringParamsWrapper> const&,0>();
    }
  }

  cntrl = v8->m_ClusteringImpl.__cntrl_;
  v8->m_ClusteringImpl = 0u;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

LABEL_20:
  if (v8->m_ClusteringImpl.__ptr_)
  {
    ptr = v8->m_ClusteringImpl.__ptr_;
    v22 = v8->m_ClusteringImpl.__cntrl_;
    v26 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24.receiver = v8;
    v24.super_class = VNGreedyClusteringReadWrite;
    [(VNGreedyClusteringReadOnly *)&v24 setGreedyClustererFaces_const:&ptr];
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    [(VNGreedyClusteringReadOnly *)v8 initializeLogging];
    v15 = v8;
    goto LABEL_29;
  }

  if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Error initializing cluster state"];
    *error = v15 = 0;
    goto LABEL_29;
  }

LABEL_28:
  v15 = 0;
LABEL_29:
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

LABEL_31:

  return v15;
}

@end