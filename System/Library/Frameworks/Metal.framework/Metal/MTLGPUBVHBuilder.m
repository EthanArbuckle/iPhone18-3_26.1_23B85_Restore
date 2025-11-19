@interface MTLGPUBVHBuilder
+ (unint64_t)prefixSumScratchBufferSizeWithCapacity:(unint64_t)a3;
- ($D4F0DBFB58BF58C1D2D6E8FF21CEAEC6)getMTLSWBVHSizeAndOffsetsForDescriptor:(SEL)a3 bvhDescriptor:(id)a4;
- (BOOL)useResourceBufferForDescriptor:(id)a3;
- (BOOL)useSpatialSplitsForDescriptor:(id)a3;
- (BOOL)writeGenericBVHStructureSizesWithEncoder:(id)a3 version:(unint64_t)a4 BVHBuffer:(id)a5 BVHBufferOffset:(unint64_t)a6 toBuffer:(id)a7 sizesBufferOffset:(unint64_t)a8;
- (BOOL)writeGenericBVHStructureWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 into:(id)a6;
- (MTLGPUBVHBuilder)initWithDevice:(id)a3;
- (id).cxx_construct;
- (id)newGeometryBufferWithGeometryDescriptors:(id)a3 retainedResources:(id)a4;
- (id)newIndirectBufferWithCapacity:(unint64_t)a3 withRetainedResources:(id)a4 indirectBufferStride:(unint64_t *)a5;
- (id)newInstanceBufferWithBVHs:(id)a3 retainedResources:(id)a4 encoder:(id)a5 encodedStride:(unint64_t *)a6;
- (id)newPrimitiveCountBufferWithEncoder:(id)a3 descriptor:(id)a4 retainedResources:(id)a5;
- (id)newResourceBufferWithDescriptor:(id)a3 retainedResources:(id)a4;
- (id)newResourceIDsBufferWithBVHs:(id)a3 retainedResources:(id)a4 encoder:(id)a5;
- (id)retainedResourcesArrayWithEncoder:(id)a3;
- (uint64_t)initWithDevice:;
- (unint64_t)fragmentScratchSizeForDescriptor:(id)a3;
- (unint64_t)fragmentTotalThreadgroupCountForDescriptor:(id)a3;
- (unint64_t)getBuildScratchBufferSizeForDescriptor:(id)a3;
- (unint64_t)getEncodeMTLSWBVHScratchBufferSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4;
- (unint64_t)getGenericBVHSizeForDescriptor:(id)a3;
- (unint64_t)getGenericBVHSizeForDescriptor:(id)a3 nodeOffset:(unint64_t *)a4 fragmentOffset:(unint64_t *)a5 fragmentIndexOffset:(unint64_t *)a6 childIndexOffset:(unint64_t *)a7;
- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4;
- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4 refitDataOffset:(unint64_t *)a5 innerNodeOffset:(unint64_t *)a6 leafNodeOffset:(unint64_t *)a7 primitiveOffset:(unint64_t *)a8 controlPointOffset:(unint64_t *)a9 primitiveRefitDataOffset:(unint64_t *)a10 geometryOffset:(unint64_t *)a11 primitiveBVHOffset:(unint64_t *)a12 transformOffset:(unint64_t *)a13 instancedResourceIDsOffset:(unint64_t *)a14;
- (unint64_t)getRefitScratchBufferSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4;
- (void)addPrefixSumsWithEncoder:(id)a3 inputBuffer:(id)a4 inputBufferOffset:(unint64_t)a5 reducedBuffer:(id)a6 reducedBufferOffset:(unint64_t)a7 countBuffer:(id)a8 countBufferOffset:(unint64_t)a9 capacity:(unint64_t)a10;
- (void)buildGenericBVHWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 scratchBuffer:(id)a7 scratchBufferOffset:(unint64_t)a8 primitiveCountBuffer:(id)a9 primitiveCountBufferOffset:(unint64_t)a10;
- (void)buildWithEncoder:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6 fragmentBuffer:(id)a7 fragmentBufferOffset:(unint64_t)a8 fragmentIndexBuffer0:(id)a9 fragmentIndexBuffer0Offset:(unint64_t)a10 nodeBuffer:(id)a11 nodeBufferOffset:(unint64_t)a12 childIndexBuffer:(id)a13 childIndexBufferOffset:(unint64_t)a14 counterBuffer:(id)a15 counterBufferOffset:(unint64_t)a16 fragmentCountBuffer:(id)a17 fragmentCountBufferOffset:(unint64_t)a18 boundsMinBuffer:(id)a19 boundsMinBufferOffset:(unint64_t)a20 boundsMaxBuffer:(id)a21 boundsMaxBufferOffset:(unint64_t)a22 boundsEndMinBuffer:(id)a23 boundsEndMinBufferOffset:(unint64_t)a24 boundsEndMaxBuffer:(id)a25 boundsEndMaxBufferOffset:(unint64_t)a26 boundsEndTimeBuffer:(id)a27 boundsEndTimeBufferOffset:(unint64_t)a28 boundsStartTimeBuffer:(id)a29 boundsStartTimeBufferOffset:(unint64_t)a30 scratchBufferOffsets:(ScratchBufferOffset *)a31;
- (void)copyAndCompactMTLSWBVHWithEncoder:(id)a3 sourceBuffer:(id)a4 sourceBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7 destinationMTLResourceID:(MTLResourceID)a8 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a9;
- (void)copyFromBuffer:(id)a3 sourceBufferOffset:(unint64_t)a4 toBuffer:(id)a5 destinationBufferOffset:(unint64_t)a6 length:(unint64_t)a7 encoder:(id)a8;
- (void)copyMTLSWBVHWithEncoder:(id)a3 sourceBuffer:(id)a4 sourceBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7 destinationMTLResourceID:(MTLResourceID)a8 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a9;
- (void)copyMTLSWBVHWithEncoder:(id)a3 sourceBuffer:(id)a4 sourceBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7 destinationMTLResourceID:(MTLResourceID)a8 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a9 compact:(BOOL)a10 copyVertexData:(BOOL)a11 copyPerPrimitiveData:(BOOL)a12;
- (void)dealloc;
- (void)dispatchIndirect64:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 threadCountBuffer:(id)a6 threadCountBufferOffset:(unint64_t)a7 threadCountIndex:(unint64_t)a8 threadgroupDivisor:(unint64_t)a9 encoder:(id)a10;
- (void)dispatchIndirect:(id)a3 counterBuffer:(id)a4 counterBufferOffset:(unint64_t)a5 counterIndex:(unint64_t)a6 threadgroupSize:(unint64_t)a7 encoder:(id)a8;
- (void)dispatchIndirect:(id)a3 counterBuffer:(id)a4 counterBufferOffset:(unint64_t)a5 threadgroupSize:(unint64_t)a6 encoder:(id)a7;
- (void)dispatchIndirect:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 counterBuffer:(id)a6 counterBufferOffset:(unint64_t)a7 counterIndex:(unint64_t)a8 threadgroupDivisor:(unint64_t)a9 threadgroupSize:(unint64_t)a10 encoder:(id)a11;
- (void)dispatchIndirect:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 threadCountBuffer:(id)a6 threadCountBufferOffset:(unint64_t)a7 threadCountIndex:(unint64_t)a8 threadgroupDivisor:(unint64_t)a9 threadgroupSize:(unint64_t)a10 encoder:(id)a11;
- (void)encodeMTLSWBVHWithEncoder:(id)a3 descriptor:(id)a4 bvhDescriptor:(id)a5 outputBuffer:(id)a6 outputBufferOffset:(unint64_t)a7 genericBVHBuffer:(id)a8 genericBVHBufferOffset:(unint64_t)a9 scratchBuffer:(id)a10 scratchBufferOffset:(unint64_t)a11 gpuResourceID:(MTLResourceID)a12 accelerationStructureUniqueIdentifier:(unint64_t)a13;
- (void)fastIndirectGPUMemcpyWithEncoder:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 srcBuffer:(id)a6 srcBufferOffset:(unint64_t)a7 dstBuffer:(id)a8 dstBufferOffset:(unint64_t)a9 lengthBuffer:(id)a10 lengthOffset:(unint64_t)a11 retainedResources:(id)a12;
- (void)getBoundingBoxFragmentsWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 primitiveCountBuffer:(id)a7 primitiveCountBufferOffset:(unint64_t)a8 fragmentBuffer:(id)a9 fragmentBufferOffset:(unint64_t)a10 fragmentCountBuffer:(id)a11 fragmentCountBufferOffset:(unint64_t)a12 boundsMinBuffer:(id)a13 boundsMinBufferOffset:(unint64_t)a14 boundsMaxBuffer:(id)a15 boundsMaxBufferOffset:(unint64_t)a16 boundsEndMinBuffer:(id)a17 boundsEndMinBufferOffset:(unint64_t)a18 boundsEndMaxBuffer:(id)a19 boundsEndMaxBufferOffset:(unint64_t)a20 boundsEndTimeBuffer:(id)a21 boundsEndTimeBufferOffset:(unint64_t)a22 boundsStartTimeBuffer:(id)a23 boundsStartTimeBufferOffset:(unint64_t)a24 fragmentScratchBuffer:(id)a25 fragmentScratchBufferOffset:(unint64_t)a26;
- (void)getCurveFragmentsWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 primitiveCountBuffer:(id)a7 primitiveCountBufferOffset:(unint64_t)a8 fragmentBuffer:(id)a9 fragmentBufferOffset:(unint64_t)a10 fragmentCountBuffer:(id)a11 fragmentCountBufferOffset:(unint64_t)a12 boundsMinBuffer:(id)a13 boundsMinBufferOffset:(unint64_t)a14 boundsMaxBuffer:(id)a15 boundsMaxBufferOffset:(unint64_t)a16 boundsEndMinBuffer:(id)a17 boundsEndMinBufferOffset:(unint64_t)a18 boundsEndMaxBuffer:(id)a19 boundsEndMaxBufferOffset:(unint64_t)a20 boundsEndTimeBuffer:(id)a21 boundsEndTimeBufferOffset:(unint64_t)a22 boundsStartTimeBuffer:(id)a23 boundsStartTimeBufferOffset:(unint64_t)a24;
- (void)getMTLInstanceBoundingBoxesWithEncoder:(id)a3 descriptor:(id)a4 boundingBoxBuffer:(id)a5 boundingBoxBufferOffset:(unint64_t)a6;
- (void)getPolygonFragmentsWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 primitiveCountBuffer:(id)a7 primitiveCountBufferOffset:(unint64_t)a8 fragmentBuffer:(id)a9 fragmentBufferOffset:(unint64_t)a10 fragmentCountBuffer:(id)a11 fragmentCountBufferOffset:(unint64_t)a12 boundsMinBuffer:(id)a13 boundsMinBufferOffset:(unint64_t)a14 boundsMaxBuffer:(id)a15 boundsMaxBufferOffset:(unint64_t)a16 boundsEndMinBuffer:(id)a17 boundsEndMinBufferOffset:(unint64_t)a18 boundsEndMaxBuffer:(id)a19 boundsEndMaxBufferOffset:(unint64_t)a20 boundsEndTimeBuffer:(id)a21 boundsEndTimeBufferOffset:(unint64_t)a22 boundsStartTimeBuffer:(id)a23 boundsStartTimeBufferOffset:(unint64_t)a24;
- (void)initPipelinesWithDevice:(id)a3;
- (void)initializeCounterBuffer:(id)a3 counterBuffer:(id)a4 counterBufferOffset:(unint64_t)a5;
- (void)layoutNodesBreadthFirstWithEncoder:(id)a3 descriptor:(id)a4 BVHBuffer:(id)a5 BVHBufferOffset:(unint64_t)a6 counterBuffer:(id)a7 counterBufferOffset:(unint64_t)a8 nodeMappingBuffer:(id)a9 nodeMappingBufferOffset:(unint64_t)a10 levelOffsetsBuffer:(id)a11 levelOffsetsBufferOffset:(unint64_t)a12 levelCountsBuffer:(id)a13 levelCountsBufferOffset:(unint64_t)a14 scratchBuffer:(id)a15 scratchBufferOffset:(unint64_t)a16;
- (void)prefixSumWithEncoder:(id)a3 inputBuffer:(id)a4 inputBufferOffset:(unint64_t)a5 reducedBuffer:(id)a6 reducedBufferOffset:(unint64_t)a7 scratchBuffer:(id)a8 scratchBufferOffset:(unint64_t)a9 countBuffer:(id)a10 countBufferOffset:(unint64_t)a11 capacity:(unint64_t)a12;
- (void)refitMTLSWBVHWithEncoder:(id)a3 descriptor:(id)a4 bvhDescriptor:(id)a5 sourceBuffer:(id)a6 sourceBufferOffset:(unint64_t)a7 destinationBuffer:(id)a8 destinationBufferOffset:(unint64_t)a9 destinationMTLResourceID:(MTLResourceID)a10 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a11 scratchBuffer:(id)a12 scratchBufferOffset:(unint64_t)a13 options:(unint64_t)a14;
- (void)refitPrimitiveData:(id)a3 inPlace:(BOOL)a4 bvhDescriptor:(id)a5;
- (void)refitVertexDataWithEncoder:(id)a3 descriptor:(id)a4 bvhDescriptor:(id)a5 inPlace:(BOOL)a6 sourceBuffer:(id)a7 sourceBufferOffset:(unint64_t)a8 scratchBuffer:(id)a9 scratchBufferOffset:(unint64_t)a10 retainedResources:(id)a11 innerNodeCapacity:(unint64_t)a12 leafNodeCapacity:(unint64_t)a13;
- (void)setCounters:(const CounterValue *)a3 numCounters:(unint64_t)a4 encoder:(id)a5;
- (void)setGeometryBufferWithGeometryDescriptors:(id)a3 retainedResources:(id)a4 onEncoder:(id)a5 atIndex:(unint64_t)a6;
- (void)setResourceBufferWithDescriptor:(id)a3 retainedResources:(id)a4 onEncoder:(id)a5 atIndex:(unint64_t)a6;
- (void)threadgroupPrefixSumWithEncoder:(id)a3 inputBuffer:(id)a4 inputBufferOffset:(unint64_t)a5 reducedBuffer:(id)a6 reducedBufferOffset:(unint64_t)a7 countBuffer:(id)a8 countBufferOffset:(unint64_t)a9 capacity:(unint64_t)a10;
- (void)writeAccelerationStructureSerializationDataWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7;
- (void)writeBVHHeaderWithEncoder:(id)a3 descriptor:(id)a4 tmpCounterBuffer:(id)a5 tmpCounterBufferOffset:(unint64_t)a6 nodeBuffer:(id)a7 nodeBufferOffset:(unint64_t)a8 headerBuffer:(id)a9 headerBufferOffset:(unint64_t)a10 nodeOffset:(unint64_t)a11 fragmentOffset:(unint64_t)a12 fragmentIndexOffset:(unint64_t)a13 childIndexOffset:(unint64_t)a14 size:(unint64_t)a15;
- (void)writeCompactedMTLSWBVHSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7 sizeDataType:(unint64_t)a8;
- (void)writeDeserializedMTLSWBVHSizeWithEncoder:(id)a3 serializedBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7;
- (void)writeDeserializedMTLSWBVHWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 primitiveAccelerationStructures:(id)a6 fromBuffer:(id)a7 serializedBufferOffset:(unint64_t)a8 accelerationStructureMTLResourceID:(MTLResourceID)a9 accelerationStructureUniqueIdentifier:(unint64_t)a10;
- (void)writeDeserializedMTLSWPrimitiveBVHSizesWithEncoder:(id)a3 serializedBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizesBufferOffset:(unint64_t)a7;
- (void)writeGenericBVHStructureWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 header:(id)a6 headerBufferOffset:(unint64_t)a7 innerNodes:(id)a8 innerNodeBufferOffset:(unint64_t)a9 leafNodes:(id)a10 leafNodeBufferOffset:(unint64_t)a11 primitives:(id)a12 primitiveBufferOffset:(unint64_t)a13 geometry:(id)a14 geometryOffset:(unint64_t)a15 instanceTransform:(id)a16 instanceTransformOffset:(unint64_t)a17 controlPoints:(id)a18 controlPointBufferOffset:(unint64_t)a19;
- (void)writeMTLSWBVHAccelerationStructureDepthWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7;
- (void)writeMTLSWBVHSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7;
- (void)writeSerializationDataWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7;
- (void)writeSerializedGeometryPrimitiveCountWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 countBufferOffset:(unint64_t)a7;
- (void)writeSerializedGeometrySizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7;
- (void)writeSerializedGeometryWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 geometryBufferOffset:(unint64_t)a7;
- (void)writeSerializedMTLSWBVHRawSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7;
- (void)writeSerializedMTLSWBVHSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7;
- (void)writeSerializedMTLSWBVHWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 primitiveAccelerationStructures:(id)a6 toBuffer:(id)a7 serializedBufferOffset:(unint64_t)a8;
@end

@implementation MTLGPUBVHBuilder

- (MTLGPUBVHBuilder)initWithDevice:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MTLGPUBVHBuilder;
  v4 = [(MTLBVHBuilder *)&v13 init];
  if (v4)
  {
    *(v4 + 1) = a3;
    *(v4 + 144) = [a3 supportsFamily:1007];
    *(v4 + 145) = [a3 supportsFamily:1008];
    *(v4 + 146) = [a3 supportsFamily:1006];
    v4[4] = 64;
    v4[5] = 512;
    v4[6] = 0x2000;
    if ([objc_msgSend(a3 "name")])
    {
      getBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize = 1;
      v5 = 512;
    }

    else if (getBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize)
    {
      v5 = 512;
    }

    else
    {
      v5 = 64;
    }

    v4[7] = v5;
    if ([objc_msgSend(a3 "name")])
    {
      getSpatialBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize = 1;
      v6 = 256;
    }

    else if (getSpatialBinningTGSize(objc_object  {objcproto9MTLDevice}*)::threadgroupSize)
    {
      v6 = 256;
    }

    else
    {
      v6 = 64;
    }

    v4[8] = v6;
    if ([objc_msgSend(a3 "name")])
    {
      v7 = 256;
    }

    else
    {
      v7 = 64;
    }

    v4[9] = v7;
    v4[10] = 64;
    v4[11] = getDispatchBinsSmallTGSize(a3);
    *(v4 + 48) = [a3 supportsFamily:1006];
    v12 = 0;
    *(v4 + 7) = [a3 newLibraryWithURL:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), "URLForResource:withExtension:", @"MTLBVHBuilder", @"metallib", &v12}];
    *(v4 + 13) = v4[4];
    *&v14 = &unk_1EF474C18;
    *(&v14 + 1) = v4;
    v16 = &v14;
    std::__function::__value_func<objc_object  {objcproto23MTLComputePipelineState}* ()(PipelineKey const&)>::swap[abi:ne200100](&v14, v4 + 14);
    std::__function::__value_func<objc_object  {objcproto23MTLComputePipelineState}* ()(PipelineKey const&)>::~__value_func[abi:ne200100](&v14);
    v8 = *(v4 + 1);
    if (v8)
    {
      [v8 maxThreadsPerThreadgroup];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    v9 = v15;
    *(v4 + 38) = v14;
    *(v4 + 21) = v9;
    [v4 initPipelinesWithDevice:a3];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)initPipelinesWithDevice:(id)a3
{
  self->KERNEL_INDEX_DISPATCH_BINS = 0;
  self->KERNEL_INDEX_BIN_FRAGMENTS = 1;
  self->KERNEL_INDEX_CLEAR_BATCHES = 2;
  self->KERNEL_INDEX_CREATE_BVH_NODES = 3;
  self->KERNEL_INDEX_FIND_BEST_SPLIT = 4;
  self->KERNEL_INDEX_SPLIT_FRAGMENTS = 5;
  self->KERNEL_INDEX_BIN_FRAGMENTS_SPATIAL = 6;
  self->KERNEL_INDEX_FIND_BEST_SPATIAL_SPLIT = 7;
  self->KERNEL_INDEX_INITIALIZE_QUEUE = 8;
  self->KERNEL_INDEX_INITIALIZE_DEBUG_FRAGMENT_INDICES = 9;
  self->KERNEL_INDEX_INITIALIZE_FRAGMENT_INDICES = 10;
  self->KERNEL_INDEX_INITIALIZE_FRAGMENTS = 11;
  self->KERNEL_INDEX_INITIALIZE_COUNTERS = 12;
  self->KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS = 13;
  self->KERNEL_INDEX_ENQUEUE_LEAF_NODE_SPLITS = 14;
  self->KERNEL_INDEX_GET_POLYGON_FRAGMENTS = 15;
  self->KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS = 16;
  self->KERNEL_INDEX_GET_CURVE_FRAGMENTS = 17;
  self->KERNEL_INDEX_WRITE_BVH_METADATA = 18;
  self->KERNEL_INDEX_SET_COUNTERS = 19;
  self->KERNEL_INDEX_COPY_COUNTERS = 20;
  self->KERNEL_INDEX_DISPATCH_INDIRECT = 21;
  self->KERNEL_INDEX_ENCODE_MTL_BVH_NODE0 = 22;
  self->KERNEL_INDEX_ENCODE_MTL_PRIMITIVE_BVH = 23;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH = 24;
  self->KERNEL_INDEX_ENCODE_MTL_PRIMITIVE_BVH_INNER_NODE = 25;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_INNER_NODE = 26;
  self->KERNEL_INDEX_ENCODE_MTL_TRIANGLE_BVH_LEAF_NODE = 27;
  self->KERNEL_INDEX_ENCODE_MTL_BBOX_BVH_LEAF_NODE = 28;
  self->KERNEL_INDEX_ENCODE_MTL_CURVE_BVH_LEAF_NODE = 29;
  self->KERNEL_INDEX_ENCODE_MTL_CURVE_BVH_CONTROL_POINTS = 30;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_DEFAULT = 31;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_USER_ID = 32;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_INDIRECT = 33;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_RESOURCE_IDS_DEFAULT = 34;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_RESOURCE_IDS_USER_ID = 35;
  self->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_RESOURCE_IDS_INDIRECT = 36;
  self->KERNEL_INDEX_GET_COMPACTED_MTL_BVH_SIZE_32 = 37;
  self->KERNEL_INDEX_GET_COMPACTED_MTL_BVH_SIZE_64 = 38;
  self->KERNEL_INDEX_GET_MTL_BVH_SIZE = 39;
  self->KERNEL_INDEX_GET_MTL_BVH_DEPTH = 40;
  self->KERNEL_INDEX_COPY_AND_COMPACT_MTL_BVH_HEADER = 41;
  self->KERNEL_INDEX_COPY_MTL_BVH_HEADER = 42;
  self->KERNEL_INDEX_COPY_MTL_BVH_INNER_NODES = 43;
  self->KERNEL_INDEX_COPY_MTL_BVH_LEAF_NODES = 44;
  self->KERNEL_INDEX_COPY_MTL_BVH_PRIMITIVES = 45;
  self->KERNEL_INDEX_COPY_MTL_BVH_GEOMETRIES = 46;
  self->KERNEL_INDEX_COPY_MTL_BVH_TRANSFORMS = 47;
  self->KERNEL_INDEX_COPY_MTL_PRIMITIVE_BVHS = 48;
  self->KERNEL_INDEX_COPY_MTL_BVH_CONTROL_POINTS = 49;
  self->KERNEL_INDEX_COPY_MTL_BVH_RESOURCE_IDS = 50;
  self->KERNEL_INDEX_GET_MTL_INSTANCE_BOUNDING_BOXES_DEFAULT = 51;
  self->KERNEL_INDEX_GET_MTL_INSTANCE_BOUNDING_BOXES_USER_ID = 52;
  self->KERNEL_INDEX_GET_MTL_INSTANCE_BOUNDING_BOXES_INDIRECT = 53;
  self->KERNEL_INDEX_COPY = 54;
  self->KERNEL_INDEX_REFIT_TRIANGLE_LEAF_NODE = 55;
  self->KERNEL_INDEX_REFIT_TRIANGLE_LEAF_NODE_IN_PLACE = 56;
  self->KERNEL_INDEX_REFIT_BBOX_LEAF_NODE = 57;
  self->KERNEL_INDEX_REFIT_BBOX_LEAF_NODE_IN_PLACE = 58;
  self->KERNEL_INDEX_REFIT_CURVE_LEAF_NODE = 59;
  self->KERNEL_INDEX_REFIT_CURVE_LEAF_NODE_IN_PLACE = 60;
  self->KERNEL_INDEX_REFIT_CURVE_CONTROL_POINTS = 61;
  self->KERNEL_INDEX_REFIT_CURVE_CONTROL_POINTS_IN_PLACE = 62;
  self->KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT = 63;
  self->KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID = 64;
  self->KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT = 65;
  self->KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT_IN_PLACE = 66;
  self->KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID_IN_PLACE = 67;
  self->KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT_IN_PLACE = 68;
  self->KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_DEFAULT = 69;
  self->KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_USER_ID = 70;
  self->KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_INDIRECT = 71;
  self->KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_DEFAULT_IN_PLACE = 72;
  self->KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_USER_ID_IN_PLACE = 73;
  self->KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_INDIRECT_IN_PLACE = 74;
  self->KERNEL_INDEX_REFIT_INNER_NODE = 75;
  self->KERNEL_INDEX_REFIT_INNER_NODE_IN_PLACE = 76;
  self->KERNEL_INDEX_REFIT_GEOMETRIES = 77;
  self->KERNEL_INDEX_REFIT_GEOMETRIES_IN_PLACE = 78;
  self->KERNEL_INDEX_GET_SERIALIZED_MTL_BVH_SIZE = 79;
  self->KERNEL_INDEX_GET_SERIALIZED_MTL_BVH_RAW_SIZE = 80;
  self->KERNEL_INDEX_GET_DESERIALIZED_MTL_BVH_SIZE = 81;
  self->KERNEL_INDEX_GET_DESERIALIZED_MTL_PRIMITIVE_BVH_SIZES = 82;
  self->KERNEL_INDEX_WRITE_MTL_BVH_SERIALIZATION_DATA = 83;
  self->KERNEL_INDEX_WRITE_SERIALIZED_MTL_BVH = 84;
  self->KERNEL_INDEX_WRITE_DESERIALIZED_MTL_BVH = 85;
  self->KERNEL_INDEX_GET_GEOMETRY_SIZE = 86;
  self->KERNEL_INDEX_GET_GEOMETRY_PRIMITIVE_COUNT = 87;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_PRIMITIVES = 88;
  self->KERNEL_INDEX_WRITE_MTL_BVH_SIZES_1_1 = 89;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_HEADER_1_1 = 90;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_INNER_NODES = 91;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_LEAF_NODES_1_1 = 92;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_PRIMITIVE_NODES = 93;
  self->KERNEL_INDEX_PATCH_SERIALIZED_MTL_BVH = 94;
  self->KERNEL_INDEX_PATCH_DESERIALIZED_MTL_BVH = 95;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY = 96;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_TRANSFORMS = 97;
  self->KERNEL_INDEX_DISPATCH_INDIRECT_64 = 98;
  self->KERNEL_INDEX_DISPATCH_BINS_WIDE = 99;
  self->KERNEL_INDEX_MEMCPY_INDIRECT_64 = 100;
  self->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_INIT = 101;
  self->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_FINISH_ITERATION = 102;
  self->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_CLASSIFY = 103;
  self->KERNEL_INDEX_BREADTH_FIRST_LAYOUT = 104;
  self->KERNEL_INDEX_PREFIX_SUM = 105;
  self->KERNEL_INDEX_PREFIX_SUM_REDUCE = 106;
  self->KERNEL_INDEX_PREFIX_SUM_ADD = 107;
  self->KERNEL_INDEX_COPY_FRAGMENT_INDICES = 108;
  self->KERNEL_INDEX_WRITE_MTL_BVH_SIZES_1_0 = 109;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_HEADER_1_0 = 110;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_LEAF_NODES_1_0 = 111;
  self->KERNEL_INDEX_WRITE_SERIALIZATION_DATA = 112;
  self->KERNEL_INDEX_ENCODE_PRIMITIVE_DATA = 113;
  self->KERNEL_INDEX_REFIT_PRIMITIVE_DATA = 114;
  self->KERNEL_INDEX_REFIT_PRIMITIVE_DATA_IN_PLACE = 115;
  self->KERNEL_INDEX_COPY_PRIMITIVE_DATA = 116;
  self->KERNEL_INDEX_EXTRACT_PRIMITIVE_DATA = 117;
  self->KERNEL_INDEX_WRITE_MTL_BVH_SIZES_1_2 = 118;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2 = 119;
  self->KERNEL_INDEX_REFIT_HEADER = 120;
  self->KERNEL_INDEX_REFIT_HEADER_IN_PLACE = 121;
  self->KERNEL_INDEX_FINISH_BUILD_ITERATION = 122;
  self->KERNEL_INDEX_THREADGROUP_BREADTH_FIRST_LAYOUT = 123;
  self->KERNEL_INDEX_BIN_FRAGMENTS_TEMPORAL = 124;
  self->KERNEL_INDEX_FIND_BEST_TEMPORAL_SPLIT = 125;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_LEAF_NODES_1_3 = 126;
  self->KERNEL_INDEX_WRITE_MTL_BVH_SIZES_1_3 = 127;
  self->KERNEL_INDEX_SPLIT_FRAGMENTS_PREFIX_SUM = 128;
  self->KERNEL_INDEX_ZERO_BUFFER = 129;
  self->KERNEL_INDEX_WRITE_MTL_BVH_SIZES_1_4 = 130;
  self->KERNEL_INDEX_WRITE_MTL_BVH_SIZES_1_5 = 131;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_HEADER_1_4 = 132;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_HEADER_1_5 = 133;
  self->KERNEL_INDEX_EXTRACT_CONTROL_POINT_DATA = 134;
  self->KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_5 = 135;
  operator new[]();
}

