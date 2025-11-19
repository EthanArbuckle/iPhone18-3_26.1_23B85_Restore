@interface VNGreedyClusteringReadOnly
+ (id)clustererModelFileNamesFromState:(id)a3 storedInPath:(id)a4 error:(id *)a5;
+ (id)getRepresentativenessForFaces:(id)a3 error:(id *)a4;
+ (id)nonGroupedGroupID;
+ (void)addFaceObservations:(id)a3 toFaceDescriptorBuffer:(void *)a4;
+ (void)addFaceObservations:(id)a3 withGroupingIdentifiers:(id)a4 toFaceDescriptorBuffer:(void *)a5;
+ (void)addPersonData:(id)a3 withGroupingIdentifiers:(id)a4 toFaceDescriptorBuffer:(void *)a5;
- (BOOL)_parseOptions:(id)a3 error:(id *)a4;
- (VNGreedyClusteringReadOnly)initWithOptions:(id)a3 error:(id *)a4;
- (id).cxx_construct;
- (id)convertUpdatePairsToClusters:(void *)a3;
- (id)getAllClustersFromStateAndReturnError:(id *)a3;
- (id)getClusterState:(id *)a3;
- (id)getClusteredIds:(id *)a3;
- (id)getClustersForClusterIds:(id)a3 options:(id)a4 error:(id *)a5;
- (id)getDistanceBetweenLevel0ClustersWithFaceId:(id)a3 andFaceId:(id)a4 error:(id *)a5;
- (id)getDistanceBetweenLevel1Clusters:(id)a3 error:(id *)a4;
- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5;
- (id)getLevel0ClusteredIdsForFaceId:(id)a3 error:(id *)a4;
- (id)getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId:(id)a3 error:(id *)a4;
- (id)maximumFaceIdInModelAndReturnError:(id *)a3;
- (id)suggestionsForClusterIdsWithFlags:(id)a3 affinityThreshold:(float)a4 error:(id *)a5;
- (void)initializeLogging;
- (void)setGreedyClustererFaces_const:(shared_ptr<const vision::mod::FaceClustering>)a3;
@end

@implementation VNGreedyClusteringReadOnly

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

- (id)maximumFaceIdInModelAndReturnError:(id *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__VNGreedyClusteringReadOnly_maximumFaceIdInModelAndReturnError___block_invoke;
  v5[3] = &unk_1E77B25B8;
  v5[4] = self;
  v5[5] = &v6;
  if (VNExecuteBlock(v5, a3))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:v7[3]];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)getDistances:(id)a3 to:(id)a4 error:(id *)a5
{
  v91 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v57 = a4;
  v8 = [v57 count];
  if (!v8)
  {
    v12 = MEMORY[0x1E695E0F8];
    goto LABEL_60;
  }

  v9 = [(NSString *)self->_algorithmType isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"];
  v89 = 0;
  [v57 objectAtIndexedSubscript:0];
  v71 = 0uLL;
  v53 = v72 = 0;
  v10 = [v53 faceprint];
  v11 = [v10 lengthInBytes];
  vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(v86, &v71, &v89, v11, 0, 0);
  v87 = 1;
  v88 = 0;
  v86[0] = &unk_1F19764A8;
  v86[12] = (v11 >> 2);

  v87 = 2;
  [VNGreedyClusteringReadOnly addFaceObservations:v57 toFaceDescriptorBuffer:v86];
  memset(&v85, 0, sizeof(v85));
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = 0;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __52__VNGreedyClusteringReadOnly_getDistances_to_error___block_invoke;
  v80[3] = &unk_1E77B25B8;
  v80[5] = &v81;
  v80[4] = self;
  if (VNExecuteBlock(v80, a5))
  {
    if (!v9)
    {
      vision::mod::descriptorBufferUnpackedScores(&v71, v86, &v85, v82[6]);
    }

    v82[6] /= 2;
    v55 = [MEMORY[0x1E695DF90] dictionary];
    memset(v79, 0, sizeof(v79));
    if (v54)
    {
      *&v71 = 0;
      *(&v71 + 1) = &v71;
      v72 = 0xA812000000;
      v73 = __Block_byref_object_copy__280;
      v74 = __Block_byref_object_dispose__281;
      v75 = "";
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v14 = v82[6];
      v15 = vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(v76, &v68, &v89, 4 * v14, 0, 0);
      v77 = 1;
      v78 = 0;
      v49 = &unk_1F19764A8;
      v51 = v15;
      v76[0] = &unk_1F19764A8;
      v76[12] = v14 & 0x3FFFFFFFFFFFFFFFLL;
      *(*(&v71 + 1) + 152) = 2;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v16 = v54;
      v17 = [v16 countByEnumeratingWithState:&v64 objects:v90 count:16];
      if (v17)
      {
        v18 = *v65;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v65 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v58 = [*(*(&v64 + 1) + 8 * i) unsignedIntegerValue];
            std::vector<long long>::push_back[abi:ne200100](&v68, &v58);
          }

          v17 = [v16 countByEnumeratingWithState:&v64 objects:v90 count:16];
        }

        while (v17);
        v17 = v69;
        v52 = v68;
      }

      else
      {
        v52 = 0;
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3321888768;
      v60[2] = __52__VNGreedyClusteringReadOnly_getDistances_to_error___block_invoke_283;
      v60[3] = &unk_1F1971578;
      v60[4] = self;
      __p = 0;
      v62 = 0;
      v63 = 0;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v52, v17, (v17 - v52) >> 3);
      v60[5] = &v71;
      if ((VNExecuteBlock(v60, a5) & 1) == 0)
      {
        if (__p)
        {
          v62 = __p;
          operator delete(__p);
        }

        if (v52)
        {
          operator delete(v52);
        }

        _Block_object_dispose(&v71, 8);
        v76[0] = v49;
        free(v78);
        vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v51);
        v12 = 0;
        goto LABEL_56;
      }

      vision::mod::ImageDescriptorBufferFloat32::computeDistancesFrom(v86, (*(&v71 + 1) + 48), &v58);
      v21 = v58;
      *v79 = v58;
      v56 = v59;
      *&v79[8] = v59;
      if ([v16 count] * v8 == (v56 - v21) >> 2)
      {
        v36 = 0;
        for (j = 0; j != v8; ++j)
        {
          v38 = [MEMORY[0x1E695DF90] dictionary];
          for (k = 0; ; ++k)
          {
            v40 = [v16 count];
            v41 = MEMORY[0x1E696AD98];
            if (v40 <= k)
            {
              break;
            }

            *&v42 = *(&v21[k] + v36 * [v16 count]);
            v43 = [v41 numberWithFloat:v42];
            v44 = [v16 objectAtIndexedSubscript:k];
            [v38 setObject:v43 forKeyedSubscript:v44];
          }

          v45 = [v57 objectAtIndexedSubscript:j];
          v46 = [v41 numberWithUnsignedInteger:{objc_msgSend(v45, "faceId")}];
          [v55 setObject:v38 forKeyedSubscript:v46];

          v36 += 4;
        }
      }

      if (__p)
      {
        v62 = __p;
        operator delete(__p);
      }

      if (v52)
      {
        operator delete(v52);
      }

      _Block_object_dispose(&v71, 8);
      v76[0] = v50;
      free(v78);
      vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v51);
    }

    else
    {
      vision::mod::ImageDescriptorBufferFloat32::computeSelfDistances(v86, &v71);
      *v79 = v71;
      *&v79[16] = v72;
      v20 = 0;
      v21 = v71;
      do
      {
        v22 = [MEMORY[0x1E695DF90] dictionary];
        for (m = 0; m != v8; ++m)
        {
          v25 = MEMORY[0x1E696AD98];
          if (v20 == m)
          {
            v26 = [v57 objectAtIndexedSubscript:v20];
            v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "faceId")}];
            [v22 setObject:&unk_1F19C0F10 forKeyedSubscript:v27];
          }

          else
          {
            if (MEMORY[0x48] <= v20 || MEMORY[0x48] <= m)
            {
              exception = __cxa_allocate_exception(8uLL);
              *exception = 3692;
              __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
            }

            if (v20 <= m)
            {
              v29 = m;
            }

            else
            {
              v29 = v20;
            }

            if (v20 >= m)
            {
              v30 = m;
            }

            else
            {
              v30 = v20;
            }

            *&v23 = v21[v30 + (v29 - 1) * v29 / 2];
            v26 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
            v31 = MEMORY[0x1E696AD98];
            v27 = [v57 objectAtIndexedSubscript:m];
            v32 = [v31 numberWithUnsignedInteger:{objc_msgSend(v27, "faceId")}];
            [v22 setObject:v26 forKeyedSubscript:v32];
          }
        }

        v33 = MEMORY[0x1E696AD98];
        v34 = [v57 objectAtIndexedSubscript:v20];
        v35 = [v33 numberWithUnsignedInteger:{objc_msgSend(v34, "faceId")}];
        [v55 setObject:v22 forKeyedSubscript:v35];

        ++v20;
      }

      while (v20 != v8);
    }

    v12 = v55;
    if (v21)
    {
      *&v79[8] = v21;
      operator delete(v21);
    }

