@interface VNMomentProcessor
+ (id)sortImageDescriptorsChronologically:(id)a3;
- (VNMomentProcessor)initWithOptions:(id)a3 error:(id *)a4;
- (id)computeClusteringForClusteringTree:(id)a3 intoKGroups:(int)a4 error:(id *)a5;
- (id)computeClusteringForClusteringTree:(id)a3 usingThreshold:(float)a4 error:(id *)a5;
- (id)computeClusteringOfImageDescriptors:(id)a3 intoKGroups:(int)a4 error:(id *)a5;
- (id)computeClusteringTreeForImageDescriptors:(id)a3 assumeDescriptorsAreSorted:(BOOL)a4 error:(id *)a5;
- (id)computeClusteringTreeForImageDescriptors:(id)a3 error:(id *)a4;
- (id)computeNaturalClusteringForClusteringTree:(id)a3 error:(id *)a4;
- (id)computeNaturalClusteringOfImageDescriptors:(id)a3 error:(id *)a4;
- (id)convertClusterNodesListToDescriptorsList:(vector<MPClusteringTreeNode *);
- (id)getKey:(id)a3 fromDictionary:(id)a4 withDefault:(id)a5;
@end

@implementation VNMomentProcessor

- (id)getKey:(id)a3 fromDictionary:(id)a4 withDefault:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:v7];
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  return v11;
}

- (id)computeNaturalClusteringForClusteringTree:(id)a3 error:(id *)a4
{
  v6 = [a3 node];
  v7 = [(VNMomentProcessor *)self context];
  [VNMPImageGrouping computeNaturalClusteringForHierarchicalTree:v6 context:v7];

  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<MPClusteringTreeNode *>::__init_with_size[abi:ne200100]<MPClusteringTreeNode **,MPClusteringTreeNode **>(&__p, v14, v15, (v15 - v14) >> 3);
  v8 = [(VNMomentProcessor *)self convertClusterNodesListToDescriptorsList:&__p];
  v9 = [(VNMomentProcessor *)self performClustersPostprocessing:v8 error:a4];

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v9;
}

- (id)computeClusteringForClusteringTree:(id)a3 usingThreshold:(float)a4 error:(id *)a5
{
  v8 = [a3 node];
  v9 = [(VNMomentProcessor *)self context];
  *&v10 = a4;
  [VNMPImageGrouping computeClusteringUsingDistanceThreshold:v8 forHierarchicalTree:v9 context:v10];

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MPClusteringTreeNode *>::__init_with_size[abi:ne200100]<MPClusteringTreeNode **,MPClusteringTreeNode **>(&__p, v17, v18, (v18 - v17) >> 3);
  v11 = [(VNMomentProcessor *)self convertClusterNodesListToDescriptorsList:&__p];
  v12 = [(VNMomentProcessor *)self performClustersPostprocessing:v11 error:a5];

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v12;
}

- (id)computeClusteringForClusteringTree:(id)a3 intoKGroups:(int)a4 error:(id *)a5
{
  v6 = *&a4;
  v8 = [a3 node];
  v9 = [(VNMomentProcessor *)self context];
  [VNMPImageGrouping computeClusteringIntoKGroups:v6 forHierarchicalTree:v8 context:v9];

  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<MPClusteringTreeNode *>::__init_with_size[abi:ne200100]<MPClusteringTreeNode **,MPClusteringTreeNode **>(&__p, v16, v17, (v17 - v16) >> 3);
  v10 = [(VNMomentProcessor *)self convertClusterNodesListToDescriptorsList:&__p];
  v11 = [(VNMomentProcessor *)self performClustersPostprocessing:v10 error:a5];

  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v11;
}

- (id)convertClusterNodesListToDescriptorsList:(vector<MPClusteringTreeNode *)
{
  v4 = [MEMORY[0x1E695DF70] array];
  var0 = a3->var0;
  var1 = a3->var1;
  while (var0 != var1)
  {
    v7 = *var0;
    if (*var0)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      MPClusteringTreeNode::getLeafNodes(&v13, v7);
      v9 = v13.var0;
      v10 = *&v13.var1;
      for (i = v13.var0; i != v10; ++i)
      {
        [v8 addObject:**i];
      }

      [v4 addObject:v8];
      if (v9)
      {
        operator delete(v9);
      }

      var1 = a3->var1;
    }

    ++var0;
  }

  return v4;
}

- (id)computeClusteringTreeForImageDescriptors:(id)a3 assumeDescriptorsAreSorted:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  if (!a5)
  {
    __assert_rtn("[VNMomentProcessor computeClusteringTreeForImageDescriptors:assumeDescriptorsAreSorted:error:]", "MomentProcessor.mm", 130, "error != nil");
  }

  v9 = v8;
  v10 = v9;
  if (!a4)
  {
    +[VNMPUtils getHostTime];
    v12 = v11;
    v13 = [VNMomentProcessor sortImageDescriptorsChronologically:v9];

    +[VNMPUtils getHostTime];
    v10 = v13;
    syslog(5, "Sorting of the image list took: %3.3f ms", (v14 - v12) * 1000.0);
  }

  +[VNMPUtils getHostTime];
  v16 = v15;
  v22 = 0;
  v17 = [(VNMomentProcessor *)self context];
  [VNMPImageGrouping computeHierarchicalClusteringOfImageDescriptors:v10 results:&v22 context:v17];

  +[VNMPUtils getHostTime];
  syslog(5, "Computation of the hierarchical clustering took: %3.3f ms", (v18 - v16) * 1000.0);
  v19 = [VNMPClusteringTreeNodeWrapper alloc];
  v20 = [(VNMPClusteringTreeNodeWrapper *)v19 initWithNode:v22 freeNodeOnDealloc:1];

  return v20;
}