- (void)dealloc
{
  pipelineInfos = self->_pipelineInfos;
  if (pipelineInfos)
  {
    MEMORY[0x1865FF1F0](pipelineInfos, 0x1050C80A90F5278);
    self->_pipelineInfos = 0;
  }

  v4.receiver = self;
  v4.super_class = MTLGPUBVHBuilder;
  [(MTLGPUBVHBuilder *)&v4 dealloc];
}

- (BOOL)useSpatialSplitsForDescriptor:(id)a3
{
  v4 = [objc_msgSend(a3 "geometryDescriptors")];
  if (v4)
  {
    if ([objc_msgSend(objc_msgSend(a3 "geometryDescriptors")])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      LOBYTE(v4) = [a3 splitHeuristic] == 3;
    }
  }

  return v4;
}

- (BOOL)useResourceBufferForDescriptor:(id)a3
{
  result = 1;
  if ([objc_msgSend(a3 "geometryDescriptors")] <= 1 && (objc_msgSend(a3, "primitiveMotion") & 1) == 0)
  {
    if (![objc_msgSend(a3 "geometryDescriptors")])
    {
      return 0;
    }

    v5 = [objc_msgSend(a3 "geometryDescriptors")];
    if (([v5 primitiveType] || !objc_msgSend(v5, "transformationMatrixBuffer")) && (!objc_msgSend(v5, "primitiveDataBuffer") || !objc_msgSend(v5, "primitiveDataElementSize")) && objc_msgSend(v5, "primitiveType") != 2)
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)fragmentScratchSizeForDescriptor:(id)a3
{
  if (![a3 deterministic])
  {
    return 0;
  }

  v5 = [(MTLGPUBVHBuilder *)self fragmentTotalThreadgroupCountForDescriptor:a3];
  return [MTLGPUBVHBuilder prefixSumScratchBufferSizeWithCapacity:v5]+ 4 * v5;
}

- (unint64_t)getBuildScratchBufferSizeForDescriptor:(id)a3
{
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a3 fragmentCapacity:&v37 fragmentIndexCapacity:&v33 innerNodeCapacity:&v36 leafNodeCapacity:&v35 primitiveDataCapacity:&v34];
  v5 = 0;
  v6 = 0;
  if (v33 > 0x2000)
  {
    batchSize = self->_batchSize;
    v8 = (v33 + batchSize) / (batchSize + 1);
    if (v8 >= 2)
    {
      v5 = 2 * v8;
    }

    else
    {
      v5 = 2;
    }

    if ((v33 + batchSize - 1) / batchSize <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = (v33 + batchSize - 1) / batchSize;
    }
  }

  v9 = [(MTLGPUBVHBuilder *)self fragmentScratchSizeForDescriptor:a3];
  v10 = v33;
  v11 = (4 * v33 + 255) & 0xFFFFFFFFFFFFFF00;
  v12 = [a3 maxSubKeyframeTemporalSplits];
  v13 = 2 * v10 + 255;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = (((((((((v13 + v11) & 0xFFFFFFFFFFFFFF00) + 259) & 0xFFFFFFFFFFFFFF00) + 271) & 0xFFFFFFFFFFFFFF00) + 271) & 0xFFFFFFFFFFFFFF00) + 3071) & 0xFFFFFFFFFFFFFF00;
  if ([a3 motion])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  if ([a3 motion])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + v15;
  if ([a3 motion])
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 + v17;
  if ([a3 motion])
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = (24 * v5 + 255 + ((24 * v5 + 255 + ((192 * v6 + 255 + ((192 * v6 + 255 + ((192 * v6 + 255 + ((8 * v35 + 255 + 1536 * v6 + ((8 * v35 + 255 + ((v9 + v20 + v19 + v14 + 255) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00;
  v22 = [a3 motion];
  v23 = 76;
  if (v22)
  {
    v23 = 140;
  }

  v24 = (((16 * v6 + 255 + ((16 * v6 + 255 + ((4 * v6 + 255 + ((4 * v6 + 255 + ((v21 + v23 * v5 + 255) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00) + 275) & 0xFFFFFFFFFFFFFF00;
  v25 = [a3 motion];
  if ([a3 motion])
  {
    v26 = 768 * v6;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = 768 * v6 + 267;
  }

  else
  {
    v27 = 256;
  }

  v28 = (v27 + v26 + v24) & 0xFFFFFFFFFFFFFF00;
  if ([a3 motion])
  {
    v29 = 192 * v6 + 255;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v29 + v28) & 0xFFFFFFFFFFFFFF00;
  if ([a3 motion])
  {
    v31 = 192 * v6;
  }

  else
  {
    v31 = 0;
  }

  return v30 + v31;
}

- (unint64_t)fragmentTotalThreadgroupCountForDescriptor:(id)a3
{
  v4 = [a3 geometryDescriptors];
  v5 = [v4 count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    v9 = [objc_msgSend(v4 objectAtIndexedSubscript:{i), "primitiveCount"}];
    if (v9)
    {
      v7 += (v9 + self->_threadgroupSize - 1) / self->_threadgroupSize;
    }
  }

  return v7;
}

- (id)retainedResourcesArrayWithEncoder:(id)a3
{
  v3 = [a3 commandBuffer];
  if ([v3 retainedReferences])
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MTLGPUBVHBuilder_retainedResourcesArrayWithEncoder___block_invoke;
  v6[3] = &unk_1E6EEA880;
  v6[4] = v4;
  [v3 addCompletedHandler:v6];
  return v4;
}

- (id)newResourceBufferWithDescriptor:(id)a3 retainedResources:(id)a4
{
  v5 = a3;
  v7 = [a3 geometryDescriptors];
  LODWORD(v5) = [v5 primitiveMotion];
  v8 = [v7 count];
  v12 = 0;
  v9 = [(MTLDevice *)self->_device newBufferWithLength:computeResourceBufferLength(v5 options:&v12, v8, v7), 0];
  v10 = [v9 contents];
  setResourceBufferContents(v10, v5, v12, v8, v7, [v9 gpuAddress]);
  [a4 addObject:v9];
  return v9;
}

- (void)setResourceBufferWithDescriptor:(id)a3 retainedResources:(id)a4 onEncoder:(id)a5 atIndex:(unint64_t)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = [a3 geometryDescriptors];
  v12 = [a3 primitiveMotion];
  v13 = [v11 count];
  v23 = 0;
  v14 = computeResourceBufferLength(v12, &v23, v13, v11);
  v15 = v14;
  if (v13 > 0x10)
  {
    v16 = 1;
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    v22 = [(MTLDevice *)self->_device newBufferWithLength:v14 options:0];
    v17 = [v22 contents];
  }

  else
  {
    v17 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v14);
    v22 = 0;
  }

  setResourceBufferContents(v17, v12, v23, v13, v11, [v22 gpuAddress]);
  if (v16)
  {
    [a5 setBuffer:v22 offset:0 atIndex:a6];
    [a4 addObject:v22];
    v18 = *MEMORY[0x1E69E9840];
    v19 = v22;
  }

  else
  {
    [a5 setBytes:v17 length:v15 atIndex:a6];
    v20 = *MEMORY[0x1E69E9840];
  }
}

- (id)newIndirectBufferWithCapacity:(unint64_t)a3 withRetainedResources:(id)a4 indirectBufferStride:(unint64_t *)a5
{
  if (self->_supportsDispatchThreadsWithIndirectBuffer)
  {
    v7 = 12;
  }

  else
  {
    v7 = 256;
  }

  v8 = [(MTLDevice *)self->_device newBufferWithLength:v7 * a3 options:0];
  if (a5)
  {
    *a5 = v7;
  }

  [a4 addObject:v8];
  return v8;
}

- (id)newPrimitiveCountBufferWithEncoder:(id)a3 descriptor:(id)a4 retainedResources:(id)a5
{
  v7 = -[MTLDevice newBufferWithLength:options:](self->_device, "newBufferWithLength:options:", 4 * [objc_msgSend(a4 geometryDescriptors], 0);
  [a5 addObject:v7];
  v8 = [v7 contents];
  if ([objc_msgSend(a4 "geometryDescriptors")])
  {
    v9 = 0;
    do
    {
      *(v8 + 4 * v9) = [objc_msgSend(objc_msgSend(a4 "geometryDescriptors")];
      ++v9;
    }

    while (v9 < [objc_msgSend(a4 "geometryDescriptors")]);
  }

  return v7;
}

- (unint64_t)getGenericBVHSizeForDescriptor:(id)a3 nodeOffset:(unint64_t *)a4 fragmentOffset:(unint64_t *)a5 fragmentIndexOffset:(unint64_t *)a6 childIndexOffset:(unint64_t *)a7
{
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a3 fragmentCapacity:&v25 fragmentIndexCapacity:&v21 innerNodeCapacity:&v24 leafNodeCapacity:&v23 primitiveDataCapacity:&v22];
  *a4 = 256;
  v12 = [a3 motion];
  v13 = 36;
  if (v12)
  {
    v13 = 72;
  }

  v14 = (v23 + v24) * v13 + 511;
  *a5 = v14 & 0xFFFFFFFFFFFFFF00;
  v15 = [a3 motion];
  v16 = 40;
  if (v15)
  {
    v16 = 72;
  }

  v17 = ((v14 | 0xF8) + v25 * v16) & 0xFFFFFFFFFFFFFF00;
  *a6 = v17;
  v18 = (v17 + 4 * v21 + 255) & 0xFFFFFFFFFFFFFF00;
  *a7 = v18;
  if ([a3 branchingFactor] != 2)
  {
    v19 = v24;
    v18 += 4 * v19 * [a3 branchingFactor];
  }

  return (v18 + 255) & 0xFFFFFFFFFFFFFF00;
}

- (unint64_t)getGenericBVHSizeForDescriptor:(id)a3
{
  v7 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  return [(MTLGPUBVHBuilder *)self getGenericBVHSizeForDescriptor:a3 nodeOffset:&v7 fragmentOffset:&v6 fragmentIndexOffset:&v5 childIndexOffset:&v4];
}

- (void)setCounters:(const CounterValue *)a3 numCounters:(unint64_t)a4 encoder:(id)a5
{
  v12 = 0;
  KERNEL_INDEX_SET_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_SET_COUNTERS);
  p_pipelineCache = &self->_pipelineCache;
  v14 = 0u;
  v15 = 0u;
  v13 = KERNEL_INDEX_SET_COUNTERS_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  [a5 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, &v13, &v12)}];
  [a5 setBytes:a3 length:16 * a4 atIndex:30];
  if ([a5 dispatchType] == 1)
  {
    [a5 memoryBarrierWithScope:1];
  }

  v13 = a4;
  v14 = vdupq_n_s64(1uLL);
  v10 = v12;
  v11 = v14;
  [a5 dispatchThreads:&v13 threadsPerThreadgroup:&v10];
}

- (void)copyFromBuffer:(id)a3 sourceBufferOffset:(unint64_t)a4 toBuffer:(id)a5 destinationBufferOffset:(unint64_t)a6 length:(unint64_t)a7 encoder:(id)a8
{
  if (a7)
  {
    v9 = a7;
    v21 = 0;
    KERNEL_INDEX_COPY_low = LOBYTE(self->KERNEL_INDEX_COPY);
    p_pipelineCache = &self->_pipelineCache;
    v23 = 0u;
    v24 = 0u;
    v22 = KERNEL_INDEX_COPY_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
    [a8 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, &v22, &v21)}];
    [a8 setBuffer:a5 offset:0 atIndex:28];
    [a8 setBuffer:a3 offset:0 atIndex:29];
    v22 = a4 >> 2;
    *&v23 = a6 >> 2;
    v9 += 3;
    *(&v23 + 1) = v9 >> 2;
    [a8 setBytes:&v22 length:24 atIndex:30];
    v16 = (v21 + (v9 >> 2) - 1) / v21;
    if ([a8 dispatchType] == 1)
    {
      [a8 memoryBarrierWithScope:1];
    }

    v19 = v16;
    v20 = vdupq_n_s64(1uLL);
    v17 = v21;
    v18 = v20;
    [a8 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  }
}

- (void)dispatchIndirect:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 threadCountBuffer:(id)a6 threadCountBufferOffset:(unint64_t)a7 threadCountIndex:(unint64_t)a8 threadgroupDivisor:(unint64_t)a9 threadgroupSize:(unint64_t)a10 encoder:(id)a11
{
  v11 = a8;
  threadgroupSize = a10;
  if (!a10)
  {
    threadgroupSize = self->_threadgroupSize;
  }

  v25 = 0;
  KERNEL_INDEX_DISPATCH_INDIRECT_low = LOBYTE(self->KERNEL_INDEX_DISPATCH_INDIRECT);
  p_pipelineCache = &self->_pipelineCache;
  v27 = 0u;
  *&v26[8] = 0u;
  *v26 = KERNEL_INDEX_DISPATCH_INDIRECT_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  [a11 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v26, &v25)}];
  [a11 setBuffer:a6 offset:a7 atIndex:28];
  v24[0] = v11;
  v24[1] = a9;
  [a11 setBytes:v24 length:8 atIndex:29];
  [a11 setBuffer:a4 offset:a5 atIndex:30];
  v19 = v25;
  if ([a11 dispatchType] == 1)
  {
    [a11 memoryBarrierWithScope:1];
  }

  *v26 = vdupq_n_s64(1uLL);
  *&v26[16] = 1;
  v22 = v19;
  v23 = *v26;
  [a11 dispatchThreadgroups:v26 threadsPerThreadgroup:{&v22, a3}];
  if ([a11 dispatchType] == 1)
  {
    [a11 memoryBarrierWithScope:1];
  }

  [a11 setComputePipelineState:v21];
  *v26 = threadgroupSize;
  *&v26[8] = vdupq_n_s64(1uLL);
  [a11 dispatchThreadgroupsWithIndirectBuffer:a4 indirectBufferOffset:a5 threadsPerThreadgroup:v26];
}

- (void)fastIndirectGPUMemcpyWithEncoder:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 srcBuffer:(id)a6 srcBufferOffset:(unint64_t)a7 dstBuffer:(id)a8 dstBufferOffset:(unint64_t)a9 lengthBuffer:(id)a10 lengthOffset:(unint64_t)a11 retainedResources:(id)a12
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_DISPATCH_INDIRECT_64, self->_pipelineCache.baseThreadgroupSize, 0);
  v19 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_MEMCPY_INDIRECT_64, p_pipelineCache->baseThreadgroupSize, 0);
  [a3 setComputePipelineState:Pipeline];
  [a3 setBuffer:a10 offset:a11 atIndex:28];
  v20 = 16 * self->_threadgroupSize;
  v28[0] = 0;
  v28[1] = v20;
  [a3 setBytes:v28 length:8 atIndex:29];
  [a3 setBuffer:a4 offset:0 atIndex:30];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v27 = vdupq_n_s64(1uLL);
  *&v27[16] = 1;
  v25 = *v27;
  v26 = 1;
  [a3 dispatchThreadgroups:v27 threadsPerThreadgroup:{&v25, a8}];
  [a3 setComputePipelineState:v19];
  [a3 setBuffer:a6 offset:a7 atIndex:0];
  [a3 setBuffer:v23 offset:a9 atIndex:1];
  [a3 setBuffer:a10 offset:a11 atIndex:2];
  threadgroupSize = self->_threadgroupSize;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v27 = threadgroupSize;
  *&v27[8] = vdupq_n_s64(1uLL);
  [a3 dispatchThreadgroupsWithIndirectBuffer:a4 indirectBufferOffset:a5 threadsPerThreadgroup:v27];
}

- (void)dispatchIndirect64:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 threadCountBuffer:(id)a6 threadCountBufferOffset:(unint64_t)a7 threadCountIndex:(unint64_t)a8 threadgroupDivisor:(unint64_t)a9 encoder:(id)a10
{
  v10 = a8;
  v25 = 0;
  KERNEL_INDEX_DISPATCH_INDIRECT_64_low = LOBYTE(self->KERNEL_INDEX_DISPATCH_INDIRECT_64);
  p_pipelineCache = &self->_pipelineCache;
  v27 = 0u;
  *&v26[8] = 0u;
  *v26 = KERNEL_INDEX_DISPATCH_INDIRECT_64_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  [a10 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v26, &v25)}];
  [a10 setBuffer:a6 offset:a7 atIndex:28];
  v24[0] = v10;
  v24[1] = a9;
  [a10 setBytes:v24 length:8 atIndex:29];
  [a10 setBuffer:a4 offset:a5 atIndex:30];
  v18 = v25;
  if ([a10 dispatchType] == 1)
  {
    [a10 memoryBarrierWithScope:1];
  }

  *v26 = vdupq_n_s64(1uLL);
  *&v26[16] = 1;
  v22 = v18;
  v23 = *v26;
  [a10 dispatchThreadgroups:v26 threadsPerThreadgroup:{&v22, a3}];
  [a10 setComputePipelineState:v21];
  threadgroupSize = self->_threadgroupSize;
  if ([a10 dispatchType] == 1)
  {
    [a10 memoryBarrierWithScope:1];
  }

  *v26 = threadgroupSize;
  *&v26[8] = vdupq_n_s64(1uLL);
  [a10 dispatchThreadgroupsWithIndirectBuffer:a4 indirectBufferOffset:a5 threadsPerThreadgroup:v26];
}

- (void)dispatchIndirect:(id)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5 counterBuffer:(id)a6 counterBufferOffset:(unint64_t)a7 counterIndex:(unint64_t)a8 threadgroupDivisor:(unint64_t)a9 threadgroupSize:(unint64_t)a10 encoder:(id)a11
{
  if (a9 == 1)
  {
    [(MTLGPUBVHBuilder *)self dispatchIndirect:a3 counterBuffer:a6 counterBufferOffset:a7 counterIndex:a8 threadgroupSize:a10 encoder:a11];
  }

  else
  {
    [MTLGPUBVHBuilder dispatchIndirect:"dispatchIndirect:indirectBuffer:indirectBufferOffset:threadCountBuffer:threadCountBufferOffset:threadCountIndex:threadgroupDivisor:threadgroupSize:encoder:" indirectBuffer:a3 indirectBufferOffset:a4 threadCountBuffer:a5 threadCountBufferOffset:a6 threadCountIndex:a7 threadgroupDivisor:(a8 & 0xFFFFFFFFFFFFFFLL) << 6 threadgroupSize:? encoder:?];
  }
}

- (void)dispatchIndirect:(id)a3 counterBuffer:(id)a4 counterBufferOffset:(unint64_t)a5 counterIndex:(unint64_t)a6 threadgroupSize:(unint64_t)a7 encoder:(id)a8
{
  threadgroupSize = a7;
  if (!a7)
  {
    threadgroupSize = self->_threadgroupSize;
  }

  [a8 setComputePipelineState:a3];
  if ([a8 dispatchType] == 1)
  {
    [a8 memoryBarrierWithScope:1];
  }

  v13 = threadgroupSize;
  v14 = vdupq_n_s64(1uLL);
  [a8 dispatchThreadgroupsWithIndirectBuffer:a4 indirectBufferOffset:a5 + (a6 << 8) threadsPerThreadgroup:&v13];
}

- (void)dispatchIndirect:(id)a3 counterBuffer:(id)a4 counterBufferOffset:(unint64_t)a5 threadgroupSize:(unint64_t)a6 encoder:(id)a7
{
  threadgroupSize = a6;
  if (!a6)
  {
    threadgroupSize = self->_threadgroupSize;
  }

  [a7 setComputePipelineState:a3];
  if ([a7 dispatchType] == 1)
  {
    [a7 memoryBarrierWithScope:1];
  }

  v11 = threadgroupSize;
  v12 = vdupq_n_s64(1uLL);
  [a7 dispatchThreadgroupsWithIndirectBuffer:a4 indirectBufferOffset:a5 threadsPerThreadgroup:&v11];
}

- (void)getPolygonFragmentsWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 primitiveCountBuffer:(id)a7 primitiveCountBufferOffset:(unint64_t)a8 fragmentBuffer:(id)a9 fragmentBufferOffset:(unint64_t)a10 fragmentCountBuffer:(id)a11 fragmentCountBufferOffset:(unint64_t)a12 boundsMinBuffer:(id)a13 boundsMinBufferOffset:(unint64_t)a14 boundsMaxBuffer:(id)a15 boundsMaxBufferOffset:(unint64_t)a16 boundsEndMinBuffer:(id)a17 boundsEndMinBufferOffset:(unint64_t)a18 boundsEndMaxBuffer:(id)a19 boundsEndMaxBufferOffset:(unint64_t)a20 boundsEndTimeBuffer:(id)a21 boundsEndTimeBufferOffset:(unint64_t)a22 boundsStartTimeBuffer:(id)a23 boundsStartTimeBufferOffset:(unint64_t)a24
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_FRAGMENTS, a4);
  v79 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_GET_POLYGON_FRAGMENTS, a4);
  [a3 setBuffer:a11 offset:a12 atIndex:1];
  [a3 setBuffer:a9 offset:a10 atIndex:2];
  [a3 setBuffer:a13 offset:a14 atIndex:7];
  [a3 setBuffer:a15 offset:a16 atIndex:8];
  if ([a4 primitiveMotion])
  {
    *v86 = [a4 primitiveKeyframeCount];
    [a3 setBytes:v86 length:4 atIndex:14];
    [a4 primitiveMotionStartTime];
    LODWORD(v92) = v28;
    [a3 setBytes:&v92 length:4 atIndex:15];
    [a4 primitiveMotionEndTime];
    LODWORD(v84) = v29;
    [a3 setBytes:&v84 length:4 atIndex:16];
    [a3 setBuffer:a17 offset:a18 atIndex:17];
    [a3 setBuffer:a19 offset:a20 atIndex:18];
    [a3 setBuffer:a23 offset:a24 atIndex:19];
    [a3 setBuffer:a21 offset:a22 atIndex:20];
  }

  [a3 setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v86 = vdupq_n_s64(1uLL);
  *&v86[16] = 1;
  v92 = threadgroupSize;
  v93 = *v86;
  [a3 dispatchThreadgroups:v86 threadsPerThreadgroup:&v92];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v31 = [a4 geometryDescriptors];
  v32 = [v31 count];
  if (a7)
  {
    v88 = 0;
    v89 = 0;
    if (self->_supportsDispatchThreadsWithIndirectBuffer)
    {
      v80 = a5;
      KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
      v72 = a6 + 200;
      v87 = 0u;
      *&v86[8] = 0u;
      *v86 = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(p_pipelineCache->baseThreadgroupSize) & 0xF) << 45);
      v70 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v86, &v88);
      if (!v32)
      {
LABEL_60:

        return;
      }
    }

    else
    {
      v47 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:a3];
      if ([v31 count] <= 4)
      {
        v48 = [v31 count];
      }

      else
      {
        v48 = 4;
      }

      v80 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:v48 withRetainedResources:v47 indirectBufferStride:&v89];
      v70 = 0;
      v72 = 0;
      if (!v32)
      {
        goto LABEL_60;
      }
    }

    v49 = 0;
    v69 = self->_threadgroupSize;
    v75 = a8;
    v77 = 0;
    v71 = v32;
    do
    {
      v50 = v49 + 4;
      v73 = v49 + 4;
      if (v49 + 4 >= [v31 count])
      {
        v50 = [v31 count];
      }

      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        *v86 = a8 + 4 * v49 + [a7 gpuAddress];
        *&v86[8] = [v80 gpuAddress] + v72;
        if (v50 != v49)
        {
          v51 = 0;
          v52 = v50 + v77;
          if ((v50 + v77) <= 1)
          {
            v52 = 1;
          }

          v53 = &v86[20];
          do
          {
            *(v53 - 2) = 4 * v51;
            *(v53 - 1) = 12 * v51;
            *v53 = v69;
            v53 += 2;
            ++v51;
          }

          while (v52 != v51);
        }

        [a3 setComputePipelineState:v70];
        [a3 setBytes:v86 length:48 atIndex:30];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        v92 = v50 - v49;
        v93 = vdupq_n_s64(1uLL);
        v84 = v88;
        v85 = v93;
        [a3 dispatchThreads:&v92 threadsPerThreadgroup:&v84];
      }

      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [a3 setComputePipelineState:v79];
      if (v50 != v49)
      {
        v54 = 0;
        v55 = v75;
        if ((v50 + v77) <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = v50 + v77;
        }

        v57 = v72;
        do
        {
          v58 = [v31 objectAtIndexedSubscript:v49 + v54];
          if ([v58 primitiveCount])
          {
            [a3 setBuffer:a7 offset:v55 atIndex:0];
            [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v58 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v58, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
            [a3 setBuffer:objc_msgSend(v58 offset:"indexBuffer") atIndex:{objc_msgSend(v58, "indexBufferOffset"), 4}];
            LODWORD(v92) = v49 + v54;
            LODWORD(v84) = [v58 polygonType];
            v59 = [v58 vertexStride];
            v60 = [v58 vertexFormat];
            if (!v59)
            {
              LODWORD(v59) = MTLAttributeFormatSize(v60, v61, v62, v63, v64, v65, v66, v67);
            }

            v91 = v59;
            if ([v58 indexBuffer])
            {
              if ([v58 indexType])
              {
                v68 = 4;
              }

              else
              {
                v68 = 2;
              }
            }

            else
            {
              v68 = 0;
            }

            v90 = v68;
            [a3 setBytes:&v92 length:4 atIndex:9];
            [a3 setBytes:&v84 length:4 atIndex:10];
            [a3 setBytes:&v91 length:4 atIndex:11];
            [a3 setBytes:&v90 length:4 atIndex:12];
            if (self->_supportsDispatchThreadsWithIndirectBuffer)
            {
              *v86 = self->_threadgroupSize;
              *&v86[8] = vdupq_n_s64(1uLL);
              [a3 dispatchThreadgroupsWithIndirectBuffer:v80 indirectBufferOffset:v57 threadsPerThreadgroup:v86];
            }

            else
            {
              [(MTLGPUBVHBuilder *)self dispatchIndirect:v79 indirectBuffer:v80 indirectBufferOffset:v89 * v54 threadCountBuffer:a7 threadCountBufferOffset:a8 threadCountIndex:v49 + v54 threadgroupDivisor:self->_threadgroupSize encoder:a3];
            }
          }

          ++v54;
          v57 += 12;
          v55 += 4;
        }

        while (v56 != v54);
      }

      v49 += 4;
      v75 += 16;
      v77 -= 4;
    }

    while (v73 < v71);
    goto LABEL_60;
  }

  [a3 setComputePipelineState:v79];
  if (v32)
  {
    v34 = 0;
    v83 = vdupq_n_s64(1uLL);
    do
    {
      v35 = [v31 objectAtIndexedSubscript:v34];
      LODWORD(v84) = [v35 primitiveCount];
      if (v84)
      {
        [a3 setBytes:&v84 length:4 atIndex:0];
        [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v35 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v35, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
        [a3 setBuffer:objc_msgSend(v35 offset:"indexBuffer") atIndex:{objc_msgSend(v35, "indexBufferOffset"), 4}];
        LODWORD(v89) = v34;
        LODWORD(v88) = [v35 polygonType];
        v36 = [v35 vertexStride];
        v37 = [v35 vertexFormat];
        if (!v36)
        {
          LODWORD(v36) = MTLAttributeFormatSize(v37, v38, v39, v40, v41, v42, v43, v44);
        }

        v91 = v36;
        if ([v35 indexBuffer])
        {
          if ([v35 indexType])
          {
            v45 = 4;
          }

          else
          {
            v45 = 2;
          }
        }

        else
        {
          v45 = 0;
        }

        v90 = v45;
        [a3 setBytes:&v89 length:4 atIndex:9];
        [a3 setBytes:&v88 length:4 atIndex:10];
        [a3 setBytes:&v91 length:4 atIndex:11];
        [a3 setBytes:&v90 length:4 atIndex:12];
        v46 = self->_threadgroupSize;
        *v86 = (v84 + v46 - 1) / v46;
        *&v86[8] = v83;
        v92 = v46;
        v93 = v83;
        [a3 dispatchThreadgroups:v86 threadsPerThreadgroup:&v92];
      }

      ++v34;
    }

    while (v32 != v34);
  }
}

- (void)getBoundingBoxFragmentsWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 primitiveCountBuffer:(id)a7 primitiveCountBufferOffset:(unint64_t)a8 fragmentBuffer:(id)a9 fragmentBufferOffset:(unint64_t)a10 fragmentCountBuffer:(id)a11 fragmentCountBufferOffset:(unint64_t)a12 boundsMinBuffer:(id)a13 boundsMinBufferOffset:(unint64_t)a14 boundsMaxBuffer:(id)a15 boundsMaxBufferOffset:(unint64_t)a16 boundsEndMinBuffer:(id)a17 boundsEndMinBufferOffset:(unint64_t)a18 boundsEndMaxBuffer:(id)a19 boundsEndMaxBufferOffset:(unint64_t)a20 boundsEndTimeBuffer:(id)a21 boundsEndTimeBufferOffset:(unint64_t)a22 boundsStartTimeBuffer:(id)a23 boundsStartTimeBufferOffset:(unint64_t)a24 fragmentScratchBuffer:(id)a25 fragmentScratchBufferOffset:(unint64_t)a26
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_FRAGMENTS, a4);
  v97[0] = 3;
  v84 = [a4 deterministic];
  if (v84)
  {
    KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS = self->KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS;
    v97[0] = 3;
    memset(v90, 0, 40);
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS, a4, p_pipelineCache->baseThreadgroupSize, v97, v90);
    v68 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v90, 0);
    v97[0] |= 4u;
    v31 = self->KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS;
    memset(v90, 0, 40);
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, v31, a4, p_pipelineCache->baseThreadgroupSize, v97, v90);
    v81 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v90, 0);
  }

  else
  {
    v81 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS, a4);
    v68 = 0;
  }

  [a3 setBuffer:a11 offset:a12 atIndex:1];
  [a3 setBuffer:a9 offset:a10 atIndex:2];
  [a3 setBuffer:a13 offset:a14 atIndex:7];
  [a3 setBuffer:a15 offset:a16 atIndex:8];
  if ([a4 primitiveMotion])
  {
    LODWORD(v90[0]) = [a4 primitiveKeyframeCount];
    [a3 setBytes:v90 length:4 atIndex:12];
    [a4 primitiveMotionStartTime];
    LODWORD(v95) = v32;
    [a3 setBytes:&v95 length:4 atIndex:13];
    [a4 primitiveMotionEndTime];
    LODWORD(v93) = v33;
    [a3 setBytes:&v93 length:4 atIndex:14];
  }

  if ([a4 motion])
  {
    [a3 setBuffer:a17 offset:a18 atIndex:17];
    [a3 setBuffer:a19 offset:a20 atIndex:18];
    [a3 setBuffer:a23 offset:a24 atIndex:19];
    [a3 setBuffer:a21 offset:a22 atIndex:20];
  }

  [a3 setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v90[0] = vdupq_n_s64(1uLL);
  *&v90[1] = 1;
  v95 = threadgroupSize;
  v96 = v90[0];
  [a3 dispatchThreadgroups:v90 threadsPerThreadgroup:&v95];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v87 = [a4 geometryDescriptors];
  v35 = [v87 count];
  v95 = 0;
  v96 = 0uLL;
  if (v84)
  {
    std::vector<unsigned long>::resize(&v95, v35);
    v36 = 0;
    if (v35)
    {
      for (i = 0; i != v35; ++i)
      {
        v38 = [objc_msgSend(v87 objectAtIndexedSubscript:{i), "primitiveCount"}];
        v95[i] = 4 * v36;
        if (v38)
        {
          v36 += (v38 + self->_threadgroupSize - 1) / self->_threadgroupSize;
        }
      }
    }

    v66 = 4 * v36;
    if (a7)
    {
      [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_ZERO_BUFFER, p_pipelineCache->baseThreadgroupSize, 0)}];
      [a3 setBuffer:a25 offset:a26 atIndex:0];
      LODWORD(v88) = v36;
      [a3 setBytes:&v88 length:4 atIndex:1];
      v39 = self->_threadgroupSize;
      *&v90[0] = (v36 + v39 - 1) / v39;
      *(v90 + 8) = vdupq_n_s64(1uLL);
      v93 = v39;
      v94 = *(v90 + 8);
      [a3 dispatchThreadgroups:v90 threadsPerThreadgroup:&v93];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [a3 setBuffer:a11 offset:a12 atIndex:1];
      v69 = 2;
      goto LABEL_23;
    }

    v69 = 2;
  }

  else
  {
    v66 = 0;
    v36 = 0;
    v69 = 1;
    if (a7)
    {
LABEL_23:
      v91 = 0;
      v92 = 0;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        v83 = a5;
        KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
        memset(v90 + 8, 0, 32);
        *&v90[0] = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(p_pipelineCache->baseThreadgroupSize) & 0xF) << 45);
        v72 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v90, &v91);
        v73 = a6 + 200;
      }

      else
      {
        v41 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:a3];
        if ([v87 count] <= 4)
        {
          v42 = [v87 count];
        }

        else
        {
          v42 = 4;
        }

        v83 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:v42 withRetainedResources:v41 indirectBufferStride:&v92];
        v72 = 0;
        v73 = 0;
      }

      v51 = 0;
      v71 = self->_threadgroupSize;
      v67 = v35;
      do
      {
        v70 = v51;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          v52 = v35;
        }

        else
        {
          v52 = 1;
        }

        v75 = v52;
        if (v52)
        {
          v53 = 0;
          v54 = 0;
          v55 = v68;
          if ((v84 & (v51 == 0)) == 0)
          {
            v55 = v81;
          }

          v74 = v55;
          v79 = a8;
          v80 = 0;
          do
          {
            v56 = v54 + 4;
            v77 = v54 + 4;
            if (v54 + 4 >= [v87 count])
            {
              v56 = [v87 count];
            }

            if (self->_supportsDispatchThreadsWithIndirectBuffer)
            {
              *&v90[0] = a8 + 4 * v54 + [a7 gpuAddress];
              *(&v90[0] + 1) = [v83 gpuAddress] + v73;
              if (v56 != v54)
              {
                v57 = 0;
                v58 = v56 + v80;
                if ((v56 + v80) <= 1)
                {
                  v58 = 1;
                }

                v59 = &v90[1] + 1;
                do
                {
                  *(v59 - 2) = 4 * v57;
                  *(v59 - 1) = 12 * v57;
                  *v59 = v71;
                  v59 += 2;
                  ++v57;
                }

                while (v58 != v57);
              }

              [a3 setComputePipelineState:v72];
              [a3 setBytes:v90 length:48 atIndex:30];
              if ([a3 dispatchType] == 1)
              {
                [a3 memoryBarrierWithScope:1];
              }

              v93 = v56 - v54;
              v94 = vdupq_n_s64(1uLL);
              v88 = v91;
              v89 = v94;
              [a3 dispatchThreads:&v93 threadsPerThreadgroup:&v88];
            }

            if ([a3 dispatchType] == 1)
            {
              [a3 memoryBarrierWithScope:1];
            }

            [a3 setComputePipelineState:v74];
            if (v56 != v54)
            {
              v60 = 0;
              if ((v56 + v80) <= 1)
              {
                v61 = 1;
              }

              else
              {
                v61 = v56 + v80;
              }

              v62 = v79;
              v63 = v73;
              do
              {
                v64 = [v87 objectAtIndexedSubscript:v54 + v60];
                if ([v64 primitiveCount])
                {
                  [a3 setBuffer:a7 offset:v62 atIndex:0];
                  if (v84)
                  {
                    [a3 setBuffer:a25 offset:v95[v53 + v60] + a26 atIndex:21];
                  }

                  [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v64 offset:"boundingBoxBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v64, "boundingBoxBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
                  LODWORD(v93) = v54 + v60;
                  LODWORD(v88) = [v64 boundingBoxStride];
                  [a3 setBytes:&v93 length:4 atIndex:9];
                  [a3 setBytes:&v88 length:4 atIndex:10];
                  if (self->_supportsDispatchThreadsWithIndirectBuffer)
                  {
                    *&v90[0] = self->_threadgroupSize;
                    *(v90 + 8) = vdupq_n_s64(1uLL);
                    [a3 dispatchThreadgroupsWithIndirectBuffer:v83 indirectBufferOffset:v63 threadsPerThreadgroup:v90];
                  }

                  else
                  {
                    [(MTLGPUBVHBuilder *)self dispatchIndirect:v81 indirectBuffer:v83 indirectBufferOffset:v92 * v60 threadCountBuffer:a7 threadCountBufferOffset:a8 threadCountIndex:v54 + v60 threadgroupDivisor:self->_threadgroupSize encoder:a3];
                  }
                }

                ++v60;
                v63 += 12;
                v62 += 4;
              }

              while (v61 != v60);
            }

            v54 += 4;
            v79 += 16;
            v80 -= 4;
            v53 += 4;
          }

          while (v77 < v75);
        }

        v65 = v84;
        if (v70)
        {
          v65 = 0;
        }

        if (v65)
        {
          [(MTLGPUBVHBuilder *)self prefixSumWithEncoder:a3 inputBuffer:a25 inputBufferOffset:a26 reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:a25 scratchBufferOffset:v66 countBuffer:0 countBufferOffset:0 capacity:v36];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }
        }

        v51 = v70 + 1;
        v35 = v67;
      }

      while (v70 + 1 != v69);

      goto LABEL_87;
    }
  }

  v43 = v35;
  for (j = 0; j != v69; ++j)
  {
    v45 = j == 0;
    v46 = v84 & v45;
    if ((v84 & v45) != 0)
    {
      v47 = v68;
    }

    else
    {
      v47 = v81;
    }

    [a3 setComputePipelineState:v47];
    if (v43)
    {
      for (k = 0; k != v43; ++k)
      {
        v49 = [v87 objectAtIndexedSubscript:k];
        LODWORD(v88) = [v49 primitiveCount];
        if (v88)
        {
          [a3 setBytes:&v88 length:4 atIndex:0];
          if (v84)
          {
            [a3 setBuffer:a25 offset:v95[k] + a26 atIndex:21];
          }

          [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v49 offset:"boundingBoxBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v49, "boundingBoxBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
          LODWORD(v92) = k;
          LODWORD(v91) = [v49 boundingBoxStride];
          [a3 setBytes:&v92 length:4 atIndex:9];
          [a3 setBytes:&v91 length:4 atIndex:10];
          v50 = self->_threadgroupSize;
          *&v90[0] = (v88 + v50 - 1) / v50;
          *(v90 + 8) = vdupq_n_s64(1uLL);
          v93 = v50;
          v94 = *(v90 + 8);
          [a3 dispatchThreadgroups:v90 threadsPerThreadgroup:&v93];
        }
      }
    }

    if (v46)
    {
      [(MTLGPUBVHBuilder *)self prefixSumWithEncoder:a3 inputBuffer:a25 inputBufferOffset:a26 reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:a25 scratchBufferOffset:v66 countBuffer:0 countBufferOffset:0 capacity:v36];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }
    }
  }

