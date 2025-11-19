@interface MDLSubmeshProxy
- (MDLSubmeshProxy)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MDLSubmeshProxy

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendString_(v3, v4, @"IndexBuffers: \n");
  objc_msgSend_appendFormat_(v3, v5, @"Name: %@\n", self->super._name);
  objc_msgSend_appendFormat_(v3, v6, @"IndexCount: %lu\n", self->super._indexCount);
  indexBuffer = self->super._indexBuffer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->super._indexBuffer;
    v11 = objc_msgSend_data(v8, v9, v10);
    objc_msgSend_appendString_(v3, v12, @"[ ");
    if (self->super._indexCount)
    {
      v14 = 0;
      do
      {
        objc_msgSend_appendFormat_(v3, v13, @" (%d), ", *(v11 + 4 * v14++));
      }

      while (v14 < self->super._indexCount);
    }

    objc_msgSend_appendString_(v3, v13, @"]\n");
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  objc_msgSend_encodeObject_forKey_(v13, v4, self->super._allocator, @"allocator");
  allocator = self->super._allocator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_encodeMeshBuffer_withCoder_forKey_(self->super._allocator, v6, self->super._indexBuffer, v13, @"indexBuffer");
  }

  v7 = self->super._allocator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_encodeMaterialWithCoder_allocator_(self->super._material, v8, v13, self->super._allocator);
  }

  objc_msgSend_encodeTopologyWithCoder_allocator_(self->super._topology, v8, v13, self->super._allocator);
  objc_msgSend_encodeObject_forKey_(v13, v9, self->super._name, @"name");
  objc_msgSend_encodeInteger_forKey_(v13, v10, self->super._indexCount, @"indexCount");
  objc_msgSend_encodeInteger_forKey_(v13, v11, self->super._indexType, @"indexType");
  objc_msgSend_encodeInteger_forKey_(v13, v12, self->super._geometryType, @"geometryType");
}

- (MDLSubmeshProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"allocator");
  allocator = self->super._allocator;
  self->super._allocator = v7;

  v9 = self->super._allocator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(self->super._allocator, v10, v4, @"indexBuffer");
    indexBuffer = self->super._indexBuffer;
    self->super._indexBuffer = v11;
  }

  v13 = self->super._allocator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_msgSend_decodeMaterialWithCoder_allocator_(MDLMaterial, v14, v4, self->super._allocator);
    material = self->super._material;
    self->super._material = v15;
  }

  v17 = objc_msgSend_decodeTopologyWithCoder_allocator_(MDLSubmeshTopology, v14, v4, self->super._allocator);
  topology = self->super._topology;
  self->super._topology = v17;

  v19 = objc_opt_class();
  v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"name");
  name = self->super._name;
  self->super._name = v21;

  self->super._indexCount = objc_msgSend_decodeIntegerForKey_(v4, v23, @"indexCount");
  self->super._indexType = objc_msgSend_decodeIntegerForKey_(v4, v24, @"indexType");
  self->super._geometryType = objc_msgSend_decodeIntegerForKey_(v4, v25, @"geometryType");

  return self;
}

@end