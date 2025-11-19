@interface MTLBVHBuilder
+ (BOOL)useTemporalSplitsForDescriptor:(id)a3;
- (MTLBVHBuilder)init;
- (void)getCapacitiesForDescriptor:(id)a3 fragmentCapacity:(unint64_t *)a4 fragmentIndexCapacity:(unint64_t *)a5 innerNodeCapacity:(unint64_t *)a6 leafNodeCapacity:(unint64_t *)a7 primitiveDataCapacity:(unint64_t *)a8;
@end

@implementation MTLBVHBuilder

- (MTLBVHBuilder)init
{
  v3.receiver = self;
  v3.super_class = MTLBVHBuilder;
  return [(MTLBVHBuilder *)&v3 init];
}

+ (BOOL)useTemporalSplitsForDescriptor:(id)a3
{
  v4 = [a3 useTemporalSplits];
  if (v4)
  {
    LOBYTE(v4) = [a3 primitiveKeyframeCount] > 1;
  }

  return v4;
}

- (void)getCapacitiesForDescriptor:(id)a3 fragmentCapacity:(unint64_t *)a4 fragmentIndexCapacity:(unint64_t *)a5 innerNodeCapacity:(unint64_t *)a6 leafNodeCapacity:(unint64_t *)a7 primitiveDataCapacity:(unint64_t *)a8
{
  v14 = [a3 fragmentCount];
  v15 = [a3 primitiveDataSize];
  if (a8)
  {
    v16 = v15;
    v17 = ((8 * [objc_msgSend(a3 "geometryDescriptors")] + 255) & 0xFFFFFFFFFFFFFF00) + v15;
    if (!v16)
    {
      v17 = 0;
    }

    *a8 = v17;
  }

  v18 = 1.0;
  if ([objc_msgSend(a3 "geometryDescriptors")] && !objc_msgSend(objc_msgSend(objc_msgSend(a3, "geometryDescriptors"), "objectAtIndexedSubscript:", 0), "primitiveType") && objc_msgSend(a3, "splitHeuristic") == 3)
  {
    [a3 splitCapacity];
    v18 = v19;
  }

  v20 = (v18 * v14);
  v21 = v20;
  if ([MTLBVHBuilder useTemporalSplitsForDescriptor:a3])
  {
    v21 = ([a3 primitiveKeyframeCount] - 1) * v20;
    v20 = v21 * (1 << [a3 maxSubKeyframeTemporalSplits]);
  }

  if (a4)
  {
    *a4 = v21;
  }

  if (a5)
  {
    *a5 = v20;
  }

  v22 = [a3 minPrimitivesPerLeaf];
  if ((v22 + v20 - 1) / v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v22 + v20 - 1) / v22;
  }

  if (a7)
  {
    *a7 = v23;
  }

  if (v20)
  {
    v24 = [a3 branchingFactor];
    if ([a3 maxPrimitivesPerInnerNode])
    {
      v25 = [a3 minPrimitivesPerInnerNode];
      v26 = ((v25 + v20 - 1) / v25 * v24 + 2 * v24 - 5) / (2 * v24 - 2) + (v25 + v20 - 1) / v25;
      if (!a6)
      {
        return;
      }
    }

    else
    {
      v26 = (2 * v24 - 2 + v24 * v23 - 3) / (2 * v24 - 2);
      if (!a6)
      {
        return;
      }
    }
  }

  else
  {
    v26 = 0;
    if (!a6)
    {
      return;
    }
  }

  *a6 = v26;
}

@end