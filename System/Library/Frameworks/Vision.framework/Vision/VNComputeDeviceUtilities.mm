@interface VNComputeDeviceUtilities
+ (BOOL)computeDevice:(id)device isOneTypeOfTypes:(unint64_t)types;
+ (id)_decreasingPerformanceSortedComputeDevices:(uint64_t)devices;
+ (id)allCPUAndGPUComputeDevices;
+ (id)allCPUAndNeuralEngineComputeDevices;
+ (id)allComputeDevices;
+ (id)allGPUAndNeuralEngineComputeDevices;
+ (id)computeDeviceForMetalDevice:(id)device;
+ (id)computeDeviceOfComputeDevices:(id)devices mostCompatibleWithComputeDevice:(id)device options:(unint64_t)options;
+ (id)computeDevices:(id)devices ofTypes:(unint64_t)types;
+ (id)computeDevices:(id)devices passingTest:(id)test;
+ (id)computeDevicesOfTypes:(unint64_t)types;
+ (id)computeDevicesPassingTest:(id)test;
+ (id)espressoV1ModelComputeDevices;
+ (id)metalDeviceForComputeDevice:(id)device;
+ (id)mostPerformantCPUComputeDevice;
+ (id)mostPerformantComputeDevice;
+ (id)mostPerformantComputeDeviceOfComputeDevices:(id)devices;
+ (id)mostPerformantGPUComputeDevice;
+ (id)mostPerformantNeuralEngineComputeDevice;
+ (unint64_t)computeDeviceTypesForMLComputeUnits:(int64_t)units;
@end

@implementation VNComputeDeviceUtilities

+ (id)allComputeDevices
{
  v3 = MLAllComputeDevices();
  v4 = [(VNComputeDeviceUtilities *)self _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

uint64_t __60__VNComputeDeviceUtilities__decreasingPerformanceComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 VNComputeDevicePerformanceScore];
  v6 = [v4 VNComputeDevicePerformanceScore];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

+ (id)mostPerformantNeuralEngineComputeDevice
{
  allNeuralEngineComputeDevices = [self allNeuralEngineComputeDevices];
  v4 = [self mostPerformantComputeDeviceOfComputeDevices:allNeuralEngineComputeDevices];

  return v4;
}

+ (id)computeDeviceOfComputeDevices:(id)devices mostCompatibleWithComputeDevice:(id)device options:(unint64_t)options
{
  optionsCopy = options;
  devicesCopy = devices;
  deviceCopy = device;
  if ([devicesCopy containsObject:deviceCopy])
  {
    v10 = deviceCopy;
    goto LABEL_12;
  }

  if ((optionsCopy & 1) == 0)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v11 = [self computeDevices:devicesCopy ofTypes:{objc_msgSend(self, "typeOfComputeDevice:", deviceCopy)}];
  v12 = v11;
  if ((optionsCopy & 6) != 0)
  {
    v13 = [(VNComputeDeviceUtilities *)self _decreasingPerformanceSortedComputeDevices:v11];

    if ((optionsCopy & 4) != 0)
    {
      lastObject = [v13 lastObject];
      goto LABEL_11;
    }

    v12 = v13;
  }

  else
  {
    v13 = v11;
  }

  lastObject = [v12 firstObject];
LABEL_11:
  v10 = lastObject;

LABEL_12:

  return v10;
}

+ (id)_decreasingPerformanceSortedComputeDevices:(uint64_t)devices
{
  v2 = a2;
  objc_opt_self();
  objc_opt_self();
  v3 = [v2 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_6351];

  return v3;
}

+ (id)mostPerformantComputeDeviceOfComputeDevices:(id)devices
{
  devicesCopy = devices;
  if ([devicesCopy count] >= 2)
  {
    v5 = [(VNComputeDeviceUtilities *)self _decreasingPerformanceSortedComputeDevices:devicesCopy];

    devicesCopy = v5;
  }

  firstObject = [devicesCopy firstObject];

  return firstObject;
}

+ (id)metalDeviceForComputeDevice:(id)device
{
  deviceCopy = device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    metalDevice = [deviceCopy metalDevice];
  }

  else
  {
    metalDevice = 0;
  }

  return metalDevice;
}

+ (id)computeDeviceForMetalDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allGPUComputeDevices = [self allGPUComputeDevices];
  v6 = [allGPUComputeDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allGPUComputeDevices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        metalDevice = [v9 metalDevice];
        v11 = [metalDevice isEqual:deviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allGPUComputeDevices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (BOOL)computeDevice:(id)device isOneTypeOfTypes:(unint64_t)types
{
  vNComputeDeviceType = [device VNComputeDeviceType];
  v6 = (vNComputeDeviceType & ~types) == 0;
  if (!types)
  {
    v6 = 0;
  }

  return vNComputeDeviceType == types || v6;
}

+ (id)computeDevicesOfTypes:(unint64_t)types
{
  allComputeDevices = [self allComputeDevices];
  v6 = [self computeDevices:allComputeDevices ofTypes:types];

  return v6;
}

+ (id)computeDevices:(id)devices ofTypes:(unint64_t)types
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VNComputeDeviceUtilities_computeDevices_ofTypes___block_invoke;
  v6[3] = &__block_descriptor_48_e35_B16__0___MLComputeDeviceProtocol__8l;
  v6[4] = self;
  v6[5] = types;
  v4 = [self computeDevices:devices passingTest:v6];

  return v4;
}

+ (id)computeDevicesPassingTest:(id)test
{
  testCopy = test;
  allComputeDevices = [self allComputeDevices];
  v6 = [self computeDevices:allComputeDevices passingTest:testCopy];

  return v6;
}

+ (id)computeDevices:(id)devices passingTest:(id)test
{
  testCopy = test;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__VNComputeDeviceUtilities_computeDevices_passingTest___block_invoke;
  v11[3] = &unk_1E77B2E88;
  v12 = testCopy;
  v6 = testCopy;
  devicesCopy = devices;
  v8 = [devicesCopy indexesOfObjectsPassingTest:v11];
  v9 = [devicesCopy objectsAtIndexes:v8];

  return v9;
}

+ (unint64_t)computeDeviceTypesForMLComputeUnits:(int64_t)units
{
  if (units > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A6039CF0[units];
  }
}

+ (id)allGPUAndNeuralEngineComputeDevices
{
  v3 = [self computeDevicesOfTypes:6];
  v4 = [(VNComputeDeviceUtilities *)self _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)allCPUAndNeuralEngineComputeDevices
{
  v3 = [self computeDevicesOfTypes:5];
  v4 = [(VNComputeDeviceUtilities *)self _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)allCPUAndGPUComputeDevices
{
  v3 = [self computeDevicesOfTypes:3];
  v4 = [(VNComputeDeviceUtilities *)self _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)espressoV1ModelComputeDevices
{
  v3 = [self computeDevicesOfTypes:7];
  v4 = [(VNComputeDeviceUtilities *)self _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)mostPerformantGPUComputeDevice
{
  allGPUComputeDevices = [self allGPUComputeDevices];
  v4 = [self mostPerformantComputeDeviceOfComputeDevices:allGPUComputeDevices];

  return v4;
}

+ (id)mostPerformantCPUComputeDevice
{
  allCPUComputeDevices = [self allCPUComputeDevices];
  v4 = [self mostPerformantComputeDeviceOfComputeDevices:allCPUComputeDevices];

  return v4;
}

+ (id)mostPerformantComputeDevice
{
  v3 = MLAllComputeDevices();
  v4 = [self mostPerformantComputeDeviceOfComputeDevices:v3];

  return v4;
}

@end