LABEL_87:
  if (v95)
  {
    *&v96 = v95;
    operator delete(v95);
  }
}

- (void)getCurveFragmentsWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 primitiveCountBuffer:(id)a7 primitiveCountBufferOffset:(unint64_t)a8 fragmentBuffer:(id)a9 fragmentBufferOffset:(unint64_t)a10 fragmentCountBuffer:(id)a11 fragmentCountBufferOffset:(unint64_t)a12 boundsMinBuffer:(id)a13 boundsMinBufferOffset:(unint64_t)a14 boundsMaxBuffer:(id)a15 boundsMaxBufferOffset:(unint64_t)a16 boundsEndMinBuffer:(id)a17 boundsEndMinBufferOffset:(unint64_t)a18 boundsEndMaxBuffer:(id)a19 boundsEndMaxBufferOffset:(unint64_t)a20 boundsEndTimeBuffer:(id)a21 boundsEndTimeBufferOffset:(unint64_t)a22 boundsStartTimeBuffer:(id)a23 boundsStartTimeBufferOffset:(unint64_t)a24
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_FRAGMENTS, a4);
  v61 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_GET_CURVE_FRAGMENTS, a4);
  v29 = a4;
  [a3 setBuffer:a11 offset:a12 atIndex:1];
  [a3 setBuffer:a9 offset:a10 atIndex:2];
  [a3 setBuffer:a13 offset:a14 atIndex:7];
  [a3 setBuffer:a15 offset:a16 atIndex:8];
  if ([a4 primitiveMotion])
  {
    *v67 = [a4 primitiveKeyframeCount];
    [a3 setBytes:v67 length:4 atIndex:14];
    [a4 primitiveMotionStartTime];
    LODWORD(v71) = v30;
    [a3 setBytes:&v71 length:4 atIndex:15];
    [a4 primitiveMotionEndTime];
    LODWORD(v65) = v31;
    [a3 setBytes:&v65 length:4 atIndex:16];
    [a3 setBuffer:a17 offset:a18 atIndex:17];
    [a3 setBuffer:a19 offset:a20 atIndex:18];
    [a3 setBuffer:a23 offset:a24 atIndex:19];
    [a3 setBuffer:a21 offset:a22 atIndex:20];
  }

  [a3 setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v67 = vdupq_n_s64(1uLL);
  *&v67[16] = 1;
  v71 = threadgroupSize;
  v72 = *v67;
  [a3 dispatchThreadgroups:v67 threadsPerThreadgroup:&v71];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v33 = [v29 geometryDescriptors];
  v34 = [v33 count];
  if (a7)
  {
    v69 = 0;
    v70 = 0;
    v62 = a7;
    if (self->_supportsDispatchThreadsWithIndirectBuffer)
    {
      v35 = a5;
      KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
      v54 = a6 + 200;
      v68 = 0u;
      *&v67[8] = 0u;
      *v67 = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(p_pipelineCache->baseThreadgroupSize) & 0xF) << 45);
      v52 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v67, &v69);
    }

    else
    {
      v39 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:a3];
      if ([v33 count] <= 4)
      {
        v40 = [v33 count];
      }

      else
      {
        v40 = 4;
      }

      v35 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:v40 withRetainedResources:v39 indirectBufferStride:&v70];
      v52 = 0;
      v54 = 0;
    }

    if (self->_supportsDispatchThreadsWithIndirectBuffer)
    {
      v41 = v34;
    }

    else
    {
      v41 = 1;
    }

    v53 = v41;
    if (v41)
    {
      v42 = 0;
      v51 = self->_threadgroupSize;
      v58 = a8;
      v59 = 0;
      do
      {
        v43 = v42 + 4;
        v56 = v42 + 4;
        if (v42 + 4 >= [v33 count])
        {
          v43 = [v33 count];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          *v67 = a8 + 4 * v42 + [v62 gpuAddress];
          *&v67[8] = [v35 gpuAddress] + v54;
          if (v43 != v42)
          {
            v44 = 0;
            v45 = v43 + v59;
            if ((v43 + v59) <= 1)
            {
              v45 = 1;
            }

            v46 = &v67[20];
            do
            {
              *(v46 - 2) = 4 * v44;
              *(v46 - 1) = 12 * v44;
              *v46 = v51;
              v46 += 2;
              ++v44;
            }

            while (v45 != v44);
          }

          [a3 setComputePipelineState:v52];
          [a3 setBytes:v67 length:48 atIndex:30];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          v71 = v43 - v42;
          v72 = vdupq_n_s64(1uLL);
          v65 = v69;
          v66 = v72;
          [a3 dispatchThreads:&v71 threadsPerThreadgroup:&v65];
        }

        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        [a3 setComputePipelineState:v61];
        if (v43 != v42)
        {
          v47 = 0;
          if ((v43 + v59) <= 1)
          {
            v48 = 1;
          }

          else
          {
            v48 = v43 + v59;
          }

          v49 = v58;
          v50 = v54;
          do
          {
            if ([objc_msgSend(v33 objectAtIndexedSubscript:{v42 + v47), "primitiveCount"}])
            {
              [a3 setBuffer:v62 offset:v49 atIndex:0];
              LODWORD(v71) = v42 + v47;
              [a3 setBytes:&v71 length:4 atIndex:9];
              if (self->_supportsDispatchThreadsWithIndirectBuffer)
              {
                *v67 = self->_threadgroupSize;
                *&v67[8] = vdupq_n_s64(1uLL);
                [a3 dispatchThreadgroupsWithIndirectBuffer:v35 indirectBufferOffset:v50 threadsPerThreadgroup:v67];
              }

              else
              {
                [(MTLGPUBVHBuilder *)self dispatchIndirect:v61 indirectBuffer:v35 indirectBufferOffset:v70 * v47 threadCountBuffer:v62 threadCountBufferOffset:a8 threadCountIndex:v42 + v47 threadgroupDivisor:self->_threadgroupSize encoder:a3];
              }
            }

            ++v47;
            v50 += 12;
            v49 += 4;
          }

          while (v48 != v47);
        }

        v42 += 4;
        v58 += 16;
        v59 -= 4;
      }

      while (v56 < v53);
    }
  }

  else
  {
    [a3 setComputePipelineState:v61];
    if (v34)
    {
      v37 = 0;
      v64 = vdupq_n_s64(1uLL);
      do
      {
        LODWORD(v65) = [objc_msgSend(v33 objectAtIndexedSubscript:{v37), "primitiveCount"}];
        if (v65)
        {
          [a3 setBytes:&v65 length:4 atIndex:0];
          LODWORD(v70) = v37;
          [a3 setBytes:&v70 length:4 atIndex:9];
          v38 = self->_threadgroupSize;
          *v67 = (v65 + v38 - 1) / v38;
          *&v67[8] = v64;
          v71 = v38;
          v72 = v64;
          [a3 dispatchThreadgroups:v67 threadsPerThreadgroup:&v71];
        }

        ++v37;
      }

      while (v34 != v37);
    }
  }
}

