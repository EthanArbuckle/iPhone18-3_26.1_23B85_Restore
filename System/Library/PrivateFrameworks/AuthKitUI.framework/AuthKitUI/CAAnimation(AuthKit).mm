@interface CAAnimation(AuthKit)
+ (id)ak_jiggleAnimation;
@end

@implementation CAAnimation(AuthKit)

+ (id)ak_jiggleAnimation
{
  v19[2] = self;
  v19[1] = a2;
  v19[0] = [MEMORY[0x277CD9FA0] animation];
  [v19[0] setMass:1.20000005];
  [v19[0] setStiffness:1200.0];
  [v19[0] setDamping:12.0];
  [v19[0] setDuration:1.39999998];
  [v19[0] setVelocity:0.0];
  [v19[0] setFillMode:*MEMORY[0x277CDA228]];
  v10 = v19[0];
  LODWORD(v2) = 30.0;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  [v10 setFromValue:?];
  MEMORY[0x277D82BD8](v11);
  v12 = v19[0];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [v12 setToValue:?];
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v14 = v19[0];
  v15 = [MEMORY[0x277CDA008] functionWithName:{*MEMORY[0x277CDA9C8], v3}];
  [v14 setValueFunction:?];
  v4 = MEMORY[0x277D82BD8](v15);
  v16 = v19[0];
  v4.n128_u32[0] = 1028389654;
  LODWORD(v5) = 990057071;
  LODWORD(v6) = 1059712716;
  LODWORD(v7) = 1.0;
  v17 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v4.n128_f64[0] :v5 :v6 :v7];
  [v16 setTimingFunction:?];
  *&v8 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [v19[0] setKeyPath:{@"transform", v8}];
  v18 = MEMORY[0x277D82BE0](v19[0]);
  objc_storeStrong(v19, 0);

  return v18;
}

@end