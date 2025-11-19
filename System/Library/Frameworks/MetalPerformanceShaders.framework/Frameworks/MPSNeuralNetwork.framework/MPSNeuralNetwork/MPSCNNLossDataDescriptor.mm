@interface MPSCNNLossDataDescriptor
+ (MPSCNNLossDataDescriptor)cnnLossDataDescriptorWithData:(NSData *)data layout:(MPSDataLayout)layout size:(MTLSize *)size;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MPSCNNLossDataDescriptor

+ (MPSCNNLossDataDescriptor)cnnLossDataDescriptorWithData:(NSData *)data layout:(MPSDataLayout)layout size:(MTLSize *)size
{
  if (layout >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      MTLReportFailure();
    }

    return 0;
  }

  else
  {
    result = objc_opt_new();
    if (result)
    {
      v9 = result;
      v10 = data;
      result = v9;
      v9->_data = v10;
      v9->_layout = layout;
      v11 = *&size->width;
      v9->_size.depth = size->depth;
      *&v9->_size.width = v11;
      width = size->width;
      if (layout != MPSDataLayoutFeatureChannelsxHeightxWidth)
      {
        width *= size->depth;
      }

      v13 = 4 * width;
      v9->_bytesPerRow = v13;
      v9->_bytesPerImage = size->height * v13;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8, v9, v10, v11);
  if (result)
  {
    v19 = result;
    v20 = objc_msgSend_copyWithZone_(self->_data, v13, a3, v14, v15, v16, v17, v18);
    result = v19;
    *(v19 + 1) = v20;
    *(v19 + 2) = self->_layout;
    v21 = *&self->_size.width;
    *(v19 + 5) = self->_size.depth;
    *(v19 + 24) = v21;
    *(v19 + 6) = self->_bytesPerRow;
    *(v19 + 7) = self->_bytesPerImage;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSCNNLossDataDescriptor;
  [(MPSCNNLossDataDescriptor *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = MPSCNNLossDataDescriptor;
  v10 = [(MPSCNNLossDataDescriptor *)&v21 debugDescription];
  layout = self->_layout;
  v12 = @"Invalid data layout type";
  if (layout == 1)
  {
    v12 = @"MPSDataLayoutFeatureChannelsxHeightxWidth";
  }

  if (layout)
  {
    v13 = objc_msgSend_cStringUsingEncoding_(v12, v4, 1, v5, v6, v7, v8, v9);
  }

  else
  {
    v13 = objc_msgSend_cStringUsingEncoding_(@"MPSDataLayoutHeightxWidthxFeatureChannels", v4, 1, v5, v6, v7, v8, v9);
  }

  return objc_msgSend_stringWithFormat_(v3, v14, @"%@\n\tlayout: %s\tsize: {%lu, %lu, %lu}\tbytesPerRow: %lu\tbytesPerImage: %lu", v15, v16, v17, v18, v19, v10, v13, self->_size.width, self->_size.height, self->_size.depth, self->_bytesPerRow, self->_bytesPerImage);
}

@end