- (void)buildWithEncoder:(id)a3 descriptor:(id)a4 scratchBuffer:(id)a5 scratchBufferOffset:(unint64_t)a6 fragmentBuffer:(id)a7 fragmentBufferOffset:(unint64_t)a8 fragmentIndexBuffer0:(id)a9 fragmentIndexBuffer0Offset:(unint64_t)a10 nodeBuffer:(id)a11 nodeBufferOffset:(unint64_t)a12 childIndexBuffer:(id)a13 childIndexBufferOffset:(unint64_t)a14 counterBuffer:(id)a15 counterBufferOffset:(unint64_t)a16 fragmentCountBuffer:(id)a17 fragmentCountBufferOffset:(unint64_t)a18 boundsMinBuffer:(id)a19 boundsMinBufferOffset:(unint64_t)a20 boundsMaxBuffer:(id)a21 boundsMaxBufferOffset:(unint64_t)a22 boundsEndMinBuffer:(id)a23 boundsEndMinBufferOffset:(unint64_t)a24 boundsEndMaxBuffer:(id)a25 boundsEndMaxBufferOffset:(unint64_t)a26 boundsEndTimeBuffer:(id)a27 boundsEndTimeBufferOffset:(unint64_t)a28 boundsStartTimeBuffer:(id)a29 boundsStartTimeBufferOffset:(unint64_t)a30 scratchBufferOffsets:(ScratchBufferOffset *)a31
{
  v307 = *MEMORY[0x1E69E9840];
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a4 fragmentCapacity:&v300 fragmentIndexCapacity:&v296 innerNodeCapacity:&v299 leafNodeCapacity:&v298 primitiveDataCapacity:&v297];
  var1 = a31->var1;
  var2 = a31->var2;
  v224 = [a4 fragmentCount];
  v35 = 0;
  v36 = 0;
  if (v296 > 0x2000)
  {
    batchSize = self->_batchSize;
    v38 = (v296 + batchSize) / (batchSize + 1);
    if (v38 >= 2)
    {
      v35 = 2 * v38;
    }

    else
    {
      v35 = 2;
    }

    if ((v296 + batchSize - 1) / batchSize <= 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = (v296 + batchSize - 1) / batchSize;
    }
  }

  v39 = 8 * v298 + 255;
  v250 = (a6 + 255) & 0xFFFFFFFFFFFFFF00;
  v254 = (v39 + v250) & 0xFFFFFFFFFFFFFF00;
  v203 = v39 + v254;
  v204 = v39 + v254 + 768 * v36;
  v40 = 192 * v36 + 255;
  v205 = (v204 + 768 * v36) & 0xFFFFFFFFFFFFFF00;
  v206 = (v40 + v205) & 0xFFFFFFFFFFFFFF00;
  v207 = (v40 + v206) & 0xFFFFFFFFFFFFFF00;
  v41 = 24 * v35 + 255;
  v208 = (v40 + v207) & 0xFFFFFFFFFFFFFF00;
  [a4 motion];
  if ([a4 motion])
  {
    v42 = 140;
  }

  else
  {
    v42 = 76;
  }

  [a4 motion];
  if ([a4 motion])
  {
    v43 = 768 * v36;
  }

  else
  {
    v43 = 0;
  }

  v198 = v43;
  [a4 motion];
  if ([a4 motion])
  {
    v44 = 768 * v36;
  }

  else
  {
    v44 = 0;
  }

  v197 = v44;
  [a4 motion];
  if ([a4 motion])
  {
    v45 = 192 * v36 + 255;
  }

  else
  {
    v45 = 0;
  }

  v196 = v45;
  [a4 motion];
  [a4 motion];
  obj = [a4 geometryDescriptors];
  v46 = v296;
  v240 = [MTLBVHBuilder useTemporalSplitsForDescriptor:a4];
  v222 = v46;
  if (v46 <= 0x2000)
  {
    v48 = &OBJC_IVAR___MTLGPUBVHBuilder__dispatchBinsTGSize;
    dispatchBinsTGSize = 256;
  }

  else
  {
    dispatchBinsTGSize = self->_dispatchBinsTGSize;
    v48 = &OBJC_IVAR___MTLGPUBVHBuilder__dispatchBinsSmallTGSize;
  }

  v243 = *(&self->super.super.isa + *v48);
  binningTGSize = self->_binningTGSize;
  spatialBinningTGSize = self->_spatialBinningTGSize;
  splitTGSize = self->_splitTGSize;
  v49 = [a4 minPrimitivesPerLeaf];
  v210 = [a4 maxPrimitivesPerLeaf];
  v295 = [(MTLGPUBVHBuilder *)self maxDepthForDescriptor:a4];
  v219 = [a4 maxPrimitivesPerInnerNode];
  if (v219)
  {
    if ([a4 minPrimitivesPerInnerNode] <= (2 * v49))
    {
      v50 = 2 * v49;
    }

    else
    {
      v50 = [a4 minPrimitivesPerInnerNode];
    }

    [a4 setMinPrimitivesPerLeaf:v50];
    [a4 setMaxPrimitivesPerLeaf:{objc_msgSend(a4, "maxPrimitivesPerInnerNode")}];
    [a4 updatePipelineKey];
  }

  v211 = v49;
  v218 = (v41 + v208) & 0xFFFFFFFFFFFFFF00;
  v51 = v41 + v218;
  v239 = [a4 deterministic];
  if (v219)
  {
    v52 = 2;
  }

  else
  {
    v52 = 3;
  }

  v294 = v52;
  v293 = 0;
  v291 = 0u;
  v292 = 0u;
  v237 = dispatchBinsTGSize;
  PipelineCache<PipelineKey>::getPipelineKey(&self->_pipelineCache, self->KERNEL_INDEX_DISPATCH_BINS, a4, dispatchBinsTGSize, &v294, &v291);
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, &v291);
  v238 = 0;
  if ([a4 branchingFactor] != 2)
  {
    KERNEL_INDEX_DISPATCH_BINS_WIDE_low = LOBYTE(self->KERNEL_INDEX_DISPATCH_BINS_WIDE);
    *v301 = v291;
    *&v301[16] = v292;
    *&v301[32] = v293;
    v54 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_DISPATCH_BINS_WIDE_low;
    if (dispatchBinsTGSize)
    {
      v54 = v54 & 0xFFFE1FFFFFFFFFFFLL | ((log2(dispatchBinsTGSize) & 0xFLL) << 45);
    }

    *v301 = v54;
    v238 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  }

  v55 = v51 & 0xFFFFFFFFFFFFFF00;
  KERNEL_INDEX_DISPATCH_BINS_low = LOBYTE(self->KERNEL_INDEX_DISPATCH_BINS);
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v57 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_DISPATCH_BINS_low;
  if (v243)
  {
    v57 = v57 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v243) & 0xFLL) << 45);
  }

  v58 = v55 + v42 * v35;
  *v301 = v57;
  v241 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  if ([a4 branchingFactor] == 2)
  {
    v242 = 0;
    v59 = binningTGSize;
  }

  else
  {
    v60 = LOBYTE(self->KERNEL_INDEX_DISPATCH_BINS_WIDE);
    *v301 = v291;
    *&v301[16] = v292;
    *&v301[32] = v293;
    v61 = v291 & 0xFFFFFFFFFFFFFF00 | v60;
    if (v243)
    {
      v61 = v61 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v243) & 0xFLL) << 45);
    }

    v59 = binningTGSize;
    *v301 = v61;
    v242 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  }

  v62 = v58 + 255;
  KERNEL_INDEX_BIN_FRAGMENTS_low = LOBYTE(self->KERNEL_INDEX_BIN_FRAGMENTS);
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v64 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_BIN_FRAGMENTS_low;
  if (v59)
  {
    v64 = v64 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v59) & 0xFLL) << 45);
  }

  v257 = v62 & 0xFFFFFFFFFFFFFF00;
  v65 = 4 * v36 + 255;
  *v301 = v64;
  v235 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  KERNEL_INDEX_CLEAR_BATCHES_low = LOBYTE(self->KERNEL_INDEX_CLEAR_BATCHES);
  threadgroupSize = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v68 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_CLEAR_BATCHES_low;
  if (threadgroupSize)
  {
    v68 = v68 & 0xFFFE1FFFFFFFFFFFLL | ((log2(threadgroupSize) & 0xFLL) << 45);
  }

  *v301 = v68;
  v249 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  KERNEL_INDEX_CREATE_BVH_NODES_low = LOBYTE(self->KERNEL_INDEX_CREATE_BVH_NODES);
  v70 = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v71 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_CREATE_BVH_NODES_low;
  if (v70)
  {
    v71 = v71 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v70) & 0xFLL) << 45);
  }

  v252 = (v65 + v257) & 0xFFFFFFFFFFFFFF00;
  *v301 = v71;
  v234 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  KERNEL_INDEX_FIND_BEST_SPLIT_low = LOBYTE(self->KERNEL_INDEX_FIND_BEST_SPLIT);
  v73 = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v74 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_FIND_BEST_SPLIT_low;
  v202 = v55;
  if (v73)
  {
    v74 = v74 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v73) & 0xFLL) << 45);
  }

  v75 = 16 * v36;
  v76 = v65 + v252;
  *v301 = v74;
  v233 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  if (v239)
  {
    LODWORD(v289) = v52;
    KERNEL_INDEX_SPLIT_FRAGMENTS = self->KERNEL_INDEX_SPLIT_FRAGMENTS;
    memset(v301, 0, sizeof(v301));
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_SPLIT_FRAGMENTS, a4, splitTGSize, &v289, v301);
    v230 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, 0);
    KERNEL_INDEX_SPLIT_FRAGMENTS_PREFIX_SUM = self->KERNEL_INDEX_SPLIT_FRAGMENTS_PREFIX_SUM;
    memset(v301, 0, sizeof(v301));
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_SPLIT_FRAGMENTS_PREFIX_SUM, a4, 0x400uLL, &v289, v301);
    v229 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, 0);
    LODWORD(v289) = v289 | 4;
    v79 = self->KERNEL_INDEX_SPLIT_FRAGMENTS;
    memset(v301, 0, sizeof(v301));
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, v79, a4, splitTGSize, &v289, v301);
    v232 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, 0);
    v80 = &self->_pipelineCache;
    v81 = v218;
  }

  else
  {
    KERNEL_INDEX_SPLIT_FRAGMENTS_low = LOBYTE(self->KERNEL_INDEX_SPLIT_FRAGMENTS);
    *v301 = v291;
    *&v301[16] = v292;
    *&v301[32] = v293;
    v83 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_SPLIT_FRAGMENTS_low;
    if (splitTGSize)
    {
      v83 = v83 & 0xFFFE1FFFFFFFFFFFLL | ((log2(splitTGSize) & 0xFLL) << 45);
    }

    v81 = v218;
    *v301 = v83;
    v80 = &self->_pipelineCache;
    v232 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
    v229 = 0;
    v230 = 0;
  }

  v84 = v76 & 0xFFFFFFFFFFFFFF00;
  v85 = v75 + 255;
  KERNEL_INDEX_BIN_FRAGMENTS_SPATIAL_low = LOBYTE(self->KERNEL_INDEX_BIN_FRAGMENTS_SPATIAL);
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v87 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_BIN_FRAGMENTS_SPATIAL_low;
  if (spatialBinningTGSize)
  {
    v87 = v87 & 0xFFFE1FFFFFFFFFFFLL | ((log2(spatialBinningTGSize) & 0xFLL) << 45);
  }

  v201 = v84;
  v88 = v85 + v84;
  *v301 = v87;
  v228 = PipelineCache<PipelineKey>::getPipeline(v80, v301);
  KERNEL_INDEX_FIND_BEST_SPATIAL_SPLIT_low = LOBYTE(self->KERNEL_INDEX_FIND_BEST_SPATIAL_SPLIT);
  v90 = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v91 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_FIND_BEST_SPATIAL_SPLIT_low;
  if (v90)
  {
    v91 = v91 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v90) & 0xFLL) << 45);
  }

  v92 = v88 & 0xFFFFFFFFFFFFFF00;
  *v301 = v91;
  v227 = PipelineCache<PipelineKey>::getPipeline(v80, v301);
  KERNEL_INDEX_INITIALIZE_QUEUE_low = LOBYTE(self->KERNEL_INDEX_INITIALIZE_QUEUE);
  v94 = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v95 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_INITIALIZE_QUEUE_low;
  if (v94)
  {
    v95 = v95 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v94) & 0xFLL) << 45);
  }

  v96 = v85 + v92;
  *v301 = v95;
  v97 = PipelineCache<PipelineKey>::getPipeline(v80, v301);
  KERNEL_INDEX_INITIALIZE_FRAGMENT_INDICES_low = LOBYTE(self->KERNEL_INDEX_INITIALIZE_FRAGMENT_INDICES);
  v99 = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v100 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_INITIALIZE_FRAGMENT_INDICES_low;
  if (v99)
  {
    v100 = v100 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v99) & 0xFLL) << 45);
  }

  v260 = v96 & 0xFFFFFFFFFFFFFF00;
  *v301 = v100;
  v101 = PipelineCache<PipelineKey>::getPipeline(v80, v301);
  KERNEL_INDEX_COPY_FRAGMENT_INDICES_low = LOBYTE(self->KERNEL_INDEX_COPY_FRAGMENT_INDICES);
  v103 = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v104 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_COPY_FRAGMENT_INDICES_low;
  v220 = a4;
  v200 = v101;
  if (v103)
  {
    v104 = v104 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v103) & 0xFLL) << 45);
  }

  *v301 = v104;
  v209 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  KERNEL_INDEX_FINISH_BUILD_ITERATION_low = LOBYTE(self->KERNEL_INDEX_FINISH_BUILD_ITERATION);
  v106 = self->_threadgroupSize;
  *v301 = v291;
  *&v301[16] = v292;
  *&v301[32] = v293;
  v107 = v291 & 0xFFFFFFFFFFFFFF00 | KERNEL_INDEX_FINISH_BUILD_ITERATION_low;
  if (v106)
  {
    v107 = v107 & 0xFFFE1FFFFFFFFFFFLL | ((log2(v106) & 0xFLL) << 45);
  }

  v263 = (v260 + 275) & 0xFFFFFFFFFFFFFF00;
  *v301 = v107;
  v246 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
  if (v240)
  {
    KERNEL_INDEX_BIN_FRAGMENTS_TEMPORAL = self->KERNEL_INDEX_BIN_FRAGMENTS_TEMPORAL;
    LODWORD(v289) = v52;
    memset(v301, 0, sizeof(v301));
    v109 = a4;
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_BIN_FRAGMENTS_TEMPORAL, a4, binningTGSize, &v289, v301);
    v226 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
    v225 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_FIND_BEST_TEMPORAL_SPLIT, a4, v219 == 0, 1);
  }

  else
  {
    v225 = 0;
    v226 = 0;
    v109 = a4;
  }

  [a3 setBuffer:a11 offset:a12 atIndex:0];
  [a3 setBuffer:a5 offset:v250 atIndex:1];
  [a3 setBuffer:a9 offset:a10 atIndex:2];
  [a3 setBuffer:a17 offset:a18 atIndex:3];
  [a3 setBytes:&v296 length:8 atIndex:4];
  [a3 setBuffer:a19 offset:a20 atIndex:5];
  [a3 setBuffer:a21 offset:a22 atIndex:6];
  [a3 setBuffer:a5 offset:v260 atIndex:7];
  [a3 setBuffer:a15 offset:a16 atIndex:8];
  v110 = v109;
  if ([v109 motion])
  {
    [a3 setBuffer:a23 offset:a24 atIndex:9];
    v110 = v220;
    v81 = v218;
    [a3 setBuffer:a25 offset:a26 atIndex:10];
    [a3 setBuffer:a29 offset:a30 atIndex:11];
    [a3 setBuffer:a27 offset:a28 atIndex:12];
  }

  [a3 setBytes:&v295 length:4 atIndex:13];
  [a3 setBuffer:a5 offset:v263 atIndex:30];
  if (v240)
  {
    [v110 primitiveMotionStartTime];
    *v301 = v111;
    [v110 primitiveMotionEndTime];
    *&v301[4] = v112;
    *&v301[8] = [v110 primitiveKeyframeCount];
    *&v301[12] = var2 - var1;
    [a3 setBytes:v301 length:16 atIndex:14];
  }

  [a3 setComputePipelineState:v97];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v301 = vdupq_n_s64(1uLL);
  *&v301[16] = 1;
  v289 = self->_threadgroupSize;
  v290 = *v301;
  [a3 dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
  [(MTLGPUBVHBuilder *)self dispatchIndirect:v200 counterBuffer:a5 counterBufferOffset:v263 threadgroupSize:self->_threadgroupSize encoder:a3];
  [a3 setBuffer:a5 offset:v260 atIndex:0];
  [a3 setBuffer:a7 offset:a8 atIndex:2];
  [a3 setBuffer:a5 offset:v203 & 0xFFFFFFFFFFFFFF00 atIndex:7];
  [a3 setBuffer:a5 offset:v204 & 0xFFFFFFFFFFFFFF00 atIndex:8];
  [a3 setBuffer:a5 offset:v205 atIndex:9];
  [a3 setBuffer:a5 offset:v257 atIndex:10];
  [a3 setBuffer:a5 offset:v252 atIndex:11];
  [a3 setBuffer:a5 offset:v206 atIndex:12];
  [a3 setBuffer:a5 offset:v207 atIndex:13];
  [a3 setBuffer:a5 offset:v208 atIndex:14];
  [a3 setBuffer:a5 offset:v81 atIndex:15];
  [a3 setBuffer:a5 offset:v201 atIndex:16];
  [a3 setBuffer:a5 offset:v92 atIndex:17];
  [a3 setBuffer:a5 offset:v202 atIndex:18];
  [a3 setBuffer:a11 offset:a12 atIndex:19];
  [a3 setBuffer:a13 offset:a14 atIndex:24];
  [a3 setBuffer:a15 offset:a16 atIndex:22];
  [a3 setBuffer:a9 offset:a10 atIndex:3];
  [a3 setBuffer:a5 offset:var1 atIndex:4];
  if ([(MTLGPUBVHBuilder *)self useSpatialSplitsForDescriptor:v110])
  {
    if ([objc_msgSend(v110 "geometryDescriptors")])
    {
      v113 = [obj objectAtIndexedSubscript:0];
      [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v113 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v113, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 20}];
      v114 = [v113 indexBuffer];
      v115 = [v113 indexBufferOffset];
      v116 = a3;
      v117 = v114;
LABEL_81:
      [v116 setBuffer:v117 offset:v115 atIndex:21];
    }
  }

  else if ([v110 motion])
  {
    v118 = v263 + 267 + v198;
    v119 = (v118 + v197) & 0xFFFFFFFFFFFFFF00;
    [a3 setBuffer:a5 offset:(v263 + 267) & 0xFFFFFFFFFFFFFF00 atIndex:25];
    [a3 setBuffer:a5 offset:v118 & 0xFFFFFFFFFFFFFF00 atIndex:26];
    [a3 setBuffer:a5 offset:v119 atIndex:20];
    v115 = (v196 + v119) & 0xFFFFFFFFFFFFFF00;
    v116 = a3;
    v117 = a5;
    goto LABEL_81;
  }

  if ([v110 requiresResourceBuffer])
  {
    v287 = 0u;
    v288 = 0u;
    v285 = 0u;
    v286 = 0u;
    v261 = [obj countByEnumeratingWithState:&v285 objects:v306 count:16];
    if (v261)
    {
      v258 = *v286;
      do
      {
        for (i = 0; i != v261; ++i)
        {
          if (*v286 != v258)
          {
            objc_enumerationMutation(obj);
          }

          v121 = *(*(&v285 + 1) + 8 * i);
          v122 = objc_opt_class();
          if ([v122 isSubclassOfClass:objc_opt_class()])
          {
            v283 = 0u;
            v284 = 0u;
            v281 = 0u;
            v282 = 0u;
            v123 = [v121 vertexBuffers];
            v124 = [v123 countByEnumeratingWithState:&v281 objects:v305 count:16];
            if (v124)
            {
              v125 = v124;
              v126 = *v282;
              do
              {
                for (j = 0; j != v125; ++j)
                {
                  if (*v282 != v126)
                  {
                    objc_enumerationMutation(v123);
                  }

                  [a3 useResource:objc_msgSend(*(*(&v281 + 1) + 8 * j) usage:{"buffer"), 1}];
                }

                v125 = [v123 countByEnumeratingWithState:&v281 objects:v305 count:16];
              }

              while (v125);
            }

            if ([v121 indexBuffer])
            {
              [a3 useResource:objc_msgSend(v121 usage:{"indexBuffer"), 1}];
            }

            if ([v121 transformationMatrixBuffer])
            {
              v128 = [v121 transformationMatrixBuffer];
LABEL_125:
              [a3 useResource:v128 usage:1];
            }
          }

          else
          {
            v129 = objc_opt_class();
            if (![v129 isSubclassOfClass:objc_opt_class()])
            {
              v135 = objc_opt_class();
              if (![v135 isSubclassOfClass:objc_opt_class()])
              {
                goto LABEL_126;
              }

              v275 = 0u;
              v276 = 0u;
              v273 = 0u;
              v274 = 0u;
              v136 = [v121 controlPointBuffers];
              v137 = [v136 countByEnumeratingWithState:&v273 objects:v303 count:16];
              if (v137)
              {
                v138 = v137;
                v139 = *v274;
                do
                {
                  for (k = 0; k != v138; ++k)
                  {
                    if (*v274 != v139)
                    {
                      objc_enumerationMutation(v136);
                    }

                    [a3 useResource:objc_msgSend(*(*(&v273 + 1) + 8 * k) usage:{"buffer"), 1}];
                  }

                  v138 = [v136 countByEnumeratingWithState:&v273 objects:v303 count:16];
                }

                while (v138);
              }

              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              v141 = [v121 radiusBuffers];
              v142 = [v141 countByEnumeratingWithState:&v269 objects:v302 count:16];
              if (v142)
              {
                v143 = v142;
                v144 = *v270;
                do
                {
                  for (m = 0; m != v143; ++m)
                  {
                    if (*v270 != v144)
                    {
                      objc_enumerationMutation(v141);
                    }

                    [a3 useResource:objc_msgSend(*(*(&v269 + 1) + 8 * m) usage:{"buffer"), 1}];
                  }

                  v143 = [v141 countByEnumeratingWithState:&v269 objects:v302 count:16];
                }

                while (v143);
              }

              v128 = [v121 indexBuffer];
              goto LABEL_125;
            }

            v279 = 0u;
            v280 = 0u;
            v277 = 0u;
            v278 = 0u;
            v130 = [v121 boundingBoxBuffers];
            v131 = [v130 countByEnumeratingWithState:&v277 objects:v304 count:16];
            if (v131)
            {
              v132 = v131;
              v133 = *v278;
              do
              {
                for (n = 0; n != v132; ++n)
                {
                  if (*v278 != v133)
                  {
                    objc_enumerationMutation(v130);
                  }

                  [a3 useResource:objc_msgSend(*(*(&v277 + 1) + 8 * n) usage:{"buffer"), 1}];
                }

                v132 = [v130 countByEnumeratingWithState:&v277 objects:v304 count:16];
              }

              while (v132);
            }
          }

LABEL_126:
          if ([v121 primitiveDataBuffer])
          {
            [a3 useResource:objc_msgSend(v121 usage:{"primitiveDataBuffer"), 1}];
          }
        }

        v261 = [obj countByEnumeratingWithState:&v285 objects:v306 count:16];
      }

      while (v261);
    }
  }

  v146 = v220;
  v245 = [(MTLGPUBVHBuilder *)self useSpatialSplitsForDescriptor:v220];
  v215 = [v220 branchingFactor];
  [v220 branchingFactor];
  v268 = 0;
  if (v222 > 0x2000)
  {
    KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS);
    memset(&v301[8], 0, 32);
    *v301 = KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
    PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, &v268);
  }

  v148 = v295;
  v149 = v250;
  if (v295)
  {
    v150 = log2(v215);
    v151 = 0;
    v217 = v150;
    v152 = v240;
    if (v222 <= 0x2000)
    {
      v152 = 0;
    }

    v213 = v152;
    while (1)
    {
      v267 = 0;
      v153 = v151 == v148 - 1 || v219 == 0;
      v154 = v151 != v148 - 1 || v219 == 0;
      if (v153)
      {
        v155 = v148;
      }

      else
      {
        v155 = v148 - 1;
      }

      v223 = v151;
      v266[0] = v151;
      v266[1] = v155;
      [a3 setBytes:v266 length:12 atIndex:1];
      v156 = v149;
      [a3 setBuffer:a5 offset:v149 atIndex:5];
      [a3 setBuffer:a5 offset:v254 atIndex:6];
      if (!v154)
      {
        [v146 setMinPrimitivesPerLeaf:v211];
        [v146 setMaxPrimitivesPerLeaf:v210];
        [v146 updatePipelineKey];
        v295 = [v146 maxDepth];
        LODWORD(v265) = 9;
        KERNEL_INDEX_DISPATCH_BINS = self->KERNEL_INDEX_DISPATCH_BINS;
        memset(v301, 0, sizeof(v301));
        PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_DISPATCH_BINS, v146, v243, &v265, v301);
        v241 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, 0);
        v242 = 0;
        if ([v146 branchingFactor] != 2)
        {
          KERNEL_INDEX_DISPATCH_BINS_WIDE = self->KERNEL_INDEX_DISPATCH_BINS_WIDE;
          memset(v301, 0, sizeof(v301));
          PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_DISPATCH_BINS_WIDE, v146, v243, &v265, v301);
          v242 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, 0);
        }

        v159 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_ENQUEUE_LEAF_NODE_SPLITS, v146, self->_threadgroupSize);
        v289 = [a15 gpuAddress] + a16;
        *&v290 = 0;
        [(MTLGPUBVHBuilder *)self setCounters:&v289 numCounters:1 encoder:a3];
        v160 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [a3 setComputePipelineState:v159];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v160;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 1536 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v159 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:6 threadgroupDivisor:v160 threadgroupSize:v160 encoder:a3];
        }
      }

      v161 = [v146 useFastBuild];
      v162 = 0;
      if (v161 && v215 >= 3)
      {
        v162 = [v146 deterministic] ^ 1;
      }

      v259 = v162;
      v163 = [v146 branchingFactor] - 1;
      v265 = 0;
      if (v222 <= 0x2000)
      {
        v244 = 0;
        if (v163 >= 2)
        {
          v163 = 2;
        }
      }

      else
      {
        v164 = LOBYTE(self->KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS);
        memset(&v301[8], 0, 32);
        *v301 = v164 | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
        v244 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, &v265);
      }

      v165 = v156;
      v166 = v254;
      v167 = v215 - 1;
      if (v154)
      {
        v167 = v217;
      }

      v168 = v259 ? v167 : v163;
      if (v168)
      {
        break;
      }

      v191 = v254;
      v192 = v165;
LABEL_285:
      v254 = v192;
      [a3 setComputePipelineState:v246];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      *v301 = vdupq_n_s64(1uLL);
      *&v301[16] = 1;
      v289 = self->_threadgroupSize;
      v290 = *v301;
      [a3 dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
      v193 = (v224 * 1.08);
      if (!v245)
      {
        v193 = v224;
      }

      v224 = ((1.4 / v215) * v193);
      v151 = v223 + 1;
      v148 = v295;
      v149 = v191;
      v146 = v220;
      if (v223 + 1 >= v295)
      {
        goto LABEL_290;
      }
    }

    v169 = 0;
    v170 = v222 > 0x2000 && v154;
    v262 = v170;
    if (v223)
    {
      v171 = v259;
    }

    else
    {
      v171 = 0;
    }

    obja = v154 & v171;
    v172 = v224 > 0x100 && v154;
    v253 = v172;
    while (1)
    {
      [a3 setBuffer:a5 offset:v165 atIndex:5];
      [a3 setBuffer:a5 offset:v166 atIndex:6];
      if (v262)
      {
        [a3 setComputePipelineState:v244];
        *v301 = vdupq_n_s64(1uLL);
        *&v301[16] = 1;
        v289 = v265;
        v290 = *v301;
        [a3 dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
      }

      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      if (v169)
      {
        v173 = 1;
      }

      else
      {
        v173 = obja;
      }

      if ((v173 & (v259 | v213)) == 1)
      {
        v267 = v169;
        [a3 setBytes:v266 length:12 atIndex:1];
      }

      if (v253)
      {
        if (v173)
        {
          v174 = v238;
        }

        else
        {
          v174 = Pipeline;
        }

        [a3 setComputePipelineState:v174];
        v175 = v237;
      }

      else
      {
        if (v173)
        {
          v176 = v242;
        }

        else
        {
          v176 = v241;
        }

        [a3 setComputePipelineState:v176];
        v175 = v243;
      }

      *v301 = v175;
      *&v301[8] = vdupq_n_s64(1uLL);
      [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 threadsPerThreadgroup:v301];
      if (!v262)
      {
        goto LABEL_275;
      }

      v251 = v165;
      v177 = self->_threadgroupSize;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        [a3 setComputePipelineState:v249];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        *v301 = v177;
        *&v301[8] = vdupq_n_s64(1uLL);
        [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 512 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v249 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
      }

      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        v178 = binningTGSize;
        if (!binningTGSize)
        {
          v178 = self->_threadgroupSize;
        }

        [a3 setComputePipelineState:v235];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        *v301 = v178;
        *&v301[8] = vdupq_n_s64(1uLL);
        [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 1024 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v235 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:4 threadgroupDivisor:1 threadgroupSize:binningTGSize encoder:a3];
      }

      v179 = self->_threadgroupSize;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        [a3 setComputePipelineState:v233];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        *v301 = v179;
        *&v301[8] = vdupq_n_s64(1uLL);
        [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 512 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v233 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
      }

      if (v245)
      {
        v180 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [a3 setComputePipelineState:v249];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v180;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 512 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v249 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          v181 = spatialBinningTGSize;
          if (!spatialBinningTGSize)
          {
            v181 = self->_threadgroupSize;
          }

          [a3 setComputePipelineState:v228];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v181;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 1280 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v228 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:5 threadgroupDivisor:1 threadgroupSize:spatialBinningTGSize encoder:a3];
        }

        v182 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [a3 setComputePipelineState:v227];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v182;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 768 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v227 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:3 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
        }
      }

      if (v240)
      {
        v183 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [a3 setComputePipelineState:v249];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v183;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 512 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v249 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          v184 = binningTGSize;
          if (!binningTGSize)
          {
            v184 = self->_threadgroupSize;
          }

          [a3 setComputePipelineState:v226];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v184;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 1280 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v226 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:5 threadgroupDivisor:1 threadgroupSize:binningTGSize encoder:a3];
        }

        v185 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [a3 setComputePipelineState:v225];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v185;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 768 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v225 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:3 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
        }
      }

      supportsDispatchThreadsWithIndirectBuffer = self->_supportsDispatchThreadsWithIndirectBuffer;
      if (v239)
      {
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          v187 = splitTGSize;
          if (!splitTGSize)
          {
            v187 = self->_threadgroupSize;
          }

          [a3 setComputePipelineState:v230];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v187;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 1024 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v230 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:4 threadgroupDivisor:1 threadgroupSize:splitTGSize encoder:a3];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [a3 setComputePipelineState:v229];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = xmmword_185DC62D0;
          *&v301[16] = 1;
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 512 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v229 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:2 threadgroupDivisor:1 threadgroupSize:1024 encoder:a3];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
LABEL_264:
          v188 = splitTGSize;
          if (!splitTGSize)
          {
            v188 = self->_threadgroupSize;
          }

          [a3 setComputePipelineState:v232];
          if ([a3 dispatchType] == 1)
          {
            [a3 memoryBarrierWithScope:1];
          }

          *v301 = v188;
          *&v301[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 1024 threadsPerThreadgroup:v301];
          goto LABEL_269;
        }
      }

      else if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        goto LABEL_264;
      }

      [(MTLGPUBVHBuilder *)self dispatchIndirect:v232 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:4 threadgroupDivisor:1 threadgroupSize:splitTGSize encoder:a3];
LABEL_269:
      v189 = self->_threadgroupSize;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        [a3 setComputePipelineState:v234];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        *v301 = v189;
        *&v301[8] = vdupq_n_s64(1uLL);
        [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 512 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v234 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
      }

      v165 = v251;
LABEL_275:
      v190 = v259 ^ 1;
      if (v168 == 1)
      {
        v190 = 1;
      }

      if (v190)
      {
        v191 = v166;
        v166 = v165;
      }

      else
      {
        [a3 setComputePipelineState:v246];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        *v301 = vdupq_n_s64(1uLL);
        *&v301[16] = 1;
        v289 = self->_threadgroupSize;
        v290 = *v301;
        [a3 dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
        v191 = v165;
        v165 = v166;
      }

      ++v169;
      v192 = v166;
      v166 = v191;
      if (!--v168)
      {
        goto LABEL_285;
      }
    }
  }

LABEL_290:
  v194 = self->_threadgroupSize;
  if (self->_supportsDispatchThreadsWithIndirectBuffer)
  {
    [a3 setComputePipelineState:v209];
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    *v301 = v194;
    *&v301[8] = vdupq_n_s64(1uLL);
    [a3 dispatchThreadgroupsWithIndirectBuffer:a15 indirectBufferOffset:a16 + 1536 threadsPerThreadgroup:v301];
  }

  else
  {
    [(MTLGPUBVHBuilder *)self dispatchIndirect:v209 indirectBuffer:a5 indirectBufferOffset:v263 counterBuffer:a15 counterBufferOffset:a16 counterIndex:6 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:a3];
  }

  v195 = *MEMORY[0x1E69E9840];
}

- (void)writeBVHHeaderWithEncoder:(id)a3 descriptor:(id)a4 tmpCounterBuffer:(id)a5 tmpCounterBufferOffset:(unint64_t)a6 nodeBuffer:(id)a7 nodeBufferOffset:(unint64_t)a8 headerBuffer:(id)a9 headerBufferOffset:(unint64_t)a10 nodeOffset:(unint64_t)a11 fragmentOffset:(unint64_t)a12 fragmentIndexOffset:(unint64_t)a13 childIndexOffset:(unint64_t)a14 size:(unint64_t)a15
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_BVH_METADATA, a4);
  [a3 setBuffer:a5 offset:a6 atIndex:0];
  [a3 setBuffer:a7 offset:a8 atIndex:1];
  [a3 setBuffer:a9 offset:a10 atIndex:2];
  v30 = a12;
  v31 = a11;
  v28 = a14;
  v29 = a13;
  v27 = a15;
  [a3 setBytes:&v31 length:8 atIndex:3];
  [a3 setBytes:&v30 length:8 atIndex:4];
  [a3 setBytes:&v29 length:8 atIndex:5];
  [a3 setBytes:&v28 length:8 atIndex:6];
  [a3 setBytes:&v27 length:8 atIndex:7];
  [a3 setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v24 = vdupq_n_s64(1uLL);
  v25 = v24;
  v26 = 1;
  v23 = threadgroupSize;
  [a3 dispatchThreadgroups:&v25 threadsPerThreadgroup:&v23];
}

