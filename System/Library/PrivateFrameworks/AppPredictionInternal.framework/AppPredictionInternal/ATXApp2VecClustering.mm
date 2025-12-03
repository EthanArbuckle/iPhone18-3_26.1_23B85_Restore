@interface ATXApp2VecClustering
+ (id)sharedInstance;
+ (void)resetSharedInstance;
- (ATXApp2VecClustering)init;
- (float)_getL2DistanceFrom:(const float *)from to:(float *)to;
- (id)_getClosestClusterCentroidForVector:(const float *)vector;
- (id)_mergeClusterCentroids:(id)centroids forBundleIds:(id)ids;
- (id)getClosestClusterCentroidForBundleId:(id)id;
- (id)getClusterCentroidsForBundleIds:(id)ids;
- (void)init;
@end

@implementation ATXApp2VecClustering

- (ATXApp2VecClustering)init
{
  v3 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXApp2VecClusters" ofType:@"dat" isDirectory:0];
  v4 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXApp2VecMapping" ofType:@"dat" isDirectory:0];
  v15.receiver = self;
  v15.super_class = ATXApp2VecClustering;
  v5 = [(ATXApp2VecClustering *)&v15 init];
  if (v5)
  {
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = [[ATXApp2VecMapping alloc] initWithPath:v3];
      clusterCentroids = v5->_clusterCentroids;
      v5->_clusterCentroids = v7;

      v9 = [[ATXApp2VecMapping alloc] initWithPath:v4];
      appEmbeddings = v5->_appEmbeddings;
      v5->_appEmbeddings = v9;

      vectorLength = [(ATXApp2VecMapping *)v5->_appEmbeddings vectorLength];
      v5->_vectorLength = vectorLength;
      if (vectorLength != [(ATXApp2VecMapping *)v5->_clusterCentroids vectorLength])
      {
        [ATXApp2VecClustering init];
      }
    }

    if (v5->_clusterCentroids && v5->_appEmbeddings)
    {
      v12 = 1;
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXApp2VecClustering *)v3 init];
      }

      v12 = 0;
    }

    v5->_loaded = v12;
  }

  return v5;
}

+ (id)sharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock_0);
  v2 = sharedInstance_0;
  if (!v2)
  {
    v2 = objc_opt_new();
    v3 = sharedInstance_0;
    sharedInstance_0 = v2;
  }

  pthread_mutex_unlock(&sharedInstanceLock_0);

  return v2;
}

+ (void)resetSharedInstance
{
  pthread_mutex_lock(&sharedInstanceLock_0);
  v2 = sharedInstance_0;
  sharedInstance_0 = 0;

  pthread_mutex_unlock(&sharedInstanceLock_0);
}