LABEL_56:

    begin = v85.__begin_;
    goto LABEL_57;
  }

  begin = 0;
  v12 = 0;
LABEL_57:
  _Block_object_dispose(&v81, 8);
  if (begin)
  {
    operator delete(begin);
  }

  v86[0] = &unk_1F19764A8;
  free(v88);
  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v86);

LABEL_60:

  return v12;
}

uint64_t __52__VNGreedyClusteringReadOnly_getDistances_to_error___block_invoke_283(void *a1)
{
  v2 = *(a1[4] + 88);
  v5 = 0;
  v6 = 0;
  __p = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, a1[6], a1[7], (a1[7] - a1[6]) >> 3);
  (*(*v2 + 176))(v2, &__p, *(a1[5] + 8) + 48);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return 1;
}

- (id)getClustersForClusterIds:(id)a3 options:(id)a4 error:(id *)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0;
  v44 = &v43;
  v45 = 0x4812000000;
  v46 = __Block_byref_object_copy__273;
  v47 = __Block_byref_object_dispose__274;
  v48 = "";
  memset(v49, 0, sizeof(v49));
  if (v8)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (v11)
    {
      v12 = *v40;
      v26 = v10;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [*(*(&v39 + 1) + 8 * i) unsignedIntegerValue];
          v30 = 0;
          v31 = &v30;
          v32 = 0x4812000000;
          v33 = __Block_byref_object_copy__224;
          v34 = __Block_byref_object_dispose__225;
          v35 = "";
          v37 = 0;
          v38 = 0;
          __p = 0;
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __69__VNGreedyClusteringReadOnly_getClustersForClusterIds_options_error___block_invoke;
          v29[3] = &unk_1E77B64B8;
          v29[5] = &v30;
          v29[6] = v14;
          v29[4] = self;
          if ((VNExecuteBlock(v29, a5) & 1) == 0)
          {
            _Block_object_dispose(&v30, 8);
            if (__p)
            {
              v37 = __p;
              operator delete(__p);
            }

            v10 = v26;
            goto LABEL_25;
          }

          std::vector<std::vector<long long>>::push_back[abi:ne200100](v44 + 6, v31 + 6);
          _Block_object_dispose(&v30, 8);
          if (__p)
          {
            v37 = __p;
            operator delete(__p);
          }
        }

        v11 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
        v10 = v26;
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__VNGreedyClusteringReadOnly_getClustersForClusterIds_options_error___block_invoke_2;
    aBlock[3] = &unk_1E77B25B8;
    aBlock[4] = self;
    aBlock[5] = &v43;
    v15 = _Block_copy(aBlock);
    v16 = VNExecuteBlock(v15, a5);

    if (!v16)
    {
LABEL_25:
      v24 = 0;
      goto LABEL_26;
    }
  }

  v17 = v44;
  v18 = v44[6];
  if (v18 != v44[7])
  {
    do
    {
      if (*v18 != v18[1])
      {
        v19 = objc_alloc_init(VNCluster);
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        for (j = *v18; j != v18[1]; ++j)
        {
          v22 = [MEMORY[0x1E696AD98] numberWithLongLong:*j];
          [v20 addObject:v22];
        }

        [(VNCluster *)v19 setObjects:v20];
        -[VNCluster setTotalObjectCount:](v19, "setTotalObjectCount:", [v20 count]);
        v23 = [v20 objectAtIndexedSubscript:0];
        -[VNCluster setClusterId:](v19, "setClusterId:", [v23 unsignedIntegerValue]);

        [v10 addObject:v19];
        v17 = v44;
      }

      v18 += 3;
    }

    while (v18 != v17[7]);
  }

  v24 = v10;
LABEL_26:
  _Block_object_dispose(&v43, 8);
  v30 = v49;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v30);

  return v24;
}

uint64_t __69__VNGreedyClusteringReadOnly_getClustersForClusterIds_options_error___block_invoke_2(uint64_t a1)
{
  (*(**(*(a1 + 32) + 88) + 144))(&v5);
  v2 = *(*(a1 + 40) + 8);
  v3 = (v2 + 6);
  if (v2[6])
  {
    std::vector<std::vector<long long>>::clear[abi:ne200100](v2 + 6);
    operator delete(*v3);
    *v3 = 0;
    v2[7] = 0;
    v2[8] = 0;
  }

  *(v2 + 3) = v5;
  v2[8] = v6;
  v6 = 0;
  v5 = 0uLL;
  v7 = &v5;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return 1;
}

- (id)getAllClustersFromStateAndReturnError:(id *)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  (*(*self->m_ClusteringImpl_const.__ptr_ + 152))(&v13);
  v5 = v14;
  for (i = v13; i != v5; i += 3)
  {
    if (*i != i[1])
    {
      v7 = objc_alloc_init(VNCluster);
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = *i; j != i[1]; ++j)
      {
        v10 = [MEMORY[0x1E696AD98] numberWithLongLong:*j];
        [v8 addObject:v10];
      }

      [(VNCluster *)v7 setObjects:v8];
      -[VNCluster setTotalObjectCount:](v7, "setTotalObjectCount:", [v8 count]);
      v11 = [v8 objectAtIndexedSubscript:0];
      -[VNCluster setClusterId:](v7, "setClusterId:", [v11 unsignedIntegerValue]);

      [v4 addObject:v7];
      v5 = v14;
    }
  }

  v15 = &v13;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v15);

  return v4;
}