- (void)initializeCounterBuffer:(id)a3 counterBuffer:(id)a4 counterBufferOffset:(unint64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  binningTGSize = self->_binningTGSize;
  spatialBinningTGSize = self->_spatialBinningTGSize;
  threadgroupSize = self->_threadgroupSize;
  v16 = vdupq_n_s32(threadgroupSize);
  v17 = binningTGSize;
  v18 = spatialBinningTGSize;
  v19 = v16;
  v20 = threadgroupSize;
  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_COUNTERS, self->_pipelineCache.baseThreadgroupSize, 0)}];
  [a3 setBuffer:a4 offset:a5 atIndex:29];
  [a3 setBytes:&v16 length:44 atIndex:30];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v14 = xmmword_185DC62E0;
  v15 = 1;
  v12 = xmmword_185DC62F0;
  v13 = 1;
  [a3 dispatchThreads:&v14 threadsPerThreadgroup:&v12];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)buildGenericBVHWithEncoder:(id)a3 descriptor:(id)a4 outputBuffer:(id)a5 outputBufferOffset:(unint64_t)a6 scratchBuffer:(id)a7 scratchBufferOffset:(unint64_t)a8 primitiveCountBuffer:(id)a9 primitiveCountBufferOffset:(unint64_t)a10
{
  if ([a4 splitHeuristic] != 2)
  {
    v16 = [a4 splitHeuristic];
    if (v16 != 3)
    {
      [(MTLGPUBVHBuilder *)v16 buildGenericBVHWithEncoder:v17 descriptor:v18 outputBuffer:v19 outputBufferOffset:v20 scratchBuffer:v21 scratchBufferOffset:v22 primitiveCountBuffer:v23 primitiveCountBufferOffset:v69];
    }
  }

  v24 = [a4 branchingFactor];
  if (v24 < 2 || (v24 = [a4 branchingFactor], v24 >= 9))
  {
    [(MTLGPUBVHBuilder *)v24 buildGenericBVHWithEncoder:v25 descriptor:v26 outputBuffer:v27 outputBufferOffset:v28 scratchBuffer:v29 scratchBufferOffset:v30 primitiveCountBuffer:v31 primitiveCountBufferOffset:v69];
  }

  v32 = [MTLGPUBVHBuilder supportsDevice:self->_device];
  if ((v32 & 1) == 0)
  {
    [(MTLGPUBVHBuilder *)v32 buildGenericBVHWithEncoder:v33 descriptor:v34 outputBuffer:v35 outputBufferOffset:v36 scratchBuffer:v37 scratchBufferOffset:v38 primitiveCountBuffer:v39 primitiveCountBufferOffset:v69];
  }

  v97 = 0;
  v98 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a4 fragmentCapacity:&v98 fragmentIndexCapacity:&v94 innerNodeCapacity:&v97 leafNodeCapacity:&v96 primitiveDataCapacity:&v95];
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v85 = [(MTLGPUBVHBuilder *)self getGenericBVHSizeForDescriptor:a4 nodeOffset:&v93 fragmentOffset:&v92 fragmentIndexOffset:&v91 childIndexOffset:&v90];
  [a4 updatePipelineKey];
  v83 = [(MTLGPUBVHBuilder *)self fragmentScratchSizeForDescriptor:a4];
  v40 = v94;
  v79 = a8 + 255;
  v41 = (((a8 + 255) | 0xFC) + 4 * v94) & 0xFFFFFFFFFFFFFF00;
  v42 = [a4 maxSubKeyframeTemporalSplits];
  v43 = 2 * v40 + 255;
  if (!v42)
  {
    v43 = 0;
  }

  v80 = v41;
  v87 = (v43 + v41) & 0xFFFFFFFFFFFFFF00;
  v82 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
  v81 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
  v44 = (v81 + 271) & 0xFFFFFFFFFFFFFF00;
  v45 = 256;
  if ([a4 motion])
  {
    v46 = 256;
  }

  else
  {
    v46 = 0;
  }

  v47 = v46 + ((v44 + 3071) & 0xFFFFFFFFFFFFFF00);
  if ([a4 motion])
  {
    v48 = 256;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48 + v47;
  if ([a4 motion])
  {
    v50 = 256;
  }

  else
  {
    v50 = 0;
  }

  v86 = v49;
  v51 = v50 + v49;
  if (![a4 motion])
  {
    v45 = 0;
  }

  v84 = (v81 + 271) & 0xFFFFFFFFFFFFFF00;
  [(MTLGPUBVHBuilder *)self initializeCounterBuffer:a3 counterBuffer:a7 counterBufferOffset:v44];
  v88 = a3;
  v52 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:a3];
  if ([a4 requiresResourceBuffer])
  {
    [(MTLGPUBVHBuilder *)self setResourceBufferWithDescriptor:a4 retainedResources:v52 onEncoder:v88 atIndex:23];
  }

  v53 = v45 + v51;
  v77 = v45 + v51;
  if ([objc_msgSend(a4 "geometryDescriptors")] && objc_msgSend(objc_msgSend(objc_msgSend(a4, "geometryDescriptors"), "objectAtIndexedSubscript:", 0), "primitiveType"))
  {
    v74 = self;
    v75 = v51;
    v54 = a5;
    if ([objc_msgSend(objc_msgSend(a4 "geometryDescriptors")] == 1)
    {
      v55 = a6;
      v56 = v92 + a6;
      v73 = v53;
      v57 = v75;
      v70 = v47;
      v58 = v47;
      v59 = v55;
      v60 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
      [(MTLGPUBVHBuilder *)v74 getBoundingBoxFragmentsWithEncoder:v88 descriptor:a4 outputBuffer:a5 outputBufferOffset:v55 primitiveCountBuffer:a9 primitiveCountBufferOffset:a10 fragmentBuffer:a5 fragmentBufferOffset:v56 fragmentCountBuffer:a7 fragmentCountBufferOffset:v87 boundsMinBuffer:a7 boundsMinBufferOffset:v82 boundsMaxBuffer:a7 boundsMaxBufferOffset:v81 boundsEndMinBuffer:a7 boundsEndMinBufferOffset:(v44 + 3071) & 0xFFFFFFFFFFFFFF00 boundsEndMaxBuffer:a7 boundsEndMaxBufferOffset:v70 boundsEndTimeBuffer:a7 boundsEndTimeBufferOffset:v86 boundsStartTimeBuffer:a7 boundsStartTimeBufferOffset:v75 fragmentScratchBuffer:a7 fragmentScratchBufferOffset:v73];
      v61 = v86;
      v62 = v74;
      v63 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
      v64 = (v44 + 3071) & 0xFFFFFFFFFFFFFF00;
LABEL_30:
      v67 = v58;
      v66 = v57;
      goto LABEL_31;
    }

    v68 = [objc_msgSend(objc_msgSend(a4 "geometryDescriptors")];
    v67 = v47;
    v59 = a6;
    v64 = (v44 + 3071) & 0xFFFFFFFFFFFFFF00;
    v63 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
    v60 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
    v61 = v86;
    v62 = self;
    v66 = v75;
    if (v68 == 2)
    {
      v57 = v75;
      v58 = v67;
      [(MTLGPUBVHBuilder *)v74 getCurveFragmentsWithEncoder:v88 descriptor:a4 outputBuffer:a5 outputBufferOffset:v59 primitiveCountBuffer:a9 primitiveCountBufferOffset:a10 fragmentBuffer:a5 fragmentBufferOffset:v92 + v59 fragmentCountBuffer:a7 fragmentCountBufferOffset:v87 boundsMinBuffer:a7 boundsMinBufferOffset:v82 boundsMaxBuffer:a7 boundsMaxBufferOffset:v81 boundsEndMinBuffer:a7 boundsEndMinBufferOffset:v64 boundsEndMaxBuffer:a7 boundsEndMaxBufferOffset:v67 boundsEndTimeBuffer:a7 boundsEndTimeBufferOffset:v86 boundsStartTimeBuffer:a7 boundsStartTimeBufferOffset:v75];
      v61 = v86;
      goto LABEL_30;
    }
  }

  else
  {
    v65 = v92 + a6;
    v72 = v51;
    v71 = v47;
    v76 = v47;
    v59 = a6;
    v64 = (v44 + 3071) & 0xFFFFFFFFFFFFFF00;
    v66 = v51;
    v54 = a5;
    v63 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
    v60 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
    [(MTLGPUBVHBuilder *)self getPolygonFragmentsWithEncoder:v88 descriptor:a4 outputBuffer:a5 outputBufferOffset:v59 primitiveCountBuffer:a9 primitiveCountBufferOffset:a10 fragmentBuffer:a5 fragmentBufferOffset:v65 fragmentCountBuffer:a7 fragmentCountBufferOffset:v87 boundsMinBuffer:a7 boundsMinBufferOffset:v82 boundsMaxBuffer:a7 boundsMaxBufferOffset:v81 boundsEndMinBuffer:a7 boundsEndMinBufferOffset:v64 boundsEndMaxBuffer:a7 boundsEndMaxBufferOffset:v71 boundsEndTimeBuffer:a7 boundsEndTimeBufferOffset:v86 boundsStartTimeBuffer:a7 boundsStartTimeBufferOffset:v72];
    v61 = v86;
    v62 = self;
    v67 = v76;
  }

LABEL_31:
  v89[0] = 0;
  v89[1] = v79 & 0xFFFFFFFFFFFFFF00;
  v89[2] = v80;
  [(MTLGPUBVHBuilder *)v62 buildWithEncoder:v88 descriptor:a4 scratchBuffer:a7 scratchBufferOffset:v77 + v83 fragmentBuffer:v54 fragmentBufferOffset:v92 + v59 fragmentIndexBuffer0:v54 fragmentIndexBuffer0Offset:v91 + v59 nodeBuffer:v54 nodeBufferOffset:v93 + v59 childIndexBuffer:v54 childIndexBufferOffset:v90 + v59 counterBuffer:a7 counterBufferOffset:v84 fragmentCountBuffer:a7 fragmentCountBufferOffset:v87 boundsMinBuffer:a7 boundsMinBufferOffset:v60 boundsMaxBuffer:a7 boundsMaxBufferOffset:v63 boundsEndMinBuffer:a7 boundsEndMinBufferOffset:v64 boundsEndMaxBuffer:a7 boundsEndMaxBufferOffset:v67 boundsEndTimeBuffer:a7 boundsEndTimeBufferOffset:v61 boundsStartTimeBuffer:a7 boundsStartTimeBufferOffset:v66 scratchBufferOffsets:v89];
  [(MTLGPUBVHBuilder *)v62 writeBVHHeaderWithEncoder:v88 descriptor:a4 tmpCounterBuffer:a7 tmpCounterBufferOffset:v84 nodeBuffer:v54 nodeBufferOffset:v93 + v59 headerBuffer:v54 headerBufferOffset:v59 nodeOffset:v93 fragmentOffset:v92 fragmentIndexOffset:v91 childIndexOffset:v90 size:v85];
}

+ (unint64_t)prefixSumScratchBufferSizeWithCapacity:(unint64_t)a3
{
  if (a3 < 0x201)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = a3 + 511;
    a3 = (a3 + 511) >> 9;
    v3 += v4 >> 9;
  }

  while (a3 > 0x200);
  return 4 * v3;
}

- (void)threadgroupPrefixSumWithEncoder:(id)a3 inputBuffer:(id)a4 inputBufferOffset:(unint64_t)a5 reducedBuffer:(id)a6 reducedBufferOffset:(unint64_t)a7 countBuffer:(id)a8 countBufferOffset:(unint64_t)a9 capacity:(unint64_t)a10
{
  if (a6)
  {
    v14 = a7;
  }

  else
  {
    v14 = a5;
  }

  v15 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_PREFIX_SUM_REDUCE;
  if (!a6)
  {
    v15 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_PREFIX_SUM;
  }

  v16 = *(&self->super.super.isa + *v15);
  if (a6)
  {
    v17 = a6;
  }

  else
  {
    v17 = a4;
  }

  v21 = 0u;
  v22 = 0u;
  v20 = v16 | 0xE00000000000;
  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, &v20)}];
  [a3 setBuffer:a4 offset:a5 atIndex:28];
  [a3 setBuffer:v17 offset:v14 atIndex:29];
  if (a8)
  {
    [a3 setBuffer:a8 offset:a9 atIndex:30];
  }

  else
  {
    LODWORD(v20) = a10;
    [a3 setBytes:&v20 length:4 atIndex:30];
  }

  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v19 = 1;
  v20 = (a10 + 511) >> 9;
  v21 = vdupq_n_s64(1uLL);
  v18 = xmmword_185DC6300;
  [a3 dispatchThreadgroups:&v20 threadsPerThreadgroup:&v18];
}

- (void)addPrefixSumsWithEncoder:(id)a3 inputBuffer:(id)a4 inputBufferOffset:(unint64_t)a5 reducedBuffer:(id)a6 reducedBufferOffset:(unint64_t)a7 countBuffer:(id)a8 countBufferOffset:(unint64_t)a9 capacity:(unint64_t)a10
{
  KERNEL_INDEX_PREFIX_SUM_ADD_low = LOBYTE(self->KERNEL_INDEX_PREFIX_SUM_ADD);
  v20 = 0u;
  v21 = 0u;
  v19 = KERNEL_INDEX_PREFIX_SUM_ADD_low | 0xE00000000000;
  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, &v19)}];
  [a3 setBuffer:a4 offset:a5 atIndex:28];
  [a3 setBuffer:a6 offset:a7 atIndex:29];
  if (a8)
  {
    [a3 setBuffer:a8 offset:a9 atIndex:30];
  }

  else
  {
    LODWORD(v19) = a10;
    [a3 setBytes:&v19 length:4 atIndex:30];
  }

  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v18 = 1;
  v19 = (a10 + 511) >> 9;
  v20 = vdupq_n_s64(1uLL);
  v17 = xmmword_185DC6300;
  [a3 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
}

- (void)prefixSumWithEncoder:(id)a3 inputBuffer:(id)a4 inputBufferOffset:(unint64_t)a5 reducedBuffer:(id)a6 reducedBufferOffset:(unint64_t)a7 scratchBuffer:(id)a8 scratchBufferOffset:(unint64_t)a9 countBuffer:(id)a10 countBufferOffset:(unint64_t)a11 capacity:(unint64_t)a12
{
  if (a12)
  {
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    if (a12 > 0x200)
    {
      [(MTLGPUBVHBuilder *)self threadgroupPrefixSumWithEncoder:a3 inputBuffer:a4 inputBufferOffset:a5 reducedBuffer:a8 reducedBufferOffset:a9 countBuffer:a10 countBufferOffset:a11 capacity:a12];
      [(MTLGPUBVHBuilder *)self prefixSumWithEncoder:a3 inputBuffer:a8 inputBufferOffset:a9 reducedBuffer:a6 reducedBufferOffset:a7 scratchBuffer:a8 scratchBufferOffset:a9 + 4 * ((a12 + 511) >> 9) countBuffer:0 countBufferOffset:0 capacity:(a12 + 511) >> 9];

      [MTLGPUBVHBuilder addPrefixSumsWithEncoder:"addPrefixSumsWithEncoder:inputBuffer:inputBufferOffset:reducedBuffer:reducedBufferOffset:countBuffer:countBufferOffset:capacity:" inputBuffer:a3 inputBufferOffset:a4 reducedBuffer:a5 reducedBufferOffset:a8 countBuffer:a9 countBufferOffset:a10 capacity:?];
    }

    else
    {

      [MTLGPUBVHBuilder threadgroupPrefixSumWithEncoder:"threadgroupPrefixSumWithEncoder:inputBuffer:inputBufferOffset:reducedBuffer:reducedBufferOffset:countBuffer:countBufferOffset:capacity:" inputBuffer:a3 inputBufferOffset:a4 reducedBuffer:a5 reducedBufferOffset:a6 countBuffer:a7 countBufferOffset:a10 capacity:?];
    }
  }
}

- (void)layoutNodesBreadthFirstWithEncoder:(id)a3 descriptor:(id)a4 BVHBuffer:(id)a5 BVHBufferOffset:(unint64_t)a6 counterBuffer:(id)a7 counterBufferOffset:(unint64_t)a8 nodeMappingBuffer:(id)a9 nodeMappingBufferOffset:(unint64_t)a10 levelOffsetsBuffer:(id)a11 levelOffsetsBufferOffset:(unint64_t)a12 levelCountsBuffer:(id)a13 levelCountsBufferOffset:(unint64_t)a14 scratchBuffer:(id)a15 scratchBufferOffset:(unint64_t)a16
{
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a4 fragmentCapacity:&v61 innerNodeCapacity:&v60 leafNodeCapacity:&v59 primitiveDataCapacity:&v58];
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  [(MTLGPUBVHBuilder *)self getGenericBVHSizeForDescriptor:a4 nodeOffset:&v57 fragmentOffset:&v56 fragmentIndexOffset:&v55 childIndexOffset:&v54];
  v44 = [MTLGPUBVHBuilder prefixSumScratchBufferSizeWithCapacity:v59]+ a16;
  v39 = v44 + 4 * v59;
  v21 = v39 + 4 * v59;
  v22 = v21 + 4 * v59;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_THREADGROUP_BREADTH_FIRST_LAYOUT, a4, self->_maxThreadsPerThreadgroup.width);
  v48 = self;
  v49 = a4;
  v24 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_INIT, a4);
  v40 = Pipeline;
  v25 = [Pipeline maxTotalThreadsPerThreadgroup];
  v26 = log2(v59);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v47 = v25;
  if (v25 < exp2(ceil(v26)))
  {
    v43 = PipelineCache<PipelineKey>::getPipeline(&v48->_pipelineCache, v48->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_FINISH_ITERATION, v49);
    v42 = PipelineCache<PipelineKey>::getPipeline(&v48->_pipelineCache, v48->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_CLASSIFY, v49);
    v41 = PipelineCache<PipelineKey>::getPipeline(&v48->_pipelineCache, v48->KERNEL_INDEX_BREADTH_FIRST_LAYOUT, v49);
  }

  [a3 setBuffer:a15 offset:v21 atIndex:0];
  [a3 setBuffer:a15 offset:v22 atIndex:1];
  [a3 setBuffer:a15 offset:v44 atIndex:2];
  [a3 setBuffer:a15 offset:v39 atIndex:3];
  [a3 setBuffer:a5 offset:v57 + a6 atIndex:4];
  [a3 setBuffer:a5 offset:v54 + a6 atIndex:5];
  [a3 setBuffer:a7 offset:a8 atIndex:6];
  [a3 setBuffer:a9 offset:a10 atIndex:7];
  [a3 setBuffer:a11 offset:a12 atIndex:8];
  [a3 setBuffer:a13 offset:a14 atIndex:9];
  [a3 setComputePipelineState:v24];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v53 = vdupq_n_s64(1uLL);
  *&v53[16] = 1;
  threadgroupSize = v48->_threadgroupSize;
  v52 = *v53;
  [a3 dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
  v27 = log2([v49 branchingFactor]);
  if ([v49 maxDepth])
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = v22;
      [a3 setBuffer:a15 offset:v21 atIndex:0];
      [a3 setBuffer:a15 offset:v22 atIndex:1];
      v50 = v29;
      [a3 setBytes:&v50 length:4 atIndex:10];
      if (1 << v28 >= v59)
      {
        v31 = v59;
      }

      else
      {
        v31 = 1 << v28;
      }

      v32 = log2(v31);
      v33 = exp2(ceil(v32));
      if (v47 >= v33)
      {
        [a3 setComputePipelineState:v40];
        v37 = [v49 branchingFactor];
        v38 = 2;
        if (v37 != 2)
        {
          v38 = 3;
        }

        [a3 setThreadgroupMemoryLength:((v33 << v38) + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        v36 = vdupq_n_s64(1uLL);
        *v53 = v36;
        *&v53[16] = 1;
        threadgroupSize = v33;
      }

      else
      {
        [a3 setComputePipelineState:v42];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        v34 = v48->_threadgroupSize;
        *v53 = (v31 - 1 + v34) / v34;
        *&v53[8] = vdupq_n_s64(1uLL);
        threadgroupSize = v34;
        v52 = *&v53[8];
        [a3 dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
        [(MTLGPUBVHBuilder *)v48 prefixSumWithEncoder:a3 inputBuffer:a15 inputBufferOffset:v44 reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:a15 scratchBufferOffset:a16 countBuffer:a7 countBufferOffset:a8 capacity:v31];
        if ([v49 branchingFactor] != 2)
        {
          [(MTLGPUBVHBuilder *)v48 prefixSumWithEncoder:a3 inputBuffer:a15 inputBufferOffset:v39 reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:a15 scratchBufferOffset:a16 countBuffer:a7 countBufferOffset:a8 capacity:v31];
        }

        [a3 setComputePipelineState:v41];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        v35 = v48->_threadgroupSize;
        *v53 = (v31 - 1 + v35) / v35;
        *&v53[8] = vdupq_n_s64(1uLL);
        threadgroupSize = v35;
        v52 = *&v53[8];
        [a3 dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
        [a3 setComputePipelineState:v43];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        v36 = vdupq_n_s64(1uLL);
        *v53 = v36;
        *&v53[16] = 1;
        threadgroupSize = v48->_threadgroupSize;
      }

      v52 = v36;
      [a3 dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
      ++v29;
      v28 += v27;
      v22 = v21;
      v21 = v30;
    }

    while (v29 < [v49 maxDepth]);
  }
}

- (unint64_t)getEncodeMTLSWBVHScratchBufferSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a4 fragmentCapacity:&v12 innerNodeCapacity:&v11 leafNodeCapacity:&v10 primitiveDataCapacity:&v9];
  v5 = (((((4 * (v11 + v10) + 255) & 0xFFFFFFFFFFFFFF00) + 3071) & 0xFFFFFFFFFFFFFF00) + 1023) & 0xFFFFFFFFFFFFFF00;
  v6 = ([MTLGPUBVHBuilder breadthFirstLayoutScratchBufferSizeWithLeafNodeCapacity:?]+ v5 + 255) & 0xFFFFFFFFFFFFFF00;
  v7 = (v6 + 4 * [a4 maxDepth] + 255) & 0xFFFFFFFFFFFFFF00;
  return v7 + 4 * [a4 maxDepth];
}

- ($D4F0DBFB58BF58C1D2D6E8FF21CEAEC6)getMTLSWBVHSizeAndOffsetsForDescriptor:(SEL)a3 bvhDescriptor:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  MTLSWBVHType = getMTLSWBVHType(a4);
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(a4);
  MTLSWBVHMotion = getMTLSWBVHMotion(a4);
  v12 = MTLSWBVHMotion;
  v13 = 44;
  if (!MTLSWBVHType)
  {
    v13 = 16;
  }

  v47 = v13;
  if (MTLSWBVHType)
  {
    v14 = 0;
  }

  else
  {
    if (MTLSWBVHPrimitiveType > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = *&a0_0[8 * MTLSWBVHPrimitiveType];
    }

    if (MTLSWBVHPrimitiveType - 1 >= 2 && !MTLSWBVHPrimitiveType)
    {
      v46 = 8;
      goto LABEL_12;
    }
  }

  v46 = 0;
LABEL_12:
  if (MTLSWBVHMotion)
  {
    v15 = 124;
  }

  else
  {
    v15 = 64;
  }

  if ([a5 primitiveMotion])
  {
    v14 *= [a5 primitiveKeyframeCount];
  }

  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a5 fragmentCapacity:&v56 fragmentIndexCapacity:&v52 innerNodeCapacity:&v55 leafNodeCapacity:&v54 primitiveDataCapacity:&v53];
  if (MTLSWBVHType)
  {
    v16 = objc_opt_class();
    if ([v16 isSubclassOfClass:objc_opt_class()])
    {
      v17 = [a4 instanceCount];
      if (v12)
      {
        v18 = [a4 motionTransformCount];
LABEL_33:
        v28 = v18;
        v26 = 0;
LABEL_38:
        v29 = 255;
        goto LABEL_39;
      }
    }

    else
    {
      v27 = objc_opt_class();
      if (![v27 isSubclassOfClass:objc_opt_class()])
      {
        v26 = 0;
        v28 = 0;
        v17 = 0;
        goto LABEL_38;
      }

      v17 = [a4 maxInstanceCount];
      if (v12)
      {
        v18 = [a4 maxMotionTransformCount];
        goto LABEL_33;
      }
    }

    v26 = 0;
    v29 = 255;
    v28 = v17;
    goto LABEL_39;
  }

  v19 = [objc_msgSend(a4 "geometryDescriptors")];
  if (MTLSWBVHPrimitiveType == 2 && (v50 = 0u, v51 = 0u, v48 = 0u, v49 = 0u, v20 = [a5 geometryDescriptors], (v21 = objc_msgSend(v20, "countByEnumeratingWithState:objects:count:", &v48, v57, 16)) != 0))
  {
    v22 = v21;
    v45 = v19;
    v23 = 0;
    v24 = *v49;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v23 += [*(*(&v48 + 1) + 8 * i) controlPointCount];
      }

      v22 = [v20 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v22);
    v26 = 16 * v23;
    v19 = v45;
  }

  else
  {
    v26 = 0;
  }

  v28 = 0;
  v17 = 0;
  v29 = 8 * v19 + 255;
LABEL_39:
  v30 = 256;
  retstr->var1 = 256;
  if ([a4 usage])
  {
    v30 = (8 * [a5 maxDepth] + 511) & 0xFFFFFFFFFFFFFF00;
  }

  v31 = v54;
  v32 = (v15 + v15 * v55 + v30 + 252) & 0xFFFFFFFFFFFFFF00;
  retstr->var2 = v30;
  retstr->var3 = v32;
  v33 = (v32 + v31 * v47 + 255) & 0xFFFFFFFFFFFFFF00;
  v34 = v33 + v52 * v14 + 255;
  retstr->var4 = v33;
  retstr->var5 = v34 & 0xFFFFFFFFFFFFFF00;
  if ([a5 motion])
  {
    v35 = [a5 primitiveKeyframeCount];
  }

  else
  {
    v35 = 1;
  }

  v36 = (v34 | 0xFF) + v35 * v26;
  retstr->var6 = v36 & 0xFFFFFFFFFFFFFF00;
  result = [a4 usage];
  v38 = ((v36 | 0xF8) + (((result << 63) >> 63) & (v52 * v46))) & 0xFFFFFFFFFFFFFF00;
  v39 = (v29 + v38) & 0xFFFFFFFFFFFFFF00;
  retstr->var7 = v38;
  retstr->var8 = v39;
  v40 = 8 * v17 + 255;
  v41 = (v40 + v39) & 0xFFFFFFFFFFFFFF00;
  v42 = (v41 + (v28 << 7) + 255) & 0xFFFFFFFFFFFFFF00;
  retstr->var9 = v41;
  retstr->var10 = v42;
  v43 = (v53 + v42 + 255) & 0xFFFFFFFFFFFFFF00;
  retstr->var11 = v43;
  retstr->var0 = (v40 + v43) & 0xFFFFFFFFFFFFFF00;
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4 refitDataOffset:(unint64_t *)a5 innerNodeOffset:(unint64_t *)a6 leafNodeOffset:(unint64_t *)a7 primitiveOffset:(unint64_t *)a8 controlPointOffset:(unint64_t *)a9 primitiveRefitDataOffset:(unint64_t *)a10 geometryOffset:(unint64_t *)a11 primitiveBVHOffset:(unint64_t *)a12 transformOffset:(unint64_t *)a13 instancedResourceIDsOffset:(unint64_t *)a14
{
  if (self)
  {
    [self getMTLSWBVHSizeAndOffsetsForDescriptor:a3 bvhDescriptor:a4];
    self = 0;
  }

  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  return self;
}

- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4
{
  if (self)
  {
    [self getMTLSWBVHSizeAndOffsetsForDescriptor:a3 bvhDescriptor:a4];
    return v4;
  }

  return self;
}

- (id)newGeometryBufferWithGeometryDescriptors:(id)a3 retainedResources:(id)a4
{
  v7 = [a3 count];
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(MTLDevice *)self->_device newBufferWithLength:8 * v8 options:0];
  v10 = [v9 contents];
  if (v7)
  {
    v11 = 0;
    v12 = (v10 + 4);
    do
    {
      v13 = [a3 objectAtIndexedSubscript:v11];
      *(v12 - 1) = [v13 opaque];
      *v12 = [v13 intersectionFunctionTableOffset];
      v12 += 2;
      ++v11;
    }

    while (v7 != v11);
  }

  [a4 addObject:v9];
  return v9;
}

- (void)setGeometryBufferWithGeometryDescriptors:(id)a3 retainedResources:(id)a4 onEncoder:(id)a5 atIndex:(unint64_t)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v11 = [a3 count];
  v12 = v11;
  if (v11 >= 0x11)
  {
    v20[0] = [(MTLDevice *)self->_device newBufferWithLength:8 * v11 options:0];
    v13 = [v20[0] contents];
  }

  else
  {
    v13 = v20 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, 8 * v11);
    if (!v12)
    {
LABEL_11:
      [a5 setBytes:v13 length:8 * v12 atIndex:a6];
      v19 = *MEMORY[0x1E69E9840];
      return;
    }

    v20[0] = 0;
  }

  v14 = 0;
  v15 = v13 + 4;
  do
  {
    v16 = [a3 objectAtIndexedSubscript:{v14, v20[0]}];
    *(v15 - 1) = [v16 opaque];
    *v15 = [v16 intersectionFunctionTableOffset];
    v15 += 2;
    ++v14;
  }

  while (v12 != v14);
  if (!v20[0])
  {
    goto LABEL_11;
  }

  [a4 addObject:v20[0]];
  v17 = *MEMORY[0x1E69E9840];
  v18 = v20[0];
}

