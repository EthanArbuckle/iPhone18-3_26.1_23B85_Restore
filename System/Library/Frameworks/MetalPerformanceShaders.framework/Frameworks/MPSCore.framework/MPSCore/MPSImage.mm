@interface MPSImage
+ (id)defaultAllocator;
- (BOOL)isEqual:(id)equal;
- (MPSImage)init;
- (MPSImage)initWithDescriptor:(id)descriptor featureChannels:(unint64_t)channels featureChannelsLayout:(unint64_t)layout featureChannelFormat:(unint64_t)format onDevice:(id)device;
- (MPSImage)initWithDevice:(id)device imageDescriptor:(const MPSImageDescriptor *)imageDescriptor;
- (MPSImage)initWithParentImage:(MPSImage *)parent sliceRange:(NSRange)sliceRange featureChannels:(NSUInteger)featureChannels;
- (MPSImage)initWithTexture:(id)texture featureChannels:(NSUInteger)featureChannels;
- (MPSImage)initWithTexture:(id)texture featureChannels:(unint64_t)channels featureChannelsLayout:(unint64_t)layout;
- (MPSImage)subImageWithFeatureChannelRange:(NSRange)range;
- (MPSImageBatch)batchRepresentation;
- (MPSImageBatch)batchRepresentationWithSubRange:(NSRange)subRange;
- (MPSPurgeableState)setPurgeableState:(MPSPurgeableState)state;
- (MTLTextureType)textureType;
- (MTLTextureUsage)usage;
- (NSUInteger)resourceSize;
- (id).cxx_construct;
- (id)debugDescription;
- (id)debugQuickLookObject;
- (id)texture;
- (unint64_t)getPixelChannelSize;
- (void)dealloc;
- (void)readBytes:(void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow bytesPerImage:(NSUInteger)bytesPerImage region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex;
- (void)readBytes:(void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex;
- (void)readBytes:(void *)dataBytes dataLayout:(MPSDataLayout)dataLayout imageIndex:(NSUInteger)imageIndex;
- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerColumn:(NSUInteger)bytesPerColumn bytesPerRow:(NSUInteger)bytesPerRow bytesPerImage:(NSUInteger)bytesPerImage region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex;
- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow bytesPerImage:(NSUInteger)bytesPerImage region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex;
- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex;
- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout imageIndex:(NSUInteger)imageIndex;
@end

@implementation MPSImage

+ (id)defaultAllocator
{
  result = atomic_load_explicit(&qword_27DA622B0, memory_order_acquire);
  if (!result)
  {
    result = objc_alloc_init(MPSImageDefaultAllocator);
    v3 = 0;
    atomic_compare_exchange_strong_explicit(&qword_27DA622B0, &v3, result, memory_order_release, memory_order_relaxed);
    if (v3)
    {
      *(result + 2) = 1;

      return atomic_load_explicit(&qword_27DA622B0, memory_order_acquire);
    }
  }

  return result;
}

- (id)texture
{
  p_texture = &self->_texture;
  result = atomic_load_explicit(&self->_texture, memory_order_acquire);
  if (!result)
  {
    MPSAutoTexture::AllocateTexture(p_texture, 0);
    return atomic_load_explicit(p_texture, memory_order_acquire);
  }

  return result;
}

- (MTLTextureType)textureType
{
  explicit = atomic_load_explicit(&self->_texture, memory_order_acquire);
  if ((self->_texture._type & 2) != 0)
  {
    if (self->_texture.var0._subTex.subRangeSize < 2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (explicit)
  {
    return objc_msgSend_textureType(explicit, a2, v2, v3, v4);
  }

  else
  {
    return objc_msgSend_textureType(self->_texture.var0._subTex.parent, a2, v2, v3, v4);
  }
}

- (MTLTextureUsage)usage
{
  p_texture = &self->_texture;
  explicit = atomic_load_explicit(&self->_texture, memory_order_acquire);
  if ((self->_texture._type & 2) != 0)
  {
    do
    {
      p_texture = p_texture->var0._subTex.parent;
      explicit = atomic_load_explicit(p_texture, memory_order_acquire);
    }

    while ((p_texture->_type & 2) != 0);
  }

  if (!explicit)
  {
    explicit = p_texture->var0._subTex.parent;
  }

  return objc_msgSend_usage(explicit, a2, v2, v3, v4);
}

- (MPSPurgeableState)setPurgeableState:(MPSPurgeableState)state
{
  result = atomic_load_explicit(&self->_texture, memory_order_acquire);
  if (result)
  {
    return objc_msgSend_setPurgeableState_(result, a2, state, v3, v4);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImage;
  [(MPSImage *)&v3 dealloc];
}

- (MPSImage)init
{
  if (MTLReportFailureTypeEnabled())
  {
    v3 = objc_opt_class();
    NSStringFromClass(v3);
    MTLReportFailure();
  }

  return 0;
}

- (MPSImage)initWithDescriptor:(id)descriptor featureChannels:(unint64_t)channels featureChannelsLayout:(unint64_t)layout featureChannelFormat:(unint64_t)format onDevice:(id)device
{
  v63.receiver = self;
  v63.super_class = MPSImage;
  v12 = [(MPSImage *)&v63 init];
  if (!v12)
  {
    return v12;
  }

  if (!descriptor)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_10;
    }

LABEL_13:
    v62 = objc_opt_class();
    NSStringFromClass(v62);
    MTLReportFailure();
    goto LABEL_10;
  }

  if (!device)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  MPSDevice = MPSDevice::GetMPSDevice(device);
  if (!MPSDevice)
  {
    goto LABEL_10;
  }

  v12->_device = MPSDevice;
  v12->_featureChannelsLayout = layout;
  v12->_height = objc_msgSend_height(descriptor, v14, v15, v16, v17);
  v12->_featureChannels = channels;
  v12->_textureType = objc_msgSend_textureType(descriptor, v18, v19, v20, v21);
  v12->_label = 0;
  device = v12->_device;
  v27 = objc_msgSend_pixelFormat(descriptor, v23, v24, v25, v26);
  PixelInfo = MPSDevice::GetPixelInfo(device, v27, format);
  v12->_pixelInfo = PixelInfo;
  v12->_featureChannelFormat = (PixelInfo >> 59) & 7;
  v12->_updatedAlready = 0;
  v33 = (channels + 3) >> 2;
  if (layout)
  {
    objc_msgSend_arrayLength(descriptor, v29, v30, v31, v32);
    if (objc_msgSend_arrayLength(descriptor, v34, v35, v36, v37) % v33)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_10;
    }

    v12->_width = objc_msgSend_width(descriptor, v38, v39, v40, v41);
    v46 = objc_msgSend_arrayLength(descriptor, v42, v43, v44, v45) / v33;
  }

  else
  {
    v12->_width = objc_msgSend_width(descriptor, v29, v30, v31, v32) / v33;
    v46 = objc_msgSend_arrayLength(descriptor, v51, v52, v53, v54);
  }

  v12->_numberOfImages = v46;
  v55 = objc_msgSend_pixelFormat(descriptor, v47, v48, v49, v50);
  v60 = objc_msgSend_usage(descriptor, v56, v57, v58, v59);
  if (sub_22E35F698(v55, v60, channels, v12->_device, v12))
  {
LABEL_10:

    return 0;
  }

  return v12;
}

- (MPSImage)initWithTexture:(id)texture featureChannels:(NSUInteger)featureChannels
{
  v8 = objc_msgSend_device(texture, a2, texture, featureChannels, v4);
  MPSDevice = MPSDevice::GetMPSDevice(v8);
  if (!MPSDevice)
  {
    goto LABEL_15;
  }

  self->_device = MPSDevice;
  v14 = MPSDevice;
  v15 = objc_msgSend_pixelFormat(texture, v10, v11, v12, v13);
  v16 = (MPSDevice::GetPixelInfo(v14, v15, MPSImageFeatureChannelFormatNone) >> 24) & 0xF;
  if (!v16)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      objc_msgSend_pixelFormat(texture, v19, v20, v21, v22);
      MTLPixelFormatGetName();
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (featureChannels > 2)
  {
    if (featureChannels <= 4 && v16 != 4)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_15;
      }

      goto LABEL_6;
    }
  }

  else if (v16 != featureChannels)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_6:
      v17 = objc_opt_class();
      NSStringFromClass(v17);
LABEL_14:
      MTLReportFailure();
    }

LABEL_15:

    return 0;
  }

  return MEMORY[0x2821F9670](self, sel_initWithTexture_featureChannels_featureChannelsLayout_, texture, featureChannels, 1);
}

- (MPSImage)initWithTexture:(id)texture featureChannels:(unint64_t)channels featureChannelsLayout:(unint64_t)layout
{
  v77.receiver = self;
  v77.super_class = MPSImage;
  v12 = [(MPSImage *)&v77 init];
  if (!v12)
  {
    return v12;
  }

  if (!texture)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_14;
    }

LABEL_19:
    v76 = objc_opt_class();
    NSStringFromClass(v76);
    MTLReportFailure();
    goto LABEL_14;
  }

  v13 = objc_msgSend_device(texture, v8, v9, v10, v11);
  if (!v13)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  MPSDevice = MPSDevice::GetMPSDevice(v13);
  if (!MPSDevice)
  {
LABEL_14:

    return 0;
  }

  v12[1] = MPSDevice;
  v12[5] = layout;
  v12[3] = objc_msgSend_height(texture, v15, v16, v17, v18);
  v12[4] = channels;
  v12[8] = objc_msgSend_textureType(texture, v19, v20, v21, v22);
  v12[9] = 0;
  *(v12 + 160) = 0;
  v23 = (channels + 3) >> 2;
  v28 = objc_msgSend_width(texture, v24, v25, v26, v27);
  if (layout)
  {
    v12[2] = v28;
    v12[7] = objc_msgSend_arrayLength(texture, v29, v30, v31, v32) / v23;
    objc_msgSend_arrayLength(texture, v33, v34, v35, v36);
    if (objc_msgSend_arrayLength(texture, v37, v38, v39, v40) % v23)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_14;
    }
  }

  else
  {
    v12[2] = v28 / v23;
    v12[7] = objc_msgSend_arrayLength(texture, v29, v30, v31, v32);
  }

  atomic_store(texture, v12 + 12);
  *(v12 + 152) = 4;
  if (objc_msgSend_buffer(texture, v41, v42, v43, v44))
  {
    *(v12 + 153) = 0;
    v49 = objc_msgSend_device(texture, v45, v46, v47, v48);
    v50 = MPSDevice::GetMPSDevice(v49);
    if (!v50)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *(v12 + 153) = objc_msgSend_iosurface(texture, v45, v46, v47, v48) == 0;
  v75 = objc_msgSend_device(texture, v71, v72, v73, v74);
  v50 = MPSDevice::GetMPSDevice(v75);
  if (v50)
  {
LABEL_12:
    v55 = v50;
    v56 = objc_msgSend_pixelFormat(texture, v51, v52, v53, v54);
    v12[16] = MPSDevice::GetPixelInfo(v55, v56, MPSImageFeatureChannelFormatNone);
  }

LABEL_13:
  v57 = v12[1];
  v58 = objc_msgSend_pixelFormat(texture, v51, v52, v53, v54);
  PixelInfo = MPSDevice::GetPixelInfo(v57, v58, MPSImageFeatureChannelFormatNone);
  v12[10] = PixelInfo;
  v12[6] = (PixelInfo >> 59) & 7;
  v64 = objc_msgSend_pixelFormat(texture, v60, v61, v62, v63);
  v69 = objc_msgSend_usage(texture, v65, v66, v67, v68);
  if (sub_22E35F698(v64, v69, channels, v12[1], v12))
  {
    goto LABEL_14;
  }

  return v12;
}

- (MPSImage)initWithDevice:(id)device imageDescriptor:(const MPSImageDescriptor *)imageDescriptor
{
  if (!imageDescriptor)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!imageDescriptor->_width)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!imageDescriptor->_height)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!imageDescriptor->_featureChannels)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!imageDescriptor->_numberOfImages)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (!imageDescriptor->_channelFormat)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_24:
      v34 = objc_opt_class();
      NSStringFromClass(v34);
      MTLReportFailure();
    }

LABEL_25:

    return 0;
  }

  MPSDevice = MPSDevice::GetMPSDevice(device);
  if (!MPSDevice)
  {
    goto LABEL_25;
  }

  v12 = MPSDevice;
  v13 = objc_msgSend_newTextureDescriptor(imageDescriptor, v8, v9, v10, v11);
  if (!v13)
  {
    goto LABEL_25;
  }

  v15 = v13;
  v16 = objc_msgSend_initWithDescriptor_featureChannels_featureChannelsLayout_featureChannelFormat_onDevice_(self, v14, v13, imageDescriptor->_featureChannels, imageDescriptor->_featureChannelsLayout, imageDescriptor->_featureChannelFormat, device);
  *(v16 + 48) = imageDescriptor->_channelFormat;
  v17 = *(v16 + 8);
  v22 = objc_msgSend_pixelFormat(v15, v18, v19, v20, v21);
  *(v16 + 80) = MPSDevice::GetPixelInfo(v17, v22, *(v16 + 48));
  v27 = (*(*(v16 + 8) + 1477) & 4) == 0 || objc_msgSend_textureType(v15, v23, v24, v25, v26) != 2;
  channelFormat = imageDescriptor->_channelFormat;
  *(v16 + 152) = 4;
  *(v16 + 144) = v12;
  *(v16 + 136) = v15;
  *(v16 + 153) = v27;
  *(v16 + 104) = xmmword_22E37B630;
  v33 = objc_msgSend_pixelFormat(v15, v29, v30, v31, v32);
  *(v16 + 128) = MPSDevice::GetPixelInfo(v12, v33, channelFormat);

  return v16;
}

