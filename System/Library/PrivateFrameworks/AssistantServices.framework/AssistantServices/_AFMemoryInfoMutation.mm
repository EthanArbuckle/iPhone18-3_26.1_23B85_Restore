@interface _AFMemoryInfoMutation
- (_AFMemoryInfoMutation)initWithBase:(id)base;
- (int)getNumberOfRegions;
- (int)getPageSizeInBytes;
- (unint64_t)getPeakResidentMemorySizeInBytes;
- (unint64_t)getPhysicalMemoryFootprintInBytes;
- (unint64_t)getResidentMemorySizeInBytes;
- (unint64_t)getVirtualMemorySizeInBytes;
@end

@implementation _AFMemoryInfoMutation

- (unint64_t)getPhysicalMemoryFootprintInBytes
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    return self->_physicalMemoryFootprintInBytes;
  }

  else
  {
    return [(AFMemoryInfo *)self->_base physicalMemoryFootprintInBytes];
  }
}

- (unint64_t)getPeakResidentMemorySizeInBytes
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_peakResidentMemorySizeInBytes;
  }

  else
  {
    return [(AFMemoryInfo *)self->_base peakResidentMemorySizeInBytes];
  }
}

- (unint64_t)getResidentMemorySizeInBytes
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_residentMemorySizeInBytes;
  }

  else
  {
    return [(AFMemoryInfo *)self->_base residentMemorySizeInBytes];
  }
}

- (int)getPageSizeInBytes
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_pageSizeInBytes;
  }

  else
  {
    return [(AFMemoryInfo *)self->_base pageSizeInBytes];
  }
}

- (int)getNumberOfRegions
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_numberOfRegions;
  }

  else
  {
    return [(AFMemoryInfo *)self->_base numberOfRegions];
  }
}

- (unint64_t)getVirtualMemorySizeInBytes
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_virtualMemorySizeInBytes;
  }

  else
  {
    return [(AFMemoryInfo *)self->_base virtualMemorySizeInBytes];
  }
}

- (_AFMemoryInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFMemoryInfoMutation;
  v6 = [(_AFMemoryInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end