- (void)encodeMTLSWBVHWithEncoder:(id)a3 descriptor:(id)a4 bvhDescriptor:(id)a5 outputBuffer:(id)a6 outputBufferOffset:(unint64_t)a7 genericBVHBuffer:(id)a8 genericBVHBufferOffset:(unint64_t)a9 scratchBuffer:(id)a10 scratchBufferOffset:(unint64_t)a11 gpuResourceID:(MTLResourceID)a12 accelerationStructureUniqueIdentifier:(unint64_t)a13
{
  v16 = self;
  v226 = *MEMORY[0x1E69E9840];
  v143 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v217 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  [(MTLBVHBuilder *)v16 getCapacitiesForDescriptor:a5 fragmentCapacity:&v218 innerNodeCapacity:&v217 leafNodeCapacity:&v216 primitiveDataCapacity:&v215];
  v213 = 0;
  v214 = 0;
  v211 = 0;
  v212 = 0;
  [(MTLGPUBVHBuilder *)v16 getGenericBVHSizeForDescriptor:a5 nodeOffset:&v214 fragmentOffset:&v213 fragmentIndexOffset:&v212 childIndexOffset:&v211];
  v210 = 0u;
  memset(&v209[1], 0, 80);
  if (v16)
  {
    [(MTLGPUBVHBuilder *)v16 getMTLSWBVHSizeAndOffsetsForDescriptor:a4 bvhDescriptor:a5];
  }

  v149 = a5;
  v17 = (((a11 + 255) | 0xFC) + 4 * (v217 + v216)) & 0xFFFFFFFFFFFFFF00;
  v148 = (v17 + 3071) & 0xFFFFFFFFFFFFFF00;
  v18 = ([MTLGPUBVHBuilder breadthFirstLayoutScratchBufferSizeWithLeafNodeCapacity:?]+ ((v148 + 1023) & 0xFFFFFFFFFFFFFF00) + 255) & 0xFFFFFFFFFFFFFF00;
  v19 = (v18 + 4 * [v149 maxDepth] + 255) & 0xFFFFFFFFFFFFFF00;
  [v149 maxDepth];
  [v149 updatePipelineKey];
  v134 = v18;
  v128 = a10;
  v135 = v19;
  v138 = v17;
  v20 = v149;
  [MTLGPUBVHBuilder layoutNodesBreadthFirstWithEncoder:v16 descriptor:"layoutNodesBreadthFirstWithEncoder:descriptor:BVHBuffer:BVHBufferOffset:counterBuffer:counterBufferOffset:nodeMappingBuffer:nodeMappingBufferOffset:levelOffsetsBuffer:levelOffsetsBufferOffset:levelCountsBuffer:levelCountsBufferOffset:scratchBuffer:scratchBufferOffset:" BVHBuffer:a3 BVHBufferOffset:v149 counterBuffer:a8 counterBufferOffset:a9 nodeMappingBuffer:? nodeMappingBufferOffset:? levelOffsetsBuffer:? levelOffsetsBufferOffset:? levelCountsBuffer:? levelCountsBufferOffset:? scratchBuffer:? scratchBufferOffset:?];
  MTLSWBVHType = getMTLSWBVHType(a4);
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(a4);
  MTLSWBVHMotion = getMTLSWBVHMotion(a4);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_BVH_NODE0, v149);
  v209[0] = 0;
  v208 = 0;
  p_pipelineCache = &v16->_pipelineCache;
  v145 = a4;
  v154 = MTLSWBVHPrimitiveType;
  v147 = MTLSWBVHType;
  if (!MTLSWBVHType)
  {
    v31 = a4;
    v136 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_PRIMITIVE_BVH, v149);
    v137 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_PRIMITIVE_BVH_INNER_NODE, v149);
    v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_ENCODE_MTL_CURVE_BVH_LEAF_NODE;
    if (MTLSWBVHPrimitiveType == 1)
    {
      v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_ENCODE_MTL_BBOX_BVH_LEAF_NODE;
    }

    if (!MTLSWBVHPrimitiveType)
    {
      v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_ENCODE_MTL_TRIANGLE_BVH_LEAF_NODE;
    }

    v131 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, *(&v16->super.super.isa + *v32), v149);
    obj = [v149 geometryDescriptors];
    v141 = [obj count];
    if (v141)
    {
      if ([v149 requiresResourceBuffer])
      {
        v206 = 0u;
        v207 = 0u;
        v204 = 0u;
        v205 = 0u;
        v33 = [obj countByEnumeratingWithState:&v204 objects:v225 count:16];
        if (v33)
        {
          v34 = v33;
          v129 = v16;
          v152 = 0;
          v35 = *v205;
          while (1)
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v205 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v204 + 1) + 8 * i);
              if (MTLSWBVHPrimitiveType)
              {
                if (MTLSWBVHPrimitiveType == 1)
                {
                  v198 = 0uLL;
                  v199 = 0uLL;
                  v196 = 0uLL;
                  v197 = 0uLL;
                  v38 = [v37 boundingBoxBuffers];
                  v39 = [v38 countByEnumeratingWithState:&v196 objects:v223 count:16];
                  if (!v39)
                  {
                    goto LABEL_56;
                  }

                  v40 = v39;
                  v41 = *v197;
                  do
                  {
                    for (j = 0; j != v40; ++j)
                    {
                      if (*v197 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      [a3 useResource:objc_msgSend(*(*(&v196 + 1) + 8 * j) usage:{"buffer"), 1}];
                    }

                    v40 = [v38 countByEnumeratingWithState:&v196 objects:v223 count:16];
                  }

                  while (v40);
                }

                else
                {
                  v194 = 0uLL;
                  v195 = 0uLL;
                  v192 = 0uLL;
                  v193 = 0uLL;
                  v48 = [v37 controlPointBuffers];
                  v49 = [v48 countByEnumeratingWithState:&v192 objects:v222 count:16];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *v193;
                    do
                    {
                      for (k = 0; k != v50; ++k)
                      {
                        if (*v193 != v51)
                        {
                          objc_enumerationMutation(v48);
                        }

                        [a3 useResource:objc_msgSend(*(*(&v192 + 1) + 8 * k) usage:{"buffer"), 1}];
                      }

                      v50 = [v48 countByEnumeratingWithState:&v192 objects:v222 count:16];
                    }

                    while (v50);
                  }

                  v190 = 0u;
                  v191 = 0u;
                  v188 = 0u;
                  v189 = 0u;
                  v53 = [v37 radiusBuffers];
                  v54 = [v53 countByEnumeratingWithState:&v188 objects:v221 count:16];
                  if (v54)
                  {
                    v55 = v54;
                    v56 = *v189;
                    do
                    {
                      for (m = 0; m != v55; ++m)
                      {
                        if (*v189 != v56)
                        {
                          objc_enumerationMutation(v53);
                        }

                        [a3 useResource:objc_msgSend(*(*(&v188 + 1) + 8 * m) usage:{"buffer"), 1}];
                      }

                      v55 = [v53 countByEnumeratingWithState:&v188 objects:v221 count:16];
                    }

                    while (v55);
                  }

                  [a3 useResource:objc_msgSend(v37 usage:{"indexBuffer"), 1}];
                  v152 += [v37 controlPointCount];
                }
              }

              else
              {
                v202 = 0uLL;
                v203 = 0uLL;
                v200 = 0uLL;
                v201 = 0uLL;
                v43 = [v37 vertexBuffers];
                v44 = [v43 countByEnumeratingWithState:&v200 objects:v224 count:16];
                if (v44)
                {
                  v45 = v44;
                  v46 = *v201;
                  do
                  {
                    for (n = 0; n != v45; ++n)
                    {
                      if (*v201 != v46)
                      {
                        objc_enumerationMutation(v43);
                      }

                      [a3 useResource:objc_msgSend(*(*(&v200 + 1) + 8 * n) usage:{"buffer"), 1}];
                    }

                    v45 = [v43 countByEnumeratingWithState:&v200 objects:v224 count:16];
                  }

                  while (v45);
                }

                if ([v37 indexBuffer])
                {
                  [a3 useResource:objc_msgSend(v37 usage:{"indexBuffer"), 1}];
                }

                if ([v37 transformationMatrixBuffer])
                {
                  [a3 useResource:objc_msgSend(v37 usage:{"transformationMatrixBuffer"), 1}];
                }
              }

              MTLSWBVHPrimitiveType = v154;
LABEL_56:
              if ([v37 primitiveDataBuffer])
              {
                [a3 useResource:objc_msgSend(v37 usage:{"primitiveDataBuffer"), 1}];
              }
            }

            v34 = [obj countByEnumeratingWithState:&v204 objects:v225 count:16];
            if (!v34)
            {
              v16 = v129;
              v20 = v149;
              goto LABEL_95;
            }
          }
        }

        LODWORD(v152) = 0;
LABEL_95:
        a4 = v145;
        v62 = v138;
LABEL_96:
        v130 = -[MTLGPUBVHBuilder newGeometryBufferWithGeometryDescriptors:retainedResources:](v16, "newGeometryBufferWithGeometryDescriptors:retainedResources:", [a4 geometryDescriptors], v143);
        v63 = 0;
        v64 = 0;
        v66 = 0;
        obja = 0;
        v67 = v141;
        v65 = v152;
        goto LABEL_105;
      }

      v62 = v138;
      if (!MTLSWBVHPrimitiveType)
      {
        v68 = [obj objectAtIndexedSubscript:0];
        [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v68 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v68, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 5}];
        v69 = [v68 indexBuffer];
        v70 = v68;
        v20 = v149;
        [a3 setBuffer:v69 offset:objc_msgSend(v70 atIndex:{"indexBufferOffset"), 6}];
      }

      LODWORD(v152) = 0;
    }

    else
    {
      LODWORD(v152) = 0;
      v62 = v138;
    }

    a4 = v31;
    goto LABEL_96;
  }

  v23 = a4;
  v24 = objc_opt_class();
  if (![v24 isSubclassOfClass:objc_opt_class()])
  {
    v58 = objc_opt_class();
    if (![v58 isSubclassOfClass:objc_opt_class()])
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v130 = 0;
      v131 = 0;
      obja = 0;
      v136 = 0;
      v137 = 0;
      v62 = v138;
      v20 = v149;
      goto LABEL_105;
    }

    v59 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH, v149);
    v60 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_INNER_NODE, v149);
    v61 = [a4 instanceDescriptorType];
    v62 = v138;
    v136 = v59;
    v137 = v60;
    if (v61 == 4)
    {
      v81 = [v23 maxMotionTransformCount];
    }

    else
    {
      v81 = [v23 maxInstanceCount];
    }

    v153 = v81;
    *v219 = 3;
    v82 = [v23 instanceTransformationMatrixLayout];
    *v219 = *v219 & 0xFFFFFFEF | (16 * (v82 == 1));
    v64 = [v23 instanceTransformationMatrixLayout] == 1;
    v63 = [v23 motionTransformType];
    if (v61 == 3 || v61 == 4)
    {
      KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_INDIRECT = v16->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_INDIRECT;
      *&v172 = 0;
      v171 = 0u;
      v170 = 0u;
      PipelineCache<PipelineKey>::getPipelineKey(&v16->_pipelineCache, KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_INDIRECT, v149, v16->_pipelineCache.baseThreadgroupSize, v219, &v170);
      v131 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, &v170, 0);
    }

    else
    {
      MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6652, @"Unhandled instance descriptor type", v83, v84, v85, v86, a10);
      v131 = 0;
    }

    a4 = v145;
    [a3 setBuffer:objc_msgSend(v145 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(v145, "instanceDescriptorBufferOffset"), 8}];
    LODWORD(v208) = [v145 instanceDescriptorStride];
    obja = [(MTLGPUBVHBuilder *)v16 newInstanceBufferWithBVHs:0 retainedResources:v143 encoder:a3 encodedStride:v209];
    [a3 setBuffer:? offset:? atIndex:?];
    if ([v145 instanceDescriptorType] == 4)
    {
      [a3 setBuffer:objc_msgSend(v145 offset:"motionTransformBuffer") atIndex:{objc_msgSend(v145, "motionTransformBufferOffset"), 11}];
    }

    v88 = [v145 usage];
    v65 = 0;
    v67 = 0;
    v130 = 0;
    if ((v88 & 4) != 0)
    {
      v89 = -1;
    }

    else
    {
      v89 = 255;
    }

    HIDWORD(v208) = v89;
    v20 = v149;
    goto LABEL_104;
  }

  v25 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH, v149);
  v26 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_INNER_NODE, v149);
  v27 = [a4 instanceDescriptorType];
  v28 = v27;
  v136 = v25;
  v137 = v26;
  if (v27 == 4 || v27 == 2)
  {
    v29 = a4;
    v30 = [a4 motionTransformCount];
  }

  else
  {
    v29 = a4;
    v30 = [a4 instanceCount];
  }

  v153 = v30;
  *v219 = 3;
  v71 = [v29 instanceTransformationMatrixLayout];
  *v219 = *v219 & 0xFFFFFFEF | (16 * (v71 == 1));
  v72 = [v29 instanceTransformationMatrixLayout] == 1;
  v63 = [v29 motionTransformType];
  if (v28 > 1)
  {
    if (v28 != 4 && v28 != 3)
    {
      if (v28 != 2)
      {
        goto LABEL_93;
      }

      goto LABEL_81;
    }

    v77 = 316;
LABEL_82:
    v78 = *(&v16->super.super.isa + v77);
    *&v172 = 0;
    v171 = 0u;
    v170 = 0u;
    PipelineCache<PipelineKey>::getPipelineKey(&v16->_pipelineCache, v78, v149, v16->_pipelineCache.baseThreadgroupSize, v219, &v170);
    v131 = PipelineCache<PipelineKey>::getPipeline(&v16->_pipelineCache, &v170, 0);
    goto LABEL_83;
  }

  if (!v28)
  {
LABEL_81:
    v77 = 308;
    goto LABEL_82;
  }

  if (v28 == 1)
  {
    v77 = 312;
    goto LABEL_82;
  }

LABEL_93:
  MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6590, @"Unhandled instance descriptor type", v73, v74, v75, v76, a10);
  v131 = 0;
LABEL_83:
  v64 = v72;
  a4 = v145;
  [a3 setBuffer:objc_msgSend(v145 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(v145, "instanceDescriptorBufferOffset"), 8}];
  LODWORD(v208) = [v145 instanceDescriptorStride];
  obja = -[MTLGPUBVHBuilder newInstanceBufferWithBVHs:retainedResources:encoder:encodedStride:](v16, "newInstanceBufferWithBVHs:retainedResources:encoder:encodedStride:", [v145 instancedAccelerationStructures], v143, a3, v209);
  [a3 setBuffer:? offset:? atIndex:?];
  if (v28 == 4 || v28 == 2)
  {
    [a3 setBuffer:objc_msgSend(v145 offset:"motionTransformBuffer") atIndex:{objc_msgSend(v145, "motionTransformBufferOffset"), 11}];
  }

  v79 = [v145 usage];
  v65 = 0;
  v67 = 0;
  v130 = 0;
  if ((v79 & 4) != 0)
  {
    v80 = -1;
  }

  else
  {
    v80 = 255;
  }

  HIDWORD(v208) = v80;
  v20 = v149;
  v62 = v138;
LABEL_104:
  v66 = v153;
LABEL_105:
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v183 = 0u;
  v179 = 0u;
  v180 = 0u;
  v170 = 0u;
  *&v171 = 0;
  v172 = 0u;
  v173 = *&v209[2];
  v174 = *&v209[4];
  v175 = *&v209[6];
  v176 = *&v209[8];
  HIDWORD(v172) = v209[0];
  v177 = v209[10];
  v178 = v209[1];
  *(&v171 + 1) = __PAIR64__(v67, v65);
  LODWORD(v170) = (2 * (v154 & 3)) | v147;
  *&v179 = a13;
  *&v184 = *(&v210 + 1);
  v142 = v67;
  DWORD1(v172) = v66;
  v181 = v210;
  v182 = v215;
  v90 = [v20 maxDepth];
  LODWORD(v170) = v170 & 0xFFFF80FF | ((v90 & 0x7F) << 8);
  v91 = [a4 usage];
  if (MTLSWBVHMotion)
  {
    v92 = 8;
  }

  else
  {
    v92 = 0;
  }

  LODWORD(v170) = v170 & 0xFFFFFFE7 | v92 & 0xFFFFFFEF | (16 * (v91 & 1));
  *(&v187 + 1) = __PAIR64__(v63, v64);
  if (!v147)
  {
    DWORD2(v172) = [v145 motionKeyframeCount];
    [v145 motionStartTime];
    DWORD1(v170) = v93;
    [v145 motionEndTime];
    DWORD2(v170) = v94;
    v95 = [v145 motionStartBorderMode];
    LODWORD(v170) = v170 & 0xFFFFFFDF | (32 * (v95 & 1));
    v96 = [v145 motionEndBorderMode];
    LODWORD(v170) = v170 & 0xFFFFFFBF | ((v96 & 1) << 6);
  }

  [a3 setBytes:&v208 length:8 atIndex:0];
  [a3 setBytes:&v170 length:256 atIndex:9];
  [a3 setBuffer:a8 offset:a9 atIndex:1];
  [a3 setBuffer:a6 offset:a7 atIndex:2];
  [a3 setBuffer:a10 offset:(a11 + 255) & 0xFFFFFFFFFFFFFF00 atIndex:3];
  [a3 setBuffer:a10 offset:v62 atIndex:4];
  [a3 setBuffer:a6 offset:v210 + a7 atIndex:12];
  [a3 setBuffer:a10 offset:v134 atIndex:13];
  [a3 setBuffer:a10 offset:v135 atIndex:14];
  threadgroupSize = v16->_threadgroupSize;
  [a3 setComputePipelineState:Pipeline];
  v98 = p_pipelineCache;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v219 = vdupq_n_s64(1uLL);
  *&v219[16] = 1;
  v165 = threadgroupSize;
  v166 = *v219;
  [a3 dispatchThreadgroups:v219 threadsPerThreadgroup:&v165];
  if (v215)
  {
    [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v16->KERNEL_INDEX_ENCODE_PRIMITIVE_DATA, v149)}];
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    *v219 = vdupq_n_s64(1uLL);
    *&v219[16] = 1;
    v165 = threadgroupSize;
    v166 = *v219;
    [a3 dispatchThreadgroups:v219 threadsPerThreadgroup:&v165];
  }

  v165 = [a10 gpuAddress] + v62;
  *&v166 = [a10 gpuAddress] + v148;
  v99 = v16->_threadgroupSize;
  DWORD2(v166) = 1536;
  HIDWORD(v166) = v99;
  v167 = 0x101000900;
  v168 = 33556480;
  v169 = v99;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(v16->KERNEL_INDEX_COPY_COUNTERS);
  v164 = 0;
  memset(&v219[8], 0, 32);
  *v219 = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(*(p_pipelineCache + 40)) & 0xF) << 45);
  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v219, &v164)}];
  [a3 setBytes:&v165 length:40 atIndex:30];
  *v219 = xmmword_185DC6310;
  *&v219[16] = 1;
  v162 = v164;
  v163 = vdupq_n_s64(1uLL);
  [a3 dispatchThreads:v219 threadsPerThreadgroup:&v162];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  [a3 setComputePipelineState:v136];
  *v219 = v16->_threadgroupSize;
  *&v219[8] = vdupq_n_s64(1uLL);
  [a3 dispatchThreadgroupsWithIndirectBuffer:a10 indirectBufferOffset:v148 threadsPerThreadgroup:v219];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  [a3 setComputePipelineState:v131];
  *v219 = v16->_threadgroupSize;
  *&v219[8] = vdupq_n_s64(1uLL);
  [a3 dispatchThreadgroupsWithIndirectBuffer:a10 indirectBufferOffset:v148 + 256 threadsPerThreadgroup:v219];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  [a3 setComputePipelineState:v137];
  *v219 = v16->_threadgroupSize;
  *&v219[8] = vdupq_n_s64(1uLL);
  [a3 dispatchThreadgroupsWithIndirectBuffer:a10 indirectBufferOffset:v148 + 512 threadsPerThreadgroup:v219];
  if (v147)
  {
    v101 = objc_opt_class();
    if ([v101 isSubclassOfClass:objc_opt_class()])
    {
      v102 = v16;
      v103 = [v145 instanceDescriptorType];
      v161 = [v145 instanceCount];
      [a3 setBytes:&v161 length:4 atIndex:15];
      v104 = v102;
      v105 = -[MTLGPUBVHBuilder newResourceIDsBufferWithBVHs:retainedResources:encoder:](v102, "newResourceIDsBufferWithBVHs:retainedResources:encoder:", [v145 instancedAccelerationStructures], v143, a3);
      [a3 setBuffer:v105 offset:0 atIndex:16];
      if (!v161)
      {
        goto LABEL_153;
      }

LABEL_141:
      if (v103 <= 1)
      {
        v123 = v149;
        if (v103)
        {
          if (v103 == 1)
          {
            v124 = 324;
            goto LABEL_151;
          }

LABEL_155:
          MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6901, @"Unexpected MTLAccelerationStructureInstanceDescriptorType", v106, v107, v108, v109, v128);
          v125 = 0;
          goto LABEL_152;
        }
      }

      else
      {
        v123 = v149;
        if (v103 != 2)
        {
          if (v103 == 3 || v103 == 4)
          {
            v124 = 328;
LABEL_151:
            v125 = PipelineCache<PipelineKey>::getPipeline(v98, *(&v104->super.super.isa + v124), v123);
LABEL_152:
            [a3 setComputePipelineState:v125];
            v126 = v104->_threadgroupSize;
            *v219 = (v161 + v126 - 1) / v126;
            *&v219[8] = vdupq_n_s64(1uLL);
            v162 = v126;
            v163 = *&v219[8];
            [a3 dispatchThreadgroups:v219 threadsPerThreadgroup:&v162];
            goto LABEL_153;
          }

          goto LABEL_155;
        }
      }

      v124 = 320;
      goto LABEL_151;
    }

    v115 = objc_opt_class();
    if ([v115 isSubclassOfClass:objc_opt_class()])
    {
      v104 = v16;
      v103 = [v145 instanceDescriptorType];
      v161 = [v145 maxInstanceCount];
      v120 = [v145 instanceCountBuffer];
      v121 = [v145 instanceCountBufferOffset];
      v122 = v120;
      v98 = p_pipelineCache;
      [a3 setBuffer:v122 offset:v121 atIndex:15];
      v105 = 0;
      if (v161)
      {
        goto LABEL_141;
      }
    }

    else
    {
      MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6879, @"Unexpected MTLAccelerationStructureDescriptor type", v116, v117, v118, v119, v128);
      v105 = 0;
    }

LABEL_153:
    v110 = obja;
    goto LABEL_154;
  }

  [(MTLGPUBVHBuilder *)v16 copyFromBuffer:v130 sourceBufferOffset:0 toBuffer:a6 destinationBufferOffset:v209[8] + a7 length:8 * v142 encoder:a3];
  v105 = 0;
  v110 = obja;
  if (v154 == 2)
  {
    [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v16->KERNEL_INDEX_ENCODE_MTL_CURVE_BVH_CONTROL_POINTS, v149)}];
    v161 = 0;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v111 = [v149 geometryDescriptors];
    v105 = [v111 countByEnumeratingWithState:&v157 objects:v220 count:16];
    if (v105)
    {
      v112 = *v158;
      v155 = vdupq_n_s64(1uLL);
      do
      {
        for (ii = 0; ii != v105; ii = ii + 1)
        {
          if (*v158 != v112)
          {
            objc_enumerationMutation(v111);
          }

          v156 = [*(*(&v157 + 1) + 8 * ii) controlPointCount];
          if (v156)
          {
            [a3 setBytes:&v156 length:4 atIndex:15];
            [a3 setBytes:&v161 length:4 atIndex:16];
            v114 = v16->_threadgroupSize;
            *v219 = (v156 + v114 - 1) / v114;
            *&v219[8] = v155;
            v162 = v114;
            v163 = v155;
            [a3 dispatchThreadgroups:v219 threadsPerThreadgroup:&v162];
          }

          ++v161;
        }

        v105 = [v111 countByEnumeratingWithState:&v157 objects:v220 count:16];
      }

      while (v105);
    }
  }

LABEL_154:

  v127 = *MEMORY[0x1E69E9840];
}

- (void)writeMTLSWBVHSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7
{
  v17 = 0;
  KERNEL_INDEX_GET_MTL_BVH_SIZE_low = LOBYTE(self->KERNEL_INDEX_GET_MTL_BVH_SIZE);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_MTL_BVH_SIZE_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [a3 dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeCompactedMTLSWBVHSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7 sizeDataType:(unint64_t)a8
{
  v19 = 0;
  p_pipelineCache = &self->_pipelineCache;
  if (a8 == 33)
  {
    v14 = 332;
  }

  else
  {
    v14 = 336;
  }

  v15 = *(&self->super.super.isa + v14);
  v21 = 0u;
  *&v20[8] = 0u;
  *v20 = v15 | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v20, &v19);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v20 = vdupq_n_s64(1uLL);
  *&v20[16] = 1;
  v17 = v19;
  v18 = *v20;
  [a3 dispatchThreadgroups:v20 threadsPerThreadgroup:&v17];
}

- (void)copyMTLSWBVHWithEncoder:(id)a3 sourceBuffer:(id)a4 sourceBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7 destinationMTLResourceID:(MTLResourceID)a8 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a9 compact:(BOOL)a10 copyVertexData:(BOOL)a11 copyPerPrimitiveData:(BOOL)a12
{
  v18 = a12;
  v19 = a11;
  v63 = *MEMORY[0x1E69E9840];
  [a3 setBuffer:a4 offset:a5 atIndex:{0, a6, a7, a8._impl}];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setBytes:&a9 length:8 atIndex:2];
  v20 = 0x1EA8D2000uLL;
  if (v19)
  {
    p_pipelineCache = &self->_pipelineCache;
    if (a10)
    {
      v22 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_COPY_AND_COMPACT_MTL_BVH_HEADER;
    }

    else
    {
      v22 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_COPY_MTL_BVH_HEADER;
    }

    [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, *(&self->super.super.isa + *v22), self->_pipelineCache.baseThreadgroupSize, 0)}];
    v23 = (self->_threadgroupSize + 31) / self->_threadgroupSize;
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    *v49 = v23;
    *&v49[8] = vdupq_n_s64(1uLL);
    threadgroupSize = self->_threadgroupSize;
    v57 = *&v49[8];
    [a3 dispatchThreadgroups:v49 threadsPerThreadgroup:&threadgroupSize];
    threadgroupSize = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_BVH_INNER_NODES, self->_pipelineCache.baseThreadgroupSize, 0);
    *&v57 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_BVH_LEAF_NODES, self->_pipelineCache.baseThreadgroupSize, 0);
    *(&v57 + 1) = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_BVH_PRIMITIVES, self->_pipelineCache.baseThreadgroupSize, 0);
    Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_BVH_GEOMETRIES, self->_pipelineCache.baseThreadgroupSize, 0);
    v59 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_BVH_TRANSFORMS, self->_pipelineCache.baseThreadgroupSize, 0);
    v60 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_PRIMITIVE_BVHS, self->_pipelineCache.baseThreadgroupSize, 0);
    v61 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_BVH_CONTROL_POINTS, self->_pipelineCache.baseThreadgroupSize, 0);
    v62 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_COPY_MTL_BVH_RESOURCE_IDS, self->_pipelineCache.baseThreadgroupSize, 0);
    KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
    v55 = 0;
    v50 = 0u;
    *&v49[8] = 0u;
    *v49 = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
    v47 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v49, &v55);
    if (self->_supportsDispatchThreadsWithIndirectBuffer)
    {
      v25 = self->_threadgroupSize;
      *v49 = [a4 gpuAddress] + a5;
      v26 = 0;
      *&v49[8] = a5 + [a4 gpuAddress] + 200;
      do
      {
        v27 = 0;
        v28 = v26;
        if (7 - v26 >= 3)
        {
          v29 = 3;
        }

        else
        {
          v29 = 7 - v26;
        }

        v30 = &v49[20];
        do
        {
          *(v30 - 2) = word_185DC6330[v26 + v27];
          *(v30 - 1) = 12 * v27;
          *v30 = v25;
          v30 += 2;
          ++v27;
        }

        while (v29 + 1 != v27);
        [a3 setComputePipelineState:v47];
        [a3 setBytes:v49 length:48 atIndex:30];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        *v54 = v29 + 1;
        *&v54[8] = vdupq_n_s64(1uLL);
        v52 = v55;
        v53 = *&v54[8];
        [a3 dispatchThreads:v54 threadsPerThreadgroup:&v52];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        v26 += v27;
        v31 = v29 + 1;
        v32 = 200;
        v33 = &threadgroupSize + v28;
        do
        {
          v34 = *v33++;
          [a3 setComputePipelineState:v34];
          *v54 = self->_threadgroupSize;
          *&v54[8] = vdupq_n_s64(1uLL);
          [a3 dispatchThreadgroupsWithIndirectBuffer:a4 indirectBufferOffset:v32 threadsPerThreadgroup:v54];
          v32 += 12;
          --v31;
        }

        while (v31);
      }

      while (v26 <= 7);
      v20 = 0x1EA8D2000;
    }

    else
    {
      v35 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:a3];
      v51 = 0;
      v36 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:8 withRetainedResources:v35 indirectBufferStride:&v51];
      [v35 addObject:v36];
      v37 = self->_threadgroupSize;
      *v49 = [a4 gpuAddress] + a5;
      v38 = [v36 gpuAddress];
      v39 = 0;
      v40 = 0;
      *&v49[8] = v38;
      v41 = word_185DC6330;
      v42 = v51;
      do
      {
        v43 = *v41++;
        v44 = &v49[v40];
        *(v44 + 8) = v43;
        *(v44 + 9) = v39;
        *(v44 + 5) = v37;
        v40 += 8;
        v39 += v42;
      }

      while (v40 != 64);
      [a3 setComputePipelineState:v47];
      [a3 setBytes:v49 length:80 atIndex:30];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      *&v54[16] = 1;
      v52 = v55;
      v53 = vdupq_n_s64(1uLL);
      *v54 = xmmword_185DC6320;
      [a3 dispatchThreads:v54 threadsPerThreadgroup:&v52];
      v20 = 0x1EA8D2000uLL;
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      v45 = 0;
      v48 = vdupq_n_s64(1uLL);
      do
      {
        [a3 setComputePipelineState:*(&threadgroupSize + v45)];
        *v54 = self->_threadgroupSize;
        *&v54[8] = v48;
        [a3 dispatchThreadgroupsWithIndirectBuffer:v36 indirectBufferOffset:v51 * v45++ threadsPerThreadgroup:v54];
      }

      while (v45 != 8);
    }
  }

  if (v18)
  {
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(self + *(v20 + 1744), self->KERNEL_INDEX_COPY_PRIMITIVE_DATA, *(&self->_dispatchBinsTGSize + *(v20 + 1744)), 0)}];
    *v49 = vdupq_n_s64(1uLL);
    *&v49[16] = 1;
    threadgroupSize = self->_threadgroupSize;
    v57 = *v49;
    [a3 dispatchThreadgroups:v49 threadsPerThreadgroup:&threadgroupSize];
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)copyMTLSWBVHWithEncoder:(id)a3 sourceBuffer:(id)a4 sourceBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7 destinationMTLResourceID:(MTLResourceID)a8 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a9
{
  BYTE2(v9) = 1;
  LOWORD(v9) = 256;
  [MTLGPUBVHBuilder copyMTLSWBVHWithEncoder:"copyMTLSWBVHWithEncoder:sourceBuffer:sourceBufferOffset:toBuffer:destinationBufferOffset:destinationMTLResourceID:destinationAccelerationStructureUniqueIdentifier:compact:copyVertexData:copyPerPrimitiveData:" sourceBuffer:a3 sourceBufferOffset:a4 toBuffer:a5 destinationBufferOffset:a6 destinationMTLResourceID:a7 destinationAccelerationStructureUniqueIdentifier:a8._impl compact:a9 copyVertexData:v9 copyPerPrimitiveData:?];
}

