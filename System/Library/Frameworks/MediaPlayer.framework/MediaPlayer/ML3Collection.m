@interface ML3Collection
@end

@implementation ML3Collection

void __68__ML3Collection_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2A58];
  v5[0] = @"albumCount";
  v5[1] = @"artistCount";
  v1 = *MEMORY[0x1E69B2A60];
  v6[0] = v0;
  v6[1] = v1;
  v5[2] = @"itemCount";
  v5[3] = @"cloudStatus";
  v2 = *MEMORY[0x1E69B2A68];
  v6[2] = *MEMORY[0x1E69B2A78];
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v4 = propertyForMPMediaEntityProperty__ML3ForMP_4;
  propertyForMPMediaEntityProperty__ML3ForMP_4 = v3;
}

@end