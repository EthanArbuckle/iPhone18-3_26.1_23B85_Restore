@interface VNComputeDeviceUtilities
+ (BOOL)computeDevice:(id)a3 isOneTypeOfTypes:(unint64_t)a4;
+ (id)_decreasingPerformanceSortedComputeDevices:(uint64_t)a1;
+ (id)allCPUAndGPUComputeDevices;
+ (id)allCPUAndNeuralEngineComputeDevices;
+ (id)allComputeDevices;
+ (id)allGPUAndNeuralEngineComputeDevices;
+ (id)computeDeviceForMetalDevice:(id)a3;
+ (id)computeDeviceOfComputeDevices:(id)a3 mostCompatibleWithComputeDevice:(id)a4 options:(unint64_t)a5;
+ (id)computeDevices:(id)a3 ofTypes:(unint64_t)a4;
+ (id)computeDevices:(id)a3 passingTest:(id)a4;
+ (id)computeDevicesOfTypes:(unint64_t)a3;
+ (id)computeDevicesPassingTest:(id)a3;
+ (id)espressoV1ModelComputeDevices;
+ (id)metalDeviceForComputeDevice:(id)a3;
+ (id)mostPerformantCPUComputeDevice;
+ (id)mostPerformantComputeDevice;
+ (id)mostPerformantComputeDeviceOfComputeDevices:(id)a3;
+ (id)mostPerformantGPUComputeDevice;
+ (id)mostPerformantNeuralEngineComputeDevice;
+ (unint64_t)computeDeviceTypesForMLComputeUnits:(int64_t)a3;
@end

@implementation VNComputeDeviceUtilities

+ (id)allComputeDevices
{
  v3 = MLAllComputeDevices();
  v4 = [(VNComputeDeviceUtilities *)a1 _decreasingPerformanceSortedComputeDevices:v3];

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
  v3 = [a1 allNeuralEngineComputeDevices];
  v4 = [a1 mostPerformantComputeDeviceOfComputeDevices:v3];

  return v4;
}

+ (id)computeDeviceOfComputeDevices:(id)a3 mostCompatibleWithComputeDevice:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 containsObject:v9])
  {
    v10 = v9;
    goto LABEL_12;
  }

  if ((v5 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v11 = [a1 computeDevices:v8 ofTypes:{objc_msgSend(a1, "typeOfComputeDevice:", v9)}];
  v12 = v11;
  if ((v5 & 6) != 0)
  {
    v13 = [(VNComputeDeviceUtilities *)a1 _decreasingPerformanceSortedComputeDevices:v11];

    if ((v5 & 4) != 0)
    {
      v14 = [v13 lastObject];
      goto LABEL_11;
    }

    v12 = v13;
  }

  else
  {
    v13 = v11;
  }

  v14 = [v12 firstObject];
LABEL_11:
  v10 = v14;

LABEL_12:

  return v10;
}

+ (id)_decreasingPerformanceSortedComputeDevices:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  objc_opt_self();
  v3 = [v2 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_6351];

  return v3;
}

+ (id)mostPerformantComputeDeviceOfComputeDevices:(id)a3
{
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v5 = [(VNComputeDeviceUtilities *)a1 _decreasingPerformanceSortedComputeDevices:v4];

    v4 = v5;
  }

  v6 = [v4 firstObject];

  return v6;
}

+ (id)metalDeviceForComputeDevice:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 metalDevice];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)computeDeviceForMetalDevice:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 allGPUComputeDevices];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 metalDevice];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (BOOL)computeDevice:(id)a3 isOneTypeOfTypes:(unint64_t)a4
{
  v5 = [a3 VNComputeDeviceType];
  v6 = (v5 & ~a4) == 0;
  if (!a4)
  {
    v6 = 0;
  }

  return v5 == a4 || v6;
}

+ (id)computeDevicesOfTypes:(unint64_t)a3
{
  v5 = [a1 allComputeDevices];
  v6 = [a1 computeDevices:v5 ofTypes:a3];

  return v6;
}

+ (id)computeDevices:(id)a3 ofTypes:(unint64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VNComputeDeviceUtilities_computeDevices_ofTypes___block_invoke;
  v6[3] = &__block_descriptor_48_e35_B16__0___MLComputeDeviceProtocol__8l;
  v6[4] = a1;
  v6[5] = a4;
  v4 = [a1 computeDevices:a3 passingTest:v6];

  return v4;
}

+ (id)computeDevicesPassingTest:(id)a3
{
  v4 = a3;
  v5 = [a1 allComputeDevices];
  v6 = [a1 computeDevices:v5 passingTest:v4];

  return v6;
}

+ (id)computeDevices:(id)a3 passingTest:(id)a4
{
  v5 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__VNComputeDeviceUtilities_computeDevices_passingTest___block_invoke;
  v11[3] = &unk_1E77B2E88;
  v12 = v5;
  v6 = v5;
  v7 = a3;
  v8 = [v7 indexesOfObjectsPassingTest:v11];
  v9 = [v7 objectsAtIndexes:v8];

  return v9;
}

+ (unint64_t)computeDeviceTypesForMLComputeUnits:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A6039CF0[a3];
  }
}

+ (id)allGPUAndNeuralEngineComputeDevices
{
  v3 = [a1 computeDevicesOfTypes:6];
  v4 = [(VNComputeDeviceUtilities *)a1 _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)allCPUAndNeuralEngineComputeDevices
{
  v3 = [a1 computeDevicesOfTypes:5];
  v4 = [(VNComputeDeviceUtilities *)a1 _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)allCPUAndGPUComputeDevices
{
  v3 = [a1 computeDevicesOfTypes:3];
  v4 = [(VNComputeDeviceUtilities *)a1 _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)espressoV1ModelComputeDevices
{
  v3 = [a1 computeDevicesOfTypes:7];
  v4 = [(VNComputeDeviceUtilities *)a1 _decreasingPerformanceSortedComputeDevices:v3];

  return v4;
}

+ (id)mostPerformantGPUComputeDevice
{
  v3 = [a1 allGPUComputeDevices];
  v4 = [a1 mostPerformantComputeDeviceOfComputeDevices:v3];

  return v4;
}

+ (id)mostPerformantCPUComputeDevice
{
  v3 = [a1 allCPUComputeDevices];
  v4 = [a1 mostPerformantComputeDeviceOfComputeDevices:v3];

  return v4;
}

+ (id)mostPerformantComputeDevice
{
  v3 = MLAllComputeDevices();
  v4 = [a1 mostPerformantComputeDeviceOfComputeDevices:v3];

  return v4;
}

@end