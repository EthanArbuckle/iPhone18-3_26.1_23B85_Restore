@interface MTLCounterSampleBufferDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLCounterSampleBufferDescriptorInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCounterSampleBufferDescriptorInternal;
  [(MTLCounterSampleBufferDescriptorInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MTLCounterSampleBufferDescriptor allocWithZone:?]];
  [(MTLCounterSampleBufferDescriptorInternal *)v4 setCounterSet:self->_counterSet];
  [(MTLCounterSampleBufferDescriptorInternal *)v4 setStorageMode:self->_storageMode];
  [(MTLCounterSampleBufferDescriptorInternal *)v4 setLabel:self->_label];
  [(MTLCounterSampleBufferDescriptorInternal *)v4 setSampleCount:self->_sampleCount];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v18 = v6;
    v19 = v5;
    v20 = v4;
    v21 = v3;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
LABEL_3:
      LOBYTE(v12) = 0;
      return v12;
    }

    counterSet = self->_counterSet;
    if (counterSet == [equal counterSet] || (v12 = -[MTLCounterSet isEqual:](self->_counterSet, "isEqual:", objc_msgSend(equal, "counterSet"))) != 0)
    {
      storageMode = self->_storageMode;
      if (storageMode != [equal storageMode])
      {
        goto LABEL_3;
      }

      sampleCount = self->_sampleCount;
      if (sampleCount != [equal sampleCount])
      {
        goto LABEL_3;
      }

      label = self->_label;
      if (label == [equal label] || (v12 = -[NSString isEqual:](self->_label, "isEqual:", objc_msgSend(equal, "label"))) != 0)
      {
        LOBYTE(v12) = 1;
      }
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = [(MTLCounterSet *)self->_counterSet hash];
  v3 = [(NSString *)self->_label hash];
  storageMode = self->_storageMode;
  v7[1] = v3;
  v7[2] = storageMode;
  v7[3] = self->_sampleCount;
  LODWORD(result) = _MTLHashState(v7, 0x20uLL);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end