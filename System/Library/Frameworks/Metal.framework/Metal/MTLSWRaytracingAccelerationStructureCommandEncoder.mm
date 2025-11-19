@interface MTLSWRaytracingAccelerationStructureCommandEncoder
@end

@implementation MTLSWRaytracingAccelerationStructureCommandEncoder

uint64_t __105___MTLSWRaytracingAccelerationStructureCommandEncoder_substreamSynchronizeAccelerationStructures_access___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __77___MTLSWRaytracingAccelerationStructureCommandEncoder_initWithCommandBuffer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 24) maximumComputeSubstreams];
  }

  else
  {
    v3 = 0;
  }

  [_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::numSubstreams = v3;
  result = [*(*(a1 + 32) + 24) supportsFamily:1006];
  [_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:]::useConcurrentDispatch = result;
  return result;
}

uint64_t __88___MTLSWRaytracingAccelerationStructureCommandEncoder_initWithCommandBuffer_descriptor___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 24) maximumComputeSubstreams];
  }

  else
  {
    v3 = 0;
  }

  [_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::numSubstreams = v3;
  result = [*(*(a1 + 32) + 24) supportsFamily:1006];
  [_MTLSWRaytracingAccelerationStructureCommandEncoder initWithCommandBuffer:descriptor:]::useConcurrentDispatch = result;
  return result;
}

uint64_t __127___MTLSWRaytracingAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __127___MTLSWRaytracingAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __111___MTLSWRaytracingAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __111___MTLSWRaytracingAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __124___MTLSWRaytracingAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __124___MTLSWRaytracingAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __105___MTLSWRaytracingAccelerationStructureCommandEncoder_copyAccelerationStructure_toAccelerationStructure___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __105___MTLSWRaytracingAccelerationStructureCommandEncoder_copyAccelerationStructure_toAccelerationStructure___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __115___MTLSWRaytracingAccelerationStructureCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __115___MTLSWRaytracingAccelerationStructureCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __139___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __139___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __139___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __147___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __147___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __147___MTLSWRaytracingAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __122___MTLSWRaytracingAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __122___MTLSWRaytracingAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __141___MTLSWRaytracingAccelerationStructureCommandEncoder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __141___MTLSWRaytracingAccelerationStructureCommandEncoder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __152___MTLSWRaytracingAccelerationStructureCommandEncoder_writeDeserializedPrimitiveAccelerationStructureSizes_serializedOffset_toBuffer_sizesBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __152___MTLSWRaytracingAccelerationStructureCommandEncoder_writeDeserializedPrimitiveAccelerationStructureSizes_serializedOffset_toBuffer_sizesBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __127___MTLSWRaytracingAccelerationStructureCommandEncoder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __127___MTLSWRaytracingAccelerationStructureCommandEncoder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __158___MTLSWRaytracingAccelerationStructureCommandEncoder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __158___MTLSWRaytracingAccelerationStructureCommandEncoder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __131___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __131___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __162___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __162___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __146___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __146___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __177___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __177___MTLSWRaytracingAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __122___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGeometrySizeOfAccelerationStructure_toBuffer_sizeBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __122___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGeometrySizeOfAccelerationStructure_toBuffer_sizeBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __122___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGeometryOfAccelerationStructure_toBuffer_geometryBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __122___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGeometryOfAccelerationStructure_toBuffer_geometryBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __113___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

void __113___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_into___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contents];
  [*(a1 + 40) setHeaderBufferSize:*v2];
  [*(a1 + 40) setInnerNodeBufferSize:v2[1]];
  [*(a1 + 40) setLeafNodeBufferSize:v2[2]];
  [*(a1 + 40) setPrimitiveBufferSize:v2[3]];
  [*(a1 + 40) setGeometryBufferSize:v2[4]];
  [*(a1 + 40) setInstanceTransformBufferSize:v2[5]];
  [*(a1 + 40) setPerPrimitiveDataBufferSize:v2[6]];
  [*(a1 + 40) setControlPointBufferSize:v2[7]];
  v3 = *(a1 + 32);
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __108___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_into___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __135___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_toBuffer_sizesBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __135___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureSizesOfAccelerationStructure_toBuffer_sizesBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __369___MTLSWRaytracingAccelerationStructureCommandEncoder_writeGenericBVHStructureOfAccelerationStructure_headerBuffer_headerBufferOffset_innerNodeBuffer_innerNodeBufferOffset_leafNodeBuffer_leafNodeBufferOffset_primitiveBuffer_primitiveBufferOffset_geometryBuffer_geometryOffset_instanceTransformBuffer_instanceTransformOffset_controlPointBuffer_controlPointBufferOffset___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __115___MTLSWRaytracingAccelerationStructureCommandEncoder_writeAccelerationStructureSerializationData_toBuffer_offset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __115___MTLSWRaytracingAccelerationStructureCommandEncoder_writeAccelerationStructureSerializationData_toBuffer_offset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __112___MTLSWRaytracingAccelerationStructureCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer_offset___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

uint64_t __112___MTLSWRaytracingAccelerationStructureCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer_offset___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  if (*(v4 + 56) == 1)
  {
    [v5 setSubstream:?];
    v6 = *(*(a1 + 32) + 40);

    return [v6 waitForVirtualSubstream:v2];
  }

  else
  {

    return [v5 waitForProgress:a2];
  }
}

@end