- (MPSImage)initWithParentImage:(MPSImage *)parent sliceRange:(NSRange)sliceRange featureChannels:(NSUInteger)featureChannels
{
  length = sliceRange.length;
  location = sliceRange.location;
  v10 = objc_opt_class();
  objc_msgSend_isMemberOfClass_(self, v11, v10, v12, v13);
  v14 = objc_opt_class();
  if ((objc_msgSend_isMemberOfClass_(self, v15, v14, v16, v17) & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (parent->_featureChannelsLayout != 1)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (!featureChannels)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v18 = (featureChannels + 3) >> 2;
  v19 = length / v18;
  if (length / v18 * v18 != length)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((parent->_texture._type & 1) != 0 && !parent[1].super.isa)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_36:
      v45 = objc_opt_class();
      NSStringFromClass(v45);
      MTLReportFailure();
    }

LABEL_37:

    return 0;
  }

  v46.receiver = self;
  v46.super_class = MPSImage;
  v20 = [(MPSImage *)&v46 init];
  v25 = v20;
  if (!v20)
  {
    return v25;
  }

  v26 = v20 + 96;
  v20[152] = parent->_texture._type & 1 | 2;
  *(v20 + 17) = &parent->_texture;
  *(v20 + 36) = location;
  *(v20 + 37) = length;
  v20[153] = parent->_texture._twiddled;
  *(v20 + 16) = parent->_texture._pixelInfo;
  *(v20 + 1) = parent->_device;
  atomic_load_explicit(v20 + 12, memory_order_acquire);
  v27 = v20 + 96;
  do
  {
    v27 = *(v27 + 5);
    explicit = atomic_load_explicit(v27, memory_order_acquire);
  }

  while ((v27[56] & 2) != 0);
  if (explicit)
  {
    *(v25 + 2) = objc_msgSend_width(explicit, v21, v22, v23, v24);
    v33 = atomic_load_explicit(v25 + 12, memory_order_acquire);
    if ((v25[152] & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(v25 + 2) = objc_msgSend_width(*(v27 + 5), v21, v22, v23, v24);
    v33 = atomic_load_explicit(v25 + 12, memory_order_acquire);
    if ((v25[152] & 2) != 0)
    {
      do
      {
LABEL_12:
        v26 = *(v26 + 5);
        v33 = atomic_load_explicit(v26, memory_order_acquire);
      }

      while ((v26[56] & 2) != 0);
    }
  }

  if (!v33)
  {
    v33 = *(v26 + 5);
  }

  *(v25 + 3) = objc_msgSend_height(v33, v29, v30, v31, v32);
  *(v25 + 4) = featureChannels;
  *(v25 + 40) = *&parent->_featureChannelsLayout;
  *(v25 + 7) = v19;
  v38 = atomic_load_explicit(v25 + 12, memory_order_acquire);
  if ((v25[152] & 2) != 0)
  {
    if (*(v25 + 37) < 2u)
    {
      v39 = 2;
    }

    else
    {
      v39 = 3;
    }
  }

  else
  {
    if (!v38)
    {
      v38 = *(v25 + 17);
    }

    v39 = objc_msgSend_textureType(v38, v34, v35, v36, v37);
  }

  *(v25 + 8) = v39;
  *(v25 + 10) = parent->_pixelInfo;
  *(v25 + 11) = parent;
  *(v25 + 9) = 0;
  v25[160] = 0;
  if (parent->_label)
  {
    v40 = objc_alloc(MEMORY[0x277CCACA8]);
    *(v25 + 9) = objc_msgSend_initWithFormat_(v40, v41, @"sub-image of %p %@", v42, v43, parent, parent->_label);
  }

  return v25;
}

- (MPSImage)subImageWithFeatureChannelRange:(NSRange)range
{
  if ((range.location & 3) != 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_41;
    }

LABEL_40:
    v29 = objc_opt_class();
    NSStringFromClass(v29);
    MTLReportFailure();
    goto LABEL_41;
  }

  length = range.length;
  if ((range.length & 3) != 0)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  location = range.location;
  objc_msgSend_numberOfImages(self, a2, range.location, range.length, v3);
  if (objc_msgSend_numberOfImages(self, v7, v8, v9, v10) != 1)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (location >= self->_featureChannels)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v15 = location >> 2;
  explicit = atomic_load_explicit(&self->_texture, memory_order_acquire);
  if ((self->_texture._type & 2) != 0)
  {
    subRangeSize = self->_texture.var0._subTex.subRangeSize;
  }

  else
  {
    if (!explicit)
    {
      explicit = self->_texture.var0._subTex.parent;
    }

    subRangeSize = objc_msgSend_arrayLength(explicit, v11, v12, v13, v14);
  }

  if (subRangeSize <= v15)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (length >> 2 >= subRangeSize - v15)
  {
    v18 = subRangeSize - v15;
  }

  else
  {
    v18 = length >> 2;
  }

  if (!v18)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (location || v18 != subRangeSize)
  {
    featureChannels = self->_featureChannels;
    v22 = featureChannels > location;
    v23 = featureChannels - location;
    if (v22)
    {
      if (4 * v18 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 4 * v18;
      }

      v25 = objc_alloc(objc_opt_class());
      selfCopy2 = objc_msgSend_initWithParentImage_sliceRange_featureChannels_(v25, v26, self, v15, v18, v24);
      goto LABEL_24;
    }

    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_40;
    }

LABEL_41:

    return 0;
  }

  selfCopy = self;
  selfCopy2 = self;
LABEL_24:

  return selfCopy2;
}

- (MPSImageBatch)batchRepresentation
{
  numberOfImages = self->_numberOfImages;
  if (numberOfImages == 1)
  {
    return (MEMORY[0x2821F9670])(MEMORY[0x277CBEA60], sel_arrayWithObject_, self, 1);
  }

  else
  {
    return (MEMORY[0x2821F9670])(self, sel_batchRepresentationWithSubRange_, 0, numberOfImages);
  }
}

- (MPSImageBatch)batchRepresentationWithSubRange:(NSRange)subRange
{
  if (subRange.location >= self->_numberOfImages)
  {
    location = subRange.location;
    length = subRange.length;
    v23 = MTLReportFailureTypeEnabled();
    subRange.length = length;
    subRange.location = location;
    if (v23)
    {
      v24 = objc_opt_class();
      NSStringFromClass(v24);
      MTLReportFailure();
      subRange.length = length;
      subRange.location = location;
    }
  }

  numberOfImages = self->_numberOfImages;
  if (numberOfImages <= subRange.location)
  {
    return 0;
  }

  if (subRange.length >= numberOfImages - subRange.location)
  {
    v6 = numberOfImages - subRange.location;
  }

  else
  {
    v6 = subRange.length;
  }

  if (numberOfImages != 1 || subRange.location != 0 || v6 != 1)
  {
    if (self->_featureChannelsLayout)
    {
      v9 = subRange.location;
      v10 = (self->_featureChannels + 3) >> 2;
      v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, v6, subRange.length, v3);
      if (!v11)
      {
        return v11;
      }
    }

    else
    {
      v9 = subRange.location;
      v10 = 1;
      v11 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, v6, subRange.length, v3);
      if (!v11)
      {
        return v11;
      }
    }

    if (v6)
    {
      v13 = 0;
      v14 = v10 * v9;
      while (1)
      {
        v15 = objc_alloc(objc_opt_class());
        v17 = objc_msgSend_initWithParentImage_sliceRange_featureChannels_(v15, v16, self, v14, v10, self->_featureChannels);
        if (!v17)
        {
          break;
        }

        v20 = v17;
        v14 += v10;
        objc_msgSend_setObject_atIndexedSubscript_(v11, v18, v17, v13, v19);

        if (v6 == ++v13)
        {
          return v11;
        }
      }

      return 0;
    }

    return v11;
  }

  v12 = MEMORY[0x277CBEA60];

  return MEMORY[0x2821F9670](v12, sel_arrayWithObject_, self, subRange.length, v3);
}

- (id)debugDescription
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  p_texture = &self->_texture;
  MTLPixelFormatGetInfoForDevice();
  v4 = (*&self->_texture._pixelInfo >> 59) & 7;
  if (v4 <= 5)
  {
    v5 = off_2787BF620[v4];
  }

  else
  {
    v5 = "<invalid format";
  }

  v27 = v5;
  v28 = MEMORY[0x277CCACA8];
  v29.receiver = self;
  v29.super_class = MPSImage;
  v6 = [(MPSImage *)&v29 debugDescription];
  label = self->_label;
  device = self->_device;
  v13 = objc_msgSend_name(device[2], v9, v10, v11, v12);
  width = self->_width;
  height = self->_height;
  featureChannels = self->_featureChannels;
  numberOfImages = self->_numberOfImages;
  v21 = v30;
  parent = self->_parent;
  explicit = atomic_load_explicit(p_texture, memory_order_acquire);
  if (explicit)
  {
    explicit = atomic_load_explicit(p_texture, memory_order_acquire);
    if (!explicit)
    {
      v26 = v13;
      MPSAutoTexture::AllocateTexture(p_texture, 0);
      v13 = v26;
      explicit = atomic_load_explicit(p_texture, memory_order_acquire);
    }
  }

  v24 = &stru_28421E100;
  if (label)
  {
    v24 = label;
  }

  return objc_msgSend_stringWithFormat_(v28, v14, @"%@ %@\n\tdevice: %p %@\n\twidth: %lu\n\theight: %lu\n\tfeatureChannelsPerImage: %lu\n\tnumberOfImages: %lu\n\tMTLPixelFormat: %s\n\tfeature channel format: %s\n\tparent:  %p\n\ttexture: %p\n", v15, v16, v6, v24, device, v13, width, height, featureChannels, numberOfImages, v21, v27, parent, explicit);
}

- (id)debugQuickLookObject
{
  if (self->_texture._type)
  {
    v6 = MEMORY[0x277CCACA8];
    v69 = objc_msgSend_debugDescription(self, a2, v2, v3, v4);
    v10 = @"<Err: temporary images are unavailable for display. Contents are usually heavily aliased.>\n\t%@\n";
    return objc_msgSend_stringWithFormat_(v6, v7, v10, v8, v9, v69, v71, v72, v73, v74);
  }

  p_texture = &self->_texture;
  if (!atomic_load_explicit(&self->_texture, memory_order_acquire))
  {
    v6 = MEMORY[0x277CCACA8];
    v69 = objc_msgSend_debugDescription(self, a2, v2, v3, v4);
    v10 = @"<Err: texture backing store has not been materialized yet. Nothing to see here...>\n\t%@\n";
    return objc_msgSend_stringWithFormat_(v6, v7, v10, v8, v9, v69, v71, v72, v73, v74);
  }

  if (self->_featureChannelFormat == 5)
  {
    v6 = MEMORY[0x277CCACA8];
    v69 = objc_msgSend_debugDescription(self, a2, v2, v3, v4);
    v10 = @"<Err: can't display bfloat16 images>\n\t%@\n";
    return objc_msgSend_stringWithFormat_(v6, v7, v10, v8, v9, v69, v71, v72, v73, v74);
  }

  selfCopy = self;
  if (qword_280AFEC50 == -1)
  {
    v13 = off_280AFEC28;
    if (!off_280AFEC28)
    {
      goto LABEL_72;
    }
  }

  else
  {
    dispatch_once(&qword_280AFEC50, &unk_2842174C0);
    self = selfCopy;
    v13 = off_280AFEC28;
    if (!off_280AFEC28)
    {
      goto LABEL_72;
    }
  }

  if (!off_280AFEC30 || !off_280AFEC38 || !off_280AFEC40 || !off_280AFEC48)
  {
    goto LABEL_72;
  }

  pixelInfo = self->_pixelInfo;
  v15 = *&self->_texture._pixelInfo & 0x3FFLL;
  if (*(&pixelInfo + 4) > 0xFu)
  {
    if (*(&pixelInfo + 4) == 16)
    {
      v16 = 4096;
    }

    else
    {
      if (*(&pixelInfo + 4) != 32)
      {
        goto LABEL_72;
      }

      v16 = 8448;
    }

LABEL_24:
    v17 = *&self->_pixelInfo & 0xF0000000;
    if ((*&pixelInfo & 0xF0000000) != 0)
    {
      if ((*&self->_pixelInfo & 0xF000000) == 0x3000000 || self->_featureChannels == 3)
      {
        if (v15 == 80)
        {
          v18 = 6;
        }

        else
        {
          v18 = 5;
        }
      }

      else
      {
        v18 = 3;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 | v16;
    *&v83[4] = 0;
    v20 = (*&pixelInfo >> 7) & 0x1F8;
    if ((*&pixelInfo & 0xE000000) != 0)
    {
      v21 = HIBYTE(*&pixelInfo) & 0xF;
    }

    else
    {
      v21 = 1;
    }

    v79[0] = v20 / v21;
    v79[1] = v20;
    if (v17)
    {
      v22 = 0;
    }

    else
    {
      v22 = (off_280AFEC48)();
      self = selfCopy;
      v13 = off_280AFEC28;
    }

    v80 = v22;
    v81 = v19;
    *v83 = 0;
    v82 = 0;
    explicit = atomic_load_explicit(&self->_texture, memory_order_acquire);
    if ((self->_texture._type & 2) != 0)
    {
      parent = p_texture;
      do
      {
        parent = parent->var0._subTex.parent;
        explicit = atomic_load_explicit(parent, memory_order_acquire);
      }

      while ((parent->_type & 2) != 0);
    }

    else
    {
      parent = p_texture;
    }

    if (explicit)
    {
      v29 = objc_msgSend_height(explicit, a2, v2, v3, v4);
      v30 = atomic_load_explicit(&selfCopy->_texture, memory_order_acquire);
      if ((selfCopy->_texture._type & 2) == 0)
      {
LABEL_44:
        v31 = p_texture;
        goto LABEL_48;
      }
    }

    else
    {
      v29 = objc_msgSend_height(parent->var0._subTex.parent, a2, v2, v3, v4);
      v30 = atomic_load_explicit(&selfCopy->_texture, memory_order_acquire);
      if ((selfCopy->_texture._type & 2) == 0)
      {
        goto LABEL_44;
      }
    }

    v31 = p_texture;
    do
    {
      v31 = v31->var0._subTex.parent;
      v30 = atomic_load_explicit(v31, memory_order_acquire);
    }

    while ((v31->_type & 2) != 0);
LABEL_48:
    if (!v30)
    {
      v30 = v31->var0._subTex.parent;
    }

    v32 = objc_msgSend_width(v30, v25, v26, v27, v28);
    v13(v77, v29, v32, v20, 0);
    if (!v77[0])
    {
      return objc_msgSend_debugDescription(selfCopy, v33, v34, v35, v36);
    }

    v37 = atomic_load_explicit(&selfCopy->_texture, memory_order_acquire);
    if ((selfCopy->_texture._type & 2) != 0)
    {
      if (selfCopy->_texture.var0._subTex.subRangeSize >= 2)
      {
LABEL_55:
        v38 = atomic_load_explicit(p_texture, memory_order_acquire);
        if (!v38)
        {
          MPSAutoTexture::AllocateTexture(p_texture, 0);
          v38 = atomic_load_explicit(p_texture, memory_order_acquire);
        }

        v39 = v78;
        v40 = v77[0];
        v41 = v77[1] * v78;
        v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = sub_22E360548(p_texture, v33, v34, v35, v36);
        v75 = sub_22E360578(p_texture, v42, v43, v44, v45);
        v76 = 1;
        objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v38, v46, v40, v39, v41, &v71, 0, 0);
LABEL_63:
        v55 = off_280AFEC30(v77, v79, 0, 0, 0, 0);
        free(v77[0]);
        if (v80)
        {
          off_280AFEC38();
        }

        if (v55)
        {
          v60 = NSClassFromString(&cfstr_Uiimage.isa);
          if (v60)
          {
            v64 = objc_msgSend_imageWithCGImage_(v60, v61, v55, v62, v63);
          }

          else
          {
            v64 = 0;
          }

          off_280AFEC40(v55);
          return v64;
        }

        else
        {
          v65 = MEMORY[0x277CCACA8];
          v70 = objc_msgSend_debugDescription(selfCopy, v56, v57, v58, v59);
          return objc_msgSend_stringWithFormat_(v65, v66, @"<Err: unable to transcode texture to CGImage>\n\t%@\n", v67, v68, v70, v71, v72, v73, v74);
        }
      }
    }

    else
    {
      if (!v37)
      {
        v37 = selfCopy->_texture.var0._subTex.parent;
      }

      if (objc_msgSend_textureType(v37, v33, v34, v35, v36) != 2)
      {
        goto LABEL_55;
      }
    }

    v47 = atomic_load_explicit(p_texture, memory_order_acquire);
    if (!v47)
    {
      MPSAutoTexture::AllocateTexture(p_texture, 0);
      v47 = atomic_load_explicit(p_texture, memory_order_acquire);
    }

    v48 = v77[0];
    v49 = v78;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = sub_22E360548(p_texture, v33, v34, v35, v36);
    v75 = sub_22E360578(p_texture, v50, v51, v52, v53);
    v76 = 1;
    objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v47, v54, v48, v49, &v71, 0);
    goto LABEL_63;
  }

  if (*(&pixelInfo + 4) == 8)
  {
    v16 = (v15 == 80) << 13;
    goto LABEL_24;
  }

  if (*(&pixelInfo + 4) == 11)
  {
    v16 = 4352;
    goto LABEL_24;
  }

LABEL_72:

  return objc_msgSend_debugDescription(self, a2, v2, v3, v4);
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    goto LABEL_13;
  }

  if (self == equal)
  {
    LOBYTE(isEqual) = 1;
    return isEqual;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_featureChannels != *(equal + 4))
  {
    goto LABEL_13;
  }

  isEqual = objc_msgSend_isEqual_(*(self->_device + 2), v6, *(*(equal + 1) + 16), v7, v8);
  if (!isEqual)
  {
    return isEqual;
  }

  if (self->_height != *(equal + 3) || self->_width != *(equal + 2) || self->_numberOfImages != *(equal + 7) || self->_textureType != *(equal + 8))
  {
LABEL_13:
    LOBYTE(isEqual) = 0;
    return isEqual;
  }

  LOBYTE(isEqual) = sub_22E3612EC(&self->_texture, equal + 96, v10, v11, v12);
  return isEqual;
}

