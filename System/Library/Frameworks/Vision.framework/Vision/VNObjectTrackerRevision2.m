@interface VNObjectTrackerRevision2
+ (id)rpnInitQueue;
+ (id)rpnTrackQueue;
+ (id)serializeRPNInitializationQueue;
+ (id)serializeRPNTrackingQueue;
+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4;
- (VNObjectTrackerRevision2)initWithOptions:(id)a3 error:(id *)a4;
@end

@implementation VNObjectTrackerRevision2

- (VNObjectTrackerRevision2)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v36.receiver = self;
  v36.super_class = VNObjectTrackerRevision2;
  v7 = [(VNTracker *)&v36 initWithOptions:v6 error:a4];
  if (v7)
  {
    v35 = 0;
    if ([VNValidationUtilities getNSUIntegerValue:&v35 forKey:@"VNTrackingOption_InputImageMaxWidth" inOptions:v6 error:a4])
    {
      v34 = 0;
      if ([VNValidationUtilities getNSUIntegerValue:&v34 forKey:@"VNTrackingOption_InputImageMaxHeight" inOptions:v6 error:a4])
      {
        v33 = 0;
        v8 = [VNValidationUtilities getOptionalObject:&v33 ofClass:objc_opt_class() forKey:@"VNTrackerOption_RPNEspressoResources" inOptions:v6 error:a4];
        v9 = v33;
        if (v8)
        {
          v10 = objc_opt_class();
          v20 = 0;
          v19[0] = &unk_1F19762D8;
          v19[1] = 0;
          v24 = [v10 rpnInitQueue];

          v28 = [v10 rpnTrackQueue];

          v29 = [v10 serializeRPNInitializationQueue];

          v30 = [v10 serializeRPNTrackingQueue];

          v31 = v35;
          v32 = v34;
          v11 = [(VNRPNTrackerEspressoResources *)v9 rpnInitEspressoResources];
          v21 = [v11 network];
          v22 = v12;

          v13 = [(VNRPNTrackerEspressoResources *)v9 rpnInitEspressoResources];
          v23 = [v13 plan];

          v14 = [(VNRPNTrackerEspressoResources *)v9 rpnTrackEspressoResources];
          v25 = [v14 network];
          v26 = v15;

          v16 = [(VNRPNTrackerEspressoResources *)v9 rpnTrackEspressoResources];
          v27 = [v16 plan];

          v17 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNTrackingOption_TrackingLevel" inOptions:v6 error:a4];
          if (v17)
          {
            [(VNTracker *)v7 _createTrackerWithLevel:v17 options:v19 error:a4];
            std::shared_ptr<vision::mod::ObjectTrackerAbstract>::reset[abi:ne200100]<vision::mod::ObjectTrackerAbstract,0>();
          }

          vision::mod::RPNTrackerOptions::~RPNTrackerOptions(v19);
        }
      }
    }
  }

  return 0;
}

+ (id)serializeRPNTrackingQueue
{
  if (+[VNObjectTrackerRevision2 serializeRPNTrackingQueue]::onceToken != -1)
  {
    dispatch_once(&+[VNObjectTrackerRevision2 serializeRPNTrackingQueue]::onceToken, &__block_literal_global_43);
  }

  v3 = +[VNObjectTrackerRevision2 serializeRPNTrackingQueue]::serializeRPNTrackingQueue;

  return v3;
}

void __53__VNObjectTrackerRevision2_serializeRPNTrackingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.VN.serializeRPNTrackingQueue", v2);
  v1 = +[VNObjectTrackerRevision2 serializeRPNTrackingQueue]::serializeRPNTrackingQueue;
  +[VNObjectTrackerRevision2 serializeRPNTrackingQueue]::serializeRPNTrackingQueue = v0;
}

+ (id)serializeRPNInitializationQueue
{
  if (+[VNObjectTrackerRevision2 serializeRPNInitializationQueue]::onceToken != -1)
  {
    dispatch_once(&+[VNObjectTrackerRevision2 serializeRPNInitializationQueue]::onceToken, &__block_literal_global_5248);
  }

  v3 = +[VNObjectTrackerRevision2 serializeRPNInitializationQueue]::serializeRPNInitializationQueue;

  return v3;
}

void __59__VNObjectTrackerRevision2_serializeRPNInitializationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.VN.serializeRPNInitializationQueue", v2);
  v1 = +[VNObjectTrackerRevision2 serializeRPNInitializationQueue]::serializeRPNInitializationQueue;
  +[VNObjectTrackerRevision2 serializeRPNInitializationQueue]::serializeRPNInitializationQueue = v0;
}

+ (id)rpnTrackQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VNObjectTrackerRevision2_rpnTrackQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNObjectTrackerRevision2 rpnTrackQueue]::onceToken != -1)
  {
    dispatch_once(&+[VNObjectTrackerRevision2 rpnTrackQueue]::onceToken, block);
  }

  v2 = +[VNObjectTrackerRevision2 rpnTrackQueue]::rpnTrackQueue;

  return v2;
}

void __41__VNObjectTrackerRevision2_rpnTrackQueue__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) rpnTrackerTrackProcessingQueueName];
  v1 = [v5 UTF8String];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create(v1, v2);
  v4 = +[VNObjectTrackerRevision2 rpnTrackQueue]::rpnTrackQueue;
  +[VNObjectTrackerRevision2 rpnTrackQueue]::rpnTrackQueue = v3;
}

+ (id)rpnInitQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__VNObjectTrackerRevision2_rpnInitQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNObjectTrackerRevision2 rpnInitQueue]::onceToken != -1)
  {
    dispatch_once(&+[VNObjectTrackerRevision2 rpnInitQueue]::onceToken, block);
  }

  v2 = +[VNObjectTrackerRevision2 rpnInitQueue]::rpnInitQueue;

  return v2;
}

void __40__VNObjectTrackerRevision2_rpnInitQueue__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) rpnTrackerInitProcessingQueueName];
  v1 = [v5 UTF8String];
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create(v1, v2);
  v4 = +[VNObjectTrackerRevision2 rpnInitQueue]::rpnInitQueue;
  +[VNObjectTrackerRevision2 rpnInitQueue]::rpnInitQueue = v3;
}

+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4
{
  v4 = [VNComputeDeviceUtilities espressoV1ModelComputeDevices:a3];

  return v4;
}

@end