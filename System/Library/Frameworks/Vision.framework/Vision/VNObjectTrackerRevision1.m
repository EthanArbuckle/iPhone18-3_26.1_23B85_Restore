@interface VNObjectTrackerRevision1
+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4;
- (VNObjectTrackerRevision1)initWithOptions:(id)a3 error:(id *)a4;
@end

@implementation VNObjectTrackerRevision1

- (VNObjectTrackerRevision1)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = VNObjectTrackerRevision1;
  v7 = [(VNTracker *)&v12 initWithOptions:v6 error:a4];
  if (v7)
  {
    v8 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNTrackingOption_TrackingLevel" inOptions:v6 error:a4];
    if (v8)
    {
      v10[0] = &unk_1F1974B70;
      v10[1] = 0;
      v11 = 0;
      [(VNTracker *)v7 _createTrackerWithLevel:v8 options:v10 error:a4];
      std::shared_ptr<vision::mod::ObjectTrackerAbstract>::reset[abi:ne200100]<vision::mod::ObjectTrackerAbstract,0>();
    }
  }

  return 0;
}

+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4
{
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];

  return v4;
}

@end