- (id)getDistanceBetweenLevel1Clusters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 count] == 2)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__VNGreedyClusteringReadOnly_getDistanceBetweenLevel1Clusters_error___block_invoke;
    aBlock[3] = &unk_1E77B4588;
    aBlock[4] = self;
    v14 = v7;
    v9 = v8;
    v15 = v9;
    v10 = _Block_copy(aBlock);
    if (VNExecuteBlock(v10, a4))
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (a4)
  {
    [VNError errorWithCode:1 message:@"Parameter validation failed for getDistanceBetweenLevel1Clusters"];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __69__VNGreedyClusteringReadOnly_getDistanceBetweenLevel1Clusters_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  (*(**(*(a1 + 32) + 88) + 112))(*(*(a1 + 32) + 88), &v35);
  v14 = [*(a1 + 40) objectAtIndexedSubscript:0];
  [*(a1 + 40) objectAtIndexedSubscript:1];
  v28 = 0;
  v29 = &v28;
  v30 = 0x4812000000;
  v31 = __Block_byref_object_copy__224;
  v32 = __Block_byref_object_dispose__225;
  v15 = v33 = "";
  v20 = 0;
  std::vector<long long>::vector[abi:ne200100](v34, [v15 count]);
  *v29[6] = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__VNGreedyClusteringReadOnly_getDistanceBetweenLevel1Clusters_error___block_invoke_2;
  v27[3] = &unk_1E77B11C0;
  v27[4] = &v28;
  [v15 enumerateObjectsUsingBlock:v27];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v14;
  v2 = [obj countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v2)
  {
    v3 = *v24;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v24 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v6 = [v5 unsignedIntegerValue];
        v7 = *(*(a1 + 32) + 88);
        v18 = 0;
        v19 = 0;
        __p = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, v29[6], v29[7], (v29[7] - v29[6]) >> 3);
        (*(*v7 + 104))(v7, v6, &__p, &v35, &v20);
        if (__p)
        {
          v18 = __p;
          operator delete(__p);
        }

        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = v20;
        v11 = v21;
        while (v10 != v11)
        {
          LODWORD(v9) = *v10;
          v12 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
          [v8 addObject:v12];

          ++v10;
        }

        [*(a1 + 48) setObject:v8 forKey:v5];

        if (v20)
        {
          v21 = v20;
          operator delete(v20);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v2);
  }

  _Block_object_dispose(&v28, 8);
  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v36[0]);
  return 1;
}

void __69__VNGreedyClusteringReadOnly_getDistanceBetweenLevel1Clusters_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *(*(*(*(a1 + 32) + 8) + 48) + 8 * a3) = [v5 unsignedIntegerValue];
}

- (id)getDistanceBetweenLevel0ClustersWithFaceId:(id)a3 andFaceId:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__243;
    v22 = __Block_byref_object_dispose__244;
    v23 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__VNGreedyClusteringReadOnly_getDistanceBetweenLevel0ClustersWithFaceId_andFaceId_error___block_invoke;
    v14[3] = &unk_1E77B1198;
    v14[4] = self;
    v15 = v8;
    v16 = v10;
    v17 = &v18;
    v12 = _Block_copy(v14);
    if (VNExecuteBlock(v12, a5))
    {
      v11 = v19[5];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  return v11;
}

uint64_t __89__VNGreedyClusteringReadOnly_getDistanceBetweenLevel0ClustersWithFaceId_andFaceId_error___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) logEnabled])
  {
    [*(*(a1 + 32) + 16) resetFileNameURLWithCurentDateTime];
    v9[0] = 0;
    v9[1] = 0;
    v8 = v9;
    (*(**(*(a1 + 32) + 88) + 112))(*(*(a1 + 32) + 88), &v8);
    [*(*(a1 + 32) + 16) logClusterMapL1:&v8];
    v7[0] = 0;
    v7[1] = 0;
    v6 = v7;
    (*(**(*(a1 + 32) + 88) + 72))(*(*(a1 + 32) + 88), &v6);
    [*(*(a1 + 32) + 16) logClusterMapL0:&v6];
    std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v7[0]);
    std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v9[0]);
  }

  LODWORD(v8) = 0;
  v2 = (*(**(*(a1 + 32) + 88) + 96))(*(*(a1 + 32) + 88), [*(a1 + 40) unsignedLongValue], objc_msgSend(*(a1 + 48), "unsignedLongValue"), &v8);
  if (v2 == 5248)
  {
    LODWORD(v3) = v8;
    v4 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  if (v2 == 5248)
  {
  }

  return 1;
}

- (id)getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x4812000000;
    v49 = __Block_byref_object_copy_;
    v50 = __Block_byref_object_dispose_;
    v51 = "";
    v53[0] = 0;
    v53[1] = 0;
    v52 = v53;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__VNGreedyClusteringReadOnly_getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId_error___block_invoke;
    aBlock[3] = &unk_1E77B3720;
    aBlock[4] = self;
    v40 = &v46;
    v41 = &v42;
    v8 = v6;
    v39 = v8;
    v9 = _Block_copy(aBlock);
    if (VNExecuteBlock(v9, a4))
    {
      v10 = v47[7];
      if (!v10)
      {
LABEL_10:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }

      v11 = v43[3];
      while (1)
      {
        while (1)
        {
          v12 = v10[4];
          if (v11 >= v12)
          {
            break;
          }

          v10 = *v10;
          if (!v10)
          {
            goto LABEL_10;
          }
        }

        if (v12 >= v11)
        {
          break;
        }

        v10 = v10[1];
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      v15 = v10[6] - v10[5];
      if (v15)
      {
        v16 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:v15 >> 3];
        v17 = v10[5];
        for (i = v10[6]; v17 != i; ++v17)
        {
          v19 = [MEMORY[0x1E696AD98] numberWithLongLong:*v17];
          [v16 addObject:v19];
        }

        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = __Block_byref_object_copy__243;
        v36 = __Block_byref_object_dispose__244;
        v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __90__VNGreedyClusteringReadOnly_getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId_error___block_invoke_245;
        v31[3] = &unk_1E77B1170;
        v31[4] = self;
        v31[5] = &v32;
        v20 = _Block_copy(v31);
        if (v20[2](v20, v8, v16, a4))
        {
          while ([v16 count])
          {
            v21 = [v16 firstObject];
            v22 = v20[2](v20, v21, v16, a4);

            if ((v22 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v14 = v33[5];
        }

        else
        {
LABEL_21:
          v14 = 0;
        }

        _Block_object_dispose(&v32, 8);
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId: Level-1 cluster size is zero for a valid clusterID descriptor (%lld)", v43[3]];
        v23 = [v16 UTF8String];
        VNValidatedLog(4, @"%s", v24, v25, v26, v27, v28, v29, v23);
        if (a4)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:v16];
          *a4 = v14 = 0;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
    std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v53[0]);
  }

  else
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId: faceId (%@) is not initialized", 0];
    if (a4)
    {
      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v13];
    }

    v14 = 0;
  }

  return v14;
}

BOOL __90__VNGreedyClusteringReadOnly_getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId_error___block_invoke(uint64_t a1, void *a2)
{
  (*(**(*(a1 + 32) + 88) + 112))(*(*(a1 + 32) + 88), *(*(a1 + 48) + 8) + 48);
  if ([*(*(a1 + 32) + 16) logEnabled])
  {
    [*(*(a1 + 32) + 16) resetFileNameURLWithCurentDateTime];
    [*(*(a1 + 32) + 16) logClusterMapL1:*(*(a1 + 48) + 8) + 48];
    v16[0] = 0;
    v16[1] = 0;
    v15 = v16;
    (*(**(*(a1 + 32) + 88) + 72))(*(*(a1 + 32) + 88), &v15);
    [*(*(a1 + 32) + 16) logClusterMapL0:&v15];
    std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v16[0]);
  }

  v4 = (*(**(*(a1 + 32) + 88) + 120))(*(*(a1 + 32) + 88), [*(a1 + 40) longLongValue]);
  *(*(*(a1 + 56) + 8) + 24) = v4;
  *(*(*(a1 + 56) + 8) + 24) = v4;
  v5 = *(*(*(a1 + 56) + 8) + 24);
  if (v5 == -1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId: There is no level-1 cluster that contains faceId = %d", objc_msgSend(*(a1 + 40), "intValue")];
    v7 = [v6 UTF8String];
    VNValidatedLog(4, @"%s", v8, v9, v10, v11, v12, v13, v7);
    if (a2)
    {
      *a2 = [VNError errorForInternalErrorWithLocalizedDescription:v6];
    }
  }

  return v5 != -1;
}

