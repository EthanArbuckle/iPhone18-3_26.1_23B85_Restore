@interface MDLMeshBufferDataAllocator
- (id)newBuffer:(unint64_t)a3 type:(unint64_t)a4;
- (id)newBufferFromZone:(id)a3 data:(id)a4 type:(unint64_t)a5;
- (id)newBufferFromZone:(id)a3 length:(unint64_t)a4 type:(unint64_t)a5;
- (id)newBufferWithData:(id)a3 type:(unint64_t)a4;
- (id)newZone:(unint64_t)a3;
- (id)newZoneForBuffersWithSize:(id)a3 andType:(id)a4;
@end

@implementation MDLMeshBufferDataAllocator

- (id)newZone:(unint64_t)a3
{
  v4 = [MDLMeshBufferZoneDefault alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithCapacity_allocator_, a3);
}

- (id)newZoneForBuffersWithSize:(id)a3 andType:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_count(v6, v8, v9);
  if (v10 == objc_msgSend_count(v7, v11, v12))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v6;
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

- (id)newBuffer:(unint64_t)a3 type:(unint64_t)a4
{
  v7 = [MDLMeshBufferData alloc];
  result = objc_msgSend_initWithLength_data_allocator_zone_(v7, v8, a3, 0, self, 0);
  *(result + 6) = a4;
  return result;
}

- (id)newBufferWithData:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [MDLMeshBufferData alloc];
  v10 = objc_msgSend_length(v6, v8, v9);
  v12 = objc_msgSend_initWithLength_data_allocator_zone_(v7, v11, v10, v6, self, 0);
  v12[6] = a4;

  return v12;
}

- (id)newBufferFromZone:(id)a3 length:(unint64_t)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = [MDLMeshBufferData alloc];
  v11 = objc_msgSend_initWithLength_data_allocator_zone_(v9, v10, a4, 0, self, v8);
  v11[6] = a5;

  return v11;
}

- (id)newBufferFromZone:(id)a3 data:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MDLMeshBufferData alloc];
  v13 = objc_msgSend_length(v9, v11, v12);
  v15 = objc_msgSend_initWithLength_data_allocator_zone_(v10, v14, v13, v9, self, v8);
  v15[6] = a5;

  return v15;
}

@end