@interface VNShotflowNetworkANFDv2
+ (const)importantClasses;
@end

@implementation VNShotflowNetworkANFDv2

+ (const)importantClasses
{
  if (+[VNShotflowNetworkANFDv2 importantClasses]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANFDv2 importantClasses]::onceToken, &__block_literal_global_183);
  }

  return +[VNShotflowNetworkANFDv2 importantClasses]::importantClasses;
}

@end