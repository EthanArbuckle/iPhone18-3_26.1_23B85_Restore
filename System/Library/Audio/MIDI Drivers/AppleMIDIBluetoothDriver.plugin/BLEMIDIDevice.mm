@interface BLEMIDIDevice
- (BLEMIDIDevice)initWithPeripheral:(id)peripheral mtu:(unsigned int)mtu;
- (id).cxx_construct;
- (shared_ptr<BLEIOBuffer>)bufferAtIndex:(unsigned __int8)index;
- (shared_ptr<BLEIOBuffer>)centralBuffer;
- (unsigned)advanceBuffer;
- (unsigned)recycleBuffer;
- (void)createBuffers;
- (void)dealloc;
- (void)setCentralBuffer:(shared_ptr<BLEIOBuffer>)buffer;
- (void)setMtu:(unsigned int)mtu;
@end

@implementation BLEMIDIDevice

- (void)createBuffers
{
  selfCopy = self;
  if (self->peripheral)
  {
    sub_297C();
  }

  sub_297C();
}

- (BLEMIDIDevice)initWithPeripheral:(id)peripheral mtu:(unsigned int)mtu
{
  v10.receiver = self;
  v10.super_class = BLEMIDIDevice;
  v6 = [(BLEMIDIDevice *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->mtu = 0;
    *&v6->nextBufferIndex = 0;
    [(BLEMIDIDevice *)v6 setPeripheral:peripheral];
    if (mtu)
    {
      mtuCopy = mtu;
    }

    else
    {
      mtuCopy = 20;
    }

    [(BLEMIDIDevice *)v7 setMtu:mtuCopy];
  }

  return v7;
}

- (void)dealloc
{
  peripheral = self->peripheral;
  if (peripheral)
  {
  }

  dataReceiver = self->dataReceiver;
  if (dataReceiver)
  {
  }

  uuid = self->uuid;
  if (uuid)
  {
  }

  v6.receiver = self;
  v6.super_class = BLEMIDIDevice;
  [(BLEMIDIDevice *)&v6 dealloc];
}

- (void)setMtu:(unsigned int)mtu
{
  if (self->mtu != mtu)
  {
    sub_24F4(&self->localPeripheralBuffers);
    if (self->centralBuffer.__ptr_)
    {
      cntrl = self->centralBuffer.__cntrl_;
      self->centralBuffer.__ptr_ = 0;
      self->centralBuffer.__cntrl_ = 0;
      if (cntrl)
      {
        sub_2C18(cntrl);
      }
    }

    self->mtu = mtu;

    [(BLEMIDIDevice *)self createBuffers];
  }
}

- (shared_ptr<BLEIOBuffer>)bufferAtIndex:(unsigned __int8)index
{
  begin = self->localPeripheralBuffers.__begin_;
  if (index >= ((self->localPeripheralBuffers.__end_ - begin) >> 4))
  {
    *v3 = 0;
    v3[1] = 0;
  }

  else
  {
    v5 = begin[index];
    *v3 = v5;
    if (*(&v5 + 1))
    {
      atomic_fetch_add_explicit((*(&v5 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (unsigned)advanceBuffer
{
  nextBufferIndex = self->nextBufferIndex;
  if (!self->peripheral)
  {
    if (nextBufferIndex == 3)
    {
      LOBYTE(nextBufferIndex) = 0;
    }

    else
    {
      LOBYTE(nextBufferIndex) = nextBufferIndex + 1;
    }

    self->nextBufferIndex = nextBufferIndex;
  }

  return nextBufferIndex;
}

- (unsigned)recycleBuffer
{
  lastWroteBufferIndex = self->lastWroteBufferIndex;
  if (!self->peripheral)
  {
    begin = self->localPeripheralBuffers.__begin_;
    if (lastWroteBufferIndex >= (self->localPeripheralBuffers.__end_ - begin) >> 4)
    {
      sub_2880();
    }

    v5 = &begin[16 * lastWroteBufferIndex];
    v7 = *v5;
    v6 = *(v5 + 1);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(v7 + 44) = 0;
    bzero(*(v7 + 24), self->mtu);
    v8 = self->lastWroteBufferIndex;
    if (v8 == 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
    }

    self->lastWroteBufferIndex = v9;
    if (atomic_fetch_add((v7 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
    }

    if (v6)
    {
      sub_2C18(v6);
    }
  }

  return lastWroteBufferIndex;
}

- (shared_ptr<BLEIOBuffer>)centralBuffer
{
  cntrl = self->centralBuffer.__cntrl_;
  *v2 = self->centralBuffer.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setCentralBuffer:(shared_ptr<BLEIOBuffer>)buffer
{
  v4 = *buffer.__ptr_;
  v3 = *(buffer.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->centralBuffer.__cntrl_;
  self->centralBuffer.__ptr_ = v4;
  self->centralBuffer.__cntrl_ = v3;
  if (cntrl)
  {
    sub_2C18(cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  return self;
}

@end