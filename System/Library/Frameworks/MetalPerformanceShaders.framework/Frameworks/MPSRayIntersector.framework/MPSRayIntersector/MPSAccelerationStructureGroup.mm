@interface MPSAccelerationStructureGroup
- (MPSAccelerationStructureGroup)initWithDevice:(id)a3 storageMode:(unint64_t)a4;
- (MPSAccelerationStructureGroup)initWithDevice:(id)device;
- (void)dealloc;
@end

@implementation MPSAccelerationStructureGroup

- (MPSAccelerationStructureGroup)initWithDevice:(id)a3 storageMode:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MPSAccelerationStructureGroup;
  if ([(MPSAccelerationStructureGroup *)&v7 init])
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      sub_239E24918();
    }

    MPSDevice = MPSDevice::GetMPSDevice();
    MPSDevice::GetQueue(MPSDevice);
    operator new();
  }

  return 0;
}

- (MPSAccelerationStructureGroup)initWithDevice:(id)device
{
  if (!device)
  {
    sub_239E249C0(self);
    return 0;
  }

  MPSDevice = MPSDevice::GetMPSDevice();
  if (!MPSDevice)
  {
    sub_239E24954(self);
    return 0;
  }

  v7 = ~(*(MPSDevice + 1476) >> 9) & 2;

  return MEMORY[0x2821F9670](self, sel_initWithDevice_storageMode_, device, v7, v6);
}

- (void)dealloc
{
  bvhGroup = self->_bvhGroup;
  if (bvhGroup)
  {
    if (atomic_fetch_add(bvhGroup + 2, 0xFFFFFFFF) == 1)
    {
      (*(*bvhGroup + 8))(bvhGroup, a2);
    }

    self->_bvhGroup = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSAccelerationStructureGroup;
  [(MPSAccelerationStructureGroup *)&v4 dealloc];
}

@end