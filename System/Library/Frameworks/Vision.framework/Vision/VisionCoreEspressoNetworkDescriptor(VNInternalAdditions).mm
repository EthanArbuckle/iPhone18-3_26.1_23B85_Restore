@interface VisionCoreEspressoNetworkDescriptor(VNInternalAdditions)
- (id)URLForComputeDevice:()VNInternalAdditions error:;
- (id)modelPathForComputeDevice:()VNInternalAdditions error:;
@end

@implementation VisionCoreEspressoNetworkDescriptor(VNInternalAdditions)

- (id)URLForComputeDevice:()VNInternalAdditions error:
{
  v6 = a3;
  if ([VNComputeDeviceUtilities isNeuralEngineComputeDevice:v6])
  {
    aNESpecificURL = [self ANESpecificURL];
    v8 = aNESpecificURL;
    if (aNESpecificURL)
    {
      v9 = aNESpecificURL;
    }

    else if (a4)
    {
      *a4 = [VNError errorForUnsupportedComputeDevice:v6];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = VisionCoreEspressoNetworkDescriptor_0;
    v8 = objc_msgSendSuper2(&v11, sel_URLForComputeDevice_error_, v6, a4);
  }

  return v8;
}

- (id)modelPathForComputeDevice:()VNInternalAdditions error:
{
  v5 = [self URLForComputeDevice:? error:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 VisionCoreFileSystemPathAndReturnError:a4];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end