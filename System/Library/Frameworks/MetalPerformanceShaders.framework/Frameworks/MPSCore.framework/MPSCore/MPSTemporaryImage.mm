@interface MPSTemporaryImage
+ (MPSTemporaryImage)temporaryImageWithCommandBuffer:(id)commandBuffer imageDescriptor:(const MPSImageDescriptor *)imageDescriptor;
+ (MPSTemporaryImage)temporaryImageWithCommandBuffer:(id)commandBuffer textureDescriptor:(const MTLTextureDescriptor *)textureDescriptor;
+ (MPSTemporaryImage)temporaryImageWithCommandBuffer:(id)commandBuffer textureDescriptor:(const MTLTextureDescriptor *)textureDescriptor featureChannels:(NSUInteger)featureChannels;
+ (id)defaultAllocator;
+ (void)prefetchStorageWithCommandBuffer:(id)commandBuffer imageDescriptorList:(NSArray *)descriptorList;
- (MPSTemporaryImage)initWithParentImage:(id)image sliceRange:(_NSRange)range featureChannels:(unint64_t)channels;
- (id)debugDescription;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)dealloc;
- (void)readBytes:(void *)bytes dataLayout:(unint64_t)layout bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image region:(id *)region featureChannelInfo:(id)info imageIndex:(unint64_t)index;
- (void)setReadCount:(NSUInteger)readCount;
- (void)synchronizeOnCommandBuffer:(id)buffer;
- (void)writeBytes:(const void *)bytes dataLayout:(unint64_t)layout bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image region:(id *)region featureChannelInfo:(id)info imageIndex:(unint64_t)index;
@end

@implementation MPSTemporaryImage

+ (id)defaultAllocator
{
  result = atomic_load_explicit(&qword_280AFEB80, memory_order_acquire);
  if (!result)
  {
    result = objc_alloc_init(MPSTemporaryImageDefaultAllocator);
    v3 = 0;
    atomic_compare_exchange_strong_explicit(&qword_280AFEB80, &v3, result, memory_order_release, memory_order_relaxed);
    if (v3)
    {
      *(result + 2) = 1;

      return atomic_load_explicit(&qword_280AFEB80, memory_order_acquire);
    }
  }

  return result;
}

+ (MPSTemporaryImage)temporaryImageWithCommandBuffer:(id)commandBuffer imageDescriptor:(const MPSImageDescriptor *)imageDescriptor
{
  if (!imageDescriptor)
  {
    selfCopy5 = self;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!imageDescriptor->_width)
  {
    selfCopy5 = self;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!imageDescriptor->_height)
  {
    selfCopy5 = self;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!imageDescriptor->_featureChannels)
  {
    selfCopy5 = self;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!imageDescriptor->_numberOfImages)
  {
    selfCopy5 = self;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_22:
      v43 = objc_opt_class();
      NSStringFromClass(v43);
      MTLReportFailure();
    }

LABEL_23:

    return 0;
  }

  v7 = objc_msgSend_newTextureDescriptor(imageDescriptor, a2, commandBuffer, imageDescriptor, v4);
  objc_msgSend_setStorageMode_(v7, v8, 2, v9, v10);
  if (!v7)
  {
    return 0;
  }

  v11 = [MPSTemporaryImage alloc];
  featureChannels = imageDescriptor->_featureChannels;
  featureChannelsLayout = imageDescriptor->_featureChannelsLayout;
  featureChannelFormat = imageDescriptor->_featureChannelFormat;
  v19 = objc_msgSend_device(commandBuffer, v15, v16, v17, v18);
  v21 = objc_msgSend_initWithDescriptor_featureChannels_featureChannelsLayout_featureChannelFormat_onDevice_(v11, v20, v7, featureChannels, featureChannelsLayout, featureChannelFormat, v19);
  if (!v21)
  {

    return 0;
  }

  v22 = v21;
  *(v21 + 168) = 1;
  MPSAutoTexture::InitDeferredUsingTextureCache(v21 + 96, v7, commandBuffer, *(v21 + 48), 0);

  v27 = objc_msgSend_userDictionary(commandBuffer, v23, v24, v25, v26);
  v31 = objc_msgSend_objectForKey_(v27, v28, @"_MPSCommandBufferRetainListKey", v29, v30);
  if (!v31)
  {
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setObject_forKey_(v27, v36, v35, @"_MPSCommandBufferRetainListKey", v37);

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_22E2F18FC;
    v44[3] = &unk_2787BE7E8;
    v44[4] = @"_MPSCommandBufferRetainListKey";
    objc_msgSend_addCompletedHandler_(commandBuffer, v38, v44, v39, v40);
    v31 = v35;
  }

  objc_msgSend_addObject_(v31, v32, v22, v33, v34);
  return v22;
}

