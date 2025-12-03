@interface ABPKAlgorithmParams
- (CGSize)regImageResolution;
- (__n128)initWithRegIntrinsics:(__n128)intrinsics regImageResolution:(__n128)resolution;
- (id)toDict;
- (void)setRegIntrinsics:(__n128)intrinsics;
@end

@implementation ABPKAlgorithmParams

- (__n128)initWithRegIntrinsics:(__n128)intrinsics regImageResolution:(__n128)resolution
{
  v13.receiver = self;
  v13.super_class = ABPKAlgorithmParams;
  v8 = [(ABPKAlgorithmParams *)&v13 init];
  *&v8[1].super.isa = a2;
  v8[1]._regImageResolution = intrinsics;
  result = resolution;
  *&v8[2].super.isa = resolution;
  v8->_regImageResolution.width = a5;
  v8->_regImageResolution.height = a6;
  return result;
}

- (id)toDict
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(ABPKAlgorithmParams *)self regIntrinsics];
  v7 = simdMatrix3x3ToNSMat(v4, v5, v6);
  [v3 setObject:v7 forKey:@"reg_intrinsics"];

  v8 = MEMORY[0x277CCABB0];
  [(ABPKAlgorithmParams *)self regImageResolution];
  v10 = [v8 numberWithDouble:v9];
  v16[0] = v10;
  v11 = MEMORY[0x277CCABB0];
  [(ABPKAlgorithmParams *)self regImageResolution];
  v12 = [v11 numberWithDouble:?];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v3 setObject:v13 forKey:@"reg_image_resolution"];

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setRegIntrinsics:(__n128)intrinsics
{
  v4[0] = a2;
  v4[1] = intrinsics;
  v4[2] = a4;
  objc_copyStruct((self + 32), v4, 48, 1, 0);
}

- (CGSize)regImageResolution
{
  objc_copyStruct(v4, &self->_regImageResolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end