- (unint64_t)getPixelChannelSize
{
  objc_msgSend_pixelFormat(self, a2, v2, v3, v4);
  pixelInfo = self->_pixelInfo;
  v7 = HIBYTE(pixelInfo) & 0xF;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (self->_featureChannels != 2 && MTLReportFailureTypeEnabled())
      {
        v15 = objc_opt_class();
        NSStringFromClass(v15);
        MTLReportFailure();
      }

      v12 = *&self->_pixelInfo >> 10;
      switch(v12)
      {
        case 2:
          return 1;
        case 8:
          return 4;
        case 4:
          return 2;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return 0;
      }
    }

    else if (v7 == 4)
    {
      featureChannels = self->_featureChannels;
      if (featureChannels <= 2)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v13 = objc_opt_class();
          NSStringFromClass(v13);
          MTLReportFailure();
        }

        featureChannels = self->_featureChannels;
        if (featureChannels == 3)
        {
LABEL_12:
          v10 = *&self->_pixelInfo >> 10;
          if (v10 != 4)
          {
            if (v10 != 16)
            {
              if (v10 == 8)
              {
                return 2;
              }

              if (MTLReportFailureTypeEnabled())
              {
                goto LABEL_17;
              }

              return 0;
            }

            return 4;
          }

          return 1;
        }
      }

      else if (featureChannels == 3)
      {
        goto LABEL_12;
      }

      if (featureChannels < 4)
      {
        return 0;
      }

      v14 = *&self->_pixelInfo >> 10;
      switch(v14)
      {
        case 4:
          return 1;
        case 16:
          return 4;
        case 8:
          return 2;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        return 0;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      return 0;
    }

LABEL_17:
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    MTLReportFailure();
    return 0;
  }

  if (!v7)
  {
    if (self->_featureChannels != 1 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    return 0;
  }

  result = pixelInfo >> 10;
  if (result == 1)
  {
    return result;
  }

  if (result == 4)
  {
    return 4;
  }

  if (result != 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_17;
    }

    return 0;
  }

  return 2;
}

- (void)readBytes:(void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow bytesPerImage:(NSUInteger)bytesPerImage region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex
{
  if (!featureChannelInfo.numberOfFeatureChannelsToReadWrite)
  {
    return;
  }

  v9 = region;
  p_texture = &self->_texture;
  v318 = &self->_texture;
  if ((self->_texture._type & 2) != 0)
  {
    p_texture = &self->_texture;
    do
    {
      p_texture = p_texture->var0._subTex.parent;
    }

    while ((p_texture->_type & 2) != 0);
  }

  atomic_load_explicit(p_texture, memory_order_acquire);
  parent = &self->_texture;
  if ((self->_texture._type & 2) != 0)
  {
    parent = &self->_texture;
    do
    {
      parent = parent->var0._subTex.parent;
    }

    while ((parent->_type & 2) != 0);
  }

  v302 = dataBytes;
  if (!atomic_load_explicit(parent, memory_order_acquire) && MTLReportFailureTypeEnabled())
  {
    v264 = objc_opt_class();
    v265 = NSStringFromClass(v264);
    v284 = NSStringFromSelector(a2);
    v286 = objc_msgSend_debugDescription(self, v266, v267, v268, v269);
    v282 = v265;
    v9 = region;
    MTLReportFailure();
  }

  PixelChannelSize = objc_msgSend_getPixelChannelSize(self, a2, dataBytes, dataLayout, bytesPerRow, v282, v284, v286);
  if (PixelChannelSize <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = PixelChannelSize;
  }

  v296 = v16;
  width = v9->size.width;
  height = v9->size.height;
  if (v9->size.depth <= 1)
  {
    depth = 1;
  }

  else
  {
    depth = v9->size.depth;
  }

  if (self->_featureChannels >= 3)
  {
    featureChannels = 4;
  }

  else
  {
    featureChannels = self->_featureChannels;
  }

  v298 = v9->size.height;
  if (v9->origin.x + width > self->_width || v9->origin.y + height > self->_height)
  {
    v21 = MTLReportFailureTypeEnabled();
    height = v298;
    if (v21)
    {
      v22 = objc_opt_class();
      v283 = NSStringFromClass(v22);
      MTLReportFailure();
      height = v298;
    }
  }

  v301 = featureChannelInfo.featureChannelOffset / featureChannels;
  v23 = bytesPerRow;
  v24 = bytesPerImage;
  if (featureChannelInfo.featureChannelOffset % featureChannels)
  {
    v270 = MTLReportFailureTypeEnabled();
    v24 = bytesPerImage;
    v23 = bytesPerRow;
    height = v298;
    if (v270)
    {
      v271 = objc_opt_class();
      v283 = NSStringFromClass(v271);
      featureChannelOffset = featureChannelInfo.featureChannelOffset;
      MTLReportFailure();
      v24 = bytesPerImage;
      v23 = bytesPerRow;
      height = v298;
    }
  }

  if (imageIndex)
  {
    if (v9->origin.z)
    {
      v278 = MTLReportFailureTypeEnabled();
      v24 = bytesPerImage;
      v23 = bytesPerRow;
      height = v298;
      if (v278)
      {
        v279 = objc_opt_class();
        v283 = NSStringFromClass(v279);
        featureChannelOffset = NSStringFromSelector(a2);
        MTLReportFailure();
        v24 = bytesPerImage;
        v23 = bytesPerRow;
        height = v298;
      }
    }
  }

  v25 = v9->origin.z + imageIndex;
  v300 = v25 + depth;
  if (v25 + depth > self->_numberOfImages)
  {
    v272 = v9->origin.z + imageIndex;
    v273 = MTLReportFailureTypeEnabled();
    v24 = bytesPerImage;
    v25 = v272;
    v23 = bytesPerRow;
    height = v298;
    if (v273)
    {
      v274 = objc_opt_class();
      v283 = NSStringFromClass(v274);
      featureChannelOffset = NSStringFromSelector(a2);
      MTLReportFailure();
      v24 = bytesPerImage;
      v25 = v272;
      v23 = bytesPerRow;
      height = v298;
    }
  }

  v26 = v302;
  v293 = (featureChannelInfo.numberOfFeatureChannelsToReadWrite + 3) >> 2;
  v295 = (self->_featureChannels + 3) >> 2;
  aSelectora = (v301 + v293);
  if (v301 + v293 > v295)
  {
    v275 = v25;
    v276 = MTLReportFailureTypeEnabled();
    v24 = bytesPerImage;
    v25 = v275;
    v23 = bytesPerRow;
    height = v298;
    if (v276)
    {
      v277 = objc_opt_class();
      featureChannelOffset = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
      v287 = featureChannelInfo.featureChannelOffset;
      v283 = NSStringFromClass(v277);
      MTLReportFailure();
      v24 = bytesPerImage;
      v25 = v275;
      v23 = bytesPerRow;
      height = v298;
    }
  }

  v27 = v296;
  v28 = featureChannels * v296;
  v299 = v24;
  if (dataLayout == MPSDataLayoutFeatureChannelsxHeightxWidth)
  {
    v304 = v302;
    aSelectorb = v23;
    v150 = v24;
    if (featureChannelInfo.numberOfFeatureChannelsToReadWrite != 1)
    {
      v151 = v25;
      aSelectorb = v28 * width;
      v150 = v28 * width * height;
      v304 = malloc_type_malloc(v150 * v293, 0x3A71B93uLL);
      if (!v304)
      {
        v304 = 0;
        if (MTLReportFailureTypeEnabled())
        {
          v281 = objc_opt_class();
          v283 = NSStringFromClass(v281);
          MTLReportFailure();
          v304 = 0;
        }

        v9 = region;
        height = v298;
        v24 = v299;
        v27 = v296;
        v23 = bytesPerRow;
        v26 = v302;
        v25 = v151;
        if (v151 < v300)
        {
          goto LABEL_161;
        }

        goto LABEL_302;
      }

      v27 = v296;
      v23 = bytesPerRow;
      height = v298;
      v25 = v151;
      v24 = bytesPerImage;
    }

    if (v25 < v300)
    {
LABEL_161:
      v311 = height * v23;
      v152 = 4 * height * v23;
      if (width)
      {
        v153 = height == 0;
      }

      else
      {
        v153 = 1;
      }

      v154 = v153;
      v314 = v154;
      v155 = aSelectorb;
      do
      {
        while (featureChannelInfo.numberOfFeatureChannelsToReadWrite + 3 >= 4)
        {
          v303 = v26;
          v156 = 0;
          v306 = v25;
          v157 = (featureChannelInfo.numberOfFeatureChannelsToReadWrite + 3) >> 2;
          v158 = v301 + v25 * v295;
          v159 = v304;
          do
          {
            explicit = atomic_load_explicit(v318, memory_order_acquire);
            if (!explicit)
            {
              MPSAutoTexture::AllocateTexture(v318, 0);
              explicit = atomic_load_explicit(v318, memory_order_acquire);
              v155 = aSelectorb;
            }

            v160 = *&v9->origin.z;
            v319 = *&v9->origin.x;
            v320 = v160;
            v321 = *&v9->size.height;
            objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(explicit, v23, v159, v155, v150, &v319, 0, v158 + v156, v283, featureChannelOffset, v287);
            v159 += v150;
            ++v156;
            --v157;
          }

          while (v157);
          v27 = v296;
          v23 = bytesPerRow;
          v26 = v303;
          height = v298;
          v24 = v299;
          v25 = v306;
          if (featureChannelInfo.numberOfFeatureChannelsToReadWrite != 1)
          {
            break;
          }

          v304 += v299;
          v25 = v306 + 1;
          if (v306 + 1 == v300)
          {
            goto LABEL_302;
          }
        }

        switch(v27)
        {
          case 4:
            if (featureChannelInfo.numberOfFeatureChannelsToReadWrite != 2)
            {
              *&v319 = v304;
              *(&v319 + 1) = height;
              *&v320 = width;
              *(&v320 + 1) = 16 * width;
              v331 = v26;
              v332 = height;
              *&v333 = width;
              *(&v333 + 1) = v23;
              v329 = height;
              v330 = v333;
              v202 = &v26[v311];
              v328 = &v26[v311];
              v326 = height;
              v327 = v333;
              v203 = &v26[v311 + v311];
              v325 = v203;
              v323 = height;
              v324 = v333;
              v322 = &v203[v311];
              if (qword_280AFEC58 == -1)
              {
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite >= 4)
                {
                  goto LABEL_215;
                }

LABEL_265:
                v207 = v26;
                v206 = v304;
                numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite <= 1)
                {
                  goto LABEL_266;
                }
              }

              else
              {
                v252 = v25;
                v253 = v24;
                dispatch_once(&qword_280AFEC58, &unk_284216F00);
                v24 = v253;
                v25 = v252;
                v155 = aSelectorb;
                v23 = bytesPerRow;
                height = v298;
                v27 = v296;
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite < 4)
                {
                  goto LABEL_265;
                }

LABEL_215:
                v308 = v25;
                v204 = off_280AFEC70;
                for (numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite; numberOfFeatureChannelsToReadWrite > 3; numberOfFeatureChannelsToReadWrite -= 4)
                {
                  v204(&v319, &v331, &v328, &v325, &v322, 0);
                  v206 = (v319 + *(&v319 + 1) * *(&v320 + 1));
                  *&v319 = v206;
                  v207 = &v331[v152];
                  v331 += v152;
                  v202 = &v328[v152];
                  v328 += v152;
                  v203 = &v325[v152];
                  v325 += v152;
                  v322 += v152;
                }

                height = v298;
                v24 = v299;
                v27 = v296;
                v23 = bytesPerRow;
                v25 = v308;
                v155 = aSelectorb;
                if (numberOfFeatureChannelsToReadWrite <= 1)
                {
LABEL_266:
                  if (numberOfFeatureChannelsToReadWrite && (v314 & 1) == 0)
                  {
                    v254 = 0;
                    do
                    {
                      v255 = v207;
                      v256 = width;
                      do
                      {
                        v257 = *v206;
                        v206 += 4;
                        *v255 = v257;
                        v255 += 4;
                        --v256;
                      }

                      while (v256);
                      v207 += v23;
                      ++v254;
                    }

                    while (v254 != height);
                  }

                  break;
                }
              }

              if (numberOfFeatureChannelsToReadWrite == 3)
              {
                if ((v314 & 1) == 0)
                {
                  v208 = 0;
                  do
                  {
                    v209 = v207;
                    v210 = v202;
                    v211 = v203;
                    v212 = width;
                    do
                    {
                      v213 = v206[1];
                      v214 = v206[2];
                      *v209 = *v206;
                      v209 += 4;
                      v206 += 4;
                      *v210 = v213;
                      v210 += 4;
                      *v211 = v214;
                      v211 += 4;
                      --v212;
                    }

                    while (v212);
                    v207 += v23;
                    v202 += v23;
                    v203 += v23;
                    ++v208;
                  }

                  while (v208 != height);
                }
              }

              else if ((v314 & 1) == 0)
              {
                v234 = 0;
                do
                {
                  v235 = v207;
                  v236 = v202;
                  v237 = width;
                  do
                  {
                    v238 = *v206;
                    v239 = v206[1];
                    v206 += 4;
                    *v235 = v238;
                    v235 += 4;
                    *v236 = v239;
                    v236 += 4;
                    --v237;
                  }

                  while (v237);
                  v207 += v23;
                  v202 += v23;
                  ++v234;
                }

                while (v234 != height);
              }

              break;
            }

            if ((v314 & 1) == 0)
            {
              v180 = 0;
              v181 = &v26[v311];
              v182 = v304;
              v183 = v26;
              do
              {
                v184 = v183;
                v185 = v181;
                v186 = width;
                do
                {
                  v187 = *v182;
                  v188 = v182[1];
                  v182 += 2;
                  *v184++ = v187;
                  *v185 = v188;
                  v185 += 4;
                  --v186;
                }

                while (v186);
                v183 = (v183 + v23);
                v181 += v23;
                ++v180;
              }

              while (v180 != height);
            }

            break;
          case 2:
            if (featureChannelInfo.numberOfFeatureChannelsToReadWrite != 2)
            {
              *&v319 = v304;
              *(&v319 + 1) = height;
              *&v320 = width;
              *(&v320 + 1) = 8 * width;
              v331 = v26;
              v332 = height;
              *&v333 = width;
              *(&v333 + 1) = v23;
              v329 = height;
              v330 = v333;
              v189 = &v26[v311];
              v328 = &v26[v311];
              v326 = height;
              v327 = v333;
              v190 = &v26[v311 + v311];
              v325 = v190;
              v323 = height;
              v324 = v333;
              v322 = &v190[v311];
              if (qword_280AFEC58 == -1)
              {
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite >= 4)
                {
                  goto LABEL_203;
                }

LABEL_256:
                v194 = v26;
                v193 = v304;
                i = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite <= 1)
                {
                  goto LABEL_257;
                }
              }

              else
              {
                v246 = v25;
                v247 = v24;
                dispatch_once(&qword_280AFEC58, &unk_284216F00);
                v24 = v247;
                v25 = v246;
                v155 = aSelectorb;
                v23 = bytesPerRow;
                height = v298;
                v27 = v296;
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite < 4)
                {
                  goto LABEL_256;
                }

LABEL_203:
                v307 = v25;
                v191 = off_280AFEC68;
                for (i = featureChannelInfo.numberOfFeatureChannelsToReadWrite; i > 3; i -= 4)
                {
                  v191(&v319, &v331, &v328, &v325, &v322, 0);
                  v193 = (v319 + *(&v319 + 1) * *(&v320 + 1));
                  *&v319 = v193;
                  v194 = &v331[v152];
                  v331 += v152;
                  v189 = &v328[v152];
                  v328 += v152;
                  v190 = &v325[v152];
                  v325 += v152;
                  v322 += v152;
                }

                height = v298;
                v24 = v299;
                v27 = v296;
                v23 = bytesPerRow;
                v25 = v307;
                v155 = aSelectorb;
                if (i <= 1)
                {
LABEL_257:
                  if (i && (v314 & 1) == 0)
                  {
                    v248 = 0;
                    do
                    {
                      v249 = v194;
                      v250 = width;
                      do
                      {
                        v251 = *v193;
                        v193 += 4;
                        *v249 = v251;
                        v249 += 2;
                        --v250;
                      }

                      while (v250);
                      v194 += v23;
                      ++v248;
                    }

                    while (v248 != height);
                  }

                  break;
                }
              }

              if (i == 3)
              {
                if ((v314 & 1) == 0)
                {
                  v195 = 0;
                  do
                  {
                    v196 = v194;
                    v197 = v189;
                    v198 = v190;
                    v199 = width;
                    do
                    {
                      v200 = v193[1];
                      v201 = v193[2];
                      *v196 = *v193;
                      v196 += 2;
                      v193 += 4;
                      *v197 = v200;
                      v197 += 2;
                      *v198 = v201;
                      v198 += 2;
                      --v199;
                    }

                    while (v199);
                    v194 += v23;
                    v189 += v23;
                    v190 += v23;
                    ++v195;
                  }

                  while (v195 != height);
                }
              }

              else if ((v314 & 1) == 0)
              {
                v228 = 0;
                do
                {
                  v229 = v194;
                  v230 = v189;
                  v231 = width;
                  do
                  {
                    v232 = *v193;
                    v233 = v193[1];
                    v193 += 4;
                    *v229 = v232;
                    v229 += 2;
                    *v230 = v233;
                    v230 += 2;
                    --v231;
                  }

                  while (v231);
                  v194 += v23;
                  v189 += v23;
                  ++v228;
                }

                while (v228 != height);
              }

              break;
            }

            if ((v314 & 1) == 0)
            {
              v171 = 0;
              v172 = &v26[v311];
              v173 = v304;
              v174 = v26;
              do
              {
                v175 = v174;
                v176 = v172;
                v177 = width;
                do
                {
                  v178 = *v173;
                  v179 = v173[1];
                  v173 += 2;
                  *v175++ = v178;
                  *v176 = v179;
                  v176 += 2;
                  --v177;
                }

                while (v177);
                v174 = (v174 + v23);
                v172 += v23;
                ++v171;
              }

              while (v171 != height);
            }

            break;
          case 1:
            if (featureChannelInfo.numberOfFeatureChannelsToReadWrite != 2)
            {
              *&v319 = v304;
              *(&v319 + 1) = height;
              *&v320 = width;
              *(&v320 + 1) = 4 * width;
              v331 = v26;
              v332 = height;
              *&v333 = width;
              *(&v333 + 1) = v23;
              v329 = height;
              v330 = v333;
              v215 = &v26[v311];
              v328 = &v26[v311];
              v326 = height;
              v327 = v333;
              v216 = &v26[v311 + v311];
              v325 = v216;
              v323 = height;
              v324 = v333;
              v322 = &v216[v311];
              if (qword_280AFEC58 == -1)
              {
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite >= 4)
                {
                  goto LABEL_227;
                }

LABEL_274:
                v220 = v26;
                v219 = v304;
                j = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite <= 1)
                {
                  goto LABEL_275;
                }
              }

              else
              {
                v258 = v25;
                v259 = v24;
                dispatch_once(&qword_280AFEC58, &unk_284216F00);
                v24 = v259;
                v25 = v258;
                v155 = aSelectorb;
                v23 = bytesPerRow;
                height = v298;
                v27 = v296;
                if (featureChannelInfo.numberOfFeatureChannelsToReadWrite < 4)
                {
                  goto LABEL_274;
                }

LABEL_227:
                v309 = v25;
                v217 = off_280AFEC60;
                for (j = featureChannelInfo.numberOfFeatureChannelsToReadWrite; j > 3; j -= 4)
                {
                  v217(&v319, &v331, &v328, &v325, &v322, 0);
                  v219 = (v319 + *(&v319 + 1) * *(&v320 + 1));
                  *&v319 = v219;
                  v220 = &v331[v152];
                  v331 += v152;
                  v215 = &v328[v152];
                  v328 += v152;
                  v216 = &v325[v152];
                  v325 += v152;
                  v322 += v152;
                }

                height = v298;
                v24 = v299;
                v27 = v296;
                v23 = bytesPerRow;
                v25 = v309;
                v155 = aSelectorb;
                if (j <= 1)
                {
LABEL_275:
                  if (j && (v314 & 1) == 0)
                  {
                    v260 = 0;
                    do
                    {
                      v261 = v220;
                      v262 = width;
                      do
                      {
                        v263 = *v219;
                        v219 += 4;
                        *v261++ = v263;
                        --v262;
                      }

                      while (v262);
                      v220 += v23;
                      ++v260;
                    }

                    while (v260 != height);
                  }

                  break;
                }
              }

              if (j == 3)
              {
                if ((v314 & 1) == 0)
                {
                  v221 = 0;
                  do
                  {
                    v222 = v220;
                    v223 = v215;
                    v224 = v216;
                    v225 = width;
                    do
                    {
                      v226 = v219[1];
                      v227 = v219[2];
                      *v222++ = *v219;
                      v219 += 4;
                      *v223++ = v226;
                      *v224++ = v227;
                      --v225;
                    }

                    while (v225);
                    v220 += v23;
                    v215 += v23;
                    v216 += v23;
                    ++v221;
                  }

                  while (v221 != height);
                }
              }

              else if ((v314 & 1) == 0)
              {
                v240 = 0;
                do
                {
                  v241 = v220;
                  v242 = v215;
                  v243 = width;
                  do
                  {
                    v244 = *v219;
                    v245 = v219[1];
                    v219 += 4;
                    *v241++ = v244;
                    *v242++ = v245;
                    --v243;
                  }

                  while (v243);
                  v220 += v23;
                  v215 += v23;
                  ++v240;
                }

                while (v240 != height);
              }

              break;
            }

            if ((v314 & 1) == 0)
            {
              v162 = 0;
              v163 = &v26[v311];
              v164 = v304;
              v165 = v26;
              do
              {
                v166 = v165;
                v167 = v163;
                v168 = width;
                do
                {
                  v169 = *v164;
                  v170 = v164[1];
                  v164 += 2;
                  *v166++ = v169;
                  *v167++ = v170;
                  --v168;
                }

                while (v168);
                v165 += v23;
                v163 += v23;
                ++v162;
              }

              while (v162 != height);
            }

            break;
        }

        v26 += v24;
        ++v25;
      }

      while (v25 != v300);
    }

