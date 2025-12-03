@interface MPSNDArrayGatherGradientState
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceGradientIndex:(unint64_t)index;
@end

@implementation MPSNDArrayGatherGradientState

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceGradientIndex:(unint64_t)index
{
  v18[16] = *MEMORY[0x277D85DE8];
  v4 = [arrays objectAtIndexedSubscript:index];
  v5 = *(v4 + *MEMORY[0x277CD73F0]);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + *MEMORY[0x277CD7410]);
    v9 = v7[2];
    v8 = v7[3];
    v11 = *v7;
    v10 = v7[1];
    do
    {
      v14 = v11;
      v15 = v10;
      v16 = v9;
      v17 = v8;
      v18[v6] = *(&v14 + (v6 & 0xF));
      ++v6;
    }

    while (v5 != v6);
  }

  result = [MEMORY[0x277CD7268] descriptorWithDataType:*(v4 + *MEMORY[0x277CD73C8]) dimensionCount:v14 dimensionSizes:{v15, v16, v17}];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

@end