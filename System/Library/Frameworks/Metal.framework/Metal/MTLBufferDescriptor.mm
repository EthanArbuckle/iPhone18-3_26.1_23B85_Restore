@interface MTLBufferDescriptor
- (BOOL)isEqual:(id)equal;
- (MTLBufferDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)setDeallocator:(id)deallocator;
@end

@implementation MTLBufferDescriptor

- (void)dealloc
{
  deallocator = self->_deallocator;
  if (deallocator)
  {
    _Block_release(deallocator);
  }

  self->_addressRanges = 0;
  v4.receiver = self;
  v4.super_class = MTLBufferDescriptor;
  [(MTLBufferDescriptor *)&v4 dealloc];
}

- (MTLBufferDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLBufferDescriptor;
  result = [(MTLBufferDescriptor *)&v3 init];
  if (result)
  {
    result->_noCopy = 0;
    result->_contents = 0;
    result->_deallocator = 0;
    result->_length = 0;
    *&result->_alignment = xmmword_185DE28E0;
    result->_iosurface = 0;
    *&result->_pinnedGPUAddress = 0u;
    *&result->_parentGPUSize = 0u;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setLength:self->_length];
    [v5 setNoCopy:self->_noCopy];
    [v5 setResourceOptions:self->_resourceOptions];
    [v5 setAlignment:self->_alignment];
    [v5 setParentGPUAddress:self->_parentGPUAddress];
    [v5 setParentGPUSize:self->_parentGPUSize];
    [v5 setPinnedGPUAddress:self->_pinnedGPUAddress];
    [v5 setPointerTag:self->_pointerTag];
    [v5 setDeallocator:self->_deallocator];
    [v5 setContents:self->_contents];
    v5[11] = [(MTLResourceAddressRangeArray *)self->_addressRanges copy];
    [v5 setIosurface:self->_iosurface];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    v26 = v5;
    v27 = v4;
    v28 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    length = self->_length;
    if (length != [equal length])
    {
      goto LABEL_17;
    }

    alignment = self->_alignment;
    if (alignment != [equal alignment])
    {
      goto LABEL_17;
    }

    resourceOptions = self->_resourceOptions;
    if (resourceOptions != [equal resourceOptions])
    {
      goto LABEL_17;
    }

    contents = self->_contents;
    if (contents != [equal contents])
    {
      goto LABEL_17;
    }

    noCopy = self->_noCopy;
    if (noCopy == [equal noCopy] && (deallocator = self->_deallocator, deallocator == objc_msgSend(equal, "deallocator")) && (pinnedGPUAddress = self->_pinnedGPUAddress, pinnedGPUAddress == objc_msgSend(equal, "pinnedGPUAddress")) && (pointerTag = self->_pointerTag, pointerTag == objc_msgSend(equal, "pointerTag")) && (parentGPUAddress = self->_parentGPUAddress, parentGPUAddress == objc_msgSend(equal, "parentGPUAddress")) && (parentGPUSize = self->_parentGPUSize, parentGPUSize == objc_msgSend(equal, "parentGPUSize")) && (v21 = self->_addressRanges == 0, v21 != (objc_msgSend(equal, "addressRanges") != 0)))
    {
      addressRanges = self->_addressRanges;
      if (!addressRanges || (v23 = -[MTLResourceAddressRangeArray isEqual:](addressRanges, "isEqual:", [equal addressRanges])))
      {
        iosurface = self->_iosurface;
        LOBYTE(v23) = iosurface == [equal iosurface];
      }
    }

    else
    {
LABEL_17:
      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  bzero(v5, 0x58uLL);
  v5[0] = [(MTLBufferDescriptor *)self length];
  v5[1] = [(MTLBufferDescriptor *)self resourceOptions];
  noCopy = [(MTLBufferDescriptor *)self noCopy];
  contents = [(MTLBufferDescriptor *)self contents];
  deallocator = [(MTLBufferDescriptor *)self deallocator];
  alignment = [(MTLBufferDescriptor *)self alignment];
  parentGPUAddress = [(MTLBufferDescriptor *)self parentGPUAddress];
  parentGPUSize = [(MTLBufferDescriptor *)self parentGPUSize];
  pinnedGPUAddress = [(MTLBufferDescriptor *)self pinnedGPUAddress];
  pointerTag = [(MTLBufferDescriptor *)self pointerTag];
  iosurface = [(MTLBufferDescriptor *)self iosurface];
  v3 = _MTLHashState(v5, 0x58uLL);
  return [(MTLResourceAddressRangeArray *)self->_addressRanges hash]+ v3;
}

- (void)setDeallocator:(id)deallocator
{
  deallocator = self->_deallocator;
  if (deallocator != deallocator)
  {
    if (deallocator)
    {
      _Block_release(deallocator);
    }

    self->_deallocator = _Block_copy(deallocator);
  }
}

@end