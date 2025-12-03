@interface MTLGPUBVHBuilder
+ (unint64_t)prefixSumScratchBufferSizeWithCapacity:(unint64_t)capacity;
- ($D4F0DBFB58BF58C1D2D6E8FF21CEAEC6)getMTLSWBVHSizeAndOffsetsForDescriptor:(SEL)descriptor bvhDescriptor:(id)bvhDescriptor;
- (BOOL)useResourceBufferForDescriptor:(id)descriptor;
- (BOOL)useSpatialSplitsForDescriptor:(id)descriptor;
- (BOOL)writeGenericBVHStructureSizesWithEncoder:(id)encoder version:(unint64_t)version BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizesBufferOffset:(unint64_t)bufferOffset;
- (BOOL)writeGenericBVHStructureWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset into:(id)into;
- (MTLGPUBVHBuilder)initWithDevice:(id)device;
- (id).cxx_construct;
- (id)newGeometryBufferWithGeometryDescriptors:(id)descriptors retainedResources:(id)resources;
- (id)newIndirectBufferWithCapacity:(unint64_t)capacity withRetainedResources:(id)resources indirectBufferStride:(unint64_t *)stride;
- (id)newInstanceBufferWithBVHs:(id)hs retainedResources:(id)resources encoder:(id)encoder encodedStride:(unint64_t *)stride;
- (id)newPrimitiveCountBufferWithEncoder:(id)encoder descriptor:(id)descriptor retainedResources:(id)resources;
- (id)newResourceBufferWithDescriptor:(id)descriptor retainedResources:(id)resources;
- (id)newResourceIDsBufferWithBVHs:(id)hs retainedResources:(id)resources encoder:(id)encoder;
- (id)retainedResourcesArrayWithEncoder:(id)encoder;
- (uint64_t)initWithDevice:;
- (unint64_t)fragmentScratchSizeForDescriptor:(id)descriptor;
- (unint64_t)fragmentTotalThreadgroupCountForDescriptor:(id)descriptor;
- (unint64_t)getBuildScratchBufferSizeForDescriptor:(id)descriptor;
- (unint64_t)getEncodeMTLSWBVHScratchBufferSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor;
- (unint64_t)getGenericBVHSizeForDescriptor:(id)descriptor;
- (unint64_t)getGenericBVHSizeForDescriptor:(id)descriptor nodeOffset:(unint64_t *)offset fragmentOffset:(unint64_t *)fragmentOffset fragmentIndexOffset:(unint64_t *)indexOffset childIndexOffset:(unint64_t *)childIndexOffset;
- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor;
- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor refitDataOffset:(unint64_t *)offset innerNodeOffset:(unint64_t *)nodeOffset leafNodeOffset:(unint64_t *)leafNodeOffset primitiveOffset:(unint64_t *)primitiveOffset controlPointOffset:(unint64_t *)pointOffset primitiveRefitDataOffset:(unint64_t *)self0 geometryOffset:(unint64_t *)self1 primitiveBVHOffset:(unint64_t *)self2 transformOffset:(unint64_t *)self3 instancedResourceIDsOffset:(unint64_t *)self4;
- (unint64_t)getRefitScratchBufferSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor;
- (void)addPrefixSumsWithEncoder:(id)encoder inputBuffer:(id)buffer inputBufferOffset:(unint64_t)offset reducedBuffer:(id)reducedBuffer reducedBufferOffset:(unint64_t)bufferOffset countBuffer:(id)countBuffer countBufferOffset:(unint64_t)countBufferOffset capacity:(unint64_t)self0;
- (void)buildGenericBVHWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset scratchBuffer:(id)scratchBuffer scratchBufferOffset:(unint64_t)bufferOffset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)self0;
- (void)buildWithEncoder:(id)encoder descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)bufferOffset fragmentIndexBuffer0:(id)buffer0 fragmentIndexBuffer0Offset:(unint64_t)self0 nodeBuffer:(id)self1 nodeBufferOffset:(unint64_t)self2 childIndexBuffer:(id)self3 childIndexBufferOffset:(unint64_t)self4 counterBuffer:(id)self5 counterBufferOffset:(unint64_t)self6 fragmentCountBuffer:(id)self7 fragmentCountBufferOffset:(unint64_t)self8 boundsMinBuffer:(id)self9 boundsMinBufferOffset:(unint64_t)minBufferOffset boundsMaxBuffer:(id)maxBuffer boundsMaxBufferOffset:(unint64_t)maxBufferOffset boundsEndMinBuffer:(id)endMinBuffer boundsEndMinBufferOffset:(unint64_t)endMinBufferOffset boundsEndMaxBuffer:(id)endMaxBuffer boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)encoder0 scratchBufferOffsets:(ScratchBufferOffset *)encoder1;
- (void)copyAndCompactMTLSWBVHWithEncoder:(id)encoder sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)d destinationAccelerationStructureUniqueIdentifier:(unint64_t)identifier;
- (void)copyFromBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset length:(unint64_t)length encoder:(id)encoder;
- (void)copyMTLSWBVHWithEncoder:(id)encoder sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)d destinationAccelerationStructureUniqueIdentifier:(unint64_t)identifier;
- (void)copyMTLSWBVHWithEncoder:(id)encoder sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)d destinationAccelerationStructureUniqueIdentifier:(unint64_t)identifier compact:(BOOL)self0 copyVertexData:(BOOL)self1 copyPerPrimitiveData:(BOOL)self2;
- (void)dealloc;
- (void)dispatchIndirect64:(id)indirect64 indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadCountBuffer:(id)countBuffer threadCountBufferOffset:(unint64_t)bufferOffset threadCountIndex:(unint64_t)index threadgroupDivisor:(unint64_t)divisor encoder:(id)self0;
- (void)dispatchIndirect:(id)indirect counterBuffer:(id)buffer counterBufferOffset:(unint64_t)offset counterIndex:(unint64_t)index threadgroupSize:(unint64_t)size encoder:(id)encoder;
- (void)dispatchIndirect:(id)indirect counterBuffer:(id)buffer counterBufferOffset:(unint64_t)offset threadgroupSize:(unint64_t)size encoder:(id)encoder;
- (void)dispatchIndirect:(id)indirect indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset counterBuffer:(id)counterBuffer counterBufferOffset:(unint64_t)bufferOffset counterIndex:(unint64_t)index threadgroupDivisor:(unint64_t)divisor threadgroupSize:(unint64_t)self0 encoder:(id)self1;
- (void)dispatchIndirect:(id)indirect indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadCountBuffer:(id)countBuffer threadCountBufferOffset:(unint64_t)bufferOffset threadCountIndex:(unint64_t)index threadgroupDivisor:(unint64_t)divisor threadgroupSize:(unint64_t)self0 encoder:(id)self1;
- (void)encodeMTLSWBVHWithEncoder:(id)encoder descriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset genericBVHBuffer:(id)hBuffer genericBVHBufferOffset:(unint64_t)bufferOffset scratchBuffer:(id)self0 scratchBufferOffset:(unint64_t)self1 gpuResourceID:(MTLResourceID)self2 accelerationStructureUniqueIdentifier:(unint64_t)self3;
- (void)fastIndirectGPUMemcpyWithEncoder:(id)encoder indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset srcBuffer:(id)srcBuffer srcBufferOffset:(unint64_t)bufferOffset dstBuffer:(id)dstBuffer dstBufferOffset:(unint64_t)dstBufferOffset lengthBuffer:(id)self0 lengthOffset:(unint64_t)self1 retainedResources:(id)self2;
- (void)getBoundingBoxFragmentsWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)bufferOffset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)self0 fragmentCountBuffer:(id)self1 fragmentCountBufferOffset:(unint64_t)self2 boundsMinBuffer:(id)self3 boundsMinBufferOffset:(unint64_t)self4 boundsMaxBuffer:(id)self5 boundsMaxBufferOffset:(unint64_t)self6 boundsEndMinBuffer:(id)self7 boundsEndMinBufferOffset:(unint64_t)self8 boundsEndMaxBuffer:(id)self9 boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)startTimeBufferOffset fragmentScratchBuffer:(id)scratchBuffer fragmentScratchBufferOffset:(unint64_t)scratchBufferOffset;
- (void)getCurveFragmentsWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)bufferOffset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)self0 fragmentCountBuffer:(id)self1 fragmentCountBufferOffset:(unint64_t)self2 boundsMinBuffer:(id)self3 boundsMinBufferOffset:(unint64_t)self4 boundsMaxBuffer:(id)self5 boundsMaxBufferOffset:(unint64_t)self6 boundsEndMinBuffer:(id)self7 boundsEndMinBufferOffset:(unint64_t)self8 boundsEndMaxBuffer:(id)self9 boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)startTimeBufferOffset;
- (void)getMTLInstanceBoundingBoxesWithEncoder:(id)encoder descriptor:(id)descriptor boundingBoxBuffer:(id)buffer boundingBoxBufferOffset:(unint64_t)offset;
- (void)getPolygonFragmentsWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)bufferOffset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)self0 fragmentCountBuffer:(id)self1 fragmentCountBufferOffset:(unint64_t)self2 boundsMinBuffer:(id)self3 boundsMinBufferOffset:(unint64_t)self4 boundsMaxBuffer:(id)self5 boundsMaxBufferOffset:(unint64_t)self6 boundsEndMinBuffer:(id)self7 boundsEndMinBufferOffset:(unint64_t)self8 boundsEndMaxBuffer:(id)self9 boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)startTimeBufferOffset;
- (void)initPipelinesWithDevice:(id)device;
- (void)initializeCounterBuffer:(id)buffer counterBuffer:(id)counterBuffer counterBufferOffset:(unint64_t)offset;
- (void)layoutNodesBreadthFirstWithEncoder:(id)encoder descriptor:(id)descriptor BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset counterBuffer:(id)counterBuffer counterBufferOffset:(unint64_t)bufferOffset nodeMappingBuffer:(id)mappingBuffer nodeMappingBufferOffset:(unint64_t)self0 levelOffsetsBuffer:(id)self1 levelOffsetsBufferOffset:(unint64_t)self2 levelCountsBuffer:(id)self3 levelCountsBufferOffset:(unint64_t)self4 scratchBuffer:(id)self5 scratchBufferOffset:(unint64_t)self6;
- (void)prefixSumWithEncoder:(id)encoder inputBuffer:(id)buffer inputBufferOffset:(unint64_t)offset reducedBuffer:(id)reducedBuffer reducedBufferOffset:(unint64_t)bufferOffset scratchBuffer:(id)scratchBuffer scratchBufferOffset:(unint64_t)scratchBufferOffset countBuffer:(id)self0 countBufferOffset:(unint64_t)self1 capacity:(unint64_t)self2;
- (void)refitMTLSWBVHWithEncoder:(id)encoder descriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)self0 destinationAccelerationStructureUniqueIdentifier:(unint64_t)self1 scratchBuffer:(id)self2 scratchBufferOffset:(unint64_t)self3 options:(unint64_t)self4;
- (void)refitPrimitiveData:(id)data inPlace:(BOOL)place bvhDescriptor:(id)descriptor;
- (void)refitVertexDataWithEncoder:(id)encoder descriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor inPlace:(BOOL)place sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset scratchBuffer:(id)scratchBuffer scratchBufferOffset:(unint64_t)self0 retainedResources:(id)self1 innerNodeCapacity:(unint64_t)self2 leafNodeCapacity:(unint64_t)self3;
- (void)setCounters:(const CounterValue *)counters numCounters:(unint64_t)numCounters encoder:(id)encoder;
- (void)setGeometryBufferWithGeometryDescriptors:(id)descriptors retainedResources:(id)resources onEncoder:(id)encoder atIndex:(unint64_t)index;
- (void)setResourceBufferWithDescriptor:(id)descriptor retainedResources:(id)resources onEncoder:(id)encoder atIndex:(unint64_t)index;
- (void)threadgroupPrefixSumWithEncoder:(id)encoder inputBuffer:(id)buffer inputBufferOffset:(unint64_t)offset reducedBuffer:(id)reducedBuffer reducedBufferOffset:(unint64_t)bufferOffset countBuffer:(id)countBuffer countBufferOffset:(unint64_t)countBufferOffset capacity:(unint64_t)self0;
- (void)writeAccelerationStructureSerializationDataWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer offset:(unint64_t)a7;
- (void)writeBVHHeaderWithEncoder:(id)encoder descriptor:(id)descriptor tmpCounterBuffer:(id)buffer tmpCounterBufferOffset:(unint64_t)offset nodeBuffer:(id)nodeBuffer nodeBufferOffset:(unint64_t)bufferOffset headerBuffer:(id)headerBuffer headerBufferOffset:(unint64_t)self0 nodeOffset:(unint64_t)self1 fragmentOffset:(unint64_t)self2 fragmentIndexOffset:(unint64_t)self3 childIndexOffset:(unint64_t)self4 size:(unint64_t)self5;
- (void)writeCompactedMTLSWBVHSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset sizeDataType:(unint64_t)type;
- (void)writeDeserializedMTLSWBVHSizeWithEncoder:(id)encoder serializedBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeDeserializedMTLSWBVHWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset primitiveAccelerationStructures:(id)structures fromBuffer:(id)fromBuffer serializedBufferOffset:(unint64_t)bufferOffset accelerationStructureMTLResourceID:(MTLResourceID)d accelerationStructureUniqueIdentifier:(unint64_t)self0;
- (void)writeDeserializedMTLSWPrimitiveBVHSizesWithEncoder:(id)encoder serializedBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizesBufferOffset:(unint64_t)bufferOffset;
- (void)writeGenericBVHStructureWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset header:(id)header headerBufferOffset:(unint64_t)bufferOffset innerNodes:(id)nodes innerNodeBufferOffset:(unint64_t)nodeBufferOffset leafNodes:(id)self0 leafNodeBufferOffset:(unint64_t)self1 primitives:(id)self2 primitiveBufferOffset:(unint64_t)self3 geometry:(id)self4 geometryOffset:(unint64_t)self5 instanceTransform:(id)self6 instanceTransformOffset:(unint64_t)self7 controlPoints:(id)self8 controlPointBufferOffset:(unint64_t)self9;
- (void)writeMTLSWBVHAccelerationStructureDepthWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeMTLSWBVHSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializationDataWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedGeometryPrimitiveCountWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer countBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedGeometrySizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedGeometryWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer geometryBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedMTLSWBVHRawSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedMTLSWBVHSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedMTLSWBVHWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset primitiveAccelerationStructures:(id)structures toBuffer:(id)toBuffer serializedBufferOffset:(unint64_t)bufferOffset;
@end

@implementation MTLGPUBVHBuilder

- (MTLGPUBVHBuilder)initWithDevice:(id)device
{
  v17 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MTLGPUBVHBuilder;
  v4 = [(MTLBVHBuilder *)&v13 init];
  if (v4)
  {
    *(v4 + 1) = device;
    *(v4 + 144) = [device supportsFamily:1007];
    *(v4 + 145) = [device supportsFamily:1008];
    *(v4 + 146) = [device supportsFamily:1006];
    v4[4] = 64;
    v4[5] = 512;
    v4[6] = 0x2000;
    if ([objc_msgSend(device "name")])
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
    if ([objc_msgSend(device "name")])
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
    if ([objc_msgSend(device "name")])
    {
      v7 = 256;
    }

    else
    {
      v7 = 64;
    }

    v4[9] = v7;
    v4[10] = 64;
    v4[11] = getDispatchBinsSmallTGSize(device);
    *(v4 + 48) = [device supportsFamily:1006];
    v12 = 0;
    *(v4 + 7) = [device newLibraryWithURL:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), "URLForResource:withExtension:", @"MTLBVHBuilder", @"metallib", &v12}];
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
    [v4 initPipelinesWithDevice:device];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)initPipelinesWithDevice:(id)device
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

- (BOOL)useSpatialSplitsForDescriptor:(id)descriptor
{
  v4 = [objc_msgSend(descriptor "geometryDescriptors")];
  if (v4)
  {
    if ([objc_msgSend(objc_msgSend(descriptor "geometryDescriptors")])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      LOBYTE(v4) = [descriptor splitHeuristic] == 3;
    }
  }

  return v4;
}

- (BOOL)useResourceBufferForDescriptor:(id)descriptor
{
  result = 1;
  if ([objc_msgSend(descriptor "geometryDescriptors")] <= 1 && (objc_msgSend(descriptor, "primitiveMotion") & 1) == 0)
  {
    if (![objc_msgSend(descriptor "geometryDescriptors")])
    {
      return 0;
    }

    v5 = [objc_msgSend(descriptor "geometryDescriptors")];
    if (([v5 primitiveType] || !objc_msgSend(v5, "transformationMatrixBuffer")) && (!objc_msgSend(v5, "primitiveDataBuffer") || !objc_msgSend(v5, "primitiveDataElementSize")) && objc_msgSend(v5, "primitiveType") != 2)
    {
      return 0;
    }
  }

  return result;
}

- (unint64_t)fragmentScratchSizeForDescriptor:(id)descriptor
{
  if (![descriptor deterministic])
  {
    return 0;
  }

  v5 = [(MTLGPUBVHBuilder *)self fragmentTotalThreadgroupCountForDescriptor:descriptor];
  return [MTLGPUBVHBuilder prefixSumScratchBufferSizeWithCapacity:v5]+ 4 * v5;
}

