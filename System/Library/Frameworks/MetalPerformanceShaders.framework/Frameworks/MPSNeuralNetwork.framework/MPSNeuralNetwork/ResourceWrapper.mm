@interface ResourceWrapper
+ (id)wrapperWithResource:(void *)resource;
- (ResourceWrapper)initWithCoder:(id)coder;
- (ResourceWrapper)initWithResource:(void *)resource;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ResourceWrapper

+ (id)wrapperWithResource:(void *)resource
{
  v4 = [ResourceWrapper alloc];
  v11 = objc_msgSend_initWithResource_(v4, v5, resource, v6, v7, v8, v9, v10);

  return v11;
}

- (ResourceWrapper)initWithResource:(void *)resource
{
  v5.receiver = self;
  v5.super_class = ResourceWrapper;
  result = [(ResourceWrapper *)&v5 init];
  if (result)
  {
    result->_node = resource;
  }

  return result;
}

- (ResourceWrapper)initWithCoder:(id)coder
{
  v27.receiver = self;
  v27.super_class = ResourceWrapper;
  v9 = [(ResourceWrapper *)&v27 init];
  if (v9)
  {
    v26 = 0;
    if (objc_msgSend_decodeBytesForKey_returnedLength_(coder, v4, @"ResourceWrapper.d", &v26, v5, v6, v7, v8))
    {
      v10 = objc_opt_class();
      v16 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v11, v10, @"ResourceWrapper.hc", v12, v13, v14, v15);
      if (v16)
      {
        v17 = NSClassFromString(v16);
        if (v17)
        {
          v24 = v17;
          if (!&unk_284D1B368 || objc_msgSend_conformsToProtocol_(v17, v18, &unk_284D1B368, v19, v20, v21, v22, v23))
          {
            objc_msgSend_decodeObjectOfClass_forKey_(coder, v18, v24, @"ResourceWrapper.h", v20, v21, v22, v23);
          }
        }
      }

      operator new();
    }

    return 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  node = self->_node;
  v6 = node[2];
  v7 = 2 * v6 + 14;
  v8 = malloc_type_malloc(v7, 0x100004018756113uLL);
  v13 = v8;
  if (v8)
  {
    *v8 = 256;
    v8[5] = bswap32(*(node + 44)) >> 16;
    v8[1] = bswap32(*(node + 32)) >> 16;
    v8[2] = bswap32(*(node + 36)) >> 16;
    v8[3] = *(node + 80) << 8;
    v14 = node[4];
    if (v14)
    {
      v15 = *(v14 + 120);
    }

    else
    {
      v15 = 0xFFFF;
    }

    v8[4] = bswap32(v15) >> 16;
    v8[6] = bswap32(*(node + 8)) >> 16;
    if (v6)
    {
      v16 = node[1];
      v17 = v8 + 7;
      do
      {
        while (*v16)
        {
          *v17++ = bswap32(*(*v16 + 120)) >> 16;
          v16 += 8;
          if (!--v6)
          {
            goto LABEL_11;
          }
        }

        *v17++ = -1;
        v16 += 8;
        --v6;
      }

      while (v6);
    }

LABEL_11:
    objc_msgSend_encodeBytes_length_forKey_(coder, v9, v8, v7, @"ResourceWrapper.d", v10, v11, v12);
  }

  else
  {
    objc_msgSend_encodeBytes_length_forKey_(coder, v9, 0, 0, @"ResourceWrapper.d", v10, v11, v12);
  }

  v18 = *self->_node;
  if (v18)
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    objc_msgSend_encodeObject_forKey_(coder, v21, v20, @"ResourceWrapper.hc", v22, v23, v24, v25);
    objc_msgSend_encodeObject_forKey_(coder, v26, v18, @"ResourceWrapper.h", v27, v28, v29, v30);
  }

  free(v13);
}

@end