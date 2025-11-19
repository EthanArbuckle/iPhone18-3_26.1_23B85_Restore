@interface VNShotflowNetworkANFDv1
+ (CGSize)inputImageSize;
+ (const)cellStartsX;
+ (const)cellStartsY;
+ (const)importantClasses;
+ (const)ratios;
- (VNShotflowNetworkANFDv1)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7;
- (int)setInputShape:(unint64_t)a3 height:(unint64_t)a4;
- (void)initializeBuffers;
@end

@implementation VNShotflowNetworkANFDv1

- (int)setInputShape:(unint64_t)a3 height:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = VNShotflowNetworkANFDv1;
  v4 = [(VNShotflowNetwork *)&v10 setInputShape:a3 height:a4];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"logits_roll_%ld", v7];
      [v8 UTF8String];
      v4 = espresso_network_bind_buffer();
      if (v4)
      {
        break;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"logits_yaw_%ld", v7];

      [v9 UTF8String];
      v4 = espresso_network_bind_buffer();

      if (v4)
      {
        return v4;
      }

      ++v7;
      v6 += 16;
      if (v7 == 6)
      {
        return 0;
      }
    }
  }

  return v4;
}

- (void)initializeBuffers
{
  v2.receiver = self;
  v2.super_class = VNShotflowNetworkANFDv1;
  [(VNShotflowNetwork *)&v2 initializeBuffers];
  operator new();
}

- (VNShotflowNetworkANFDv1)initWithModelPath:(id)a3 espressoEngineID:(int)a4 espressoDeviceID:(int)a5 espressoStorageType:(int)a6 threshold:(float)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a4;
  v12 = a3;
  v18.receiver = self;
  v18.super_class = VNShotflowNetworkANFDv1;
  *&v13 = a7;
  v14 = [(VNShotflowNetwork *)&v18 initWithModelPath:v12 espressoEngineID:v10 espressoDeviceID:v9 espressoStorageType:v8 threshold:v13];
  v15 = v14;
  if (v14)
  {
    [(VNShotflowNetworkANFDv1 *)v14 initializeBuffers];
    v16 = v15;
  }

  return v15;
}

+ (const)importantClasses
{
  if (+[VNShotflowNetworkANFDv1 importantClasses]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANFDv1 importantClasses]::onceToken, &__block_literal_global_140_34330);
  }

  return +[VNShotflowNetworkANFDv1 importantClasses]::importantClasses;
}

+ (const)cellStartsY
{
  if (+[VNShotflowNetworkANFDv1 cellStartsY]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANFDv1 cellStartsY]::onceToken, &__block_literal_global_137_34332);
  }

  return +[VNShotflowNetworkANFDv1 cellStartsY]::cellStartsY;
}

+ (const)cellStartsX
{
  if (+[VNShotflowNetworkANFDv1 cellStartsX]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANFDv1 cellStartsX]::onceToken, &__block_literal_global_134);
  }

  return +[VNShotflowNetworkANFDv1 cellStartsX]::cellStartsX;
}

+ (const)ratios
{
  if (+[VNShotflowNetworkANFDv1 ratios]::onceToken != -1)
  {
    dispatch_once(&+[VNShotflowNetworkANFDv1 ratios]::onceToken, &__block_literal_global_132);
  }

  return +[VNShotflowNetworkANFDv1 ratios]::ratios;
}

+ (CGSize)inputImageSize
{
  v2 = 597.0;
  v3 = 448.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end