- (unint64_t)getBuildScratchBufferSizeForDescriptor:(id)descriptor
{
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:descriptor fragmentCapacity:&v37 fragmentIndexCapacity:&v33 innerNodeCapacity:&v36 leafNodeCapacity:&v35 primitiveDataCapacity:&v34];
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

  v9 = [(MTLGPUBVHBuilder *)self fragmentScratchSizeForDescriptor:descriptor];
  v10 = v33;
  v11 = (4 * v33 + 255) & 0xFFFFFFFFFFFFFF00;
  maxSubKeyframeTemporalSplits = [descriptor maxSubKeyframeTemporalSplits];
  v13 = 2 * v10 + 255;
  if (!maxSubKeyframeTemporalSplits)
  {
    v13 = 0;
  }

  v14 = (((((((((v13 + v11) & 0xFFFFFFFFFFFFFF00) + 259) & 0xFFFFFFFFFFFFFF00) + 271) & 0xFFFFFFFFFFFFFF00) + 271) & 0xFFFFFFFFFFFFFF00) + 3071) & 0xFFFFFFFFFFFFFF00;
  if ([descriptor motion])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  if ([descriptor motion])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 + v15;
  if ([descriptor motion])
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18 + v17;
  if ([descriptor motion])
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = (24 * v5 + 255 + ((24 * v5 + 255 + ((192 * v6 + 255 + ((192 * v6 + 255 + ((192 * v6 + 255 + ((8 * v35 + 255 + 1536 * v6 + ((8 * v35 + 255 + ((v9 + v20 + v19 + v14 + 255) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00;
  motion = [descriptor motion];
  v23 = 76;
  if (motion)
  {
    v23 = 140;
  }

  v24 = (((16 * v6 + 255 + ((16 * v6 + 255 + ((4 * v6 + 255 + ((4 * v6 + 255 + ((v21 + v23 * v5 + 255) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00)) & 0xFFFFFFFFFFFFFF00) + 275) & 0xFFFFFFFFFFFFFF00;
  motion2 = [descriptor motion];
  if ([descriptor motion])
  {
    v26 = 768 * v6;
  }

  else
  {
    v26 = 0;
  }

  if (motion2)
  {
    v27 = 768 * v6 + 267;
  }

  else
  {
    v27 = 256;
  }

  v28 = (v27 + v26 + v24) & 0xFFFFFFFFFFFFFF00;
  if ([descriptor motion])
  {
    v29 = 192 * v6 + 255;
  }

  else
  {
    v29 = 0;
  }

  v30 = (v29 + v28) & 0xFFFFFFFFFFFFFF00;
  if ([descriptor motion])
  {
    v31 = 192 * v6;
  }

  else
  {
    v31 = 0;
  }

  return v30 + v31;
}

- (unint64_t)fragmentTotalThreadgroupCountForDescriptor:(id)descriptor
{
  geometryDescriptors = [descriptor geometryDescriptors];
  v5 = [geometryDescriptors count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    v9 = [objc_msgSend(geometryDescriptors objectAtIndexedSubscript:{i), "primitiveCount"}];
    if (v9)
    {
      v7 += (v9 + self->_threadgroupSize - 1) / self->_threadgroupSize;
    }
  }

  return v7;
}

- (id)retainedResourcesArrayWithEncoder:(id)encoder
{
  commandBuffer = [encoder commandBuffer];
  if ([commandBuffer retainedReferences])
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__MTLGPUBVHBuilder_retainedResourcesArrayWithEncoder___block_invoke;
  v6[3] = &unk_1E6EEA880;
  v6[4] = v4;
  [commandBuffer addCompletedHandler:v6];
  return v4;
}

- (id)newResourceBufferWithDescriptor:(id)descriptor retainedResources:(id)resources
{
  descriptorCopy = descriptor;
  geometryDescriptors = [descriptor geometryDescriptors];
  LODWORD(descriptorCopy) = [descriptorCopy primitiveMotion];
  v8 = [geometryDescriptors count];
  v12 = 0;
  v9 = [(MTLDevice *)self->_device newBufferWithLength:computeResourceBufferLength(descriptorCopy options:&v12, v8, geometryDescriptors), 0];
  contents = [v9 contents];
  setResourceBufferContents(contents, descriptorCopy, v12, v8, geometryDescriptors, [v9 gpuAddress]);
  [resources addObject:v9];
  return v9;
}

- (void)setResourceBufferWithDescriptor:(id)descriptor retainedResources:(id)resources onEncoder:(id)encoder atIndex:(unint64_t)index
{
  v24 = *MEMORY[0x1E69E9840];
  geometryDescriptors = [descriptor geometryDescriptors];
  primitiveMotion = [descriptor primitiveMotion];
  v13 = [geometryDescriptors count];
  v23 = 0;
  v14 = computeResourceBufferLength(primitiveMotion, &v23, v13, geometryDescriptors);
  v15 = v14;
  if (v13 > 0x10)
  {
    v16 = 1;
  }

  else
  {
    v16 = primitiveMotion;
  }

  if (v16)
  {
    v22 = [(MTLDevice *)self->_device newBufferWithLength:v14 options:0];
    contents = [v22 contents];
  }

  else
  {
    contents = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(contents, v14);
    v22 = 0;
  }

  setResourceBufferContents(contents, primitiveMotion, v23, v13, geometryDescriptors, [v22 gpuAddress]);
  if (v16)
  {
    [encoder setBuffer:v22 offset:0 atIndex:index];
    [resources addObject:v22];
    v18 = *MEMORY[0x1E69E9840];
    v19 = v22;
  }

  else
  {
    [encoder setBytes:contents length:v15 atIndex:index];
    v20 = *MEMORY[0x1E69E9840];
  }
}

- (id)newIndirectBufferWithCapacity:(unint64_t)capacity withRetainedResources:(id)resources indirectBufferStride:(unint64_t *)stride
{
  if (self->_supportsDispatchThreadsWithIndirectBuffer)
  {
    v7 = 12;
  }

  else
  {
    v7 = 256;
  }

  v8 = [(MTLDevice *)self->_device newBufferWithLength:v7 * capacity options:0];
  if (stride)
  {
    *stride = v7;
  }

  [resources addObject:v8];
  return v8;
}

- (id)newPrimitiveCountBufferWithEncoder:(id)encoder descriptor:(id)descriptor retainedResources:(id)resources
{
  v7 = -[MTLDevice newBufferWithLength:options:](self->_device, "newBufferWithLength:options:", 4 * [objc_msgSend(descriptor geometryDescriptors], 0);
  [resources addObject:v7];
  contents = [v7 contents];
  if ([objc_msgSend(descriptor "geometryDescriptors")])
  {
    v9 = 0;
    do
    {
      *(contents + 4 * v9) = [objc_msgSend(objc_msgSend(descriptor "geometryDescriptors")];
      ++v9;
    }

    while (v9 < [objc_msgSend(descriptor "geometryDescriptors")]);
  }

  return v7;
}

- (unint64_t)getGenericBVHSizeForDescriptor:(id)descriptor nodeOffset:(unint64_t *)offset fragmentOffset:(unint64_t *)fragmentOffset fragmentIndexOffset:(unint64_t *)indexOffset childIndexOffset:(unint64_t *)childIndexOffset
{
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:descriptor fragmentCapacity:&v25 fragmentIndexCapacity:&v21 innerNodeCapacity:&v24 leafNodeCapacity:&v23 primitiveDataCapacity:&v22];
  *offset = 256;
  motion = [descriptor motion];
  v13 = 36;
  if (motion)
  {
    v13 = 72;
  }

  v14 = (v23 + v24) * v13 + 511;
  *fragmentOffset = v14 & 0xFFFFFFFFFFFFFF00;
  motion2 = [descriptor motion];
  v16 = 40;
  if (motion2)
  {
    v16 = 72;
  }

  v17 = ((v14 | 0xF8) + v25 * v16) & 0xFFFFFFFFFFFFFF00;
  *indexOffset = v17;
  v18 = (v17 + 4 * v21 + 255) & 0xFFFFFFFFFFFFFF00;
  *childIndexOffset = v18;
  if ([descriptor branchingFactor] != 2)
  {
    v19 = v24;
    v18 += 4 * v19 * [descriptor branchingFactor];
  }

  return (v18 + 255) & 0xFFFFFFFFFFFFFF00;
}

- (unint64_t)getGenericBVHSizeForDescriptor:(id)descriptor
{
  v7 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  return [(MTLGPUBVHBuilder *)self getGenericBVHSizeForDescriptor:descriptor nodeOffset:&v7 fragmentOffset:&v6 fragmentIndexOffset:&v5 childIndexOffset:&v4];
}

- (void)setCounters:(const CounterValue *)counters numCounters:(unint64_t)numCounters encoder:(id)encoder
{
  v12 = 0;
  KERNEL_INDEX_SET_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_SET_COUNTERS);
  p_pipelineCache = &self->_pipelineCache;
  v14 = 0u;
  v15 = 0u;
  numCountersCopy = KERNEL_INDEX_SET_COUNTERS_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, &numCountersCopy, &v12)}];
  [encoder setBytes:counters length:16 * numCounters atIndex:30];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  numCountersCopy = numCounters;
  v14 = vdupq_n_s64(1uLL);
  v10 = v12;
  v11 = v14;
  [encoder dispatchThreads:&numCountersCopy threadsPerThreadgroup:&v10];
}

- (void)copyFromBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset length:(unint64_t)length encoder:(id)encoder
{
  if (length)
  {
    lengthCopy = length;
    v21 = 0;
    KERNEL_INDEX_COPY_low = LOBYTE(self->KERNEL_INDEX_COPY);
    p_pipelineCache = &self->_pipelineCache;
    v23 = 0u;
    v24 = 0u;
    v22 = KERNEL_INDEX_COPY_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
    [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, &v22, &v21)}];
    [encoder setBuffer:toBuffer offset:0 atIndex:28];
    [encoder setBuffer:buffer offset:0 atIndex:29];
    v22 = offset >> 2;
    *&v23 = bufferOffset >> 2;
    lengthCopy += 3;
    *(&v23 + 1) = lengthCopy >> 2;
    [encoder setBytes:&v22 length:24 atIndex:30];
    v16 = (v21 + (lengthCopy >> 2) - 1) / v21;
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    v19 = v16;
    v20 = vdupq_n_s64(1uLL);
    v17 = v21;
    v18 = v20;
    [encoder dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  }
}

- (void)dispatchIndirect:(id)indirect indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadCountBuffer:(id)countBuffer threadCountBufferOffset:(unint64_t)bufferOffset threadCountIndex:(unint64_t)index threadgroupDivisor:(unint64_t)divisor threadgroupSize:(unint64_t)self0 encoder:(id)self1
{
  indexCopy = index;
  threadgroupSize = size;
  if (!size)
  {
    threadgroupSize = self->_threadgroupSize;
  }

  v25 = 0;
  KERNEL_INDEX_DISPATCH_INDIRECT_low = LOBYTE(self->KERNEL_INDEX_DISPATCH_INDIRECT);
  p_pipelineCache = &self->_pipelineCache;
  v27 = 0u;
  *&v26[8] = 0u;
  *v26 = KERNEL_INDEX_DISPATCH_INDIRECT_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v26, &v25)}];
  [encoder setBuffer:countBuffer offset:bufferOffset atIndex:28];
  v24[0] = indexCopy;
  v24[1] = divisor;
  [encoder setBytes:v24 length:8 atIndex:29];
  [encoder setBuffer:buffer offset:offset atIndex:30];
  v19 = v25;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v26 = vdupq_n_s64(1uLL);
  *&v26[16] = 1;
  v22 = v19;
  v23 = *v26;
  [encoder dispatchThreadgroups:v26 threadsPerThreadgroup:{&v22, indirect}];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  [encoder setComputePipelineState:v21];
  *v26 = threadgroupSize;
  *&v26[8] = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerThreadgroup:v26];
}

- (void)fastIndirectGPUMemcpyWithEncoder:(id)encoder indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset srcBuffer:(id)srcBuffer srcBufferOffset:(unint64_t)bufferOffset dstBuffer:(id)dstBuffer dstBufferOffset:(unint64_t)dstBufferOffset lengthBuffer:(id)self0 lengthOffset:(unint64_t)self1 retainedResources:(id)self2
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_DISPATCH_INDIRECT_64, self->_pipelineCache.baseThreadgroupSize, 0);
  v19 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_MEMCPY_INDIRECT_64, p_pipelineCache->baseThreadgroupSize, 0);
  [encoder setComputePipelineState:Pipeline];
  [encoder setBuffer:lengthBuffer offset:lengthOffset atIndex:28];
  v20 = 16 * self->_threadgroupSize;
  v28[0] = 0;
  v28[1] = v20;
  [encoder setBytes:v28 length:8 atIndex:29];
  [encoder setBuffer:buffer offset:0 atIndex:30];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v27 = vdupq_n_s64(1uLL);
  *&v27[16] = 1;
  v25 = *v27;
  v26 = 1;
  [encoder dispatchThreadgroups:v27 threadsPerThreadgroup:{&v25, dstBuffer}];
  [encoder setComputePipelineState:v19];
  [encoder setBuffer:srcBuffer offset:bufferOffset atIndex:0];
  [encoder setBuffer:v23 offset:dstBufferOffset atIndex:1];
  [encoder setBuffer:lengthBuffer offset:lengthOffset atIndex:2];
  threadgroupSize = self->_threadgroupSize;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v27 = threadgroupSize;
  *&v27[8] = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerThreadgroup:v27];
}

- (void)dispatchIndirect64:(id)indirect64 indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadCountBuffer:(id)countBuffer threadCountBufferOffset:(unint64_t)bufferOffset threadCountIndex:(unint64_t)index threadgroupDivisor:(unint64_t)divisor encoder:(id)self0
{
  indexCopy = index;
  v25 = 0;
  KERNEL_INDEX_DISPATCH_INDIRECT_64_low = LOBYTE(self->KERNEL_INDEX_DISPATCH_INDIRECT_64);
  p_pipelineCache = &self->_pipelineCache;
  v27 = 0u;
  *&v26[8] = 0u;
  *v26 = KERNEL_INDEX_DISPATCH_INDIRECT_64_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v26, &v25)}];
  [encoder setBuffer:countBuffer offset:bufferOffset atIndex:28];
  v24[0] = indexCopy;
  v24[1] = divisor;
  [encoder setBytes:v24 length:8 atIndex:29];
  [encoder setBuffer:buffer offset:offset atIndex:30];
  v18 = v25;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v26 = vdupq_n_s64(1uLL);
  *&v26[16] = 1;
  v22 = v18;
  v23 = *v26;
  [encoder dispatchThreadgroups:v26 threadsPerThreadgroup:{&v22, indirect64}];
  [encoder setComputePipelineState:v21];
  threadgroupSize = self->_threadgroupSize;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v26 = threadgroupSize;
  *&v26[8] = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerThreadgroup:v26];
}

- (void)dispatchIndirect:(id)indirect indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset counterBuffer:(id)counterBuffer counterBufferOffset:(unint64_t)bufferOffset counterIndex:(unint64_t)index threadgroupDivisor:(unint64_t)divisor threadgroupSize:(unint64_t)self0 encoder:(id)self1
{
  if (divisor == 1)
  {
    [(MTLGPUBVHBuilder *)self dispatchIndirect:indirect counterBuffer:counterBuffer counterBufferOffset:bufferOffset counterIndex:index threadgroupSize:size encoder:encoder];
  }

  else
  {
    [MTLGPUBVHBuilder dispatchIndirect:"dispatchIndirect:indirectBuffer:indirectBufferOffset:threadCountBuffer:threadCountBufferOffset:threadCountIndex:threadgroupDivisor:threadgroupSize:encoder:" indirectBuffer:indirect indirectBufferOffset:buffer threadCountBuffer:offset threadCountBufferOffset:counterBuffer threadCountIndex:bufferOffset threadgroupDivisor:(index & 0xFFFFFFFFFFFFFFLL) << 6 threadgroupSize:? encoder:?];
  }
}

- (void)dispatchIndirect:(id)indirect counterBuffer:(id)buffer counterBufferOffset:(unint64_t)offset counterIndex:(unint64_t)index threadgroupSize:(unint64_t)size encoder:(id)encoder
{
  threadgroupSize = size;
  if (!size)
  {
    threadgroupSize = self->_threadgroupSize;
  }

  [encoder setComputePipelineState:indirect];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v13 = threadgroupSize;
  v14 = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset + (index << 8) threadsPerThreadgroup:&v13];
}

- (void)dispatchIndirect:(id)indirect counterBuffer:(id)buffer counterBufferOffset:(unint64_t)offset threadgroupSize:(unint64_t)size encoder:(id)encoder
{
  threadgroupSize = size;
  if (!size)
  {
    threadgroupSize = self->_threadgroupSize;
  }

  [encoder setComputePipelineState:indirect];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v11 = threadgroupSize;
  v12 = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerThreadgroup:&v11];
}

- (void)getPolygonFragmentsWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)bufferOffset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)self0 fragmentCountBuffer:(id)self1 fragmentCountBufferOffset:(unint64_t)self2 boundsMinBuffer:(id)self3 boundsMinBufferOffset:(unint64_t)self4 boundsMaxBuffer:(id)self5 boundsMaxBufferOffset:(unint64_t)self6 boundsEndMinBuffer:(id)self7 boundsEndMinBufferOffset:(unint64_t)self8 boundsEndMaxBuffer:(id)self9 boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)startTimeBufferOffset
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_FRAGMENTS, descriptor);
  v79 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_GET_POLYGON_FRAGMENTS, descriptor);
  [encoder setBuffer:fragmentCountBuffer offset:countBufferOffset atIndex:1];
  [encoder setBuffer:fragmentBuffer offset:fragmentBufferOffset atIndex:2];
  [encoder setBuffer:minBuffer offset:minBufferOffset atIndex:7];
  [encoder setBuffer:maxBuffer offset:maxBufferOffset atIndex:8];
  if ([descriptor primitiveMotion])
  {
    *v86 = [descriptor primitiveKeyframeCount];
    [encoder setBytes:v86 length:4 atIndex:14];
    [descriptor primitiveMotionStartTime];
    LODWORD(v92) = v28;
    [encoder setBytes:&v92 length:4 atIndex:15];
    [descriptor primitiveMotionEndTime];
    LODWORD(v84) = v29;
    [encoder setBytes:&v84 length:4 atIndex:16];
    [encoder setBuffer:endMinBuffer offset:endMinBufferOffset atIndex:17];
    [encoder setBuffer:endMaxBuffer offset:endMaxBufferOffset atIndex:18];
    [encoder setBuffer:startTimeBuffer offset:startTimeBufferOffset atIndex:19];
    [encoder setBuffer:timeBuffer offset:timeBufferOffset atIndex:20];
  }

  [encoder setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v86 = vdupq_n_s64(1uLL);
  *&v86[16] = 1;
  v92 = threadgroupSize;
  v93 = *v86;
  [encoder dispatchThreadgroups:v86 threadsPerThreadgroup:&v92];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  geometryDescriptors = [descriptor geometryDescriptors];
  v32 = [geometryDescriptors count];
  if (countBuffer)
  {
    v88 = 0;
    v89 = 0;
    if (self->_supportsDispatchThreadsWithIndirectBuffer)
    {
      bufferCopy = buffer;
      KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
      v72 = offset + 200;
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
      v47 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:encoder];
      if ([geometryDescriptors count] <= 4)
      {
        v48 = [geometryDescriptors count];
      }

      else
      {
        v48 = 4;
      }

      bufferCopy = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:v48 withRetainedResources:v47 indirectBufferStride:&v89];
      v70 = 0;
      v72 = 0;
      if (!v32)
      {
        goto LABEL_60;
      }
    }

    v49 = 0;
    v69 = self->_threadgroupSize;
    bufferOffsetCopy = bufferOffset;
    v77 = 0;
    v71 = v32;
    do
    {
      v50 = v49 + 4;
      v73 = v49 + 4;
      if (v49 + 4 >= [geometryDescriptors count])
      {
        v50 = [geometryDescriptors count];
      }

      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        *v86 = bufferOffset + 4 * v49 + [countBuffer gpuAddress];
        *&v86[8] = [bufferCopy gpuAddress] + v72;
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

        [encoder setComputePipelineState:v70];
        [encoder setBytes:v86 length:48 atIndex:30];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        v92 = v50 - v49;
        v93 = vdupq_n_s64(1uLL);
        v84 = v88;
        v85 = v93;
        [encoder dispatchThreads:&v92 threadsPerThreadgroup:&v84];
      }

      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [encoder setComputePipelineState:v79];
      if (v50 != v49)
      {
        v54 = 0;
        v55 = bufferOffsetCopy;
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
          v58 = [geometryDescriptors objectAtIndexedSubscript:v49 + v54];
          if ([v58 primitiveCount])
          {
            [encoder setBuffer:countBuffer offset:v55 atIndex:0];
            [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v58 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v58, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
            [encoder setBuffer:objc_msgSend(v58 offset:"indexBuffer") atIndex:{objc_msgSend(v58, "indexBufferOffset"), 4}];
            LODWORD(v92) = v49 + v54;
            LODWORD(v84) = [v58 polygonType];
            vertexStride = [v58 vertexStride];
            vertexFormat = [v58 vertexFormat];
            if (!vertexStride)
            {
              LODWORD(vertexStride) = MTLAttributeFormatSize(vertexFormat, v61, v62, v63, v64, v65, v66, v67);
            }

            v91 = vertexStride;
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
            [encoder setBytes:&v92 length:4 atIndex:9];
            [encoder setBytes:&v84 length:4 atIndex:10];
            [encoder setBytes:&v91 length:4 atIndex:11];
            [encoder setBytes:&v90 length:4 atIndex:12];
            if (self->_supportsDispatchThreadsWithIndirectBuffer)
            {
              *v86 = self->_threadgroupSize;
              *&v86[8] = vdupq_n_s64(1uLL);
              [encoder dispatchThreadgroupsWithIndirectBuffer:bufferCopy indirectBufferOffset:v57 threadsPerThreadgroup:v86];
            }

            else
            {
              [(MTLGPUBVHBuilder *)self dispatchIndirect:v79 indirectBuffer:bufferCopy indirectBufferOffset:v89 * v54 threadCountBuffer:countBuffer threadCountBufferOffset:bufferOffset threadCountIndex:v49 + v54 threadgroupDivisor:self->_threadgroupSize encoder:encoder];
            }
          }

          ++v54;
          v57 += 12;
          v55 += 4;
        }

        while (v56 != v54);
      }

      v49 += 4;
      bufferOffsetCopy += 16;
      v77 -= 4;
    }

    while (v73 < v71);
    goto LABEL_60;
  }

  [encoder setComputePipelineState:v79];
  if (v32)
  {
    v34 = 0;
    v83 = vdupq_n_s64(1uLL);
    do
    {
      v35 = [geometryDescriptors objectAtIndexedSubscript:v34];
      LODWORD(v84) = [v35 primitiveCount];
      if (v84)
      {
        [encoder setBytes:&v84 length:4 atIndex:0];
        [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v35 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v35, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
        [encoder setBuffer:objc_msgSend(v35 offset:"indexBuffer") atIndex:{objc_msgSend(v35, "indexBufferOffset"), 4}];
        LODWORD(v89) = v34;
        LODWORD(v88) = [v35 polygonType];
        vertexStride2 = [v35 vertexStride];
        vertexFormat2 = [v35 vertexFormat];
        if (!vertexStride2)
        {
          LODWORD(vertexStride2) = MTLAttributeFormatSize(vertexFormat2, v38, v39, v40, v41, v42, v43, v44);
        }

        v91 = vertexStride2;
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
        [encoder setBytes:&v89 length:4 atIndex:9];
        [encoder setBytes:&v88 length:4 atIndex:10];
        [encoder setBytes:&v91 length:4 atIndex:11];
        [encoder setBytes:&v90 length:4 atIndex:12];
        v46 = self->_threadgroupSize;
        *v86 = (v84 + v46 - 1) / v46;
        *&v86[8] = v83;
        v92 = v46;
        v93 = v83;
        [encoder dispatchThreadgroups:v86 threadsPerThreadgroup:&v92];
      }

      ++v34;
    }

    while (v32 != v34);
  }
}

- (void)getBoundingBoxFragmentsWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)bufferOffset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)self0 fragmentCountBuffer:(id)self1 fragmentCountBufferOffset:(unint64_t)self2 boundsMinBuffer:(id)self3 boundsMinBufferOffset:(unint64_t)self4 boundsMaxBuffer:(id)self5 boundsMaxBufferOffset:(unint64_t)self6 boundsEndMinBuffer:(id)self7 boundsEndMinBufferOffset:(unint64_t)self8 boundsEndMaxBuffer:(id)self9 boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)startTimeBufferOffset fragmentScratchBuffer:(id)scratchBuffer fragmentScratchBufferOffset:(unint64_t)scratchBufferOffset
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_FRAGMENTS, descriptor);
  v97[0] = 3;
  deterministic = [descriptor deterministic];
  if (deterministic)
  {
    KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS = self->KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS;
    v97[0] = 3;
    memset(v90, 0, 40);
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS, descriptor, p_pipelineCache->baseThreadgroupSize, v97, v90);
    v68 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v90, 0);
    v97[0] |= 4u;
    v31 = self->KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS;
    memset(v90, 0, 40);
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, v31, descriptor, p_pipelineCache->baseThreadgroupSize, v97, v90);
    v81 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v90, 0);
  }

  else
  {
    v81 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_GET_BOUNDING_BOX_FRAGMENTS, descriptor);
    v68 = 0;
  }

  [encoder setBuffer:fragmentCountBuffer offset:countBufferOffset atIndex:1];
  [encoder setBuffer:fragmentBuffer offset:fragmentBufferOffset atIndex:2];
  [encoder setBuffer:minBuffer offset:minBufferOffset atIndex:7];
  [encoder setBuffer:maxBuffer offset:maxBufferOffset atIndex:8];
  if ([descriptor primitiveMotion])
  {
    LODWORD(v90[0]) = [descriptor primitiveKeyframeCount];
    [encoder setBytes:v90 length:4 atIndex:12];
    [descriptor primitiveMotionStartTime];
    LODWORD(v95) = v32;
    [encoder setBytes:&v95 length:4 atIndex:13];
    [descriptor primitiveMotionEndTime];
    LODWORD(v93) = v33;
    [encoder setBytes:&v93 length:4 atIndex:14];
  }

  if ([descriptor motion])
  {
    [encoder setBuffer:endMinBuffer offset:endMinBufferOffset atIndex:17];
    [encoder setBuffer:endMaxBuffer offset:endMaxBufferOffset atIndex:18];
    [encoder setBuffer:startTimeBuffer offset:startTimeBufferOffset atIndex:19];
    [encoder setBuffer:timeBuffer offset:timeBufferOffset atIndex:20];
  }

  [encoder setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v90[0] = vdupq_n_s64(1uLL);
  *&v90[1] = 1;
  v95 = threadgroupSize;
  v96 = v90[0];
  [encoder dispatchThreadgroups:v90 threadsPerThreadgroup:&v95];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  geometryDescriptors = [descriptor geometryDescriptors];
  v35 = [geometryDescriptors count];
  v95 = 0;
  v96 = 0uLL;
  if (deterministic)
  {
    std::vector<unsigned long>::resize(&v95, v35);
    v36 = 0;
    if (v35)
    {
      for (i = 0; i != v35; ++i)
      {
        v38 = [objc_msgSend(geometryDescriptors objectAtIndexedSubscript:{i), "primitiveCount"}];
        v95[i] = 4 * v36;
        if (v38)
        {
          v36 += (v38 + self->_threadgroupSize - 1) / self->_threadgroupSize;
        }
      }
    }

    v66 = 4 * v36;
    if (countBuffer)
    {
      [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_ZERO_BUFFER, p_pipelineCache->baseThreadgroupSize, 0)}];
      [encoder setBuffer:scratchBuffer offset:scratchBufferOffset atIndex:0];
      LODWORD(v88) = v36;
      [encoder setBytes:&v88 length:4 atIndex:1];
      v39 = self->_threadgroupSize;
      *&v90[0] = (v36 + v39 - 1) / v39;
      *(v90 + 8) = vdupq_n_s64(1uLL);
      v93 = v39;
      v94 = *(v90 + 8);
      [encoder dispatchThreadgroups:v90 threadsPerThreadgroup:&v93];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [encoder setBuffer:fragmentCountBuffer offset:countBufferOffset atIndex:1];
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
    if (countBuffer)
    {
LABEL_23:
      v91 = 0;
      v92 = 0;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        bufferCopy = buffer;
        KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
        memset(v90 + 8, 0, 32);
        *&v90[0] = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(p_pipelineCache->baseThreadgroupSize) & 0xF) << 45);
        v72 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v90, &v91);
        v73 = offset + 200;
      }

      else
      {
        v41 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:encoder];
        if ([geometryDescriptors count] <= 4)
        {
          v42 = [geometryDescriptors count];
        }

        else
        {
          v42 = 4;
        }

        bufferCopy = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:v42 withRetainedResources:v41 indirectBufferStride:&v92];
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
          if ((deterministic & (v51 == 0)) == 0)
          {
            v55 = v81;
          }

          v74 = v55;
          bufferOffsetCopy = bufferOffset;
          v80 = 0;
          do
          {
            v56 = v54 + 4;
            v77 = v54 + 4;
            if (v54 + 4 >= [geometryDescriptors count])
            {
              v56 = [geometryDescriptors count];
            }

            if (self->_supportsDispatchThreadsWithIndirectBuffer)
            {
              *&v90[0] = bufferOffset + 4 * v54 + [countBuffer gpuAddress];
              *(&v90[0] + 1) = [bufferCopy gpuAddress] + v73;
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

              [encoder setComputePipelineState:v72];
              [encoder setBytes:v90 length:48 atIndex:30];
              if ([encoder dispatchType] == 1)
              {
                [encoder memoryBarrierWithScope:1];
              }

              v93 = v56 - v54;
              v94 = vdupq_n_s64(1uLL);
              v88 = v91;
              v89 = v94;
              [encoder dispatchThreads:&v93 threadsPerThreadgroup:&v88];
            }

            if ([encoder dispatchType] == 1)
            {
              [encoder memoryBarrierWithScope:1];
            }

            [encoder setComputePipelineState:v74];
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

              v62 = bufferOffsetCopy;
              v63 = v73;
              do
              {
                v64 = [geometryDescriptors objectAtIndexedSubscript:v54 + v60];
                if ([v64 primitiveCount])
                {
                  [encoder setBuffer:countBuffer offset:v62 atIndex:0];
                  if (deterministic)
                  {
                    [encoder setBuffer:scratchBuffer offset:v95[v53 + v60] + scratchBufferOffset atIndex:21];
                  }

                  [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v64 offset:"boundingBoxBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v64, "boundingBoxBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
                  LODWORD(v93) = v54 + v60;
                  LODWORD(v88) = [v64 boundingBoxStride];
                  [encoder setBytes:&v93 length:4 atIndex:9];
                  [encoder setBytes:&v88 length:4 atIndex:10];
                  if (self->_supportsDispatchThreadsWithIndirectBuffer)
                  {
                    *&v90[0] = self->_threadgroupSize;
                    *(v90 + 8) = vdupq_n_s64(1uLL);
                    [encoder dispatchThreadgroupsWithIndirectBuffer:bufferCopy indirectBufferOffset:v63 threadsPerThreadgroup:v90];
                  }

                  else
                  {
                    [(MTLGPUBVHBuilder *)self dispatchIndirect:v81 indirectBuffer:bufferCopy indirectBufferOffset:v92 * v60 threadCountBuffer:countBuffer threadCountBufferOffset:bufferOffset threadCountIndex:v54 + v60 threadgroupDivisor:self->_threadgroupSize encoder:encoder];
                  }
                }

                ++v60;
                v63 += 12;
                v62 += 4;
              }

              while (v61 != v60);
            }

            v54 += 4;
            bufferOffsetCopy += 16;
            v80 -= 4;
            v53 += 4;
          }

          while (v77 < v75);
        }

        v65 = deterministic;
        if (v70)
        {
          v65 = 0;
        }

        if (v65)
        {
          [(MTLGPUBVHBuilder *)self prefixSumWithEncoder:encoder inputBuffer:scratchBuffer inputBufferOffset:scratchBufferOffset reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:scratchBuffer scratchBufferOffset:v66 countBuffer:0 countBufferOffset:0 capacity:v36];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
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
    v46 = deterministic & v45;
    if ((deterministic & v45) != 0)
    {
      v47 = v68;
    }

    else
    {
      v47 = v81;
    }

    [encoder setComputePipelineState:v47];
    if (v43)
    {
      for (k = 0; k != v43; ++k)
      {
        v49 = [geometryDescriptors objectAtIndexedSubscript:k];
        LODWORD(v88) = [v49 primitiveCount];
        if (v88)
        {
          [encoder setBytes:&v88 length:4 atIndex:0];
          if (deterministic)
          {
            [encoder setBuffer:scratchBuffer offset:v95[k] + scratchBufferOffset atIndex:21];
          }

          [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v49 offset:"boundingBoxBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v49, "boundingBoxBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 3}];
          LODWORD(v92) = k;
          LODWORD(v91) = [v49 boundingBoxStride];
          [encoder setBytes:&v92 length:4 atIndex:9];
          [encoder setBytes:&v91 length:4 atIndex:10];
          v50 = self->_threadgroupSize;
          *&v90[0] = (v88 + v50 - 1) / v50;
          *(v90 + 8) = vdupq_n_s64(1uLL);
          v93 = v50;
          v94 = *(v90 + 8);
          [encoder dispatchThreadgroups:v90 threadsPerThreadgroup:&v93];
        }
      }
    }

    if (v46)
    {
      [(MTLGPUBVHBuilder *)self prefixSumWithEncoder:encoder inputBuffer:scratchBuffer inputBufferOffset:scratchBufferOffset reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:scratchBuffer scratchBufferOffset:v66 countBuffer:0 countBufferOffset:0 capacity:v36];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
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

- (void)getCurveFragmentsWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)bufferOffset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)self0 fragmentCountBuffer:(id)self1 fragmentCountBufferOffset:(unint64_t)self2 boundsMinBuffer:(id)self3 boundsMinBufferOffset:(unint64_t)self4 boundsMaxBuffer:(id)self5 boundsMaxBufferOffset:(unint64_t)self6 boundsEndMinBuffer:(id)self7 boundsEndMinBufferOffset:(unint64_t)self8 boundsEndMaxBuffer:(id)self9 boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)startTimeBufferOffset
{
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_FRAGMENTS, descriptor);
  v61 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_GET_CURVE_FRAGMENTS, descriptor);
  descriptorCopy = descriptor;
  [encoder setBuffer:fragmentCountBuffer offset:countBufferOffset atIndex:1];
  [encoder setBuffer:fragmentBuffer offset:fragmentBufferOffset atIndex:2];
  [encoder setBuffer:minBuffer offset:minBufferOffset atIndex:7];
  [encoder setBuffer:maxBuffer offset:maxBufferOffset atIndex:8];
  if ([descriptor primitiveMotion])
  {
    *v67 = [descriptor primitiveKeyframeCount];
    [encoder setBytes:v67 length:4 atIndex:14];
    [descriptor primitiveMotionStartTime];
    LODWORD(v71) = v30;
    [encoder setBytes:&v71 length:4 atIndex:15];
    [descriptor primitiveMotionEndTime];
    LODWORD(v65) = v31;
    [encoder setBytes:&v65 length:4 atIndex:16];
    [encoder setBuffer:endMinBuffer offset:endMinBufferOffset atIndex:17];
    [encoder setBuffer:endMaxBuffer offset:endMaxBufferOffset atIndex:18];
    [encoder setBuffer:startTimeBuffer offset:startTimeBufferOffset atIndex:19];
    [encoder setBuffer:timeBuffer offset:timeBufferOffset atIndex:20];
  }

  [encoder setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v67 = vdupq_n_s64(1uLL);
  *&v67[16] = 1;
  v71 = threadgroupSize;
  v72 = *v67;
  [encoder dispatchThreadgroups:v67 threadsPerThreadgroup:&v71];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  geometryDescriptors = [descriptorCopy geometryDescriptors];
  v34 = [geometryDescriptors count];
  if (countBuffer)
  {
    v69 = 0;
    v70 = 0;
    countBufferCopy = countBuffer;
    if (self->_supportsDispatchThreadsWithIndirectBuffer)
    {
      bufferCopy = buffer;
      KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
      v54 = offset + 200;
      v68 = 0u;
      *&v67[8] = 0u;
      *v67 = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(p_pipelineCache->baseThreadgroupSize) & 0xF) << 45);
      v52 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v67, &v69);
    }

    else
    {
      v39 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:encoder];
      if ([geometryDescriptors count] <= 4)
      {
        v40 = [geometryDescriptors count];
      }

      else
      {
        v40 = 4;
      }

      bufferCopy = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:v40 withRetainedResources:v39 indirectBufferStride:&v70];
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
      bufferOffsetCopy = bufferOffset;
      v59 = 0;
      do
      {
        v43 = v42 + 4;
        v56 = v42 + 4;
        if (v42 + 4 >= [geometryDescriptors count])
        {
          v43 = [geometryDescriptors count];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          *v67 = bufferOffset + 4 * v42 + [countBufferCopy gpuAddress];
          *&v67[8] = [bufferCopy gpuAddress] + v54;
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

          [encoder setComputePipelineState:v52];
          [encoder setBytes:v67 length:48 atIndex:30];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          v71 = v43 - v42;
          v72 = vdupq_n_s64(1uLL);
          v65 = v69;
          v66 = v72;
          [encoder dispatchThreads:&v71 threadsPerThreadgroup:&v65];
        }

        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        [encoder setComputePipelineState:v61];
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

          v49 = bufferOffsetCopy;
          v50 = v54;
          do
          {
            if ([objc_msgSend(geometryDescriptors objectAtIndexedSubscript:{v42 + v47), "primitiveCount"}])
            {
              [encoder setBuffer:countBufferCopy offset:v49 atIndex:0];
              LODWORD(v71) = v42 + v47;
              [encoder setBytes:&v71 length:4 atIndex:9];
              if (self->_supportsDispatchThreadsWithIndirectBuffer)
              {
                *v67 = self->_threadgroupSize;
                *&v67[8] = vdupq_n_s64(1uLL);
                [encoder dispatchThreadgroupsWithIndirectBuffer:bufferCopy indirectBufferOffset:v50 threadsPerThreadgroup:v67];
              }

              else
              {
                [(MTLGPUBVHBuilder *)self dispatchIndirect:v61 indirectBuffer:bufferCopy indirectBufferOffset:v70 * v47 threadCountBuffer:countBufferCopy threadCountBufferOffset:bufferOffset threadCountIndex:v42 + v47 threadgroupDivisor:self->_threadgroupSize encoder:encoder];
              }
            }

            ++v47;
            v50 += 12;
            v49 += 4;
          }

          while (v48 != v47);
        }

        v42 += 4;
        bufferOffsetCopy += 16;
        v59 -= 4;
      }

      while (v56 < v53);
    }
  }

  else
  {
    [encoder setComputePipelineState:v61];
    if (v34)
    {
      v37 = 0;
      v64 = vdupq_n_s64(1uLL);
      do
      {
        LODWORD(v65) = [objc_msgSend(geometryDescriptors objectAtIndexedSubscript:{v37), "primitiveCount"}];
        if (v65)
        {
          [encoder setBytes:&v65 length:4 atIndex:0];
          LODWORD(v70) = v37;
          [encoder setBytes:&v70 length:4 atIndex:9];
          v38 = self->_threadgroupSize;
          *v67 = (v65 + v38 - 1) / v38;
          *&v67[8] = v64;
          v71 = v38;
          v72 = v64;
          [encoder dispatchThreadgroups:v67 threadsPerThreadgroup:&v71];
        }

        ++v37;
      }

      while (v34 != v37);
    }
  }
}

- (void)buildWithEncoder:(id)encoder descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset fragmentBuffer:(id)fragmentBuffer fragmentBufferOffset:(unint64_t)bufferOffset fragmentIndexBuffer0:(id)buffer0 fragmentIndexBuffer0Offset:(unint64_t)self0 nodeBuffer:(id)self1 nodeBufferOffset:(unint64_t)self2 childIndexBuffer:(id)self3 childIndexBufferOffset:(unint64_t)self4 counterBuffer:(id)self5 counterBufferOffset:(unint64_t)self6 fragmentCountBuffer:(id)self7 fragmentCountBufferOffset:(unint64_t)self8 boundsMinBuffer:(id)self9 boundsMinBufferOffset:(unint64_t)minBufferOffset boundsMaxBuffer:(id)maxBuffer boundsMaxBufferOffset:(unint64_t)maxBufferOffset boundsEndMinBuffer:(id)endMinBuffer boundsEndMinBufferOffset:(unint64_t)endMinBufferOffset boundsEndMaxBuffer:(id)endMaxBuffer boundsEndMaxBufferOffset:(unint64_t)endMaxBufferOffset boundsEndTimeBuffer:(id)timeBuffer boundsEndTimeBufferOffset:(unint64_t)timeBufferOffset boundsStartTimeBuffer:(id)startTimeBuffer boundsStartTimeBufferOffset:(unint64_t)encoder0 scratchBufferOffsets:(ScratchBufferOffset *)encoder1
{
  v307 = *MEMORY[0x1E69E9840];
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:descriptor fragmentCapacity:&v300 fragmentIndexCapacity:&v296 innerNodeCapacity:&v299 leafNodeCapacity:&v298 primitiveDataCapacity:&v297];
  var1 = offsets->var1;
  var2 = offsets->var2;
  fragmentCount = [descriptor fragmentCount];
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
  v250 = (offset + 255) & 0xFFFFFFFFFFFFFF00;
  v254 = (v39 + v250) & 0xFFFFFFFFFFFFFF00;
  v203 = v39 + v254;
  v204 = v39 + v254 + 768 * v36;
  v40 = 192 * v36 + 255;
  v205 = (v204 + 768 * v36) & 0xFFFFFFFFFFFFFF00;
  v206 = (v40 + v205) & 0xFFFFFFFFFFFFFF00;
  v207 = (v40 + v206) & 0xFFFFFFFFFFFFFF00;
  v41 = 24 * v35 + 255;
  v208 = (v40 + v207) & 0xFFFFFFFFFFFFFF00;
  [descriptor motion];
  if ([descriptor motion])
  {
    v42 = 140;
  }

  else
  {
    v42 = 76;
  }

  [descriptor motion];
  if ([descriptor motion])
  {
    v43 = 768 * v36;
  }

  else
  {
    v43 = 0;
  }

  v198 = v43;
  [descriptor motion];
  if ([descriptor motion])
  {
    v44 = 768 * v36;
  }

  else
  {
    v44 = 0;
  }

  v197 = v44;
  [descriptor motion];
  if ([descriptor motion])
  {
    v45 = 192 * v36 + 255;
  }

  else
  {
    v45 = 0;
  }

  v196 = v45;
  [descriptor motion];
  [descriptor motion];
  obj = [descriptor geometryDescriptors];
  v46 = v296;
  v240 = [MTLBVHBuilder useTemporalSplitsForDescriptor:descriptor];
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
  minPrimitivesPerLeaf = [descriptor minPrimitivesPerLeaf];
  maxPrimitivesPerLeaf = [descriptor maxPrimitivesPerLeaf];
  maxDepth = [(MTLGPUBVHBuilder *)self maxDepthForDescriptor:descriptor];
  maxPrimitivesPerInnerNode = [descriptor maxPrimitivesPerInnerNode];
  if (maxPrimitivesPerInnerNode)
  {
    if ([descriptor minPrimitivesPerInnerNode] <= (2 * minPrimitivesPerLeaf))
    {
      minPrimitivesPerInnerNode = 2 * minPrimitivesPerLeaf;
    }

    else
    {
      minPrimitivesPerInnerNode = [descriptor minPrimitivesPerInnerNode];
    }

    [descriptor setMinPrimitivesPerLeaf:minPrimitivesPerInnerNode];
    [descriptor setMaxPrimitivesPerLeaf:{objc_msgSend(descriptor, "maxPrimitivesPerInnerNode")}];
    [descriptor updatePipelineKey];
  }

  v211 = minPrimitivesPerLeaf;
  v218 = (v41 + v208) & 0xFFFFFFFFFFFFFF00;
  v51 = v41 + v218;
  deterministic = [descriptor deterministic];
  if (maxPrimitivesPerInnerNode)
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
  PipelineCache<PipelineKey>::getPipelineKey(&self->_pipelineCache, self->KERNEL_INDEX_DISPATCH_BINS, descriptor, dispatchBinsTGSize, &v294, &v291);
  p_pipelineCache = &self->_pipelineCache;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, &v291);
  v238 = 0;
  if ([descriptor branchingFactor] != 2)
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
  if ([descriptor branchingFactor] == 2)
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
  if (deterministic)
  {
    LODWORD(v289) = v52;
    KERNEL_INDEX_SPLIT_FRAGMENTS = self->KERNEL_INDEX_SPLIT_FRAGMENTS;
    memset(v301, 0, sizeof(v301));
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_SPLIT_FRAGMENTS, descriptor, splitTGSize, &v289, v301);
    v230 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, 0);
    KERNEL_INDEX_SPLIT_FRAGMENTS_PREFIX_SUM = self->KERNEL_INDEX_SPLIT_FRAGMENTS_PREFIX_SUM;
    memset(v301, 0, sizeof(v301));
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_SPLIT_FRAGMENTS_PREFIX_SUM, descriptor, 0x400uLL, &v289, v301);
    v229 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, 0);
    LODWORD(v289) = v289 | 4;
    v79 = self->KERNEL_INDEX_SPLIT_FRAGMENTS;
    memset(v301, 0, sizeof(v301));
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, v79, descriptor, splitTGSize, &v289, v301);
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
  descriptorCopy = descriptor;
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
    descriptorCopy3 = descriptor;
    PipelineCache<PipelineKey>::getPipelineKey(p_pipelineCache, KERNEL_INDEX_BIN_FRAGMENTS_TEMPORAL, descriptor, binningTGSize, &v289, v301);
    v226 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301);
    v225 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, self->KERNEL_INDEX_FIND_BEST_TEMPORAL_SPLIT, descriptor, maxPrimitivesPerInnerNode == 0, 1);
  }

  else
  {
    v225 = 0;
    v226 = 0;
    descriptorCopy3 = descriptor;
  }

  [encoder setBuffer:nodeBuffer offset:nodeBufferOffset atIndex:0];
  [encoder setBuffer:buffer offset:v250 atIndex:1];
  [encoder setBuffer:buffer0 offset:buffer0Offset atIndex:2];
  [encoder setBuffer:countBuffer offset:countBufferOffset atIndex:3];
  [encoder setBytes:&v296 length:8 atIndex:4];
  [encoder setBuffer:minBuffer offset:minBufferOffset atIndex:5];
  [encoder setBuffer:maxBuffer offset:maxBufferOffset atIndex:6];
  [encoder setBuffer:buffer offset:v260 atIndex:7];
  [encoder setBuffer:counterBuffer offset:counterBufferOffset atIndex:8];
  v110 = descriptorCopy3;
  if ([descriptorCopy3 motion])
  {
    [encoder setBuffer:endMinBuffer offset:endMinBufferOffset atIndex:9];
    v110 = descriptorCopy;
    v81 = v218;
    [encoder setBuffer:endMaxBuffer offset:endMaxBufferOffset atIndex:10];
    [encoder setBuffer:startTimeBuffer offset:startTimeBufferOffset atIndex:11];
    [encoder setBuffer:timeBuffer offset:timeBufferOffset atIndex:12];
  }

  [encoder setBytes:&maxDepth length:4 atIndex:13];
  [encoder setBuffer:buffer offset:v263 atIndex:30];
  if (v240)
  {
    [v110 primitiveMotionStartTime];
    *v301 = v111;
    [v110 primitiveMotionEndTime];
    *&v301[4] = v112;
    *&v301[8] = [v110 primitiveKeyframeCount];
    *&v301[12] = var2 - var1;
    [encoder setBytes:v301 length:16 atIndex:14];
  }

  [encoder setComputePipelineState:v97];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v301 = vdupq_n_s64(1uLL);
  *&v301[16] = 1;
  v289 = self->_threadgroupSize;
  v290 = *v301;
  [encoder dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
  [(MTLGPUBVHBuilder *)self dispatchIndirect:v200 counterBuffer:buffer counterBufferOffset:v263 threadgroupSize:self->_threadgroupSize encoder:encoder];
  [encoder setBuffer:buffer offset:v260 atIndex:0];
  [encoder setBuffer:fragmentBuffer offset:bufferOffset atIndex:2];
  [encoder setBuffer:buffer offset:v203 & 0xFFFFFFFFFFFFFF00 atIndex:7];
  [encoder setBuffer:buffer offset:v204 & 0xFFFFFFFFFFFFFF00 atIndex:8];
  [encoder setBuffer:buffer offset:v205 atIndex:9];
  [encoder setBuffer:buffer offset:v257 atIndex:10];
  [encoder setBuffer:buffer offset:v252 atIndex:11];
  [encoder setBuffer:buffer offset:v206 atIndex:12];
  [encoder setBuffer:buffer offset:v207 atIndex:13];
  [encoder setBuffer:buffer offset:v208 atIndex:14];
  [encoder setBuffer:buffer offset:v81 atIndex:15];
  [encoder setBuffer:buffer offset:v201 atIndex:16];
  [encoder setBuffer:buffer offset:v92 atIndex:17];
  [encoder setBuffer:buffer offset:v202 atIndex:18];
  [encoder setBuffer:nodeBuffer offset:nodeBufferOffset atIndex:19];
  [encoder setBuffer:indexBuffer offset:indexBufferOffset atIndex:24];
  [encoder setBuffer:counterBuffer offset:counterBufferOffset atIndex:22];
  [encoder setBuffer:buffer0 offset:buffer0Offset atIndex:3];
  [encoder setBuffer:buffer offset:var1 atIndex:4];
  if ([(MTLGPUBVHBuilder *)self useSpatialSplitsForDescriptor:v110])
  {
    if ([objc_msgSend(v110 "geometryDescriptors")])
    {
      v113 = [obj objectAtIndexedSubscript:0];
      [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v113 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v113, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 20}];
      indexBuffer = [v113 indexBuffer];
      indexBufferOffset = [v113 indexBufferOffset];
      encoderCopy2 = encoder;
      bufferCopy = indexBuffer;
LABEL_81:
      [encoderCopy2 setBuffer:bufferCopy offset:indexBufferOffset atIndex:21];
    }
  }

  else if ([v110 motion])
  {
    v118 = v263 + 267 + v198;
    v119 = (v118 + v197) & 0xFFFFFFFFFFFFFF00;
    [encoder setBuffer:buffer offset:(v263 + 267) & 0xFFFFFFFFFFFFFF00 atIndex:25];
    [encoder setBuffer:buffer offset:v118 & 0xFFFFFFFFFFFFFF00 atIndex:26];
    [encoder setBuffer:buffer offset:v119 atIndex:20];
    indexBufferOffset = (v196 + v119) & 0xFFFFFFFFFFFFFF00;
    encoderCopy2 = encoder;
    bufferCopy = buffer;
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
            vertexBuffers = [v121 vertexBuffers];
            v124 = [vertexBuffers countByEnumeratingWithState:&v281 objects:v305 count:16];
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
                    objc_enumerationMutation(vertexBuffers);
                  }

                  [encoder useResource:objc_msgSend(*(*(&v281 + 1) + 8 * j) usage:{"buffer"), 1}];
                }

                v125 = [vertexBuffers countByEnumeratingWithState:&v281 objects:v305 count:16];
              }

              while (v125);
            }

            if ([v121 indexBuffer])
            {
              [encoder useResource:objc_msgSend(v121 usage:{"indexBuffer"), 1}];
            }

            if ([v121 transformationMatrixBuffer])
            {
              transformationMatrixBuffer = [v121 transformationMatrixBuffer];
LABEL_125:
              [encoder useResource:transformationMatrixBuffer usage:1];
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
              controlPointBuffers = [v121 controlPointBuffers];
              v137 = [controlPointBuffers countByEnumeratingWithState:&v273 objects:v303 count:16];
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
                      objc_enumerationMutation(controlPointBuffers);
                    }

                    [encoder useResource:objc_msgSend(*(*(&v273 + 1) + 8 * k) usage:{"buffer"), 1}];
                  }

                  v138 = [controlPointBuffers countByEnumeratingWithState:&v273 objects:v303 count:16];
                }

                while (v138);
              }

              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              radiusBuffers = [v121 radiusBuffers];
              v142 = [radiusBuffers countByEnumeratingWithState:&v269 objects:v302 count:16];
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
                      objc_enumerationMutation(radiusBuffers);
                    }

                    [encoder useResource:objc_msgSend(*(*(&v269 + 1) + 8 * m) usage:{"buffer"), 1}];
                  }

                  v143 = [radiusBuffers countByEnumeratingWithState:&v269 objects:v302 count:16];
                }

                while (v143);
              }

              transformationMatrixBuffer = [v121 indexBuffer];
              goto LABEL_125;
            }

            v279 = 0u;
            v280 = 0u;
            v277 = 0u;
            v278 = 0u;
            boundingBoxBuffers = [v121 boundingBoxBuffers];
            v131 = [boundingBoxBuffers countByEnumeratingWithState:&v277 objects:v304 count:16];
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
                    objc_enumerationMutation(boundingBoxBuffers);
                  }

                  [encoder useResource:objc_msgSend(*(*(&v277 + 1) + 8 * n) usage:{"buffer"), 1}];
                }

                v132 = [boundingBoxBuffers countByEnumeratingWithState:&v277 objects:v304 count:16];
              }

              while (v132);
            }
          }

