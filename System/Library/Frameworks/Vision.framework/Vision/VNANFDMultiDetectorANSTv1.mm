@interface VNANFDMultiDetectorANSTv1
+ (BOOL)supportsExecution;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
@end

@implementation VNANFDMultiDetectorANSTv1

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allNeuralEngineComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (BOOL)supportsExecution
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VNANFDMultiDetectorANSTv1_supportsExecution__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNANFDMultiDetectorANSTv1 supportsExecution]::onceToken != -1)
  {
    dispatch_once(&+[VNANFDMultiDetectorANSTv1 supportsExecution]::onceToken, block);
  }

  return +[VNANFDMultiDetectorANSTv1 supportsExecution]::supportsExecution;
}

void __46__VNANFDMultiDetectorANSTv1_supportsExecution__block_invoke(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "detectorClass")];
  if ([v1 hasSuffix:@".espresso"])
  {
    v2 = [v1 stringByDeletingPathExtension];
    v3 = VNANEArchitectureName();
    if ([v3 length])
    {
      v4 = VNFrameworkBundle();
      v5 = [v4 pathsForResourcesOfType:@"hwx" inDirectory:0];
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __46__VNANFDMultiDetectorANSTv1_supportsExecution__block_invoke_2;
      v10 = &unk_1E77B5680;
      v11 = v2;
      v12 = v3;
      v6 = [v5 indexesOfObjectsPassingTest:&v7];
      if ([v6 count])
      {
        +[VNANFDMultiDetectorANSTv1 supportsExecution]::supportsExecution = 1;
      }
    }
  }
}

uint64_t __46__VNANFDMultiDetectorANSTv1_supportsExecution__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  if ([v3 hasPrefix:*(a1 + 32)])
  {
    v4 = [v3 containsString:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end