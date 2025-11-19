@interface MPSSVGFDefaultTextureAllocator
- (MPSSVGFDefaultTextureAllocator)initWithDevice:(id)device;
- (id)textureWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width height:(NSUInteger)height;
- (void)dealloc;
- (void)returnTexture:(id)texture;
@end

@implementation MPSSVGFDefaultTextureAllocator

- (MPSSVGFDefaultTextureAllocator)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSSVGFDefaultTextureAllocator;
  v4 = [(MPSSVGFDefaultTextureAllocator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_device = device;
    v4->_textures = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5->_allocatedTextureCount = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSSVGFDefaultTextureAllocator;
  [(MPSSVGFDefaultTextureAllocator *)&v3 dealloc];
}

- (id)textureWithPixelFormat:(MTLPixelFormat)pixelFormat width:(NSUInteger)width height:(NSUInteger)height
{
  v54 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  textures = self->_textures;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, a2, &v49, v53, 16);
  if (v10)
  {
    v15 = v10;
    v16 = *v50;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v50 != v16)
      {
        objc_enumerationMutation(textures);
      }

      v18 = *(*(&v49 + 1) + 8 * v17);
      if (objc_msgSend_width(v18, v11, v12, v13, v14) == width && objc_msgSend_height(v18, v11, v12, v13, v14) == height && objc_msgSend_pixelFormat(v18, v11, v12, v13, v14) == pixelFormat)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(textures, v11, &v49, v53, 16);
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v18;
    objc_msgSend_removeObject_(self->_textures, v20, v18, v21, v22);
    v23 = v18;
  }

  else
  {
LABEL_14:
    v24 = objc_alloc_init(MEMORY[0x277CD7058]);
    objc_msgSend_setWidth_(v24, v25, width, v26, v27);
    objc_msgSend_setHeight_(v24, v28, height, v29, v30);
    objc_msgSend_setTextureType_(v24, v31, 2, v32, v33);
    objc_msgSend_setPixelFormat_(v24, v34, pixelFormat, v35, v36);
    objc_msgSend_setUsage_(v24, v37, 7, v38, v39);
    objc_msgSend_setStorageMode_(v24, v40, 2, v41, v42);
    device = self->_device;
    ++self->_allocatedTextureCount;
    v23 = objc_msgSend_newTextureWithDescriptor_(device, v44, v24, v45, v46);
  }

  result = v23;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)returnTexture:(id)texture
{
  objc_msgSend_indexOfObject_(self->_textures, a2, texture, v3, v4);
  if (objc_msgSend_indexOfObject_(self->_textures, v7, texture, v8, v9) != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_239E21D3C();
  }

  textures = self->_textures;

  objc_msgSend_addObject_(textures, v10, texture, v11, v12);
}

@end