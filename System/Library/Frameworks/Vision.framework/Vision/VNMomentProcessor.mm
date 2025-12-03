@interface VNMomentProcessor
+ (id)sortImageDescriptorsChronologically:(id)chronologically;
- (VNMomentProcessor)initWithOptions:(id)options error:(id *)error;
- (id)computeClusteringForClusteringTree:(id)tree intoKGroups:(int)groups error:(id *)error;
- (id)computeClusteringForClusteringTree:(id)tree usingThreshold:(float)threshold error:(id *)error;
- (id)computeClusteringOfImageDescriptors:(id)descriptors intoKGroups:(int)groups error:(id *)error;
- (id)computeClusteringTreeForImageDescriptors:(id)descriptors assumeDescriptorsAreSorted:(BOOL)sorted error:(id *)error;
- (id)computeClusteringTreeForImageDescriptors:(id)descriptors error:(id *)error;
- (id)computeNaturalClusteringForClusteringTree:(id)tree error:(id *)error;
- (id)computeNaturalClusteringOfImageDescriptors:(id)descriptors error:(id *)error;
- (id)convertClusterNodesListToDescriptorsList:(vector<MPClusteringTreeNode *);
- (id)getKey:(id)key fromDictionary:(id)dictionary withDefault:(id)default;
@end

@implementation VNMomentProcessor

- (id)getKey:(id)key fromDictionary:(id)dictionary withDefault:(id)default
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  defaultCopy = default;
  if (dictionaryCopy)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
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
    v11 = defaultCopy;
  }

  v12 = v11;

  return v11;
}

- (id)computeNaturalClusteringForClusteringTree:(id)tree error:(id *)error
{
  node = [tree node];
  context = [(VNMomentProcessor *)self context];
  [VNMPImageGrouping computeNaturalClusteringForHierarchicalTree:node context:context];

  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<MPClusteringTreeNode *>::__init_with_size[abi:ne200100]<MPClusteringTreeNode **,MPClusteringTreeNode **>(&__p, v14, v15, (v15 - v14) >> 3);
  v8 = [(VNMomentProcessor *)self convertClusterNodesListToDescriptorsList:&__p];
  v9 = [(VNMomentProcessor *)self performClustersPostprocessing:v8 error:error];

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

- (id)computeClusteringForClusteringTree:(id)tree usingThreshold:(float)threshold error:(id *)error
{
  node = [tree node];
  context = [(VNMomentProcessor *)self context];
  *&v10 = threshold;
  [VNMPImageGrouping computeClusteringUsingDistanceThreshold:node forHierarchicalTree:context context:v10];

  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MPClusteringTreeNode *>::__init_with_size[abi:ne200100]<MPClusteringTreeNode **,MPClusteringTreeNode **>(&__p, v17, v18, (v18 - v17) >> 3);
  v11 = [(VNMomentProcessor *)self convertClusterNodesListToDescriptorsList:&__p];
  v12 = [(VNMomentProcessor *)self performClustersPostprocessing:v11 error:error];

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

- (id)computeClusteringForClusteringTree:(id)tree intoKGroups:(int)groups error:(id *)error
{
  v6 = *&groups;
  node = [tree node];
  context = [(VNMomentProcessor *)self context];
  [VNMPImageGrouping computeClusteringIntoKGroups:v6 forHierarchicalTree:node context:context];

  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<MPClusteringTreeNode *>::__init_with_size[abi:ne200100]<MPClusteringTreeNode **,MPClusteringTreeNode **>(&__p, v16, v17, (v17 - v16) >> 3);
  v10 = [(VNMomentProcessor *)self convertClusterNodesListToDescriptorsList:&__p];
  v11 = [(VNMomentProcessor *)self performClustersPostprocessing:v10 error:error];

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
  array = [MEMORY[0x1E695DF70] array];
  var0 = a3->var0;
  var1 = a3->var1;
  while (var0 != var1)
  {
    v7 = *var0;
    if (*var0)
    {
      array2 = [MEMORY[0x1E695DF70] array];
      MPClusteringTreeNode::getLeafNodes(&v13, v7);
      v9 = v13.var0;
      v10 = *&v13.var1;
      for (i = v13.var0; i != v10; ++i)
      {
        [array2 addObject:**i];
      }

      [array addObject:array2];
      if (v9)
      {
        operator delete(v9);
      }

      var1 = a3->var1;
    }

    ++var0;
  }

  return array;
}

- (id)computeClusteringTreeForImageDescriptors:(id)descriptors assumeDescriptorsAreSorted:(BOOL)sorted error:(id *)error
{
  descriptorsCopy = descriptors;
  if (!error)
  {
    __assert_rtn("[VNMomentProcessor computeClusteringTreeForImageDescriptors:assumeDescriptorsAreSorted:error:]", "MomentProcessor.mm", 130, "error != nil");
  }

  v9 = descriptorsCopy;
  v10 = v9;
  if (!sorted)
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
  context = [(VNMomentProcessor *)self context];
  [VNMPImageGrouping computeHierarchicalClusteringOfImageDescriptors:v10 results:&v22 context:context];

  +[VNMPUtils getHostTime];
  syslog(5, "Computation of the hierarchical clustering took: %3.3f ms", (v18 - v16) * 1000.0);
  v19 = [VNMPClusteringTreeNodeWrapper alloc];
  v20 = [(VNMPClusteringTreeNodeWrapper *)v19 initWithNode:v22 freeNodeOnDealloc:1];

  return v20;
}

- (id)computeClusteringTreeForImageDescriptors:(id)descriptors error:(id *)error
{
  v4 = [(VNMomentProcessor *)self computeClusteringTreeForImageDescriptors:descriptors assumeDescriptorsAreSorted:0 error:error];

  return v4;
}

- (id)computeNaturalClusteringOfImageDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  if (!error)
  {
    __assert_rtn("[VNMomentProcessor computeNaturalClusteringOfImageDescriptors:error:]", "MomentProcessor.mm", 112, "error != nil");
  }

  v7 = [(VNMomentProcessor *)self computeClusteringTreeForImageDescriptors:descriptorsCopy error:error];
  if (*error)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(VNMomentProcessor *)self computeNaturalClusteringForClusteringTree:v7 error:error];
  }

  return v8;
}

