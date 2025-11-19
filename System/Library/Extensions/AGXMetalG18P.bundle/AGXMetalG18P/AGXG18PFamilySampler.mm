@interface AGXG18PFamilySampler
- (AGXG18PFamilySampler)initWithDevice:(id)a3 samplerDescriptor:(id)a4 driverDescriptor:(const void *)a5 initialQOSOverride:(unsigned int)a6;
- (id).cxx_construct;
- (unint64_t)uniqueIdentifier;
@end

@implementation AGXG18PFamilySampler

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 104) = 0uLL;
  *(self + 12) = 0;
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 160) = 0;
  return self;
}

- (unint64_t)uniqueIdentifier
{
  if (LODWORD(self[1].super._device))
  {
    return LODWORD(self[1].super._device);
  }

  else
  {
    return &self->_impl;
  }
}

- (AGXG18PFamilySampler)initWithDevice:(id)a3 samplerDescriptor:(id)a4 driverDescriptor:(const void *)a5 initialQOSOverride:(unsigned int)a6
{
  v26.receiver = self;
  v26.super_class = AGXG18PFamilySampler;
  v11 = [_MTLSamplerState initWithDevice:sel_initWithDevice_samplerDescriptor_ samplerDescriptor:?];
  if (v11)
  {
    AGX::SamplerGen3<AGX::HAL300::Classes,AGX::HAL300::Encoders>::SamplerGen3(v18, *(a3 + 106), a4, a5, a6);
    p_impl = &self->_impl;
    v13 = v18[1];
    *&self->_impl.desc.ss.var0 = v18[0];
    *&self->_impl.desc.lod_bias = v13;
    *&self->_impl.desc.custom_border_color[3] = v18[2];
    if (*(&self->_impl.desc.label.__rep_.__l + 23) < 0)
    {
      operator delete(self->_impl.desc.label.__rep_.__l.__data_);
    }

    *self->_impl.desc.label.__rep_.__s.__data_ = *__p;
    *(&self->_impl.desc.label.__rep_.__l + 2) = v20;
    HIBYTE(v20) = 0;
    LOBYTE(__p[0]) = 0;
    *&self->_impl.desc.var1 = v21;
    self[1].super.super.isa = v22;
    device = self[1].super._device;
    self[1].super._device = v23;
    v23 = device;
    label = self[1].super._label;
    *&p_impl[1].desc.lod_bias = v24;
    v24 = label;
    v16 = p_impl[1].desc.custom_border_color[1];
    LOBYTE(p_impl[1].desc.custom_border_color[1]) = v25;
    v25 = v16;
    if (device)
    {
      if ((v16 & 1) == 0)
      {
        os_unfair_lock_lock(label + 194);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push((v24 + 90), v23, v23 + HIDWORD(v23) - 1);
        os_unfair_lock_unlock(label + 194);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v11;
}

@end