LABEL_302:
    if (featureChannelInfo.numberOfFeatureChannelsToReadWrite == 1)
    {
      return;
    }

    goto LABEL_284;
  }

  if (dataLayout == MPSDataLayoutHeightxWidthxFeatureChannels)
  {
    if (featureChannelInfo.numberOfFeatureChannelsToReadWrite > 4 || featureChannelInfo.numberOfFeatureChannelsToReadWrite == 3 || ((v28 - 1) & (v24 | v23)) != 0)
    {
      v29 = v25;
      v312 = v28 * width;
      v310 = v28 * width * height;
      v304 = malloc_type_malloc(v310 * v293, 0xF735BE4DuLL);
      if (!v304)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v280 = objc_opt_class();
          v283 = NSStringFromClass(v280);
          MTLReportFailure();
        }

        v304 = 0;
      }

      v294 = 1;
      height = v298;
      v25 = v29;
      if (v29 < v300)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v294 = 0;
      v304 = v302;
      v310 = v24;
      v312 = v23;
      if (v25 < v300)
      {
LABEL_34:
        v292 = 16 * width * height;
        v30 = 4 * featureChannelInfo.numberOfFeatureChannelsToReadWrite;
        if (width)
        {
          v31 = height == 0;
        }

        else
        {
          v31 = 1;
        }

        v32 = v31;
        v291 = v32;
        v33 = 8 * width;
        v34 = 2 * featureChannelInfo.numberOfFeatureChannelsToReadWrite;
        v35 = 4 * width;
        v288 = 4 * width * height;
        v289 = 8 * width * height;
        v290 = 16 * width;
        do
        {
          while (1)
          {
            v305 = v25;
            if (v301 < aSelectora)
            {
              v36 = v304;
              v37 = v25 * v295;
              v38 = v301;
              do
              {
                v40 = atomic_load_explicit(v318, memory_order_acquire);
                if (!v40)
                {
                  MPSAutoTexture::AllocateTexture(v318, 0);
                  v40 = atomic_load_explicit(v318, memory_order_acquire);
                }

                v39 = *&region->origin.z;
                v319 = *&region->origin.x;
                v320 = v39;
                v321 = *&region->size.height;
                objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v40, v23, v36, v312, v310, &v319, 0, &v38[v37], v283, featureChannelOffset, v287);
                v36 += v310;
                ++v38;
              }

              while (v38 != aSelectora);
            }

            if (v294)
            {
              break;
            }

            v304 += v299;
            v25 = v305 + 1;
            if (v305 + 1 == v300)
            {
              goto LABEL_283;
            }
          }

          switch(v296)
          {
            case 4:
              v84 = v302;
              v85 = v304;
              v86 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              if (featureChannelInfo.numberOfFeatureChannelsToReadWrite >= 8)
              {
                if (v291)
                {
                  break;
                }

                v85 = v304;
                v87 = &v304[v292];
                v86 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                v84 = v302;
                do
                {
                  v88 = 0;
                  v89 = v87;
                  v90 = v84;
                  do
                  {
                    v91 = v85;
                    v92 = v89;
                    v93 = width;
                    v94 = v90;
                    do
                    {
                      v95 = *v91;
                      v91 += 16;
                      v96 = v95;
                      v97 = *v92++;
                      *v94 = v96;
                      v94[1] = v97;
                      v94 = (v94 + v30);
                      --v93;
                    }

                    while (v93);
                    v85 += v290;
                    v89 = (v89 + v290);
                    v90 = (v90 + bytesPerRow);
                    ++v88;
                  }

                  while (v88 != v298);
                  v86 -= 8;
                  v85 = &v87[v292];
                  v87 += v292 + v292;
                  v84 += 32;
                }

                while (v86 > 7);
              }

              v98 = v86 - 4;
              if (v86 < 4)
              {
                if ((v291 & 1) == 0)
                {
                  goto LABEL_121;
                }
              }

              else if ((v291 & 1) == 0)
              {
                v99 = 0;
                v100 = v84;
                v101 = v85;
                do
                {
                  v102 = v101;
                  v103 = width;
                  v104 = v100;
                  do
                  {
                    v105 = *v102++;
                    *v104 = v105;
                    v104 = (v104 + v30);
                    --v103;
                  }

                  while (v103);
                  v101 = (v101 + v290);
                  v100 = (v100 + bytesPerRow);
                  ++v99;
                }

                while (v99 != v298);
                v85 += v292;
                v84 += 16;
                v86 = v98;
LABEL_121:
                if (!v86)
                {
                  break;
                }

                v124 = 0;
LABEL_124:
                v125 = 0;
                v126 = 0;
                v127 = (v85 + 16);
                v128 = v84;
LABEL_126:
                if (v86 < 8 || (v128 - &v85[16 * v126]) < 0x20)
                {
                  v23 = 0;
                  goto LABEL_129;
                }

                v132 = v128 + 16;
                v133 = v86 & 0xFFFFFFFFFFFFFFF8;
                v134 = v127;
                do
                {
                  v135 = *v134;
                  *(v132 - 1) = *(v134 - 1);
                  *v132 = v135;
                  v134 += 2;
                  v132 += 2;
                  v133 -= 8;
                }

                while (v133);
                v23 = v86 & 0xFFFFFFFFFFFFFFF8;
                if (v86 != (v86 & 0xFFFFFFFFFFFFFFF8))
                {
LABEL_129:
                  v129 = v86 - v23;
                  v130 = &v128[4 * v23];
                  v23 = &v85[4 * v23 + 4 * v125];
                  do
                  {
                    v131 = *v23;
                    v23 += 4;
                    *v130 = v131;
                    v130 += 4;
                    --v129;
                  }

                  while (v129);
                }

                v128 += v30;
                ++v126;
                ++v127;
                v125 += 4;
                if (v126 == width)
                {
                  v85 += v290;
                  v84 += bytesPerRow;
                  if (++v124 == v298)
                  {
                    break;
                  }

                  goto LABEL_124;
                }

                goto LABEL_126;
              }

              break;
            case 2:
              v62 = v302;
              v63 = v304;
              v64 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              if (featureChannelInfo.numberOfFeatureChannelsToReadWrite >= 8)
              {
                if (v291)
                {
                  break;
                }

                v62 = v302;
                v63 = v304;
                v23 = v289;
                v65 = &v304[v289];
                v64 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                do
                {
                  v66 = 0;
                  v67 = v65;
                  v68 = v62;
                  do
                  {
                    v69 = v63;
                    v70 = v67;
                    v71 = width;
                    v72 = v68;
                    do
                    {
                      v73 = *v69;
                      v69 += 8;
                      v74 = v73;
                      v75 = *v70++;
                      *v72 = v74;
                      v72[1] = v75;
                      v72 = (v72 + v34);
                      --v71;
                    }

                    while (v71);
                    v63 += v33;
                    v67 = (v67 + v33);
                    v68 = (v68 + bytesPerRow);
                    ++v66;
                  }

                  while (v66 != v298);
                  v64 -= 8;
                  v63 = &v65[v289];
                  v65 += v289 + v289;
                  v62 += 2;
                }

                while (v64 > 7);
              }

              v76 = v64 - 4;
              if (v64 < 4)
              {
                if ((v291 & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              else if ((v291 & 1) == 0)
              {
                v77 = 0;
                v78 = v62;
                v79 = v63;
                do
                {
                  v80 = v79;
                  v81 = width;
                  v82 = v78;
                  do
                  {
                    v83 = *v80++;
                    *v82 = v83;
                    v82 = (v82 + v34);
                    --v81;
                  }

                  while (v81);
                  v79 = (v79 + v33);
                  v78 = (v78 + bytesPerRow);
                  ++v77;
                }

                while (v77 != v298);
                v63 += v289;
                ++v62;
                v64 = v76;
LABEL_99:
                if (!v64)
                {
                  break;
                }

                v106 = 0;
LABEL_102:
                v107 = 0;
                v108 = 0;
                v109 = (v63 + 16);
                v23 = v62;
LABEL_104:
                if (v64 < 4 || v23 - &v63[8 * v108] < 0x20)
                {
                  v110 = 0;
                  goto LABEL_107;
                }

                if (v64 >= 0x10)
                {
                  v116 = (v23 + 16);
                  v117 = v64 & 0xFFFFFFFFFFFFFFF0;
                  v118 = v109;
                  do
                  {
                    v119 = *v118;
                    *(v116 - 1) = *(v118 - 1);
                    *v116 = v119;
                    v118 += 2;
                    v116 += 2;
                    v117 -= 16;
                  }

                  while (v117);
                  if (v64 != (v64 & 0xFFFFFFFFFFFFFFF0))
                  {
                    v115 = v64 & 0xFFFFFFFFFFFFFFF0;
                    v110 = v64 & 0xFFFFFFFFFFFFFFF0;
                    if ((v64 & 0xC) == 0)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_116;
                  }
                }

                else
                {
                  v115 = 0;
LABEL_116:
                  v120 = &v63[2 * v115 + 2 * v107];
                  v121 = (v23 + 2 * v115);
                  v122 = v115 - (v64 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v123 = *v120;
                    v120 += 8;
                    *v121++ = v123;
                    v122 += 4;
                  }

                  while (v122);
                  v110 = v64 & 0xFFFFFFFFFFFFFFFCLL;
                  if (v64 != (v64 & 0xFFFFFFFFFFFFFFFCLL))
                  {
LABEL_107:
                    v111 = v64 - v110;
                    v112 = (v23 + 2 * v110);
                    v113 = &v63[2 * v110 + 2 * v107];
                    do
                    {
                      v114 = *v113;
                      v113 += 2;
                      *v112++ = v114;
                      --v111;
                    }

                    while (v111);
                  }
                }

                v23 += v34;
                ++v108;
                v109 = (v109 + 8);
                v107 += 4;
                if (v108 == width)
                {
                  v63 += v33;
                  v62 = (v62 + bytesPerRow);
                  if (++v106 == v298)
                  {
                    break;
                  }

                  goto LABEL_102;
                }

                goto LABEL_104;
              }

              break;
            case 1:
              v41 = v302;
              v42 = v304;
              v43 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              if (featureChannelInfo.numberOfFeatureChannelsToReadWrite >= 8)
              {
                if (v291)
                {
                  break;
                }

                v41 = v302;
                v42 = v304;
                v44 = &v304[v288];
                v43 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                do
                {
                  v45 = 0;
                  v46 = v44;
                  v47 = v41;
                  do
                  {
                    v48 = v42;
                    v49 = v46;
                    v50 = width;
                    v51 = v47;
                    do
                    {
                      v52 = *v48;
                      v48 += 4;
                      v23 = v52;
                      LODWORD(v53) = v52;
                      HIDWORD(v53) = *v49++;
                      *v51 = v53;
                      v51 = (v51 + featureChannelInfo.numberOfFeatureChannelsToReadWrite);
                      --v50;
                    }

                    while (v50);
                    v42 += v35;
                    v46 = (v46 + v35);
                    v47 = (v47 + bytesPerRow);
                    ++v45;
                  }

                  while (v45 != v298);
                  v43 -= 8;
                  v42 = &v44[v288];
                  v44 += v288 + v288;
                  ++v41;
                }

                while (v43 > 7);
              }

              v54 = v43 - 4;
              if (v43 < 4)
              {
                if (v291)
                {
                  break;
                }
              }

              else
              {
                if (v291)
                {
                  break;
                }

                v55 = 0;
                v56 = v41;
                v57 = v42;
                do
                {
                  v58 = v57;
                  v59 = width;
                  v60 = v56;
                  do
                  {
                    v61 = *v58++;
                    *v60 = v61;
                    v60 = (v60 + featureChannelInfo.numberOfFeatureChannelsToReadWrite);
                    --v59;
                  }

                  while (v59);
                  v57 = (v57 + v35);
                  v56 = (v56 + bytesPerRow);
                  ++v55;
                }

                while (v55 != v298);
                v42 += v288;
                v41 = (v41 + 4);
                v43 = v54;
              }

              if (v43)
              {
                for (k = 0; k != v298; ++k)
                {
                  v137 = 0;
                  v138 = (v42 + 16);
                  v139 = v42;
                  v23 = v41;
                  do
                  {
                    if (v43 < 8)
                    {
                      m = 0;
                      goto LABEL_155;
                    }

                    if (v23 - &v42[4 * v137] < 0x20)
                    {
                      for (m = 0; m != v43; ++m)
                      {
LABEL_155:
                        *(v23 + m) = v139[m];
                      }

                      goto LABEL_141;
                    }

                    if (v43 >= 0x20)
                    {
                      v142 = (v23 + 16);
                      v143 = v43 & 0xFFFFFFFFFFFFFFE0;
                      v144 = v138;
                      do
                      {
                        v145 = *v144;
                        *(v142 - 1) = *(v144 - 1);
                        *v142 = v145;
                        v144 += 2;
                        v142 += 2;
                        v143 -= 32;
                      }

                      while (v143);
                      if (v43 == (v43 & 0xFFFFFFFFFFFFFFE0))
                      {
                        goto LABEL_141;
                      }

                      v141 = v43 & 0xFFFFFFFFFFFFFFE0;
                      m = v43 & 0xFFFFFFFFFFFFFFE0;
                      if ((v43 & 0x18) == 0)
                      {
                        goto LABEL_155;
                      }
                    }

                    else
                    {
                      v141 = 0;
                    }

                    v146 = &v139[v141];
                    v147 = (v23 + v141);
                    v148 = v141 - (v43 & 0xFFFFFFFFFFFFFFF8);
                    do
                    {
                      v149 = *v146;
                      v146 += 8;
                      *v147++ = v149;
                      v148 += 8;
                    }

                    while (v148);
                    m = v43 & 0xFFFFFFFFFFFFFFF8;
                    if (v43 != (v43 & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_155;
                    }

LABEL_141:
                    v23 += featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                    ++v137;
                    v138 = (v138 + 4);
                    v139 += 4;
                  }

                  while (v137 != width);
                  v42 += v35;
                  v41 = (v41 + bytesPerRow);
                }
              }

              break;
          }

          v302 += v299;
          v25 = v305 + 1;
        }

        while (v305 + 1 != v300);
      }
    }

LABEL_283:
    if (v294)
    {
LABEL_284:
      free(v304);
    }
  }
}