- (void)copyAndCompactMTLSWBVHWithEncoder:(id)a3 sourceBuffer:(id)a4 sourceBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7 destinationMTLResourceID:(MTLResourceID)a8 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a9
{
  BYTE2(v9) = 1;
  LOWORD(v9) = 257;
  [MTLGPUBVHBuilder copyMTLSWBVHWithEncoder:"copyMTLSWBVHWithEncoder:sourceBuffer:sourceBufferOffset:toBuffer:destinationBufferOffset:destinationMTLResourceID:destinationAccelerationStructureUniqueIdentifier:compact:copyVertexData:copyPerPrimitiveData:" sourceBuffer:a3 sourceBufferOffset:a4 toBuffer:a5 destinationBufferOffset:a6 destinationMTLResourceID:a7 destinationAccelerationStructureUniqueIdentifier:a8._impl compact:a9 copyVertexData:v9 copyPerPrimitiveData:?];
}

- (id)newInstanceBufferWithBVHs:(id)a3 retainedResources:(id)a4 encoder:(id)a5 encodedStride:(unint64_t *)a6
{
  if (a6)
  {
    *a6 = 8;
  }

  device = self->_device;
  if ([a3 count] < 2)
  {
    v9 = 8;
  }

  else
  {
    v9 = 8 * [a3 count];
  }

  v10 = [(MTLDevice *)device newBufferWithLength:v9 options:0];
  v11 = [v10 contents];
  if ([a3 count])
  {
    v12 = 0;
    do
    {
      v13 = [objc_msgSend(objc_msgSend(a3 objectAtIndexedSubscript:{v12), "buffer"), "gpuAddress"}];
      *(v11 + 8 * v12) = [objc_msgSend(a3 objectAtIndexedSubscript:{v12), "bufferOffset"}] + v13;
      ++v12;
    }

    while (v12 < [a3 count]);
  }

  [a4 addObject:v10];
  return v10;
}

- (id)newResourceIDsBufferWithBVHs:(id)a3 retainedResources:(id)a4 encoder:(id)a5
{
  device = self->_device;
  if ([a3 count] < 2)
  {
    v8 = 8;
  }

  else
  {
    v8 = 8 * [a3 count];
  }

  v9 = [(MTLDevice *)device newBufferWithLength:v8 options:0];
  v10 = [v9 contents];
  if ([a3 count])
  {
    v11 = 0;
    do
    {
      *(v10 + 8 * v11) = [objc_msgSend(a3 objectAtIndexedSubscript:{v11), "gpuResourceID"}];
      ++v11;
    }

    while (v11 < [a3 count]);
  }

  [a4 addObject:v9];
  return v9;
}

- (void)getMTLInstanceBoundingBoxesWithEncoder:(id)a3 descriptor:(id)a4 boundingBoxBuffer:(id)a5 boundingBoxBufferOffset:(unint64_t)a6
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = objc_opt_class();
  if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    if (![a4 instanceCount])
    {
      goto LABEL_50;
    }

    v12 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:a3];
    v13 = [a4 instancedAccelerationStructures];
    v14 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:v13 retainedResources:v12 encoder:a3];
    useResourcesBatched(v13, 1, a3);
    v50 = [a4 instanceCount];
    v49 = [a4 instanceDescriptorStride];
    v48 = 0;
    v15 = [a4 instanceDescriptorType];
    v16 = [a4 instanceTransformationMatrixLayout];
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v17 = log2(self->_threadgroupSize);
    Pipeline = 0;
    v19 = (v17 & 0xF) << 45;
    WORD4(v51[0]) = (v16 == 1) << 8;
    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_27;
        }

        v28 = 392;
      }

      else
      {
        v28 = 388;
      }
    }

    else
    {
      if (v15 == 2)
      {
        v20 = 388;
        goto LABEL_22;
      }

      if (v15 != 3)
      {
        if (v15 == 4)
        {
          v20 = 396;
LABEL_22:
          v30 = v19 | *(&self->super.super.isa + v20) | 0x1000000000;
LABEL_26:
          *&v51[0] = v30;
          Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, v51, &v48);
        }

LABEL_27:
        [a3 setComputePipelineState:Pipeline];
        [a3 setBytes:&v50 length:4 atIndex:0];
        [a3 setBuffer:objc_msgSend(a4 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(a4, "instanceDescriptorBufferOffset"), 1}];
        [a3 setBytes:&v49 length:4 atIndex:2];
        [a3 setBuffer:v14 offset:0 atIndex:3];
        [a3 setBuffer:a5 offset:a6 atIndex:4];
        if ([a4 motionTransformBuffer])
        {
          [a3 setBuffer:objc_msgSend(a4 offset:"motionTransformBuffer") atIndex:{objc_msgSend(a4, "motionTransformBufferOffset"), 5}];
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v31 = [a4 instancedAccelerationStructures];
        v32 = [v31 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          do
          {
            v35 = 0;
            do
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(v31);
              }

              [a3 useResource:*(*(&v44 + 1) + 8 * v35++) usage:1];
            }

            while (v33 != v35);
            v33 = [v31 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v33);
        }

        v36 = v48;
        v37 = (v36 + [a4 instanceCount] - 1) / v36;
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        *&v51[0] = v37;
        *(v51 + 8) = vdupq_n_s64(1uLL);
        v42 = v36;
        v43 = *(v51 + 8);
        [a3 dispatchThreadgroups:v51 threadsPerThreadgroup:&v42];

        goto LABEL_50;
      }

      v28 = 396;
    }

    v30 = v19 | *(&self->super.super.isa + v28);
    goto LABEL_26;
  }

  v21 = objc_opt_class();
  if (![v21 isSubclassOfClass:objc_opt_class()] || !objc_msgSend(a4, "maxInstanceCount"))
  {
    goto LABEL_50;
  }

  v50 = [a4 instanceDescriptorStride];
  v48 = 0;
  v22 = [a4 instanceDescriptorType];
  v23 = [a4 instanceTransformationMatrixLayout];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v24 = log2(self->_threadgroupSize);
  v25 = 0;
  v26 = (v24 & 0xF) << 45;
  WORD4(v51[0]) = (v23 == 1) << 8;
  if (v22 <= 1)
  {
    if (v22)
    {
      if (v22 != 1)
      {
        goto LABEL_45;
      }

      v29 = 392;
    }

    else
    {
      v29 = 388;
    }

LABEL_43:
    v38 = v26 | *(&self->super.super.isa + v29);
    goto LABEL_44;
  }

  switch(v22)
  {
    case 2:
      v27 = 388;
      goto LABEL_40;
    case 3:
      v29 = 396;
      goto LABEL_43;
    case 4:
      v27 = 396;
LABEL_40:
      v38 = v26 | *(&self->super.super.isa + v27) | 0x1000000000;
LABEL_44:
      *&v51[0] = v38;
      v25 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, v51, &v48);
      break;
  }

LABEL_45:
  [a3 setComputePipelineState:v25];
  [a3 setBuffer:objc_msgSend(a4 offset:"instanceCountBuffer") atIndex:{objc_msgSend(a4, "instanceCountBufferOffset"), 0}];
  [a3 setBuffer:objc_msgSend(a4 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(a4, "instanceDescriptorBufferOffset"), 1}];
  [a3 setBytes:&v50 length:4 atIndex:2];
  [a3 setBuffer:a5 offset:a6 atIndex:4];
  if ([a4 motionTransformBuffer])
  {
    [a3 setBuffer:objc_msgSend(a4 offset:"motionTransformBuffer") atIndex:{objc_msgSend(a4, "motionTransformBufferOffset"), 5}];
  }

  v39 = v48;
  v40 = (v39 + [a4 maxInstanceCount] - 1) / v39;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *&v51[0] = v40;
  *(v51 + 8) = vdupq_n_s64(1uLL);
  v42 = v39;
  v43 = *(v51 + 8);
  [a3 dispatchThreadgroups:v51 threadsPerThreadgroup:&v42];
LABEL_50:
  v41 = *MEMORY[0x1E69E9840];
}

- (unint64_t)getRefitScratchBufferSizeForDescriptor:(id)a3 bvhDescriptor:(id)a4
{
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:a4 fragmentCapacity:&v9 innerNodeCapacity:&v8 leafNodeCapacity:&v7 primitiveDataCapacity:&v6];
  return 12 * [a4 maxDepth] + 12;
}

- (void)refitVertexDataWithEncoder:(id)a3 descriptor:(id)a4 bvhDescriptor:(id)a5 inPlace:(BOOL)a6 sourceBuffer:(id)a7 sourceBufferOffset:(unint64_t)a8 scratchBuffer:(id)a9 scratchBufferOffset:(unint64_t)a10 retainedResources:(id)a11 innerNodeCapacity:(unint64_t)a12 leafNodeCapacity:(unint64_t)a13
{
  v13 = a6;
  v137 = *MEMORY[0x1E69E9840];
  MTLSWBVHType = getMTLSWBVHType(a4);
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(a4);
  p_pipelineCache = &self->_pipelineCache;
  if (v13)
  {
    v21 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INNER_NODE_IN_PLACE;
  }

  else
  {
    v21 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INNER_NODE;
  }

  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v21), a5);
  v112 = a4;
  v118 = MTLSWBVHType;
  if (!MTLSWBVHType)
  {
    v31 = [a5 geometryDescriptors];
    v26 = a8;
    if ([v31 count])
    {
      if (v13)
      {
        if (refitUpdatesOpacityAndFunctionTableOffset(void)::pred != -1)
        {
          [MTLBVHDescriptor updatePipelineKey];
        }

        if (refitUpdatesOpacityAndFunctionTableOffset(void)::useNewRefitBehavior)
        {
          goto LABEL_47;
        }

        v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_GEOMETRIES_IN_PLACE;
      }

      else
      {
        v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_GEOMETRIES;
      }

      [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v32), a5)}];
      -[MTLGPUBVHBuilder setGeometryBufferWithGeometryDescriptors:retainedResources:onEncoder:atIndex:](self, "setGeometryBufferWithGeometryDescriptors:retainedResources:onEncoder:atIndex:", [a4 geometryDescriptors], a11, a3, 13);
      v39 = ([v31 count] + self->_threadgroupSize - 1) / self->_threadgroupSize;
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      *&v131[0] = v39;
      *(v131 + 8) = vdupq_n_s64(1uLL);
      threadgroupSize = self->_threadgroupSize;
      v134 = *(v131 + 8);
      [a3 dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
      v26 = a8;
    }

LABEL_47:
    if (MTLSWBVHPrimitiveType == 1)
    {
      if ([v31 count])
      {
        v43 = [v31 objectAtIndexedSubscript:0];
        [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v43 offset:"boundingBoxBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v43, "boundingBoxBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 5}];
      }

      v41 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_BBOX_LEAF_NODE;
      v42 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_BBOX_LEAF_NODE_IN_PLACE;
    }

    else
    {
      if (MTLSWBVHPrimitiveType)
      {
        v44 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_LEAF_NODE;
        if (v13)
        {
          v44 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_LEAF_NODE_IN_PLACE;
          v45 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_CONTROL_POINTS_IN_PLACE;
        }

        else
        {
          v45 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_CONTROL_POINTS;
        }

        v30 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v44), a5);
        v114 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v45), a5);
        goto LABEL_63;
      }

      if ([v31 count])
      {
        v40 = [v31 objectAtIndexedSubscript:0];
        [a3 setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v40 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v40, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 2}];
        [a3 setBuffer:objc_msgSend(v40 offset:"indexBuffer") atIndex:{objc_msgSend(v40, "indexBufferOffset"), 3}];
      }

      v41 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_TRIANGLE_LEAF_NODE;
      v42 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_TRIANGLE_LEAF_NODE_IN_PLACE;
    }

    if (v13)
    {
      v41 = v42;
    }

    v30 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v41), a5);
LABEL_58:
    v114 = 0;
LABEL_63:
    v115 = 0;
    goto LABEL_64;
  }

  v22 = objc_opt_class();
  if (![v22 isSubclassOfClass:objc_opt_class()])
  {
    v33 = objc_opt_class();
    v26 = a8;
    if (![v33 isSubclassOfClass:objc_opt_class()])
    {
      v114 = 0;
      v115 = 0;
      v30 = 0;
      goto LABEL_64;
    }

    if ([a4 instanceTransformationMatrixLayout] == 1)
    {
      v34 = 19;
    }

    else
    {
      v34 = 3;
    }

    LODWORD(threadgroupSize) = v34;
    if ([a4 instanceDescriptorType] && objc_msgSend(a4, "instanceDescriptorType") != 2)
    {
      if ([a4 instanceDescriptorType] != 1)
      {
        if ([a4 instanceDescriptorType] != 3 && objc_msgSend(a4, "instanceDescriptorType") != 4)
        {
          MTLReportFailure(0, "[MTLGPUBVHBuilder refitVertexDataWithEncoder:descriptor:bvhDescriptor:inPlace:sourceBuffer:sourceBufferOffset:scratchBuffer:scratchBufferOffset:retainedResources:innerNodeCapacity:leafNodeCapacity:]", 8036, @"Unhandled instance descriptor type", v104, v105, v106, v107, v109);
          v30 = 0;
          goto LABEL_37;
        }

        v108 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT;
        if (v13)
        {
          v108 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT_IN_PLACE;
        }

        v38 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v108), a5, &threadgroupSize, 0);
LABEL_36:
        v30 = v38;
LABEL_37:
        [a3 setBuffer:objc_msgSend(a4 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(a4, "instanceDescriptorBufferOffset"), 6}];
        LODWORD(v131[0]) = [a4 instanceDescriptorStride];
        [a3 setBytes:v131 length:4 atIndex:7];
        if ([a4 motionTransformBuffer])
        {
          [a3 setBuffer:objc_msgSend(a4 offset:"motionTransformBuffer") atIndex:{objc_msgSend(a4, "motionTransformBufferOffset"), 11}];
        }

        LODWORD(v128) = 255;
        if (([a4 usage] & 4) != 0)
        {
          LODWORD(v128) = -1;
        }

        [a3 setBytes:&v128 length:4 atIndex:12];
        goto LABEL_58;
      }

      v35 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID;
      v36 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID_IN_PLACE;
    }

    else
    {
      v35 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT;
      v36 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT_IN_PLACE;
    }

    if (v13)
    {
      v35 = v36;
    }

    v37 = *(&self->super.super.isa + *v35);
    v132 = 0;
    memset(v131, 0, sizeof(v131));
    PipelineCache<PipelineKey>::getPipelineKey(&self->_pipelineCache, v37, a5, self->_pipelineCache.baseThreadgroupSize, &threadgroupSize, v131);
    v38 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, v131, 0);
    goto LABEL_36;
  }

  v23 = [a4 instancedAccelerationStructures];
  v24 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:v23 retainedResources:a11 encoder:a3];
  useResourcesBatched(v23, 1, a3);
  v115 = v24;
  [a3 setBuffer:v24 offset:0 atIndex:10];
  if ([a4 instanceTransformationMatrixLayout] == 1)
  {
    v25 = 19;
  }

  else
  {
    v25 = 3;
  }

  LODWORD(threadgroupSize) = v25;
  v26 = a8;
  if (![a4 instanceDescriptorType] || objc_msgSend(a4, "instanceDescriptorType") == 2)
  {
    v27 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT;
    v28 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT_IN_PLACE;
LABEL_12:
    if (v13)
    {
      v27 = v28;
    }

    v29 = *(&self->super.super.isa + *v27);
    v132 = 0;
    memset(v131, 0, sizeof(v131));
    PipelineCache<PipelineKey>::getPipelineKey(&self->_pipelineCache, v29, a5, self->_pipelineCache.baseThreadgroupSize, &threadgroupSize, v131);
    v30 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, v131, 0);
    goto LABEL_15;
  }

  if ([a4 instanceDescriptorType] == 1)
  {
    v27 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID;
    v28 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID_IN_PLACE;
    goto LABEL_12;
  }

  if ([a4 instanceDescriptorType] == 3 || objc_msgSend(a4, "instanceDescriptorType") == 4)
  {
    v27 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT;
    v28 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT_IN_PLACE;
    goto LABEL_12;
  }

  MTLReportFailure(0, "[MTLGPUBVHBuilder refitVertexDataWithEncoder:descriptor:bvhDescriptor:inPlace:sourceBuffer:sourceBufferOffset:scratchBuffer:scratchBufferOffset:retainedResources:innerNodeCapacity:leafNodeCapacity:]", 7998, @"Unhandled instance descriptor type", v100, v101, v102, v103, v109);
  v30 = 0;
LABEL_15:
  [a3 setBuffer:objc_msgSend(a4 offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(a4, "instanceDescriptorBufferOffset"), 6}];
  LODWORD(v131[0]) = [a4 instanceDescriptorStride];
  [a3 setBytes:v131 length:4 atIndex:7];
  if ([a4 motionTransformBuffer])
  {
    [a3 setBuffer:objc_msgSend(a4 offset:"motionTransformBuffer") atIndex:{objc_msgSend(a4, "motionTransformBufferOffset"), 11}];
  }

  LODWORD(v128) = 255;
  if (([a4 usage] & 4) != 0)
  {
    LODWORD(v128) = -1;
  }

  [a3 setBytes:&v128 length:4 atIndex:12];
  v114 = 0;
LABEL_64:
  v46 = [a5 maxDepth];
  v47 = (a10 + 255) & 0xFFFFFFFFFFFFFF00;
  v116 = &self->_pipelineCache;
  v119 = v46;
  v120 = v47;
  if (self->_supportsDispatchThreadsWithIndirectBuffer)
  {
    v110 = v30;
    v113 = 4 * v46 + 256;
    v48 = self->_threadgroupSize;
    v49 = v46;
    *&v131[0] = [a7 gpuAddress] + v26;
    *(&v131[0] + 1) = [a9 gpuAddress] + v47;
    if (v118)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    LODWORD(v131[1]) = 16;
    DWORD1(v131[1]) = v50;
    if (v49 >= 0x1F)
    {
      v51 = 31;
    }

    else
    {
      v51 = v49;
    }

    if (v49)
    {
      v52 = &v131[1] + 3;
      v53 = 4 * v49 + v113 - 4;
      v54 = 1;
      v55 = v51;
      do
      {
        *(v52 - 2) = v53;
        *(v52 - 1) = 12 * v54;
        *v52 = v48;
        v52 += 2;
        ++v54;
        v53 -= 4;
        --v55;
      }

      while (v55);
    }

    v111 = a5;
    KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
    v130 = 0;
    v135 = 0u;
    v134 = 0u;
    threadgroupSize = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
    [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(v116, &threadgroupSize, &v130)}];
    [a3 setBytes:v131 length:8 * (v51 + 1) + 16 atIndex:30];
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    threadgroupSize = v51 + 1;
    v134 = vdupq_n_s64(1uLL);
    v128 = v130;
    v129 = v134;
    [a3 dispatchThreads:&threadgroupSize threadsPerThreadgroup:&v128];
    v57 = v119;
    if (v119 >= 0x20)
    {
      v58 = v119 - v51;
      v59 = 4 * v49 + v113 - 4 * v51 - 4;
      do
      {
        v60 = 0;
        v61 = v58;
        v62 = v58 >= 0x20;
        v58 -= 32;
        if (v62)
        {
          v61 = 32;
        }

        if (v61 <= 1)
        {
          v61 = 1;
        }

        v63 = v57 - v51;
        if (v63 >= 0x20)
        {
          v64 = 32;
        }

        else
        {
          v64 = v63;
        }

        v65 = v59;
        v66 = &v131[1] + 1;
        do
        {
          *(v66 - 2) = v65;
          *(v66 - 1) = 12 * v60;
          *v66 = v48;
          v66 += 2;
          ++v60;
          v65 -= 4;
        }

        while (v61 != v60);
        [a3 setBytes:v131 length:8 * v64 + 16 atIndex:30];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        threadgroupSize = v64;
        v134 = vdupq_n_s64(1uLL);
        v128 = v130;
        v129 = v134;
        [a3 dispatchThreads:&threadgroupSize threadsPerThreadgroup:&v128];
        v51 += 32;
        v59 -= 128;
        v57 = v119;
      }

      while (v51 < v119);
    }

    a5 = v111;
    p_pipelineCache = &self->_pipelineCache;
    v26 = a8;
    v30 = v110;
    v47 = (a10 + 255) & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    v113 = (4 * v46 + 256) >> 2;
  }

  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  if (self->_supportsDispatchThreadsWithIndirectBuffer)
  {
    [(MTLGPUBVHBuilder *)self dispatchIndirect:v30 counterBuffer:a9 counterBufferOffset:v47 threadgroupSize:self->_threadgroupSize encoder:a3];
    if (v119)
    {
      v67 = -v119;
      v68 = v120 + 12;
      v69 = v119 - 1;
      do
      {
        LODWORD(v131[0]) = v69;
        [a3 setBytes:v131 length:4 atIndex:14];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        [(MTLGPUBVHBuilder *)self dispatchIndirect:Pipeline counterBuffer:a9 counterBufferOffset:v68 threadgroupSize:self->_threadgroupSize encoder:a3];
        v68 += 12;
        --v69;
        v62 = __CFADD__(v67++, 1);
      }

      while (!v62);
    }
  }

  else
  {
    if (v118)
    {
      v70 = self->_threadgroupSize;
    }

    else
    {
      v70 = 1;
    }

    [(MTLGPUBVHBuilder *)self dispatchIndirect:v30 indirectBuffer:a9 indirectBufferOffset:v47 threadCountBuffer:a7 threadCountBufferOffset:v26 threadCountIndex:4 threadgroupDivisor:v70 encoder:a3];
    if (v119)
    {
      v71 = -v119;
      v72 = v119 - 1;
      v73 = v119 + v113 - 1;
      do
      {
        LODWORD(v131[0]) = v72;
        [a3 setBytes:v131 length:4 atIndex:14];
        if ([a3 dispatchType] == 1)
        {
          [a3 memoryBarrierWithScope:1];
        }

        [(MTLGPUBVHBuilder *)self dispatchIndirect:Pipeline indirectBuffer:a9 indirectBufferOffset:v120 threadCountBuffer:a7 threadCountBufferOffset:v26 threadCountIndex:v73 threadgroupDivisor:self->_threadgroupSize encoder:a3];
        --v72;
        --v73;
        v62 = __CFADD__(v71++, 1);
      }

      while (!v62);
    }
  }

  v74 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_HEADER;
  if (v13)
  {
    v74 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_HEADER_IN_PLACE;
  }

  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, *(&self->super.super.isa + *v74), a5)}];
  v75 = (self->_threadgroupSize + 31) / self->_threadgroupSize;
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *&v131[0] = v75;
  *(v131 + 8) = vdupq_n_s64(1uLL);
  threadgroupSize = self->_threadgroupSize;
  v134 = *(v131 + 8);
  [a3 dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
  if (v114)
  {
    [a3 setComputePipelineState:?];
    LODWORD(v128) = 0;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v76 = [a5 geometryDescriptors];
    v77 = [v76 countByEnumeratingWithState:&v124 objects:v136 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v125;
      v123 = vdupq_n_s64(1uLL);
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v125 != v79)
          {
            objc_enumerationMutation(v76);
          }

          LODWORD(v130) = [*(*(&v124 + 1) + 8 * i) controlPointCount];
          [a3 setBytes:&v130 length:4 atIndex:15];
          [a3 setBytes:&v128 length:4 atIndex:16];
          v81 = self->_threadgroupSize;
          *&v131[0] = (v130 + v81 - 1) / v81;
          *(v131 + 8) = v123;
          threadgroupSize = v81;
          v134 = v123;
          [a3 dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
          LODWORD(v128) = v128 + 1;
        }

        v78 = [v76 countByEnumeratingWithState:&v124 objects:v136 count:16];
      }

      while (v78);
    }
  }

  if (!v118)
  {
    goto LABEL_136;
  }

  v82 = objc_opt_class();
  if ([v82 isSubclassOfClass:objc_opt_class()])
  {
    v83 = [v112 instanceDescriptorType];
    LODWORD(v128) = [v112 instanceCount];
    [a3 setBytes:&v128 length:4 atIndex:15];
    v84 = -[MTLGPUBVHBuilder newResourceIDsBufferWithBVHs:retainedResources:encoder:](self, "newResourceIDsBufferWithBVHs:retainedResources:encoder:", [v112 instancedAccelerationStructures], a11, a3);
    [a3 setBuffer:v84 offset:0 atIndex:16];
    if (!v128)
    {
      goto LABEL_145;
    }

LABEL_130:
    if (v83 <= 1)
    {
      if (v83)
      {
        if (v83 == 1)
        {
          v95 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_USER_ID;
          v96 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_USER_ID_IN_PLACE;
          goto LABEL_141;
        }

LABEL_153:
        MTLReportFailure(0, "[MTLGPUBVHBuilder refitVertexDataWithEncoder:descriptor:bvhDescriptor:inPlace:sourceBuffer:sourceBufferOffset:scratchBuffer:scratchBufferOffset:retainedResources:innerNodeCapacity:leafNodeCapacity:]", 8253, @"Unexpected MTLAccelerationStructureInstanceDescriptorType", v85, v86, v87, v88, v109);
        v97 = 0;
LABEL_144:
        [a3 setComputePipelineState:v97];
        v98 = self->_threadgroupSize;
        *&v131[0] = (v128 + v98 - 1) / v98;
        *(v131 + 8) = vdupq_n_s64(1uLL);
        threadgroupSize = v98;
        v134 = *(v131 + 8);
        [a3 dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
        goto LABEL_145;
      }
    }

    else if (v83 != 2)
    {
      if (v83 == 3 || v83 == 4)
      {
        v95 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_INDIRECT;
        v96 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_INDIRECT_IN_PLACE;
LABEL_141:
        if (v13)
        {
          v95 = v96;
        }

        v97 = PipelineCache<PipelineKey>::getPipeline(v116, *(&self->super.super.isa + *v95), a5);
        goto LABEL_144;
      }

      goto LABEL_153;
    }

    v95 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_DEFAULT;
    v96 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_DEFAULT_IN_PLACE;
    goto LABEL_141;
  }

  v89 = objc_opt_class();
  if (![v89 isSubclassOfClass:objc_opt_class()])
  {
    MTLReportFailure(0, "[MTLGPUBVHBuilder refitVertexDataWithEncoder:descriptor:bvhDescriptor:inPlace:sourceBuffer:sourceBufferOffset:scratchBuffer:scratchBufferOffset:retainedResources:innerNodeCapacity:leafNodeCapacity:]", 8231, @"Unexpected MTLAccelerationStructureDescriptor type", v90, v91, v92, v93, v109);
LABEL_136:
    v84 = 0;
    goto LABEL_145;
  }

  v83 = [v112 instanceDescriptorType];
  v94 = [v112 maxInstanceCount];
  LODWORD(v128) = v94;
  [a3 setBuffer:objc_msgSend(v112 offset:"instanceCountBuffer") atIndex:{objc_msgSend(v112, "instanceCountBufferOffset"), 15}];
  v84 = 0;
  if (v94)
  {
    goto LABEL_130;
  }

LABEL_145:

  v99 = *MEMORY[0x1E69E9840];
}