LABEL_126:
          if ([v121 primitiveDataBuffer])
          {
            [encoder useResource:objc_msgSend(v121 usage:{"primitiveDataBuffer"), 1}];
          }
        }

        v261 = [obj countByEnumeratingWithState:&v285 objects:v306 count:16];
      }

      while (v261);
    }
  }

  v146 = descriptorCopy;
  v245 = [(MTLGPUBVHBuilder *)self useSpatialSplitsForDescriptor:descriptorCopy];
  branchingFactor = [descriptorCopy branchingFactor];
  [descriptorCopy branchingFactor];
  v268 = 0;
  if (v222 > 0x2000)
  {
    KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS);
    memset(&v301[8], 0, 32);
    *v301 = KERNEL_INDEX_INITIALIZE_BINNING_COUNTERS_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
    PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v301, &v268);
  }

  v148 = maxDepth;
  v149 = v250;
  if (maxDepth)
  {
    v150 = log2(branchingFactor);
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
      v153 = v151 == v148 - 1 || maxPrimitivesPerInnerNode == 0;
      v154 = v151 != v148 - 1 || maxPrimitivesPerInnerNode == 0;
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
      [encoder setBytes:v266 length:12 atIndex:1];
      v156 = v149;
      [encoder setBuffer:buffer offset:v149 atIndex:5];
      [encoder setBuffer:buffer offset:v254 atIndex:6];
      if (!v154)
      {
        [v146 setMinPrimitivesPerLeaf:v211];
        [v146 setMaxPrimitivesPerLeaf:maxPrimitivesPerLeaf];
        [v146 updatePipelineKey];
        maxDepth = [v146 maxDepth];
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
        v289 = [counterBuffer gpuAddress] + counterBufferOffset;
        *&v290 = 0;
        [(MTLGPUBVHBuilder *)self setCounters:&v289 numCounters:1 encoder:encoder];
        v160 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [encoder setComputePipelineState:v159];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v160;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 1536 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v159 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:6 threadgroupDivisor:v160 threadgroupSize:v160 encoder:encoder];
        }
      }

      useFastBuild = [v146 useFastBuild];
      v162 = 0;
      if (useFastBuild && branchingFactor >= 3)
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
      v167 = branchingFactor - 1;
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
      [encoder setComputePipelineState:v246];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      *v301 = vdupq_n_s64(1uLL);
      *&v301[16] = 1;
      v289 = self->_threadgroupSize;
      v290 = *v301;
      [encoder dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
      v193 = (fragmentCount * 1.08);
      if (!v245)
      {
        v193 = fragmentCount;
      }

      fragmentCount = ((1.4 / branchingFactor) * v193);
      v151 = v223 + 1;
      v148 = maxDepth;
      v149 = v191;
      v146 = descriptorCopy;
      if (v223 + 1 >= maxDepth)
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
    v172 = fragmentCount > 0x100 && v154;
    v253 = v172;
    while (1)
    {
      [encoder setBuffer:buffer offset:v165 atIndex:5];
      [encoder setBuffer:buffer offset:v166 atIndex:6];
      if (v262)
      {
        [encoder setComputePipelineState:v244];
        *v301 = vdupq_n_s64(1uLL);
        *&v301[16] = 1;
        v289 = v265;
        v290 = *v301;
        [encoder dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
      }

      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
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
        [encoder setBytes:v266 length:12 atIndex:1];
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

        [encoder setComputePipelineState:v174];
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

        [encoder setComputePipelineState:v176];
        v175 = v243;
      }

      *v301 = v175;
      *&v301[8] = vdupq_n_s64(1uLL);
      [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset threadsPerThreadgroup:v301];
      if (!v262)
      {
        goto LABEL_275;
      }

      v251 = v165;
      v177 = self->_threadgroupSize;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        [encoder setComputePipelineState:v249];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        *v301 = v177;
        *&v301[8] = vdupq_n_s64(1uLL);
        [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 512 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v249 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
      }

      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        v178 = binningTGSize;
        if (!binningTGSize)
        {
          v178 = self->_threadgroupSize;
        }

        [encoder setComputePipelineState:v235];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        *v301 = v178;
        *&v301[8] = vdupq_n_s64(1uLL);
        [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 1024 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v235 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:4 threadgroupDivisor:1 threadgroupSize:binningTGSize encoder:encoder];
      }

      v179 = self->_threadgroupSize;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        [encoder setComputePipelineState:v233];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        *v301 = v179;
        *&v301[8] = vdupq_n_s64(1uLL);
        [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 512 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v233 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
      }

      if (v245)
      {
        v180 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [encoder setComputePipelineState:v249];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v180;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 512 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v249 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          v181 = spatialBinningTGSize;
          if (!spatialBinningTGSize)
          {
            v181 = self->_threadgroupSize;
          }

          [encoder setComputePipelineState:v228];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v181;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 1280 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v228 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:5 threadgroupDivisor:1 threadgroupSize:spatialBinningTGSize encoder:encoder];
        }

        v182 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [encoder setComputePipelineState:v227];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v182;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 768 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v227 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:3 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
        }
      }

      if (v240)
      {
        v183 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [encoder setComputePipelineState:v249];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v183;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 512 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v249 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          v184 = binningTGSize;
          if (!binningTGSize)
          {
            v184 = self->_threadgroupSize;
          }

          [encoder setComputePipelineState:v226];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v184;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 1280 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v226 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:5 threadgroupDivisor:1 threadgroupSize:binningTGSize encoder:encoder];
        }

        v185 = self->_threadgroupSize;
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [encoder setComputePipelineState:v225];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v185;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 768 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v225 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:3 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
        }
      }

      supportsDispatchThreadsWithIndirectBuffer = self->_supportsDispatchThreadsWithIndirectBuffer;
      if (deterministic)
      {
        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          v187 = splitTGSize;
          if (!splitTGSize)
          {
            v187 = self->_threadgroupSize;
          }

          [encoder setComputePipelineState:v230];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v187;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 1024 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v230 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:4 threadgroupDivisor:1 threadgroupSize:splitTGSize encoder:encoder];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
          [encoder setComputePipelineState:v229];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = xmmword_185DC62D0;
          *&v301[16] = 1;
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 512 threadsPerThreadgroup:v301];
        }

        else
        {
          [(MTLGPUBVHBuilder *)self dispatchIndirect:v229 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:2 threadgroupDivisor:1 threadgroupSize:1024 encoder:encoder];
        }

        if (self->_supportsDispatchThreadsWithIndirectBuffer)
        {
LABEL_264:
          v188 = splitTGSize;
          if (!splitTGSize)
          {
            v188 = self->_threadgroupSize;
          }

          [encoder setComputePipelineState:v232];
          if ([encoder dispatchType] == 1)
          {
            [encoder memoryBarrierWithScope:1];
          }

          *v301 = v188;
          *&v301[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 1024 threadsPerThreadgroup:v301];
          goto LABEL_269;
        }
      }

      else if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        goto LABEL_264;
      }

      [(MTLGPUBVHBuilder *)self dispatchIndirect:v232 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:4 threadgroupDivisor:1 threadgroupSize:splitTGSize encoder:encoder];
LABEL_269:
      v189 = self->_threadgroupSize;
      if (self->_supportsDispatchThreadsWithIndirectBuffer)
      {
        [encoder setComputePipelineState:v234];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        *v301 = v189;
        *&v301[8] = vdupq_n_s64(1uLL);
        [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 512 threadsPerThreadgroup:v301];
      }

      else
      {
        [(MTLGPUBVHBuilder *)self dispatchIndirect:v234 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:2 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
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
        [encoder setComputePipelineState:v246];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        *v301 = vdupq_n_s64(1uLL);
        *&v301[16] = 1;
        v289 = self->_threadgroupSize;
        v290 = *v301;
        [encoder dispatchThreadgroups:v301 threadsPerThreadgroup:&v289];
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
    [encoder setComputePipelineState:v209];
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    *v301 = v194;
    *&v301[8] = vdupq_n_s64(1uLL);
    [encoder dispatchThreadgroupsWithIndirectBuffer:counterBuffer indirectBufferOffset:counterBufferOffset + 1536 threadsPerThreadgroup:v301];
  }

  else
  {
    [(MTLGPUBVHBuilder *)self dispatchIndirect:v209 indirectBuffer:buffer indirectBufferOffset:v263 counterBuffer:counterBuffer counterBufferOffset:counterBufferOffset counterIndex:6 threadgroupDivisor:1 threadgroupSize:self->_threadgroupSize encoder:encoder];
  }

  v195 = *MEMORY[0x1E69E9840];
}

- (void)writeBVHHeaderWithEncoder:(id)encoder descriptor:(id)descriptor tmpCounterBuffer:(id)buffer tmpCounterBufferOffset:(unint64_t)offset nodeBuffer:(id)nodeBuffer nodeBufferOffset:(unint64_t)bufferOffset headerBuffer:(id)headerBuffer headerBufferOffset:(unint64_t)self0 nodeOffset:(unint64_t)self1 fragmentOffset:(unint64_t)self2 fragmentIndexOffset:(unint64_t)self3 childIndexOffset:(unint64_t)self4 size:(unint64_t)self5
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_BVH_METADATA, descriptor);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:nodeBuffer offset:bufferOffset atIndex:1];
  [encoder setBuffer:headerBuffer offset:headerBufferOffset atIndex:2];
  fragmentOffsetCopy = fragmentOffset;
  nodeOffsetCopy = nodeOffset;
  childIndexOffsetCopy = childIndexOffset;
  indexOffsetCopy = indexOffset;
  sizeCopy = size;
  [encoder setBytes:&nodeOffsetCopy length:8 atIndex:3];
  [encoder setBytes:&fragmentOffsetCopy length:8 atIndex:4];
  [encoder setBytes:&indexOffsetCopy length:8 atIndex:5];
  [encoder setBytes:&childIndexOffsetCopy length:8 atIndex:6];
  [encoder setBytes:&sizeCopy length:8 atIndex:7];
  [encoder setComputePipelineState:Pipeline];
  threadgroupSize = self->_threadgroupSize;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v24 = vdupq_n_s64(1uLL);
  v25 = v24;
  v26 = 1;
  v23 = threadgroupSize;
  [encoder dispatchThreadgroups:&v25 threadsPerThreadgroup:&v23];
}

- (void)initializeCounterBuffer:(id)buffer counterBuffer:(id)counterBuffer counterBufferOffset:(unint64_t)offset
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
  [buffer setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_INITIALIZE_COUNTERS, self->_pipelineCache.baseThreadgroupSize, 0)}];
  [buffer setBuffer:counterBuffer offset:offset atIndex:29];
  [buffer setBytes:&v16 length:44 atIndex:30];
  if ([buffer dispatchType] == 1)
  {
    [buffer memoryBarrierWithScope:1];
  }

  v14 = xmmword_185DC62E0;
  v15 = 1;
  v12 = xmmword_185DC62F0;
  v13 = 1;
  [buffer dispatchThreads:&v14 threadsPerThreadgroup:&v12];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)buildGenericBVHWithEncoder:(id)encoder descriptor:(id)descriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset scratchBuffer:(id)scratchBuffer scratchBufferOffset:(unint64_t)bufferOffset primitiveCountBuffer:(id)countBuffer primitiveCountBufferOffset:(unint64_t)self0
{
  if ([descriptor splitHeuristic] != 2)
  {
    splitHeuristic = [descriptor splitHeuristic];
    if (splitHeuristic != 3)
    {
      [(MTLGPUBVHBuilder *)splitHeuristic buildGenericBVHWithEncoder:v17 descriptor:v18 outputBuffer:v19 outputBufferOffset:v20 scratchBuffer:v21 scratchBufferOffset:v22 primitiveCountBuffer:v23 primitiveCountBufferOffset:v69];
    }
  }

  branchingFactor = [descriptor branchingFactor];
  if (branchingFactor < 2 || (branchingFactor = [descriptor branchingFactor], branchingFactor >= 9))
  {
    [(MTLGPUBVHBuilder *)branchingFactor buildGenericBVHWithEncoder:v25 descriptor:v26 outputBuffer:v27 outputBufferOffset:v28 scratchBuffer:v29 scratchBufferOffset:v30 primitiveCountBuffer:v31 primitiveCountBufferOffset:v69];
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
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:descriptor fragmentCapacity:&v98 fragmentIndexCapacity:&v94 innerNodeCapacity:&v97 leafNodeCapacity:&v96 primitiveDataCapacity:&v95];
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v85 = [(MTLGPUBVHBuilder *)self getGenericBVHSizeForDescriptor:descriptor nodeOffset:&v93 fragmentOffset:&v92 fragmentIndexOffset:&v91 childIndexOffset:&v90];
  [descriptor updatePipelineKey];
  v83 = [(MTLGPUBVHBuilder *)self fragmentScratchSizeForDescriptor:descriptor];
  v40 = v94;
  v79 = bufferOffset + 255;
  v41 = (((bufferOffset + 255) | 0xFC) + 4 * v94) & 0xFFFFFFFFFFFFFF00;
  maxSubKeyframeTemporalSplits = [descriptor maxSubKeyframeTemporalSplits];
  v43 = 2 * v40 + 255;
  if (!maxSubKeyframeTemporalSplits)
  {
    v43 = 0;
  }

  v80 = v41;
  v87 = (v43 + v41) & 0xFFFFFFFFFFFFFF00;
  v82 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
  v81 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
  v44 = (v81 + 271) & 0xFFFFFFFFFFFFFF00;
  v45 = 256;
  if ([descriptor motion])
  {
    v46 = 256;
  }

  else
  {
    v46 = 0;
  }

  v47 = v46 + ((v44 + 3071) & 0xFFFFFFFFFFFFFF00);
  if ([descriptor motion])
  {
    v48 = 256;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48 + v47;
  if ([descriptor motion])
  {
    v50 = 256;
  }

  else
  {
    v50 = 0;
  }

  v86 = v49;
  v51 = v50 + v49;
  if (![descriptor motion])
  {
    v45 = 0;
  }

  v84 = (v81 + 271) & 0xFFFFFFFFFFFFFF00;
  [(MTLGPUBVHBuilder *)self initializeCounterBuffer:encoder counterBuffer:scratchBuffer counterBufferOffset:v44];
  encoderCopy = encoder;
  v52 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:encoder];
  if ([descriptor requiresResourceBuffer])
  {
    [(MTLGPUBVHBuilder *)self setResourceBufferWithDescriptor:descriptor retainedResources:v52 onEncoder:encoderCopy atIndex:23];
  }

  v53 = v45 + v51;
  v77 = v45 + v51;
  if ([objc_msgSend(descriptor "geometryDescriptors")] && objc_msgSend(objc_msgSend(objc_msgSend(descriptor, "geometryDescriptors"), "objectAtIndexedSubscript:", 0), "primitiveType"))
  {
    selfCopy = self;
    v75 = v51;
    bufferCopy2 = buffer;
    if ([objc_msgSend(objc_msgSend(descriptor "geometryDescriptors")] == 1)
    {
      offsetCopy = offset;
      v56 = v92 + offset;
      v73 = v53;
      v57 = v75;
      v70 = v47;
      v58 = v47;
      offsetCopy3 = offsetCopy;
      v60 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
      [(MTLGPUBVHBuilder *)selfCopy getBoundingBoxFragmentsWithEncoder:encoderCopy descriptor:descriptor outputBuffer:buffer outputBufferOffset:offsetCopy primitiveCountBuffer:countBuffer primitiveCountBufferOffset:countBufferOffset fragmentBuffer:buffer fragmentBufferOffset:v56 fragmentCountBuffer:scratchBuffer fragmentCountBufferOffset:v87 boundsMinBuffer:scratchBuffer boundsMinBufferOffset:v82 boundsMaxBuffer:scratchBuffer boundsMaxBufferOffset:v81 boundsEndMinBuffer:scratchBuffer boundsEndMinBufferOffset:(v44 + 3071) & 0xFFFFFFFFFFFFFF00 boundsEndMaxBuffer:scratchBuffer boundsEndMaxBufferOffset:v70 boundsEndTimeBuffer:scratchBuffer boundsEndTimeBufferOffset:v86 boundsStartTimeBuffer:scratchBuffer boundsStartTimeBufferOffset:v75 fragmentScratchBuffer:scratchBuffer fragmentScratchBufferOffset:v73];
      v61 = v86;
      selfCopy3 = selfCopy;
      v63 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
      v64 = (v44 + 3071) & 0xFFFFFFFFFFFFFF00;
LABEL_30:
      v67 = v58;
      v66 = v57;
      goto LABEL_31;
    }

    v68 = [objc_msgSend(objc_msgSend(descriptor "geometryDescriptors")];
    v67 = v47;
    offsetCopy3 = offset;
    v64 = (v44 + 3071) & 0xFFFFFFFFFFFFFF00;
    v63 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
    v60 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
    v61 = v86;
    selfCopy3 = self;
    v66 = v75;
    if (v68 == 2)
    {
      v57 = v75;
      v58 = v67;
      [(MTLGPUBVHBuilder *)selfCopy getCurveFragmentsWithEncoder:encoderCopy descriptor:descriptor outputBuffer:buffer outputBufferOffset:offsetCopy3 primitiveCountBuffer:countBuffer primitiveCountBufferOffset:countBufferOffset fragmentBuffer:buffer fragmentBufferOffset:v92 + offsetCopy3 fragmentCountBuffer:scratchBuffer fragmentCountBufferOffset:v87 boundsMinBuffer:scratchBuffer boundsMinBufferOffset:v82 boundsMaxBuffer:scratchBuffer boundsMaxBufferOffset:v81 boundsEndMinBuffer:scratchBuffer boundsEndMinBufferOffset:v64 boundsEndMaxBuffer:scratchBuffer boundsEndMaxBufferOffset:v67 boundsEndTimeBuffer:scratchBuffer boundsEndTimeBufferOffset:v86 boundsStartTimeBuffer:scratchBuffer boundsStartTimeBufferOffset:v75];
      v61 = v86;
      goto LABEL_30;
    }
  }

  else
  {
    v65 = v92 + offset;
    v72 = v51;
    v71 = v47;
    v76 = v47;
    offsetCopy3 = offset;
    v64 = (v44 + 3071) & 0xFFFFFFFFFFFFFF00;
    v66 = v51;
    bufferCopy2 = buffer;
    v63 = (v82 + 271) & 0xFFFFFFFFFFFFFF00;
    v60 = (v87 + 259) & 0xFFFFFFFFFFFFFF00;
    [(MTLGPUBVHBuilder *)self getPolygonFragmentsWithEncoder:encoderCopy descriptor:descriptor outputBuffer:buffer outputBufferOffset:offsetCopy3 primitiveCountBuffer:countBuffer primitiveCountBufferOffset:countBufferOffset fragmentBuffer:buffer fragmentBufferOffset:v65 fragmentCountBuffer:scratchBuffer fragmentCountBufferOffset:v87 boundsMinBuffer:scratchBuffer boundsMinBufferOffset:v82 boundsMaxBuffer:scratchBuffer boundsMaxBufferOffset:v81 boundsEndMinBuffer:scratchBuffer boundsEndMinBufferOffset:v64 boundsEndMaxBuffer:scratchBuffer boundsEndMaxBufferOffset:v71 boundsEndTimeBuffer:scratchBuffer boundsEndTimeBufferOffset:v86 boundsStartTimeBuffer:scratchBuffer boundsStartTimeBufferOffset:v72];
    v61 = v86;
    selfCopy3 = self;
    v67 = v76;
  }

LABEL_31:
  v89[0] = 0;
  v89[1] = v79 & 0xFFFFFFFFFFFFFF00;
  v89[2] = v80;
  [(MTLGPUBVHBuilder *)selfCopy3 buildWithEncoder:encoderCopy descriptor:descriptor scratchBuffer:scratchBuffer scratchBufferOffset:v77 + v83 fragmentBuffer:bufferCopy2 fragmentBufferOffset:v92 + offsetCopy3 fragmentIndexBuffer0:bufferCopy2 fragmentIndexBuffer0Offset:v91 + offsetCopy3 nodeBuffer:bufferCopy2 nodeBufferOffset:v93 + offsetCopy3 childIndexBuffer:bufferCopy2 childIndexBufferOffset:v90 + offsetCopy3 counterBuffer:scratchBuffer counterBufferOffset:v84 fragmentCountBuffer:scratchBuffer fragmentCountBufferOffset:v87 boundsMinBuffer:scratchBuffer boundsMinBufferOffset:v60 boundsMaxBuffer:scratchBuffer boundsMaxBufferOffset:v63 boundsEndMinBuffer:scratchBuffer boundsEndMinBufferOffset:v64 boundsEndMaxBuffer:scratchBuffer boundsEndMaxBufferOffset:v67 boundsEndTimeBuffer:scratchBuffer boundsEndTimeBufferOffset:v61 boundsStartTimeBuffer:scratchBuffer boundsStartTimeBufferOffset:v66 scratchBufferOffsets:v89];
  [(MTLGPUBVHBuilder *)selfCopy3 writeBVHHeaderWithEncoder:encoderCopy descriptor:descriptor tmpCounterBuffer:scratchBuffer tmpCounterBufferOffset:v84 nodeBuffer:bufferCopy2 nodeBufferOffset:v93 + offsetCopy3 headerBuffer:bufferCopy2 headerBufferOffset:offsetCopy3 nodeOffset:v93 fragmentOffset:v92 fragmentIndexOffset:v91 childIndexOffset:v90 size:v85];
}

+ (unint64_t)prefixSumScratchBufferSizeWithCapacity:(unint64_t)capacity
{
  if (capacity < 0x201)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = capacity + 511;
    capacity = (capacity + 511) >> 9;
    v3 += v4 >> 9;
  }

  while (capacity > 0x200);
  return 4 * v3;
}

- (void)threadgroupPrefixSumWithEncoder:(id)encoder inputBuffer:(id)buffer inputBufferOffset:(unint64_t)offset reducedBuffer:(id)reducedBuffer reducedBufferOffset:(unint64_t)bufferOffset countBuffer:(id)countBuffer countBufferOffset:(unint64_t)countBufferOffset capacity:(unint64_t)self0
{
  if (reducedBuffer)
  {
    offsetCopy = bufferOffset;
  }

  else
  {
    offsetCopy = offset;
  }

  v15 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_PREFIX_SUM_REDUCE;
  if (!reducedBuffer)
  {
    v15 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_PREFIX_SUM;
  }

  v16 = *(&self->super.super.isa + *v15);
  if (reducedBuffer)
  {
    bufferCopy = reducedBuffer;
  }

  else
  {
    bufferCopy = buffer;
  }

  v21 = 0u;
  v22 = 0u;
  v20 = v16 | 0xE00000000000;
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, &v20)}];
  [encoder setBuffer:buffer offset:offset atIndex:28];
  [encoder setBuffer:bufferCopy offset:offsetCopy atIndex:29];
  if (countBuffer)
  {
    [encoder setBuffer:countBuffer offset:countBufferOffset atIndex:30];
  }

  else
  {
    LODWORD(v20) = capacity;
    [encoder setBytes:&v20 length:4 atIndex:30];
  }

  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v19 = 1;
  v20 = (capacity + 511) >> 9;
  v21 = vdupq_n_s64(1uLL);
  v18 = xmmword_185DC6300;
  [encoder dispatchThreadgroups:&v20 threadsPerThreadgroup:&v18];
}

- (void)addPrefixSumsWithEncoder:(id)encoder inputBuffer:(id)buffer inputBufferOffset:(unint64_t)offset reducedBuffer:(id)reducedBuffer reducedBufferOffset:(unint64_t)bufferOffset countBuffer:(id)countBuffer countBufferOffset:(unint64_t)countBufferOffset capacity:(unint64_t)self0
{
  KERNEL_INDEX_PREFIX_SUM_ADD_low = LOBYTE(self->KERNEL_INDEX_PREFIX_SUM_ADD);
  v20 = 0u;
  v21 = 0u;
  v19 = KERNEL_INDEX_PREFIX_SUM_ADD_low | 0xE00000000000;
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, &v19)}];
  [encoder setBuffer:buffer offset:offset atIndex:28];
  [encoder setBuffer:reducedBuffer offset:bufferOffset atIndex:29];
  if (countBuffer)
  {
    [encoder setBuffer:countBuffer offset:countBufferOffset atIndex:30];
  }

  else
  {
    LODWORD(v19) = capacity;
    [encoder setBytes:&v19 length:4 atIndex:30];
  }

  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v18 = 1;
  v19 = (capacity + 511) >> 9;
  v20 = vdupq_n_s64(1uLL);
  v17 = xmmword_185DC6300;
  [encoder dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
}

- (void)prefixSumWithEncoder:(id)encoder inputBuffer:(id)buffer inputBufferOffset:(unint64_t)offset reducedBuffer:(id)reducedBuffer reducedBufferOffset:(unint64_t)bufferOffset scratchBuffer:(id)scratchBuffer scratchBufferOffset:(unint64_t)scratchBufferOffset countBuffer:(id)self0 countBufferOffset:(unint64_t)self1 capacity:(unint64_t)self2
{
  if (capacity)
  {
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    if (capacity > 0x200)
    {
      [(MTLGPUBVHBuilder *)self threadgroupPrefixSumWithEncoder:encoder inputBuffer:buffer inputBufferOffset:offset reducedBuffer:scratchBuffer reducedBufferOffset:scratchBufferOffset countBuffer:countBuffer countBufferOffset:countBufferOffset capacity:capacity];
      [(MTLGPUBVHBuilder *)self prefixSumWithEncoder:encoder inputBuffer:scratchBuffer inputBufferOffset:scratchBufferOffset reducedBuffer:reducedBuffer reducedBufferOffset:bufferOffset scratchBuffer:scratchBuffer scratchBufferOffset:scratchBufferOffset + 4 * ((capacity + 511) >> 9) countBuffer:0 countBufferOffset:0 capacity:(capacity + 511) >> 9];

      [MTLGPUBVHBuilder addPrefixSumsWithEncoder:"addPrefixSumsWithEncoder:inputBuffer:inputBufferOffset:reducedBuffer:reducedBufferOffset:countBuffer:countBufferOffset:capacity:" inputBuffer:encoder inputBufferOffset:buffer reducedBuffer:offset reducedBufferOffset:scratchBuffer countBuffer:scratchBufferOffset countBufferOffset:countBuffer capacity:?];
    }

    else
    {

      [MTLGPUBVHBuilder threadgroupPrefixSumWithEncoder:"threadgroupPrefixSumWithEncoder:inputBuffer:inputBufferOffset:reducedBuffer:reducedBufferOffset:countBuffer:countBufferOffset:capacity:" inputBuffer:encoder inputBufferOffset:buffer reducedBuffer:offset reducedBufferOffset:reducedBuffer countBuffer:bufferOffset countBufferOffset:countBuffer capacity:?];
    }
  }
}