- (void)readBytes:(void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex
{
  height = region->size.height;
  if (dataLayout == MPSDataLayoutFeatureChannelsxHeightxWidth)
  {
    numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
  }

  else
  {
    numberOfFeatureChannelsToReadWrite = 1;
  }

  v10 = *&region->origin.z;
  v11[0] = *&region->origin.x;
  v11[1] = v10;
  v11[2] = *&region->size.height;
  objc_msgSend_readBytes_dataLayout_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(self, a2, dataBytes, dataLayout, bytesPerRow, numberOfFeatureChannelsToReadWrite * bytesPerRow * height, v11, featureChannelInfo.featureChannelOffset, featureChannelInfo.numberOfFeatureChannelsToReadWrite, imageIndex);
}

- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow bytesPerImage:(NSUInteger)bytesPerImage region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex
{
  PixelChannelSize = objc_msgSend_getPixelChannelSize(self, a2, dataBytes, dataLayout, bytesPerRow);
  if (dataLayout)
  {
    numberOfFeatureChannelsToReadWrite = 1;
  }

  else
  {
    numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
  }

  v18 = *&region->origin.z;
  v19[0] = *&region->origin.x;
  v19[1] = v18;
  v19[2] = *&region->size.height;
  objc_msgSend_writeBytes_dataLayout_bytesPerColumn_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(self, v16, dataBytes, dataLayout, PixelChannelSize * numberOfFeatureChannelsToReadWrite, bytesPerRow, bytesPerImage, v19, featureChannelInfo.featureChannelOffset, featureChannelInfo.numberOfFeatureChannelsToReadWrite, imageIndex);
}

- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerColumn:(NSUInteger)bytesPerColumn bytesPerRow:(NSUInteger)bytesPerRow bytesPerImage:(NSUInteger)bytesPerImage region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex
{
  if (!featureChannelInfo.numberOfFeatureChannelsToReadWrite)
  {
    return;
  }

  v14 = dataBytes;
  PixelChannelSize = objc_msgSend_getPixelChannelSize(self, a2, dataBytes, dataLayout, bytesPerColumn);
  width = region->size.width;
  height = region->size.height;
  v20 = height * bytesPerRow;
  v475 = height * bytesPerRow;
  if (dataLayout != MPSDataLayoutFeatureChannelsxHeightxWidth)
  {
    v20 = PixelChannelSize;
  }

  v445 = v20;
  if (region->size.depth <= 1)
  {
    depth = 1;
  }

  else
  {
    depth = region->size.depth;
  }

  if (self->_featureChannels >= 3)
  {
    featureChannels = 4;
  }

  else
  {
    featureChannels = self->_featureChannels;
  }

  v456 = PixelChannelSize;
  v461 = region->size.width;
  v462 = region->size.height;
  if (region->origin.x + width > self->_width || (v24 = PixelChannelSize, region->origin.y + height > self->_height))
  {
    v23 = MTLReportFailureTypeEnabled();
    width = v461;
    height = v462;
    v24 = v456;
    if (v23)
    {
      v25 = objc_opt_class();
      v419 = NSStringFromClass(v25);
      MTLReportFailure();
      width = v461;
      height = v462;
      v24 = v456;
    }
  }

  v466 = featureChannelInfo.featureChannelOffset / featureChannels;
  numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
  if (featureChannelInfo.featureChannelOffset % featureChannels)
  {
    v407 = MTLReportFailureTypeEnabled();
    width = v461;
    height = v462;
    v24 = v456;
    numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
    if (v407)
    {
      v408 = objc_opt_class();
      v419 = NSStringFromClass(v408);
      featureChannelOffset = featureChannelInfo.featureChannelOffset;
      MTLReportFailure();
      width = v461;
      height = v462;
      v24 = v456;
      numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
    }
  }

  if (numberOfFeatureChannelsToReadWrite % featureChannels)
  {
    if (numberOfFeatureChannelsToReadWrite + featureChannelInfo.featureChannelOffset != self->_featureChannels)
    {
      v413 = MTLReportFailureTypeEnabled();
      width = v461;
      height = v462;
      v24 = v456;
      numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
      if (v413)
      {
        v414 = objc_opt_class();
        v419 = NSStringFromClass(v414);
        featureChannelOffset = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
        MTLReportFailure();
        width = v461;
        height = v462;
        v24 = v456;
        numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
      }
    }
  }

  if (imageIndex)
  {
    if (region->origin.z)
    {
      v415 = MTLReportFailureTypeEnabled();
      width = v461;
      height = v462;
      v24 = v456;
      numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
      if (v415)
      {
        v416 = objc_opt_class();
        v419 = NSStringFromClass(v416);
        featureChannelOffset = NSStringFromSelector(a2);
        MTLReportFailure();
        width = v461;
        height = v462;
        v24 = v456;
        numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
      }
    }
  }

  v459 = region->origin.z + imageIndex;
  if (v459 + depth > self->_numberOfImages)
  {
    v409 = MTLReportFailureTypeEnabled();
    width = v461;
    height = v462;
    v24 = v456;
    numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
    if (v409)
    {
      v410 = objc_opt_class();
      v419 = NSStringFromClass(v410);
      featureChannelOffset = NSStringFromSelector(a2);
      MTLReportFailure();
      width = v461;
      height = v462;
      v24 = v456;
      numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
    }
  }

  v457 = (self->_featureChannels + 3) >> 2;
  aSelectora = (v466 + ((numberOfFeatureChannelsToReadWrite + 3) >> 2));
  v27 = bytesPerImage;
  if (aSelectora > v457)
  {
    v411 = MTLReportFailureTypeEnabled();
    width = v461;
    height = v462;
    v24 = v456;
    if (v411)
    {
      v412 = objc_opt_class();
      featureChannelOffset = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
      v421 = featureChannelInfo.featureChannelOffset;
      v419 = NSStringFromClass(v412);
      MTLReportFailure();
      width = v461;
      height = v462;
      v24 = v456;
    }
  }

  v28 = featureChannels * v24;
  if (dataLayout == MPSDataLayoutFeatureChannelsxHeightxWidth)
  {
    v132 = self->_featureChannels;
    if (v132 < 2)
    {
      if (v466 >= aSelectora || v459 >= region->size.depth + v459)
      {
        return;
      }

      v424 = self->_featureChannels;
      p_texture = &self->_texture;
      v402 = v459;
      do
      {
        v403 = v466;
        v404 = v14;
        do
        {
          explicit = atomic_load_explicit(p_texture, memory_order_acquire);
          if (!explicit)
          {
            MPSAutoTexture::AllocateTexture(p_texture, 0);
            explicit = atomic_load_explicit(p_texture, memory_order_acquire);
          }

          v405 = *&region->origin.z;
          v479 = *&region->origin.x;
          v480 = v405;
          v481 = *&region->size.height;
          objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(explicit, v17, &v479, 0, &v403[v402 * v457], v404, bytesPerRow, bytesPerImage, v419, featureChannelOffset, v421);
          v404 += v475;
          ++v403;
        }

        while (v403 != aSelectora);
        ++v402;
      }

      while (v402 < region->size.depth + v459);
      v460 = v14;
LABEL_505:
      if (v424 < 2)
      {
        return;
      }
    }

    else
    {
      v472 = v28 * width;
      v468 = v457 * v28 * width * height;
      v470 = v28 * width * height;
      v460 = malloc_type_malloc(v468, 0x5D3ED0F5uLL);
      if (!v460 && MTLReportFailureTypeEnabled())
      {
        v418 = objc_opt_class();
        v419 = NSStringFromClass(v418);
        MTLReportFailure();
      }

      v137 = v456;
      if (v459 < region->size.depth + v459)
      {
        v424 = v132;
        v474 = &self->_texture;
        v138 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
        v139 = 4;
        if (featureChannelInfo.numberOfFeatureChannelsToReadWrite < 3)
        {
          v139 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
        }

        v140 = v461;
        v141 = v462;
        v448 = 4 * v461;
        v450 = 4 * v475;
        v427 = 4 * v461 * v139;
        v433 = v427 * v462;
        v422 = v475 * (featureChannelInfo.numberOfFeatureChannelsToReadWrite & 0xFFFFFFFFFFFFFFFCLL | 1);
        v423 = v475 * (featureChannelInfo.numberOfFeatureChannelsToReadWrite & 0xFFFFFFFFFFFFFFFCLL);
        if (v461)
        {
          v142 = v462 == 0;
        }

        else
        {
          v142 = 1;
        }

        v143 = v142;
        v437 = v143;
        v444 = v461;
        v426 = 2 * v461 * v139;
        v425 = v461 * v139;
        v431 = v461 * v139 * v462;
        v432 = v426 * v462;
        v434 = 2 * v461;
        v435 = 4 * v461;
        v442 = v461 & 0xFFFFFFFFFFFFFFF8;
        v441 = v461 & 0xFFFFFFFFFFFFFFF0;
        v429 = 4 * (v461 & 0xFFFFFFFFFFFFFFF0);
        v430 = 2 * (v461 & 0xFFFFFFFFFFFFFFF8);
        v439 = v461 & 0xFFFFFFFFFFFFFFE0;
        v428 = 4 * (v461 & 0xFFFFFFFFFFFFFFE0);
        v144 = 0uLL;
        v476 = v459;
        while (1)
        {
          v452 = v134;
          v453 = v144;
          v454 = v135;
          v455 = v136;
          if (v137 == 1)
          {
            break;
          }

          if (v137 == 2)
          {
            if (v138 == 2)
            {
              if ((v437 & 1) == 0)
              {
                v155 = 0;
                v156 = &v14->i8[v445];
                v157 = v14;
                v158 = v460;
                do
                {
                  v159 = v140;
                  v160 = v157;
                  v161 = v156;
                  do
                  {
                    v162 = v160->i16[0];
                    v160 = (v160 + bytesPerColumn);
                    v163 = *v161;
                    v161 = (v161 + bytesPerColumn);
                    *v158 = v162;
                    v158[1] = v163;
                    v158 += 2;
                    --v159;
                  }

                  while (v159);
                  v157 = (v157 + bytesPerRow);
                  v156 += bytesPerRow;
                  ++v155;
                }

                while (v155 != v141);
              }

              goto LABEL_491;
            }

            *&v479 = v14;
            *(&v479 + 1) = v141;
            *&v480 = v140;
            *(&v480 + 1) = bytesPerRow;
            v493 = v141;
            v494 = v480;
            v173 = (v14 + v445);
            v492 = &v14->i8[v445];
            v490 = v141;
            v491 = v480;
            v174 = (v14 + v445 + v445);
            v489 = v174;
            v487 = v141;
            v488 = v480;
            v175 = (v174->i16 + v445);
            v482 = v460;
            v483 = v141;
            v484 = v140;
            v485 = v426;
            v486 = &v174->i8[v445];
            if (bytesPerColumn == 2)
            {
              v464 = v14;
              if (qword_280AFEC90 == -1)
              {
                v176 = v450;
                v177 = off_280AFEC80;
                if (off_280AFEC80)
                {
                  goto LABEL_201;
                }

LABEL_486:
                free(v460);
                v14 = v464;
                goto LABEL_490;
              }

              dispatch_once(&qword_280AFEC90, &unk_284216EE0);
              v138 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              v176 = v450;
              v177 = off_280AFEC80;
              if (!off_280AFEC80)
              {
                goto LABEL_486;
              }

LABEL_201:
              v178 = v138;
              if (v138 < 4)
              {
                v180 = v460;
                v14 = v464;
                v179 = v464;
                v178 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              }

              else
              {
                do
                {
                  (v177)(&v479, &v492, &v489, &v486, &v482, 0);
                  v179 = (v176 + v479);
                  *&v479 = v176 + v479;
                  v173 = &v492[v176];
                  v492 += v176;
                  v174 = &v489[v176];
                  v489 += v176;
                  v486 += v176;
                  v180 = (v482 + v432);
                  v482 = (v482 + v432);
                  v178 -= 4;
                }

                while (v178 > 3);
                v14 = v464;
              }

              v140 = v461;
              v141 = v462;
              v144 = v453;
            }

            else if (v138 < 4)
            {
              v180 = v460;
              v179 = v14;
              v178 = v138;
            }

            else if (v141)
            {
              if (v140)
              {
                v178 = v138;
                v179 = v14;
                v180 = v460;
                do
                {
                  v199 = 0;
                  v200 = v179;
                  v201 = v180;
                  v202 = v175;
                  v203 = v174;
                  v204 = v173;
                  do
                  {
                    v205 = v140;
                    v206 = v202;
                    v133 = v203;
                    v207 = v204;
                    v208 = v200;
                    do
                    {
                      v209 = v208->i16[0];
                      v208 = (v208 + bytesPerColumn);
                      v210 = v207->i16[0];
                      v207 = (v207 + bytesPerColumn);
                      v211 = *v133;
                      v133 += bytesPerColumn;
                      v212 = *v206;
                      v206 = (v206 + bytesPerColumn);
                      *v201 = v209;
                      v201[1] = v210;
                      v201[2] = v211;
                      v201[3] = v212;
                      v201 += 4;
                      --v205;
                    }

                    while (v205);
                    v200 = (v200 + bytesPerRow);
                    v204 = (v204 + bytesPerRow);
                    v203 += bytesPerRow;
                    v202 = (v202 + bytesPerRow);
                    ++v199;
                  }

                  while (v199 != v141);
                  v179 = (v179 + v450);
                  v173 = (v173 + v450);
                  v174 = (v174 + v450);
                  v175 = (v175 + v450);
                  v180 = (v180 + v432);
                  v178 -= 4;
                }

                while (v178 > 3);
              }

              else
              {
                v173 = (v14 + v422);
                v178 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 3;
                v179 = (v14 + v423);
                v174 = (v14 + v445 + v422);
                v180 = v460;
              }
            }

            else
            {
              v174 = (v14 + v445);
              v180 = v460;
              v173 = v14;
              v179 = v14;
              v178 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 3;
            }

            if (v178 <= 1)
            {
              if (!v178 || (v437 & 1) != 0)
              {
                goto LABEL_490;
              }

              v236 = 0;
              while (2)
              {
                if (v140 < 0x10 || v180 < &v179->i16[v444] && v179 < &v180[v435])
                {
                  v237 = 0;
                  v238 = v180;
                  goto LABEL_268;
                }

                v238 = &v180[v429];
                v242 = v180 + 32;
                v243 = v179 + 1;
                v244 = v461 & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v245 = v242 - 32;
                  v495.val[0] = v243[-1];
                  v504.val[0] = *v243;
                  v495.val[1] = v144;
                  v495.val[2] = v144;
                  v495.val[3] = v144;
                  v504.val[1] = v144;
                  v504.val[2] = v144;
                  v504.val[3] = v144;
                  vst4q_s16(v245, v495);
                  vst4q_s16(v242, v504);
                  v242 += 64;
                  v243 += 2;
                  v244 -= 16;
                }

                while (v244);
                v237 = v461 & 0xFFFFFFFFFFFFFFF0;
                if (v140 != v441)
                {
LABEL_268:
                  v239 = v140 - v237;
                  v240 = &v179->i16[v237];
                  do
                  {
                    v241 = *v240++;
                    *v238 = v241;
                    *(v238 + 1) = 0;
                    v238[3] = 0;
                    v238 += 4;
                    --v239;
                  }

                  while (v239);
                }

                v179 = (v179 + bytesPerRow);
                ++v236;
                v180 = v238;
                if (v236 == v141)
                {
                  goto LABEL_490;
                }

                continue;
              }
            }

            if (v178 == 2)
            {
              if (v437)
              {
                goto LABEL_490;
              }

              v246 = 0;
              while (2)
              {
                if (v140 < 0x10)
                {
                  v247 = 0;
                  break;
                }

                v247 = 0;
                v256 = &v180[v435];
                v258 = v180 < &v173->i16[v444] && v173 < v256;
                v259 = v179 >= v256 || v180 >= &v179->i16[v444];
                if (v259 && !v258)
                {
                  v248 = &v180[v429];
                  v260 = v180 + 32;
                  v261 = v179 + 1;
                  v262 = v173 + 1;
                  v263 = v461 & 0xFFFFFFFFFFFFFFF0;
                  do
                  {
                    v264 = v260 - 32;
                    v496.val[0] = v261[-1];
                    v505.val[0] = *v261;
                    v496.val[1] = v262[-1];
                    v505.val[1] = *v262;
                    v496.val[2] = v144;
                    v496.val[3] = v144;
                    v505.val[2] = v144;
                    v505.val[3] = v144;
                    vst4q_s16(v264, v496);
                    vst4q_s16(v260, v505);
                    v260 += 64;
                    v261 += 2;
                    v262 += 2;
                    v263 -= 16;
                  }

                  while (v263);
                  v247 = v461 & 0xFFFFFFFFFFFFFFF0;
                  if (v140 != v441)
                  {
LABEL_282:
                    v249 = v140 - v247;
                    v250 = v247;
                    v251 = &v173->i16[v247];
                    v252 = &v179->i16[v250];
                    do
                    {
                      v254 = *v252++;
                      v253 = v254;
                      v255 = *v251++;
                      *v248 = v253;
                      v248[1] = v255;
                      *(v248 + 1) = 0;
                      v248 += 4;
                      --v249;
                    }

                    while (v249);
                  }

                  v179 = (v179 + bytesPerRow);
                  v173 = (v173 + bytesPerRow);
                  ++v246;
                  v180 = v248;
                  if (v246 == v141)
                  {
                    goto LABEL_490;
                  }

                  continue;
                }

                break;
              }

              v248 = v180;
              goto LABEL_282;
            }

            if (v437)
            {
              goto LABEL_490;
            }

            v265 = 0;
            while (2)
            {
              if (v140 < 0x10)
              {
                v266 = 0;
                break;
              }

              v266 = 0;
              v278 = &v180[v435];
              v280 = v180 < &v173->i16[v444] && v173 < v278;
              v282 = v180 < &v174->i16[v444] && v174 < v278;
              v283 = v179 >= v278 || v180 >= &v179->i16[v444];
              if (v283 && !v280 && !v282)
              {
                v267 = &v180[v429];
                v284 = v180 + 32;
                v285 = v179 + 1;
                v286 = v173 + 1;
                v287 = v174 + 1;
                v288 = v461 & 0xFFFFFFFFFFFFFFF0;
                do
                {
                  v289 = v284 - 32;
                  v497.val[0] = v285[-1];
                  v506.val[0] = *v285;
                  v497.val[1] = v286[-1];
                  v506.val[1] = *v286;
                  v497.val[2] = v287[-1];
                  v506.val[2] = *v287;
                  v497.val[3] = v144;
                  v506.val[3] = v144;
                  vst4q_s16(v289, v497);
                  vst4q_s16(v284, v506);
                  v284 += 64;
                  v285 += 2;
                  v286 += 2;
                  v287 += 2;
                  v288 -= 16;
                }

                while (v288);
                v266 = v461 & 0xFFFFFFFFFFFFFFF0;
                if (v140 != v441)
                {
LABEL_307:
                  v268 = v140 - v266;
                  v269 = v266;
                  v270 = &v174->i16[v266];
                  v271 = &v173->i16[v269];
                  v272 = &v179->i16[v269];
                  do
                  {
                    v274 = *v272++;
                    v273 = v274;
                    v276 = *v271++;
                    v275 = v276;
                    v277 = *v270++;
                    *v267 = v273;
                    v267[1] = v275;
                    v267[2] = v277;
                    v267[3] = 0;
                    v267 += 4;
                    --v268;
                  }

                  while (v268);
                }

                v179 = (v179 + bytesPerRow);
                v173 = (v173 + bytesPerRow);
                v174 = (v174 + bytesPerRow);
                ++v265;
                v180 = v267;
                if (v265 == v141)
                {
                  goto LABEL_490;
                }

                continue;
              }

              break;
            }

            v267 = v180;
            goto LABEL_307;
          }

          if (v137 == 4)
          {
            v145 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
            if (featureChannelInfo.numberOfFeatureChannelsToReadWrite == 2)
            {
              if ((v437 & 1) == 0)
              {
                v146 = 0;
                v147 = &v14->i8[v445];
                v148 = v14;
                v149 = v460;
                do
                {
                  v150 = v140;
                  v151 = v148;
                  v152 = v147;
                  do
                  {
                    v153 = v151->i32[0];
                    v151 = (v151 + bytesPerColumn);
                    v154 = *v152;
                    v152 = (v152 + bytesPerColumn);
                    *v149 = v153;
                    v149[1] = v154;
                    v149 += 2;
                    --v150;
                  }

                  while (v150);
                  v148 = (v148 + bytesPerRow);
                  v147 += bytesPerRow;
                  ++v146;
                }

                while (v146 != v141);
              }

              goto LABEL_491;
            }

            *&v479 = v14;
            *(&v479 + 1) = v141;
            *&v480 = v140;
            *(&v480 + 1) = bytesPerRow;
            v493 = v141;
            v494 = v480;
            v191 = &v14->i8[v445];
            v492 = &v14->i8[v445];
            v490 = v141;
            v491 = v480;
            v192 = &v14->i8[v445 + v445];
            v489 = v192;
            v487 = v141;
            v488 = v480;
            v193 = (v192 + v445);
            v482 = v460;
            v483 = v141;
            v484 = v140;
            v485 = v427;
            v486 = v192 + v445;
            if (bytesPerColumn == 4)
            {
              v465 = v14;
              if (qword_280AFEC90 == -1)
              {
                v194 = v450;
                v195 = off_280AFEC88;
                if (off_280AFEC88)
                {
                  goto LABEL_213;
                }

LABEL_488:
                free(v460);
                v14 = v465;
                v134 = v452;
                v144 = v453;
                v135 = v454;
                v136 = v455;
LABEL_489:
                v452 = v134;
                v453 = v144;
                v454 = v135;
                v455 = v136;
LABEL_490:
                v27 = bytesPerImage;
                goto LABEL_491;
              }

              dispatch_once(&qword_280AFEC90, &unk_284216EE0);
              v145 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              v194 = v450;
              v195 = off_280AFEC88;
              if (!off_280AFEC88)
              {
                goto LABEL_488;
              }

LABEL_213:
              v196 = v145;
              if (v145 < 4)
              {
                v198 = v460;
                v14 = v465;
                v197 = v465;
                v196 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              }

              else
              {
                do
                {
                  (v195)(&v479, &v492, &v489, &v486, &v482, 0);
                  v197 = (v194 + v479);
                  *&v479 = v194 + v479;
                  v191 = &v492[v194];
                  v492 += v194;
                  v192 = &v489[v194];
                  v489 += v194;
                  v486 += v194;
                  v198 = (v482 + v433);
                  v482 = (v482 + v433);
                  v196 -= 4;
                }

                while (v196 > 3);
                v14 = v465;
              }

              v140 = v461;
              v141 = v462;
              v134 = v452;
              v144 = v453;
              v135 = v454;
              v136 = v455;
            }

            else if (featureChannelInfo.numberOfFeatureChannelsToReadWrite < 4)
            {
              v198 = v460;
              v197 = v14;
              v196 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
            }

            else if (v141)
            {
              if (v140)
              {
                v196 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                v197 = v14;
                v198 = v460;
                do
                {
                  v222 = 0;
                  v223 = v197;
                  v224 = v198;
                  v225 = v193;
                  v226 = v192;
                  v227 = v191;
                  do
                  {
                    v228 = v140;
                    v229 = v225;
                    v133 = v226;
                    v230 = v227;
                    v231 = v223;
                    do
                    {
                      v232 = v231->i32[0];
                      v231 = (v231 + bytesPerColumn);
                      v233 = v230->i32[0];
                      v230 = (v230 + bytesPerColumn);
                      v234 = *v133;
                      v133 += bytesPerColumn;
                      v235 = *v229;
                      v229 = (v229 + bytesPerColumn);
                      *v224 = v232;
                      v224[1] = v233;
                      v224[2] = v234;
                      v224[3] = v235;
                      v224 += 4;
                      --v228;
                    }

                    while (v228);
                    v223 = (v223 + bytesPerRow);
                    v227 = (v227 + bytesPerRow);
                    v226 += bytesPerRow;
                    v225 = (v225 + bytesPerRow);
                    ++v222;
                  }

                  while (v222 != v141);
                  v197 = (v197 + v450);
                  v191 = (v191 + v450);
                  v192 = (v192 + v450);
                  v193 = (v193 + v450);
                  v198 = (v198 + v433);
                  v196 -= 4;
                }

                while (v196 > 3);
              }

              else
              {
                v191 = &v14->i8[v422];
                v196 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 3;
                v197 = &v14->i8[v423];
                v192 = &v14->i8[v445 + v422];
                v198 = v460;
              }
            }

            else
            {
              v192 = &v14->i8[v445];
              v198 = v460;
              v191 = v14;
              v197 = v14;
              v196 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 3;
            }

            if (v196 <= 1)
            {
              if (v196 && (v437 & 1) == 0)
              {
                v342 = 0;
                while (1)
                {
                  if (v140 >= 8 && (v198 >= (v197->i64 + v448) || v197 >= &v198[v434]))
                  {
                    v344 = &v198[v430];
                    v348 = (v198 + 8);
                    v349 = v197 + 1;
                    v350 = v461 & 0xFFFFFFFFFFFFFFF8;
                    do
                    {
                      v351 = v348 - 16;
                      v134 = v349[-1];
                      v501.val[0] = *v349;
                      v135 = v144;
                      v136 = v144;
                      v501.val[1] = v144;
                      v501.val[2] = v144;
                      v501.val[3] = v144;
                      vst4q_f32(v351, *v134.f32);
                      vst4q_f32(v348, v501);
                      v348 += 32;
                      v349 += 2;
                      v350 -= 8;
                    }

                    while (v350);
                    v343 = v461 & 0xFFFFFFFFFFFFFFF8;
                    if (v140 == v442)
                    {
                      goto LABEL_413;
                    }
                  }

                  else
                  {
                    v343 = 0;
                    v344 = v198;
                  }

                  v345 = v140 - v343;
                  v346 = &v197->i32[v343];
                  do
                  {
                    v347 = *v346++;
                    *v344 = v347;
                    v344[1] = 0;
                    v344 += 2;
                    --v345;
                  }

                  while (v345);
LABEL_413:
                  v197 = (v197 + bytesPerRow);
                  ++v342;
                  v198 = v344;
                  if (v342 == v141)
                  {
                    goto LABEL_489;
                  }
                }
              }

              goto LABEL_489;
            }

            if (v196 == 2)
            {
              if (v437)
              {
                goto LABEL_489;
              }

              v352 = 0;
              while (2)
              {
                if (v140 < 8)
                {
                  v353 = 0;
                  break;
                }

                v353 = 0;
                v362 = &v198[v434];
                v364 = v198 < (v191->i64 + v448) && v191 < v362;
                v365 = v197 >= v362 || v198 >= (v197->i64 + v448);
                if (v365 && !v364)
                {
                  v354 = &v198[v430];
                  v366 = (v198 + 8);
                  v367 = v197 + 1;
                  v368 = v191 + 1;
                  v369 = v461 & 0xFFFFFFFFFFFFFFF8;
                  do
                  {
                    v370 = v366 - 16;
                    v502.val[0] = v367[-1];
                    v510.val[0] = *v367;
                    v502.val[1] = v368[-1];
                    v510.val[1] = *v368;
                    v502.val[2] = v144;
                    v502.val[3] = v144;
                    v510.val[2] = v144;
                    v510.val[3] = v144;
                    vst4q_f32(v370, v502);
                    vst4q_f32(v366, v510);
                    v366 += 32;
                    v367 += 2;
                    v368 += 2;
                    v369 -= 8;
                  }

                  while (v369);
                  v353 = v461 & 0xFFFFFFFFFFFFFFF8;
                  if (v140 != v442)
                  {
LABEL_432:
                    v355 = v140 - v353;
                    v356 = 4 * v353;
                    v357 = &v191->i32[v353];
                    v358 = (v197 + v356);
                    do
                    {
                      v360 = *v358++;
                      v359 = v360;
                      v361 = *v357++;
                      *v354 = v359;
                      *(v354 + 1) = v361;
                      v354[1] = 0;
                      v354 += 2;
                      --v355;
                    }

                    while (v355);
                  }

                  v197 = (v197 + bytesPerRow);
                  v191 = (v191 + bytesPerRow);
                  ++v352;
                  v198 = v354;
                  if (v352 == v141)
                  {
                    goto LABEL_489;
                  }

                  continue;
                }

                break;
              }

              v354 = v198;
              goto LABEL_432;
            }

            if (v437)
            {
              goto LABEL_489;
            }

            v371 = 0;
            while (2)
            {
              if (v140 < 8)
              {
                v372 = 0;
                break;
              }

              v372 = 0;
              v384 = &v198[v434];
              v386 = v198 < (v191->i64 + v448) && v191 < v384;
              v388 = v198 < (v192->i64 + v448) && v192 < v384;
              v389 = v197 >= v384 || v198 >= (v197->i64 + v448);
              if (v389 && !v386 && !v388)
              {
                v373 = &v198[v430];
                v390 = (v198 + 8);
                v391 = v192 + 1;
                v392 = v197 + 1;
                v393 = v191 + 1;
                v394 = v461 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v395 = v390 - 16;
                  v503.val[0] = v392[-1];
                  v511.val[0] = *v392;
                  v503.val[1] = v393[-1];
                  v511.val[1] = *v393;
                  v503.val[2] = v391[-1];
                  v511.val[2] = *v391;
                  v503.val[3] = v144;
                  v511.val[3] = v144;
                  vst4q_f32(v395, v503);
                  vst4q_f32(v390, v511);
                  v390 += 32;
                  v391 += 2;
                  v392 += 2;
                  v393 += 2;
                  v394 -= 8;
                }

                while (v394);
                v372 = v461 & 0xFFFFFFFFFFFFFFF8;
                if (v140 != v442)
                {
LABEL_457:
                  v374 = v140 - v372;
                  v375 = 4 * v372;
                  v376 = &v192->i32[v372];
                  v377 = (v191 + v375);
                  v378 = (v197 + v375);
                  do
                  {
                    v380 = *v378++;
                    v379 = v380;
                    v382 = *v377++;
                    v381 = v382;
                    v383 = *v376++;
                    *v373 = v379;
                    *(v373 + 1) = v381;
                    v373[1] = v383;
                    v373 += 2;
                    --v374;
                  }

                  while (v374);
                }

                v197 = (v197 + bytesPerRow);
                v191 = (v191 + bytesPerRow);
                v192 = (v192 + bytesPerRow);
                ++v371;
                v198 = v373;
                if (v371 == v141)
                {
                  goto LABEL_489;
                }

                continue;
              }

              break;
            }

            v373 = v198;
            goto LABEL_457;
          }

LABEL_491:
          v396 = v14;
          if (v466 < aSelectora)
          {
            v397 = v466;
            v398 = v460;
            do
            {
              v400 = atomic_load_explicit(v474, memory_order_acquire);
              if (!v400)
              {
                MPSAutoTexture::AllocateTexture(v474, 0);
                v400 = atomic_load_explicit(v474, memory_order_acquire);
              }

              v399 = *&region->origin.z;
              v479 = *&region->origin.x;
              v480 = v399;
              v481 = *&region->size.height;
              objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v400, v133, &v479, 0, &v397[v476 * v457], v398, v472, v468, v419, featureChannelOffset, v421);
              v398 = (v398 + v470);
              ++v397;
            }

            while (v397 != aSelectora);
          }

          v14 = (v396 + v27);
          ++v476;
          v138 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
          v137 = v456;
          v140 = v461;
          v141 = v462;
          v134 = v452;
          v144 = v453;
          v135 = v454;
          v136 = v455;
          if (v476 >= region->size.depth + v459)
          {
            goto LABEL_505;
          }
        }

        if (v138 == 2)
        {
          if ((v437 & 1) == 0)
          {
            v164 = 0;
            v165 = &v14->i8[v445];
            v166 = v14;
            v167 = v460;
            do
            {
              v168 = v140;
              v169 = v166;
              v170 = v165;
              do
              {
                v171 = v169->i8[0];
                v169 = (v169 + bytesPerColumn);
                v172 = *v170;
                v170 += bytesPerColumn;
                *v167 = v171;
                v167[1] = v172;
                v167 += 2;
                --v168;
              }

              while (v168);
              v166 = (v166 + bytesPerRow);
              v165 += bytesPerRow;
              ++v164;
            }

            while (v164 != v141);
          }

          goto LABEL_491;
        }

        *&v479 = v14;
        *(&v479 + 1) = v141;
        *&v480 = v140;
        *(&v480 + 1) = bytesPerRow;
        v493 = v141;
        v494 = v480;
        v181 = &v14->i8[v445];
        v492 = &v14->i8[v445];
        v490 = v141;
        v491 = v480;
        v182 = &v14->i8[v445];
        v183 = &v14->i8[v445 + v445];
        v489 = v183;
        v487 = v141;
        v488 = v480;
        v184 = v183;
        v185 = &v183->i8[v445];
        v482 = v460;
        v483 = v141;
        v484 = v140;
        v485 = v425;
        v486 = &v183->i8[v445];
        if (bytesPerColumn == 1)
        {
          v464 = v14;
          if (qword_280AFEC90 == -1)
          {
            v186 = v450;
            v187 = off_280AFEC78;
            if (!off_280AFEC78)
            {
              goto LABEL_486;
            }
          }

          else
          {
            dispatch_once(&qword_280AFEC90, &unk_284216EE0);
            v138 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
            v186 = v450;
            v187 = off_280AFEC78;
            if (!off_280AFEC78)
            {
              goto LABEL_486;
            }
          }

          i = v138;
          if (v138 < 4)
          {
            v190 = v460;
            v14 = v464;
            v189 = v464;
            i = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
          }

          else
          {
            do
            {
              (v187)(&v479, &v492, &v489, &v486, &v482, 0);
              v189 = (v186 + v479);
              *&v479 = v186 + v479;
              v181 = &v492[v186];
              v492 += v186;
              v183 = &v489[v186];
              v489 += v186;
              v486 += v186;
              v190 = v482 + v431;
              v482 = (v482 + v431);
              i -= 4;
            }

            while (i > 3);
            v14 = v464;
          }

          v140 = v461;
          v141 = v462;
          v144 = v453;
        }

        else if (v138 < 4)
        {
          v190 = v460;
          v189 = v14;
          i = v138;
        }

        else if (v141)
        {
          if (v140)
          {
            v189 = v14;
            v190 = v460;
            for (i = v138; i > 3; i -= 4)
            {
              for (j = 0; j != v141; ++j)
              {
                v214 = v140;
                v215 = v185;
                v216 = v183;
                v217 = v181;
                v218 = v189;
                do
                {
                  v219 = v218->i8[0];
                  v218 = (v218 + bytesPerColumn);
                  v220 = v217->i8[0];
                  v217 = (v217 + bytesPerColumn);
                  v133 = v216->u8[0];
                  v216 = (v216 + bytesPerColumn);
                  v221 = *v215;
                  v215 += bytesPerColumn;
                  *v190 = v219;
                  v190[1] = v220;
                  v190[2] = v133;
                  v190[3] = v221;
                  v190 += 4;
                  --v214;
                }

                while (v214);
                v189 = (v189 + bytesPerRow);
                v181 = (v181 + bytesPerRow);
                v183 = (v183 + bytesPerRow);
                v185 += bytesPerRow;
              }

              v189 = (v450 + v479);
              *&v479 = v450 + v479;
              v181 = &v492[v450];
              v492 += v450;
              v183 = &v489[v450];
              v489 += v450;
              v185 = &v486[v450];
              v486 += v450;
              v190 = v482 + v431;
              v482 = (v482 + v431);
            }
          }

          else
          {
            v189 = &v14->i8[v423];
            v183 = &v182[v422];
            v181 = &v14->i8[v422];
            *&v479 = v14 + v423;
            v492 = &v14->i8[v422];
            v489 = &v182[v422];
            v486 = &v184->i8[v422];
            v190 = v460;
            i = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 3;
          }
        }

        else
        {
          *&v479 = v14;
          v492 = v14;
          v183 = &v14->i8[v445];
          v190 = v460;
          v489 = &v14->i8[v445];
          v181 = v14;
          v189 = v14;
          i = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 3;
          v486 = &v14->i8[v445 + v445];
        }

        if (i <= 1)
        {
          if (!i || (v437 & 1) != 0)
          {
            goto LABEL_490;
          }

          v290 = 0;
          while (1)
          {
            if (v140 >= 0x20 && (v190 >= &v189->i8[v140] || v189 >= &v190[v448]))
            {
              v292 = &v190[v428];
              v296 = v190 + 64;
              v297 = v189 + 1;
              v298 = v461 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v299 = v296 - 64;
                v498.val[0] = v297[-1];
                v507.val[0] = *v297;
                v498.val[1] = v144;
                v498.val[2] = v144;
                v498.val[3] = v144;
                v507.val[1] = v144;
                v507.val[2] = v144;
                v507.val[3] = v144;
                vst4q_s8(v299, v498);
                vst4q_s8(v296, v507);
                v296 += 128;
                v297 += 2;
                v298 -= 32;
              }

              while (v298);
              v291 = v461 & 0xFFFFFFFFFFFFFFE0;
              if (v140 == v439)
              {
                goto LABEL_338;
              }
            }

            else
            {
              v291 = 0;
              v292 = v190;
            }

            v293 = v140 - v291;
            v294 = &v189->i8[v291];
            do
            {
              v295 = *v294++;
              *v292 = v295;
              *(v292 + 1) = 0;
              v292[3] = 0;
              v292 += 4;
              --v293;
            }

            while (v293);
LABEL_338:
            v189 = (v189 + bytesPerRow);
            ++v290;
            v190 = v292;
            if (v290 == v141)
            {
              goto LABEL_490;
            }
          }
        }

        if (i == 2)
        {
          if (v437)
          {
            goto LABEL_490;
          }

          v300 = 0;
          while (1)
          {
            if (v140 >= 0x20)
            {
              v301 = 0;
              v309 = &v190[v448];
              v311 = v190 < &v181->i8[v140] && v181 < v309;
              v312 = v189 >= v309 || v190 >= &v189->i8[v140];
              if (v312 && !v311)
              {
                v302 = &v190[v428];
                v313 = v190 + 64;
                v314 = v189 + 1;
                v315 = v181 + 1;
                v316 = v461 & 0xFFFFFFFFFFFFFFE0;
                do
                {
                  v317 = v313 - 64;
                  v499.val[0] = v314[-1];
                  v508.val[0] = *v314;
                  v499.val[1] = v315[-1];
                  v508.val[1] = *v315;
                  v499.val[2] = v144;
                  v499.val[3] = v144;
                  v508.val[2] = v144;
                  v508.val[3] = v144;
                  vst4q_s8(v317, v499);
                  vst4q_s8(v313, v508);
                  v313 += 128;
                  v314 += 2;
                  v315 += 2;
                  v316 -= 32;
                }

                while (v316);
                v301 = v461 & 0xFFFFFFFFFFFFFFE0;
                if (v140 == v439)
                {
                  goto LABEL_353;
                }

                goto LABEL_357;
              }
            }

            else
            {
              v301 = 0;
            }

            v302 = v190;
LABEL_357:
            v303 = v140 - v301;
            v304 = &v181->i8[v301];
            v305 = &v189->i8[v301];
            do
            {
              v307 = *v305++;
              v306 = v307;
              v308 = *v304++;
              *v302 = v306;
              v302[1] = v308;
              *(v302 + 1) = 0;
              v302 += 4;
              --v303;
            }

            while (v303);
LABEL_353:
            v189 = (v189 + bytesPerRow);
            v181 = (v181 + bytesPerRow);
            ++v300;
            v190 = v302;
            if (v300 == v141)
            {
              goto LABEL_490;
            }
          }
        }

        if (v437)
        {
          goto LABEL_490;
        }

        v318 = 0;
        while (1)
        {
          if (v140 >= 0x20)
          {
            v319 = 0;
            v330 = &v190[v448];
            v332 = v190 < &v181->i8[v140] && v181 < v330;
            v334 = v190 < &v183->i8[v140] && v183 < v330;
            v335 = v189 >= v330 || v190 >= &v189->i8[v140];
            if (v335 && !v332 && !v334)
            {
              v320 = &v190[v428];
              v336 = v190 + 64;
              v337 = v183 + 1;
              v338 = v189 + 1;
              v339 = v181 + 1;
              v340 = v461 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v341 = v336 - 64;
                v500.val[0] = v338[-1];
                v509.val[0] = *v338;
                v500.val[1] = v339[-1];
                v509.val[1] = *v339;
                v500.val[2] = v337[-1];
                v509.val[2] = *v337;
                v500.val[3] = v144;
                v509.val[3] = v144;
                vst4q_s8(v341, v500);
                vst4q_s8(v336, v509);
                v336 += 128;
                v337 += 2;
                v338 += 2;
                v339 += 2;
                v340 -= 32;
              }

              while (v340);
              v319 = v461 & 0xFFFFFFFFFFFFFFE0;
              if (v140 == v439)
              {
                goto LABEL_378;
              }

              goto LABEL_382;
            }
          }

          else
          {
            v319 = 0;
          }

          v320 = v190;
LABEL_382:
          v321 = v140 - v319;
          v322 = &v183->i8[v319];
          v323 = &v181->i8[v319];
          v324 = &v189->i8[v319];
          do
          {
            v326 = *v324++;
            v325 = v326;
            v328 = *v323++;
            v327 = v328;
            v329 = *v322++;
            *v320 = v325;
            v320[1] = v327;
            v320[2] = v329;
            v320[3] = 0;
            v320 += 4;
            --v321;
          }

          while (v321);
LABEL_378:
          v189 = (v189 + bytesPerRow);
          v181 = (v181 + bytesPerRow);
          v183 = (v183 + bytesPerRow);
          ++v318;
          v190 = v320;
          if (v318 == v141)
          {
            goto LABEL_490;
          }
        }
      }
    }