+ (MPSTemporaryImage)temporaryImageWithCommandBuffer:(id)commandBuffer textureDescriptor:(const MTLTextureDescriptor *)textureDescriptor
{
  v8 = objc_msgSend_pixelFormat(textureDescriptor, a2, commandBuffer, textureDescriptor, v4);
  v13 = objc_msgSend_device(commandBuffer, v9, v10, v11, v12);
  MPSDevice = MPSDevice::GetMPSDevice(v13);
  PixelInfo = MPSDevice::GetPixelInfo(MPSDevice, v8, MPSImageFeatureChannelFormatNone);
  if ((PixelInfo & 0x800000000000) != 0)
  {

    return MEMORY[0x2821F9670](self, sel_temporaryImageWithCommandBuffer_textureDescriptor_featureChannels_, commandBuffer, textureDescriptor, (PixelInfo >> 24) & 0xF);
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v16 = objc_opt_class();
      NSStringFromClass(v16);
      MTLReportFailure();
    }

    return 0;
  }
}

+ (MPSTemporaryImage)temporaryImageWithCommandBuffer:(id)commandBuffer textureDescriptor:(const MTLTextureDescriptor *)textureDescriptor featureChannels:(NSUInteger)featureChannels
{
  if (!commandBuffer)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (!textureDescriptor)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  objc_msgSend_width(textureDescriptor, a2, commandBuffer, textureDescriptor, featureChannels);
  if (!objc_msgSend_width(textureDescriptor, v9, v10, v11, v12))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  objc_msgSend_height(textureDescriptor, v13, v14, v15, v16);
  if (!objc_msgSend_height(textureDescriptor, v17, v18, v19, v20))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  objc_msgSend_arrayLength(textureDescriptor, v21, v22, v23, v24);
  if (!objc_msgSend_arrayLength(textureDescriptor, v25, v26, v27, v28))
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  objc_msgSend_storageMode(textureDescriptor, v29, v30, v31, v32);
  if ((objc_msgSend_storageMode(textureDescriptor, v33, v34, v35, v36) & 2) == 0 && MTLReportFailureTypeEnabled())
  {
    v83 = objc_opt_class();
    v85 = NSStringFromClass(v83);
    MTLReportFailure();
  }

  objc_msgSend_setStorageMode_(textureDescriptor, v37, 2, v38, v39, v85);
  v44 = objc_msgSend_pixelFormat(textureDescriptor, v40, v41, v42, v43);
  v49 = objc_msgSend_device(commandBuffer, v45, v46, v47, v48);
  MPSDevice = MPSDevice::GetMPSDevice(v49);
  if ((MPSDevice::GetPixelInfo(MPSDevice, v44, MPSImageFeatureChannelFormatNone) & 0x800000000000) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_29:
      v84 = objc_opt_class();
      NSStringFromClass(v84);
      MTLReportFailure();
    }

LABEL_30:

    return 0;
  }

  result = objc_msgSend_copyWithZone_(textureDescriptor, v51, 0, v52, v53);
  if (!result)
  {
    return result;
  }

  v55 = result;
  v56 = [MPSTemporaryImage alloc];
  v61 = objc_msgSend_device(commandBuffer, v57, v58, v59, v60);
  v63 = objc_msgSend_initWithDescriptor_featureChannels_featureChannelsLayout_featureChannelFormat_onDevice_(v56, v62, v55, featureChannels, 0, 0, v61);
  if (!v63)
  {

    return 0;
  }

  v64 = v63;
  *(v63 + 168) = 1;
  MPSAutoTexture::InitDeferredUsingTextureCache(v63 + 96, v55, commandBuffer, *(v63 + 48), 0);

  v69 = objc_msgSend_userDictionary(commandBuffer, v65, v66, v67, v68);
  v73 = objc_msgSend_objectForKey_(v69, v70, @"_MPSCommandBufferRetainListKey", v71, v72);
  if (!v73)
  {
    v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setObject_forKey_(v69, v78, v77, @"_MPSCommandBufferRetainListKey", v79);

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_22E2F18FC;
    v86[3] = &unk_2787BE7E8;
    v86[4] = @"_MPSCommandBufferRetainListKey";
    objc_msgSend_addCompletedHandler_(commandBuffer, v80, v86, v81, v82);
    v73 = v77;
  }

  objc_msgSend_addObject_(v73, v74, v64, v75, v76);
  return v64;
}

