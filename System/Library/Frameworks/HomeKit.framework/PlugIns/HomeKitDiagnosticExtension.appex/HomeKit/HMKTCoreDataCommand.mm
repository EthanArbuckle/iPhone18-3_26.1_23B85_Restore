@interface HMKTCoreDataCommand
+ (void)initialize;
@end

@implementation HMKTCoreDataCommand

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(HMDOPACKTransformer);
    [NSValueTransformer setValueTransformer:v2 forName:@"HMDCoreDataTransformerHMFPairingIdentity"];
    [NSValueTransformer setValueTransformer:v2 forName:@"HMDCoreDataTransformerHAPPairingIdentity"];
    [NSValueTransformer setValueTransformer:v2 forName:@"HMDCoreDataTransformerHAPPairingIdentitySet"];
    [NSValueTransformer setValueTransformer:v2 forName:@"HMDCoreDataTransformerHMCameraActivityZone"];
    [NSValueTransformer setValueTransformer:v2 forName:@"HMDCoreDataTransformerHMCameraActivityZoneSet"];
    [NSValueTransformer setValueTransformer:v2 forName:@"HMDHomeNFCReaderKeyTransformer"];
    [NSValueTransformer setValueTransformer:v2 forName:@"HMDCoreDataTransformerProfilePhotoCropRect"];
  }
}

@end