BOOL __90__VNGreedyClusteringReadOnly_getLevel1ClusteredIdsGroupedByLevel0ClustersForFaceId_error___block_invoke_245(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = [*(a1 + 32) getLevel0ClusteredIdsForFaceId:a2 error:a4];
  if (v8)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
    [v7 minusOrderedSet:v8];
  }

  return v8 != 0;
}

- (id)getLevel0ClusteredIdsForFaceId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = __Block_byref_object_copy__227;
  v30 = __Block_byref_object_dispose__228;
  v31 = 0;
  v32[0] = v32;
  v32[1] = v32;
  v32[2] = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __67__VNGreedyClusteringReadOnly_getLevel0ClusteredIdsForFaceId_error___block_invoke;
  v17 = &unk_1E77B3720;
  v20 = &v22;
  v18 = self;
  v7 = v6;
  v19 = v7;
  v21 = &v26;
  if ((VNExecuteBlock(&v14, a4) & 1) == 0)
  {
LABEL_8:
    a4 = 0;
    goto LABEL_9;
  }

  if (v23[3] != 5248)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v11 initWithFormat:@"getting clusters failed with error: %lld", v23[3], v14, v15, v16, v17, v18];
    *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v12];

    goto LABEL_8;
  }

  a4 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:v27[8]];
  v8 = v27 + 6;
  v9 = v27[7];
  if (v9 != v27 + 6)
  {
    do
    {
      v10 = [MEMORY[0x1E696AD98] numberWithLongLong:v9[2]];
      [a4 addObject:v10];

      v9 = v9[1];
    }

    while (v9 != v8);
  }

LABEL_9:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  std::__list_imp<long long>::clear(v32);

  return a4;
}

- (id)getClusteredIds:(id *)a3
{
  v5 = [MEMORY[0x1E695DFA8] set];
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = __Block_byref_object_copy__224;
  v15 = __Block_byref_object_dispose__225;
  v16 = "";
  v18 = 0;
  v19 = 0;
  __p = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__VNGreedyClusteringReadOnly_getClusteredIds___block_invoke;
  v10[3] = &unk_1E77B25B8;
  v10[4] = self;
  v10[5] = &v11;
  if (VNExecuteBlock(v10, a3))
  {
    for (i = v12[6]; i != v12[7]; ++i)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:*i];
      [v5 addObject:v7];
    }

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v8;
}

- (id)getClusterState:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = __Block_byref_object_copy__221;
  v11 = __Block_byref_object_dispose__222;
  v12 = "";
  v13 = 0;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__VNGreedyClusteringReadOnly_getClusterState___block_invoke;
  v6[3] = &unk_1E77B25B8;
  v6[4] = self;
  v6[5] = &v7;
  if ((VNExecuteBlock(v6, a3) & 1) != 0 && (v3 = v8[6]) != 0)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*v3 length:v3[1] - *v3];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v4;
}

uint64_t __46__VNGreedyClusteringReadOnly_getClusterState___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 88) + 48))(&v6);
  v2 = *(*(a1 + 40) + 8);
  v3 = v6;
  v6 = 0uLL;
  v4 = *(v2 + 56);
  *(v2 + 48) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v6 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
    }
  }

  return 1;
}