LABEL_509:
    free(v460);
    return;
  }

  if (dataLayout == MPSDataLayoutHeightxWidthxFeatureChannels)
  {
    v29 = self->_featureChannels;
    if (v29 == 3 || v29 > 4 || ((v28 - 1) & (bytesPerImage | bytesPerRow)) != 0)
    {
      v471 = v28 * width;
      v475 = v28 * width * height;
      v469 = v457 * v475;
      v460 = malloc_type_malloc(v457 * v475, 0x65299B3EuLL);
      if (!v460)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v417 = objc_opt_class();
          v419 = NSStringFromClass(v417);
          MTLReportFailure();
        }

        v460 = 0;
      }

      v451 = 1;
      width = v461;
      height = v462;
      if (v459 < region->size.depth + v459)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v451 = 0;
      v460 = v14;
      v469 = bytesPerImage;
      v471 = bytesPerRow;
      if (v459 < region->size.depth + v459)
      {
LABEL_28:
        v473 = &self->_texture;
        v30 = featureChannels * width;
        v31 = 4 * featureChannels * width;
        v449 = v31 * height;
        v436 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 7;
        if (width)
        {
          v32 = height == 0;
        }

        else
        {
          v32 = 1;
        }

        v33 = v32;
        v438 = v33;
        v34 = 2 * v30;
        v447 = 2 * v30 * height;
        v443 = 2 * v31 * height;
        v446 = v30 * height;
        v440 = 2 * v30 * height;
        v467 = v459;
        while (1)
        {
          if (v451)
          {
            if (v456 == 4)
            {
              v71 = v460;
              v72 = v14;
              v73 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              if (featureChannelInfo.numberOfFeatureChannelsToReadWrite < 8)
              {
                goto LABEL_81;
              }

              if (height && width)
              {
                v73 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                v72 = v14;
                v71 = v460;
                do
                {
                  v74 = 0;
                  v75 = (v71 + v449);
                  v76 = v72;
                  v77 = v71;
                  do
                  {
                    v78 = v77;
                    v79 = v75;
                    v80 = width;
                    v81 = v76;
                    do
                    {
                      v82 = v81[1];
                      *v78++ = *v81;
                      *v79++ = v82;
                      v81 = (v81 + bytesPerColumn);
                      --v80;
                    }

                    while (v80);
                    v76 = (v76 + bytesPerRow);
                    v77 = (v77 + v31);
                    v75 = (v75 + v31);
                    ++v74;
                  }

                  while (v74 != height);
                  v73 -= 8;
                  v72 += 32;
                  v71 = (v71 + v443);
                }

                while (v73 > 7);
LABEL_81:
                if (v73 > 3)
                {
                  if ((v438 & 1) == 0)
                  {
                    v83 = 0;
                    v84 = v71;
                    v85 = v72;
                    do
                    {
                      v86 = v84;
                      v87 = width;
                      v88 = v85;
                      do
                      {
                        *v86++ = *v88;
                        v88 = (v88 + bytesPerColumn);
                        --v87;
                      }

                      while (v87);
                      v85 = (v85 + bytesPerRow);
                      v84 = (v84 + v31);
                      ++v83;
                    }

                    while (v83 != height);
                  }

LABEL_100:
                  v73 -= 4;
                  v72 += 16;
                  v71 = (v71 + v449);
                }
              }

              else
              {
                v72 = &v14->i8[(4 * featureChannelInfo.numberOfFeatureChannelsToReadWrite) & 0xFFFFFFFFFFFFFFE0];
                v71 = v460;
                v73 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 7;
                if (v436 > 3)
                {
                  goto LABEL_100;
                }
              }

              if (v73 == 1)
              {
                if ((v438 & 1) == 0)
                {
                  v120 = 0;
                  do
                  {
                    v121 = v71;
                    v122 = width;
                    v123 = v72;
                    do
                    {
                      *v121 = *v123;
                      v121[1] = 0;
                      v123 = (v123 + bytesPerColumn);
                      v121 += 2;
                      --v122;
                    }

                    while (v122);
                    v72 += bytesPerRow;
                    v71 = (v71 + v31);
                    ++v120;
                  }

                  while (v120 != height);
                }
              }

              else if (v73 == 2)
              {
                if ((v438 & 1) == 0)
                {
                  v112 = 0;
                  do
                  {
                    v113 = v71 + 1;
                    v114 = width;
                    v115 = v72;
                    do
                    {
                      *(v113 - 1) = *v115;
                      *v113 = 0;
                      v113 += 2;
                      v115 = (v115 + bytesPerColumn);
                      --v114;
                    }

                    while (v114);
                    v72 += bytesPerRow;
                    v71 = (v71 + v31);
                    ++v112;
                  }

                  while (v112 != height);
                }
              }

              else if (v73 == 3 && (v438 & 1) == 0)
              {
                v94 = 0;
                do
                {
                  v95 = v71 + 12;
                  v96 = width;
                  v97 = v72;
                  do
                  {
                    v98 = v97[2];
                    *(v95 - 12) = *v97;
                    *(v95 - 4) = v98;
                    v97 = (v97 + bytesPerColumn);
                    v95 += 16;
                    --v96;
                  }

                  while (v96);
                  v72 += bytesPerRow;
                  v71 = (v71 + v31);
                  ++v94;
                }

                while (v94 != height);
              }

              goto LABEL_156;
            }

            if (v456 == 2)
            {
              v53 = v460;
              v54 = v14;
              v55 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
              if (featureChannelInfo.numberOfFeatureChannelsToReadWrite < 8)
              {
                goto LABEL_65;
              }

              if (height && width)
              {
                v55 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
                v54 = v14;
                v53 = v460;
                do
                {
                  v56 = 0;
                  v57 = (v53 + v447);
                  v58 = v54;
                  v59 = v53;
                  do
                  {
                    v60 = v59;
                    v61 = v57;
                    v62 = width;
                    v63 = v58;
                    do
                    {
                      v64 = v63[1];
                      *v60++ = *v63;
                      *v61++ = v64;
                      v63 = (v63 + bytesPerColumn);
                      --v62;
                    }

                    while (v62);
                    v58 = (v58 + bytesPerRow);
                    v59 = (v59 + v34);
                    v57 = (v57 + v34);
                    ++v56;
                  }

                  while (v56 != height);
                  v55 -= 8;
                  v54 += 16;
                  v53 += v447;
                }

                while (v55 > 7);
LABEL_65:
                if (v55 > 3)
                {
                  if ((v438 & 1) == 0)
                  {
                    v65 = 0;
                    v66 = v53;
                    v67 = v54;
                    do
                    {
                      v68 = v66;
                      v69 = width;
                      v70 = v67;
                      do
                      {
                        *v68++ = *v70;
                        v70 = (v70 + bytesPerColumn);
                        --v69;
                      }

                      while (v69);
                      v67 = (v67 + bytesPerRow);
                      v66 = (v66 + v34);
                      ++v65;
                    }

                    while (v65 != height);
                  }

LABEL_89:
                  v55 -= 4;
                  v54 += 8;
                  v53 = (v53 + v447);
                }
              }

              else
              {
                v54 = &v14->i8[(2 * featureChannelInfo.numberOfFeatureChannelsToReadWrite) & 0xFFFFFFFFFFFFFFF0];
                v53 = v460;
                v55 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 7;
                if (v436 > 3)
                {
                  goto LABEL_89;
                }
              }

              if (v55 == 1)
              {
                if ((v438 & 1) == 0)
                {
                  v108 = 0;
                  do
                  {
                    v109 = v53 + 2;
                    v110 = width;
                    v111 = v54;
                    do
                    {
                      *(v109 - 2) = *v111;
                      *(v109 - 1) = 0;
                      v109[1] = 0;
                      v111 = (v111 + bytesPerColumn);
                      v109 += 4;
                      --v110;
                    }

                    while (v110);
                    v54 += bytesPerRow;
                    v53 = (v53 + v34);
                    ++v108;
                  }

                  while (v108 != height);
                }
              }

              else if (v55 == 2)
              {
                if ((v438 & 1) == 0)
                {
                  v104 = 0;
                  do
                  {
                    v105 = v53 + 2;
                    v106 = width;
                    v107 = v54;
                    do
                    {
                      *(v105 - 2) = *v107;
                      v107 = (v107 + bytesPerColumn);
                      v105 += 4;
                      --v106;
                    }

                    while (v106);
                    v54 += bytesPerRow;
                    v53 = (v53 + v34);
                    ++v104;
                  }

                  while (v104 != height);
                }
              }

              else if (v55 == 3 && (v438 & 1) == 0)
              {
                v89 = 0;
                do
                {
                  v90 = v53 + 2;
                  v91 = width;
                  v92 = v54;
                  do
                  {
                    v93 = *(v92 + 2);
                    *(v90 - 1) = *v92;
                    *v90 = v93;
                    v92 += bytesPerColumn;
                    v90 += 2;
                    --v91;
                  }

                  while (v91);
                  v54 += bytesPerRow;
                  v53 = (v53 + v34);
                  ++v89;
                }

                while (v89 != height);
              }

              goto LABEL_156;
            }

            if (v456 == 1)
            {
              break;
            }
          }

LABEL_156:
          v463 = v14;
          if (v466 < aSelectora)
          {
            v128 = v466;
            v129 = v460;
            do
            {
              v131 = atomic_load_explicit(v473, memory_order_acquire);
              if (!v131)
              {
                MPSAutoTexture::AllocateTexture(v473, 0);
                v131 = atomic_load_explicit(v473, memory_order_acquire);
              }

              v130 = *&region->origin.z;
              v479 = *&region->origin.x;
              v480 = v130;
              v481 = *&region->size.height;
              objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v131, v17, &v479, 0, &v128[v467 * v457], v129, v471, v469, v419, featureChannelOffset, v421);
              v129 = (v129 + v475);
              ++v128;
            }

            while (v128 != aSelectora);
          }

          height = v462;
          v14 = (v463 + bytesPerImage);
          ++v467;
          width = v461;
          if (v467 >= region->size.depth + v459)
          {
            goto LABEL_508;
          }
        }

        v35 = v460;
        v36 = v14;
        v37 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
        if (featureChannelInfo.numberOfFeatureChannelsToReadWrite >= 8)
        {
          if (!height || !width)
          {
            v36 = &v14->i8[featureChannelInfo.numberOfFeatureChannelsToReadWrite & 0xFFFFFFFFFFFFFFF8];
            v35 = v460;
            v37 = featureChannelInfo.numberOfFeatureChannelsToReadWrite & 7;
            if (v436 <= 3)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          v37 = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
          v36 = v14;
          v35 = v460;
          do
          {
            v38 = 0;
            v39 = (v35 + v446);
            v40 = v36;
            v41 = v35;
            do
            {
              v42 = v41;
              v43 = v39;
              v44 = width;
              v45 = v40;
              do
              {
                v17 = *v45;
                v46 = v45[1];
                *v42++ = v17;
                *v43++ = v46;
                v45 = (v45 + bytesPerColumn);
                --v44;
              }

              while (v44);
              v40 = (v40 + bytesPerRow);
              v41 = (v41 + v30);
              v39 = (v39 + v30);
              ++v38;
            }

            while (v38 != height);
            v37 -= 8;
            v36 += 8;
            v35 = (v35 + v440);
          }

          while (v37 > 7);
        }

        if (v37 <= 3)
        {
          goto LABEL_112;
        }

        if ((v438 & 1) == 0)
        {
          v47 = 0;
          v48 = v35;
          v49 = v36;
          do
          {
            v50 = v48;
            v51 = width;
            v52 = v49;
            do
            {
              *v50++ = *v52;
              v52 = (v52 + bytesPerColumn);
              --v51;
            }

            while (v51);
            v49 = (v49 + bytesPerRow);
            v48 = (v48 + v30);
            ++v47;
          }

          while (v47 != height);
        }

LABEL_111:
        v37 -= 4;
        v36 += 4;
        v35 = (v35 + v446);
LABEL_112:
        if (v37 == 1)
        {
          if ((v438 & 1) == 0)
          {
            v124 = 0;
            do
            {
              v125 = v35 + 3;
              v126 = width;
              v127 = v36;
              do
              {
                *(v125 - 3) = *v127;
                *(v125 - 1) = 0;
                *v125 = 0;
                v125 += 4;
                v127 += bytesPerColumn;
                --v126;
              }

              while (v126);
              v36 += bytesPerRow;
              v35 = (v35 + v30);
              ++v124;
            }

            while (v124 != height);
          }
        }

        else if (v37 == 2)
        {
          if ((v438 & 1) == 0)
          {
            v116 = 0;
            do
            {
              v117 = v35 + 3;
              v118 = width;
              v119 = v36;
              do
              {
                *(v117 - 3) = *v119;
                v119 = (v119 + bytesPerColumn);
                v117 += 4;
                --v118;
              }

              while (v118);
              v36 += bytesPerRow;
              v35 = (v35 + v30);
              ++v116;
            }

            while (v116 != height);
          }
        }

        else if (v37 == 3 && (v438 & 1) == 0)
        {
          v99 = 0;
          do
          {
            v100 = v35 + 3;
            v101 = width;
            v102 = v36;
            do
            {
              v103 = *(v102 + 2);
              *(v100 - 3) = *v102;
              *(v100 - 1) = v103;
              v100 += 4;
              v102 = (v102 + bytesPerColumn);
              --v101;
            }

            while (v101);
            v36 += bytesPerRow;
            v35 = (v35 + v30);
            ++v99;
          }

          while (v99 != height);
        }

        goto LABEL_156;
      }
    }

