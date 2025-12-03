@interface VNObjectTrackerRevision1
+ (id)supportedComputeDevicesForOptions:(id)options error:(id *)error;
- (VNObjectTrackerRevision1)initWithOptions:(id)options error:(id *)error;
@end

@implementation VNObjectTrackerRevision1

- (VNObjectTrackerRevision1)initWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = VNObjectTrackerRevision1;
  v7 = [(VNTracker *)&v12 initWithOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNTrackingOption_TrackingLevel" inOptions:optionsCopy error:error];
    if (v8)
    {
      v10[0] = &unk_1F1974B70;
      v10[1] = 0;
      v11 = 0;
      [(VNTracker *)v7 _createTrackerWithLevel:v8 options:v10 error:error];
      std::shared_ptr<vision::mod::ObjectTrackerAbstract>::reset[abi:ne200100]<vision::mod::ObjectTrackerAbstract,0>();
    }
  }

  return 0;
}

+ (id)supportedComputeDevicesForOptions:(id)options error:(id *)error
{
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];

  return v4;
}

@end