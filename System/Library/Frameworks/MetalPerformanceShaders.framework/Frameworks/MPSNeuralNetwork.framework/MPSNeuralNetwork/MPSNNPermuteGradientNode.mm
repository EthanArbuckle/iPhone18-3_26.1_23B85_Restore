@interface MPSNNPermuteGradientNode
+ (id)nodeWithSourceGradient:(id)a3 sourceImage:(id)a4 gradientState:(id)a5;
- (MPSNNPermuteGradientNode)initWithSourceGradient:(id)a3 sourceImage:(id)a4 gradientState:(id)a5;
@end

@implementation MPSNNPermuteGradientNode

+ (id)nodeWithSourceGradient:(id)a3 sourceImage:(id)a4 gradientState:(id)a5
{
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithSourceGradient_sourceImage_gradientState_(v8, v9, a3, a4, a5, v10, v11, v12);

  return v13;
}

- (MPSNNPermuteGradientNode)initWithSourceGradient:(id)a3 sourceImage:(id)a4 gradientState:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = a3;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v21, 1, a5, v5, v6, v7);
  v20 = a4;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, &v20, 1, v13, v14, v15, v16);
  v19.receiver = self;
  v19.super_class = MPSNNPermuteGradientNode;
  return [(MPSNNGradientFilterNode *)&v19 initWithGradientImages:v11 sourceImages:v17 gradientState:a5 paddingPolicy:0];
}

@end