- (void)layoutNodesBreadthFirstWithEncoder:(id)encoder descriptor:(id)descriptor BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset counterBuffer:(id)counterBuffer counterBufferOffset:(unint64_t)bufferOffset nodeMappingBuffer:(id)mappingBuffer nodeMappingBufferOffset:(unint64_t)self0 levelOffsetsBuffer:(id)self1 levelOffsetsBufferOffset:(unint64_t)self2 levelCountsBuffer:(id)self3 levelCountsBufferOffset:(unint64_t)self4 scratchBuffer:(id)self5 scratchBufferOffset:(unint64_t)self6
{
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:descriptor fragmentCapacity:&v61 innerNodeCapacity:&v60 leafNodeCapacity:&v59 primitiveDataCapacity:&v58];
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  [(MTLGPUBVHBuilder *)self getGenericBVHSizeForDescriptor:descriptor nodeOffset:&v57 fragmentOffset:&v56 fragmentIndexOffset:&v55 childIndexOffset:&v54];
  v44 = [MTLGPUBVHBuilder prefixSumScratchBufferSizeWithCapacity:v59]+ scratchBufferOffset;
  v39 = v44 + 4 * v59;
  v21 = v39 + 4 * v59;
  v22 = v21 + 4 * v59;
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_THREADGROUP_BREADTH_FIRST_LAYOUT, descriptor, self->_maxThreadsPerThreadgroup.width);
  selfCopy = self;
  descriptorCopy = descriptor;
  v24 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_INIT, descriptor);
  v40 = Pipeline;
  maxTotalThreadsPerThreadgroup = [Pipeline maxTotalThreadsPerThreadgroup];
  v26 = log2(v59);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v47 = maxTotalThreadsPerThreadgroup;
  if (maxTotalThreadsPerThreadgroup < exp2(ceil(v26)))
  {
    v43 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_FINISH_ITERATION, descriptorCopy);
    v42 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_BREADTH_FIRST_LAYOUT_CLASSIFY, descriptorCopy);
    v41 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_BREADTH_FIRST_LAYOUT, descriptorCopy);
  }

  [encoder setBuffer:scratchBuffer offset:v21 atIndex:0];
  [encoder setBuffer:scratchBuffer offset:v22 atIndex:1];
  [encoder setBuffer:scratchBuffer offset:v44 atIndex:2];
  [encoder setBuffer:scratchBuffer offset:v39 atIndex:3];
  [encoder setBuffer:buffer offset:v57 + offset atIndex:4];
  [encoder setBuffer:buffer offset:v54 + offset atIndex:5];
  [encoder setBuffer:counterBuffer offset:bufferOffset atIndex:6];
  [encoder setBuffer:mappingBuffer offset:mappingBufferOffset atIndex:7];
  [encoder setBuffer:offsetsBuffer offset:offsetsBufferOffset atIndex:8];
  [encoder setBuffer:countsBuffer offset:countsBufferOffset atIndex:9];
  [encoder setComputePipelineState:v24];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v53 = vdupq_n_s64(1uLL);
  *&v53[16] = 1;
  threadgroupSize = selfCopy->_threadgroupSize;
  v52 = *v53;
  [encoder dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
  v27 = log2([descriptorCopy branchingFactor]);
  if ([descriptorCopy maxDepth])
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = v22;
      [encoder setBuffer:scratchBuffer offset:v21 atIndex:0];
      [encoder setBuffer:scratchBuffer offset:v22 atIndex:1];
      v50 = v29;
      [encoder setBytes:&v50 length:4 atIndex:10];
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
        [encoder setComputePipelineState:v40];
        branchingFactor = [descriptorCopy branchingFactor];
        v38 = 2;
        if (branchingFactor != 2)
        {
          v38 = 3;
        }

        [encoder setThreadgroupMemoryLength:((v33 << v38) + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        v36 = vdupq_n_s64(1uLL);
        *v53 = v36;
        *&v53[16] = 1;
        threadgroupSize = v33;
      }

      else
      {
        [encoder setComputePipelineState:v42];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        v34 = selfCopy->_threadgroupSize;
        *v53 = (v31 - 1 + v34) / v34;
        *&v53[8] = vdupq_n_s64(1uLL);
        threadgroupSize = v34;
        v52 = *&v53[8];
        [encoder dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
        [(MTLGPUBVHBuilder *)selfCopy prefixSumWithEncoder:encoder inputBuffer:scratchBuffer inputBufferOffset:v44 reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:scratchBuffer scratchBufferOffset:scratchBufferOffset countBuffer:counterBuffer countBufferOffset:bufferOffset capacity:v31];
        if ([descriptorCopy branchingFactor] != 2)
        {
          [(MTLGPUBVHBuilder *)selfCopy prefixSumWithEncoder:encoder inputBuffer:scratchBuffer inputBufferOffset:v39 reducedBuffer:0 reducedBufferOffset:0 scratchBuffer:scratchBuffer scratchBufferOffset:scratchBufferOffset countBuffer:counterBuffer countBufferOffset:bufferOffset capacity:v31];
        }

        [encoder setComputePipelineState:v41];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        v35 = selfCopy->_threadgroupSize;
        *v53 = (v31 - 1 + v35) / v35;
        *&v53[8] = vdupq_n_s64(1uLL);
        threadgroupSize = v35;
        v52 = *&v53[8];
        [encoder dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
        [encoder setComputePipelineState:v43];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        v36 = vdupq_n_s64(1uLL);
        *v53 = v36;
        *&v53[16] = 1;
        threadgroupSize = selfCopy->_threadgroupSize;
      }

      v52 = v36;
      [encoder dispatchThreadgroups:v53 threadsPerThreadgroup:&threadgroupSize];
      ++v29;
      v28 += v27;
      v22 = v21;
      v21 = v30;
    }

    while (v29 < [descriptorCopy maxDepth]);
  }
}

- (unint64_t)getEncodeMTLSWBVHScratchBufferSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:bvhDescriptor fragmentCapacity:&v12 innerNodeCapacity:&v11 leafNodeCapacity:&v10 primitiveDataCapacity:&v9];
  v5 = (((((4 * (v11 + v10) + 255) & 0xFFFFFFFFFFFFFF00) + 3071) & 0xFFFFFFFFFFFFFF00) + 1023) & 0xFFFFFFFFFFFFFF00;
  v6 = ([MTLGPUBVHBuilder breadthFirstLayoutScratchBufferSizeWithLeafNodeCapacity:?]+ v5 + 255) & 0xFFFFFFFFFFFFFF00;
  v7 = (v6 + 4 * [bvhDescriptor maxDepth] + 255) & 0xFFFFFFFFFFFFFF00;
  return v7 + 4 * [bvhDescriptor maxDepth];
}

- ($D4F0DBFB58BF58C1D2D6E8FF21CEAEC6)getMTLSWBVHSizeAndOffsetsForDescriptor:(SEL)descriptor bvhDescriptor:(id)bvhDescriptor
{
  v58 = *MEMORY[0x1E69E9840];
  *&retstr->var8 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  MTLSWBVHType = getMTLSWBVHType(bvhDescriptor);
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(bvhDescriptor);
  MTLSWBVHMotion = getMTLSWBVHMotion(bvhDescriptor);
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
      instanceCount = [bvhDescriptor instanceCount];
      if (v12)
      {
        motionTransformCount = [bvhDescriptor motionTransformCount];
LABEL_33:
        v28 = motionTransformCount;
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
        instanceCount = 0;
        goto LABEL_38;
      }

      instanceCount = [bvhDescriptor maxInstanceCount];
      if (v12)
      {
        motionTransformCount = [bvhDescriptor maxMotionTransformCount];
        goto LABEL_33;
      }
    }

    v26 = 0;
    v29 = 255;
    v28 = instanceCount;
    goto LABEL_39;
  }

  v19 = [objc_msgSend(bvhDescriptor "geometryDescriptors")];
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
  instanceCount = 0;
  v29 = 8 * v19 + 255;
LABEL_39:
  v30 = 256;
  retstr->var1 = 256;
  if ([bvhDescriptor usage])
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
    primitiveKeyframeCount = [a5 primitiveKeyframeCount];
  }

  else
  {
    primitiveKeyframeCount = 1;
  }

  v36 = (v34 | 0xFF) + primitiveKeyframeCount * v26;
  retstr->var6 = v36 & 0xFFFFFFFFFFFFFF00;
  result = [bvhDescriptor usage];
  v38 = ((v36 | 0xF8) + (((result << 63) >> 63) & (v52 * v46))) & 0xFFFFFFFFFFFFFF00;
  v39 = (v29 + v38) & 0xFFFFFFFFFFFFFF00;
  retstr->var7 = v38;
  retstr->var8 = v39;
  v40 = 8 * instanceCount + 255;
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

- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor refitDataOffset:(unint64_t *)offset innerNodeOffset:(unint64_t *)nodeOffset leafNodeOffset:(unint64_t *)leafNodeOffset primitiveOffset:(unint64_t *)primitiveOffset controlPointOffset:(unint64_t *)pointOffset primitiveRefitDataOffset:(unint64_t *)self0 geometryOffset:(unint64_t *)self1 primitiveBVHOffset:(unint64_t *)self2 transformOffset:(unint64_t *)self3 instancedResourceIDsOffset:(unint64_t *)self4
{
  if (self)
  {
    [self getMTLSWBVHSizeAndOffsetsForDescriptor:descriptor bvhDescriptor:bvhDescriptor];
    self = 0;
  }

  *offset = 0;
  *nodeOffset = 0;
  *leafNodeOffset = 0;
  *primitiveOffset = 0;
  *pointOffset = 0;
  *dataOffset = 0;
  *geometryOffset = 0;
  *hOffset = 0;
  *transformOffset = 0;
  *dsOffset = 0;
  return self;
}

- (unint64_t)getMTLSWBVHSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor
{
  if (self)
  {
    [self getMTLSWBVHSizeAndOffsetsForDescriptor:descriptor bvhDescriptor:bvhDescriptor];
    return v4;
  }

  return self;
}

- (id)newGeometryBufferWithGeometryDescriptors:(id)descriptors retainedResources:(id)resources
{
  v7 = [descriptors count];
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(MTLDevice *)self->_device newBufferWithLength:8 * v8 options:0];
  contents = [v9 contents];
  if (v7)
  {
    v11 = 0;
    v12 = (contents + 4);
    do
    {
      v13 = [descriptors objectAtIndexedSubscript:v11];
      *(v12 - 1) = [v13 opaque];
      *v12 = [v13 intersectionFunctionTableOffset];
      v12 += 2;
      ++v11;
    }

    while (v7 != v11);
  }

  [resources addObject:v9];
  return v9;
}

- (void)setGeometryBufferWithGeometryDescriptors:(id)descriptors retainedResources:(id)resources onEncoder:(id)encoder atIndex:(unint64_t)index
{
  v20[1] = *MEMORY[0x1E69E9840];
  v11 = [descriptors count];
  v12 = v11;
  if (v11 >= 0x11)
  {
    v20[0] = [(MTLDevice *)self->_device newBufferWithLength:8 * v11 options:0];
    contents = [v20[0] contents];
  }

  else
  {
    contents = v20 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(contents, 8 * v11);
    if (!v12)
    {
LABEL_11:
      [encoder setBytes:contents length:8 * v12 atIndex:index];
      v19 = *MEMORY[0x1E69E9840];
      return;
    }

    v20[0] = 0;
  }

  v14 = 0;
  v15 = contents + 4;
  do
  {
    v16 = [descriptors objectAtIndexedSubscript:{v14, v20[0]}];
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

  [resources addObject:v20[0]];
  v17 = *MEMORY[0x1E69E9840];
  v18 = v20[0];
}

- (void)encodeMTLSWBVHWithEncoder:(id)encoder descriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor outputBuffer:(id)buffer outputBufferOffset:(unint64_t)offset genericBVHBuffer:(id)hBuffer genericBVHBufferOffset:(unint64_t)bufferOffset scratchBuffer:(id)self0 scratchBufferOffset:(unint64_t)self1 gpuResourceID:(MTLResourceID)self2 accelerationStructureUniqueIdentifier:(unint64_t)self3
{
  selfCopy = self;
  v226 = *MEMORY[0x1E69E9840];
  v143 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v217 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  [(MTLBVHBuilder *)selfCopy getCapacitiesForDescriptor:bvhDescriptor fragmentCapacity:&v218 innerNodeCapacity:&v217 leafNodeCapacity:&v216 primitiveDataCapacity:&v215];
  v213 = 0;
  v214 = 0;
  v211 = 0;
  v212 = 0;
  [(MTLGPUBVHBuilder *)selfCopy getGenericBVHSizeForDescriptor:bvhDescriptor nodeOffset:&v214 fragmentOffset:&v213 fragmentIndexOffset:&v212 childIndexOffset:&v211];
  v210 = 0u;
  memset(&v209[1], 0, 80);
  if (selfCopy)
  {
    [(MTLGPUBVHBuilder *)selfCopy getMTLSWBVHSizeAndOffsetsForDescriptor:descriptor bvhDescriptor:bvhDescriptor];
  }

  bvhDescriptorCopy = bvhDescriptor;
  v17 = (((scratchBufferOffset + 255) | 0xFC) + 4 * (v217 + v216)) & 0xFFFFFFFFFFFFFF00;
  v148 = (v17 + 3071) & 0xFFFFFFFFFFFFFF00;
  v18 = ([MTLGPUBVHBuilder breadthFirstLayoutScratchBufferSizeWithLeafNodeCapacity:?]+ ((v148 + 1023) & 0xFFFFFFFFFFFFFF00) + 255) & 0xFFFFFFFFFFFFFF00;
  v19 = (v18 + 4 * [bvhDescriptorCopy maxDepth] + 255) & 0xFFFFFFFFFFFFFF00;
  [bvhDescriptorCopy maxDepth];
  [bvhDescriptorCopy updatePipelineKey];
  v134 = v18;
  scratchBufferCopy = scratchBuffer;
  v135 = v19;
  v138 = v17;
  v20 = bvhDescriptorCopy;
  [MTLGPUBVHBuilder layoutNodesBreadthFirstWithEncoder:selfCopy descriptor:"layoutNodesBreadthFirstWithEncoder:descriptor:BVHBuffer:BVHBufferOffset:counterBuffer:counterBufferOffset:nodeMappingBuffer:nodeMappingBufferOffset:levelOffsetsBuffer:levelOffsetsBufferOffset:levelCountsBuffer:levelCountsBufferOffset:scratchBuffer:scratchBufferOffset:" BVHBuffer:encoder BVHBufferOffset:bvhDescriptorCopy counterBuffer:hBuffer counterBufferOffset:bufferOffset nodeMappingBuffer:? nodeMappingBufferOffset:? levelOffsetsBuffer:? levelOffsetsBufferOffset:? levelCountsBuffer:? levelCountsBufferOffset:? scratchBuffer:? scratchBufferOffset:?];
  MTLSWBVHType = getMTLSWBVHType(descriptor);
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(descriptor);
  MTLSWBVHMotion = getMTLSWBVHMotion(descriptor);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_BVH_NODE0, bvhDescriptorCopy);
  v209[0] = 0;
  v208 = 0;
  p_pipelineCache = &selfCopy->_pipelineCache;
  descriptorCopy = descriptor;
  v154 = MTLSWBVHPrimitiveType;
  v147 = MTLSWBVHType;
  if (!MTLSWBVHType)
  {
    descriptorCopy2 = descriptor;
    v136 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_PRIMITIVE_BVH, bvhDescriptorCopy);
    v137 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_PRIMITIVE_BVH_INNER_NODE, bvhDescriptorCopy);
    v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_ENCODE_MTL_CURVE_BVH_LEAF_NODE;
    if (MTLSWBVHPrimitiveType == 1)
    {
      v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_ENCODE_MTL_BBOX_BVH_LEAF_NODE;
    }

    if (!MTLSWBVHPrimitiveType)
    {
      v32 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_ENCODE_MTL_TRIANGLE_BVH_LEAF_NODE;
    }

    v131 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, *(&selfCopy->super.super.isa + *v32), bvhDescriptorCopy);
    obj = [bvhDescriptorCopy geometryDescriptors];
    v141 = [obj count];
    if (v141)
    {
      if ([bvhDescriptorCopy requiresResourceBuffer])
      {
        v206 = 0u;
        v207 = 0u;
        v204 = 0u;
        v205 = 0u;
        v33 = [obj countByEnumeratingWithState:&v204 objects:v225 count:16];
        if (v33)
        {
          v34 = v33;
          v129 = selfCopy;
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
                  boundingBoxBuffers = [v37 boundingBoxBuffers];
                  v39 = [boundingBoxBuffers countByEnumeratingWithState:&v196 objects:v223 count:16];
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
                        objc_enumerationMutation(boundingBoxBuffers);
                      }

                      [encoder useResource:objc_msgSend(*(*(&v196 + 1) + 8 * j) usage:{"buffer"), 1}];
                    }

                    v40 = [boundingBoxBuffers countByEnumeratingWithState:&v196 objects:v223 count:16];
                  }

                  while (v40);
                }

                else
                {
                  v194 = 0uLL;
                  v195 = 0uLL;
                  v192 = 0uLL;
                  v193 = 0uLL;
                  controlPointBuffers = [v37 controlPointBuffers];
                  v49 = [controlPointBuffers countByEnumeratingWithState:&v192 objects:v222 count:16];
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
                          objc_enumerationMutation(controlPointBuffers);
                        }

                        [encoder useResource:objc_msgSend(*(*(&v192 + 1) + 8 * k) usage:{"buffer"), 1}];
                      }

                      v50 = [controlPointBuffers countByEnumeratingWithState:&v192 objects:v222 count:16];
                    }

                    while (v50);
                  }

                  v190 = 0u;
                  v191 = 0u;
                  v188 = 0u;
                  v189 = 0u;
                  radiusBuffers = [v37 radiusBuffers];
                  v54 = [radiusBuffers countByEnumeratingWithState:&v188 objects:v221 count:16];
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
                          objc_enumerationMutation(radiusBuffers);
                        }

                        [encoder useResource:objc_msgSend(*(*(&v188 + 1) + 8 * m) usage:{"buffer"), 1}];
                      }

                      v55 = [radiusBuffers countByEnumeratingWithState:&v188 objects:v221 count:16];
                    }

                    while (v55);
                  }

                  [encoder useResource:objc_msgSend(v37 usage:{"indexBuffer"), 1}];
                  v152 += [v37 controlPointCount];
                }
              }

              else
              {
                v202 = 0uLL;
                v203 = 0uLL;
                v200 = 0uLL;
                v201 = 0uLL;
                vertexBuffers = [v37 vertexBuffers];
                v44 = [vertexBuffers countByEnumeratingWithState:&v200 objects:v224 count:16];
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
                        objc_enumerationMutation(vertexBuffers);
                      }

                      [encoder useResource:objc_msgSend(*(*(&v200 + 1) + 8 * n) usage:{"buffer"), 1}];
                    }

                    v45 = [vertexBuffers countByEnumeratingWithState:&v200 objects:v224 count:16];
                  }

                  while (v45);
                }

                if ([v37 indexBuffer])
                {
                  [encoder useResource:objc_msgSend(v37 usage:{"indexBuffer"), 1}];
                }

                if ([v37 transformationMatrixBuffer])
                {
                  [encoder useResource:objc_msgSend(v37 usage:{"transformationMatrixBuffer"), 1}];
                }
              }

              MTLSWBVHPrimitiveType = v154;
LABEL_56:
              if ([v37 primitiveDataBuffer])
              {
                [encoder useResource:objc_msgSend(v37 usage:{"primitiveDataBuffer"), 1}];
              }
            }

            v34 = [obj countByEnumeratingWithState:&v204 objects:v225 count:16];
            if (!v34)
            {
              selfCopy = v129;
              v20 = bvhDescriptorCopy;
              goto LABEL_95;
            }
          }
        }

        LODWORD(v152) = 0;
LABEL_95:
        descriptor = descriptorCopy;
        v62 = v138;
LABEL_96:
        v130 = -[MTLGPUBVHBuilder newGeometryBufferWithGeometryDescriptors:retainedResources:](selfCopy, "newGeometryBufferWithGeometryDescriptors:retainedResources:", [descriptor geometryDescriptors], v143);
        motionTransformType = 0;
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
        [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v68 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v68, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 5}];
        indexBuffer = [v68 indexBuffer];
        v70 = v68;
        v20 = bvhDescriptorCopy;
        [encoder setBuffer:indexBuffer offset:objc_msgSend(v70 atIndex:{"indexBufferOffset"), 6}];
      }

      LODWORD(v152) = 0;
    }

    else
    {
      LODWORD(v152) = 0;
      v62 = v138;
    }

    descriptor = descriptorCopy2;
    goto LABEL_96;
  }

  descriptorCopy3 = descriptor;
  v24 = objc_opt_class();
  if (![v24 isSubclassOfClass:objc_opt_class()])
  {
    v58 = objc_opt_class();
    if (![v58 isSubclassOfClass:objc_opt_class()])
    {
      motionTransformType = 0;
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
      v20 = bvhDescriptorCopy;
      goto LABEL_105;
    }

    v59 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH, bvhDescriptorCopy);
    v60 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_INNER_NODE, bvhDescriptorCopy);
    instanceDescriptorType = [descriptor instanceDescriptorType];
    v62 = v138;
    v136 = v59;
    v137 = v60;
    if (instanceDescriptorType == 4)
    {
      maxMotionTransformCount = [descriptorCopy3 maxMotionTransformCount];
    }

    else
    {
      maxMotionTransformCount = [descriptorCopy3 maxInstanceCount];
    }

    v153 = maxMotionTransformCount;
    *v219 = 3;
    instanceTransformationMatrixLayout = [descriptorCopy3 instanceTransformationMatrixLayout];
    *v219 = *v219 & 0xFFFFFFEF | (16 * (instanceTransformationMatrixLayout == 1));
    v64 = [descriptorCopy3 instanceTransformationMatrixLayout] == 1;
    motionTransformType = [descriptorCopy3 motionTransformType];
    if (instanceDescriptorType == 3 || instanceDescriptorType == 4)
    {
      KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_INDIRECT = selfCopy->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_INDIRECT;
      *&v172 = 0;
      v171 = 0u;
      v170 = 0u;
      PipelineCache<PipelineKey>::getPipelineKey(&selfCopy->_pipelineCache, KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_LEAF_NODE_INDIRECT, bvhDescriptorCopy, selfCopy->_pipelineCache.baseThreadgroupSize, v219, &v170);
      v131 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, &v170, 0);
    }

    else
    {
      MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6652, @"Unhandled instance descriptor type", v83, v84, v85, v86, scratchBuffer);
      v131 = 0;
    }

    descriptor = descriptorCopy;
    [encoder setBuffer:objc_msgSend(descriptorCopy offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(descriptorCopy, "instanceDescriptorBufferOffset"), 8}];
    LODWORD(v208) = [descriptorCopy instanceDescriptorStride];
    obja = [(MTLGPUBVHBuilder *)selfCopy newInstanceBufferWithBVHs:0 retainedResources:v143 encoder:encoder encodedStride:v209];
    [encoder setBuffer:? offset:? atIndex:?];
    if ([descriptorCopy instanceDescriptorType] == 4)
    {
      [encoder setBuffer:objc_msgSend(descriptorCopy offset:"motionTransformBuffer") atIndex:{objc_msgSend(descriptorCopy, "motionTransformBufferOffset"), 11}];
    }

    usage = [descriptorCopy usage];
    v65 = 0;
    v67 = 0;
    v130 = 0;
    if ((usage & 4) != 0)
    {
      v89 = -1;
    }

    else
    {
      v89 = 255;
    }

    HIDWORD(v208) = v89;
    v20 = bvhDescriptorCopy;
    goto LABEL_104;
  }

  v25 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH, bvhDescriptorCopy);
  v26 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_INSTANCE_BVH_INNER_NODE, bvhDescriptorCopy);
  instanceDescriptorType2 = [descriptor instanceDescriptorType];
  v28 = instanceDescriptorType2;
  v136 = v25;
  v137 = v26;
  if (instanceDescriptorType2 == 4 || instanceDescriptorType2 == 2)
  {
    descriptorCopy5 = descriptor;
    motionTransformCount = [descriptor motionTransformCount];
  }

  else
  {
    descriptorCopy5 = descriptor;
    motionTransformCount = [descriptor instanceCount];
  }

  v153 = motionTransformCount;
  *v219 = 3;
  instanceTransformationMatrixLayout2 = [descriptorCopy5 instanceTransformationMatrixLayout];
  *v219 = *v219 & 0xFFFFFFEF | (16 * (instanceTransformationMatrixLayout2 == 1));
  v72 = [descriptorCopy5 instanceTransformationMatrixLayout] == 1;
  motionTransformType = [descriptorCopy5 motionTransformType];
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
    v78 = *(&selfCopy->super.super.isa + v77);
    *&v172 = 0;
    v171 = 0u;
    v170 = 0u;
    PipelineCache<PipelineKey>::getPipelineKey(&selfCopy->_pipelineCache, v78, bvhDescriptorCopy, selfCopy->_pipelineCache.baseThreadgroupSize, v219, &v170);
    v131 = PipelineCache<PipelineKey>::getPipeline(&selfCopy->_pipelineCache, &v170, 0);
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
  MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6590, @"Unhandled instance descriptor type", v73, v74, v75, v76, scratchBuffer);
  v131 = 0;
