@interface AGXG18PFamilyDeadlineProfile
- (AGXG18PFamilyDeadlineProfile)initWithDevice:(__IOGPUDevice *)device executionSize:(unint64_t)size;
- (void)dealloc;
@end

@implementation AGXG18PFamilyDeadlineProfile

- (void)dealloc
{
  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    deadlineProfileID = self->_deadlineProfileID;
    if (deadlineProfileID)
    {
      inputStruct = 0;
      v7 = 0;
      v8 = deadlineProfileID;
      IOConnectCallStructMethod(deviceRef->var2, 0x10Cu, &inputStruct, 0x10uLL, 0, 0);
      deviceRef = self->_deviceRef;
    }

    CFRelease(deviceRef);
  }

  v5.receiver = self;
  v5.super_class = AGXG18PFamilyDeadlineProfile;
  [(AGXG18PFamilyDeadlineProfile *)&v5 dealloc];
}

- (AGXG18PFamilyDeadlineProfile)initWithDevice:(__IOGPUDevice *)device executionSize:(unint64_t)size
{
  v14.receiver = self;
  v14.super_class = AGXG18PFamilyDeadlineProfile;
  v6 = [(AGXG18PFamilyDeadlineProfile *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_deviceRef = device;
    CFRetain(device);
    sizeCopy = size;
    v13 = 0;
    outputStructCnt = 16;
    outputStruct = 0;
    if (IOConnectCallStructMethod(v7->_deviceRef->var2, 0x10Bu, &outputStruct, 0x10uLL, &outputStruct, &outputStructCnt))
    {

      return 0;
    }

    else
    {
      v7->_deadlineProfileID = v13;
      v8 = outputStruct;
      v7->_executionSize = size;
      v7->_globalTraceObjectID = v8;
    }
  }

  return v7;
}

@end