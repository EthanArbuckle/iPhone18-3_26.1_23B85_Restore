@interface AAUIDefaultFetchDescriptors
@end

@implementation AAUIDefaultFetchDescriptors

void ___AAUIDefaultFetchDescriptors_block_invoke()
{
  v7[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695D098] descriptorForRequiredKeys];
  v1 = *MEMORY[0x1E695C278];
  v7[0] = v0;
  v7[1] = v1;
  v2 = *MEMORY[0x1E695C2E8];
  v7[2] = *MEMORY[0x1E695C1E8];
  v7[3] = v2;
  v3 = [MEMORY[0x1E695D1E0] descriptorForRequiredKeys];
  v7[4] = v3;
  v4 = [MEMORY[0x1E695D098] descriptorForRequiredKeys];
  v7[5] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];
  v6 = _AAUIDefaultFetchDescriptors_fetchDescriptors;
  _AAUIDefaultFetchDescriptors_fetchDescriptors = v5;
}

@end