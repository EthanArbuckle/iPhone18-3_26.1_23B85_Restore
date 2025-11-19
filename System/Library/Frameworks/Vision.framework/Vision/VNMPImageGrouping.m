@interface VNMPImageGrouping
+ (float)computeTimestampAdjustedDistanceForBaseDistance:(float)a3 andTimestampDiff:(int64_t)a4;
+ (float)computeTotalDistanceForDescriptorDistance:(float)result timestampDiff:(int64_t)a4 useTimestampAdjustment:(BOOL)a5;
+ (float)getDistanceForClusterNode:(MPClusteringTreeNode *)a3 splitDistanceType:(int)a4;
+ (int64_t)computeHierarchicalClusteringOfImageDescriptors:(id)a3 results:(MPClusteringTreeNode *)a4 context:(id)a5;
+ (vector<MPClusteringTreeNode)computeClusteringIntoKGroups:(id)a2 orUsingDistanceThreshold:(SEL)a3 forHierarchicalTree:(int)a4 context:(float)a5;
+ (vector<MPClusteringTreeNode)computeNaturalClusteringForHierarchicalTree:(id)a2 context:(SEL)a3;
@end

@implementation VNMPImageGrouping

+ (float)computeTotalDistanceForDescriptorDistance:(float)result timestampDiff:(int64_t)a4 useTimestampAdjustment:(BOOL)a5
{
  if (a5)
  {
    [a1 computeTimestampAdjustedDistanceForBaseDistance:a4 andTimestampDiff:?];
  }

  return result;
}

+ (float)computeTimestampAdjustedDistanceForBaseDistance:(float)a3 andTimestampDiff:(int64_t)a4
{
  if (a4 >= 10)
  {
    if (a4 >= 0x3C)
    {
      if (a4 <= 0x15180)
      {
        if (a4 <= 0x4650)
        {
          v4 = 0.12;
          if (a4 <= 0xE10)
          {
            v4 = 0.0;
          }
        }

        else
        {
          v4 = 0.24;
        }
      }

      else
      {
        v4 = 0.4;
      }
    }

    else
    {
      v4 = -0.03;
    }
  }

  else
  {
    v4 = -0.06;
  }

  v5 = v4 + a3;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  return fminf(v5, 1.0);
}

+ (vector<MPClusteringTreeNode)computeNaturalClusteringForHierarchicalTree:(id)a2 context:(SEL)a3
{
  v8 = a5;
  [v8 naturalClusteringDistanceThreshold];
  [a2 computeClusteringIntoKGroups:0x7FFFFFFFLL orUsingDistanceThreshold:a4 forHierarchicalTree:v8 context:?];

  return result;
}

+ (vector<MPClusteringTreeNode)computeClusteringIntoKGroups:(id)a2 orUsingDistanceThreshold:(SEL)a3 forHierarchicalTree:(int)a4 context:(float)a5
{
  v9 = a7;
  [a2 getDistanceForClusterNode:a6 splitDistanceType:{objc_msgSend(v9, "clusterSplitDistanceType", v9)}];
  std::__tree<std::__value_type<float,MPClusteringTreeNode *>,std::__map_value_compare<float,std::__value_type<float,MPClusteringTreeNode *>,std::less<float>,true>,std::allocator<std::__value_type<float,MPClusteringTreeNode *>>>::__emplace_multi<std::pair<float,MPClusteringTreeNode *>>();
}

+ (float)getDistanceForClusterNode:(MPClusteringTreeNode *)a3 splitDistanceType:(int)a4
{
  if (!a4)
  {
    return a3->var2;
  }

  if (a4 == 1)
  {
    return a3->var3;
  }

  return result;
}