LABEL_508:
    if (v451)
    {
      goto LABEL_509;
    }
  }
}

- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout bytesPerRow:(NSUInteger)bytesPerRow region:(MTLRegion *)region featureChannelInfo:(MPSImageReadWriteParams)featureChannelInfo imageIndex:(NSUInteger)imageIndex
{
  height = region->size.height;
  if (dataLayout == MPSDataLayoutFeatureChannelsxHeightxWidth)
  {
    numberOfFeatureChannelsToReadWrite = featureChannelInfo.numberOfFeatureChannelsToReadWrite;
  }

  else
  {
    numberOfFeatureChannelsToReadWrite = 1;
  }

  v10 = *&region->origin.z;
  v11[0] = *&region->origin.x;
  v11[1] = v10;
  v11[2] = *&region->size.height;
  objc_msgSend_writeBytes_dataLayout_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(self, a2, dataBytes, dataLayout, bytesPerRow, numberOfFeatureChannelsToReadWrite * bytesPerRow * height, v11, featureChannelInfo.featureChannelOffset, featureChannelInfo.numberOfFeatureChannelsToReadWrite, imageIndex);
}

- (void)readBytes:(void *)dataBytes dataLayout:(MPSDataLayout)dataLayout imageIndex:(NSUInteger)imageIndex
{
  PixelChannelSize = objc_msgSend_getPixelChannelSize(self, a2, dataBytes, dataLayout, imageIndex);
  if (dataLayout == MPSDataLayoutFeatureChannelsxHeightxWidth)
  {
    featureChannels = 1;
  }

  else
  {
    featureChannels = self->_featureChannels;
  }

  memset(v12, 0, sizeof(v12));
  v13 = *&self->_width;
  v14 = 1;
  objc_msgSend_readBytes_dataLayout_bytesPerRow_region_featureChannelInfo_imageIndex_(self, v10, dataBytes, dataLayout, v13 * PixelChannelSize * featureChannels, v12, 0, imageIndex);
}

