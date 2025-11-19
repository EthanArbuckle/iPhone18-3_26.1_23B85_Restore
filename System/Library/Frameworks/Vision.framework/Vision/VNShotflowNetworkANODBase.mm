@interface VNShotflowNetworkANODBase
+ (CGSize)inputImageSize;
+ (const)cellStartsX;
+ (const)cellStartsY;
+ (const)ratios;
- (VNShotflowNetworkANODBase)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7;
- (void)initializeBuffers;
@end

@implementation VNShotflowNetworkANODBase

- (void)initializeBuffers
{
  v2.receiver = self;
  v2.super_class = VNShotflowNetworkANODBase;
  [(VNShotflowNetwork *)&v2 initializeBuffers];
  operator new();
}

- (VNShotflowNetworkANODBase)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a4;
  v12 = a3;
  v18.receiver = self;
  v18.super_class = VNShotflowNetworkANODBase;
  *&v13 = a7;
  v14 = [(VNShotflowNetwork *)&v18 initWithModelPath:v12 espressoEngineID:v10 espressoDeviceID:v9 espressoStorageType:v8 threshold:v13];
  v15 = v14;
  if (v14)
  {
    [(VNShotflowNetworkANODBase *)v14 initializeBuffers];
    v16 = v15;
  }

  return v15;
}

+ (const)cellStartsY
{
  if (+[VNShotflowNetworkANODBase cellStartsY]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANODBase cellStartsY]::onceToken, &__block_literal_global_172);
  }

  return +[VNShotflowNetworkANODBase cellStartsY]::cellStartsY;
}

+ (const)cellStartsX
{
  if (+[VNShotflowNetworkANODBase cellStartsX]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANODBase cellStartsX]::onceToken, &__block_literal_global_169_34339);
  }

  return +[VNShotflowNetworkANODBase cellStartsX]::cellStartsX;
}

+ (const)ratios
{
  if (+[VNShotflowNetworkANODBase ratios]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANODBase ratios]::onceToken, &__block_literal_global_166);
  }

  return +[VNShotflowNetworkANODBase ratios]::ratios;
}

+ (CGSize)inputImageSize
{
  v2 = 608.0;
  v3 = 448.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end