LABEL_83:
  v64 = v72;
  descriptor = descriptorCopy;
  [encoder setBuffer:objc_msgSend(descriptorCopy offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(descriptorCopy, "instanceDescriptorBufferOffset"), 8}];
  LODWORD(v208) = [descriptorCopy instanceDescriptorStride];
  obja = -[MTLGPUBVHBuilder newInstanceBufferWithBVHs:retainedResources:encoder:encodedStride:](selfCopy, "newInstanceBufferWithBVHs:retainedResources:encoder:encodedStride:", [descriptorCopy instancedAccelerationStructures], v143, encoder, v209);
  [encoder setBuffer:? offset:? atIndex:?];
  if (v28 == 4 || v28 == 2)
  {
    [encoder setBuffer:objc_msgSend(descriptorCopy offset:"motionTransformBuffer") atIndex:{objc_msgSend(descriptorCopy, "motionTransformBufferOffset"), 11}];
  }

  usage2 = [descriptorCopy usage];
  v65 = 0;
  v67 = 0;
  v130 = 0;
  if ((usage2 & 4) != 0)
  {
    v80 = -1;
  }

  else
  {
    v80 = 255;
  }

  HIDWORD(v208) = v80;
  v20 = bvhDescriptorCopy;
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
  *&v179 = identifier;
  *&v184 = *(&v210 + 1);
  v142 = v67;
  DWORD1(v172) = v66;
  v181 = v210;
  v182 = v215;
  maxDepth = [v20 maxDepth];
  LODWORD(v170) = v170 & 0xFFFF80FF | ((maxDepth & 0x7F) << 8);
  usage3 = [descriptor usage];
  if (MTLSWBVHMotion)
  {
    v92 = 8;
  }

  else
  {
    v92 = 0;
  }

  LODWORD(v170) = v170 & 0xFFFFFFE7 | v92 & 0xFFFFFFEF | (16 * (usage3 & 1));
  *(&v187 + 1) = __PAIR64__(motionTransformType, v64);
  if (!v147)
  {
    DWORD2(v172) = [descriptorCopy motionKeyframeCount];
    [descriptorCopy motionStartTime];
    DWORD1(v170) = v93;
    [descriptorCopy motionEndTime];
    DWORD2(v170) = v94;
    motionStartBorderMode = [descriptorCopy motionStartBorderMode];
    LODWORD(v170) = v170 & 0xFFFFFFDF | (32 * (motionStartBorderMode & 1));
    motionEndBorderMode = [descriptorCopy motionEndBorderMode];
    LODWORD(v170) = v170 & 0xFFFFFFBF | ((motionEndBorderMode & 1) << 6);
  }

  [encoder setBytes:&v208 length:8 atIndex:0];
  [encoder setBytes:&v170 length:256 atIndex:9];
  [encoder setBuffer:hBuffer offset:bufferOffset atIndex:1];
  [encoder setBuffer:buffer offset:offset atIndex:2];
  [encoder setBuffer:scratchBuffer offset:(scratchBufferOffset + 255) & 0xFFFFFFFFFFFFFF00 atIndex:3];
  [encoder setBuffer:scratchBuffer offset:v62 atIndex:4];
  [encoder setBuffer:buffer offset:v210 + offset atIndex:12];
  [encoder setBuffer:scratchBuffer offset:v134 atIndex:13];
  [encoder setBuffer:scratchBuffer offset:v135 atIndex:14];
  threadgroupSize = selfCopy->_threadgroupSize;
  [encoder setComputePipelineState:Pipeline];
  v98 = p_pipelineCache;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v219 = vdupq_n_s64(1uLL);
  *&v219[16] = 1;
  v165 = threadgroupSize;
  v166 = *v219;
  [encoder dispatchThreadgroups:v219 threadsPerThreadgroup:&v165];
  if (v215)
  {
    [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_PRIMITIVE_DATA, bvhDescriptorCopy)}];
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    *v219 = vdupq_n_s64(1uLL);
    *&v219[16] = 1;
    v165 = threadgroupSize;
    v166 = *v219;
    [encoder dispatchThreadgroups:v219 threadsPerThreadgroup:&v165];
  }

  v165 = [scratchBuffer gpuAddress] + v62;
  *&v166 = [scratchBuffer gpuAddress] + v148;
  v99 = selfCopy->_threadgroupSize;
  DWORD2(v166) = 1536;
  HIDWORD(v166) = v99;
  v167 = 0x101000900;
  v168 = 33556480;
  v169 = v99;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(selfCopy->KERNEL_INDEX_COPY_COUNTERS);
  v164 = 0;
  memset(&v219[8], 0, 32);
  *v219 = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(*(p_pipelineCache + 40)) & 0xF) << 45);
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v219, &v164)}];
  [encoder setBytes:&v165 length:40 atIndex:30];
  *v219 = xmmword_185DC6310;
  *&v219[16] = 1;
  v162 = v164;
  v163 = vdupq_n_s64(1uLL);
  [encoder dispatchThreads:v219 threadsPerThreadgroup:&v162];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  [encoder setComputePipelineState:v136];
  *v219 = selfCopy->_threadgroupSize;
  *&v219[8] = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:scratchBuffer indirectBufferOffset:v148 threadsPerThreadgroup:v219];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  [encoder setComputePipelineState:v131];
  *v219 = selfCopy->_threadgroupSize;
  *&v219[8] = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:scratchBuffer indirectBufferOffset:v148 + 256 threadsPerThreadgroup:v219];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  [encoder setComputePipelineState:v137];
  *v219 = selfCopy->_threadgroupSize;
  *&v219[8] = vdupq_n_s64(1uLL);
  [encoder dispatchThreadgroupsWithIndirectBuffer:scratchBuffer indirectBufferOffset:v148 + 512 threadsPerThreadgroup:v219];
  if (v147)
  {
    v101 = objc_opt_class();
    if ([v101 isSubclassOfClass:objc_opt_class()])
    {
      v102 = selfCopy;
      instanceDescriptorType3 = [descriptorCopy instanceDescriptorType];
      instanceCount = [descriptorCopy instanceCount];
      [encoder setBytes:&instanceCount length:4 atIndex:15];
      v104 = v102;
      v105 = -[MTLGPUBVHBuilder newResourceIDsBufferWithBVHs:retainedResources:encoder:](v102, "newResourceIDsBufferWithBVHs:retainedResources:encoder:", [descriptorCopy instancedAccelerationStructures], v143, encoder);
      [encoder setBuffer:v105 offset:0 atIndex:16];
      if (!instanceCount)
      {
        goto LABEL_153;
      }

LABEL_141:
      if (instanceDescriptorType3 <= 1)
      {
        v123 = bvhDescriptorCopy;
        if (instanceDescriptorType3)
        {
          if (instanceDescriptorType3 == 1)
          {
            v124 = 324;
            goto LABEL_151;
          }

LABEL_155:
          MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6901, @"Unexpected MTLAccelerationStructureInstanceDescriptorType", v106, v107, v108, v109, scratchBufferCopy);
          v125 = 0;
          goto LABEL_152;
        }
      }

      else
      {
        v123 = bvhDescriptorCopy;
        if (instanceDescriptorType3 != 2)
        {
          if (instanceDescriptorType3 == 3 || instanceDescriptorType3 == 4)
          {
            v124 = 328;
LABEL_151:
            v125 = PipelineCache<PipelineKey>::getPipeline(v98, *(&v104->super.super.isa + v124), v123);
LABEL_152:
            [encoder setComputePipelineState:v125];
            v126 = v104->_threadgroupSize;
            *v219 = (instanceCount + v126 - 1) / v126;
            *&v219[8] = vdupq_n_s64(1uLL);
            v162 = v126;
            v163 = *&v219[8];
            [encoder dispatchThreadgroups:v219 threadsPerThreadgroup:&v162];
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
      v104 = selfCopy;
      instanceDescriptorType3 = [descriptorCopy instanceDescriptorType];
      instanceCount = [descriptorCopy maxInstanceCount];
      instanceCountBuffer = [descriptorCopy instanceCountBuffer];
      instanceCountBufferOffset = [descriptorCopy instanceCountBufferOffset];
      v122 = instanceCountBuffer;
      v98 = p_pipelineCache;
      [encoder setBuffer:v122 offset:instanceCountBufferOffset atIndex:15];
      v105 = 0;
      if (instanceCount)
      {
        goto LABEL_141;
      }
    }

    else
    {
      MTLReportFailure(0, "[MTLGPUBVHBuilder encodeMTLSWBVHWithEncoder:descriptor:bvhDescriptor:outputBuffer:outputBufferOffset:genericBVHBuffer:genericBVHBufferOffset:scratchBuffer:scratchBufferOffset:gpuResourceID:accelerationStructureUniqueIdentifier:]", 6879, @"Unexpected MTLAccelerationStructureDescriptor type", v116, v117, v118, v119, scratchBufferCopy);
      v105 = 0;
    }

LABEL_153:
    v110 = obja;
    goto LABEL_154;
  }

  [(MTLGPUBVHBuilder *)selfCopy copyFromBuffer:v130 sourceBufferOffset:0 toBuffer:buffer destinationBufferOffset:v209[8] + offset length:8 * v142 encoder:encoder];
  v105 = 0;
  v110 = obja;
  if (v154 == 2)
  {
    [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, selfCopy->KERNEL_INDEX_ENCODE_MTL_CURVE_BVH_CONTROL_POINTS, bvhDescriptorCopy)}];
    instanceCount = 0;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    geometryDescriptors = [bvhDescriptorCopy geometryDescriptors];
    v105 = [geometryDescriptors countByEnumeratingWithState:&v157 objects:v220 count:16];
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
            objc_enumerationMutation(geometryDescriptors);
          }

          controlPointCount = [*(*(&v157 + 1) + 8 * ii) controlPointCount];
          if (controlPointCount)
          {
            [encoder setBytes:&controlPointCount length:4 atIndex:15];
            [encoder setBytes:&instanceCount length:4 atIndex:16];
            v114 = selfCopy->_threadgroupSize;
            *v219 = (controlPointCount + v114 - 1) / v114;
            *&v219[8] = v155;
            v162 = v114;
            v163 = v155;
            [encoder dispatchThreadgroups:v219 threadsPerThreadgroup:&v162];
          }

          ++instanceCount;
        }

        v105 = [geometryDescriptors countByEnumeratingWithState:&v157 objects:v220 count:16];
      }

      while (v105);
    }
  }

LABEL_154:

  v127 = *MEMORY[0x1E69E9840];
}

- (void)writeMTLSWBVHSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset
{
  v17 = 0;
  KERNEL_INDEX_GET_MTL_BVH_SIZE_low = LOBYTE(self->KERNEL_INDEX_GET_MTL_BVH_SIZE);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_MTL_BVH_SIZE_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [encoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeCompactedMTLSWBVHSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset sizeDataType:(unint64_t)type
{
  v19 = 0;
  p_pipelineCache = &self->_pipelineCache;
  if (type == 33)
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
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v20 = vdupq_n_s64(1uLL);
  *&v20[16] = 1;
  v17 = v19;
  v18 = *v20;
  [encoder dispatchThreadgroups:v20 threadsPerThreadgroup:&v17];
}

- (void)copyMTLSWBVHWithEncoder:(id)encoder sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)d destinationAccelerationStructureUniqueIdentifier:(unint64_t)identifier compact:(BOOL)self0 copyVertexData:(BOOL)self1 copyPerPrimitiveData:(BOOL)self2
{
  primitiveDataCopy = primitiveData;
  dataCopy = data;
  v63 = *MEMORY[0x1E69E9840];
  [encoder setBuffer:buffer offset:offset atIndex:{0, toBuffer, bufferOffset, d._impl}];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setBytes:&identifier length:8 atIndex:2];
  v20 = 0x1EA8D2000uLL;
  if (dataCopy)
  {
    p_pipelineCache = &self->_pipelineCache;
    if (compact)
    {
      v22 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_COPY_AND_COMPACT_MTL_BVH_HEADER;
    }

    else
    {
      v22 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_COPY_MTL_BVH_HEADER;
    }

    [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, *(&self->super.super.isa + *v22), self->_pipelineCache.baseThreadgroupSize, 0)}];
    v23 = (self->_threadgroupSize + 31) / self->_threadgroupSize;
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    *v49 = v23;
    *&v49[8] = vdupq_n_s64(1uLL);
    threadgroupSize = self->_threadgroupSize;
    v57 = *&v49[8];
    [encoder dispatchThreadgroups:v49 threadsPerThreadgroup:&threadgroupSize];
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
      *v49 = [buffer gpuAddress] + offset;
      v26 = 0;
      *&v49[8] = offset + [buffer gpuAddress] + 200;
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
        [encoder setComputePipelineState:v47];
        [encoder setBytes:v49 length:48 atIndex:30];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        *v54 = v29 + 1;
        *&v54[8] = vdupq_n_s64(1uLL);
        v52 = v55;
        v53 = *&v54[8];
        [encoder dispatchThreads:v54 threadsPerThreadgroup:&v52];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        v26 += v27;
        v31 = v29 + 1;
        v32 = 200;
        v33 = &threadgroupSize + v28;
        do
        {
          v34 = *v33++;
          [encoder setComputePipelineState:v34];
          *v54 = self->_threadgroupSize;
          *&v54[8] = vdupq_n_s64(1uLL);
          [encoder dispatchThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:v32 threadsPerThreadgroup:v54];
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
      v35 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:encoder];
      v51 = 0;
      v36 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:8 withRetainedResources:v35 indirectBufferStride:&v51];
      [v35 addObject:v36];
      v37 = self->_threadgroupSize;
      *v49 = [buffer gpuAddress] + offset;
      gpuAddress = [v36 gpuAddress];
      v39 = 0;
      v40 = 0;
      *&v49[8] = gpuAddress;
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
      [encoder setComputePipelineState:v47];
      [encoder setBytes:v49 length:80 atIndex:30];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      *&v54[16] = 1;
      v52 = v55;
      v53 = vdupq_n_s64(1uLL);
      *v54 = xmmword_185DC6320;
      [encoder dispatchThreads:v54 threadsPerThreadgroup:&v52];
      v20 = 0x1EA8D2000uLL;
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      v45 = 0;
      v48 = vdupq_n_s64(1uLL);
      do
      {
        [encoder setComputePipelineState:*(&threadgroupSize + v45)];
        *v54 = self->_threadgroupSize;
        *&v54[8] = v48;
        [encoder dispatchThreadgroupsWithIndirectBuffer:v36 indirectBufferOffset:v51 * v45++ threadsPerThreadgroup:v54];
      }

      while (v45 != 8);
    }
  }

  if (primitiveDataCopy)
  {
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(self + *(v20 + 1744), self->KERNEL_INDEX_COPY_PRIMITIVE_DATA, *(&self->_dispatchBinsTGSize + *(v20 + 1744)), 0)}];
    *v49 = vdupq_n_s64(1uLL);
    *&v49[16] = 1;
    threadgroupSize = self->_threadgroupSize;
    v57 = *v49;
    [encoder dispatchThreadgroups:v49 threadsPerThreadgroup:&threadgroupSize];
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)copyMTLSWBVHWithEncoder:(id)encoder sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)d destinationAccelerationStructureUniqueIdentifier:(unint64_t)identifier
{
  BYTE2(v9) = 1;
  LOWORD(v9) = 256;
  [MTLGPUBVHBuilder copyMTLSWBVHWithEncoder:"copyMTLSWBVHWithEncoder:sourceBuffer:sourceBufferOffset:toBuffer:destinationBufferOffset:destinationMTLResourceID:destinationAccelerationStructureUniqueIdentifier:compact:copyVertexData:copyPerPrimitiveData:" sourceBuffer:encoder sourceBufferOffset:buffer toBuffer:offset destinationBufferOffset:toBuffer destinationMTLResourceID:bufferOffset destinationAccelerationStructureUniqueIdentifier:d._impl compact:identifier copyVertexData:v9 copyPerPrimitiveData:?];
}

- (void)copyAndCompactMTLSWBVHWithEncoder:(id)encoder sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)d destinationAccelerationStructureUniqueIdentifier:(unint64_t)identifier
{
  BYTE2(v9) = 1;
  LOWORD(v9) = 257;
  [MTLGPUBVHBuilder copyMTLSWBVHWithEncoder:"copyMTLSWBVHWithEncoder:sourceBuffer:sourceBufferOffset:toBuffer:destinationBufferOffset:destinationMTLResourceID:destinationAccelerationStructureUniqueIdentifier:compact:copyVertexData:copyPerPrimitiveData:" sourceBuffer:encoder sourceBufferOffset:buffer toBuffer:offset destinationBufferOffset:toBuffer destinationMTLResourceID:bufferOffset destinationAccelerationStructureUniqueIdentifier:d._impl compact:identifier copyVertexData:v9 copyPerPrimitiveData:?];
}

- (id)newInstanceBufferWithBVHs:(id)hs retainedResources:(id)resources encoder:(id)encoder encodedStride:(unint64_t *)stride
{
  if (stride)
  {
    *stride = 8;
  }

  device = self->_device;
  if ([hs count] < 2)
  {
    v9 = 8;
  }

  else
  {
    v9 = 8 * [hs count];
  }

  v10 = [(MTLDevice *)device newBufferWithLength:v9 options:0];
  contents = [v10 contents];
  if ([hs count])
  {
    v12 = 0;
    do
    {
      v13 = [objc_msgSend(objc_msgSend(hs objectAtIndexedSubscript:{v12), "buffer"), "gpuAddress"}];
      *(contents + 8 * v12) = [objc_msgSend(hs objectAtIndexedSubscript:{v12), "bufferOffset"}] + v13;
      ++v12;
    }

    while (v12 < [hs count]);
  }

  [resources addObject:v10];
  return v10;
}

- (id)newResourceIDsBufferWithBVHs:(id)hs retainedResources:(id)resources encoder:(id)encoder
{
  device = self->_device;
  if ([hs count] < 2)
  {
    v8 = 8;
  }

  else
  {
    v8 = 8 * [hs count];
  }

  v9 = [(MTLDevice *)device newBufferWithLength:v8 options:0];
  contents = [v9 contents];
  if ([hs count])
  {
    v11 = 0;
    do
    {
      *(contents + 8 * v11) = [objc_msgSend(hs objectAtIndexedSubscript:{v11), "gpuResourceID"}];
      ++v11;
    }

    while (v11 < [hs count]);
  }

  [resources addObject:v9];
  return v9;
}

- (void)getMTLInstanceBoundingBoxesWithEncoder:(id)encoder descriptor:(id)descriptor boundingBoxBuffer:(id)buffer boundingBoxBufferOffset:(unint64_t)offset
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = objc_opt_class();
  if ([v11 isSubclassOfClass:objc_opt_class()])
  {
    if (![descriptor instanceCount])
    {
      goto LABEL_50;
    }

    v12 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:encoder];
    instancedAccelerationStructures = [descriptor instancedAccelerationStructures];
    v14 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:instancedAccelerationStructures retainedResources:v12 encoder:encoder];
    useResourcesBatched(instancedAccelerationStructures, 1, encoder);
    instanceCount = [descriptor instanceCount];
    instanceDescriptorStride = [descriptor instanceDescriptorStride];
    v48 = 0;
    instanceDescriptorType = [descriptor instanceDescriptorType];
    instanceTransformationMatrixLayout = [descriptor instanceTransformationMatrixLayout];
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v17 = log2(self->_threadgroupSize);
    Pipeline = 0;
    v19 = (v17 & 0xF) << 45;
    WORD4(v51[0]) = (instanceTransformationMatrixLayout == 1) << 8;
    if (instanceDescriptorType <= 1)
    {
      if (instanceDescriptorType)
      {
        if (instanceDescriptorType != 1)
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
      if (instanceDescriptorType == 2)
      {
        v20 = 388;
        goto LABEL_22;
      }

      if (instanceDescriptorType != 3)
      {
        if (instanceDescriptorType == 4)
        {
          v20 = 396;
LABEL_22:
          v30 = v19 | *(&self->super.super.isa + v20) | 0x1000000000;
LABEL_26:
          *&v51[0] = v30;
          Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, v51, &v48);
        }

LABEL_27:
        [encoder setComputePipelineState:Pipeline];
        [encoder setBytes:&instanceCount length:4 atIndex:0];
        [encoder setBuffer:objc_msgSend(descriptor offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(descriptor, "instanceDescriptorBufferOffset"), 1}];
        [encoder setBytes:&instanceDescriptorStride length:4 atIndex:2];
        [encoder setBuffer:v14 offset:0 atIndex:3];
        [encoder setBuffer:buffer offset:offset atIndex:4];
        if ([descriptor motionTransformBuffer])
        {
          [encoder setBuffer:objc_msgSend(descriptor offset:"motionTransformBuffer") atIndex:{objc_msgSend(descriptor, "motionTransformBufferOffset"), 5}];
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        instancedAccelerationStructures2 = [descriptor instancedAccelerationStructures];
        v32 = [instancedAccelerationStructures2 countByEnumeratingWithState:&v44 objects:v53 count:16];
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
                objc_enumerationMutation(instancedAccelerationStructures2);
              }

              [encoder useResource:*(*(&v44 + 1) + 8 * v35++) usage:1];
            }

            while (v33 != v35);
            v33 = [instancedAccelerationStructures2 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v33);
        }

        v36 = v48;
        v37 = (v36 + [descriptor instanceCount] - 1) / v36;
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        *&v51[0] = v37;
        *(v51 + 8) = vdupq_n_s64(1uLL);
        v42 = v36;
        v43 = *(v51 + 8);
        [encoder dispatchThreadgroups:v51 threadsPerThreadgroup:&v42];

        goto LABEL_50;
      }

      v28 = 396;
    }

    v30 = v19 | *(&self->super.super.isa + v28);
    goto LABEL_26;
  }

  v21 = objc_opt_class();
  if (![v21 isSubclassOfClass:objc_opt_class()] || !objc_msgSend(descriptor, "maxInstanceCount"))
  {
    goto LABEL_50;
  }

  instanceCount = [descriptor instanceDescriptorStride];
  v48 = 0;
  instanceDescriptorType2 = [descriptor instanceDescriptorType];
  instanceTransformationMatrixLayout2 = [descriptor instanceTransformationMatrixLayout];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v24 = log2(self->_threadgroupSize);
  v25 = 0;
  v26 = (v24 & 0xF) << 45;
  WORD4(v51[0]) = (instanceTransformationMatrixLayout2 == 1) << 8;
  if (instanceDescriptorType2 <= 1)
  {
    if (instanceDescriptorType2)
    {
      if (instanceDescriptorType2 != 1)
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

  switch(instanceDescriptorType2)
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
  [encoder setComputePipelineState:v25];
  [encoder setBuffer:objc_msgSend(descriptor offset:"instanceCountBuffer") atIndex:{objc_msgSend(descriptor, "instanceCountBufferOffset"), 0}];
  [encoder setBuffer:objc_msgSend(descriptor offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(descriptor, "instanceDescriptorBufferOffset"), 1}];
  [encoder setBytes:&instanceCount length:4 atIndex:2];
  [encoder setBuffer:buffer offset:offset atIndex:4];
  if ([descriptor motionTransformBuffer])
  {
    [encoder setBuffer:objc_msgSend(descriptor offset:"motionTransformBuffer") atIndex:{objc_msgSend(descriptor, "motionTransformBufferOffset"), 5}];
  }

  v39 = v48;
  v40 = (v39 + [descriptor maxInstanceCount] - 1) / v39;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *&v51[0] = v40;
  *(v51 + 8) = vdupq_n_s64(1uLL);
  v42 = v39;
  v43 = *(v51 + 8);
  [encoder dispatchThreadgroups:v51 threadsPerThreadgroup:&v42];
LABEL_50:
  v41 = *MEMORY[0x1E69E9840];
}

- (unint64_t)getRefitScratchBufferSizeForDescriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor
{
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:bvhDescriptor fragmentCapacity:&v9 innerNodeCapacity:&v8 leafNodeCapacity:&v7 primitiveDataCapacity:&v6];
  return 12 * [bvhDescriptor maxDepth] + 12;
}