- (void)writeBytes:(const void *)dataBytes dataLayout:(MPSDataLayout)dataLayout imageIndex:(NSUInteger)imageIndex
{
  PixelChannelSize = objc_msgSend_getPixelChannelSize(self, a2, dataBytes, dataLayout, imageIndex);
  width = self->_width;
  height = self->_height;
  featureChannels = self->_featureChannels;
  if (dataLayout == MPSDataLayoutFeatureChannelsxHeightxWidth)
  {
    v14 = 1;
  }

  else
  {
    v14 = self->_featureChannels;
  }

  memset(v15, 0, 24);
  v15[3] = width;
  v15[4] = height;
  v15[5] = 1;
  objc_msgSend_writeBytes_dataLayout_bytesPerRow_bytesPerImage_region_featureChannelInfo_imageIndex_(self, v10, dataBytes, dataLayout, width * PixelChannelSize * v14, height * width * PixelChannelSize * v14, v15, 0, featureChannels, imageIndex);
}

- (NSUInteger)resourceSize
{
  result = self->_texture._resourceSize.size;
  if (result == -1)
  {
    return MPSAutoTexture::GetResourceSize_Private(&self->_texture, 0, v2, v3, v4);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 16) = 0;
  atomic_store(0, self + 12);
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 136) = 0uLL;
  *(self + 76) = 0;
  return self;
}

@end