+ (int64_t)computeHierarchicalClusteringOfImageDescriptors:(id)a3 results:(MPClusteringTreeNode *)a4 context:(id)a5
{
  v6 = a3;
  v48 = a5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v53[0] = 0;
  v53[1] = 0;
  v51 = 0;
  v52 = v53;
  v49 = &v50;
  v50 = 0;
  while (v7 < [v6 count])
  {
    v10 = [v6 objectAtIndexedSubscript:v7];
    v11 = malloc_type_malloc(0x38uLL, 0x10A00406DB9B953uLL);
    *v11 = v10;
    v11[3] = 0;
    v11[4] = 0;
    v11[5] = v11;
    v11[6] = v11;
    *(v11 + 4) = 0;
    *(v11 + 5) = 1;
    *(v11 + 2) = v7;
    *(v11 + 3) = 0;
    if (v9)
    {
      v12 = [v10 exifTimestamp];
      v13 = [v8 exifTimestamp];
      [*v11 distanceFromDescriptor:*v9];
      v15 = v14;
      v16 = [v48 useTimestampAdjustedDistances];
      LODWORD(v17) = v15;
      [a1 computeTotalDistanceForDescriptorDistance:v12 - v13 timestampDiff:v16 useTimestampAdjustment:v17];
      operator new();
    }

    ++v7;

    v8 = v10;
    v9 = v11;
  }

  syslog(5, "starting clustering");
  if (v51)
  {
    v18 = 0;
    do
    {
      v19 = v49;
      v20 = *(v49 + 8);
      v21 = v49[5];
      v22 = v49[6];
      syslog(5, "merging leaf clusters [%d, %d] with score : %f", v21->var1, v22->var1, v20);
      v23 = v49[1];
      v24 = v49;
      if (v23)
      {
        do
        {
          v25 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v25 = v24[2];
          v26 = *v25 == v24;
          v24 = v25;
        }

        while (!v26);
      }

      v49 = v25;
      --v51;
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v50, v19);
      operator delete(v19);
      if (v53[0])
      {
        while (1)
        {
          var1 = v21->var1;
          v28 = v53;
          v29 = v53[0];
          do
          {
            v30 = v29;
            v31 = v28;
            v32 = *(v29 + 8);
            if (v32 >= var1)
            {
              v28 = v29;
            }

            v29 = v29[v32 < var1];
          }

          while (v29);
          if (v28 == v53)
          {
            break;
          }

          if (v32 < var1)
          {
            v30 = v31;
          }

          if (var1 < *(v30 + 8))
          {
            break;
          }

          v21 = v28[5];
        }

        while (1)
        {
          v33 = v22->var1;
          v34 = v53;
          v35 = v53[0];
          do
          {
            v36 = v35;
            v37 = v34;
            v38 = *(v35 + 8);
            if (v38 >= v33)
            {
              v34 = v35;
            }

            v35 = v35[v38 < v33];
          }

          while (v35);
          if (v34 == v53)
          {
            break;
          }

          if (v38 < v33)
          {
            v36 = v37;
          }

          if (v33 < *(v36 + 8))
          {
            break;
          }

          v22 = v34[5];
        }
      }

      else
      {
        var1 = v21->var1;
        v33 = v22->var1;
      }

      syslog(5, "found parent clusters to merge [%d, %d]", var1, v33);
      v39 = malloc_type_malloc(0x38uLL, 0x10A00406DB9B953uLL);
      v39->var1 = v7;
      [v21->var0 quality];
      v41 = v40;
      [v22->var0 quality];
      if (v41 <= v42)
      {
        p_var0 = &v22->var0;
      }

      else
      {
        p_var0 = &v21->var0;
      }

      v39->var0 = *p_var0;
      v39->var5 = v21;
      v39->var6 = v22;
      v39->var7 = v21->var7;
      v39->var8 = v22->var8;
      v39->var2 = v20;
      v44 = v22->var4 + v21->var4;
      v39->var4 = v44;
      v39->var3 = (((v21->var3 * (v21->var4 - 1)) + (v22->var3 * (v22->var4 - 1))) + v20) / (v44 - 1);
      std::__tree<std::__value_type<int,MPClusteringTreeNode *>,std::__map_value_compare<int,std::__value_type<int,MPClusteringTreeNode *>,std::less<int>,true>,std::allocator<std::__value_type<int,MPClusteringTreeNode *>>>::__emplace_unique_key_args<int,std::pair<int,MPClusteringTreeNode *>>(&v52, v21->var1);
      std::__tree<std::__value_type<int,MPClusteringTreeNode *>,std::__map_value_compare<int,std::__value_type<int,MPClusteringTreeNode *>,std::less<int>,true>,std::allocator<std::__value_type<int,MPClusteringTreeNode *>>>::__emplace_unique_key_args<int,std::pair<int,MPClusteringTreeNode *>>(&v52, v22->var1);
      ++v18;
      LODWORD(v7) = v7 + 1;
    }

    while (v51);
  }

  else
  {
    v39 = 0;
    v18 = 0;
  }

  syslog(5, "end clustering, iterations : %d", v18);
  *a4 = v39;

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v50);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v53[0]);

  return 2432;
}

@end