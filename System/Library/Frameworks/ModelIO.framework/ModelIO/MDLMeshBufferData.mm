@interface MDLMeshBufferData
- (MDLMeshBufferAllocator)allocator;
- (MDLMeshBufferData)initWithLength:(unint64_t)length data:(id)data allocator:(id)allocator zone:(id)zone;
- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type data:(NSData *)data;
- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type length:(NSUInteger)length;
- (id)copyWithZone:(_NSZone *)zone;
- (id)map;
- (void)dealloc;
- (void)fillData:(id)data offset:(unint64_t)offset;
@end

@implementation MDLMeshBufferData

- (id)map
{
  v3 = [MDLMeshBufferMap alloc];
  v6 = objc_msgSend_mutableBytes(self->_data, v4, v5);
  v8 = objc_msgSend_initWithBytes_deallocator_(v3, v7, v6, 0);

  return v8;
}

- (MDLMeshBufferAllocator)allocator
{
  if (!qword_27DF912C0 && !self->_allocator)
  {
    v3 = objc_opt_new();
    v4 = qword_27DF912C0;
    qword_27DF912C0 = v3;

    objc_storeStrong(&self->_allocator, qword_27DF912C0);
  }

  allocator = self->_allocator;

  return allocator;
}

- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type length:(NSUInteger)length
{
  v16.receiver = self;
  v16.super_class = MDLMeshBufferData;
  v6 = [(MDLMeshBufferData *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_length = length;
    v8 = objc_alloc(MEMORY[0x277CBEB28]);
    v10 = objc_msgSend_initWithLength_(v8, v9, length);
    data = v7->_data;
    v7->_data = v10;

    zone = v7->_zone;
    v7->_zone = 0;

    objc_storeStrong(&v7->_zoneDefault, v7->_zone);
    allocator = v7->_allocator;
    v7->_allocator = 0;

    v7->_type = type;
    v14 = v7;
  }

  return v7;
}

- (MDLMeshBufferData)initWithType:(MDLMeshBufferType)type data:(NSData *)data
{
  v6 = data;
  v18.receiver = self;
  v18.super_class = MDLMeshBufferData;
  v9 = [(MDLMeshBufferData *)&v18 init];
  if (v9)
  {
    v9->_length = objc_msgSend_length(v6, v7, v8);
    v10 = objc_alloc(MEMORY[0x277CBEB28]);
    v12 = objc_msgSend_initWithData_(v10, v11, v6);
    v13 = v9->_data;
    v9->_data = v12;

    zone = v9->_zone;
    v9->_zone = 0;

    objc_storeStrong(&v9->_zoneDefault, v9->_zone);
    allocator = v9->_allocator;
    v9->_allocator = 0;

    v9->_type = type;
    v16 = v9;
  }

  return v9;
}

- (MDLMeshBufferData)initWithLength:(unint64_t)length data:(id)data allocator:(id)allocator zone:(id)zone
{
  dataCopy = data;
  allocatorCopy = allocator;
  zoneCopy = zone;
  v23.receiver = self;
  v23.super_class = MDLMeshBufferData;
  v13 = [(MDLMeshBufferData *)&v23 init];
  v14 = v13;
  if (v13 && ((objc_storeStrong(&v13->_zone, zone), objc_storeStrong(&v14->_zoneDefault, v14->_zone), (zoneDefault = v14->_zoneDefault) == 0) || objc_msgSend_reserveMemory_allocator_(zoneDefault, v15, v14->_length, allocatorCopy)))
  {
    objc_storeStrong(&v14->_allocator, allocator);
    v14->_length = length;
    v17 = objc_alloc(MEMORY[0x277CBEB28]);
    if (dataCopy)
    {
      v19 = objc_msgSend_initWithData_(v17, v18, dataCopy);
    }

    else
    {
      v19 = objc_msgSend_initWithLength_(v17, v18, length);
    }

    data = v14->_data;
    v14->_data = v19;

    v20 = v14;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)dealloc
{
  zoneDefault = self->_zoneDefault;
  if (zoneDefault)
  {
    objc_msgSend_cancelMemory_(zoneDefault, a2, self->_length);
  }

  v4.receiver = self;
  v4.super_class = MDLMeshBufferData;
  [(MDLMeshBufferData *)&v4 dealloc];
}

- (void)fillData:(id)data offset:(unint64_t)offset
{
  dataCopy = data;
  v8 = objc_msgSend_length(dataCopy, v6, v7);
  length = self->_length;
  v12 = objc_msgSend_mutableBytes(self->_data, v10, v11);
  v13 = dataCopy;
  v16 = objc_msgSend_bytes(v13, v14, v15);
  v17 = v8 + offset - length;
  if (v8 + offset < length)
  {
    v17 = 0;
  }

  memcpy((v12 + offset), v16, v17 + v8);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(MDLMeshBufferData, a2, zone);
  data = self->_data;
  length = self->_length;
  allocator = self->_allocator;

  return objc_msgSend_initWithLength_data_allocator_zone_(v4, v5, length, data, allocator, 0);
}

@end