- (void)refitVertexDataWithEncoder:(id)encoder descriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor inPlace:(BOOL)place sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset scratchBuffer:(id)scratchBuffer scratchBufferOffset:(unint64_t)self0 retainedResources:(id)self1 innerNodeCapacity:(unint64_t)self2 leafNodeCapacity:(unint64_t)self3
{
  placeCopy = place;
  v137 = *MEMORY[0x1E69E9840];
  MTLSWBVHType = getMTLSWBVHType(descriptor);
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(descriptor);
  p_pipelineCache = &self->_pipelineCache;
  if (placeCopy)
  {
    v21 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INNER_NODE_IN_PLACE;
  }

  else
  {
    v21 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INNER_NODE;
  }

  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v21), bvhDescriptor);
  descriptorCopy = descriptor;
  v118 = MTLSWBVHType;
  if (!MTLSWBVHType)
  {
    geometryDescriptors = [bvhDescriptor geometryDescriptors];
    offsetCopy5 = offset;
    if ([geometryDescriptors count])
    {
      if (placeCopy)
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

      [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v32), bvhDescriptor)}];
      -[MTLGPUBVHBuilder setGeometryBufferWithGeometryDescriptors:retainedResources:onEncoder:atIndex:](self, "setGeometryBufferWithGeometryDescriptors:retainedResources:onEncoder:atIndex:", [descriptor geometryDescriptors], resources, encoder, 13);
      v39 = ([geometryDescriptors count] + self->_threadgroupSize - 1) / self->_threadgroupSize;
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      *&v131[0] = v39;
      *(v131 + 8) = vdupq_n_s64(1uLL);
      threadgroupSize = self->_threadgroupSize;
      v134 = *(v131 + 8);
      [encoder dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
      offsetCopy5 = offset;
    }

LABEL_47:
    if (MTLSWBVHPrimitiveType == 1)
    {
      if ([geometryDescriptors count])
      {
        v43 = [geometryDescriptors objectAtIndexedSubscript:0];
        [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v43 offset:"boundingBoxBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v43, "boundingBoxBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 5}];
      }

      v41 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_BBOX_LEAF_NODE;
      v42 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_BBOX_LEAF_NODE_IN_PLACE;
    }

    else
    {
      if (MTLSWBVHPrimitiveType)
      {
        v44 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_LEAF_NODE;
        if (placeCopy)
        {
          v44 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_LEAF_NODE_IN_PLACE;
          v45 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_CONTROL_POINTS_IN_PLACE;
        }

        else
        {
          v45 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_CURVE_CONTROL_POINTS;
        }

        v30 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v44), bvhDescriptor);
        v114 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v45), bvhDescriptor);
        goto LABEL_63;
      }

      if ([geometryDescriptors count])
      {
        v40 = [geometryDescriptors objectAtIndexedSubscript:0];
        [encoder setBuffer:objc_msgSend(objc_msgSend(objc_msgSend(v40 offset:"vertexBuffers") atIndex:{"objectAtIndexedSubscript:", 0), "buffer"), objc_msgSend(objc_msgSend(objc_msgSend(v40, "vertexBuffers"), "objectAtIndexedSubscript:", 0), "offset"), 2}];
        [encoder setBuffer:objc_msgSend(v40 offset:"indexBuffer") atIndex:{objc_msgSend(v40, "indexBufferOffset"), 3}];
      }

      v41 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_TRIANGLE_LEAF_NODE;
      v42 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_TRIANGLE_LEAF_NODE_IN_PLACE;
    }

    if (placeCopy)
    {
      v41 = v42;
    }

    v30 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v41), bvhDescriptor);
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
    offsetCopy5 = offset;
    if (![v33 isSubclassOfClass:objc_opt_class()])
    {
      v114 = 0;
      v115 = 0;
      v30 = 0;
      goto LABEL_64;
    }

    if ([descriptor instanceTransformationMatrixLayout] == 1)
    {
      v34 = 19;
    }

    else
    {
      v34 = 3;
    }

    LODWORD(threadgroupSize) = v34;
    if ([descriptor instanceDescriptorType] && objc_msgSend(descriptor, "instanceDescriptorType") != 2)
    {
      if ([descriptor instanceDescriptorType] != 1)
      {
        if ([descriptor instanceDescriptorType] != 3 && objc_msgSend(descriptor, "instanceDescriptorType") != 4)
        {
          MTLReportFailure(0, "[MTLGPUBVHBuilder refitVertexDataWithEncoder:descriptor:bvhDescriptor:inPlace:sourceBuffer:sourceBufferOffset:scratchBuffer:scratchBufferOffset:retainedResources:innerNodeCapacity:leafNodeCapacity:]", 8036, @"Unhandled instance descriptor type", v104, v105, v106, v107, v109);
          v30 = 0;
          goto LABEL_37;
        }

        v108 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT;
        if (placeCopy)
        {
          v108 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT_IN_PLACE;
        }

        v38 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v108), bvhDescriptor, &threadgroupSize, 0);
LABEL_36:
        v30 = v38;
LABEL_37:
        [encoder setBuffer:objc_msgSend(descriptor offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(descriptor, "instanceDescriptorBufferOffset"), 6}];
        LODWORD(v131[0]) = [descriptor instanceDescriptorStride];
        [encoder setBytes:v131 length:4 atIndex:7];
        if ([descriptor motionTransformBuffer])
        {
          [encoder setBuffer:objc_msgSend(descriptor offset:"motionTransformBuffer") atIndex:{objc_msgSend(descriptor, "motionTransformBufferOffset"), 11}];
        }

        LODWORD(v128) = 255;
        if (([descriptor usage] & 4) != 0)
        {
          LODWORD(v128) = -1;
        }

        [encoder setBytes:&v128 length:4 atIndex:12];
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

    if (placeCopy)
    {
      v35 = v36;
    }

    v37 = *(&self->super.super.isa + *v35);
    v132 = 0;
    memset(v131, 0, sizeof(v131));
    PipelineCache<PipelineKey>::getPipelineKey(&self->_pipelineCache, v37, bvhDescriptor, self->_pipelineCache.baseThreadgroupSize, &threadgroupSize, v131);
    v38 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, v131, 0);
    goto LABEL_36;
  }

  instancedAccelerationStructures = [descriptor instancedAccelerationStructures];
  v24 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:instancedAccelerationStructures retainedResources:resources encoder:encoder];
  useResourcesBatched(instancedAccelerationStructures, 1, encoder);
  v115 = v24;
  [encoder setBuffer:v24 offset:0 atIndex:10];
  if ([descriptor instanceTransformationMatrixLayout] == 1)
  {
    v25 = 19;
  }

  else
  {
    v25 = 3;
  }

  LODWORD(threadgroupSize) = v25;
  offsetCopy5 = offset;
  if (![descriptor instanceDescriptorType] || objc_msgSend(descriptor, "instanceDescriptorType") == 2)
  {
    v27 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT;
    v28 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_DEFAULT_IN_PLACE;
LABEL_12:
    if (placeCopy)
    {
      v27 = v28;
    }

    v29 = *(&self->super.super.isa + *v27);
    v132 = 0;
    memset(v131, 0, sizeof(v131));
    PipelineCache<PipelineKey>::getPipelineKey(&self->_pipelineCache, v29, bvhDescriptor, self->_pipelineCache.baseThreadgroupSize, &threadgroupSize, v131);
    v30 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, v131, 0);
    goto LABEL_15;
  }

  if ([descriptor instanceDescriptorType] == 1)
  {
    v27 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID;
    v28 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_USER_ID_IN_PLACE;
    goto LABEL_12;
  }

  if ([descriptor instanceDescriptorType] == 3 || objc_msgSend(descriptor, "instanceDescriptorType") == 4)
  {
    v27 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT;
    v28 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_LEAF_NODE_INDIRECT_IN_PLACE;
    goto LABEL_12;
  }

  MTLReportFailure(0, "[MTLGPUBVHBuilder refitVertexDataWithEncoder:descriptor:bvhDescriptor:inPlace:sourceBuffer:sourceBufferOffset:scratchBuffer:scratchBufferOffset:retainedResources:innerNodeCapacity:leafNodeCapacity:]", 7998, @"Unhandled instance descriptor type", v100, v101, v102, v103, v109);
  v30 = 0;
LABEL_15:
  [encoder setBuffer:objc_msgSend(descriptor offset:"instanceDescriptorBuffer") atIndex:{objc_msgSend(descriptor, "instanceDescriptorBufferOffset"), 6}];
  LODWORD(v131[0]) = [descriptor instanceDescriptorStride];
  [encoder setBytes:v131 length:4 atIndex:7];
  if ([descriptor motionTransformBuffer])
  {
    [encoder setBuffer:objc_msgSend(descriptor offset:"motionTransformBuffer") atIndex:{objc_msgSend(descriptor, "motionTransformBufferOffset"), 11}];
  }

  LODWORD(v128) = 255;
  if (([descriptor usage] & 4) != 0)
  {
    LODWORD(v128) = -1;
  }

  [encoder setBytes:&v128 length:4 atIndex:12];
  v114 = 0;
LABEL_64:
  maxDepth = [bvhDescriptor maxDepth];
  v47 = (bufferOffset + 255) & 0xFFFFFFFFFFFFFF00;
  v116 = &self->_pipelineCache;
  v119 = maxDepth;
  v120 = v47;
  if (self->_supportsDispatchThreadsWithIndirectBuffer)
  {
    v110 = v30;
    v113 = 4 * maxDepth + 256;
    v48 = self->_threadgroupSize;
    v49 = maxDepth;
    *&v131[0] = [buffer gpuAddress] + offsetCopy5;
    *(&v131[0] + 1) = [scratchBuffer gpuAddress] + v47;
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

    bvhDescriptorCopy = bvhDescriptor;
    KERNEL_INDEX_COPY_COUNTERS_low = LOBYTE(self->KERNEL_INDEX_COPY_COUNTERS);
    v130 = 0;
    v135 = 0u;
    v134 = 0u;
    threadgroupSize = KERNEL_INDEX_COPY_COUNTERS_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
    [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(v116, &threadgroupSize, &v130)}];
    [encoder setBytes:v131 length:8 * (v51 + 1) + 16 atIndex:30];
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    threadgroupSize = v51 + 1;
    v134 = vdupq_n_s64(1uLL);
    v128 = v130;
    v129 = v134;
    [encoder dispatchThreads:&threadgroupSize threadsPerThreadgroup:&v128];
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
        [encoder setBytes:v131 length:8 * v64 + 16 atIndex:30];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        threadgroupSize = v64;
        v134 = vdupq_n_s64(1uLL);
        v128 = v130;
        v129 = v134;
        [encoder dispatchThreads:&threadgroupSize threadsPerThreadgroup:&v128];
        v51 += 32;
        v59 -= 128;
        v57 = v119;
      }

      while (v51 < v119);
    }

    bvhDescriptor = bvhDescriptorCopy;
    p_pipelineCache = &self->_pipelineCache;
    offsetCopy5 = offset;
    v30 = v110;
    v47 = (bufferOffset + 255) & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    v113 = (4 * maxDepth + 256) >> 2;
  }

  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  if (self->_supportsDispatchThreadsWithIndirectBuffer)
  {
    [(MTLGPUBVHBuilder *)self dispatchIndirect:v30 counterBuffer:scratchBuffer counterBufferOffset:v47 threadgroupSize:self->_threadgroupSize encoder:encoder];
    if (v119)
    {
      v67 = -v119;
      v68 = v120 + 12;
      v69 = v119 - 1;
      do
      {
        LODWORD(v131[0]) = v69;
        [encoder setBytes:v131 length:4 atIndex:14];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        [(MTLGPUBVHBuilder *)self dispatchIndirect:Pipeline counterBuffer:scratchBuffer counterBufferOffset:v68 threadgroupSize:self->_threadgroupSize encoder:encoder];
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

    [(MTLGPUBVHBuilder *)self dispatchIndirect:v30 indirectBuffer:scratchBuffer indirectBufferOffset:v47 threadCountBuffer:buffer threadCountBufferOffset:offsetCopy5 threadCountIndex:4 threadgroupDivisor:v70 encoder:encoder];
    if (v119)
    {
      v71 = -v119;
      v72 = v119 - 1;
      v73 = v119 + v113 - 1;
      do
      {
        LODWORD(v131[0]) = v72;
        [encoder setBytes:v131 length:4 atIndex:14];
        if ([encoder dispatchType] == 1)
        {
          [encoder memoryBarrierWithScope:1];
        }

        [(MTLGPUBVHBuilder *)self dispatchIndirect:Pipeline indirectBuffer:scratchBuffer indirectBufferOffset:v120 threadCountBuffer:buffer threadCountBufferOffset:offsetCopy5 threadCountIndex:v73 threadgroupDivisor:self->_threadgroupSize encoder:encoder];
        --v72;
        --v73;
        v62 = __CFADD__(v71++, 1);
      }

      while (!v62);
    }
  }

  v74 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_HEADER;
  if (placeCopy)
  {
    v74 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_HEADER_IN_PLACE;
  }

  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, *(&self->super.super.isa + *v74), bvhDescriptor)}];
  v75 = (self->_threadgroupSize + 31) / self->_threadgroupSize;
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *&v131[0] = v75;
  *(v131 + 8) = vdupq_n_s64(1uLL);
  threadgroupSize = self->_threadgroupSize;
  v134 = *(v131 + 8);
  [encoder dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
  if (v114)
  {
    [encoder setComputePipelineState:?];
    LODWORD(v128) = 0;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    geometryDescriptors2 = [bvhDescriptor geometryDescriptors];
    v77 = [geometryDescriptors2 countByEnumeratingWithState:&v124 objects:v136 count:16];
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
            objc_enumerationMutation(geometryDescriptors2);
          }

          LODWORD(v130) = [*(*(&v124 + 1) + 8 * i) controlPointCount];
          [encoder setBytes:&v130 length:4 atIndex:15];
          [encoder setBytes:&v128 length:4 atIndex:16];
          v81 = self->_threadgroupSize;
          *&v131[0] = (v130 + v81 - 1) / v81;
          *(v131 + 8) = v123;
          threadgroupSize = v81;
          v134 = v123;
          [encoder dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
          LODWORD(v128) = v128 + 1;
        }

        v78 = [geometryDescriptors2 countByEnumeratingWithState:&v124 objects:v136 count:16];
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
    instanceDescriptorType = [descriptorCopy instanceDescriptorType];
    LODWORD(v128) = [descriptorCopy instanceCount];
    [encoder setBytes:&v128 length:4 atIndex:15];
    v84 = -[MTLGPUBVHBuilder newResourceIDsBufferWithBVHs:retainedResources:encoder:](self, "newResourceIDsBufferWithBVHs:retainedResources:encoder:", [descriptorCopy instancedAccelerationStructures], resources, encoder);
    [encoder setBuffer:v84 offset:0 atIndex:16];
    if (!v128)
    {
      goto LABEL_145;
    }

LABEL_130:
    if (instanceDescriptorType <= 1)
    {
      if (instanceDescriptorType)
      {
        if (instanceDescriptorType == 1)
        {
          v95 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_USER_ID;
          v96 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_USER_ID_IN_PLACE;
          goto LABEL_141;
        }

LABEL_153:
        MTLReportFailure(0, "[MTLGPUBVHBuilder refitVertexDataWithEncoder:descriptor:bvhDescriptor:inPlace:sourceBuffer:sourceBufferOffset:scratchBuffer:scratchBufferOffset:retainedResources:innerNodeCapacity:leafNodeCapacity:]", 8253, @"Unexpected MTLAccelerationStructureInstanceDescriptorType", v85, v86, v87, v88, v109);
        v97 = 0;
LABEL_144:
        [encoder setComputePipelineState:v97];
        v98 = self->_threadgroupSize;
        *&v131[0] = (v128 + v98 - 1) / v98;
        *(v131 + 8) = vdupq_n_s64(1uLL);
        threadgroupSize = v98;
        v134 = *(v131 + 8);
        [encoder dispatchThreadgroups:v131 threadsPerThreadgroup:&threadgroupSize];
        goto LABEL_145;
      }
    }

    else if (instanceDescriptorType != 2)
    {
      if (instanceDescriptorType == 3 || instanceDescriptorType == 4)
      {
        v95 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_INDIRECT;
        v96 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_INSTANCE_RESOURCE_IDS_INDIRECT_IN_PLACE;
LABEL_141:
        if (placeCopy)
        {
          v95 = v96;
        }

        v97 = PipelineCache<PipelineKey>::getPipeline(v116, *(&self->super.super.isa + *v95), bvhDescriptor);
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

  instanceDescriptorType = [descriptorCopy instanceDescriptorType];
  maxInstanceCount = [descriptorCopy maxInstanceCount];
  LODWORD(v128) = maxInstanceCount;
  [encoder setBuffer:objc_msgSend(descriptorCopy offset:"instanceCountBuffer") atIndex:{objc_msgSend(descriptorCopy, "instanceCountBufferOffset"), 15}];
  v84 = 0;
  if (maxInstanceCount)
  {
    goto LABEL_130;
  }

LABEL_145:

  v99 = *MEMORY[0x1E69E9840];
}

- (void)refitPrimitiveData:(id)data inPlace:(BOOL)place bvhDescriptor:(id)descriptor
{
  v7 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_PRIMITIVE_DATA;
  if (place)
  {
    v7 = &OBJC_IVAR___MTLGPUBVHBuilder_KERNEL_INDEX_REFIT_PRIMITIVE_DATA_IN_PLACE;
  }

  [data setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v7), descriptor)}];
  if ([data dispatchType] == 1)
  {
    [data memoryBarrierWithScope:1];
  }

  threadgroupSize = self->_threadgroupSize;
  v10 = vdupq_n_s64(1uLL);
  v11 = v10;
  v12 = 1;
  v9 = threadgroupSize;
  [data dispatchThreadgroups:&v11 threadsPerThreadgroup:&v9];
}

- (void)refitMTLSWBVHWithEncoder:(id)encoder descriptor:(id)descriptor bvhDescriptor:(id)bvhDescriptor sourceBuffer:(id)buffer sourceBufferOffset:(unint64_t)offset destinationBuffer:(id)destinationBuffer destinationBufferOffset:(unint64_t)bufferOffset destinationMTLResourceID:(MTLResourceID)self0 destinationAccelerationStructureUniqueIdentifier:(unint64_t)self1 scratchBuffer:(id)self2 scratchBufferOffset:(unint64_t)self3 options:(unint64_t)self4
{
  optionsCopy = options;
  v99 = *MEMORY[0x1E69E9840];
  v62 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  MTLSWBVHType = getMTLSWBVHType(descriptor);
  descriptorCopy = descriptor;
  MTLSWBVHPrimitiveType = getMTLSWBVHPrimitiveType(descriptor);
  [bvhDescriptor updatePipelineKey];
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  bvhDescriptorCopy = bvhDescriptor;
  selfCopy = self;
  bvhDescriptorCopy2 = bvhDescriptor;
  v25 = MTLSWBVHPrimitiveType;
  [(MTLBVHBuilder *)self getCapacitiesForDescriptor:bvhDescriptorCopy2 fragmentCapacity:&v93 innerNodeCapacity:&v92 leafNodeCapacity:&v91 primitiveDataCapacity:&v90];
  ++v92;
  v27 = buffer == destinationBuffer && offset == bufferOffset;
  if (destinationBuffer)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1;
  }

  v65 = v28;
  bufferCopy = buffer;
  offsetCopy = offset;
  [encoder setBuffer:buffer offset:offset atIndex:0];
  destinationBufferCopy = destinationBuffer;
  [encoder setBuffer:destinationBuffer offset:bufferOffset atIndex:1];
  if (!MTLSWBVHType)
  {
    if ([(MTLGPUBVHBuilder *)self useResourceBufferForDescriptor:bvhDescriptorCopy])
    {
      [(MTLGPUBVHBuilder *)self setResourceBufferWithDescriptor:bvhDescriptorCopy retainedResources:v62 onEncoder:encoder atIndex:23];
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = [bvhDescriptorCopy geometryDescriptors];
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
            if ((optionsCopy & 2) != 0 && [*(*(&v86 + 1) + 8 * i) primitiveDataBuffer])
            {
              [encoder useResource:objc_msgSend(v33 usage:{"primitiveDataBuffer"), 1}];
            }

            if (optionsCopy)
            {
              if (v25 == 1)
              {
                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                boundingBoxBuffers = [v33 boundingBoxBuffers];
                v42 = [boundingBoxBuffers countByEnumeratingWithState:&v78 objects:v96 count:16];
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
                        objc_enumerationMutation(boundingBoxBuffers);
                      }

                      [encoder useResource:objc_msgSend(*(*(&v78 + 1) + 8 * j) usage:{"buffer"), 1}];
                    }

                    v43 = [boundingBoxBuffers countByEnumeratingWithState:&v78 objects:v96 count:16];
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
                  controlPointBuffers = [v33 controlPointBuffers];
                  v47 = [controlPointBuffers countByEnumeratingWithState:&v74 objects:v95 count:16];
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
                          objc_enumerationMutation(controlPointBuffers);
                        }

                        [encoder useResource:objc_msgSend(*(*(&v74 + 1) + 8 * k) usage:{"buffer"), 1}];
                      }

                      v48 = [controlPointBuffers countByEnumeratingWithState:&v74 objects:v95 count:16];
                    }

                    while (v48);
                  }

                  v72 = 0u;
                  v73 = 0u;
                  v70 = 0u;
                  v71 = 0u;
                  radiusBuffers = [v33 radiusBuffers];
                  v52 = [radiusBuffers countByEnumeratingWithState:&v70 objects:v94 count:16];
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
                          objc_enumerationMutation(radiusBuffers);
                        }

                        [encoder useResource:objc_msgSend(*(*(&v70 + 1) + 8 * m) usage:{"buffer"), 1}];
                      }

                      v53 = [radiusBuffers countByEnumeratingWithState:&v70 objects:v94 count:16];
                    }

                    while (v53);
                  }

                  indexBuffer = [v33 indexBuffer];
                  v25 = v34;
                  v31 = v68;
                  goto LABEL_57;
                }

                v84 = 0uLL;
                v85 = 0uLL;
                v82 = 0uLL;
                v83 = 0uLL;
                vertexBuffers = [v33 vertexBuffers];
                v36 = [vertexBuffers countByEnumeratingWithState:&v82 objects:v97 count:16];
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
                        objc_enumerationMutation(vertexBuffers);
                      }

                      [encoder useResource:objc_msgSend(*(*(&v82 + 1) + 8 * n) usage:{"buffer"), 1}];
                    }

                    v37 = [vertexBuffers countByEnumeratingWithState:&v82 objects:v97 count:16];
                  }

                  while (v37);
                }

                if ([v33 indexBuffer])
                {
                  [encoder useResource:objc_msgSend(v33 usage:{"indexBuffer"), 1}];
                }

                v25 = v34;
                v31 = v68;
                if ([v33 transformationMatrixBuffer])
                {
                  indexBuffer = [v33 transformationMatrixBuffer];
LABEL_57:
                  [encoder useResource:indexBuffer usage:1];
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

  [encoder setBytes:&identifier length:8 atIndex:9];
  if (optionsCopy)
  {
    [(MTLGPUBVHBuilder *)selfCopy refitVertexDataWithEncoder:encoder descriptor:descriptorCopy bvhDescriptor:bvhDescriptorCopy inPlace:v65 sourceBuffer:bufferCopy sourceBufferOffset:offsetCopy scratchBuffer:scratchBuffer scratchBufferOffset:scratchBufferOffset retainedResources:v62 innerNodeCapacity:v92 leafNodeCapacity:v91];
  }

  if ((optionsCopy & 2) != 0 && v90)
  {
    [(MTLGPUBVHBuilder *)selfCopy refitPrimitiveData:encoder inPlace:v65 bvhDescriptor:bvhDescriptorCopy];
  }

  if ((v65 & 1) == 0)
  {
    v57 = (optionsCopy & 2) == 0 && v90 != 0;
    if ((optionsCopy & 1) == 0 || v57)
    {
      BYTE2(v59) = v57;
      BYTE1(v59) = (optionsCopy & 1) == 0;
      LOBYTE(v59) = 0;
      [MTLGPUBVHBuilder copyMTLSWBVHWithEncoder:selfCopy sourceBuffer:"copyMTLSWBVHWithEncoder:sourceBuffer:sourceBufferOffset:toBuffer:destinationBufferOffset:destinationMTLResourceID:destinationAccelerationStructureUniqueIdentifier:compact:copyVertexData:copyPerPrimitiveData:" sourceBufferOffset:encoder toBuffer:bufferCopy destinationBufferOffset:offsetCopy destinationMTLResourceID:destinationBufferCopy destinationAccelerationStructureUniqueIdentifier:bufferOffset compact:d._impl copyVertexData:identifier copyPerPrimitiveData:v59];
    }
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)writeSerializedMTLSWBVHSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_SERIALIZED_MTL_BVH_SIZE, self->_pipelineCache.baseThreadgroupSize, 0);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [encoder dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)writeSerializedMTLSWBVHRawSizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_SERIALIZED_MTL_BVH_RAW_SIZE, self->_pipelineCache.baseThreadgroupSize, 0);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [encoder dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)writeDeserializedMTLSWBVHSizeWithEncoder:(id)encoder serializedBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset
{
  v17 = 0;
  KERNEL_INDEX_GET_DESERIALIZED_MTL_BVH_SIZE_low = LOBYTE(self->KERNEL_INDEX_GET_DESERIALIZED_MTL_BVH_SIZE);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_DESERIALIZED_MTL_BVH_SIZE_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [encoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeDeserializedMTLSWPrimitiveBVHSizesWithEncoder:(id)encoder serializedBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizesBufferOffset:(unint64_t)bufferOffset
{
  v13 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v14 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  [v13 addObject:v14];
  [(MTLGPUBVHBuilder *)self writeDeserializedMTLSWBVHSizeWithEncoder:encoder serializedBuffer:buffer serializedBufferOffset:offset toBuffer:v14 sizeBufferOffset:0];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_DESERIALIZED_MTL_PRIMITIVE_BVH_SIZES, self->_pipelineCache.baseThreadgroupSize, 0);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  v16 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v13 indirectBufferStride:0];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  [(MTLGPUBVHBuilder *)self dispatchIndirect64:Pipeline indirectBuffer:v16 indirectBufferOffset:0 threadCountBuffer:v14 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:self->_threadgroupSize encoder:encoder];
}