- (id)computeClusteringOfImageDescriptors:(id)descriptors intoKGroups:(int)groups error:(id *)error
{
  v6 = *&groups;
  descriptorsCopy = descriptors;
  if (!error)
  {
    __assert_rtn("[VNMomentProcessor computeClusteringOfImageDescriptors:intoKGroups:error:]", "MomentProcessor.mm", 103, "error != nil");
  }

  v9 = [(VNMomentProcessor *)self computeClusteringTreeForImageDescriptors:descriptorsCopy error:error];
  if (*error)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(VNMomentProcessor *)self computeClusteringForClusteringTree:v9 intoKGroups:v6 error:error];
  }

  return v10;
}

- (VNMomentProcessor)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  if (!error)
  {
    __assert_rtn("[VNMomentProcessor initWithOptions:error:]", "MomentProcessor.mm", 35, "error != nil");
  }

  v48.receiver = self;
  v48.super_class = VNMomentProcessor;
  v7 = [(VNMomentProcessor *)&v48 init];
  if (v7)
  {
    *error = 0;
    v8 = objc_opt_new();
    [(VNMomentProcessor *)v7 setContext:v8];

    v9 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11B0 fromDictionary:optionsCopy withDefault:&unk_1F19C11B0];
    integerValue = [v9 integerValue];
    context = [(VNMomentProcessor *)v7 context];
    [context setDebugMode:integerValue];

    v12 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11C8 fromDictionary:optionsCopy withDefault:&unk_1F19C11B0];
    integerValue2 = [v12 integerValue];
    context2 = [(VNMomentProcessor *)v7 context];
    [context2 setTimerMode:integerValue2];

    v15 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11E0 fromDictionary:optionsCopy withDefault:&unk_1F19C1F78];
    context3 = [(VNMomentProcessor *)v7 context];
    [context3 setQualityCriteriaList:v15];

    v17 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1210 fromDictionary:optionsCopy withDefault:&unk_1F19C11B0];
    integerValue3 = [v17 integerValue];
    context4 = [(VNMomentProcessor *)v7 context];
    [context4 setClusterSplitDistanceType:integerValue3];

    v20 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C11F8 fromDictionary:optionsCopy withDefault:MEMORY[0x1E695E118]];
    bOOLValue = [v20 BOOLValue];
    context5 = [(VNMomentProcessor *)v7 context];
    [context5 setUseTimestampAdjustedDistances:bOOLValue];

    v23 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1228 fromDictionary:optionsCopy withDefault:MEMORY[0x1E695E118]];
    bOOLValue2 = [v23 BOOLValue];
    context6 = [(VNMomentProcessor *)v7 context];
    [context6 setPerformClustersPostprocessing:bOOLValue2];

    v26 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1240 fromDictionary:optionsCopy withDefault:MEMORY[0x1E695E110]];
    bOOLValue3 = [v26 BOOLValue];
    context7 = [(VNMomentProcessor *)v7 context];
    [context7 setPerformSceneClassification:bOOLValue3];

    v29 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1258 fromDictionary:optionsCopy withDefault:&unk_1F19C24D8];
    [v29 floatValue];
    v31 = v30;
    context8 = [(VNMomentProcessor *)v7 context];
    LODWORD(v33) = v31;
    [context8 setRoiAreaThreshold:v33];

    v34 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1270 fromDictionary:optionsCopy withDefault:&unk_1F19C24E8];
    [v34 floatValue];
    v36 = v35;
    context9 = [(VNMomentProcessor *)v7 context];
    LODWORD(v38) = v36;
    [context9 setInliersRatioThreshold:v38];

    v39 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C1288 fromDictionary:optionsCopy withDefault:&unk_1F19C12A0];
    intValue = [v39 intValue];
    context10 = [(VNMomentProcessor *)v7 context];
    [context10 setNumberOfKeypointsToConsider:intValue];

    v42 = [(VNMomentProcessor *)v7 getKey:&unk_1F19C12B8 fromDictionary:optionsCopy withDefault:&unk_1F19C24F8];
    [v42 floatValue];
    v44 = v43;
    context11 = [(VNMomentProcessor *)v7 context];
    LODWORD(v46) = v44;
    [context11 setNaturalClusteringDistanceThreshold:v46];
  }

  return v7;
}

+ (id)sortImageDescriptorsChronologically:(id)chronologically
{
  v3 = [chronologically sortedArrayUsingComparator:&__block_literal_global_6511];

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