- (id)suggestionsForClusterIdsWithFlags:(id)a3 affinityThreshold:(float)a4 error:(id *)a5
{
  v193 = *MEMORY[0x1E69E9840];
  v101 = a3;
  context = objc_autoreleasePoolPush();
  [(VNClusteringLogger *)self->_suggestionsLogger resetFileNameURLWithCurentDateTime];
  [(VNSuggestionsLogger *)self->_suggestionsLogger logInputFaceIdsWithFlags:v101];
  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x4812000000;
  v180[3] = __Block_byref_object_copy_;
  v180[4] = __Block_byref_object_dispose_;
  v180[5] = "";
  v181[1] = 0;
  v181[0] = 0;
  v180[6] = v181;
  v179[0] = MEMORY[0x1E69E9820];
  v179[1] = 3221225472;
  v179[2] = __88__VNGreedyClusteringReadOnly_suggestionsForClusterIdsWithFlags_affinityThreshold_error___block_invoke;
  v179[3] = &unk_1E77B25B8;
  v179[4] = self;
  v179[5] = v180;
  v178 = 0;
  v6 = VNExecuteBlock(v179, &v178);
  v7 = self;
  v8 = v178;
  if ((v6 & 1) == 0)
  {
    v30 = 0;
    goto LABEL_20;
  }

  v9 = MEMORY[0x1E695DF90];
  v10 = [v101 allKeys];
  v104 = v7;
  v109 = [v9 dictionaryWithCapacity:{objc_msgSend(v10, "count")}];

  v11 = MEMORY[0x1E695DF90];
  v12 = [v101 allKeys];
  v108 = [v11 dictionaryWithCapacity:{objc_msgSend(v12, "count")}];

  v97 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v13 = [v101 allKeys];
  obj = v13;
  v14 = [v13 countByEnumeratingWithState:&v174 objects:v192 count:16];
  if (v14)
  {
    v15 = *v175;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v175 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v174 + 1) + 8 * i);
        v159 = 0;
        v160 = &v159;
        v161 = 0x2020000000;
        v162 = -1;
        v173[0] = MEMORY[0x1E69E9820];
        v173[1] = 3221225472;
        v173[2] = __88__VNGreedyClusteringReadOnly_suggestionsForClusterIdsWithFlags_affinityThreshold_error___block_invoke_2;
        v173[3] = &unk_1E77B5338;
        v173[6] = &v159;
        v173[4] = v104;
        v173[5] = v17;
        v172 = v8;
        v18 = VNExecuteBlock(v173, &v172);
        v19 = v172;

        v8 = v19;
        if ((v18 & 1) == 0)
        {
          _Block_object_dispose(&v159, 8);
          v13 = obj;
          goto LABEL_17;
        }

        if ((v160[3] & 0x8000000000000000) == 0)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
          v21 = [v109 objectForKey:v20];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v24 = [MEMORY[0x1E696AD98] numberWithLongLong:v160[3]];
            [v109 setObject:v23 forKeyedSubscript:v24];

            v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v26 = [MEMORY[0x1E696AD98] numberWithLongLong:v160[3]];
            [v108 setObject:v25 forKeyedSubscript:v26];

            v27 = [v101 objectForKeyedSubscript:v17];
            v28 = [v27 isEqual:MEMORY[0x1E695E110]];

            if (v28)
            {
              v29 = [MEMORY[0x1E696AD98] numberWithLongLong:v160[3]];
              [v97 addObject:v29];
            }
          }
        }

        _Block_object_dispose(&v159, 8);
      }

      v13 = obj;
      v14 = [obj countByEnumeratingWithState:&v174 objects:v192 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (v8)
  {
    goto LABEL_18;
  }

  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v34 = [v109 allKeys];
  v35 = [v34 countByEnumeratingWithState:&v168 objects:v191 count:16];
  if (!v35)
  {

LABEL_59:
    [(VNSuggestionsLogger *)v104->_suggestionsLogger logAllSuggestons:v109];
    [(VNSuggestionsLogger *)v104->_suggestionsLogger logFilteredByInputQuerySuggestons:v108];
    v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v100 = [v108 allKeys];
    v54 = [v100 countByEnumeratingWithState:&v145 objects:v189 count:16];
    if (v54)
    {
      v102 = *v146;
      do
      {
        v55 = 0;
        v103 = v54;
        do
        {
          if (*v146 != v102)
          {
            objc_enumerationMutation(v100);
          }

          v107 = v55;
          v56 = *(*(&v145 + 1) + 8 * v55);
          v105 = objc_autoreleasePoolPush();
          v113 = [v108 objectForKeyedSubscript:v56];
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          objb = [v108 allKeys];
          v57 = [objb countByEnumeratingWithState:&v141 objects:v188 count:16];
          if (v57)
          {
            v58 = *v142;
            do
            {
              for (j = 0; j != v57; ++j)
              {
                if (*v142 != v58)
                {
                  objc_enumerationMutation(objb);
                }

                v60 = *(*(&v141 + 1) + 8 * j);
                v61 = [v56 unsignedIntegerValue];
                if (v61 != [v60 unsignedIntegerValue] && objc_msgSend(v113, "containsObject:", v60))
                {
                  if ([v111 count])
                  {
                    v139 = 0u;
                    v140 = 0u;
                    v137 = 0u;
                    v138 = 0u;
                    v62 = v111;
                    v63 = [v62 countByEnumeratingWithState:&v137 objects:v187 count:16];
                    if (v63)
                    {
                      v64 = *v138;
                      while (2)
                      {
                        for (k = 0; k != v63; ++k)
                        {
                          if (*v138 != v64)
                          {
                            objc_enumerationMutation(v62);
                          }

                          v66 = *(*(&v137 + 1) + 8 * k);
                          if ([v66 containsObject:v56])
                          {
                            [v66 addObject:v60];
                            goto LABEL_92;
                          }
                        }

                        v63 = [v62 countByEnumeratingWithState:&v137 objects:v187 count:16];
                        if (v63)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v135 = 0u;
                    v136 = 0u;
                    v133 = 0u;
                    v134 = 0u;
                    v62 = v62;
                    v67 = [v62 countByEnumeratingWithState:&v133 objects:v186 count:16];
                    if (v67)
                    {
                      v68 = *v134;
                      while (2)
                      {
                        for (m = 0; m != v67; ++m)
                        {
                          if (*v134 != v68)
                          {
                            objc_enumerationMutation(v62);
                          }

                          v70 = *(*(&v133 + 1) + 8 * m);
                          if ([v70 containsObject:v60])
                          {
                            [v70 addObject:v56];
                            goto LABEL_92;
                          }
                        }

                        v67 = [v62 countByEnumeratingWithState:&v133 objects:v186 count:16];
                        if (v67)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v71 = [MEMORY[0x1E695DFA8] setWithObject:v56];
                    [v71 addObject:v60];
                    [v62 addObject:v71];
                    v62 = v71;
                  }

                  else
                  {
                    v62 = [MEMORY[0x1E695DFA8] setWithObject:v56];
                    [v62 addObject:v60];
                    [v111 addObject:v62];
                  }

LABEL_92:
                }
              }

              v57 = [objb countByEnumeratingWithState:&v141 objects:v188 count:16];
            }

            while (v57);
          }

          objc_autoreleasePoolPop(v105);
          v55 = v107 + 1;
        }

        while (v107 + 1 != v103);
        v54 = [v100 countByEnumeratingWithState:&v145 objects:v189 count:16];
      }

      while (v54);
    }

    [(VNSuggestionsLogger *)v104->_suggestionsLogger logConnectedGroups:v111];
    if ([v111 count])
    {
      v72 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v73 = v111;
      v74 = [v73 countByEnumeratingWithState:&v125 objects:v184 count:16];
      if (v74)
      {
        v75 = 0;
        v76 = *v126;
        do
        {
          for (n = 0; n != v74; ++n)
          {
            if (*v126 != v76)
            {
              objc_enumerationMutation(v73);
            }

            v78 = *(*(&v125 + 1) + 8 * n);
            if ([v78 count] <= v75)
            {
              if ([v78 count] == v75 && (objc_msgSend(v72, "isEqualToSet:", v78) & 1) == 0)
              {
                [v72 unionSet:v78];
              }
            }

            else
            {
              v75 = [v78 count];
              v79 = [v78 mutableCopy];

              v72 = v79;
            }
          }

          v74 = [v73 countByEnumeratingWithState:&v125 objects:v184 count:16];
        }

        while (v74);
      }

      if ([v72 count])
      {
        v80 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v81 = v72;
        v82 = [v81 countByEnumeratingWithState:&v117 objects:v182 count:16];
        if (v82)
        {
          v83 = *v118;
          do
          {
            for (ii = 0; ii != v82; ++ii)
            {
              if (*v118 != v83)
              {
                objc_enumerationMutation(v81);
              }

              v85 = [v109 objectForKeyedSubscript:*(*(&v117 + 1) + 8 * ii)];
              [v80 unionSet:v85];
            }

            v82 = [v81 countByEnumeratingWithState:&v117 objects:v182 count:16];
          }

          while (v82);
        }

        [v80 minusSet:v97];
        v86 = [v80 allObjects];
      }

      else
      {
        v80 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v91 = [v109 allValues];
        v92 = [v91 countByEnumeratingWithState:&v121 objects:v183 count:16];
        if (v92)
        {
          v93 = *v122;
          do
          {
            for (jj = 0; jj != v92; ++jj)
            {
              if (*v122 != v93)
              {
                objc_enumerationMutation(v91);
              }

              [v80 unionSet:*(*(&v121 + 1) + 8 * jj)];
            }

            v92 = [v91 countByEnumeratingWithState:&v121 objects:v183 count:16];
          }

          while (v92);
        }

        [v80 minusSet:v97];
        v86 = [v80 allObjects];
      }

      v30 = v86;
    }

    else
    {
      v72 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v87 = [v109 allValues];
      v88 = [v87 countByEnumeratingWithState:&v129 objects:v185 count:16];
      if (v88)
      {
        v89 = *v130;
        do
        {
          for (kk = 0; kk != v88; ++kk)
          {
            if (*v130 != v89)
            {
              objc_enumerationMutation(v87);
            }

            [v72 unionSet:*(*(&v129 + 1) + 8 * kk)];
          }

          v88 = [v87 countByEnumeratingWithState:&v129 objects:v185 count:16];
        }

        while (v88);
      }

      [v72 minusSet:v97];
      v30 = [v72 allObjects];
    }

    [(VNSuggestionsLogger *)v104->_suggestionsLogger logFinalSuggestionsList:v30];
    v8 = 0;
    goto LABEL_19;
  }

  v98 = v34;
  v99 = v35;
  v8 = 0;
  v106 = *v169;
LABEL_30:
  v36 = 0;
  while (1)
  {
    if (*v169 != v106)
    {
      objc_enumerationMutation(v98);
    }

    v37 = *(*(&v168 + 1) + 8 * v36);
    v112 = objc_autoreleasePoolPush();
    v38 = [MEMORY[0x1E695DF90] dictionary];
    v159 = 0;
    v160 = &v159;
    v161 = 0x4812000000;
    v162 = __Block_byref_object_copy__214;
    v163 = __Block_byref_object_dispose__215;
    v164 = "";
    v166 = 0;
    v167 = 0;
    __p = 0;
    v155 = 0;
    v156 = &v155;
    v157 = 0x2020000000;
    v158 = 0;
    v154[0] = MEMORY[0x1E69E9820];
    v154[1] = 3221225472;
    v154[2] = __88__VNGreedyClusteringReadOnly_suggestionsForClusterIdsWithFlags_affinityThreshold_error___block_invoke_217;
    v154[3] = &unk_1E77B1148;
    v154[4] = v104;
    v154[5] = v37;
    v154[6] = &v155;
    v154[7] = &v159;
    v154[8] = v180;
    v153 = v8;
    v39 = VNExecuteBlock(v154, &v153);
    obja = v153;

    if (v39)
    {
      v110 = v156[3] == 5248;
      if (v156[3] == 5248)
      {
        v41 = v160[6];
        v42 = v160[7];
        while (v41 != v42)
        {
          LODWORD(v40) = *(v41 + 8);
          v43 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
          v44 = [MEMORY[0x1E696AD98] numberWithLongLong:*v41];
          [v38 setObject:v43 forKeyedSubscript:v44];

          v41 += 16;
        }

        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v45 = [v38 allKeys];
        v46 = [v45 countByEnumeratingWithState:&v149 objects:v190 count:16];
        if (v46)
        {
          v47 = *v150;
          do
          {
            for (mm = 0; mm != v46; ++mm)
            {
              if (*v150 != v47)
              {
                objc_enumerationMutation(v45);
              }

              v49 = *(*(&v149 + 1) + 8 * mm);
              v50 = [v109 objectForKeyedSubscript:v37];
              [v50 addObject:v49];

              v51 = [v109 allKeys];
              v52 = [v51 containsObject:v49];

              if (v52)
              {
                v53 = [v108 objectForKeyedSubscript:v37];
                [v53 addObject:v49];
              }
            }

            v46 = [v45 countByEnumeratingWithState:&v149 objects:v190 count:16];
          }

          while (v46);
        }

        v8 = obja;
      }

      else
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Internal error querying similar faces"];
        v8 = [VNError errorForInternalErrorWithLocalizedDescription:v45];
      }
    }

    else
    {
      v110 = 0;
      v8 = obja;
    }

    _Block_object_dispose(&v155, 8);
    _Block_object_dispose(&v159, 8);
    if (__p)
    {
      v166 = __p;
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v112);
    if (!v110)
    {
      break;
    }

    if (++v36 == v99)
    {
      v99 = [v98 countByEnumeratingWithState:&v168 objects:v191 count:16];
      if (v99)
      {
        goto LABEL_30;
      }

      break;
    }
  }

  if (!v8)
  {
    goto LABEL_59;
  }

LABEL_18:
  v30 = 0;
LABEL_19:

LABEL_20:
  _Block_object_dispose(v180, 8);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v181[0]);
  objc_autoreleasePoolPop(context);
  if (v8)
  {
    if (a5)
    {
      v31 = v8;
      v32 = 0;
      *a5 = v8;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = v30;
  }

  return v32;
}

- (id)convertUpdatePairsToClusters:(void *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (i = *a3; i != *(a3 + 1); i += 2)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:i[1]];
    v8 = [v5 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:*i];
      [v8 addObject:v9];
    }

    else
    {
      v10 = MEMORY[0x1E695DF70];
      v11 = [MEMORY[0x1E696AD98] numberWithLongLong:*i];
      v8 = [v10 arrayWithObject:v11];

      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:i[1]];
      [v5 setObject:v8 forKeyedSubscript:v9];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v5 allKeys];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        v17 = objc_alloc_init(VNCluster);
        v18 = [v5 objectForKeyedSubscript:v16];
        [(VNCluster *)v17 setObjects:v18];
        -[VNCluster setTotalObjectCount:](v17, "setTotalObjectCount:", [v18 count]);
        -[VNCluster setClusterId:](v17, "setClusterId:", [v16 intValue]);
        [v4 addObject:v17];
      }

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  return v4;
}