- (void)writeSerializationDataWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationBufferOffset:(unint64_t)bufferOffset
{
  v13 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v14 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  [v13 addObject:v14];
  [(MTLGPUBVHBuilder *)self writeSerializedMTLSWBVHSizeWithEncoder:encoder BVHBuffer:buffer BVHBufferOffset:offset toBuffer:v14 sizeBufferOffset:0];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_MTL_BVH_SERIALIZATION_DATA, self->_pipelineCache.baseThreadgroupSize, 0);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:v14 offset:0 atIndex:1];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:2];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v18 = vdupq_n_s64(1uLL);
  v19 = 1;
  v16 = v18;
  v17 = 1;
  [encoder dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
}

- (void)writeSerializedMTLSWBVHWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset primitiveAccelerationStructures:(id)structures toBuffer:(id)toBuffer serializedBufferOffset:(unint64_t)bufferOffset
{
  v14 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  [(MTLGPUBVHBuilder *)self writeSerializationDataWithEncoder:encoder BVHBuffer:buffer BVHBufferOffset:offset toBuffer:toBuffer destinationBufferOffset:bufferOffset];
  v15 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  v16 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  [v14 addObject:v15];
  [(MTLGPUBVHBuilder *)self writeSerializedMTLSWBVHRawSizeWithEncoder:encoder BVHBuffer:buffer BVHBufferOffset:offset toBuffer:v15 sizeBufferOffset:0];
  v17 = bufferOffset + 24;
  v26 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v14 indirectBufferStride:0];
  [MTLGPUBVHBuilder fastIndirectGPUMemcpyWithEncoder:"fastIndirectGPUMemcpyWithEncoder:indirectBuffer:indirectBufferOffset:srcBuffer:srcBufferOffset:dstBuffer:dstBufferOffset:lengthBuffer:lengthOffset:retainedResources:" indirectBuffer:encoder indirectBufferOffset:v17 srcBuffer:v15 srcBufferOffset:0 dstBuffer:v14 dstBufferOffset:? lengthBuffer:? lengthOffset:? retainedResources:?];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_SERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setComputePipelineState:Pipeline];
  [encoder setBuffer:v16 offset:0 atIndex:1];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v29 = vdupq_n_s64(1uLL);
  v30 = 1;
  v27 = v29;
  v28 = 1;
  [encoder dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [encoder setBuffer:toBuffer offset:v17 atIndex:1];
  if (structures)
  {
    v19 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_PATCH_SERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0);
    v20 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:structures retainedResources:v14 encoder:encoder];
    v21 = [(MTLGPUBVHBuilder *)self newResourceIDsBufferWithBVHs:structures retainedResources:v14 encoder:encoder];
    useResourcesBatched(structures, 1, encoder);
    v29.i32[0] = [structures count];
    [encoder setBuffer:v20 offset:0 atIndex:2];
    [encoder setBytes:&v29 length:4 atIndex:3];
    [encoder setBuffer:v21 offset:0 atIndex:4];
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    threadgroupSize = self->_threadgroupSize;
    selfCopy = self;
    v23 = v26;
    [(MTLGPUBVHBuilder *)selfCopy dispatchIndirect:v19 indirectBuffer:v26 indirectBufferOffset:0 threadCountBuffer:v16 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:threadgroupSize encoder:encoder];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v23 = v26;
  }
}

- (void)writeDeserializedMTLSWBVHWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset primitiveAccelerationStructures:(id)structures fromBuffer:(id)fromBuffer serializedBufferOffset:(unint64_t)bufferOffset accelerationStructureMTLResourceID:(MTLResourceID)d accelerationStructureUniqueIdentifier:(unint64_t)self0
{
  v16 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  v17 = [(MTLDevice *)self->_device newBufferWithLength:8 options:0];
  v18 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  [v16 addObject:v17];
  [(MTLGPUBVHBuilder *)self writeDeserializedMTLSWBVHSizeWithEncoder:encoder serializedBuffer:fromBuffer serializedBufferOffset:bufferOffset toBuffer:v17 sizeBufferOffset:0];
  v26 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v16 indirectBufferStride:0];
  [MTLGPUBVHBuilder fastIndirectGPUMemcpyWithEncoder:"fastIndirectGPUMemcpyWithEncoder:indirectBuffer:indirectBufferOffset:srcBuffer:srcBufferOffset:dstBuffer:dstBufferOffset:lengthBuffer:lengthOffset:retainedResources:" indirectBuffer:encoder indirectBufferOffset:offset srcBuffer:v17 srcBufferOffset:0 dstBuffer:v16 dstBufferOffset:? lengthBuffer:? lengthOffset:? retainedResources:?];
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_DESERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0)}];
  [encoder setBuffer:fromBuffer offset:bufferOffset + 24 atIndex:0];
  [encoder setBuffer:buffer offset:offset atIndex:1];
  [encoder setBuffer:v18 offset:0 atIndex:2];
  [encoder setBytes:&identifier length:8 atIndex:3];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v29 = vdupq_n_s64(1uLL);
  v30 = 1;
  v27 = v29;
  v28 = 1;
  [encoder dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  if (structures)
  {
    Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_PATCH_DESERIALIZED_MTL_BVH, self->_pipelineCache.baseThreadgroupSize, 0);
    v20 = [(MTLGPUBVHBuilder *)self newInstanceBufferWithBVHs:structures retainedResources:v16 encoder:encoder];
    v21 = [(MTLGPUBVHBuilder *)self newResourceIDsBufferWithBVHs:structures retainedResources:v16 encoder:encoder];
    useResourcesBatched(structures, 1, encoder);
    [encoder setBuffer:v20 offset:0 atIndex:2];
    [encoder setBuffer:v21 offset:0 atIndex:3];
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    threadgroupSize = self->_threadgroupSize;
    selfCopy = self;
    v23 = v26;
    [(MTLGPUBVHBuilder *)selfCopy dispatchIndirect:Pipeline indirectBuffer:v26 indirectBufferOffset:0 threadCountBuffer:v18 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:threadgroupSize encoder:encoder];
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v23 = v26;
  }
}

- (void)writeSerializedGeometrySizeWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset
{
  v17 = 0;
  KERNEL_INDEX_GET_GEOMETRY_SIZE_low = LOBYTE(self->KERNEL_INDEX_GET_GEOMETRY_SIZE);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_GEOMETRY_SIZE_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [encoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeSerializedGeometryPrimitiveCountWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer countBufferOffset:(unint64_t)bufferOffset
{
  v17 = 0;
  KERNEL_INDEX_GET_GEOMETRY_PRIMITIVE_COUNT_low = LOBYTE(self->KERNEL_INDEX_GET_GEOMETRY_PRIMITIVE_COUNT);
  p_pipelineCache = &self->_pipelineCache;
  v19 = 0u;
  *&v18[8] = 0u;
  *v18 = KERNEL_INDEX_GET_GEOMETRY_PRIMITIVE_COUNT_low | ((log2(self->_pipelineCache.baseThreadgroupSize) & 0xF) << 45);
  Pipeline = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, v18, &v17);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  *v18 = vdupq_n_s64(1uLL);
  *&v18[16] = 1;
  v15 = v17;
  v16 = *v18;
  [encoder dispatchThreadgroups:v18 threadsPerThreadgroup:&v15];
}

- (void)writeSerializedGeometryWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer geometryBufferOffset:(unint64_t)bufferOffset
{
  v13 = [(MTLGPUBVHBuilder *)self retainedResourcesArrayWithEncoder:?];
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_EXTRACT_MTL_BVH_PRIMITIVES, self->_pipelineCache.baseThreadgroupSize, 0);
  v15 = [(MTLDevice *)self->_device newBufferWithLength:4 options:0];
  [v13 addObject:v15];
  [(MTLGPUBVHBuilder *)self writeSerializedGeometryPrimitiveCountWithEncoder:encoder BVHBuffer:buffer BVHBufferOffset:offset toBuffer:v15 countBufferOffset:0];
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  v16 = [(MTLGPUBVHBuilder *)self newIndirectBufferWithCapacity:1 withRetainedResources:v13 indirectBufferStride:0];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  [(MTLGPUBVHBuilder *)self dispatchIndirect:Pipeline indirectBuffer:v16 indirectBufferOffset:0 threadCountBuffer:v15 threadCountBufferOffset:0 threadCountIndex:0 threadgroupDivisor:self->_threadgroupSize threadgroupSize:self->_threadgroupSize encoder:encoder];
}

- (BOOL)writeGenericBVHStructureSizesWithEncoder:(id)encoder version:(unint64_t)version BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizesBufferOffset:(unint64_t)bufferOffset
{
  v8 = version - 256;
  if (version - 256 <= 5)
  {
    Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *off_1E6EEA8A0[v8]), self->_pipelineCache.baseThreadgroupSize, 0);
    [encoder setBuffer:buffer offset:offset atIndex:0];
    [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
    [encoder setComputePipelineState:Pipeline];
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    v18 = vdupq_n_s64(1uLL);
    v19 = 1;
    v16 = v18;
    v17 = 1;
    [encoder dispatchThreadgroups:&v18 threadsPerThreadgroup:&v16];
  }

  return v8 < 6;
}

- (void)writeGenericBVHStructureWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset header:(id)header headerBufferOffset:(unint64_t)bufferOffset innerNodes:(id)nodes innerNodeBufferOffset:(unint64_t)nodeBufferOffset leafNodes:(id)self0 leafNodeBufferOffset:(unint64_t)self1 primitives:(id)self2 primitiveBufferOffset:(unint64_t)self3 geometry:(id)self4 geometryOffset:(unint64_t)self5 instanceTransform:(id)self6 instanceTransformOffset:(unint64_t)self7 controlPoints:(id)self8 controlPointBufferOffset:(unint64_t)self9
{
  v26 = [[MTLGenericBVHBuffersSPI alloc] initWithVersion:256];
  [(MTLGenericBVHBuffersSPI *)v26 setHeaderBuffer:header];
  [(MTLGenericBVHBuffersSPI *)v26 setHeaderBufferOffset:bufferOffset];
  [(MTLGenericBVHBuffersSPI *)v26 setInnerNodeBuffer:nodes];
  [(MTLGenericBVHBuffersSPI *)v26 setInnerNodeBufferOffset:nodeBufferOffset];
  [(MTLGenericBVHBuffersSPI *)v26 setLeafNodeBuffer:leafNodes];
  [(MTLGenericBVHBuffersSPI *)v26 setLeafNodeBufferOffset:leafNodeBufferOffset];
  [(MTLGenericBVHBuffersSPI *)v26 setPrimitiveBuffer:primitives];
  [(MTLGenericBVHBuffersSPI *)v26 setPrimitiveBufferOffset:primitiveBufferOffset];
  [(MTLGenericBVHBuffersSPI *)v26 setGeometryBuffer:geometry];
  [(MTLGenericBVHBuffersSPI *)v26 setGeometryBufferOffset:geometryOffset];
  [(MTLGenericBVHBuffersSPI *)v26 setInstanceTransformBuffer:transform];
  [(MTLGenericBVHBuffersSPI *)v26 setInstanceTransformBufferOffset:transformOffset];
  [(MTLGenericBVHBuffersSPI *)v26 setControlPointBuffer:points];
  [(MTLGenericBVHBuffersSPI *)v26 setControlPointBufferOffset:pointBufferOffset];
  [(MTLGPUBVHBuilder *)self writeGenericBVHStructureWithEncoder:encoder BVHBuffer:buffer BVHBufferOffset:offset into:v26];
}

- (BOOL)writeGenericBVHStructureWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset into:(id)into
{
  headerBuffer = [into headerBuffer];
  headerBufferOffset = [into headerBufferOffset];
  innerNodeBuffer = [into innerNodeBuffer];
  innerNodeBufferOffset = [into innerNodeBufferOffset];
  leafNodeBuffer = [into leafNodeBuffer];
  leafNodeBufferOffset = [into leafNodeBufferOffset];
  primitiveBuffer = [into primitiveBuffer];
  primitiveBufferOffset = [into primitiveBufferOffset];
  geometryBuffer = [into geometryBuffer];
  geometryBufferOffset = [into geometryBufferOffset];
  instanceTransformBuffer = [into instanceTransformBuffer];
  instanceTransformBufferOffset = [into instanceTransformBufferOffset];
  perPrimitiveDataBuffer = [into perPrimitiveDataBuffer];
  perPrimitiveDataBufferOffset = [into perPrimitiveDataBufferOffset];
  controlPointBuffer = [into controlPointBuffer];
  controlPointBufferOffset = [into controlPointBufferOffset];
  version = [into version];
  v17 = version - 256;
  if ((version - 256) <= 5)
  {
    v41 = controlPointBufferOffset;
    v42 = instanceTransformBuffer;
    v40 = perPrimitiveDataBufferOffset;
    v44 = controlPointBuffer;
    v18 = off_1E6EEA900[v17];
    v34 = qword_185DC64A0[v17];
    v36 = qword_185DC64D0[v17];
    v37 = qword_185DC6500[v17];
    v43 = version - 256;
    v38 = qword_185DC6530[v17];
    v39 = qword_185DC6560[v17];
    p_pipelineCache = &self->_pipelineCache;
    Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *off_1E6EEA8D0[v17]), self->_pipelineCache.baseThreadgroupSize, 0);
    selfCopy = self;
    v35 = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, *(&self->super.super.isa + *v18), self->_pipelineCache.baseThreadgroupSize, 0);
    [encoder setBuffer:buffer offset:offset atIndex:0];
    v22 = headerBuffer;
    [encoder setBuffer:headerBuffer offset:headerBufferOffset atIndex:1];
    [encoder setComputePipelineState:Pipeline];
    if ([encoder dispatchType] == 1)
    {
      [encoder memoryBarrierWithScope:1];
    }

    v58 = vdupq_n_s64(1uLL);
    v59 = 1;
    *v57 = v58;
    *&v57[16] = 1;
    [encoder dispatchThreadgroups:&v58 threadsPerThreadgroup:v57];
    v56 = [(MTLDevice *)selfCopy->_device newBufferWithLength:12 options:0];
    if (innerNodeBuffer)
    {
      v23 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, selfCopy->KERNEL_INDEX_EXTRACT_MTL_BVH_INNER_NODES, p_pipelineCache->baseThreadgroupSize, 0);
      [encoder setBuffer:buffer offset:offset atIndex:0];
      [encoder setBuffer:innerNodeBuffer offset:innerNodeBufferOffset atIndex:1];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)selfCopy dispatchIndirect:v23 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:headerBuffer threadCountBufferOffset:v34 + headerBufferOffset threadCountIndex:0 threadgroupDivisor:selfCopy->_threadgroupSize threadgroupSize:selfCopy->_threadgroupSize encoder:encoder];
    }

    v24 = geometryBuffer;
    offsetCopy2 = offset;
    if (leafNodeBuffer)
    {
      [encoder setBuffer:buffer offset:offset atIndex:0];
      [encoder setBuffer:leafNodeBuffer offset:leafNodeBufferOffset atIndex:1];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)selfCopy dispatchIndirect:v35 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:headerBuffer threadCountBufferOffset:v36 + headerBufferOffset threadCountIndex:0 threadgroupDivisor:selfCopy->_threadgroupSize threadgroupSize:selfCopy->_threadgroupSize encoder:encoder];
    }

    if (primitiveBuffer)
    {
      v26 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, selfCopy->KERNEL_INDEX_EXTRACT_MTL_BVH_PRIMITIVE_NODES, p_pipelineCache->baseThreadgroupSize, 0);
      [encoder setBuffer:buffer offset:? atIndex:?];
      [encoder setBuffer:primitiveBuffer offset:primitiveBufferOffset atIndex:1];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)selfCopy dispatchIndirect:v26 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:headerBuffer threadCountBufferOffset:v37 + headerBufferOffset threadCountIndex:0 threadgroupDivisor:selfCopy->_threadgroupSize threadgroupSize:selfCopy->_threadgroupSize encoder:encoder];
      offsetCopy2 = offset;
      v24 = geometryBuffer;
    }

    if ([v24 length])
    {
      if ([into version] < 0x103)
      {
        version2 = [into version];
        baseThreadgroupSize = p_pipelineCache->baseThreadgroupSize;
        if (version2 < 0x102)
        {
          v30 = 568;
        }

        else
        {
          v30 = 660;
        }

        KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2 = *(&selfCopy->super.super.isa + v30);
      }

      else
      {
        KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2 = selfCopy->KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2;
        baseThreadgroupSize = p_pipelineCache->baseThreadgroupSize;
      }

      v31 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, KERNEL_INDEX_EXTRACT_MTL_BVH_GEOMETRY_1_2, baseThreadgroupSize, 0);
      [encoder setBuffer:buffer offset:offsetCopy2 atIndex:0];
      [encoder setBuffer:v24 offset:geometryBufferOffset atIndex:1];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)selfCopy dispatchIndirect:v31 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:v22 threadCountBufferOffset:v38 + headerBufferOffset threadCountIndex:0 threadgroupDivisor:selfCopy->_threadgroupSize encoder:encoder];
    }

    if ([v42 length])
    {
      v32 = PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, selfCopy->KERNEL_INDEX_EXTRACT_MTL_BVH_TRANSFORMS, p_pipelineCache->baseThreadgroupSize, 0);
      [encoder setBuffer:buffer offset:offsetCopy2 atIndex:0];
      [encoder setBuffer:v42 offset:instanceTransformBufferOffset atIndex:1];
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [(MTLGPUBVHBuilder *)selfCopy dispatchIndirect:v32 indirectBuffer:v56 indirectBufferOffset:0 threadCountBuffer:v22 threadCountBufferOffset:v39 + headerBufferOffset threadCountIndex:0 threadgroupDivisor:selfCopy->_threadgroupSize encoder:encoder];
    }

    if ([perPrimitiveDataBuffer length])
    {
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, selfCopy->KERNEL_INDEX_EXTRACT_PRIMITIVE_DATA, p_pipelineCache->baseThreadgroupSize, 0)}];
      [encoder setBuffer:buffer offset:offsetCopy2 atIndex:0];
      [encoder setBuffer:perPrimitiveDataBuffer offset:v40 atIndex:1];
      v58 = vdupq_n_s64(1uLL);
      v59 = 1;
      *v57 = selfCopy->_threadgroupSize;
      *&v57[8] = v58;
      [encoder dispatchThreadgroups:&v58 threadsPerThreadgroup:v57];
    }

    if ([v44 length])
    {
      if ([encoder dispatchType] == 1)
      {
        [encoder memoryBarrierWithScope:1];
      }

      [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(p_pipelineCache, selfCopy->KERNEL_INDEX_EXTRACT_CONTROL_POINT_DATA, p_pipelineCache->baseThreadgroupSize, 0)}];
      [encoder setBuffer:buffer offset:offsetCopy2 atIndex:0];
      [encoder setBuffer:v44 offset:v41 atIndex:1];
      v58 = vdupq_n_s64(1uLL);
      v59 = 1;
      *v57 = selfCopy->_threadgroupSize;
      *&v57[8] = v58;
      [encoder dispatchThreadgroups:&v58 threadsPerThreadgroup:v57];
    }

    v17 = v43;
  }

  return v17 < 6;
}

- (void)writeAccelerationStructureSerializationDataWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer offset:(unint64_t)a7
{
  Pipeline = PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_WRITE_SERIALIZATION_DATA, self->_pipelineCache.baseThreadgroupSize, 0);
  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:a7 atIndex:1];
  [encoder setComputePipelineState:Pipeline];
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [encoder dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)writeMTLSWBVHAccelerationStructureDepthWithEncoder:(id)encoder BVHBuffer:(id)buffer BVHBufferOffset:(unint64_t)offset toBuffer:(id)toBuffer sizeBufferOffset:(unint64_t)bufferOffset
{
  if ([encoder dispatchType] == 1)
  {
    [encoder memoryBarrierWithScope:1];
  }

  [encoder setBuffer:buffer offset:offset atIndex:0];
  [encoder setBuffer:toBuffer offset:bufferOffset atIndex:1];
  [encoder setComputePipelineState:{PipelineCache<PipelineKey>::getPipeline(&self->_pipelineCache, self->KERNEL_INDEX_GET_MTL_BVH_DEPTH, self->_pipelineCache.baseThreadgroupSize, 0)}];
  v15 = vdupq_n_s64(1uLL);
  v16 = 1;
  v13 = v15;
  v14 = 1;
  [encoder dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
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
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end