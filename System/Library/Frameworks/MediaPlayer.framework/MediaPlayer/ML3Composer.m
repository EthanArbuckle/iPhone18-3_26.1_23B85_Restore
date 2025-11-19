@interface ML3Composer
@end

@implementation ML3Composer

void __66__ML3Composer_MPMediaAdditions__propertyForMPMediaEntityProperty___block_invoke()
{
  v8[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69B2CD8];
  v7[0] = @"composerPersistentID";
  v7[1] = @"composerName";
  v1 = *MEMORY[0x1E69B2A80];
  v8[0] = v0;
  v8[1] = v1;
  v2 = *MEMORY[0x1E69B2A88];
  v7[2] = @"composerSortName";
  v7[3] = @"composerRepresentativeItemPersistentID";
  v3 = *MEMORY[0x1E69B2A70];
  v8[2] = v2;
  v8[3] = v3;
  v7[4] = @"composerCloudStatus";
  v7[5] = @"composerStoreID";
  v4 = *MEMORY[0x1E69B2A90];
  v8[4] = *MEMORY[0x1E69B2A68];
  v8[5] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v6 = propertyForMPMediaEntityProperty__ML3ForMP_23;
  propertyForMPMediaEntityProperty__ML3ForMP_23 = v5;
}

@end