- (void)setGreedyClustererFaces_const:(shared_ptr<const vision::mod::FaceClustering>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->m_ClusteringImpl_const.__cntrl_;
  self->m_ClusteringImpl_const.__ptr_ = v4;
  self->m_ClusteringImpl_const.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (VNGreedyClusteringReadOnly)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = VNGreedyClusteringReadOnly;
  v7 = [(VNGreedyClusteringReadOnly *)&v25 init];
  v8 = v7;
  if (!v7)
  {
    if (a4)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a4 = v15 = 0;
      goto LABEL_28;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_28;
  }

  if (![(VNGreedyClusteringReadOnly *)v7 _parseOptions:v6 error:a4])
  {
    goto LABEL_10;
  }

  faceprintRevision = v8->_faceprintRevision;
  torsoprintRevision = v8->_torsoprintRevision;
  strlen([(NSString *)v8->_algorithmType UTF8String]);
  apple::vision::GreedyClusteringParamsWrapper::createClusteringHacksWrapper(&v23, faceprintRevision, torsoprintRevision);
  if (!v23)
  {
    if (a4)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Creating clustering parameters object failed for following face and torsoprint revisions: %lu and %lu and algorith type: %@", v8->_faceprintRevision, v8->_torsoprintRevision, v8->_algorithmType];
      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v16];
    }

    goto LABEL_25;
  }

  if ([(NSString *)v8->_algorithmType isEqualToString:@"VNClusteringAlgorithm_Greedy"])
  {
    v11 = [(NSString *)v8->_cacheFolderPath UTF8String];
    vectorMapReadOnlyFlag = v8->_vectorMapReadOnlyFlag;
    v13 = [(NSData *)v8->_state bytes];
    v14 = [(NSData *)v8->_state length];
    v29 = v11;
    v28 = vectorMapReadOnlyFlag;
    if (v11)
    {
      if (v14)
      {
        v27 = v13;
        *&v26 = v13 + v14;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const* const&,unsigned char const*,0>();
      }

      std::allocate_shared[abi:ne200100]<vision::mod::GreedyClustererFaces,std::allocator<vision::mod::GreedyClustererFaces>,char const*&,std::shared_ptr<apple::vision::GreedyClusteringParamsWrapper> const&,0>();
    }
  }

  else
  {
    if (![(NSString *)v8->_algorithmType isEqualToString:@"VNClusteringAlgorithm_GreedyWithTorso"])
    {
      goto LABEL_21;
    }

    v17 = [(NSString *)v8->_cacheFolderPath UTF8String];
    v18 = v8->_vectorMapReadOnlyFlag;
    v19 = [(NSData *)v8->_state bytes];
    v20 = [(NSData *)v8->_state length];
    v29 = v17;
    v28 = v18;
    if (v17)
    {
      if (v20)
      {
        v27 = v19;
        *&v26 = v19 + v20;
        std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const* const&,unsigned char const*,0>();
      }

      std::allocate_shared[abi:ne200100]<vision::mod::GreedyClustererFacesWithTorso,std::allocator<vision::mod::GreedyClustererFacesWithTorso>,char const*&,std::shared_ptr<apple::vision::GreedyClusteringParamsWrapper> const&,0>();
    }
  }

  cntrl = v8->m_ClusteringImpl_const.__cntrl_;
  v8->m_ClusteringImpl_const = 0u;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

LABEL_21:
  if (v8->m_ClusteringImpl_const.__ptr_)
  {
    [(VNGreedyClusteringReadOnly *)v8 initializeLogging];
    v15 = v8;
    goto LABEL_26;
  }

  if (a4)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Error initializing cluster state"];
    *a4 = v15 = 0;
    goto LABEL_26;
  }

LABEL_25:
  v15 = 0;
LABEL_26:
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

LABEL_28:

  return v15;
}

