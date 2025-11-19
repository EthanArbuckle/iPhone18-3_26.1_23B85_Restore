@interface MTLIOAccelDeviceShmem
- (MTLIOAccelDeviceShmem)initWithDevice:(id)a3 shmemSize:(unsigned int)a4;
- (void)dealloc;
@end

@implementation MTLIOAccelDeviceShmem

- (MTLIOAccelDeviceShmem)initWithDevice:(id)a3 shmemSize:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelDeviceShmem;
  v5 = [(MTLIOAccelDeviceShmem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_device = a3;
    [a3 sharedRef];
    if (IOAccelSharedCreateDeviceShmem())
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  if (self->_shmemID)
  {
    [(MTLIOAccelDevice *)self->_device sharedRef];
    shmemID = self->_shmemID;
    IOAccelSharedDestroyDeviceShmem();
    self->_shmemID = 0;
  }

  self->_device = 0;
  v4.receiver = self;
  v4.super_class = MTLIOAccelDeviceShmem;
  [(MTLIOAccelDeviceShmem *)&v4 dealloc];
}

@end