- (id)getClusterCentroidsForBundleIds:(id)ids
{
  v20 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = idsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ATXApp2VecClustering *)self getClosestClusterCentroidForBundleId:*(*(&v15 + 1) + 8 * i), v15];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(ATXApp2VecClustering *)self _mergeClusterCentroids:v5 forBundleIds:v6];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_mergeClusterCentroids:(id)centroids forBundleIds:(id)ids
{
  v79 = *MEMORY[0x277D85DE8];
  centroidsCopy = centroids;
  idsCopy = ids;
  selfCopy = self;
  if (self->_loaded)
  {
    v8 = objc_opt_new();
    if ([idsCopy count])
    {
      v9 = 0;
      do
      {
        v10 = [centroidsCopy objectAtIndexedSubscript:v9];
        v11 = [v8 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v13 = [centroidsCopy objectAtIndexedSubscript:v9];
          [v8 setObject:v12 forKeyedSubscript:v13];
        }

        v14 = [centroidsCopy objectAtIndexedSubscript:v9];
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = [idsCopy objectAtIndexedSubscript:v9];
        [v15 addObject:v16];

        ++v9;
      }

      while ([idsCopy count] > v9);
    }

    v58 = idsCopy;
    v17 = centroidsCopy;
    allKeys = [v8 allKeys];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v19 = [allKeys countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v74;
      v56 = v8;
      v57 = centroidsCopy;
      v54 = v21;
      v55 = allKeys;
      do
      {
        v22 = 0;
        v59 = v20;
        do
        {
          if (*v74 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v73 + 1) + 8 * v22);
          v24 = [v8 objectForKeyedSubscript:v23];
          if ([v24 count] == 1)
          {
            v61 = &v53;
            v62 = v22;
            appEmbeddings = selfCopy->_appEmbeddings;
            v26 = &v53 - ((4 * selfCopy->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
            v63 = v24;
            v27 = [v24 objectAtIndexedSubscript:0];
            v65 = v26;
            LODWORD(appEmbeddings) = [(ATXApp2VecMapping *)appEmbeddings getVectorForBundleId:v27 into:v26];

            if (appEmbeddings)
            {
              v28 = v23;
              v60 = &v53;
              v64 = &v53 - ((4 * selfCopy->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v68 = v8;
              v29 = [v68 countByEnumeratingWithState:&v69 objects:v77 count:16];
              v66 = v28;
              if (v29)
              {
                v30 = v29;
                v31 = *v70;
                v32 = 3.4028e38;
                v66 = v28;
                do
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v70 != v31)
                    {
                      objc_enumerationMutation(v68);
                    }

                    v34 = *(*(&v69 + 1) + 8 * i);
                    if (v34 != v28)
                    {
                      if ([*(*(&v69 + 1) + 8 * i) integerValue])
                      {
                        v35 = selfCopy;
                        clusterCentroids = selfCopy->_clusterCentroids;
                        v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v34, "integerValue") - 1}];
                        stringValue = [v37 stringValue];
                        v39 = clusterCentroids;
                        v40 = v64;
                        [(ATXApp2VecMapping *)v39 getVectorForBundleId:stringValue into:v64];

                        [(ATXApp2VecClustering *)v35 _getL2DistanceFrom:v65 to:v40];
                        if (v41 < v32)
                        {
                          v42 = v41;
                          v43 = v34;

                          v32 = v42;
                          v66 = v43;
                        }
                      }
                    }
                  }

                  v30 = [v68 countByEnumeratingWithState:&v69 objects:v77 count:16];
                }

                while (v30);
              }

              v44 = v68;

              [v44 removeObjectForKey:v28];
              v45 = v66;
              v46 = [v44 objectForKeyedSubscript:v66];
              v47 = v63;
              v48 = [v63 objectAtIndexedSubscript:0];
              [v46 addObject:v48];

              v49 = [v47 objectAtIndexedSubscript:0];
              v50 = [v58 indexOfObject:v49];

              v17 = v57;
              [v57 setObject:v45 atIndexedSubscript:v50];

              allKeys = v55;
              v8 = v56;
              v21 = v54;
              v20 = v59;
            }

            v22 = v62;
            v24 = v63;
          }

          ++v22;
        }

        while (v22 != v20);
        v20 = [allKeys countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v20);
    }

    centroidsCopy = v17;
    idsCopy = v58;
  }

  v51 = *MEMORY[0x277D85DE8];

  return centroidsCopy;
}

- (id)getClosestClusterCentroidForBundleId:(id)id
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_loaded)
  {
    v4 = v8 - ((4 * self->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
    if ([(ATXApp2VecMapping *)self->_appEmbeddings getVectorForBundleId:id into:v4])
    {
      v5 = [(ATXApp2VecClustering *)self _getClosestClusterCentroidForVector:v4];
    }

    else
    {
      v5 = &unk_283A56A38;
    }
  }

  else
  {
    v5 = &unk_283A56A38;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_getClosestClusterCentroidForVector:(const float *)vector
{
  v19[1] = *MEMORY[0x277D85DE8];
  appCount = [(ATXApp2VecMapping *)self->_clusterCentroids appCount];
  v19[0] = v19;
  v6 = v19 - ((4 * self->_vectorLength + 15) & 0xFFFFFFFFFFFFFFF0);
  if (appCount < 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = appCount;
    v8 = 0;
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      clusterCentroids = self->_clusterCentroids;
      v12 = [MEMORY[0x277CCABB0] numberWithInt:{v8, v19[0]}];
      stringValue = [v12 stringValue];
      [(ATXApp2VecMapping *)clusterCentroids getVectorForBundleId:stringValue into:v6];

      [(ATXApp2VecClustering *)self _getL2DistanceFrom:vector to:v6];
      if (v14 < v10)
      {
        v9 = v8 + 1;
      }

      v15 = v8 + 1;
      if (v14 < v10)
      {
        v10 = v14;
      }

      ++v8;
    }

    while (v7 != v15);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{v9, v19[0]}];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (float)_getL2DistanceFrom:(const float *)from to:(float *)to
{
  vectorLength_low = LODWORD(self->_vectorLength);
  catlas_saxpby_NEWLAPACK();
  v6 = LODWORD(self->_vectorLength);

  cblas_snrm2_NEWLAPACK();
  return result;
}

- (void)init
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Could not load centroids (from %@) and embeddings (from %@)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end