- (void)refitPrimitiveData:(id)a3 inPlace:(BOOL)a4 bvhDescriptor:(id)a5
{
  v7 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_PRIMITIVE_DATA;
  if (a4)
  {
    v7 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_PRIMITIVE_DATA_IN_PLACE;
  }

  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v7), a5)}];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  threadgroupSize = self->_threadgroupSize;
  v10 = vdupq_n_s64(1uLL);
  v11 = v10;
  v12 = 1;
  v9 = threadgroupSize;
  [a3 dispatchThreadgroups:&v11 threadsPerThreadgroup:&v9];
}

- (void)refitMTLSWBVHWithEncoder:(id)a3 descriptor:(id)a4 bvhDescriptor:(id)a5 sourceBuffer:(id)a6 sourceBufferOffset:(unint64_t)a7 destinationBuffer:(id)a8 destinationBufferOffset:(unint64_t)a9 destinationMTLResourceID:(MTLResourceID)a10 destinationAccelerationStructureUniqueIdentifier:(unint64_t)a11 scratchBuffer:(id)a12 scratchBufferOffset:(unint64_t)a13 options:(unint64_t)a14
{
  v21 = a14;
  v99 = *MEMORY[0x1E69E9840];
  v62 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  MTLSWBVHType = getMTLSWBVHType(a4);
  v61 = a4;
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(a4);
  [a5 updatePipelineKey];
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v66 = a5;
  v67 = self;
  v24 = a5;
  v25 = MTLSWBVHPrimitiveType;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:v24 fragmentCapacity:&v93 innerNodeCapacity:&v92 leafNodeCapacity:&v91 primitiveDataCapacity:&v90];
  ++v92;
  v27 = a6 == a8 && a7 == a9;
  if (a8)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  v65 = v28;
  v63 = a6;
  v64 = a7;
  [a3 setBuffer:a6 offset:a7 atIndex:0];
  v60 = a8;
  [a3 setBuffer:a8 offset:a9 atIndex:1];
  if (!MTLSWBVHType)
  {
    if ([(MTLGPUBVHBuilder *)self useResourceBufferForDescriptor:v66])
    {
      [(MTLGPUBVHBuilder *)self setResourceBufferWithDescriptor:v66 retainedResources:v62 onEncoder:a3 atIndex:23];
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = [v66 geometryDescriptors];
      v29 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v87;
        v68 = *v87;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v87 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v86 + 1) + 8 * i);
            if ((v21 & 2) != 0 && [*(*(&v86 + 1) + 8 * i) primitiveDataBuffer])
            {
              [a3 useResource:objc_msgSend(v33 usage:{"primitiveDataBuffer"), 1}];
            }

            if (v21)
            {
              if (v25 == 1)
              {
                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v41 = [v33 boundingBoxBuffers];
                v42 = [v41 countByEnumeratingWithState:&v78 objects:v96 count:16];
                if (v42)
                {
                  v43 = v42;
                  v44 = *v79;
                  do
                  {
                    for (j = 0; j != v43; ++j)
                    {
                      if (*v79 != v44)
                      {
                        objc_enumerationMutation(v41);
                      }

                      [a3 useResource:objc_msgSend(*(*(&v78 + 1) + 8 * j) usage:{"buffer"), 1}];
                    }

                    v43 = [v41 countByEnumeratingWithState:&v78 objects:v96 count:16];
                  }

                  while (v43);
                }
              }

              else
              {
                v34 = v25;
                if (v25)
                {
                  v76 = 0uLL;
                  v77 = 0uLL;
                  v74 = 0uLL;
                  v75 = 0uLL;
                  v46 = [v33 controlPointBuffers];
                  v47 = [v46 countByEnumeratingWithState:&v74 objects:v95 count:16];
                  if (v47)
                  {
                    v48 = v47;
                    v49 = *v75;
                    do
                    {
                      for (k = 0; k != v48; ++k)
                      {
                        if (*v75 != v49)
                        {
                          objc_enumerationMutation(v46);
                        }

                        [a3 useResource:objc_msgSend(*(*(&v74 + 1) + 8 * k) usage:{"buffer"), 1}];
                      }

                      v48 = [v46 countByEnumeratingWithState:&v74 objects:v95 count:16];
                    }

                    while (v48);
                  }

                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  v51 = [v33 radiusBuffers];
                  v52 = [v51 countByEnumeratingWithState:&v70 objects:v94 count:16];
                  if (v52)
                  {
                    v53 = v52;
                    v54 = *v71;
                    do
                    {
                      for (m = 0; m != v53; ++m)
                      {
                        if (*v71 != v54)
                        {
                          objc_enumerationMutation(v51);
                        }

                        [a3 useResource:objc_msgSend(*(*(&v70 + 1) + 8 * m) usage:{"buffer"), 1}];
                      }

                      v53 = [v51 countByEnumeratingWithState:&v70 objects:v94 count:16];
                    }

                    while (v53);
                  }

                  v40 = [v33 indexBuffer];
                  v25 = v34;
                  v31 = v68;
                  goto LABEL_57;
                }

                v84 = 0uLL;
                v85 = 0uLL;
                v82 = 0uLL;
                v83 = 0uLL;
                v35 = [v33 vertexBuffers];
                v36 = [v35 countByEnumeratingWithState:&v82 objects:v97 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v83;
                  do
                  {
                    for (n = 0; n != v37; ++n)
                    {
                      if (*v83 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      [a3 useResource:objc_msgSend(*(*(&v82 + 1) + 8 * n) usage:{"buffer"), 1}];
                    }

                    v37 = [v35 countByEnumeratingWithState:&v82 objects:v97 count:16];
                  }

                  while (v37);
                }

                if ([v33 indexBuffer])
                {
                  [a3 useResource:objc_msgSend(v33 usage:{"indexBuffer"), 1}];
                }

                v25 = v34;
                v31 = v68;
                if ([v33 transformationMatrixBuffer])
                {
                  v40 = [v33 transformationMatrixBuffer];
LABEL_57:
                  [a3 useResource:v40 usage:1];
                  continue;
                }
              }
            }
          }

          v30 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
        }

        while (v30);
      }
    }
  }

  [a3 setBytes:&a11 length:8 atIndex:9];
  if (v21)
  {
    [(MTLGPUBVHBuilder *)v67 refitVertexDataWithEncoder:a3 descriptor:v61 bvhDescriptor:v66 inPlace:v65 sourceBuffer:v63 sourceBufferOffset:v64 scratchBuffer:a12 scratchBufferOffset:a13 retainedResources:v62 innerNodeCapacity:v92 leafNodeCapacity:v91];
  }

  if ((v21 & 2) != 0 && v90)
  {
    [(MTLGPUBVHBuilder *)v67 refitPrimitiveData:a3 inPlace:v65 bvhDescriptor:v66];
  }

  if ((v65 & 1) == 0)
  {
    v57 = (v21 & 2) == 0 && v90 != 0;
    if ((v21 & 1) == 0 || v57)
    {
      BYTE2(v59) = v57;
      BYTE1(v59) = (v21 & 1) == 0;
      LOBYTE(v59) = 0;
      [MTLGPUBVHBuilder copyMTLSWBVHWithEncoder:v67 sourceBuffer:"copyMTLSWBVHWithEncoder:sourceBuffer:sourceBufferOffset:toBuffer:destinationBufferOffset:destinationMTLResourceID:destinationAccelerationStructureUniqueIdentifier:compact:copyVertexData:copyPerPrimitiveData:" sourceBufferOffset:a3 toBuffer:v63 destinationBufferOffset:v64 destinationMTLResourceID:v60 destinationAccelerationStructureUniqueIdentifier:a9 compact:a10._impl copyVertexData:a11 copyPerPrimitiveData:v59];
    }
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)writeSerializedMTLSWBVHSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_SERIALIZED_MTL_BVH_SIZE, self->_pipelineCache.baseThreadgroupSize, 0);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [a3 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)writeSerializedMTLSWBVHRawSizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_SERIALIZED_MTL_BVH_RAW_SIZE, self->_pipelineCache.baseThreadgroupSize, 0);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [a3 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)writeDeserializedMTLSWBVHSizeWithEncoder:(id)a3 serializedBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7
{
  v17 = 0;
  KERNEL_INDEX_GET_DESERIALIZED_MTL_BVH_SIZE_low = LOBYTE(self->KERNEL_INDEX_GET_DESERIALIZED_MTL_BVH_SIZE);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_DESERIALIZED_MTL_BVH_SIZE_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [a3 dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeDeserializedMTLSWPrimitiveBVHSizesWithEncoder:(id)a3 serializedBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizesBufferOffset:(unint64_t)a7
{
  v13 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v14 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  [v13 addObject:v14];
  [(MTLGPUBVHBuilder *)self writeDeserializedMTLSWBVHSizeWithEncoder:a3 serializedBuffer:a4 serializedBufferOffset:a5 toBuffer:v14 sizeBufferOffset:0];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_DESERIALIZED_MTL_PRIMITIVE_BVH_SIZES, self->_pipelineCache.baseThreadgroupSize, 0);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  v16 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v13 indirectBufferStride:0];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  [(MTLGPUBVHBuilder *)self dispatchIndirect64:Pipeline indirectBuffer:v16 indirectBufferOffset:0 threadCountBuffer:v14 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:self->_threadgroupSize encoder:a3];
}

- (void)writeSerializationDataWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 destinationBufferOffset:(unint64_t)a7
{
  v13 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v14 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  [v13 addObject:v14];
  [(MTLGPUBVHBuilder *)self writeSerializedMTLSWBVHSizeWithEncoder:a3 BVHBuffer:a4 BVHBufferOffset:a5 toBuffer:v14 sizeBufferOffset:0];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_MTL_BVH_SERIALIZATION_DATA, self->_pipelineCache.baseThreadgroupSize, 0);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:v14 offset:0 atIndex:1];
  [a3 setBuffer:a6 offset:a7 atIndex:2];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v18 = vdupq_n_s64(1uLL);
  v19 = 1;
  v16 = v18;
  v17 = 1;
  [a3 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
}

- (void)writeSerializedMTLSWBVHWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 primitiveAccelerationStructures:(id)a6 toBuffer:(id)a7 serializedBufferOffset:(unint64_t)a8
{
  v14 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  [(MTLGPUBVHBuilder *)self writeSerializationDataWithEncoder:a3 BVHBuffer:a4 BVHBufferOffset:a5 toBuffer:a7 destinationBufferOffset:a8];
  v15 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  v16 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  [v14 addObject:v15];
  [(MTLGPUBVHBuilder *)self writeSerializedMTLSWBVHRawSizeWithEncoder:a3 BVHBuffer:a4 BVHBufferOffset:a5 toBuffer:v15 sizeBufferOffset:0];
  v17 = a8 + 24;
  v26 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v14 indirectBufferStride:0];
  [MTLGPUBVHBuilder fastIndirectGPUMemcpyWithEncoder:"fastIndirectGPUMemcpyWithEncoder:indirectBuffer:indirectBufferOffset:srcBuffer:srcBufferOffset:dstBuffer:dstBufferOffset:lengthBuffer:lengthOffset:retainedResources:" indirectBuffer:a3 indirectBufferOffset:v17 srcBuffer:v15 srcBufferOffset:0 dstBuffer:v14 dstBufferOffset:? lengthBuffer:? lengthOffset:? retainedResources:?];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_SERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setComputePipelineState:Pipeline];
  [a3 setBuffer:v16 offset:0 atIndex:1];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v29 = vdupq_n_s64(1uLL);
  v30 = 1;
  v27 = v29;
  v28 = 1;
  [a3 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [a3 setBuffer:a7 offset:v17 atIndex:1];
  if (a6)
  {
    v19 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_PATCH_SERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0);
    v20 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:a6 retainedResources:v14 encoder:a3];
    v21 = [(MTLGPUBVHBuilder *)self newResourceIDsBufferWithBVHs:a6 retainedResources:v14 encoder:a3];
    useResourcesBatched(a6, 1, a3);
    v29.i32[0] = [a6 count];
    [a3 setBuffer:v20 offset:0 atIndex:2];
    [a3 setBytes:&v29 length:4 atIndex:3];
    [a3 setBuffer:v21 offset:0 atIndex:4];
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    threadgroupSize = self->_threadgroupSize;
    v22 = self;
    v23 = v26;
    [(MTLGPUBVHBuilder *)v22 dispatchIndirect:v19 indirectBuffer:v26 indirectBufferOffset:0 threadCountBuffer:v16 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:threadgroupSize encoder:a3];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v23 = v26;
  }
}

- (void)writeDeserializedMTLSWBVHWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 primitiveAccelerationStructures:(id)a6 fromBuffer:(id)a7 serializedBufferOffset:(unint64_t)a8 accelerationStructureMTLResourceID:(MTLResourceID)a9 accelerationStructureUniqueIdentifier:(unint64_t)a10
{
  v16 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v17 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  v18 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  [v16 addObject:v17];
  [(MTLGPUBVHBuilder *)self writeDeserializedMTLSWBVHSizeWithEncoder:a3 serializedBuffer:a7 serializedBufferOffset:a8 toBuffer:v17 sizeBufferOffset:0];
  v26 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v16 indirectBufferStride:0];
  [MTLGPUBVHBuilder fastIndirectGPUMemcpyWithEncoder:"fastIndirectGPUMemcpyWithEncoder:indirectBuffer:indirectBufferOffset:srcBuffer:srcBufferOffset:dstBuffer:dstBufferOffset:lengthBuffer:lengthOffset:retainedResources:" indirectBuffer:a3 indirectBufferOffset:a5 srcBuffer:v17 srcBufferOffset:0 dstBuffer:v16 dstBufferOffset:? lengthBuffer:? lengthOffset:? retainedResources:?];
  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_DESERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0)}];
  [a3 setBuffer:a7 offset:a8 + 24 atIndex:0];
  [a3 setBuffer:a4 offset:a5 atIndex:1];
  [a3 setBuffer:v18 offset:0 atIndex:2];
  [a3 setBytes:&a10 length:8 atIndex:3];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v29 = vdupq_n_s64(1uLL);
  v30 = 1;
  v27 = v29;
  v28 = 1;
  [a3 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  if (a6)
  {
    Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_PATCH_DESERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0);
    v20 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:a6 retainedResources:v16 encoder:a3];
    v21 = [(MTLGPUBVHBuilder *)self newResourceIDsBufferWithBVHs:a6 retainedResources:v16 encoder:a3];
    useResourcesBatched(a6, 1, a3);
    [a3 setBuffer:v20 offset:0 atIndex:2];
    [a3 setBuffer:v21 offset:0 atIndex:3];
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    threadgroupSize = self->_threadgroupSize;
    v22 = self;
    v23 = v26;
    [(MTLGPUBVHBuilder *)v22 dispatchIndirect:Pipeline indirectBuffer:v26 indirectBufferOffset:0 threadCountBuffer:v18 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:threadgroupSize encoder:a3];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v23 = v26;
  }
}

- (void)writeSerializedGeometrySizeWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7
{
  v17 = 0;
  KERNEL_INDEX_GET_GEOMETRY_SIZE_low = LOBYTE(self->KERNEL_INDEX_GET_GEOMETRY_SIZE);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_GEOMETRY_SIZE_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [a3 dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeSerializedGeometryPrimitiveCountWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 countBufferOffset:(unint64_t)a7
{
  v17 = 0;
  KERNEL_INDEX_GET_GEOMETRY_PRIMITIVE_COUNT_low = LOBYTE(self->KERNEL_INDEX_GET_GEOMETRY_PRIMITIVE_COUNT);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_GEOMETRY_PRIMITIVE_COUNT_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [a3 dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeSerializedGeometryWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 geometryBufferOffset:(unint64_t)a7
{
  v13 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_EXTRACT_MTL_BVH_PRIMITIVES, self->_pipelineCache.baseThreadgroupSize, 0);
  v15 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  [v13 addObject:v15];
  [(MTLGPUBVHBuilder *)self writeSerializedGeometryPrimitiveCountWithEncoder:a3 BVHBuffer:a4 BVHBufferOffset:a5 toBuffer:v15 countBufferOffset:0];
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  v16 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v13 indirectBufferStride:0];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  [(MTLGPUBVHBuilder *)self dispatchIndirect:Pipeline indirectBuffer:v16 indirectBufferOffset:0 threadCountBuffer:v15 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:self->_threadgroupSize threadgroupSize:self->_threadgroupSize encoder:a3];
}

- (BOOL)writeGenericBVHStructureSizesWithEncoder:(id)a3 version:(unint64_t)a4 BVHBuffer:(id)a5 BVHBufferOffset:(unint64_t)a6 toBuffer:(id)a7 sizesBufferOffset:(unint64_t)a8
{
  v8 = a4 - 256;
  if (a4 - 256 <= 5)
  {
    Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *off_1E6EEA8A0[v8]), self->_pipelineCache.baseThreadgroupSize, 0);
    [a3 setBuffer:a5 offset:a6 atIndex:0];
    [a3 setBuffer:a7 offset:a8 atIndex:1];
    [a3 setComputePipelineState:Pipeline];
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    v18 = vdupq_n_s64(1uLL);
    v19 = 1;
    v16 = v18;
    v17 = 1;
    [a3 dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  }

  return v8 < 6;
}

- (void)writeGenericBVHStructureWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 header:(id)a6 headerBufferOffset:(unint64_t)a7 innerNodes:(id)a8 innerNodeBufferOffset:(unint64_t)a9 leafNodes:(id)a10 leafNodeBufferOffset:(unint64_t)a11 primitives:(id)a12 primitiveBufferOffset:(unint64_t)a13 geometry:(id)a14 geometryOffset:(unint64_t)a15 instanceTransform:(id)a16 instanceTransformOffset:(unint64_t)a17 controlPoints:(id)a18 controlPointBufferOffset:(unint64_t)a19
{
  v26 = [[MTLGenericBVHBuffersSPI alloc] initWithVersion:256];
  [(MTLGenericBVHBuffersSPI *)v26 setHeaderBuffer:a6];
  [(MTLGenericBVHBuffersSPI *)v26 setHeaderBufferOffset:a7];
  [(MTLGenericBVHBuffersSPI *)v26 setInnerNodeBuffer:a8];
  [(MTLGenericBVHBuffersSPI *)v26 setInnerNodeBufferOffset:a9];
  [(MTLGenericBVHBuffersSPI *)v26 setLeafNodeBuffer:a10];
  [(MTLGenericBVHBuffersSPI *)v26 setLeafNodeBufferOffset:a11];
  [(MTLGenericBVHBuffersSPI *)v26 setPrimitiveBuffer:a12];
  [(MTLGenericBVHBuffersSPI *)v26 setPrimitiveBufferOffset:a13];
  [(MTLGenericBVHBuffersSPI *)v26 setGeometryBuffer:a14];
  [(MTLGenericBVHBuffersSPI *)v26 setGeometryBufferOffset:a15];
  [(MTLGenericBVHBuffersSPI *)v26 setInstanceTransformBuffer:a16];
  [(MTLGenericBVHBuffersSPI *)v26 setInstanceTransformBufferOffset:a17];
  [(MTLGenericBVHBuffersSPI *)v26 setControlPointBuffer:a18];
  [(MTLGenericBVHBuffersSPI *)v26 setControlPointBufferOffset:a19];
  [(MTLGPUBVHBuilder *)self writeGenericBVHStructureWithEncoder:a3 BVHBuffer:a4 BVHBufferOffset:a5 into:v26];
}

- (BOOL)writeGenericBVHStructureWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 into:(id)a6
{
  v10 = [a6 headerBuffer];
  v11 = [a6 headerBufferOffset];
  v51 = [a6 innerNodeBuffer];
  v45 = [a6 innerNodeBufferOffset];
  v52 = [a6 leafNodeBuffer];
  v46 = [a6 leafNodeBufferOffset];
  v53 = [a6 primitiveBuffer];
  v47 = [a6 primitiveBufferOffset];
  v55 = [a6 geometryBuffer];
  v48 = [a6 geometryBufferOffset];
  v12 = [a6 instanceTransformBuffer];
  v49 = [a6 instanceTransformBufferOffset];
  v54 = [a6 perPrimitiveDataBuffer];
  v13 = [a6 perPrimitiveDataBufferOffset];
  v14 = [a6 controlPointBuffer];
  v15 = [a6 controlPointBufferOffset];
  v16 = [a6 version];
  v17 = v16 - 256;
  if ((v16 - 256) <= 5)
  {
    v41 = v15;
    v42 = v12;
    v40 = v13;
    v44 = v14;
    v18 = off_1E6EEA900[v17];
    v34 = qword_185DC64A0[v17];
    v36 = qword_185DC64D0[v17];
    v37 = qword_185DC6500[v17];
    v43 = v16 - 256;
    v38 = qword_185DC6530[v17];
    v39 = qword_185DC6560[v17];
    p_pipelineCache = &self->_pipelineCache;
    Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *off_1E6EEA8D0[v17]), self->_pipelineCache.baseThreadgroupSize, 0);
    v21 = self;
    v35 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v18), self->_pipelineCache.baseThreadgroupSize, 0);
    [a3 setBuffer:a4 offset:a5 atIndex:0];
    v22 = v10;
    [a3 setBuffer:v10 offset:v11 atIndex:1];
    [a3 setComputePipelineState:Pipeline];
    if ([a3 dispatchType] == 1)
    {
      [a3 memoryBarrierWithScope:1];
    }

    v58 = vdupq_n_s64(1uLL);
    v59 = 1;
    *v57 = v58;
    *&v57[16] = 1;
    [a3 dispatchThreadgroups:&v58 threadsPerThreadgroup:v57];
    v56 = [(MTLDevice *)v21->_device newBufferWithLength:12 options:0];
    if (v51)
    {
      v23 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v21->KERNEL_INDEX_EXTRACT_MTL_BVH_INNER_NODES, p_pipelineCache->baseThreadgroupSize, 0);
      [a3 setBuffer:a4 offset:a5 atIndex:0];
      [a3 setBuffer:v51 offset:v45 atIndex:1];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)v21 dispatchIndirect:v23 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:v10 threadCountBufferOffset:v34 + v11 threadCountIndex:0 threadgroupDivisor:v21->_threadgroupSize threadgroupSize:v21->_threadgroupSize encoder:a3];
    }

    v24 = v55;
    v25 = a5;
    if (v52)
    {
      [a3 setBuffer:a4 offset:a5 atIndex:0];
      [a3 setBuffer:v52 offset:v46 atIndex:1];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)v21 dispatchIndirect:v35 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:v10 threadCountBufferOffset:v36 + v11 threadCountIndex:0 threadgroupDivisor:v21->_threadgroupSize threadgroupSize:v21->_threadgroupSize encoder:a3];
    }

    if (v53)
    {
      v26 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v21->KERNEL_INDEX_EXTRACT_MTL_BVH_PRIMITIVE_NODES, p_pipelineCache->baseThreadgroupSize, 0);
      [a3 setBuffer:a4 offset:? atIndex:?];
      [a3 setBuffer:v53 offset:v47 atIndex:1];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)v21 dispatchIndirect:v26 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:v10 threadCountBufferOffset:v37 + v11 threadCountIndex:0 threadgroupDivisor:v21->_threadgroupSize threadgroupSize:v21->_threadgroupSize encoder:a3];
      v25 = a5;
      v24 = v55;
    }

    if ([v24 length])
    {
      if ([a6 version] < 0x103)
      {
        v29 = [a6 version];
        baseThreadgroupSize = p_pipelineCache->baseThreadgroupSize;
        if (v29 < 0x102)
        {
          v30 = 568;
        }

        else
        {
          v30 = 660;
        }

        KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2 = *(&v21->super.super.isa + v30);
      }

      else
      {
        KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2 = v21->KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2;
        baseThreadgroupSize = p_pipelineCache->baseThreadgroupSize;
      }

      v31 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2, baseThreadgroupSize, 0);
      [a3 setBuffer:a4 offset:v25 atIndex:0];
      [a3 setBuffer:v24 offset:v48 atIndex:1];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)v21 dispatchIndirect:v31 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:v22 threadCountBufferOffset:v38 + v11 threadCountIndex:0 threadgroupDivisor:v21->_threadgroupSize encoder:a3];
    }

    if ([v42 length])
    {
      v32 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v21->KERNEL_INDEX_EXTRACT_MTL_BVH_TRANSFORMS, p_pipelineCache->baseThreadgroupSize, 0);
      [a3 setBuffer:a4 offset:v25 atIndex:0];
      [a3 setBuffer:v42 offset:v49 atIndex:1];
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)v21 dispatchIndirect:v32 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:v22 threadCountBufferOffset:v39 + v11 threadCountIndex:0 threadgroupDivisor:v21->_threadgroupSize encoder:a3];
    }

    if ([v54 length])
    {
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v21->KERNEL_INDEX_EXTRACT_PRIMITIVE_DATA, p_pipelineCache->baseThreadgroupSize, 0)}];
      [a3 setBuffer:a4 offset:v25 atIndex:0];
      [a3 setBuffer:v54 offset:v40 atIndex:1];
      v58 = vdupq_n_s64(1uLL);
      v59 = 1;
      *v57 = v21->_threadgroupSize;
      *&v57[8] = v58;
      [a3 dispatchThreadgroups:&v58 threadsPerThreadgroup:v57];
    }

    if ([v44 length])
    {
      if ([a3 dispatchType] == 1)
      {
        [a3 memoryBarrierWithScope:1];
      }

      [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v21->KERNEL_INDEX_EXTRACT_CONTROL_POINT_DATA, p_pipelineCache->baseThreadgroupSize, 0)}];
      [a3 setBuffer:a4 offset:v25 atIndex:0];
      [a3 setBuffer:v44 offset:v41 atIndex:1];
      v58 = vdupq_n_s64(1uLL);
      v59 = 1;
      *v57 = v21->_threadgroupSize;
      *&v57[8] = v58;
      [a3 dispatchThreadgroups:&v58 threadsPerThreadgroup:v57];
    }

    v17 = v43;
  }

  return v17 < 6;
}

- (void)writeAccelerationStructureSerializationDataWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 offset:(unint64_t)a7
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_SERIALIZATION_DATA, self->_pipelineCache.baseThreadgroupSize, 0);
  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:Pipeline];
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [a3 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)writeMTLSWBVHAccelerationStructureDepthWithEncoder:(id)a3 BVHBuffer:(id)a4 BVHBufferOffset:(unint64_t)a5 toBuffer:(id)a6 sizeBufferOffset:(unint64_t)a7
{
  if ([a3 dispatchType] == 1)
  {
    [a3 memoryBarrierWithScope:1];
  }

  [a3 setBuffer:a4 offset:a5 atIndex:0];
  [a3 setBuffer:a6 offset:a7 atIndex:1];
  [a3 setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_MTL_BVH_DEPTH, self->_pipelineCache.baseThreadgroupSize, 0)}];
  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [a3 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 24) = 1065353216;
  *(self + 17) = 0;
  *(self + 143) = 0;
  return self;
}

- (uint64_t)initWithDevice:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end