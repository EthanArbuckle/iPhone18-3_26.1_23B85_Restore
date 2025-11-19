@interface MPSImageDescriptor
+ (MPSImageDescriptor)imageDescriptorWithChannelFormat:(MPSImageFeatureChannelFormat)channelFormat width:(NSUInteger)width height:(NSUInteger)height featureChannels:(NSUInteger)featureChannels numberOfImages:(NSUInteger)numberOfImages usage:(MTLTextureUsage)usage;
- (MPSImageDescriptor)copyWithZone:(NSZone *)zone;
- (MPSImageDescriptor)init;
- (MTLPixelFormat)pixelFormat;
- (id)debugDescription;
- (id)newTextureDescriptor;
@end

@implementation MPSImageDescriptor

- (MTLPixelFormat)pixelFormat
{
  featureChannels = self->_featureChannels;
  if (featureChannels >= 4)
  {
    featureChannels = 4;
  }

  channelFormat = self->_channelFormat;
  if (channelFormat >= 6)
  {
    channelFormat = 6;
  }

  return word_22E37B6F0[7 * featureChannels + channelFormat];
}

- (MPSImageDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MPSImageDescriptor;
  result = [(MPSImageDescriptor *)&v4 init];
  if (result)
  {
    v3 = vdupq_n_s64(1uLL);
    *&result->_width = v3;
    *&result->_featureChannels = v3;
    result->_channelFormat = 3;
    result->_cpuCacheMode = 0;
    *&result->_storageMode = xmmword_22E37B6E0;
    result->_featureChannelsLayout = 1;
  }

  return result;
}

+ (MPSImageDescriptor)imageDescriptorWithChannelFormat:(MPSImageFeatureChannelFormat)channelFormat width:(NSUInteger)width height:(NSUInteger)height featureChannels:(NSUInteger)featureChannels numberOfImages:(NSUInteger)numberOfImages usage:(MTLTextureUsage)usage
{
  result = objc_alloc_init(MPSImageDescriptor);
  if (result)
  {
    result->_numberOfImages = numberOfImages;
    result->_channelFormat = channelFormat;
    result->_width = width;
    result->_height = height;
    result->_usage = usage;
    result->_featureChannels = featureChannels;
  }

  return result;
}

- (id)newTextureDescriptor
{
  v3 = objc_opt_new();
  v7 = v3;
  v8 = self->_featureChannels + 3;
  v9 = v8 >> 2;
  width = self->_width;
  if (self->_featureChannelsLayout)
  {
    objc_msgSend_setWidth_(v3, v4, width, v5, v6);
    objc_msgSend_setArrayLength_(v7, v11, self->_numberOfImages * v9, v12, v13);
    if (v8 > 7 || self->_numberOfImages > 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    objc_msgSend_setTextureType_(v7, v14, 2, v15, v16);
    goto LABEL_10;
  }

  objc_msgSend_setWidth_(v3, v4, width * v9, v5, v6);
  objc_msgSend_setArrayLength_(v7, v21, self->_numberOfImages, v22, v23);
  if (self->_numberOfImages < 2)
  {
    goto LABEL_9;
  }

LABEL_6:
  objc_msgSend_setTextureType_(v7, v14, 3, v15, v16);
LABEL_10:
  objc_msgSend_setHeight_(v7, v18, self->_height, v19, v20);
  v28 = objc_msgSend_pixelFormat(self, v24, v25, v26, v27);
  objc_msgSend_setPixelFormat_(v7, v29, v28, v30, v31);
  objc_msgSend_setCpuCacheMode_(v7, v32, self->_cpuCacheMode, v33, v34);
  objc_msgSend_setStorageMode_(v7, v35, self->_storageMode, v36, v37);
  objc_msgSend_setUsage_(v7, v38, self->_usage, v39, v40);
  return v7;
}

- (MPSImageDescriptor)copyWithZone:(NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    result->_width = self->_width;
    result->_height = self->_height;
    result->_featureChannels = self->_featureChannels;
    *&result->_numberOfImages = *&self->_numberOfImages;
    *&result->_cacheMode = *&self->_cacheMode;
    *&result->_usage = *&self->_usage;
  }

  return result;
}

- (id)debugDescription
{
  usage = self->_usage;
  if (!usage)
  {
    v5 = @"MTLTextureUsageUnknown";
    channelFormat = self->_channelFormat;
    if (channelFormat <= 5)
    {
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if ((usage & 1) == 0)
  {
    if ((usage & 2) == 0)
    {
      if ((usage & 4) == 0)
      {
        if ((usage & 0x10) == 0)
        {
          v5 = 0;
          channelFormat = self->_channelFormat;
          if (channelFormat <= 5)
          {
            goto LABEL_27;
          }

LABEL_14:
          v9 = "<invalid format";
          goto LABEL_28;
        }

        goto LABEL_26;
      }

LABEL_22:
      v5 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "MTLTextureUsageRenderTarget", 1, v2);
      if ((self->_usage & 0x10) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v7 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "MTLTextureUsageShaderRead", 1, v2);
  v5 = v7;
  if ((self->_usage & 2) == 0)
  {
    if ((self->_usage & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_18:
    v5 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "MTLTextureUsageShaderWrite", 1, v2);
    if ((self->_usage & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_12:
    if ((self->_usage & 0x10) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ | %s", v8, v2, v7, "MTLTextureUsageShaderWrite");
  if ((self->_usage & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_19:
  if (!v5)
  {
    goto LABEL_22;
  }

  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ | %s", v8, v2, v5, "MTLTextureUsageRenderTarget");
  if ((self->_usage & 0x10) != 0)
  {
LABEL_23:
    if (v5)
    {
      v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@ | %s", v8, v2, v5, "MTLTextureUsagePixelFormatView");
      channelFormat = self->_channelFormat;
      if (channelFormat <= 5)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

LABEL_26:
    v5 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "MTLTextureUsagePixelFormatView", 1, v2);
    channelFormat = self->_channelFormat;
    if (channelFormat > 5)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_13:
  channelFormat = self->_channelFormat;
  if (channelFormat > 5)
  {
    goto LABEL_14;
  }

LABEL_27:
  v9 = off_2787BF620[channelFormat];
LABEL_28:
  v10 = off_2787BF5E0[channelFormat != 0];
  storageMode = self->_storageMode;
  if (storageMode >= 4)
  {
    storageMode = 4;
  }

  v12 = off_2787BF5F0[storageMode];
  cpuCacheMode = self->_cpuCacheMode;
  if (cpuCacheMode >= 2)
  {
    cpuCacheMode = 2;
  }

  v14 = off_2787BF610[cpuCacheMode];
  v15 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = MPSImageDescriptor;
  v16 = [(MPSImageDescriptor *)&v21 debugDescription];
  return objc_msgSend_stringWithFormat_(v15, v17, @"%@\n\twidth:             %lu\n\theight:            %lu\n\tfeatureChannels:   %lu\n\tnumber of Images:  %lu\n\tchannel format:    %s\n\tfeatureChanLayout: %s\n\tcache mode:        %s\n\tstorage mode:      %s\n\tusage:             %@", v18, v19, v16, self->_width, self->_height, self->_featureChannels, self->_numberOfImages, v9, v10, v14, v12, v5);
}

@end