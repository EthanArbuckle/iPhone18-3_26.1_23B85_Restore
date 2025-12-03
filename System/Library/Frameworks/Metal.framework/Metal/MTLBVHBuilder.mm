@interface MTLBVHBuilder
+ (BOOL)useTemporalSplitsForDescriptor:(id)descriptor;
- (MTLBVHBuilder)init;
- (void)getCapacitiesForDescriptor:(id)descriptor fragmentCapacity:(unint64_t *)capacity fragmentIndexCapacity:(unint64_t *)indexCapacity innerNodeCapacity:(unint64_t *)nodeCapacity leafNodeCapacity:(unint64_t *)leafNodeCapacity primitiveDataCapacity:(unint64_t *)dataCapacity;
@end

@implementation MTLBVHBuilder

- (MTLBVHBuilder)init
{
  v3.receiver = self;
  v3.super_class = MTLBVHBuilder;
  return [(MTLBVHBuilder *)&v3 init];
}

+ (BOOL)useTemporalSplitsForDescriptor:(id)descriptor
{
  useTemporalSplits = [descriptor useTemporalSplits];
  if (useTemporalSplits)
  {
    LOBYTE(useTemporalSplits) = [descriptor primitiveKeyframeCount] > 1;
  }

  return useTemporalSplits;
}

- (void)getCapacitiesForDescriptor:(id)descriptor fragmentCapacity:(unint64_t *)capacity fragmentIndexCapacity:(unint64_t *)indexCapacity innerNodeCapacity:(unint64_t *)nodeCapacity leafNodeCapacity:(unint64_t *)leafNodeCapacity primitiveDataCapacity:(unint64_t *)dataCapacity
{
  fragmentCount = [descriptor fragmentCount];
  primitiveDataSize = [descriptor primitiveDataSize];
  if (dataCapacity)
  {
    v16 = primitiveDataSize;
    v17 = ((8 * [objc_msgSend(descriptor "geometryDescriptors")] + 255) & 0xFFFFFFFFFFFFFF00) + primitiveDataSize;
    if (!v16)
    {
      v17 = 0;
    }

    *dataCapacity = v17;
  }

  v18 = 1.0;
  if ([objc_msgSend(descriptor "geometryDescriptors")] && !objc_msgSend(objc_msgSend(objc_msgSend(descriptor, "geometryDescriptors"), "objectAtIndexedSubscript:", 0), "primitiveType") && objc_msgSend(descriptor, "splitHeuristic") == 3)
  {
    [descriptor splitCapacity];
    v18 = v19;
  }

  v20 = (v18 * fragmentCount);
  v21 = v20;
  if ([MTLBVHBuilder useTemporalSplitsForDescriptor:descriptor])
  {
    v21 = ([descriptor primitiveKeyframeCount] - 1) * v20;
    v20 = v21 * (1 << [descriptor maxSubKeyframeTemporalSplits]);
  }

  if (capacity)
  {
    *capacity = v21;
  }

  if (indexCapacity)
  {
    *indexCapacity = v20;
  }

  minPrimitivesPerLeaf = [descriptor minPrimitivesPerLeaf];
  if ((minPrimitivesPerLeaf + v20 - 1) / minPrimitivesPerLeaf <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (minPrimitivesPerLeaf + v20 - 1) / minPrimitivesPerLeaf;
  }

  if (leafNodeCapacity)
  {
    *leafNodeCapacity = v23;
  }

  if (v20)
  {
    branchingFactor = [descriptor branchingFactor];
    if ([descriptor maxPrimitivesPerInnerNode])
    {
      minPrimitivesPerInnerNode = [descriptor minPrimitivesPerInnerNode];
      v26 = ((minPrimitivesPerInnerNode + v20 - 1) / minPrimitivesPerInnerNode * branchingFactor + 2 * branchingFactor - 5) / (2 * branchingFactor - 2) + (minPrimitivesPerInnerNode + v20 - 1) / minPrimitivesPerInnerNode;
      if (!nodeCapacity)
      {
        return;
      }
    }

    else
    {
      v26 = (2 * branchingFactor - 2 + branchingFactor * v23 - 3) / (2 * branchingFactor - 2);
      if (!nodeCapacity)
      {
        return;
      }
    }
  }

  else
  {
    v26 = 0;
    if (!nodeCapacity)
    {
      return;
    }
  }

  *nodeCapacity = v26;
}

@end