- (void)initializeLogging
{
  clusteringLogger = self->_clusteringLogger;
  self->_clusteringLogger = 0;

  suggestionsLogger = self->_suggestionsLogger;
  self->_suggestionsLogger = 0;

  if (+[VNClusteringLogger isLogEnabled])
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_cacheFolderPath];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__VNGreedyClusteringReadOnly_initializeLogging__block_invoke;
    v19[3] = &unk_1E77B10D0;
    v19[4] = self;
    v6 = v5;
    v20 = v6;
    v21 = 1;
    v18 = 0;
    v7 = VNExecuteBlock(v19, &v18);
    v8 = v18;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      v10 = [v8 localizedDescription];
      v11 = [v10 UTF8String];
      VNValidatedLog(4, @"%s", v12, v13, v14, v15, v16, v17, v11);
    }
  }
}

uint64_t __47__VNGreedyClusteringReadOnly_initializeLogging__block_invoke(uint64_t a1)
{
  v2 = [[VNClusteringLogger alloc] initWithOptions:*(a1 + 40) logEnabled:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [[VNSuggestionsLogger alloc] initWithOptions:*(a1 + 40) logEnabled:*(a1 + 48)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  (*(**(*(a1 + 32) + 88) + 72))(*(*(a1 + 32) + 88), &v15);
  [*(*(a1 + 32) + 16) logClusterMapL0:&v15];
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  (*(**(*(a1 + 32) + 88) + 64))(*(*(a1 + 32) + 88), &v13);
  [*(*(a1 + 32) + 16) logClusterLookupMapL0:&v13];
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  (*(**(*(a1 + 32) + 88) + 112))(*(*(a1 + 32) + 88), &v11);
  [*(*(a1 + 32) + 16) logClusterMapL1:&v11];
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  (*(**(*(a1 + 32) + 88) + 80))(*(*(a1 + 32) + 88), &v9);
  [*(*(a1 + 32) + 16) logClusterLookupMapL1:&v9];
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v10[0]);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v12[0]);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v14[0]);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v16[0]);
  return 1;
}

- (BOOL)_parseOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [VNValidationUtilities requiredObjectOfClass:v7 forKey:@"VNClusterOptionCacheFolderPath" inOptions:v6 error:a4];
  if (v9)
  {
    v26 = 0;
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v10 fileExistsAtPath:v9 isDirectory:&v26];

    if (v11 && (v26 & 1) != 0)
    {
      v12 = [VNValidationUtilities requiredObjectOfClass:v8 forKey:@"VNClusterOptionFaceprintRevision" inOptions:v6 error:a4];
      if (v12)
      {
        v13 = [VNValidationUtilities requiredObjectOfClass:v8 forKey:@"VNClusterOptionTorsoprintRevision" inOptions:v6 error:a4];
        if (!v13)
        {
          v21 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v14 = [VNValidationUtilities requiredObjectOfClass:v7 forKey:@"VNClusterOptionClusteringAlgorithm" inOptions:v6 error:a4];
        v15 = v14;
        if (!v14)
        {
          goto LABEL_23;
        }

        if ([v14 isEqualToString:@"VNClusteringAlgorithm_Greedy"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"VNClusteringAlgorithm_GreedyWithTorso"))
        {
          v24 = v15;
          v25 = 0;
          v16 = [VNValidationUtilities getOptionalObject:&v25 ofClass:objc_opt_class() forKey:@"VNClusterOptionRestoreClusteringState" inOptions:v6 error:a4];
          v17 = v25;
          v18 = v25;
          if (v16)
          {
            obj = v17;
            v19 = v18;
            if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v20 = [VNValidationUtilities requiredObjectOfClass:v8 forKey:@"VNClusterOptionVectorMapReadOnlyFlag" inOptions:v6 error:a4];
              v21 = v20 != 0;
              v15 = v24;
              if (v20)
              {
                self->_faceprintRevision = [v12 unsignedIntegerValue];
                self->_torsoprintRevision = [v13 unsignedIntegerValue];
                objc_storeStrong(&self->_algorithmType, v24);
                objc_storeStrong(&self->_cacheFolderPath, v9);
                objc_storeStrong(&self->_state, obj);
                self->_vectorMapReadOnlyFlag = [v20 BOOLValue];
              }

              v18 = v19;
              goto LABEL_26;
            }

            v21 = 0;
            v18 = v19;
          }

          else
          {
            v21 = 0;
          }

          v15 = v24;
LABEL_26:

          goto LABEL_27;
        }

        if (a4)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"VNClusterOptionClusteringAlgorithm must be set to either VNClusteringAlgorithm_Greedy or VNClusteringAlgorithm_GreedyWithTorso"];
          *a4 = v21 = 0;
        }

        else
        {
LABEL_23:
          v21 = 0;
        }

LABEL_27:

        goto LABEL_28;
      }

      v21 = 0;
LABEL_29:

      goto LABEL_30;
    }

    if (a4)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid cache file path: %@", v9];
      [VNError errorForInternalErrorWithLocalizedDescription:v12];
      *a4 = v21 = 0;
      goto LABEL_29;
    }
  }

  v21 = 0;
LABEL_30:

  return v21;
}

+ (id)clustererModelFileNamesFromState:(id)a3 storedInPath:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cache file path is a required parameter"];
    v20 = [VNError errorForInternalErrorWithLocalizedDescription:v19];
    goto LABEL_12;
  }

  v40 = 0;
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8 isDirectory:&v40];

  if (!v10 || (v40 & 1) == 0)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid cache file path: %@", v8];
    v20 = [VNError errorForInternalErrorWithLocalizedDescription:v19];
LABEL_12:
    *a5 = v20;

    goto LABEL_13;
  }

  if (v7)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
    v11 = [v7 bytes];
    v12 = [v7 length];
    if (v11 && v12)
    {
      v42 = v11;
      v41 = v11 + v12;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const* const&,unsigned char const*,0>();
    }

    VNValidatedLog(4, @"Invalid parameter passed to extract Clusterer model file names\n", v13, v14, v15, v16, v17, v18, v30);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
    v22 = [v7 bytes];
    v23 = [v7 length];
    if (v22 && v23)
    {
      v42 = v22;
      v41 = v22 + v23;
      std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned char const* const&,unsigned char const*,0>();
    }

    VNValidatedLog(4, @"Invalid parameter passed to extract Clusterer model file names\n", v24, v25, v26, v27, v28, v29, v31);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (a5)
    {
      *a5 = VNErrorForCVMLStatus(0x147C);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v37);
    }
  }

  else if (a5)
  {
    *a5 = [VNError errorForInternalErrorWithLocalizedDescription:@"RestoreClusteringState is a required parameter"];
  }

LABEL_13:

  return 0;
}

+ (id)getRepresentativenessForFaces:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_255];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v38 = 0;
    v39 = &v38;
    v40 = 0x4812000000;
    v41 = __Block_byref_object_copy__256;
    v42 = __Block_byref_object_dispose__257;
    v43 = "";
    v45 = 0;
    v46 = 0;
    __p = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __66__VNGreedyClusteringReadOnly_getRepresentativenessForFaces_error___block_invoke_259;
    v34[3] = &unk_1E77B5338;
    v9 = v8;
    v35 = v9;
    v10 = v7;
    v36 = v10;
    v37 = &v38;
    if (VNExecuteBlock(v34, a4))
    {
      v33 = v5;
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = v39[6];
      if (v12 != v39[7])
      {
        v13 = 0;
        do
        {
          v14 = [v10 objectAtIndexedSubscript:v13];
          v15 = [v14 faceId];
          VNValidatedLog(1, @"  face[%lu].representativeness = %.3f", v16, v17, v18, v19, v20, v21, v15);
          LODWORD(v22) = *v12;
          v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "faceId")}];
          [v11 setObject:v23 forKeyedSubscript:v24];

          ++v12;
          ++v13;
        }

        while (v12 != v39[7]);
      }

      v25 = [v9 faceId];
      VNValidatedLog(1, @"  best rep = %lu", v26, v27, v28, v29, v30, v31, v25);
      v5 = v33;
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v38, 8);
    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  return v11;
}

