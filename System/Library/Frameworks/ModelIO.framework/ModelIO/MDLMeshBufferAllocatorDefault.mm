@interface MDLMeshBufferAllocatorDefault
- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type;
- (id)newBufferFromZone:(id)zone length:(unint64_t)length type:(unint64_t)type;
- (id)newBufferWithData:(id)data type:(unint64_t)type;
- (id)newZone:(unint64_t)zone;
- (id)newZoneForBuffersWithSize:(id)size andType:(id)type;
@end

@implementation MDLMeshBufferAllocatorDefault

- (id)newZone:(unint64_t)zone
{
  v4 = [MDLMeshBufferZoneDefault alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithCapacity_allocator_, zone);
}

- (id)newBuffer:(unint64_t)buffer type:(unint64_t)type
{
  v7 = [MDLMeshBufferData alloc];
  result = objc_msgSend_initWithLength_data_allocator_zone_(v7, v8, buffer, 0, self, 0);
  *(result + 6) = type;
  return result;
}

- (id)newBufferWithData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v7 = [MDLMeshBufferData alloc];
  v10 = objc_msgSend_length(dataCopy, v8, v9);
  v12 = objc_msgSend_initWithLength_data_allocator_zone_(v7, v11, v10, dataCopy, self, 0);
  v12[6] = type;

  return v12;
}

- (id)newBufferFromZone:(id)zone length:(unint64_t)length type:(unint64_t)type
{
  zoneCopy = zone;
  v9 = [MDLMeshBufferData alloc];
  v11 = objc_msgSend_initWithLength_data_allocator_zone_(v9, v10, length, 0, self, zoneCopy);
  v11[6] = type;

  return v11;
}

- (id)newBufferFromZone:(id)zone data:(id)data type:(unint64_t)type
{
  zoneCopy = zone;
  dataCopy = data;
  v10 = [MDLMeshBufferData alloc];
  v13 = objc_msgSend_length(dataCopy, v11, v12);
  v15 = objc_msgSend_initWithLength_data_allocator_zone_(v10, v14, v13, dataCopy, self, zoneCopy);
  v15[6] = type;

  return v15;
}

- (id)newZoneForBuffersWithSize:(id)size andType:(id)type
{
  v30 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  typeCopy = type;
  v10 = objc_msgSend_count(sizeCopy, v8, v9);
  if (v10 == objc_msgSend_count(typeCopy, v11, v12))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = sizeCopy;
    v15 = 0;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v25, v29, 16);
    if (v18)
    {
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v15 += objc_msgSend_unsignedIntegerValue(*(*(&v25 + 1) + 8 * v20++), v16, v17, v25);
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v25, v29, 16);
      }

      while (v18);
    }

    v22 = objc_msgSend_newZone_(self, v21, v15);
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

@end