+ (void)prefetchStorageWithCommandBuffer:(id)commandBuffer imageDescriptorList:(NSArray *)descriptorList
{
  v5 = descriptorList;
  v7 = objc_msgSend_device(commandBuffer, a2, commandBuffer, descriptorList, v4);
  MPSDevice = MPSDevice::GetMPSDevice(v7);
  v13 = objc_msgSend_count(v5, v9, v10, v11, v12);
  if (v13 >= 3)
  {
    v17 = v13;
    v89 = commandBuffer;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v90 = v5;
    for (i = objc_msgSend_objectAtIndexedSubscript_(v5, v14, 0, v15, v16); ; i = objc_msgSend_objectAtIndexedSubscript_(v5, v28, v19, v29, v30))
    {
      v33 = objc_msgSend_newTextureDescriptor(i, v22, v23, v24, v25);
      objc_msgSend_storageMode(v33, v34, v35, v36, v37);
      if (objc_msgSend_storageMode(v33, v38, v39, v40, v41) != 2 && MTLReportFailureTypeEnabled())
      {
        v87 = objc_opt_class();
        v88 = NSStringFromClass(v87);
        MTLReportFailure();
      }

      if ((objc_msgSend_setStorageMode_(v33, v42, 2, v43, v44, v88), v49 = (*(*MPSDevice + 64))(MPSDevice, v33), (*(MPSDevice + 1477) & 4) == 0) && (objc_msgSend_usage(v33, v45, v46, v47, v48) & 2) != 0 || (v50 = objc_msgSend_pixelFormat(v33, v45, v46, v47, v48), (MPSDevice::GetPixelInfo(MPSDevice, v50, MPSImageFeatureChannelFormatNone) & 0x1000000000000) != 0) || (objc_msgSend_textureType(v33, v51, v52, v53, v54) & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v26 = (*(*MPSDevice + 64))(MPSDevice, v33);
      }

      else
      {
        v59 = objc_msgSend_pixelFormat(v33, v55, v56, v57, v58);
        PixelInfo = MPSDevice::GetPixelInfo(MPSDevice, v59, MPSImageFeatureChannelFormatNone);
        v65 = objc_msgSend_width(v33, v61, v62, v63, v64);
        v70 = objc_msgSend_height(v33, v66, v67, v68, v69);
        objc_msgSend_depth(v33, v71, v72, v73, v74);
        v75 = (PixelInfo >> 16) & 0xF;
        v76 = v75 == 1 ? v65 : (v65 + v75 - 1) / v75;
        v77 = (PixelInfo >> 20) & 0xF;
        v78 = v77 == 1;
        v79 = (v77 + v70 - 1) / v77;
        v80 = v78 ? v70 : v79;
        v81 = ((1 << ((PixelInfo >> 55) & 0xF)) + v76 * (PixelInfo >> 10) - 1) & -(1 << ((PixelInfo >> 55) & 0xF));
        v82 = (*(*MPSDevice + 32))(MPSDevice);
        v83 = (*(*MPSDevice + 40))(MPSDevice);
        v84 = *MEMORY[0x277D85FA0] + v80 * v81;
        v5 = v90;
        v26 = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(*(MPSDevice + 16), v85, (v84 - 1) & -*MEMORY[0x277D85FA0], v83 | (16 * v82), v86);
      }

      if (v26 <= v49)
      {
        v27 = v49;
      }

      else
      {
        v27 = v26;
      }

      if (v27 >= v18)
      {
        v31 = v18;
      }

      else
      {
        v31 = v27;
      }

      if (v27 <= v18)
      {
        v32 = v18;
      }

      else
      {
        v32 = v27;
      }

      if (v27 > v20)
      {
        v20 = v31;
        v18 = v32;
      }

      if (v17 == ++v19)
      {
        break;
      }
    }

    if (v20)
    {

      MPSAutoCache::WarmAllocations(v89, v18, v18, v29, v30);
    }
  }
}

- (MPSTemporaryImage)initWithParentImage:(id)image sliceRange:(_NSRange)range featureChannels:(unint64_t)channels
{
  v42.receiver = self;
  v42.super_class = MPSTemporaryImage;
  channels = [(MPSImage *)&v42 initWithParentImage:image sliceRange:range.location featureChannels:range.length, channels];
  if (channels)
  {
    Count = objc_msgSend_readCount(image, v6, v7, v8, v9);
    objc_msgSend_setReadCount_(image, v12, Count + 1, v13, v14);
    channels->_readCount = 1;
    channels->super._updatedAlready = 0;
    type = channels->super._texture._type;
    if ((type & 1) == 0)
    {
      goto LABEL_9;
    }

    p_texture = &channels->super._texture;
    while (type == 3)
    {
      p_texture = p_texture->var0._subTex.parent;
      type = p_texture->_type;
      if ((type & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (type == 1)
    {
      v21 = objc_msgSend_commandBuffer(p_texture->var0.var0.var0._tex.device, v15, v16, v17, v18);
      v26 = objc_msgSend_userDictionary(v21, v22, v23, v24, v25);
    }

    else
    {
LABEL_9:
      v21 = 0;
      v26 = objc_msgSend_userDictionary(0, v15, v16, v17, v18);
    }

    v30 = v26;
    v31 = objc_msgSend_objectForKey_(v26, v27, @"_MPSCommandBufferRetainListKey", v28, v29);
    if (!v31)
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v30, v36, v35, @"_MPSCommandBufferRetainListKey", v37);

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_22E2F18FC;
      v43[3] = &unk_2787BE7E8;
      v43[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(v21, v38, v43, v39, v40);
      v31 = v35;
    }

    objc_msgSend_addObject_(v31, v32, channels, v33, v34);
  }

  return channels;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  if (state != 1)
  {
    selfCopy = self;
    v7 = MTLReportFailureTypeEnabled();
    self = selfCopy;
    if (v7)
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
      self = selfCopy;
    }
  }

  result = atomic_load_explicit(&self->super._texture, memory_order_acquire);
  if (result)
  {

    return objc_msgSend_setPurgeableState_(result, a2, 1, v3, v4);
  }

  return result;
}

- (void)setReadCount:(NSUInteger)readCount
{
  v3 = self->_readCount;
  if (v3 != readCount)
  {
    if (!v3)
    {
      selfCopy = self;
      v7 = readCount;
      v8 = MTLReportFailureTypeEnabled();
      readCount = v7;
      v12 = v8;
      self = selfCopy;
      if (v12)
      {
        objc_msgSend_label(selfCopy, v9, v7, v10, v11);
        MTLReportFailure();
        readCount = v7;
        self = selfCopy;
      }
    }

    self->_readCount = readCount;
    if (!readCount)
    {
      selfCopy2 = self;
      MPSAutoTexture::ReleaseTemporaryTexture(&self->super._texture);
      parent = selfCopy2->super._parent;
      if (parent)
      {

        MPSDecrementReadCount(parent);
      }
    }
  }
}

- (void)dealloc
{
  if (self->_readCount)
  {
    selfCopy = self;
    v7 = MTLReportFailureTypeEnabled();
    self = selfCopy;
    if (v7)
    {
      v8 = selfCopy;
      v9 = objc_msgSend_label(selfCopy, v3, v4, v5, v6);
      MTLReportFailure();
      self = selfCopy;
    }
  }

  v10.receiver = self;
  v10.super_class = MPSTemporaryImage;
  [(MPSImage *)&v10 dealloc:v8];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSTemporaryImage;
  v4 = [(MPSImage *)&v9 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\treadCount: %lu\n", v6, v7, v4, self->_readCount);
}

- (void)synchronizeOnCommandBuffer:(id)buffer
{
  if (MTLReportFailureTypeEnabled())
  {
    v4 = objc_opt_class();
    NSStringFromClass(v4);
    objc_msgSend_debugDescription(self, v5, v6, v7, v8);
    MTLReportFailure();
  }
}

- (void)readBytes:(void *)bytes dataLayout:(unint64_t)layout bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image region:(id *)region featureChannelInfo:(id)info imageIndex:(unint64_t)index
{
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    NSStringFromSelector(a2);
    objc_msgSend_debugDescription(self, v12, v13, v14, v15);
    MTLReportFailure();
  }
}

- (void)writeBytes:(const void *)bytes dataLayout:(unint64_t)layout bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image region:(id *)region featureChannelInfo:(id)info imageIndex:(unint64_t)index
{
  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    NSStringFromSelector(a2);
    objc_msgSend_debugDescription(self, v12, v13, v14, v15);
    MTLReportFailure();
  }
}

@end