uint64_t __66__VNGreedyClusteringReadOnly_getRepresentativenessForFaces_error___block_invoke_259(uint64_t a1)
{
  v20 = 0;
  v15 = 0uLL;
  v16 = 0;
  v2 = [*(a1 + 32) faceprint];
  v3 = [v2 lengthInBytes];
  vision::mod::ImageDescriptorBufferAbstract::ImageDescriptorBufferAbstract(v17, &v15, &v20, v3, 0, 0);
  v18 = 1;
  v19 = 0;
  v17[0] = &unk_1F19764A8;
  v17[12] = (v3 >> 2);

  v4 = *(a1 + 40);
  v18 = 2;
  [VNGreedyClusteringReadOnly addFaceObservations:v4 toFaceDescriptorBuffer:v17];
  v5 = (*(v17[0] + 15))(v17, 1, 0);
  (*(v17[0] + 10))(&v15, v17, v5);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v7 = *(&v15 + 1);
  v6 = v15;
  v8 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__identity,std::__less<void,void>>(v15, *(&v15 + 1));
  v9 = *v8;
  v11 = *v10 - *v8;
  if (v11 < 0.00000011921)
  {
    v11 = 1.0;
  }

  while (v6 != v7)
  {
    *v6 = 1.0 - ((*v6 - v9) / v11);
    ++v6;
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = v12[6];
  if (v13)
  {
    v12[7] = v13;
    operator delete(v13);
    v12[6] = 0;
    v12[7] = 0;
    v12[8] = 0;
  }

  *(v12 + 3) = v15;
  v12[8] = v16;
  v17[0] = &unk_1F19764A8;
  free(v19);
  vision::mod::ImageDescriptorBufferAbstract::~ImageDescriptorBufferAbstract(v17);
  return 1;
}

BOOL __66__VNGreedyClusteringReadOnly_getRepresentativenessForFaces_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 faceprint];
  v3 = v2 != 0;

  return v3;
}

+ (void)addPersonData:(id)a3 withGroupingIdentifiers:(id)a4 toFaceDescriptorBuffer:(void *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectAtIndexedSubscript:0];
  v10 = [v9 lengthInBytes];

  v11 = [v7 count];
  vision::mod::ImageDescriptorBufferJoint::resizeForDescriptorsCount(a5, v11, v10 > 3);
  std::vector<long long>::resize(a5 + 1, v11);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__VNGreedyClusteringReadOnly_addPersonData_withGroupingIdentifiers_toFaceDescriptorBuffer___block_invoke;
  v13[3] = &unk_1E77B1120;
  v15 = a5;
  v16 = v10;
  v12 = v8;
  v14 = v12;
  [v7 enumerateObjectsUsingBlock:v13];
}

void __91__VNGreedyClusteringReadOnly_addPersonData_withGroupingIdentifiers_toFaceDescriptorBuffer___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 descriptorData];
  DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(*(a1 + 40), a3);
  memcpy(DataForKthDescriptor, [v6 bytes], *(a1 + 48));
  vision::mod::ImageDescriptorBufferJoint::setAvailableFlagsForKthDescriptor(*(a1 + 40), a3, [v5 isValidFaceprint], objc_msgSend(v5, "isValidTorsoprint"));
  v11 = 0uLL;
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v8 getUUIDBytes:&v11];

  v10 = v11;
  *&v9 = vision::mod::ImageDescriptorBufferJoint::setSideInfoForKthDescriptor(*(a1 + 40), a3, &v10).n128_u64[0];
  vision::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(*(a1 + 40), a3, [v5 personId]);
}

+ (void)addFaceObservations:(id)a3 withGroupingIdentifiers:(id)a4 toFaceDescriptorBuffer:(void *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectAtIndexedSubscript:0];
  v10 = [v9 faceTorsoprint];
  v11 = [v10 lengthInBytes];

  v12 = [v7 count];
  vision::mod::ImageDescriptorBufferJoint::resizeForDescriptorsCount(a5, v12, v11 > 3);
  std::vector<long long>::resize(a5 + 1, v12);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __97__VNGreedyClusteringReadOnly_addFaceObservations_withGroupingIdentifiers_toFaceDescriptorBuffer___block_invoke;
  v14[3] = &unk_1E77B10F8;
  v16 = a5;
  v17 = v11;
  v13 = v8;
  v15 = v13;
  [v7 enumerateObjectsUsingBlock:v14];
}

void __97__VNGreedyClusteringReadOnly_addFaceObservations_withGroupingIdentifiers_toFaceDescriptorBuffer___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 faceTorsoprint];
  v7 = [v6 descriptorData];

  DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(*(a1 + 40), a3);
  memcpy(DataForKthDescriptor, [v7 bytes], *(a1 + 48));
  v9 = *(a1 + 40);
  v10 = [v5 faceTorsoprint];
  v11 = [v10 isValidFaceprint];
  v12 = [v5 faceTorsoprint];
  vision::mod::ImageDescriptorBufferJoint::setAvailableFlagsForKthDescriptor(v9, a3, v11, [v12 isValidTorsoprint]);

  v16 = 0uLL;
  v13 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v13 getUUIDBytes:&v16];

  v15 = v16;
  *&v14 = vision::mod::ImageDescriptorBufferJoint::setSideInfoForKthDescriptor(*(a1 + 40), a3, &v15).n128_u64[0];
  vision::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(*(a1 + 40), a3, [v5 faceId]);
}

+ (void)addFaceObservations:(id)a3 toFaceDescriptorBuffer:(void *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v5 = [v18 objectAtIndex:0];
  v6 = [v5 faceprint];
  v7 = [v6 lengthInBytes];

  vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(a4, [v18 count], v7 > 3);
  std::vector<long long>::resize(a4 + 1, [v18 count]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v18;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    LODWORD(v10) = 0;
    v11 = *v20;
    do
    {
      v12 = 0;
      v10 = v10;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [v13 faceprint];
        v15 = [v14 descriptorData];

        DataForKthDescriptor = vision::mod::ImageDescriptorBufferAbstract::getDataForKthDescriptor(a4, v10);
        v17 = v15;
        memcpy(DataForKthDescriptor, [v15 bytes], v7);
        vision::mod::ImageDescriptorBufferAbstract::setDescriptorIdForKthDescriptor(a4, v10, [v13 faceId]);

        ++v12;
        ++v10;
      }

      while (v9 != v12);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

+ (id)nonGroupedGroupID
{
  if (+[VNGreedyClusteringReadOnly nonGroupedGroupID]::onceToken != -1)
  {
    dispatch_once(&+[VNGreedyClusteringReadOnly nonGroupedGroupID]::onceToken, &__block_literal_global_185);
  }

  v3 = +[VNGreedyClusteringReadOnly nonGroupedGroupID]::uuid;

  return v3;
}

void __47__VNGreedyClusteringReadOnly_nonGroupedGroupID__block_invoke()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  v2[1] = 0;
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v2];
  v1 = +[VNGreedyClusteringReadOnly nonGroupedGroupID]::uuid;
  +[VNGreedyClusteringReadOnly nonGroupedGroupID]::uuid = v0;
}

@end