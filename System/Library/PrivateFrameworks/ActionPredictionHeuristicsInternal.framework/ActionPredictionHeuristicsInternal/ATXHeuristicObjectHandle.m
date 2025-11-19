@interface ATXHeuristicObjectHandle
- (ATXHeuristicObjectHandle)initWithCoder:(id)a3;
- (ATXHeuristicObjectHandle)initWithDevice:(id)a3 wrapping:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHeuristicObjectHandle

- (ATXHeuristicObjectHandle)initWithDevice:(id)a3 wrapping:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = ATXHeuristicObjectHandle;
  v8 = [(ATXHeuristicObjectHandle *)&v18 init];
  if (v8)
  {
    v9 = v6;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v9];
    pthread_mutex_lock(&deviceHandlesLock);
    v11 = deviceHandles;
    if (!deviceHandles)
    {
      v12 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
      v13 = deviceHandles;
      deviceHandles = v12;

      v11 = deviceHandles;
    }

    [v11 setObject:v9 forKey:v10];
    pthread_mutex_unlock(&deviceHandlesLock);

    deviceHandle = v8->_deviceHandle;
    v8->_deviceHandle = v10;

    v15 = [v9 _wrap:v7];
    objHandle = v8->_objHandle;
    v8->_objHandle = v15;

    objc_storeStrong(&v8->_obj, a4);
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  deviceHandle = self->_deviceHandle;
  v5 = a3;
  [v5 encodeObject:deviceHandle forKey:@"deviceHandle"];
  [v5 encodeObject:self->_objHandle forKey:@"objHandle"];
}

- (ATXHeuristicObjectHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ATXHeuristicObjectHandle;
  v5 = [(ATXHeuristicObjectHandle *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceHandle"];
    deviceHandle = v5->_deviceHandle;
    v5->_deviceHandle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objHandle"];
    objHandle = v5->_objHandle;
    v5->_objHandle = v8;

    v10 = v5->_deviceHandle;
    if (v10)
    {
      if (v5->_objHandle)
      {
        v11 = v10;
        pthread_mutex_lock(&deviceHandlesLock);
        v12 = [deviceHandles objectForKey:v11];

        pthread_mutex_unlock(&deviceHandlesLock);
        v13 = [v12 _unwrap:v5->_objHandle];
        obj = v5->_obj;
        v5->_obj = v13;
      }
    }
  }

  return v5;
}

@end