- (id)computeClusteringTreeForImageDescriptors:(id)a3 error:(id *)a4
{
  v4 = [(VNMomentProcessor *)self computeClusteringTreeForImageDescriptors:a3 assumeDescriptorsAreSorted:0 error:a4];

  return v4;
}

- (id)computeNaturalClusteringOfImageDescriptors:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    __assert_rtn("[VNMomentProcessor computeNaturalClusteringOfImageDescriptors:error:]", "MomentProcessor.mm", 112, "error != nil");
  }

  v7 = [(VNMomentProcessor *)self computeClusteringTreeForImageDescriptors:v6 error:a4];
  if (*a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(VNMomentProcessor *)self computeNaturalClusteringForClusteringTree:v7 error:a4];
  }

  return v8;
}

- (id)computeClusteringOfImageDescriptors:(id)a3 intoKGroups:(int)a4 error:(id *)a5
{
  v6 = *&a4;
  v8 = a3;
  if (!a5)
  {
    __assert_rtn("[VNMomentProcessor computeClusteringOfImageDescriptors:intoKGroups:error:]", "MomentProcessor.mm", 103, "error != nil");
  }

  v9 = [(VNMomentProcessor *)self computeClusteringTreeForImageDescriptors:v8 error:a5];
  if (*a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(VNMomentProcessor *)self computeClusteringForClusteringTree:v9 intoKGroups:v6 error:a5];
  }

  return v10;
}

- (VNMomentProcessor)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    __assert_rtn("[VNMomentProcessor initWithOptions:error:]", "MomentProcessor.mm", 35, "error != nil");
  }

  v48.receiver = self;
  v48.super_class = VNMomentProcessor;
  v7 = [(VNMomentProcessor *)&v48 init];
  if (v7)
  {
    *a4 = 0;
    v8 = objc_opt_new();
    [(VNMomentProcessor *)v7 setContext:v8];

    v9 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11B0 fromDictionary:v6 withDefault:&unk_1F19C11B0];
    v10 = [v9 integerValue];
    v11 = [(VNMomentProcessor *)v7 context];
    [v11 setDebugMode:v10];

    v12 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11C8 fromDictionary:v6 withDefault:&unk_1F19C11B0];
    v13 = [v12 integerValue];
    v14 = [(VNMomentProcessor *)v7 context];
    [v14 setTimerMode:v13];

    v15 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11E0 fromDictionary:v6 withDefault:&unk_1F19C1F78];
    v16 = [(VNMomentProcessor *)v7 context];
    [v16 setQualityCriteriaList:v15];

    v17 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1210 fromDictionary:v6 withDefault:&unk_1F19C11B0];
    v18 = [v17 integerValue];
    v19 = [(VNMomentProcessor *)v7 context];
    [v19 setClusterSplitDistanceType:v18];

    v20 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11F8 fromDictionary:v6 withDefault:MEMORY[0x1E695E118]];
    v21 = [v20 BOOLValue];
    v22 = [(VNMomentProcessor *)v7 context];
    [v22 setUseTimestampAdjustedDistances:v21];

    v23 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1228 fromDictionary:v6 withDefault:MEMORY[0x1E695E118]];
    v24 = [v23 BOOLValue];
    v25 = [(VNMomentProcessor *)v7 context];
    [v25 setPerformClustersPostprocessing:v24];

    v26 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1240 fromDictionary:v6 withDefault:MEMORY[0x1E695E110]];
    v27 = [v26 BOOLValue];
    v28 = [(VNMomentProcessor *)v7 context];
    [v28 setPerformSceneClassification:v27];

    v29 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1258 fromDictionary:v6 withDefault:&unk_1F19C24D8];
    [v29 floatValue];
    v31 = v30;
    v32 = [(VNMomentProcessor *)v7 context];
    LODWORD(v33) = v31;
    [v32 setRoiAreaThreshold:v33];

    v34 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1270 fromDictionary:v6 withDefault:&unk_1F19C24E8];
    [v34 floatValue];
    v36 = v35;
    v37 = [(VNMomentProcessor *)v7 context];
    LODWORD(v38) = v36;
    [v37 setInliersRatioThreshold:v38];

    v39 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1288 fromDictionary:v6 withDefault:&unk_1F19C12A0];
    v40 = [v39 intValue];
    v41 = [(VNMomentProcessor *)v7 context];
    [v41 setNumberOfKeypointsToConsider:v40];

    v42 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C12B8 fromDictionary:v6 withDefault:&unk_1F19C24F8];
    [v42 floatValue];
    v44 = v43;
    v45 = [(VNMomentProcessor *)v7 context];
    LODWORD(v46) = v44;
    [v45 setNaturalClusteringDistanceThreshold:v46];
  }

  return v7;
}

+ (id)sortImageDescriptorsChronologically:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global_6511];

  return v3;
}

uint64_t __57__VNMomentProcessor_sortImageDescriptorsChronologically___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 exifTimestamp];
  v7 = [v5 exifTimestamp];
  v8 = v6 - v7;
  if (v6 == v7)
  {
    v9 = [v4 descriptorId];
    v8 = v9 - [v5 descriptorId];
  }

  if (v8 < 1)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end